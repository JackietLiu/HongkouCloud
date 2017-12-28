/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : x5sys

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-09-11 14:13:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for im_bot
-- ----------------------------
DROP TABLE IF EXISTS `im_bot`;
CREATE TABLE `im_bot` (
  `sID` varchar(100) NOT NULL,
  `sName` varchar(128) NOT NULL COMMENT '名称',
  `sNickName` varchar(255) DEFAULT NULL COMMENT '昵称',
  `sActorID` varchar(32) NOT NULL COMMENT 'ActorID',
  `sType` varchar(32) DEFAULT NULL COMMENT 'BOT类型',
  `sBusinessAPI` varchar(128) DEFAULT NULL COMMENT '业务API',
  `sAPICycle` int(10) DEFAULT NULL COMMENT 'API访问周期（单位：分钟）',
  `sStatus` varchar(8) DEFAULT NULL COMMENT '状态',
  `sRemarks` varchar(256) DEFAULT NULL COMMENT '备注',
  `version` int(11) NOT NULL COMMENT '版本',
  PRIMARY KEY (`sID`),
  KEY `IDX_IMBOT_NAME` (`sName`),
  KEY `IDX_IMBOT_ACTORID` (`sActorID`),
  KEY `IDX_IMBOT_TYPE` (`sType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_bot
-- ----------------------------

-- ----------------------------
-- Table structure for oa_customer
-- ----------------------------
DROP TABLE IF EXISTS `oa_customer`;
CREATE TABLE `oa_customer` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fName` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `fContent` varchar(200) DEFAULT NULL COMMENT '简介',
  `fPhone` varchar(20) DEFAULT NULL COMMENT '电话',
  `fProvince` varchar(10) DEFAULT NULL COMMENT '省',
  `fProvinceID` varchar(32) DEFAULT NULL COMMENT '省ID',
  `fCity` varchar(10) DEFAULT NULL COMMENT '市',
  `fCityID` varchar(32) DEFAULT NULL COMMENT '市ID',
  `fZone` varchar(10) DEFAULT NULL COMMENT '区',
  `fZoneID` varchar(32) DEFAULT NULL COMMENT '区ID',
  `fURL` varchar(100) DEFAULT NULL COMMENT '网址',
  `fAddr` varchar(200) DEFAULT NULL COMMENT '地址',
  `flongitude` decimal(20,6) DEFAULT NULL COMMENT '经度',
  `fLatitude` decimal(20,6) DEFAULT NULL COMMENT '纬度',
  `fAttachment` longtext COMMENT '附件',
  `fAbbr` varchar(100) DEFAULT NULL COMMENT '拼音缩写',
  `fEmployeeNum` int(11) DEFAULT NULL COMMENT '员工数',
  `fCreator` varchar(10) DEFAULT NULL COMMENT '创建人',
  `fCreatorID` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `fCreatorTime` datetime DEFAULT NULL COMMENT '创建时间',
  `fLastModifyTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `fLetter` varchar(100) DEFAULT NULL COMMENT '首字母',
  `fVisitNum` int(11) DEFAULT NULL COMMENT '拜访次数',
  `fPhone2` varchar(20) DEFAULT NULL COMMENT '电话2',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_customer
-- ----------------------------

-- ----------------------------
-- Table structure for oa_customervisit
-- ----------------------------
DROP TABLE IF EXISTS `oa_customervisit`;
CREATE TABLE `oa_customervisit` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fVisitTime` datetime DEFAULT NULL COMMENT '拜访日期',
  `fCustomer` varchar(50) DEFAULT NULL COMMENT '客户',
  `fCustomerID` varchar(32) DEFAULT NULL COMMENT '客户ID',
  `fAttachment` longtext COMMENT '附件',
  `flongitude` decimal(20,6) DEFAULT NULL COMMENT '经度',
  `fLatitude` decimal(20,6) DEFAULT NULL COMMENT '纬度',
  `fCreator` varchar(10) DEFAULT NULL COMMENT '业务员',
  `fCreatorID` varchar(32) DEFAULT NULL COMMENT '业务员ID',
  `fContent` varchar(200) DEFAULT NULL COMMENT '总结',
  `fCreatorDate` date DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_customervisit
-- ----------------------------

-- ----------------------------
-- Table structure for oa_customrmore
-- ----------------------------
DROP TABLE IF EXISTS `oa_customrmore`;
CREATE TABLE `oa_customrmore` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fCustomerID` varchar(32) DEFAULT NULL COMMENT '客户ID',
  `fFieldName` varchar(20) DEFAULT NULL COMMENT '扩展关系',
  `fFieldValue` varchar(100) DEFAULT NULL COMMENT '扩展关系值',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_customrmore
-- ----------------------------

-- ----------------------------
-- Table structure for oa_evection
-- ----------------------------
DROP TABLE IF EXISTS `oa_evection`;
CREATE TABLE `oa_evection` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fContent` varchar(200) DEFAULT NULL COMMENT '内容',
  `fCreatorID` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `fCreator` varchar(10) DEFAULT NULL COMMENT '创建人',
  `fCreatorTime` datetime DEFAULT NULL COMMENT '创建时间',
  `fStatus` varchar(10) DEFAULT NULL COMMENT '日程状态',
  `fPlace` varchar(100) DEFAULT NULL COMMENT '地点',
  `fStartDate` date DEFAULT NULL COMMENT '开始日期',
  `fEndDate` date DEFAULT NULL COMMENT '结束日期',
  `fAttachment` longtext COMMENT '附件',
  `fApprove` varchar(50) DEFAULT NULL COMMENT '审批人',
  `fName` varchar(50) DEFAULT NULL COMMENT '标题',
  `fLastModifyTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_evection
-- ----------------------------
INSERT INTO `oa_evection` VALUES ('1A595721EA3D4AB29698724045BBEDDD', '0', '采购生产材料', 'PSN02', '李云', '2014-09-17 17:30:40', '未关闭', '河北', '2014-09-18', '2014-09-27', null, '待郑迪文审批', '河北，09-18至09-27', '2014-09-17 17:30:40');
INSERT INTO `oa_evection` VALUES ('2113E4B1395A496690397936EF52AA6F', '0', '购买煤炭', '1BADD5EF1B18458E8F3', '费都', '2014-09-18 09:13:00', '未关闭', '太原', '2014-09-18', '2014-09-24', null, '待李云审批', '太原，09-18至09-24', '2014-09-18 09:13:00');
INSERT INTO `oa_evection` VALUES ('319F08561AB54E528981B095A19FBD72', '0', '参观电站', '1BADD5EF1B18458E8F3', '费都', '2014-09-18 09:13:54', '未关闭', '黄河电站', '2014-09-25', '2014-09-30', null, '待李云审批', '黄河电站，09-25至09-30', '2014-09-18 09:13:54');
INSERT INTO `oa_evection` VALUES ('355FB153AFFE459F8574C2428EB2F8F3', '0', '洽谈项目', 'PSN02', '李云', '2014-09-17 17:28:12', '未关闭', '北京', '2014-09-18', '2014-09-20', null, '待宋武乔审批', '北京，09-18至09-20', '2014-09-17 17:28:12');
INSERT INTO `oa_evection` VALUES ('5031E19BF5D94564B728D5A1FCA1F326', '0', '项目现场支持', 'PSN02', '李云', '2014-09-17 17:29:50', '未关闭', '天津', '2014-09-22', '2014-09-24', null, '待王巧燕审批', '天津，09-22至09-24', '2014-09-17 17:29:50');
INSERT INTO `oa_evection` VALUES ('64E84A6C35DB42D294161CF3EE690933', '1', '运送货物', 'PSN02', '李云', '2014-09-17 17:31:39', '未关闭', '河南', '2014-09-25', '2014-09-30', null, '待张梦薇审批', '河南，09-25至09-30', '2014-09-17 17:32:41');
INSERT INTO `oa_evection` VALUES ('C2384E80464B475F9862F65E887C958A', '1', '参观典型客户', '1BADD5EF1B18458E8F3', '费都', '2014-09-18 09:11:30', '已关闭', '南京', '2014-10-08', '2014-10-11', null, '李云已批准', '南京，10-8至10-11', '2014-09-18 09:16:02');

-- ----------------------------
-- Table structure for oa_evectionplace
-- ----------------------------
DROP TABLE IF EXISTS `oa_evectionplace`;
CREATE TABLE `oa_evectionplace` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fEvectionID` varchar(32) DEFAULT NULL COMMENT '出差表ID',
  `fStartDate` date DEFAULT NULL COMMENT '开始日期',
  `fEndDate` date DEFAULT NULL COMMENT '结束日期',
  `fPlace` varchar(50) DEFAULT NULL COMMENT '地点',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_evectionplace
-- ----------------------------
INSERT INTO `oa_evectionplace` VALUES ('5289715837BD4FC0BB22B490C5D3A7E9', '0', '64E84A6C35DB42D294161CF3EE690933', '2014-09-17', '2014-09-19', '开封');

-- ----------------------------
-- Table structure for oa_leaveapply
-- ----------------------------
DROP TABLE IF EXISTS `oa_leaveapply`;
CREATE TABLE `oa_leaveapply` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fCreatorID` varchar(32) DEFAULT NULL COMMENT '请假人ID',
  `fCreator` varchar(10) DEFAULT NULL COMMENT '请假人',
  `fCreatorTime` datetime DEFAULT NULL COMMENT '创建时间',
  `fName` varchar(50) DEFAULT NULL COMMENT '标题',
  `fContent` varchar(200) DEFAULT NULL COMMENT '请假原由',
  `fStartTime` datetime DEFAULT NULL COMMENT '开始时间',
  `fEndTime` datetime DEFAULT NULL COMMENT '结束时间',
  `sFName` varchar(2048) DEFAULT NULL COMMENT '全路径名',
  `sFID` varchar(2048) DEFAULT NULL COMMENT '全路径ID',
  `fLastModifyTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `fLeaveType` varchar(10) DEFAULT NULL COMMENT '请假类型',
  `fLeaveTypeID` varchar(32) DEFAULT NULL COMMENT '请假类型ID',
  `fApprove` varchar(50) DEFAULT NULL COMMENT '审批人',
  `fLeaveDays` int(11) DEFAULT NULL COMMENT '请假天数',
  `fStatus` varchar(10) DEFAULT NULL COMMENT '单据状态',
  `fLeaveHours` float DEFAULT NULL COMMENT '请假小时数',
  `fLeaveTime` float DEFAULT NULL COMMENT '请假时长',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_leaveapply
-- ----------------------------
INSERT INTO `oa_leaveapply` VALUES ('5D5F11F623714C53B9F509AF378F6050', '0', 'PSN02', '李云', '2014-09-18 17:17:05', null, '感冒', '2014-09-20 17:16:46', '2014-12-20 17:16:48', null, null, '2014-09-18 17:17:05', '病假', null, '待  李云 审批', '1', '审批中', '0', '1');
INSERT INTO `oa_leaveapply` VALUES ('DDEC14467AA34A6EBF35672A2C229270', '0', 'PSN02', '李云', '2014-09-18 17:16:42', null, '朋友结婚', '2014-09-18 17:16:46', '2014-12-20 17:16:48', null, null, '2014-09-18 17:16:42', '事假', null, '待  李云 审批', '6', '审批中', '0', '6');

-- ----------------------------
-- Table structure for oa_schedule
-- ----------------------------
DROP TABLE IF EXISTS `oa_schedule`;
CREATE TABLE `oa_schedule` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fName` varchar(50) DEFAULT NULL COMMENT '标题',
  `fContent` longtext COMMENT '内容',
  `fPlace` varchar(100) DEFAULT NULL COMMENT '地点',
  `fStartTime` datetime DEFAULT NULL COMMENT '开始时间',
  `fEndTime` datetime DEFAULT NULL COMMENT '结束时间',
  `fRepeat` varchar(10) DEFAULT NULL COMMENT '重复',
  `fRepeatFrequency` int(11) DEFAULT NULL COMMENT '重复频率',
  `fWeekRepeat` varchar(50) DEFAULT NULL COMMENT '周重复',
  `fRepeatCount` int(11) DEFAULT NULL COMMENT '重复次数',
  `fUpToDate` date DEFAULT NULL COMMENT '截止日期',
  `fOwn` varchar(1) DEFAULT NULL COMMENT '私人日程',
  `fCreatorID` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `fCreator` varchar(10) DEFAULT NULL COMMENT '创建人',
  `fAttachment` longtext COMMENT '附件',
  `fTimePeriod` varchar(50) DEFAULT NULL COMMENT '日程时间段',
  `fScheDay` varchar(20) DEFAULT NULL COMMENT '日程日',
  `fIsTitle` varchar(10) DEFAULT NULL COMMENT '是否标题',
  `fScheID` varchar(100) DEFAULT NULL COMMENT '日程ID',
  `fLastModifyTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_schedule
-- ----------------------------
INSERT INTO `oa_schedule` VALUES ('7C8735D56EBE4FD58B4DFA45F40AB6B1', '0', '项目例会', '汇报项目进展', '北京', '2014-09-17 17:25:21', '2014-09-17 18:25:25', 'day', '3', null, '200', '2014-12-26', null, 'PSN02', '李云', null, null, null, null, null, null);
INSERT INTO `oa_schedule` VALUES ('ED5CDAB30BCC4168AC28F2B6FED924BC', '0', '产品研讨会', '讨论产品研发计划', '上海', '2014-09-16 15:16:05', '2014-09-16 16:16:05', 'week', '2', '3 4', '200', '2014-12-29', null, 'PSN02', '李云', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for oa_tasksassigned
-- ----------------------------
DROP TABLE IF EXISTS `oa_tasksassigned`;
CREATE TABLE `oa_tasksassigned` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fName` varchar(100) DEFAULT NULL COMMENT '标题',
  `fContent` varchar(200) DEFAULT NULL COMMENT '内容',
  `fCreatorID` varchar(32) DEFAULT NULL COMMENT '委托人ID',
  `fCreator` varchar(10) DEFAULT NULL COMMENT '委托人',
  `fCreatorTime` datetime DEFAULT NULL COMMENT '委托时间',
  `fExecutor` varchar(10) DEFAULT NULL COMMENT '负责人',
  `fExecutorID` varchar(32) DEFAULT NULL COMMENT '负责人ID',
  `fCloser` varchar(10) DEFAULT NULL COMMENT '关闭人',
  `fCloserID` varchar(32) DEFAULT NULL COMMENT '关闭人ID',
  `fCloserMemo` varchar(200) DEFAULT NULL COMMENT '关闭说明',
  `fStatus` varchar(10) DEFAULT NULL COMMENT '任务状态',
  `fLastModifyTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `fAttachment` longtext COMMENT '附件',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_tasksassigned
-- ----------------------------
INSERT INTO `oa_tasksassigned` VALUES ('42EF51CE1A4941218333AEF9F5044313', '0', '李云委托给system', '进货', 'PSN02', '李云', '2014-09-16 14:57:37', 'system', 'PSN01', null, null, null, '未关闭', '2014-09-16 14:57:37', null);
INSERT INTO `oa_tasksassigned` VALUES ('43848BB8FCD1474CB85B52561B5FB461', '0', '李云委托给费都', '去十里河灯饰城购买办公材料', 'PSN02', '李云', '2014-09-17 17:17:26', '费都', '1BADD5EF1B18458E8F3', null, null, null, '未关闭', '2014-09-17 17:17:26', null);
INSERT INTO `oa_tasksassigned` VALUES ('47DE7FBB2CAD4DB0BB7228FE8CFCA26D', '0', '李云委托给范菲菲', '调查市场', 'PSN02', '李云', '2014-09-16 14:14:20', '范菲菲', 'C4E9A7C70CF44AFF87E239FBAA58CEF8', null, null, null, '未关闭', '2014-09-16 14:14:20', null);
INSERT INTO `oa_tasksassigned` VALUES ('5CB6C0274C2048B8B9E30C8605D6236D', '0', '李云委托给王巧燕', '处理申请资料', 'PSN02', '李云', '2014-09-17 17:16:12', '王巧燕', '60A6A1F656EA497399B', null, null, null, '未关闭', '2014-09-17 17:16:12', null);
INSERT INTO `oa_tasksassigned` VALUES ('64517552D47B4D06B0FC6EC6D8A20750', '0', '费都委托给王巧燕', '处理文件', '1BADD5EF1B18458E8F3', '费都', '2014-09-18 09:07:43', '王巧燕', '60A6A1F656EA497399B', null, null, null, '未关闭', '2014-09-18 09:07:43', null);
INSERT INTO `oa_tasksassigned` VALUES ('769751C8E7794198A975BF972CE38634', '1', '李云委托给何婧铱', '处理邮件', 'PSN02', '李云', '2014-09-17 17:20:19', '何婧铱', '3B0DBE41B6D0433ABC9', '李云', 'PSN02', '任务完成', '已关闭', '2014-09-17 17:21:23', null);
INSERT INTO `oa_tasksassigned` VALUES ('A52D56EEDE5241F596271EF11A15FDC3', '0', '冯霖委托给李云', '招标', '121E7ECE93084C4B9AF', '冯霖', '2014-09-17 17:50:54', '李云', 'PSN02', null, null, null, '未关闭', '2014-09-17 17:50:54', null);
INSERT INTO `oa_tasksassigned` VALUES ('CAC0B20BAA664BDD8B963A5E40F9BA29', '2', '李云委托给何婧铱', '拜访客户', 'PSN02', '李云', '2014-09-17 17:19:21', '何婧铱', '3B0DBE41B6D0433ABC9', null, null, null, '未关闭', '2014-09-18 09:38:43', null);
INSERT INTO `oa_tasksassigned` VALUES ('ED95CDEC299145DE9A87D76455E3A5B7', '1', '李云委托给宋武乔', '写招标资料文档', 'PSN02', '李云', '2014-09-17 17:22:28', '宋武乔', '1752AEF56D084A4FA8C', '李云', 'PSN02', '任务完成', '已关闭', '2014-09-17 17:23:40', null);

-- ----------------------------
-- Table structure for oa_tasksassigneddate
-- ----------------------------
DROP TABLE IF EXISTS `oa_tasksassigneddate`;
CREATE TABLE `oa_tasksassigneddate` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fTaskID` varchar(32) DEFAULT NULL COMMENT '任务ID',
  `fUpToDate` date DEFAULT NULL COMMENT '截至日期',
  `fReason` varchar(200) DEFAULT NULL COMMENT '修改原因',
  `fOperatorID` varchar(32) DEFAULT NULL COMMENT '操作人ID',
  `fOperator` varchar(10) DEFAULT NULL COMMENT '操作人',
  `fOperatorTime` datetime DEFAULT NULL COMMENT '操作时间',
  `fDelay` varchar(1) DEFAULT NULL COMMENT '延期',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_tasksassigneddate
-- ----------------------------
INSERT INTO `oa_tasksassigneddate` VALUES ('02292790EBBE4BB28B39EBD3BCDFD081', '0', 'ED95CDEC299145DE9A87D76455E3A5B7', '2014-09-21', null, 'PSN02', '李云', '2014-09-17 17:22:28', '0');
INSERT INTO `oa_tasksassigneddate` VALUES ('50E43BF4819442B29D1F4B151D54D60A', '0', 'CAC0B20BAA664BDD8B963A5E40F9BA29', '2014-09-22', null, 'PSN02', '李云', '2014-09-17 17:19:21', '0');
INSERT INTO `oa_tasksassigneddate` VALUES ('7BCAD93A60F3496A8051787F14EA997B', '0', 'A52D56EEDE5241F596271EF11A15FDC3', '2014-09-20', null, '121E7ECE93084C4B9AF', '冯霖', '2014-09-17 17:50:54', '0');
INSERT INTO `oa_tasksassigneddate` VALUES ('822B44D7FBCC4F07927DE75FADCEF7F7', '0', '43848BB8FCD1474CB85B52561B5FB461', '2014-09-23', null, 'PSN02', '李云', '2014-09-17 17:17:26', '0');
INSERT INTO `oa_tasksassigneddate` VALUES ('95A0B21BF0CC4B12899F679EE9CA16E1', '0', '769751C8E7794198A975BF972CE38634', '2014-09-20', null, 'PSN02', '李云', '2014-09-17 17:20:19', '0');
INSERT INTO `oa_tasksassigneddate` VALUES ('A5776A13E0694A6AA4226971DD3EC81D', '0', '47DE7FBB2CAD4DB0BB7228FE8CFCA26D', '2014-10-18', null, 'PSN02', '李云', '2014-09-16 14:57:38', '0');
INSERT INTO `oa_tasksassigneddate` VALUES ('A5776A13E0694A6AA4226971DD3EC8DD', '0', '42EF51CE1A4941218333AEF9F5044313', '2014-10-18', null, 'PSN02', '李云', '2014-09-16 14:57:38', '0');
INSERT INTO `oa_tasksassigneddate` VALUES ('A773421DBAF344A6B552410B3886526F', '0', '5CB6C0274C2048B8B9E30C8605D6236D', '2014-09-22', null, 'PSN02', '李云', '2014-09-17 17:16:12', '0');
INSERT INTO `oa_tasksassigneddate` VALUES ('E00045816514460687C70CA4BEA3C3C8', '0', 'CAC0B20BAA664BDD8B963A5E40F9BA29', '2014-10-23', null, 'PSN02', '李云', '2014-09-18 09:37:29', '1');
INSERT INTO `oa_tasksassigneddate` VALUES ('EBE5D3CAF5E74AAF8A23190B1894E265', '0', '64517552D47B4D06B0FC6EC6D8A20750', '2014-09-20', null, '1BADD5EF1B18458E8F3', '费都', '2014-09-18 09:07:43', '0');

-- ----------------------------
-- Table structure for oa_wm_holiday
-- ----------------------------
DROP TABLE IF EXISTS `oa_wm_holiday`;
CREATE TABLE `oa_wm_holiday` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fName` varchar(64) DEFAULT NULL COMMENT '名称',
  `fBrefExplain` varchar(225) DEFAULT NULL COMMENT '简要说明',
  `fStateName` varchar(64) DEFAULT NULL COMMENT '状态',
  `fCreatePsnName` varchar(64) DEFAULT NULL COMMENT '提交人员',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fLeaveTypeName` varchar(64) DEFAULT NULL COMMENT '类型',
  `fLeaveTypeID` varchar(36) DEFAULT NULL COMMENT '类型',
  `fDate` date DEFAULT NULL COMMENT '日期',
  `fYear` varchar(20) DEFAULT NULL COMMENT '年度',
  `fState` varchar(20) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_wm_holiday
-- ----------------------------
INSERT INTO `oa_wm_holiday` VALUES ('7aca2262f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-10-01', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7aca547af6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-10-02', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7aca89d1f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-10-03', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acae31cf6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-10-04', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acb2549f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-10-05', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acb62d2f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-10-06', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acb9fa3f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-10-07', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acbdc29f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-09-28', null, '2');
INSERT INTO `oa_wm_holiday` VALUES ('7acc185df6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-10-11', null, '2');
INSERT INTO `oa_wm_holiday` VALUES ('7acc54eff6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-09-08', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acc90f8f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-06-02', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acccccaf6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-05-01', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acd089bf6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-05-02', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acd4c63f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-05-03', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acd8873f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-05-04', null, '2');
INSERT INTO `oa_wm_holiday` VALUES ('7acdc46cf6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-04-05', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7ace006ff6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-04-07', null, '2');
INSERT INTO `oa_wm_holiday` VALUES ('7ace3c18f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-01-31', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7ace77d4f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-02-01', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7aceb3a8f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-02-02', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7aceefacf6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-02-03', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acf2b39f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-02-04', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acf66bcf6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-02-05', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acfa742f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-02-06', null, '1');
INSERT INTO `oa_wm_holiday` VALUES ('7acfe370f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-02-08', null, '2');
INSERT INTO `oa_wm_holiday` VALUES ('7ad01f23f6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-01-26', null, '2');
INSERT INTO `oa_wm_holiday` VALUES ('7ad05b4bf6e211e5964800ac5f60319c', '1', null, null, null, null, null, null, null, '2014-01-01', null, '1');

-- ----------------------------
-- Table structure for sa_chatpromission
-- ----------------------------
DROP TABLE IF EXISTS `sa_chatpromission`;
CREATE TABLE `sa_chatpromission` (
  `sID` varchar(50) NOT NULL,
  `sOpmKind` varchar(50) NOT NULL,
  `sOpmId` varchar(50) NOT NULL,
  `sName` varchar(50) NOT NULL,
  `sOtherSideId` varchar(50) NOT NULL,
  `sOtherSideKind` varchar(50) NOT NULL,
  `sOtherSideName` varchar(50) NOT NULL,
  `sPromissionType` int(11) NOT NULL,
  `sOtherSideUrl` varchar(255) DEFAULT NULL,
  `sOpmUrl` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_CHATPROMISSION_OO_ID` (`sOpmId`,`sOtherSideId`),
  KEY `IDX_CHATPROMISSION_OPMID` (`sOpmId`),
  KEY `IDX_CHATPROMISSION_OPMURL` (`sOpmUrl`),
  KEY `IDX_CHATPROMISSION_OTHRID` (`sOtherSideId`),
  KEY `IDX_CHATPROMISSION_OTHRURL` (`sOtherSideUrl`),
  KEY `IDX_CHATPROMISSION_PSNTYPE` (`sPromissionType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_chatpromission
-- ----------------------------

-- ----------------------------
-- Table structure for sa_code
-- ----------------------------
DROP TABLE IF EXISTS `sa_code`;
CREATE TABLE `sa_code` (
  `sID` varchar(32) NOT NULL,
  `sType` varchar(64) DEFAULT NULL,
  `sCode` varchar(64) NOT NULL,
  `sName` varchar(64) DEFAULT NULL,
  `sText` text,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_code
-- ----------------------------
INSERT INTO `sa_code` VALUES ('mobile', 'terminal', 'mobile', '手机', null, '0');
INSERT INTO `sa_code` VALUES ('org.dpt', 'org', 'dpt', '部门', null, '0');
INSERT INTO `sa_code` VALUES ('org.grp', 'org', 'grp', '工作组', null, '0');
INSERT INTO `sa_code` VALUES ('org.ogn', 'org', 'ogn', '机构', null, '0');
INSERT INTO `sa_code` VALUES ('org.pos', 'org', 'pos', '岗位', null, '0');
INSERT INTO `sa_code` VALUES ('org.psm', 'org', 'psm', '人员成员', null, '0');
INSERT INTO `sa_code` VALUES ('org.psn', 'org', 'psn', '人员', null, '0');
INSERT INTO `sa_code` VALUES ('orgLevel.1', 'orgLevel', '1', '一级部门', null, '0');
INSERT INTO `sa_code` VALUES ('orgLevel.2', 'orgLevel', '2', '二级部门', null, '0');
INSERT INTO `sa_code` VALUES ('pad', 'terminal', 'pad', '平板', null, '0');
INSERT INTO `sa_code` VALUES ('safeLevel.0', 'safeLevel', '0', '普通', null, '0');
INSERT INTO `sa_code` VALUES ('safeLevel.1', 'safeLevel', '1', '秘密', null, '0');
INSERT INTO `sa_code` VALUES ('safeLevel.2', 'safeLevel', '2', '绝密', null, '0');
INSERT INTO `sa_code` VALUES ('teHigh', 'emergency', 'teHigh', '急迫', null, '5');
INSERT INTO `sa_code` VALUES ('teHighest', 'emergency', 'teHighest', '紧急', null, '4');
INSERT INTO `sa_code` VALUES ('teLower', 'emergency', 'teLower', '较低', null, '7');
INSERT INTO `sa_code` VALUES ('teMiddle', 'emergency', 'teMiddle', '一般', null, '6');
INSERT INTO `sa_code` VALUES ('temPreempt', 'taskExecuteMode', 'temPreempt', '抢占', null, '22');
INSERT INTO `sa_code` VALUES ('temSequential', 'taskExecuteMode', 'temSequential', '顺序', null, '23');
INSERT INTO `sa_code` VALUES ('temSimultaneous', 'taskExecuteMode', 'temSimultaneous', '同时', null, '24');
INSERT INTO `sa_code` VALUES ('tesAborted', 'executeStatus', 'tesAborted', '已终止', null, '20');
INSERT INTO `sa_code` VALUES ('tesCanceled', 'executeStatus', 'tesCanceled', '已取消', null, '19');
INSERT INTO `sa_code` VALUES ('tesExecuting', 'executeStatus', 'tesExecuting', '正在处理', null, '11');
INSERT INTO `sa_code` VALUES ('tesFinished', 'executeStatus', 'tesFinished', '已完成', null, '9');
INSERT INTO `sa_code` VALUES ('tesReady', 'executeStatus', 'tesReady', '尚未处理', null, '10');
INSERT INTO `sa_code` VALUES ('tesReturned', 'executeStatus', 'tesReturned', '已经回退', null, '16');
INSERT INTO `sa_code` VALUES ('tesSleeping', 'executeStatus', 'tesSleeping', '暂缓处理', null, '16');
INSERT INTO `sa_code` VALUES ('tiHigh', 'importance', 'tiHigh', '高', null, '1');
INSERT INTO `sa_code` VALUES ('tiHighest', 'importance', 'tiHighest', '最高', null, '0');
INSERT INTO `sa_code` VALUES ('tiLower', 'importance', 'tiLower', '低', null, '3');
INSERT INTO `sa_code` VALUES ('tiMiddle', 'importance', 'tiMiddle', '中', null, '2');
INSERT INTO `sa_code` VALUES ('tkExecutor', 'taskKind', 'tkExecutor', '任务', null, '21');
INSERT INTO `sa_code` VALUES ('tkNotice', 'taskKind', 'tkNotice', '通知', null, '27');
INSERT INTO `sa_code` VALUES ('tkProcessInstance', 'taskKind', 'tkProcessInstance', '流程', null, '19');
INSERT INTO `sa_code` VALUES ('tkTask', 'taskKind', 'tkTask', '活动', null, '20');
INSERT INTO `sa_code` VALUES ('tpmExecute', 'taskPreemptMode', 'tpmExecute', '执行', null, '26');
INSERT INTO `sa_code` VALUES ('tpmOpen', 'taskPreemptMode', 'tpmOpen', '打开', null, '25');
INSERT INTO `sa_code` VALUES ('tsProcess', 'taskScope', 'tsProcess', '流程', null, '17');
INSERT INTO `sa_code` VALUES ('tsTask', 'taskScope', 'tsTask', '任务', null, '18');

-- ----------------------------
-- Table structure for sa_docauth
-- ----------------------------
DROP TABLE IF EXISTS `sa_docauth`;
CREATE TABLE `sa_docauth` (
  `sID` varchar(36) NOT NULL,
  `sDocPath` varchar(2048) DEFAULT NULL,
  `sAuthorizerFID` varchar(512) DEFAULT NULL,
  `sAuthorizerName` varchar(64) DEFAULT NULL,
  `sAuthorizerDeptName` varchar(64) DEFAULT NULL,
  `sAuthorizeeFID` varchar(512) DEFAULT NULL,
  `sAuthorizeeName` varchar(64) DEFAULT NULL,
  `sGrantTime` datetime DEFAULT NULL,
  `sAccess` int(11) DEFAULT NULL,
  `sScope` varchar(16) DEFAULT NULL,
  `sAuthorizeeDeptName` varchar(64) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_docauth
-- ----------------------------
INSERT INTO `sa_docauth` VALUES ('doc-system', '/', '/ORG01.ogn/PSN01@ORG01.psm', 'system', null, '/ORG01.ogn/PSN01@ORG01.psm', 'system', '2016-03-31 09:46:07', '32767', null, null, '0');

-- ----------------------------
-- Table structure for sa_doclink
-- ----------------------------
DROP TABLE IF EXISTS `sa_doclink`;
CREATE TABLE `sa_doclink` (
  `sID` varchar(36) NOT NULL,
  `sOwnerID` varchar(256) DEFAULT NULL,
  `sDocID` varchar(36) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `sActivity` varchar(128) DEFAULT NULL,
  `sProcess` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_doclink
-- ----------------------------

-- ----------------------------
-- Table structure for sa_doclinkdefine
-- ----------------------------
DROP TABLE IF EXISTS `sa_doclinkdefine`;
CREATE TABLE `sa_doclinkdefine` (
  `sID` varchar(36) NOT NULL,
  `sRootPath` varchar(2048) DEFAULT NULL,
  `sRootName` varchar(512) DEFAULT NULL,
  `sProcess` varchar(512) DEFAULT NULL,
  `sActivity` varchar(128) DEFAULT NULL,
  `sPersonFID` varchar(512) DEFAULT NULL,
  `sSubPath` varchar(512) DEFAULT NULL,
  `sAccess` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `sDeptName` varchar(64) DEFAULT NULL,
  `sPersonName` varchar(64) DEFAULT NULL,
  `sLimitSize` double(10,3) DEFAULT NULL,
  `sShowChildren` varchar(36) DEFAULT NULL,
  `sDefineItems` text,
  `sDisplayName` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_doclinkdefine
-- ----------------------------
INSERT INTO `sa_doclinkdefine` VALUES ('0F8405CFDA3E42FCB83CEE0F90DC61E7', null, null, '/demo/misc/process/asset/assetProcess', null, null, null, null, '0', null, null, null, null, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><defineRoot><rootName>文档中心</rootName><rootPath>/defaultDocNameSpace</rootPath><subPath/><access>1799</access><limitSize/><templates/></defineRoot>', '/demo/misc/process/asset/assetProcess');
INSERT INTO `sa_doclinkdefine` VALUES ('161C9B5A32B447B29CE1607A68F09098', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'printActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文/打印');
INSERT INTO `sa_doclinkdefine` VALUES ('17A00FB9C38947CE91E0259E37BFAA1E', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'leaderActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文/领导阅签');
INSERT INTO `sa_doclinkdefine` VALUES ('274556B134E240D1B6016C5810E50F8D', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'checkerActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文/办公室处理');
INSERT INTO `sa_doclinkdefine` VALUES ('2E7D74B9CE47484F8B14D5F372CCB3A7', null, null, '/demo/misc/process/order/orderProcess', 'salesPersonActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/订单/通知销售员');
INSERT INTO `sa_doclinkdefine` VALUES ('3317AA6AE93D47DFB6F6B7B721174E1A', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'mainActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文');
INSERT INTO `sa_doclinkdefine` VALUES ('346F28D4585E49B6B8645D4F01795065', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'draftActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文/发文-拟稿');
INSERT INTO `sa_doclinkdefine` VALUES ('34DE98A180A24431A762025D7D184377', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'checkActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文/核稿');
INSERT INTO `sa_doclinkdefine` VALUES ('34E095626FDE4B63A2896FE79BA94DBA', null, null, '/demo/misc/process/order/orderProcess', 'deptActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/订单/部门经理审核');
INSERT INTO `sa_doclinkdefine` VALUES ('3FBB4E9D014644BD976750783F7D9263', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'proofActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文/校对');
INSERT INTO `sa_doclinkdefine` VALUES ('44D7E6A006AA4F5AB52B66E7D00CCE76', null, null, '/demo/misc/process/orderQ/orderQProcess', 'deptActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/订单/部门经理审核');
INSERT INTO `sa_doclinkdefine` VALUES ('45C42C3CFDFE4ABEA3498C4E114C88E6', null, null, '/demo/misc/process/asset/assetProcess', 'AssetActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/资产');
INSERT INTO `sa_doclinkdefine` VALUES ('466B84F1B81D424885E7A14B5B20CADD', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'printActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文/打印');
INSERT INTO `sa_doclinkdefine` VALUES ('4A06D7817A5943E9B182D8A5EED78329', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'publishActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文/发布');
INSERT INTO `sa_doclinkdefine` VALUES ('529D1740B2E34CAEB3A7646C76501D0B', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'deptActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文/本部门审核');
INSERT INTO `sa_doclinkdefine` VALUES ('5626464F20034620A08E2DDFD8251C44', null, null, '/demo/misc/process/order/orderProcess', 'mainActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/订单');
INSERT INTO `sa_doclinkdefine` VALUES ('5F72A847CC7D4153AE7A6285D612D81C', null, null, '/demo/misc/process/orderQ/orderQProcess', null, null, null, null, '0', null, null, null, null, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><defineRoot><rootName>文档中心</rootName><rootPath>/defaultDocNameSpace</rootPath><subPath/><access>1799</access><limitSize/><templates/></defineRoot>', '/demo/misc/process/orderQ/orderQProcess');
INSERT INTO `sa_doclinkdefine` VALUES ('6C2073375913420A852AA65C6D5CB837', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'meetingActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文/部门会签');
INSERT INTO `sa_doclinkdefine` VALUES ('6E24E890014F41DF95BAF3A9BF2B0551', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'draftActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文/发文-拟稿');
INSERT INTO `sa_doclinkdefine` VALUES ('77ADBFC6C2554552A771D5DB4CB563FE', null, null, '/demo/misc/process/orderQ/orderQProcess', 'mainActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/订单');
INSERT INTO `sa_doclinkdefine` VALUES ('92F6AC0B44B742409976088250D42F73', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'stampActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文/用印');
INSERT INTO `sa_doclinkdefine` VALUES ('957EA6E83FA642628F3566068D4C0B4B', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'leaderActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文/领导阅签');
INSERT INTO `sa_doclinkdefine` VALUES ('98EFFCA651D94ECABEB8E965E46152B1', null, null, '/demo/misc/process/order/orderProcess', 'orderReportActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/订单/订单申请');
INSERT INTO `sa_doclinkdefine` VALUES ('A4929355848E4957AD3A5AF5EA697B77', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'checkActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文/核稿');
INSERT INTO `sa_doclinkdefine` VALUES ('A893DB5D324143A3B50712B7B4A6273F', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'meetingActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文/部门会签');
INSERT INTO `sa_doclinkdefine` VALUES ('AA0F2E92B423495195DFEE9D4EEA68E3', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'checkerActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文/办公室处理');
INSERT INTO `sa_doclinkdefine` VALUES ('AB3EC8F031364DAF972C99E945D18229', null, null, '/demo/misc/process/orderQ/orderQProcess', 'orderReportActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/订单/订单申请');
INSERT INTO `sa_doclinkdefine` VALUES ('ADE8B9E95B9B4F63BD9CB7515718DB9B', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', null, null, null, null, '0', null, null, null, null, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><defineRoot><rootName>文档中心</rootName><rootPath>/defaultDocNameSpace</rootPath><subPath/><access>1799</access><limitSize/><templates/></defineRoot>', '/demo/misc/process/sendDocQ/sendDocQProcess');
INSERT INTO `sa_doclinkdefine` VALUES ('B017F07DC0AB436B9B8E108C77FF1C75', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'signActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文/领导签发');
INSERT INTO `sa_doclinkdefine` VALUES ('B2BAF8FF91374A63AC23BB5A5B3BB635', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'mainActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文');
INSERT INTO `sa_doclinkdefine` VALUES ('B59BB9D694AB426EBBF0D2295E8841D8', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'publishActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文/发布');
INSERT INTO `sa_doclinkdefine` VALUES ('B67ABD246F5C48B5B4969998A91C90E6', null, null, '/demo/misc/process/orderQ/orderQProcess', 'leadActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/订单/通报总公司领导');
INSERT INTO `sa_doclinkdefine` VALUES ('B84AD607851240E08DBF62A68021AE5C', null, null, '/demo/misc/process/order/orderProcess', 'managerActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/订单/公司总经理审批');
INSERT INTO `sa_doclinkdefine` VALUES ('B8B4C28D047B41B1B058D9A49A158B76', null, null, '/demo/misc/process/order/orderProcess', null, null, null, null, '0', null, null, null, null, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><defineRoot><rootName>文档中心</rootName><rootPath>/defaultDocNameSpace</rootPath><subPath/><access>1799</access><limitSize/><templates/></defineRoot>', '/demo/misc/process/order/orderProcess');
INSERT INTO `sa_doclinkdefine` VALUES ('BC89A1367B5D4E7ABB4A2DBD707B8129', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'drafterActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文/主办人处理');
INSERT INTO `sa_doclinkdefine` VALUES ('BED27EA68D744EA1B3680B660607C16E', null, null, '/demo/misc/process/orderQ/orderQProcess', 'salesPersonActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/订单/通知销售员');
INSERT INTO `sa_doclinkdefine` VALUES ('C84A474B9654492E88C853EE945C496B', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'stampActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文/用印');
INSERT INTO `sa_doclinkdefine` VALUES ('CA9BEA48A71C43A5AD78FF56C04CA204', null, null, '/demo/misc/process/sendDoc/sendDocProcess', 'proofActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/发文/校对');
INSERT INTO `sa_doclinkdefine` VALUES ('DBFD78B726F842CEA349C808F122D7DE', null, null, '/demo/misc/process/order/orderProcess', 'leadActivity', null, null, null, '0', null, null, null, null, null, '/综合案例(rich)/订单/通报总公司领导');
INSERT INTO `sa_doclinkdefine` VALUES ('EB2819C6E32A4B6FBABAED18031DEC61', null, null, '/demo/misc/process/orderQ/orderQProcess', 'managerActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/订单/公司总经理审批');
INSERT INTO `sa_doclinkdefine` VALUES ('EEFED3C5C7C542BB994FDA3D77C7CAF5', null, null, '/demo/misc/process/sendDoc/sendDocProcess', null, null, null, null, '0', null, null, null, null, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><defineRoot><rootName>文档中心</rootName><rootPath>/defaultDocNameSpace</rootPath><subPath/><access>1799</access><limitSize/><templates/></defineRoot>', '/demo/misc/process/sendDoc/sendDocProcess');
INSERT INTO `sa_doclinkdefine` VALUES ('F2442E0518E4465690384B8DFF21976B', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'deptActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文/本部门审核');
INSERT INTO `sa_doclinkdefine` VALUES ('F2CEAC1BED6C4CC1840186C9AEA0393C', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'signActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文/领导签发');
INSERT INTO `sa_doclinkdefine` VALUES ('FFE631DE92F244119F46F43CCB380B77', null, null, '/demo/misc/process/sendDocQ/sendDocQProcess', 'drafterActivity', null, null, null, '0', null, null, null, null, null, '/综合案例/发文/主办人处理');

-- ----------------------------
-- Table structure for sa_doclog
-- ----------------------------
DROP TABLE IF EXISTS `sa_doclog`;
CREATE TABLE `sa_doclog` (
  `version` int(11) DEFAULT NULL,
  `sPersonName` varchar(64) DEFAULT NULL,
  `sAccessType` varchar(16) DEFAULT NULL,
  `sDocID` varchar(64) DEFAULT NULL,
  `sID` varchar(36) NOT NULL,
  `sTime` datetime DEFAULT NULL,
  `sDeptName` varchar(64) DEFAULT NULL,
  `sPersonFID` varchar(512) DEFAULT NULL,
  `sDocVersionID` int(11) DEFAULT NULL,
  `sDocName` varchar(128) DEFAULT NULL,
  `sSize` double(15,3) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_doclog
-- ----------------------------

-- ----------------------------
-- Table structure for sa_docnamespace
-- ----------------------------
DROP TABLE IF EXISTS `sa_docnamespace`;
CREATE TABLE `sa_docnamespace` (
  `sID` varchar(128) NOT NULL,
  `sDisplayName` varchar(256) DEFAULT NULL,
  `sHost` varchar(128) DEFAULT NULL,
  `sPort` int(11) DEFAULT NULL,
  `sUrl` varchar(128) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `sFlag` int(11) DEFAULT NULL,
  `sAccessMode` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_docnamespace
-- ----------------------------
INSERT INTO `sa_docnamespace` VALUES ('defaultDocNameSpace', '文档中心', 'localhost', '8080', 'http://localhost:8080/DocServer', '0', '1', '1');

-- ----------------------------
-- Table structure for sa_docnode
-- ----------------------------
DROP TABLE IF EXISTS `sa_docnode`;
CREATE TABLE `sa_docnode` (
  `sID` varchar(36) NOT NULL,
  `sParentID` varchar(36) DEFAULT NULL,
  `sDocName` varchar(128) DEFAULT NULL,
  `sSequence` varchar(128) DEFAULT NULL,
  `sSize` float DEFAULT NULL,
  `sKind` varchar(128) DEFAULT NULL,
  `sDocPath` varchar(2048) DEFAULT NULL,
  `sDocDisplayPath` text,
  `sCreatorFID` varchar(2048) DEFAULT NULL,
  `sCreatorName` varchar(64) DEFAULT NULL,
  `sCreatorDeptName` varchar(64) DEFAULT NULL,
  `sCreateTime` datetime DEFAULT NULL,
  `sEditorFID` varchar(2048) DEFAULT NULL,
  `sEditorName` varchar(64) DEFAULT NULL,
  `sEditorDeptName` varchar(64) DEFAULT NULL,
  `sLastWriterFID` varchar(2048) DEFAULT NULL,
  `sLastWriterName` varchar(64) DEFAULT NULL,
  `sLastWriterDeptName` varchar(64) DEFAULT NULL,
  `sLastWriteTime` datetime DEFAULT NULL,
  `sFileID` varchar(128) DEFAULT NULL,
  `sDescription` text,
  `sDocLiveVersionID` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `sClassification` varchar(128) DEFAULT NULL,
  `sKeywords` varchar(256) DEFAULT NULL,
  `sDocSerialNumber` varchar(128) DEFAULT NULL,
  `sFinishTime` datetime DEFAULT NULL,
  `sNameSpace` varchar(256) DEFAULT NULL,
  `sCacheName` varchar(100) DEFAULT NULL,
  `sRevisionCacheName` varchar(100) DEFAULT NULL,
  `sFlag` int(11) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_docnode
-- ----------------------------
INSERT INTO `sa_docnode` VALUES ('defaultDocNameSpace', null, '文档中心', null, null, 'dir', '/', '/', '/ORG01.ogn/PSN01@ORG01.psm', 'system', null, '2016-03-31 09:46:07', null, null, null, 'system', null, null, '2016-03-31 09:46:07', null, null, null, '0', null, null, null, null, 'defaultDocNameSpace', null, null, '1');

-- ----------------------------
-- Table structure for sa_filterpattern
-- ----------------------------
DROP TABLE IF EXISTS `sa_filterpattern`;
CREATE TABLE `sa_filterpattern` (
  `sID` varchar(36) NOT NULL,
  `sPerson` varchar(36) DEFAULT NULL,
  `sProcess` varchar(1024) NOT NULL,
  `sActivity` varchar(128) NOT NULL,
  `sInstance` varchar(128) NOT NULL,
  `sName` varchar(128) NOT NULL,
  `sContent` text,
  `sOrderNum` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `sOrgFID` varchar(255) DEFAULT NULL,
  `sOrgFName` varchar(1024) DEFAULT NULL,
  `sCreatorID` varchar(32) DEFAULT NULL,
  `sCreatorName` varchar(64) DEFAULT NULL,
  `sCreateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_FILTERPATTERN_PERSON` (`sPerson`),
  KEY `IDX_FILTERPATTERN_ORGFID` (`sOrgFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_filterpattern
-- ----------------------------

-- ----------------------------
-- Table structure for sa_kvsequence
-- ----------------------------
DROP TABLE IF EXISTS `sa_kvsequence`;
CREATE TABLE `sa_kvsequence` (
  `K` varchar(255) NOT NULL,
  `V` int(11) NOT NULL,
  PRIMARY KEY (`K`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_kvsequence
-- ----------------------------

-- ----------------------------
-- Table structure for sa_log
-- ----------------------------
DROP TABLE IF EXISTS `sa_log`;
CREATE TABLE `sa_log` (
  `sID` varchar(32) NOT NULL,
  `sTypeName` varchar(128) DEFAULT NULL,
  `sDescription` text,
  `sProcess` varchar(255) DEFAULT NULL,
  `sProcessName` varchar(128) DEFAULT NULL,
  `sActivity` varchar(128) DEFAULT NULL,
  `sActivityName` varchar(128) DEFAULT NULL,
  `sAction` varchar(128) DEFAULT NULL,
  `sDeviceType` varchar(64) DEFAULT NULL,
  `sOperatingSystem` varchar(64) DEFAULT NULL,
  `sActionName` varchar(128) DEFAULT NULL,
  `sParameters` text,
  `sResult` text,
  `sStatusName` varchar(32) DEFAULT NULL,
  `sCreateTime` datetime DEFAULT NULL,
  `sCreatorFID` varchar(255) DEFAULT NULL,
  `sCreatorFName` varchar(1024) DEFAULT NULL,
  `sCreatorPersonID` varchar(32) DEFAULT NULL,
  `sCreatorPersonName` varchar(128) DEFAULT NULL,
  `sCreatorPosID` varchar(32) DEFAULT NULL,
  `sCreatorPosName` varchar(128) DEFAULT NULL,
  `sCreatorDeptID` varchar(32) DEFAULT NULL,
  `sCreatorDeptName` varchar(128) DEFAULT NULL,
  `sCreatorOgnID` varchar(32) DEFAULT NULL,
  `sCreatorOgnName` varchar(128) DEFAULT NULL,
  `sIP` varchar(32) DEFAULT NULL,
  `sESField01` varchar(256) DEFAULT NULL,
  `sESField02` varchar(256) DEFAULT NULL,
  `sESField03` varchar(256) DEFAULT NULL,
  `sESField04` varchar(256) DEFAULT NULL,
  `sENField11` decimal(10,0) DEFAULT NULL,
  `sENField12` decimal(10,0) DEFAULT NULL,
  `sEDField21` datetime DEFAULT NULL,
  `sEDField22` datetime DEFAULT NULL,
  `sETField31` text,
  `sETField32` text,
  `sEIField41` int(11) DEFAULT NULL,
  `sEIField42` int(11) DEFAULT NULL,
  `sEBField51` longblob,
  `sEBField52` longblob,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_LOG_PROCESS` (`sProcess`),
  KEY `IDX_LOG_ACTIVITY` (`sActivity`),
  KEY `IDX_LOG_ACTION` (`sAction`),
  KEY `IDX_LOG_CT` (`sCreateTime`),
  KEY `IDX_LOG_CFID` (`sCreatorFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_log
-- ----------------------------
INSERT INTO `sa_log` VALUES ('04F6B2A77F284F079138069FC68F53F2', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'WINDOWS_7', '登录', '******', null, '失败', '2016-07-05 12:57:05', null, null, null, 'system', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('111E7F1527404A6D825E43C52166A494', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'WINDOWS_7', '登录', '******', null, '失败', '2016-07-05 13:00:01', null, null, null, 'lcq', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('1DEDF05D780A45BC9FB06FA7EE6052F0', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'WINDOWS_7', '登录', '******', null, '失败', '2016-07-05 12:53:25', null, null, null, 'lcq', null, null, null, null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('353926A4EA524520A74581E7F374B74F', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'MAC_OS_X_IPHONE', '登录', '******', null, '失败', '2016-07-05 12:53:54', null, null, null, 'lcq', null, null, null, null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('44111DFA385D4858A6D3492F44F16153', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'WINDOWS_7', '登录', '******', null, '失败', '2016-07-05 12:58:41', null, null, null, 'system', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('467538780E3A4B2389A8866991E80544', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Mobile', 'ANDROID', '登录', '******', null, '失败', '2016-06-24 10:57:15', null, null, null, 'zj', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('46A3D8ECCC6249CC9CCE9FCAD44A9131', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'WINDOWS_7', '登录', '******', null, '失败', '2016-07-05 12:59:18', null, null, null, 'system', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('4D04F228A8A94596B1682B919F1A4C1D', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Mobile', 'ANDROID', '登录', '******', null, '失败', '2016-06-24 10:57:03', null, null, null, 'zj', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('4E3FACC34EAF4A95B9A172936E34FF22', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'MAC_OS_X_IPHONE', '登录', '******', null, '失败', '2016-07-05 12:55:16', null, null, null, 'system', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('4FB4A24A066341DC9314220FC5BE2AD4', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'WINDOWS_7', '登录', '******', null, '失败', '2016-07-05 12:57:12', null, null, null, 'system', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('51A75683A6514B96BEC62561CF2C518E', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'MAC_OS_X_IPHONE', '登录', '******', null, '失败', '2016-07-05 12:55:16', null, null, null, 'system', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('52E5313D62DD483B91C086D4BF639B41', '操作日志', null, '/portal/process/message/messageProcess', 'message', 'mainActivity', 'mainActivity', 'queryMessageAction', 'Mobile', 'WINDOWS_7', 'queryMessageAction', '参数名称: limit\n参数值: \n参数名称: dataModel\n参数值: {\"value\":\"/portal/data\"}\n参数名称: concept\n参数值: {\"value\":\"Portal_Message\"}\n参数名称: from\n参数值: {\"value\":\"Portal_Message Portal_Message\"}\n参数名称: orderBy\n参数值: \n参数名称: distinct\n参数值: {\"value\":false}\n参数名称: columns\n参数值: \n参数名称: range\n参数值: {\"value\":[]}\n参数名称: offset\n参数值: \n参数名称: condition\n参数值: \n参数名称: select\n参数值: {\"value\":\"Portal_Message.*\"}\n参数名称: filter\n参数值: \n参数名称: fnModel\n参数值: \n参数名称: variables\n参数值: \n参数名称: aggregate\n参数值: \n参数名称: idColumn\n参数值: {\"value\":\"Portal_Message\"}\n参数名称: aggregateColumns\n参数值: \n', '{\"value\":{\"@type\":\"table\",\"rows\":[{\"Portal_Message\":{\"changed\":\"1\"},\"fActivity\":{\"changed\":\"1\",\"value\":\"mainActivity\"},\"fContent\":{\"changed\":\"1\",\"value\":\"\"},\"fCount\":{\"changed\":\"1\",\"value\":0},\"fDate\":{\"changed\":\"1\"},\"fLabel\":{\"changed\":\"1\",\"value\":\"待办\"},\"fProcess\":{\"changed\":\"1\",\"value\":\"/SA/task/taskView/taskViewProcess\"},\"fSubLabel\":{\"changed\":\"1\",\"value\":\"无\"},\"fTag\":{\"changed\":\"1\",\"value\":\"\"},\"fUrl\":{\"changed\":\"1\",\"value\":\"$UI/SA/task/taskView/waitActivity.a\"},\"userdata\":{\"recordState\":\"new\"},\"version\":{\"changed\":\"1\"}},{\"Portal_Message\":{\"changed\":\"1\"},\"fActivity\":{\"changed\":\"1\",\"value\":\"mainActivity\"},\"fContent\":{\"changed\":\"1\",\"value\":\"\"},\"fCount\":{\"changed\":\"1\",\"value\":0},\"fDate\":{\"changed\":\"1\"},\"fLabel\":{\"changed\":\"1\",\"value\":\"提交\"},\"fProcess\":{\"changed\":\"1\",\"value\":\"/SA/task/taskView/taskViewProcess\"},\"fSubLabel\":{\"changed\":\"1\",\"value\":\"无\"},\"fTag\":{\"changed\":\"1\",\"value\":\"\"},\"fUrl\":{\"changed\":\"1\",\"value\":\"$UI/SA/task/taskView/submitActivity.a\"},\"userdata\":{\"recordState\":\"new\"},\"version\":{\"changed\":\"1\"}}],\"userdata\":{\"model\":\"/portal/data\",\"relationAlias\":\"Portal_Message,version,fLabel,fSubLabel,fContent,fTag,fDate,fCount,fProcess,fActivity,fUrl\",\"relationTypes\":\"String,Integer,String,String,String,String,DateTime,Integer,String,String,String\",\"relations\":\"Portal_Message,Portal_Message.version,Portal_Message.fLabel,Portal_Message.fSubLabel,Portal_Message.fContent,Portal_Message.fTag,Portal_Message.fDate,Portal_Message.fCount,Portal_Message.fProcess,Portal_Message.fActivity,Portal_Message.fUrl\",\"updateMode\":\"whereVersion\"}}}', '成功', '2016-03-31 09:46:42', '/ORG01.ogn/PSN01@ORG01.psm', '/起步软件/system', 'PSN01', 'system', '', '', '', '', 'ORG01', '起步软件', '192.168.1.75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('61A2D50E1F754769869621BD7C84548F', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'MAC_OS_X_IPHONE', '登录', '******', null, '失败', '2016-07-05 12:55:15', null, null, null, 'system', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('66D28C1342B84D0193771943C8036295', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'WINDOWS_7', '登录', '******', null, '失败', '2016-07-05 12:58:42', null, null, null, 'system', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('7931038A1581473A81444EE619FFBD2B', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'MAC_OS_X_IPHONE', '登录', '******', null, '失败', '2016-07-05 12:54:15', null, null, null, 'system', null, null, null, null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('B889DAD6FE30492A94929B427164D169', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'WINDOWS_7', '登录', '******', null, '失败', '2016-07-05 12:58:38', null, null, null, 'system', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('BC8D6114190340E085934BFD2B7CA113', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Mobile', 'WINDOWS_7', '登录', '******', '{\"value\":[\"true\",\"PSN01\",\"system\",\"ORG01\",\"起步软件\",\"/ORG01.ogn\",\"SYSTEM\",\"192.168.1.75/2016-03-31 09:46:38.95/system\",null,null,\"_orgVer_\"]}', '成功', '2016-03-31 09:46:39', '/ORG01.ogn/PSN01@ORG01.psm', '/起步软件/system', 'PSN01', 'system', '', '', '', '', 'ORG01', '起步软件', '192.168.1.75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('BE6F63FE2C1D48FD81427F29EBF2B9AE', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'MAC_OS_X_IPHONE', '登录', '******', null, '失败', '2016-07-05 12:54:14', null, null, null, 'system', null, null, null, null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('D4F0089D72E446E5B5FEADE6D9504FC4', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'MAC_OS_X_IPHONE', '登录', '******', null, '失败', '2016-07-05 12:56:12', null, null, null, 'system', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('D7725382AFB64775BBBE6F3B85351FEF', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'WINDOWS_7', '登录', '******', null, '失败', '2016-07-05 12:57:04', null, null, null, 'system', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('EAC188F7C4D444E4935F6F0696E667A0', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'WINDOWS_7', '登录', '******', null, '失败', '2016-07-05 17:16:08', null, null, null, 'system', null, null, null, null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_log` VALUES ('EF625238C72D4F6196BE5C6FB75BC360', '操作日志', null, '/SA/OPM/system/systemProcess', '系统调用', 'mainActivity', '系统', 'loginAction', 'Computer', 'WINDOWS_7', '登录', '******', null, '失败', '2016-07-05 13:00:00', null, null, null, 'lcq', null, null, null, null, null, null, '127.0.0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for sa_messageparameter
-- ----------------------------
DROP TABLE IF EXISTS `sa_messageparameter`;
CREATE TABLE `sa_messageparameter` (
  `sID` varchar(50) NOT NULL,
  `sChatNumber` int(11) DEFAULT NULL,
  `sSendNumber` int(11) DEFAULT NULL,
  `sFileSize` int(11) DEFAULT NULL,
  `sCanUse` int(11) DEFAULT NULL,
  `sOpmId` varchar(50) NOT NULL,
  `sOpmKind` varchar(50) NOT NULL,
  `sName` varchar(50) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_messageparameter
-- ----------------------------

-- ----------------------------
-- Table structure for sa_opagent
-- ----------------------------
DROP TABLE IF EXISTS `sa_opagent`;
CREATE TABLE `sa_opagent` (
  `sID` varchar(32) NOT NULL,
  `sOrgFID` varchar(2048) NOT NULL,
  `sOrgFName` varchar(2048) NOT NULL,
  `sAgentID` varchar(32) NOT NULL,
  `sValidState` int(11) DEFAULT NULL,
  `sStartTime` datetime DEFAULT NULL,
  `sFinishTime` datetime DEFAULT NULL,
  `sProcess` text,
  `sCreatorID` varchar(32) DEFAULT NULL,
  `sCreatorName` varchar(64) DEFAULT NULL,
  `sCreateTime` datetime DEFAULT NULL,
  `sCanTranAgent` int(11) DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_opagent
-- ----------------------------

-- ----------------------------
-- Table structure for sa_opauthorize
-- ----------------------------
DROP TABLE IF EXISTS `sa_opauthorize`;
CREATE TABLE `sa_opauthorize` (
  `sID` varchar(32) NOT NULL,
  `sOrgID` varchar(65) NOT NULL,
  `sOrgName` varchar(255) DEFAULT NULL,
  `sOrgFID` varchar(212) NOT NULL,
  `sOrgFName` varchar(255) DEFAULT NULL,
  `sAuthorizeRoleID` varchar(32) NOT NULL,
  `sDescription` varchar(1024) DEFAULT NULL,
  `sCreatorFID` varchar(2048) DEFAULT NULL,
  `sCreatorFName` varchar(2048) DEFAULT NULL,
  `sCreateTime` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_OPAUTH_ORGID` (`sOrgID`),
  KEY `IDX_OPAUTH_ORGFID` (`sOrgFID`),
  KEY `IDX_OPAUTH_ORGFNAME` (`sOrgFName`),
  KEY `IDX_OPAUTH_ROLEID` (`sAuthorizeRoleID`),
  KEY `IDX_OPAUTH_MAIN` (`sAuthorizeRoleID`,`sOrgFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_opauthorize
-- ----------------------------
INSERT INTO `sa_opauthorize` VALUES ('AHR01', 'ORG01', '虹口区政府', '/ORG01.ogn', '/虹口区政府', 'RL-USER', null, '/ORG01.ogn/PSN01@ORG01.psm', '/起步软件/system', '2016-03-31 09:46:07', '0');
INSERT INTO `sa_opauthorize` VALUES ('AHR02', 'PSN01@ORG01', 'system', '/ORG01.ogn/PSN01@ORG01.psm', '/起步软件/system', 'RL-SYSTEM', null, '/ORG01.ogn/PSN01@ORG01.psm', '/起步软件/system', '2016-03-31 09:46:07', '0');
INSERT INTO `sa_opauthorize` VALUES ('AHR03-demo', 'ORG01', '起步软件', '/ORG01.ogn', '/起步软件', 'RL03-demo', null, '/ORG01.ogn/PSN01@ORG01.psm', '/起步软件/system', '2016-03-31 00:00:00', '0');

-- ----------------------------
-- Table structure for sa_opcustomgroup
-- ----------------------------
DROP TABLE IF EXISTS `sa_opcustomgroup`;
CREATE TABLE `sa_opcustomgroup` (
  `sID` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  `sName` varchar(64) NOT NULL,
  `sTypeID` varchar(32) NOT NULL,
  `sTypeName` varchar(64) NOT NULL,
  `sSequence` int(11) DEFAULT NULL,
  `sCreatorID` varchar(32) DEFAULT NULL,
  `sCreatorName` varchar(64) DEFAULT NULL,
  `sCreateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_OPGROUP_RANGE` (`sTypeID`,`sCreatorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_opcustomgroup
-- ----------------------------

-- ----------------------------
-- Table structure for sa_opmanagement
-- ----------------------------
DROP TABLE IF EXISTS `sa_opmanagement`;
CREATE TABLE `sa_opmanagement` (
  `sID` varchar(32) NOT NULL,
  `sOrgID` varchar(65) NOT NULL,
  `sOrgName` varchar(255) DEFAULT NULL,
  `sOrgFID` varchar(255) NOT NULL,
  `sOrgFName` varchar(255) DEFAULT NULL,
  `sManageOrgID` varchar(65) NOT NULL,
  `sManageOrgName` varchar(255) DEFAULT NULL,
  `sManageOrgFID` varchar(255) NOT NULL,
  `sManageOrgFName` varchar(255) DEFAULT NULL,
  `sManageTypeID` varchar(32) NOT NULL,
  `sCreatorFID` varchar(2048) DEFAULT NULL,
  `sCreatorFName` varchar(2048) DEFAULT NULL,
  `sCreateTime` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_OPMNAGE_ORGID` (`sOrgID`),
  KEY `IDX_OPMNAGE_ORGFID` (`sOrgFID`),
  KEY `IDX_OPMNAGE_ORGFNAME` (`sOrgFName`),
  KEY `IDX_OPMNAGE_MORGID` (`sManageOrgID`),
  KEY `IDX_OPMNAGE_MORGFID` (`sManageOrgFID`),
  KEY `IDX_OPMNAGE_MORGFNAME` (`sManageOrgFName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_opmanagement
-- ----------------------------

-- ----------------------------
-- Table structure for sa_opmanagetype
-- ----------------------------
DROP TABLE IF EXISTS `sa_opmanagetype`;
CREATE TABLE `sa_opmanagetype` (
  `sID` varchar(32) NOT NULL,
  `sName` varchar(255) DEFAULT NULL,
  `sCode` varchar(32) DEFAULT NULL,
  `sManageOrgKind` varchar(64) DEFAULT NULL,
  `sManageOrgKindName` varchar(255) DEFAULT NULL,
  `sLeaderNumber` int(11) DEFAULT NULL,
  `sIsSystem` int(11) DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_opmanagetype
-- ----------------------------
INSERT INTO `sa_opmanagetype` VALUES ('businessManagement', '业务管理', 'businessManagement', 'ogn dpt pos grp', '机构 部门 岗位 工作组', '0', '1', '0');
INSERT INTO `sa_opmanagetype` VALUES ('systemManagement', '系统管理', 'systemManagement', 'ogn dpt pos grp', '机构 部门 岗位 工作组', '0', '1', '0');

-- ----------------------------
-- Table structure for sa_oporg
-- ----------------------------
DROP TABLE IF EXISTS `sa_oporg`;
CREATE TABLE `sa_oporg` (
  `sID` varchar(128) NOT NULL,
  `sName` varchar(128) NOT NULL,
  `sCode` varchar(64) NOT NULL,
  `sLongName` varchar(255) DEFAULT NULL,
  `sFName` varchar(2048) DEFAULT NULL,
  `sFCode` varchar(255) DEFAULT NULL,
  `sFID` varchar(255) NOT NULL,
  `sOrgKindID` varchar(5) NOT NULL,
  `sSequence` varchar(128) DEFAULT NULL,
  `sValidState` int(11) DEFAULT NULL,
  `sParent` varchar(128) DEFAULT NULL,
  `sLevel` int(11) DEFAULT NULL,
  `sPhone` varchar(64) DEFAULT NULL,
  `sFax` varchar(64) DEFAULT NULL,
  `sAddress` varchar(255) DEFAULT NULL,
  `sZip` varchar(16) DEFAULT NULL,
  `sDescription` varchar(1024) DEFAULT NULL,
  `sPersonID` varchar(64) DEFAULT NULL,
  `sNodeKind` varchar(32) DEFAULT NULL,
  `sWxDeptID` int(11) DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_OPORG_CODE` (`sCode`),
  KEY `IDX_OPORG_FCODE` (`sFCode`),
  KEY `IDX_OPORG_FID` (`sFID`),
  KEY `IDX_OPORG_KV` (`sValidState`,`sOrgKindID`),
  KEY `IDX_OPORG_PARENT` (`sParent`),
  KEY `IDX_OPORG_PERSON` (`sPersonID`),
  KEY `IDX_OPORG_SEQUENCE` (`sSequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_oporg
-- ----------------------------
INSERT INTO `sa_oporg` VALUES ('C72954C0F44000019B1F1BB01CBA15F8', '虹口科委', 'HKKW', null, '/虹口区政府/虹口科委', '/HKGOV/HKKW', '/ORG01.ogn/C72954C0F44000019B1F1BB01CBA15F8.dpt', 'dpt', '/001/002', null, 'ORG01', null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_oporg` VALUES ('C7A25C2B69F0000182551A01134B1A79@C72954C0F44000019B1F1BB01CBA15F8', '17602112403', '17602112403', null, '/虹口区政府/虹口科委/17602112403', '/HKGOV/HKKW/17602112403', '/ORG01.ogn/C72954C0F44000019B1F1BB01CBA15F8.dpt/C7A25C2B69F0000182551A01134B1A79.psm', 'psm', '/001/002/001', '1', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, null, null, null, null, 'C7A25C2B69F0000182551A01134B1A79', 'nkLeaf', null, '0');
INSERT INTO `sa_oporg` VALUES ('C7A4B87BDEC00001178C15F0390019E3@C72954C0F44000019B1F1BB01CBA15F8', 'LiuYong', '13870369441', null, '/虹口区政府/虹口科委/LiuYong', '/HKGOV/HKKW/13870369441', '/ORG01.ogn/C72954C0F44000019B1F1BB01CBA15F8.dpt/C7A4B87BDEC00001178C15F0390019E3.psm', 'psm', '/001/002/004', '1', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, null, null, null, null, 'C7A4B87BDEC00001178C15F0390019E3', 'nkLeaf', null, '0');
INSERT INTO `sa_oporg` VALUES ('C7A4D059CF800001DB8DD930181624D0@C72954C0F44000019B1F1BB01CBA15F8', '123', '13818345236', null, '/虹口区政府/虹口科委/123', '/HKGOV/HKKW/13818345236', '/ORG01.ogn/C72954C0F44000019B1F1BB01CBA15F8.dpt/C7A4D059CF800001DB8DD930181624D0.psm', 'psm', '/001/002/002', '1', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, null, null, null, null, 'C7A4D059CF800001DB8DD930181624D0', 'nkLeaf', null, '0');
INSERT INTO `sa_oporg` VALUES ('C7A4D2FB3C30000121644D7345401FE4@C72954C0F44000019B1F1BB01CBA15F8', 'LY', '13870369440', null, '/虹口区政府/虹口科委/LY', '/HKGOV/HKKW/13870369440', '/ORG01.ogn/C72954C0F44000019B1F1BB01CBA15F8.dpt/C7A4D2FB3C30000121644D7345401FE4.psm', 'psm', '/001/002/003', '1', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, null, null, null, null, 'C7A4D2FB3C30000121644D7345401FE4', 'nkLeaf', null, '0');
INSERT INTO `sa_oporg` VALUES ('C7A64882F3400001AB6B9D901488CAA0@C72954C0F44000019B1F1BB01CBA15F8', '13818345237', '13818345237', null, '/虹口区政府/虹口科委/13818345237', '/HKGOV/HKKW/13818345237', '/ORG01.ogn/C72954C0F44000019B1F1BB01CBA15F8.dpt/C7A64882F3400001AB6B9D901488CAA0.psm', 'psm', '/001/002/005', '1', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, null, null, null, null, 'C7A64882F3400001AB6B9D901488CAA0', 'nkLeaf', null, '0');
INSERT INTO `sa_oporg` VALUES ('C7A64882F3400001AB6B9D901488CAA1@C72954C0F44000019B1F1BB01CBA15F8', 'Jackiet', '4200', null, '/虹口区政府/虹口科委/Jackiet', '/HKGOV/HKKW/4200', '/ORG01.ogn/C72954C0F44000019B1F1BB01CBA15F8.dpt/C7A64882F3400001AB6B9D901488CAA1.psm', 'psm', '/001/002/006', '1', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, null, null, null, null, 'C7A64882F3400001AB6B9D901488CAA1', 'nkLeaf', null, '0');
INSERT INTO `sa_oporg` VALUES ('C7ABC2C9760000014D577E10C1701052@C72954C0F44000019B1F1BB01CBA15F8', 'testuser', '4200', null, '/虹口区政府/虹口科委/testuser', '/HKGOV/HKKW/4200', '/ORG01.ogn/C72954C0F44000019B1F1BB01CBA15F8.dpt/C7ABC2C9760000014D577E10C1701052.psm', 'psm', '/001/002/007', '1', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, null, null, null, null, 'C7ABC2C9760000014D577E10C1701052', 'nkLeaf', null, '0');
INSERT INTO `sa_oporg` VALUES ('C7ABC2DFDC60000171B719C0F3001AD4@C72954C0F44000019B1F1BB01CBA15F8', 'suhx', '4659', null, '/虹口区政府/虹口科委/suhx', '/HKGOV/HKKW/4659', '/ORG01.ogn/C72954C0F44000019B1F1BB01CBA15F8.dpt/C7ABC2DFDC60000171B719C0F3001AD4.psm', 'psm', '/001/002/008', '1', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, null, null, null, null, 'C7ABC2DFDC60000171B719C0F3001AD4', 'nkLeaf', null, '0');
INSERT INTO `sa_oporg` VALUES ('C7ABD43A4DB000014858E360131019E6@C72954C0F44000019B1F1BB01CBA15F8', '管理员', '4200', null, '/虹口区政府/虹口科委/管理员', '/HKGOV/HKKW/4200', '/ORG01.ogn/C72954C0F44000019B1F1BB01CBA15F8.dpt/C7ABD43A4DB000014858E360131019E6.psm', 'psm', '/001/002/009', '1', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, null, null, null, null, 'C7ABD43A4DB000014858E360131019E6', 'nkLeaf', null, '0');
INSERT INTO `sa_oporg` VALUES ('C7ABD44569C00001429D9F7D148738A0@C72954C0F44000019B1F1BB01CBA15F8', '苏焕兴', '4659', null, '/虹口区政府/虹口科委/苏焕兴', '/HKGOV/HKKW/4659', '/ORG01.ogn/C72954C0F44000019B1F1BB01CBA15F8.dpt/C7ABD44569C00001429D9F7D148738A0.psm', 'psm', '/001/002/010', '1', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, null, null, null, null, 'C7ABD44569C00001429D9F7D148738A0', 'nkLeaf', null, '0');
INSERT INTO `sa_oporg` VALUES ('ORG01', '虹口区政府', 'HKGOV', null, '/虹口区政府', '/HKGOV', '/ORG01.ogn', 'ogn', '/001', '1', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sa_oporg` VALUES ('PSN01@ORG01', 'system', 'SYSTEM', null, '/虹口区政府/system', '/HKGOV/SYSTEM', '/ORG01.ogn/PSN01.psm', 'psm', '/001/001', '1', 'ORG01', null, null, null, null, null, null, 'PSN01', 'nkLeaf', null, '0');

-- ----------------------------
-- Table structure for sa_opparentrole
-- ----------------------------
DROP TABLE IF EXISTS `sa_opparentrole`;
CREATE TABLE `sa_opparentrole` (
  `sID` varchar(32) NOT NULL,
  `sRoleID` varchar(32) NOT NULL,
  `sParentRoleID` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_opparentrole
-- ----------------------------

-- ----------------------------
-- Table structure for sa_oppermission
-- ----------------------------
DROP TABLE IF EXISTS `sa_oppermission`;
CREATE TABLE `sa_oppermission` (
  `sID` varchar(32) NOT NULL,
  `sPermissionRoleID` varchar(32) NOT NULL,
  `sProcess` varchar(255) DEFAULT NULL,
  `sActivityFName` varchar(1024) DEFAULT NULL,
  `sActivity` varchar(255) DEFAULT NULL,
  `sActionsNames` text,
  `sActions` text,
  `sSemanticDP` varchar(2048) DEFAULT NULL,
  `sPermissionKind` int(11) DEFAULT NULL,
  `sDescription` varchar(1024) DEFAULT NULL,
  `sSequence` int(11) DEFAULT NULL,
  `sValidState` int(11) DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_OPPERM_ACTIVITY` (`sActivity`),
  KEY `IDX_OPPERM_PROCESS` (`sProcess`),
  KEY `IDX_OPPERM_ROLEID` (`sPermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_oppermission
-- ----------------------------
INSERT INTO `sa_oppermission` VALUES ('263B196E99424C82AFCDEC345442C35F', 'RL03-demo', '/demo/process/process/dynamicFlow1/dynamicFlow1Process', '/流程案例/动态流程/动态工作流1/动态工作流1', 'mainActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('34F237408A024A8B838F6CEDE500393F', 'RL03-demo', '/demo/process/process/dynamicFlow_LeaveApply/dynamicFlow_LeaveApplyProcess', '/流程案例/动态流程/请假申请（动态流程示例）', 'mainActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('3BB530E224D348BEB55DE263B416670C', 'RL03-demo', '/demo/process/process/dynamicFlow1/dynamicFlow1Process', '/流程案例/动态流程/动态工作流1/业务处理环节', 'bizActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('3C2CA4087983483992B53A510AC22C89', 'RL03-demo', '/demo/process/process/dynamicFlow2/dynamicFlow2Process', '/流程案例/动态流程/动态工作流2/动态工作流2', 'mainActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('46504D3B9898497CA3C3212686034248', 'RL03-demo', '/demo/process/process/dynamicFlow2/dynamicFlow2Process', '/流程案例/动态流程/动态工作流2/首环节', 'firstActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('77A43C8BA35F47ACB5F0C4E0700EA9BC', 'RL03-demo', '/demo/process/process/dynamicFlowsSetting/dynamicFlowsSettingProcess', '/流程案例/动态流程/动态流程配置', 'mainActivity', null, null, null, '0', null, null, '1', '1');
INSERT INTO `sa_oppermission` VALUES ('7ac49243f6e211e5964800ac5f60319c', 'RL_OA', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', '/协同办公/工作交办', 'mainActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('7ac4de26f6e211e5964800ac5f60319c', 'RL_OA', '/OA/personalOffice/process/schedule/scheduleProcess', '/协同办公/日程管理', 'mainActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('7ac531d3f6e211e5964800ac5f60319c', 'RL_OA', '/OA/personalOffice/process/evection/evectionProcess', '/协同办公/出差管理', 'mainActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('7ac5665ef6e211e5964800ac5f60319c', 'RL_OA', '/OA/personalOffice/process/leaveApply/leaveApplyProcess', '/协同办公/请假管理', 'listActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('7ac59712f6e211e5964800ac5f60319c', 'RL_OA', '/OA/personalOffice/process/leaveApply/leaveApplyProcess', '/协同办公/请假申请', 'mainActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('7ac5c74df6e211e5964800ac5f60319c', 'RL_OA', '/OA/personalOffice/process/leaveApply/leaveApplyProcess', '/协同办公/请假申请', 'businessActivity1', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('7ac5fda6f6e211e5964800ac5f60319c', 'RL_OA_DEPTMAN', '/OA/personalOffice/process/leaveApply/leaveApplyProcess', '/协同办公/部门审批', 'businessActivity2', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('7ac630d9f6e211e5964800ac5f60319c', 'RL_OA_MANAGER', '/OA/personalOffice/process/leaveApply/leaveApplyProcess', '/协同办公A/总经理审批', 'businessActivity3', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('7ac66359f6e211e5964800ac5f60319c', 'RL_OA_CHAIRMAN', '/OA/personalOffice/process/leaveApply/leaveApplyProcess', '/协同办公/董事长审批', 'businessActivity4', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('7ac69615f6e211e5964800ac5f60319c', 'RL_OA_OFFICE', '/OA/personalOffice/process/leaveApply/leaveApplyProcess', '/协同办公/办公室审批', 'businessActivity5', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('7ac6c847f6e211e5964800ac5f60319c', 'RL_OA', '/OA/CRM/process/customer/customerProcess', '/CRM/客户管理', 'mainActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('7ac6fd5ff6e211e5964800ac5f60319c', 'RL_OA', '/OA/CRM/process/customerVisit/customerVisitProcess', '/CRM/客户拜访', 'mainActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('8223BE52AD52449A9269646EA82E2B49', 'RL03-demo', '/demo/process/process/dynamicFlow2/dynamicFlow2Process', '/流程案例/动态流程/动态工作流2/业务处理环节', 'bizActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('C487D567CFF24309913F931E1E60AF24', 'RL03-demo', '/demo/process/process/dynamicFlow2/dynamicFlow2Process', '/流程案例/动态流程/动态工作流2/审核环节', 'checkActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('C704DAFD0E334C9A9483D8FAAB6BEDB5', 'RL03-demo', '/demo/process/process/dynamicFlow1/dynamicFlow1Process', '/流程案例/动态流程/动态工作流1/首环节', 'firstActivity', null, null, null, '0', null, null, '1', '0');
INSERT INTO `sa_oppermission` VALUES ('GRADE-OPM-01', 'RL-SYSTEM-GRADE', '/SA/OPM/grade/gradeProcess', '/组织权限/分级管理-分级', 'gradeActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('GRADE-OPM-02', 'RL-SYSTEM-GRADE', '/SA/OPM/organization/organizationProcess', '/组织权限/组织管理-分级', 'gradeActivity', null, null, null, '0', null, '2', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('GRADE-OPM-03', 'RL-SYSTEM-GRADE', '/SA/OPM/authorization/authorizationProcess', '/组织权限/按组织授权-分级', 'gradeActivity', null, null, null, '0', null, '3', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('GRADE-OPM-04', 'RL-SYSTEM-GRADE', '/SA/OPM/management/managementProcess', '/组织权限/业务管理权限-分级', 'gradeActivity', null, null, null, '0', null, '4', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('GRADE-OPM-05', 'RL-SYSTEM-GRADE', '/SA/OPM/recycled/recycledProcess', '/组织权限/回收站-分级', 'gradeActivity', null, null, null, '0', null, '5', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('GRADE-OPM-06', 'RL-SYSTEM-GRADE', '/SA/OPM/authorizationByRole/authorizationByRoleProcess', '/组织权限/按角色授权-分级', 'gradeActivity', null, null, null, '0', null, '6', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('GRADE-OPM-07', 'RL-SYSTEM-GRADE', '/SA/OPM/authorizationQuery/authorizationQueryProcess', '/组织权限/权限查询-分级', 'gradeActivity', null, null, null, '0', null, '7', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-01', 'RL03-demo', '/demo/components/process/xforms/xformsProcess', '/组件案例/xforms系列组件', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-02', 'RL03-demo', '/demo/components/process/tabpanel/tabpanelProcess', '/组件案例/tabpanel', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-03', 'RL03-demo', '/demo/components/process/splitter/splitterProcess', '/组件案例/splitter', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-04', 'RL03-demo', '/demo/components/process/collapsePanel/collapsePanelProcess', '/组件案例/collapsePanel', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-05', 'RL03-demo', '/demo/components/process/messageDialog/messageDialogProcess', '/组件案例/messageDialog', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-06', 'RL03-demo', '/demo/components/process/dateFilter/dateFilterProcess', '/组件案例/dateFilter', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-07', 'RL03-demo', '/demo/components/process/tip/tipProcess', '/组件案例/tip', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-08', 'RL03-demo', '/demo/components/process/progressBar/progressBarProcess', '/组件案例/progressBar', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-09', 'RL03-demo', '/demo/components/process/controlLabel/controlLabelProcess', '/组件案例/controlLabel', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-10', 'RL03-demo', '/demo/components/process/printHtml/printHtmlProcess', '/组件案例/printHtml', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-100', 'RL03-demo', '/demo/process/process/noticeRule/noticeRuleProcess', '/案例/流程案例(rich)/通知规则', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-101', 'RL03-demo', '/demo/process/process/noticeRule/noticeRuleProcess', '/案例/流程案例(rich)/通知规则/通知：结束', 'endNoticeActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-102', 'RL03-demo', '/demo/process/process/noticeRule/noticeRuleProcess', '/案例/流程案例(rich)/通知规则/通知：流转到环节2', 'toActivity2NoticeActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-103', 'RL03-demo', '/demo/process/process/noticeRule/noticeRuleProcess', '/案例/流程案例(rich)/通知规则/通知：流转到环节3', 'toActivity3NoticeActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-104', 'RL03-demo', '/demo/process/process/noticeRule/noticeRuleProcess', '/案例/流程案例(rich)/通知规则/通知：回退', 'backNoticeActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-105', 'RL03-demo', '/demo/process/process/noticeRule/noticeRuleProcess', '/案例/流程案例(rich)/通知规则/活动环节1', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-106', 'RL03-demo', '/demo/process/process/noticeRule/noticeRuleProcess', '/案例/流程案例(rich)/通知规则/活动环节2', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-107', 'RL03-demo', '/demo/process/process/noticeRule/noticeRuleProcess', '/案例/流程案例(rich)/通知规则/活动环节3', 'bizActivity3', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-108', 'RL03-demo', '/demo/process/process/executeRule/executeRuleProcess', '/案例/流程案例(rich)/执行规则', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-109', 'RL03-demo', '/demo/process/process/executeRule/executeRuleProcess', '/案例/流程案例(rich)/执行规则/活动环节1', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-11', 'RL03-demo', '/demo/components/process/org/orgProcess', '/组件案例/orgSelect,orgTree,orgFilter', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-110', 'RL03-demo', '/demo/process/process/executeRule/executeRuleProcess', '/案例/流程案例(rich)/执行规则/活动环节2', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-111', 'RL03-demo', '/demo/process/process/startRule/startRuleProcess', '/案例/流程案例(rich)/启动规则', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-112', 'RL03-demo', '/demo/process/process/startRule/startRuleProcess', '/案例/流程案例(rich)/启动规则/活动环节1', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-113', 'RL03-demo', '/demo/process/process/startRule/startRuleProcess', '/案例/流程案例(rich)/启动规则/活动环节2', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-114', 'RL03-demo', '/demo/process/process/taskJoin/taskJoinProcess', '/案例/流程案例(rich)/任务合并', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-115', 'RL03-demo', '/demo/process/process/taskJoin/taskJoinProcess', '/案例/流程案例(rich)/任务合并/活动环节1', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-116', 'RL03-demo', '/demo/process/process/taskJoin/taskJoinProcess', '/案例/流程案例(rich)/任务合并/生成独立任务', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-117', 'RL03-demo', '/demo/process/process/taskJoin/taskJoinProcess', '/案例/流程案例(rich)/任务合并/任务合并', 'bizActivity3', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-118', 'RL03-demo', '/demo/process/process/taskJoin/taskJoinProcess', '/案例/流程案例(rich)/任务合并活动环节4', 'bizActivity4', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-119', 'RL03-demo', '/demo/process/process/customized/customizedProcess', '/案例/流程案例(rich)/定制模板', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-12', 'RL03-demo', '/demo/components/process/gridselect/gridselectProcess', '/组件案例/gridselect', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-120', 'RL03-demo', '/demo/process/process/customized/customizedProcess', '/案例/流程案例(rich)/定制模板/活动环节1', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-121', 'RL03-demo', '/demo/process/process/customized/customizedProcess', '/案例/流程案例(rich)/定制模板/活动环节2', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-122', 'RL03-demo', '/demo/process/process/customized/customizedProcess', '/案例/流程案例(rich)/定制模板/活动环节3', 'bizActivity3', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-123', 'RL03-demo', '/demo/process/process/backRule/backRuleProcess', '/案例/流程案例(rich)/回退规则', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-124', 'RL03-demo', '/demo/process/process/backRule/backRuleProcess', '/案例/流程案例(rich)/回退规则/活动环节1', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-125', 'RL03-demo', '/demo/process/process/backRule/backRuleProcess', '/案例/流程案例(rich)/回退规则/原路返回', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-126', 'RL03-demo', '/demo/process/process/backRule/backRuleProcess', '/案例/流程案例(rich)/回退规则/重新流转', 'bizActivity3', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-127', 'RL03-demo', '/demo/process/process/backRule/backRuleProcess', '/案例/流程案例(rich)/回退规则/原路返回或重新流转', 'bizActivity4', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-128', 'RL03-demo', '/demo/process/process/backRule/backRuleProcess', '/案例/流程案例(rich)/回退规则/回退到首环节', 'bizActivity5', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-129', 'RL03-demo', '/demo/process/process/event/eventProcess', '/案例/流程案例(rich)/流程后台事件', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-13', 'RL03-demo', '/demo/components/process/accesskey/accesskeyProcess', '/组件案例/accesskey,tabIndex,disabled,readonly', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-130', 'RL03-demo', '/demo/process/process/event/eventProcess', '/案例/流程案例(rich)/流程后台事件/流程后台事件', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-131', 'RL03-demo', '/demo/process/process/event/eventProcess', '/案例/流程案例(rich)/流程后台事件/活动环节2', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-132', 'RL03-demo', '/demo/process/process/transferRule/transferRuleProcess', '/案例/流程案例(rich)/转发规则', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-133', 'RL03-demo', '/demo/process/process/transferRule/transferRuleProcess', '/案例/流程案例(rich)/转发规则/活动环节1', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-134', 'RL03-demo', '/demo/process/process/transferRule/transferRuleProcess', '/案例/流程案例(rich)/转发规则/活动环节2', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-135', 'RL03-demo', '/demo/process/process/batch/batchProcess', '/案例/流程案例(rich)/批流转/流程中的批处理', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-136', 'RL03-demo', '/demo/process/process/batch/batchProcess', '/案例/流程案例(rich)/批流转/活动环节1', 'businessActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-137', 'RL03-demo', '/demo/process/process/batch/batchProcess', '/案例/流程案例(rich)/批流转/活动环节2', 'businessActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-138', 'RL03-demo', '/demo/process/process/batch/batchProcess', '/案例/流程案例(rich)/批流转/活动环节3', 'businessActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-14', 'RL03-demo', '/demo/components/process/html/htmlProcess', '/组件案例/html', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-15', 'RL03-demo', '/demo/components/process/treeselect/treeselectProcess', '/组件案例/treeselect', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-16', 'RL03-demo', '/demo/components/process/htmlTable/htmlTableProcess', '/组件案例/htmlTable', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-17', 'RL03-demo', '/demo/components/process/grid/gridProcess', '/组件案例/grid', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-18', 'RL03-demo', '/demo/components/process/windowDialog/windowDialogProcess', '/组件案例/windowDialog', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-18-1', 'RL03-demo', '/demo/components/process/quickData/quickDataProcess', '/组件案例/quickData案例', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-18-2', 'RL03-demo', '/demo/components/process/justepApp/justepAppProcess', '/组件案例/justepApi使用案例', 'apiDetailActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-18-3', 'RL03-demo', '/demo/components/process/justepApp/justepAppProcess', '/组件案例/justepApi使用案例', 'apiListActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-19', 'RL03-demo', '/demo/misc/process/docKind/docKindProcess', '/综合案例(rich)/文种设置', 'DocKindActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-20', 'RL03-demo', '/demo/misc/process/assetClass/assetClassProcess', '/综合案例(rich)/资产类别', 'AssetClassActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-21', 'RL03-demo', '/demo/misc/process/asset/assetProcess', '/综合案例(rich)/资产', 'AssetActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-1', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-10', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/拟稿', 'draftActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-10Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/拟稿', 'draftActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-11', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/核稿', 'checkActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-11Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/核稿', 'checkActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-12', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/办公室处理', 'checkerActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-12Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/办公室处理', 'checkerActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-13', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/校对', 'proofActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-13Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/校对', 'proofActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-1Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-2', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/部门会签', 'meetingActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-2Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/部门会签', 'meetingActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-3', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/主办人处理', 'drafterActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-3Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/主办人处理', 'drafterActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-4', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/领导签发', 'signActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-4Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/领导签发', 'signActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-5', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/打印', 'printActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-5Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/打印', 'printActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-6', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/本部门审核', 'deptActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-6Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/本部门审核', 'deptActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-7', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/用印', 'stampActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-7Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/用印', 'stampActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-8', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/发布', 'publishActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-8Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/发布', 'publishActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-9', 'RL03-demo', '/demo/misc/process/sendDoc/sendDocProcess', '/综合案例(rich)/发文/领导阅签', 'leaderActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-22-9Q', 'RL03-demo', '/demo/misc/process/sendDocQ/sendDocQProcess', '/综合案例/发文/领导阅签', 'leaderActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-23', 'RL03-demo', '/demo/misc/process/referSendDoc/referSendDocProcess', '/综合案例/发文查询', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-24-1', 'RL03-demo', '/demo/misc/process/order/orderProcess', '/综合案例/订单系统', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-24-2', 'RL03-demo', '/demo/misc/process/order/orderProcess', '/综合案例/订单系统/订单申请', 'orderReportActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-24-3', 'RL03-demo', '/demo/misc/process/order/orderProcess', '/综合案例/订单系统/部门经理审核', 'deptActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-24-4', 'RL03-demo', '/demo/misc/process/order/orderProcess', '/综合案例/订单系统/公司总经理审批', 'managerActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-24-5', 'RL03-demo', '/demo/misc/process/order/orderProcess', '/综合案例/订单系统/通报总公司领导', 'leadActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-24-6', 'RL03-demo', '/demo/misc/process/order/orderProcess', '/综合案例/订单系统/通知销售员', 'salesPersonActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-25', 'RL03-demo', '/demo/misc/process/sysComponent/sysComponentProcess', '/综合案例/系统对话框', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-26-1', 'RL03-demo', '/demo/misc/process/workTask/workTaskProcess', '/综合案例/工作任务Web化', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-26-1-Q', 'RL03-demo', '/demo/misc/process/workRecordQ/workRecordQProcess', '/综合案例/工作记录(quick)', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-26-2', 'RL03-demo', '/demo/misc/process/workTask/workTaskProcess', '/综合案例/工作任务Web化', 'useActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-26-3', 'RL03-demo', '/demo/misc/process/workTask/workTaskProcess', '/综合案例/工作任务Web化', 'pubActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-28', 'RL03-demo', '/demo/misc/process/testKsql/testKsqlProcess', '/综合案例/ksql测试', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-29', 'RL03-demo', '/demo/report/process/simple/simpleProcess', '/报表图表案例/简单报表/网格报表', 'gridActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-30', 'RL03-demo', '/demo/report/process/simple/simpleProcess', '/报表图表案例/简单报表/分组报表', 'groupActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-31', 'RL03-demo', '/demo/report/process/simple/simpleProcess', '/报表图表案例/简单报表/交叉报表', 'crossActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-32', 'RL03-demo', '/demo/report/process/simple/simpleProcess', '/报表图表案例/简单报表/卡片报表', 'cardActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-321', 'RL03-demo', '/demo/report/process/simple/simpleQProcess', '/报表图表案例/简单报表/卡片报表(quick)', 'cardActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-33', 'RL03-demo', '/demo/report/process/multidataset/multidatasetProcess', '/报表图表案例/复杂报表/主从报表', 'masterDetailActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-331', 'RL03-demo', '/demo/report/process/multidataset/multidatasetProcess', '/报表图表案例/复杂报表/主从从报表(两级)', 'masterDDActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-332', 'RL03-demo', '/demo/report/process/multidataset/multidatasetProcess', '/报表图表案例/复杂报表/主从从报表(多级)', 'masterDDDActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-34', 'RL03-demo', '/demo/report/process/multidataset/multidatasetProcess', '/报表图表案例/复杂报表/多源多层交叉报表', 'multiDatasetCrossActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-35', 'RL03-demo', '/demo/report/process/multidataset/multidatasetProcess', '/报表图表案例/复杂报表/多源纵向分片报表', 'mutilDatasetVerticalActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-36', 'RL03-demo', '/demo/report/process/multidataset/multidatasetProcess', '/报表图表案例/复杂报表/多源横向分片报表', 'mutilDatasetHorizontalActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-361', 'RL03-demo', '/demo/report/process/multidataset/multidatasetProcess', '/报表图表案例/复杂报表/多源双向分片报表', 'mutilDatasetHVActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-37', 'RL03-demo', '/demo/report/process/property/propertyProcess', '/报表图表案例/报表特性/隐藏特性', 'visibleActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-38', 'RL03-demo', '/demo/report/process/links/linksProcess', '/报表图表案例/报表特性/报表链接', 'reportLinksActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-39', 'RL03-demo', '/demo/report/process/property/propertyProcess', '/报表图表案例/报表特性/报表格式', 'basePropertyActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-40', 'RL03-demo', '/demo/report/process/property/propertyProcess', '/报表图表案例/报表特性/报表参数查询', 'parameterFilterActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-41', 'RL03-demo', '/demo/report/process/ksql/ksqlProcess', '/报表图表案例/报表特性/KSQL报表参数查询', 'ksqlReportActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-42', 'RL03-demo', '/demo/report/process/ksql/ksqlProcess', '/报表图表案例/报表特性/KSQL图表', 'ksqlChartActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-43', 'RL03-demo', '/demo/report/process/operation/operationProcess', '/报表图表案例/报表特性/占比运算', 'proportionActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-44', 'RL03-demo', '/demo/report/process/operation/operationProcess', '/报表图表案例/报表特性/报表序列', 'countActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-45', 'RL03-demo', '/demo/report/process/property/propertyProcess', '/报表图表案例/报表特性/图表混合报表', 'chartActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-46', 'RL03-demo', '/demo/report/process/property/propertyProcess', '/报表图表案例/报表特性/条形码', 'barcodeActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-461', 'RL03-demo', '/demo/report/process/property/propertyProcess', '/报表图表案例/报表特性/分表符', 'multiReportActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-47', 'RL03-demo', '/demo/report/process/print/printProcess', '/报表图表案例/报表打印/分页打印展现', 'pagingActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-48', 'RL03-demo', '/demo/report/process/print/printProcess', '/报表图表案例/报表打印/末页打印展现', 'lastpageActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-49', 'RL03-demo', '/demo/report/process/print/printProcess', '/报表图表案例/报表打印/分栏打印展现', 'subColumnActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-50', 'RL03-demo', '/demo/report/process/print/printProcess', '/报表图表案例/报表打印/跨窗体打印展现', 'mprintActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-51', 'RL03-demo', '/demo/report/process/chart/chartProcess', '/报表图表案例/图表展现/饼图', 'pieActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-511', 'RL03-demo', '/demo/report/process/chart/chartQProcess', '/报表图表案例/图表展现/饼图(quick)', 'pieActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-52', 'RL03-demo', '/demo/report/process/chart/chartProcess', '/报表图表案例/图表展现/垂直柱图', 'barVActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-53', 'RL03-demo', '/demo/report/process/chart/chartProcess', '/报表图表案例/图表展现/水平柱图', 'barHActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-54', 'RL03-demo', '/demo/report/process/chart/chartProcess', '/报表图表案例/图表展现/线图', 'lineActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-55', 'RL03-demo', '/demo/report/process/chart/chartProcess', '/报表图表案例/图表展现/面积图', 'areaActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-56', 'RL03-demo', '/demo/report/process/chart/chartProcess', '/报表图表案例/图表展现/时序图', 'timingActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-57', 'RL03-demo', '/demo/report/process/chart/chartProcess', '/报表图表案例/图表展现/仪表盘', 'dashboardActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-58', 'RL03-demo', '/demo/report/process/chart/chartProcess', '/报表图表案例/图表展现/甘特图', 'ganttActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-59', 'RL03-demo', '/demo/report/process/chart/chartProcess', '/报表图表案例/图表展现/雷达图', 'radarActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-60', 'RL03-demo', '/demo/report/process/chart/chartProcess', '/报表图表案例/图表展现/累积对比分析', 'accumulationActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-61', 'RL03-demo', '/demo/report/process/links/linksProcess', '/报表图表案例/图表展现/图表链接replace', 'chartReplaceActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-62', 'RL03-demo', '/demo/report/process/links/linksProcess', '/报表图表案例/图表展现/图表链接dialog', 'chartDialogActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-621', 'RL03-demo', '/demo/report/process/chart/chartProcess', '/报表图表案例/图表展现/多图混合', 'mixedActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-63', 'RL03-demo', '/demo/report/process/links/linksProcess', '/报表图表案例/图表展现/图表链接window', 'chartWindowActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-631', 'RL03-demo', '/demo/report/process/chart/chartProcess', '/报表图表案例/图表展现/累积对比分析', 'accumulationActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-64', 'RL03-demo', '/demo/report/process/testcase/testcaseProcess', '/报表图表案例/大数据测试/网格报表', 'testgridActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-641', 'RL03-demo', '/demo/report/process/operation/operationProcess', '/报表图表案例/图表展现/参数链接', 'piechartLinksActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-65', 'RL03-demo', '/demo/report/process/testcase/testcaseProcess', '/报表图表案例/大数据测试/分组报表', 'testgroupActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-70', 'RL03-demo', '/demo/report/process/links/linksProcess', '/报表图表案例/报表特性/图表链接', 'chartLinksActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-71', 'RL03-demo', '/demo/misc/process/leaveApply/leaveApplyProcess', '/案例/综合/请假申请', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-72', 'RL03-demo', '/demo/misc/process/leaveApply/leaveApplyProcess', '/案例/综合/请假申请', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-73', 'RL03-demo', '/demo/misc/process/leaveApply/leaveApplyProcess', '/案例/综合/经理审批', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-73-1', 'RL03-demo', '/demo/misc/process/leaveApply/leaveApplyProcess', '/案例/综合/总经理审批', 'bizActivity3', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-75', 'RL03-demo', '/demo/process/process/taskAPI/taskAPIProcess', '/案例/流程案例(rich)/任务API/创建任务', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-76', 'RL03-demo', '/demo/process/process/taskAPI/taskAPIProcess', '/案例/流程案例(rich)/任务API/执行任务', 'executeActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-77', 'RL03-demo', '/demo/misc/process/orderQ/orderQProcess', '/综合案例/订单系统(quick)', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-78', 'RL03-demo', '/demo/misc/process/orderQ/orderQProcess', '/综合案例/订单系统(quick)/订单申请', 'orderReportActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-79', 'RL03-demo', '/demo/misc/process/orderQ/orderQProcess', '/综合案例/订单系统(quick)/部门经理审核', 'deptActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-80', 'RL03-demo', '/demo/misc/process/orderQ/orderQProcess', '/综合案例/订单系统(quick)/公司总经理审批', 'managerActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-81', 'RL03-demo', '/demo/misc/process/orderQ/orderQProcess', '/综合案例/订单系统(quick)/通报总公司领导', 'leadActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-82', 'RL03-demo', '/demo/misc/process/orderQ/orderQProcess', '/综合案例/订单系统(quick)/通知销售员', 'salesPersonActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-83', 'RL03-demo', '/demo/process/process/modifyControl/modifyControlProcess', '/案例/流程案例(rich)/修改ProcessControl', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-84', 'RL03-demo', '/demo/process/process/modifyControl/modifyControlProcess', '/案例/流程案例(rich)/修改ProcessControl/bizActivity1', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-85', 'RL03-demo', '/demo/process/process/modifyControl/modifyControlProcess', '/案例/流程案例(rich)/修改ProcessControl/bizActivity2', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-86', 'RL03-demo', '/demo/process/process/xor/xorProcess', '/案例/流程案例(rich)/XOR', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-87', 'RL03-demo', '/demo/process/process/xor/xorProcess', '/案例/流程案例(rich)/XOR/活动环节1', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-88', 'RL03-demo', '/demo/process/process/xor/xorProcess', '/案例/流程案例(rich)/XOR/活动环节2', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-89', 'RL03-demo', '/demo/process/process/xor/xorProcess', '/案例/流程案例(rich)/XOR/活动环节3', 'bizActivity3', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-90', 'RL03-demo', '/demo/process/process/xor/xorProcess', '/案例/流程案例(rich)/XOR/活动环节4', 'bizActivity4', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-91', 'RL03-demo', '/demo/process/process/and/andProcess', '/案例/流程案例(rich)/AND', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-92', 'RL03-demo', '/demo/process/process/and/andProcess', '/案例/流程案例(rich)/AND/活动环节1', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-93', 'RL03-demo', '/demo/process/process/and/andProcess', '/案例/流程案例(rich)/AND/活动环节2', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-94', 'RL03-demo', '/demo/process/process/and/andProcess', '/案例/流程案例(rich)/AND/活动环节3', 'bizActivity3', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-95', 'RL03-demo', '/demo/process/process/and/andProcess', '/案例/流程案例(rich)/AND/活动环节4', 'bizActivity4', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-96', 'RL03-demo', '/demo/process/process/if/ifProcess', '/案例/流程案例(rich)/条件分支', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-97', 'RL03-demo', '/demo/process/process/if/ifProcess', '/案例/流程案例(rich)/条件分支/活动环节1', 'bizActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-98', 'RL03-demo', '/demo/process/process/if/ifProcess', '/案例/流程案例(rich)/条件分支/活动环节2', 'bizActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-99', 'RL03-demo', '/demo/process/process/if/ifProcess', '/案例/流程案例(rich)/条件分支/活动环节3', 'bizActivity3', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-action-1', 'RL03-demo', '/demo/actions/process/hasAction/hasActionProcess', '/动作案例/引用动作-activity1', 'staticActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-action-10', 'RL03-demo', '/demo/actions/process/integration/integrationProcess', '/动作案例/借书申请（集成示例）/借书审核', 'businessActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-action-11', 'RL03-demo', '/demo/actions/process/integration/integrationProcess', '/动作案例/跳转到其他系统页面', 'staticActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-action-2', 'RL03-demo', '/demo/actions/process/hasAction/hasActionProcess', '/动作案例/引用动作-activity2', 'staticActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-action-3', 'RL03-demo', '/demo/actions/process/paramAccess/paramAccessProcess', '/动作案例/参数访问权限', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-action-4', 'RL03-demo', '/demo/actions/process/invokeAction/invokeActionProcess', '/动作案例/调用动作', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-action-5', 'RL03-demo', '/demo/actions/process/listener/listenerProcess', '/动作案例/动作事件', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-action-6', 'RL03-demo', '/demo/actions/process/standardActionExtend/standardActionExtendProcess', '/动作案例/标准动作扩展', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-action-7', 'RL03-demo', '/demo/actions/process/integration/integrationProcess', '/动作案例/集成示例', 'staticActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-action-8', 'RL03-demo', '/demo/actions/process/integration/integrationProcess', '/动作案例/借书申请（集成示例）/借书申请', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-action-9', 'RL03-demo', '/demo/actions/process/integration/integrationProcess', '/动作案例/借书申请（集成示例）/借书申请', 'businessActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-component-1', 'RL03-demo', '/demo/components/process/data/dataProcess', '/演示案例/组件案例/数据组件案例', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-component-2', 'RL03-demo', '/demo/components/process/attachment/attachmentProcess', '/演示案例/组件案例/附件组件案例', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-data-1', 'RL03-demo', '/demo/db/process/ksqlANDsql/ksqlANDsqlProcess', '/数据案例/KSQL和SQL', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-data-2', 'RL03-demo', '/demo/db/process/table/tableProcess', '/数据案例/Table', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-fn-1', 'RL03-demo', '/demo/fn/process/fnExample/fnExampleProcess', '/函数案例/函数案例', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-fn-2', 'RL03-demo', '/demo/fn/process/processFnExample/processFnExampleProcess', '/函数案例/流程函数案例', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-fn-3', 'RL03-demo', '/demo/fn/process/processFnExample/processFnExampleProcess', '/函数案例/流程函数案例-订单申请', 'businessActivity1', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-fn-4', 'RL03-demo', '/demo/fn/process/processFnExample/processFnExampleProcess', '/函数案例/流程函数案例-财务审批', 'businessActivity2', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-fn-5', 'RL03-demo', '/demo/fn/process/processFnExample/processFnExampleProcess', '/函数案例/流程函数案例-部门审批', 'businessActivity3', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-org-1', 'RL03-demo', '/demo/org/process/actionPermission/actionPermissionProcess', '/组织机构案例/动作权限', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-org-2', 'RL03-demo', '/demo/org/process/dataPermission/dataPermissionProcess', '/组织机构案例/数据权限（订单发货审核）', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('PMS-demo-org-3', 'RL03-demo', '/demo/org/process/management/managementProcess', '/组织机构案例/业务管理权限', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-DOC-01', 'RL-SYSTEM', '/SA/doc/docSetting/docSettingProcess', '/协同办公/文档管理/文档配置', 'mainActivity', null, null, null, '0', null, '21', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-DOC-02', 'RL-SYSTEM', '/SA/doc/docPermission/docPermissionProcess', '/协同办公/文档管理/文档关联', 'mainActivity', null, null, null, '0', null, '22', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-DOC-03', 'RL-SYSTEM', '/SA/doc/docCenter/docCenterProcess', '/协同办公/文档管理/文档中心', 'mainActivity', null, null, null, '0', null, '23', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-OPM-01', 'RL-SYSTEM', '/SA/OPM/organization/organizationProcess', '/组织权限/组织管理', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-OPM-02', 'RL-SYSTEM', '/SA/OPM/role/roleProcess', '/组织权限/角色管理', 'mainActivity', null, null, null, '0', null, '2', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-OPM-03', 'RL-SYSTEM', '/SA/OPM/authorization/authorizationProcess', '/组织权限/按组织授权', 'mainActivity', null, null, null, '0', null, '3', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-OPM-04', 'RL-SYSTEM', '/SA/OPM/management/managementProcess', '/组织权限/业务管理权限', 'mainActivity', null, null, null, '0', null, '4', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-OPM-05', 'RL-SYSTEM', '/SA/OPM/recycled/recycledProcess', '/组织权限/回收站', 'mainActivity', null, null, null, '0', null, '5', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-OPM-06', 'RL-SYSTEM', '/SA/OPM/grade/gradeProcess', '/组织权限/分级管理', 'mainActivity', null, null, null, '0', null, '6', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-OPM-07', 'RL-SYSTEM', '/SA/OPM/log/logProcess', '/组织权限/组织机构日志', 'mainActivity', null, null, null, '0', null, '7', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-OPM-08', 'RL-SYSTEM', '/SA/OPM/authorizationByRole/authorizationByRoleProcess', '/组织权限/按角色授权', 'mainActivity', null, null, null, '0', null, '8', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-OPM-09', 'RL-SYSTEM', '/SA/OPM/authorizationQuery/authorizationQueryProcess', '/组织权限/权限查询', 'mainActivity', null, null, null, '0', null, '9', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-OPM-10', 'RL-SYSTEM', '/SA/OPM/organization/organizationProcess', '/组织权限/组织级别设置', 'orgLevelSetting', null, null, null, '0', null, '10', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-OPM-11', 'RL-SYSTEM', '/SA/OPM/management/managementProcess', '/组织权限/基础设置/业务管理类型设置', 'manageTypeSetting', null, null, null, '0', null, '11', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-OPM-12', 'RL-SYSTEM', '/SA/OPM/customGroup/customGroupProcess', '/组织权限/设置公共常用组', 'publicGroup', null, null, null, '0', null, '12', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-PORTAL-01', 'RL-SYSTEM', '/SA/theme/themeDefine/themeDefineProcess', '/协同办公/门户管理/门户默认布局配置', 'mainActivity', null, null, null, '0', null, '31', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-PORTAL-02', 'RL-SYSTEM', '/SA/theme/themeManager/themeManagerProcess', '/协同办公/门户管理/门户默认布局分配', 'mainActivity', null, null, null, '0', null, '32', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-TASK-01', 'RL-SYSTEM', '/SA/process/monitor/monitorProcess', '/协同办公/任务管理/流程监控', 'mainActivity', null, null, null, '0', null, '11', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-TASK-02', 'RL-SYSTEM', '/SA/process/template/templateProcess', '/协同办公/任务管理/定制流程模板', 'mainActivity', null, null, null, '0', null, '12', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-TASK-03', 'RL-SYSTEM', '/SA/process/template/templateProcess', '/协同办公/任务管理/流程模板管理', 'mainActivity2', null, null, null, '0', null, '13', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-TASK-04', 'RL-SYSTEM', '/SA/task/taskArchive/taskArchiveProcess', '/协同办公/任务管理/任务归档/任务归档', 'mainActivity', null, null, null, '0', null, '14', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-TOOLS-01', 'RL-SYSTEM', '/SA/log/logProcess', '/协同办公/系统工具/操作日志', 'mainActivity', null, null, null, '0', null, '41', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-TOOLS-02', 'RL-SYSTEM', '/SA/online/onlineProcess', '/协同办公/系统工具/在线用户', 'mainActivity', null, null, null, '0', null, '42', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-TOOLS-03', 'RL-SYSTEM', '/SA/license/licenseProcess', '/协同办公/系统工具/license工具', 'mainActivity', null, null, null, '0', null, '43', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-TOOLS-05', 'RL-SYSTEM', '/SA/weixin/process/weixin/weixinProcess', '微信企业号配置', 'mainActivity', null, null, null, '0', null, '45', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('SYS-TOOLS-06', 'RL-SYSTEM', '/SA/code/codeManager/codeManagerProcess', '通用编码管理', 'mainActivity', null, null, null, '0', null, '46', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('USER-DOC-01', 'RL-USER', '/SA/doc/docCenter/docCenterProcess', '/协同办公/文档管理/文档中心', 'mainActivity', null, null, null, '0', null, '21', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('USER-DOC-02', 'RL-USER', '/SA/doc/docSearch/docSearchProcess', '/协同办公/文档管理/文档检索', 'mainActivity', null, null, null, '0', null, '22', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('USER-OPM-01', 'RL-USER', '/SA/OPM/agent/agentProcess', '/组织权限/代理设置', 'mainActivity', null, null, null, '0', null, '11', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('USER-OPM-02', 'RL-USER', '/SA/OPM/customGroup/customGroupProcess', '/组织权限/设置个人常用组', 'privateGroup', null, null, null, '0', null, '12', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('USER-TASK-01', 'RL-USER', '/SA/task/taskCenter/taskCenterProcess', '/协同办公/任务管理/任务中心', 'mainActivity', null, null, null, '0', null, '1', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('USER-TASK-02', 'RL-USER', '/SA/task/taskView/taskViewProcess', '/协同办公/任务管理/待办和提交', 'mainActivity', null, null, null, '0', null, '2', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('USER-WORK-05', 'RL-USER', '/SA/task/workRecord/workRecordProcess', '/协同办公/任务管理/工作记录', 'mainActivity', null, null, null, '0', null, '35', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('USER-WORK-06', 'RL-USER', '/SA/task/workRecord/workRecordProcess', '/协同办公/任务管理/工作记录', 'useActivity', null, null, null, '0', null, '36', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('USER-WORK-09', 'RL-USER', '/SA/task/workTask/workTaskProcess', '/协同办公/任务管理/工作任务', 'mainActivity', null, null, null, '0', null, '39', '1', '0');
INSERT INTO `sa_oppermission` VALUES ('USER-WORK-10', 'RL-USER', '/SA/task/workTask/workTaskProcess', '/协同办公/任务管理/工作任务', 'useActivity', null, null, null, '0', null, '40', '1', '0');

-- ----------------------------
-- Table structure for sa_opperson
-- ----------------------------
DROP TABLE IF EXISTS `sa_opperson`;
CREATE TABLE `sa_opperson` (
  `sID` varchar(64) NOT NULL,
  `sName` varchar(64) NOT NULL,
  `sCode` varchar(64) NOT NULL,
  `sIDCard` varchar(36) DEFAULT NULL,
  `sNumb` int(11) NOT NULL,
  `sLoginName` varchar(64) DEFAULT NULL,
  `sPassword` varchar(64) DEFAULT NULL,
  `sPasswordTimeLimit` int(11) DEFAULT NULL,
  `sPasswordModifyTime` datetime DEFAULT NULL,
  `sMainOrgID` varchar(128) NOT NULL,
  `sSafeLevelID` varchar(36) DEFAULT NULL,
  `sSequence` int(36) DEFAULT NULL,
  `sValidState` int(11) DEFAULT NULL,
  `sDescription` varchar(2048) DEFAULT NULL,
  `sSex` varchar(8) DEFAULT NULL,
  `sBirthday` datetime DEFAULT NULL,
  `sJoinDate` datetime DEFAULT NULL,
  `sHomePlace` varchar(64) DEFAULT NULL,
  `sDegree` varchar(16) DEFAULT NULL,
  `sGraduateSchool` varchar(128) DEFAULT NULL,
  `sSpeciality` varchar(128) DEFAULT NULL,
  `sSchoolLength` varchar(16) DEFAULT NULL,
  `sTitle` varchar(64) DEFAULT NULL,
  `sMarriage` varchar(16) DEFAULT NULL,
  `sCardNO` varchar(36) DEFAULT NULL,
  `sCardKind` varchar(64) DEFAULT NULL,
  `sFamilyAddress` varchar(255) DEFAULT NULL,
  `sZip` varchar(16) DEFAULT NULL,
  `sMsn` varchar(64) DEFAULT NULL,
  `sQQ` varchar(36) DEFAULT NULL,
  `sMail` varchar(64) DEFAULT NULL,
  `sMobilePhone` varchar(36) DEFAULT NULL,
  `sFamilyPhone` varchar(36) DEFAULT NULL,
  `sOfficePhone` varchar(36) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `sPhoto` varchar(500) DEFAULT NULL,
  `sPhotoLastModified` datetime DEFAULT NULL,
  `sCountry` varchar(64) DEFAULT NULL,
  `sProvince` varchar(64) DEFAULT NULL,
  `sCity` varchar(64) DEFAULT NULL,
  `SPOSITIONS` varchar(64) DEFAULT NULL,
  `SSCHOOL` varchar(64) DEFAULT NULL,
  `SSTUDY` varchar(64) DEFAULT NULL,
  `sEnglishName` varchar(128) DEFAULT NULL,
  `sFunRole` int(1) DEFAULT '3' COMMENT '1.公司领导；2.部门主管；3.普通员工',
  PRIMARY KEY (`sID`),
  UNIQUE KEY `IDX_OPPERSON_SCODE` (`sCode`),
  KEY `IDX_OPPERSON_VALID` (`sValidState`),
  KEY `IDX_OPPERSON_LN_C_VS` (`sLoginName`,`sCode`,`sValidState`),
  KEY `IDX_OPPERSON_ORG` (`sMainOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_opperson
-- ----------------------------
INSERT INTO `sa_opperson` VALUES ('C7A25C2B69F0000182551A01134B1A79', '17602112403', '17602112403', null, '1862628633', '17602112403', ':01a96455b54c2d51af15a94e54b19777', '90', '2017-08-07 22:24:21', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '17602112403', null, null, null, null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `sa_opperson` VALUES ('C7A4B87BDEC00001178C15F0390019E3', 'LiuYong', '13870369441', null, '160705248', '13870369441', ':def12d5420e5bfcd26bc2a99fdd8492e', '90', '2017-08-15 14:24:09', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '13870369441', null, null, null, null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `sa_opperson` VALUES ('C7A4D059CF800001DB8DD930181624D0', '123', '13818345236', null, '1510028297', '13818345236', ':def12d5420e5bfcd26bc2a99fdd8492e', '90', '2017-08-15 13:22:36', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '13818345236', null, null, null, null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `sa_opperson` VALUES ('C7A4D2FB3C30000121644D7345401FE4', 'LY', '13870369440', null, '2074555558', '13870369440', ':def12d5420e5bfcd26bc2a99fdd8492e', '90', '2017-08-15 14:08:35', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '13870369440', null, null, null, null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `sa_opperson` VALUES ('C7A64882F3400001AB6B9D901488CAA0', '13818345237', '13818345237', null, '800316525', '13818345237', ':def12d5420e5bfcd26bc2a99fdd8492e', '90', '2017-08-20 02:55:05', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '13818345237', null, null, null, null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `sa_opperson` VALUES ('C7ABD43A4DB000014858E360131019E6', '管理员', '4200', null, '1041336846', '4200', ':e0d34b5ab5e5f0831ac99a9be6072f8e', '90', '2017-09-07 15:33:58', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '4200', null, null, null, null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `sa_opperson` VALUES ('C7ABD44569C00001429D9F7D148738A0', '苏焕兴', '4659', null, '1672998110', '4659', ':e0d34b5ab5e5f0831ac99a9be6072f8e', '90', '2017-09-07 15:34:44', 'C72954C0F44000019B1F1BB01CBA15F8', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '4659', null, null, null, null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `sa_opperson` VALUES ('PSN01', 'system', 'SYSTEM', null, '2061217274', 'SYSTEM', ':e0d34b5ab5e5f0831ac99a9be6072f8e', null, null, 'ORG01', null, '1', '1', null, '男', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '', '2017-09-06 14:25:32', null, null, null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for sa_oprole
-- ----------------------------
DROP TABLE IF EXISTS `sa_oprole`;
CREATE TABLE `sa_oprole` (
  `sID` varchar(32) NOT NULL,
  `sName` varchar(255) DEFAULT NULL,
  `sCode` varchar(32) DEFAULT NULL,
  `sCatalog` varchar(128) DEFAULT NULL,
  `sRoleKind` varchar(32) DEFAULT NULL,
  `sParentRolesNames` varchar(512) DEFAULT NULL,
  `sDescription` varchar(1024) DEFAULT NULL,
  `sSequence` int(11) DEFAULT NULL,
  `sValidState` int(11) DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_OPROLE_CODE` (`sCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_oprole
-- ----------------------------
INSERT INTO `sa_oprole` VALUES ('RL-SYSTEM', '系统管理员', 'system', '管理员', 'fun', null, null, '0', '1', '0');
INSERT INTO `sa_oprole` VALUES ('RL-SYSTEM-GRADE', '分级管理员', 'system-grade', '管理员', 'fun', null, null, '0', '1', '0');
INSERT INTO `sa_oprole` VALUES ('RL-USER', '普通用户', 'user', '普通用户', 'fun', null, null, '0', '1', '0');
INSERT INTO `sa_oprole` VALUES ('RL03-demo', '演示', 'demo', '演示', 'fun', null, null, '0', '1', '0');
INSERT INTO `sa_oprole` VALUES ('RL_OA', 'OA普通用户', 'OAUser', '普通用户', 'fun', null, null, '0', '1', '0');
INSERT INTO `sa_oprole` VALUES ('RL_OA_CHAIRMAN', '董事长', 'OAChairman', '普通用户', 'fun', null, null, '0', '1', '0');
INSERT INTO `sa_oprole` VALUES ('RL_OA_DEPTMAN', '部门经理', 'OADeptManager', '普通用户', 'fun', null, null, '0', '1', '0');
INSERT INTO `sa_oprole` VALUES ('RL_OA_MANAGER', '总经理', 'OAManager', '普通用户', 'fun', null, null, '0', '1', '0');
INSERT INTO `sa_oprole` VALUES ('RL_OA_OFFICE', '办公室', 'OAOffice', '普通用户', 'fun', null, null, '0', '1', '0');

-- ----------------------------
-- Table structure for sa_oprolemanagement
-- ----------------------------
DROP TABLE IF EXISTS `sa_oprolemanagement`;
CREATE TABLE `sa_oprolemanagement` (
  `sID` varchar(32) NOT NULL,
  `sOrgID` varchar(65) NOT NULL,
  `sOrgName` varchar(255) DEFAULT NULL,
  `sOrgFID` varchar(255) NOT NULL,
  `sOrgFName` varchar(255) DEFAULT NULL,
  `sRoleID` varchar(32) NOT NULL,
  `sCreatorFID` varchar(2048) DEFAULT NULL,
  `sCreatorFName` varchar(2048) DEFAULT NULL,
  `sCreateTime` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_OPRMNAGE_ORGID` (`sOrgID`),
  KEY `IDX_OPRMNAGE_ORGFID` (`sOrgFID`),
  KEY `IDX_OPRMNAGE_ORGFNAME` (`sOrgFName`),
  KEY `IDX_OPRMNAGE_ROLEID` (`sRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_oprolemanagement
-- ----------------------------

-- ----------------------------
-- Table structure for sa_portal2profilemanager
-- ----------------------------
DROP TABLE IF EXISTS `sa_portal2profilemanager`;
CREATE TABLE `sa_portal2profilemanager` (
  `sID` varchar(100) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `sThemeID` varchar(100) DEFAULT NULL,
  `sOrgID` varchar(100) DEFAULT NULL,
  `sPublishType` varchar(100) DEFAULT NULL,
  `sThemeActivity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_portal2profilemanager
-- ----------------------------
INSERT INTO `sa_portal2profilemanager` VALUES ('B21085E329994C14A3A69C8EB21E9B25', '0', 'C55DF629BCC00001742C17606A601CC9', 'ORG01', null, null);

-- ----------------------------
-- Table structure for sa_portal2profiles
-- ----------------------------
DROP TABLE IF EXISTS `sa_portal2profiles`;
CREATE TABLE `sa_portal2profiles` (
  `sID` varchar(100) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `sPersonID` varchar(100) DEFAULT NULL,
  `sFunctree` text,
  `sPortal` text,
  `sOther` text,
  `sPublishType` varchar(100) DEFAULT NULL,
  `sThemeName` varchar(100) DEFAULT NULL,
  `sThemeActivity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_portal2profiles
-- ----------------------------
INSERT INTO `sa_portal2profiles` VALUES ('C55DF629BCC00001742C17606A601CC9', '0', 'PSN01', '{\"shortcut\":[\"EF653FB494495E68E7054A9BD7D53D56\",\"65B47C24FF1EDA1F6B57B84AB8E0B14F\"]}', '{\"pages\":[{\"widgets\":[{\"dock\":0,\"widgetId\":\"B01E9ED9B06E6BD6AC981D25818FBB23\",\"position\":3},{\"dock\":1,\"widgetId\":\"FD9AA20E2F900D1A46B7EC61A544D3AC\",\"position\":0}],\"layout\":\"l1\",\"type\":\"widget\",\"title\":\"个人信息\",\"enable\":true}]}', '{\"quick-func-list-opened\":true,\"opened-func-list-opened\":false,\"func-map-opened\":true}', 'system', '默认布局', 'activity');

-- ----------------------------
-- Table structure for sa_portalprofiles
-- ----------------------------
DROP TABLE IF EXISTS `sa_portalprofiles`;
CREATE TABLE `sa_portalprofiles` (
  `sID` varchar(100) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `sName` varchar(100) DEFAULT NULL,
  `sPersonID` varchar(100) DEFAULT NULL,
  `sValue` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_portalprofiles
-- ----------------------------

-- ----------------------------
-- Table structure for sa_processcontrol
-- ----------------------------
DROP TABLE IF EXISTS `sa_processcontrol`;
CREATE TABLE `sa_processcontrol` (
  `sID` varchar(32) NOT NULL,
  `sOperatorID` varchar(32) DEFAULT NULL,
  `sProcess` varchar(127) DEFAULT NULL,
  `sProcessTemplateID2` varchar(32) DEFAULT NULL,
  `sActivity` varchar(32) DEFAULT NULL,
  `sAction` varchar(32) DEFAULT NULL,
  `sKind` varchar(16) DEFAULT NULL,
  `sContent` longtext,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_PC_INDEX` (`sProcess`,`sActivity`,`sOperatorID`,`sAction`,`sProcessTemplateID2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_processcontrol
-- ----------------------------

-- ----------------------------
-- Table structure for sa_processtemplate
-- ----------------------------
DROP TABLE IF EXISTS `sa_processtemplate`;
CREATE TABLE `sa_processtemplate` (
  `sID` varchar(32) NOT NULL,
  `sTemplateID` varchar(32) DEFAULT NULL,
  `sName` varchar(32) DEFAULT NULL,
  `sKindID` varchar(32) DEFAULT NULL,
  `sTypeID` varchar(32) DEFAULT NULL,
  `sScopeID` varchar(32) DEFAULT NULL,
  `sProcess` varchar(255) DEFAULT NULL,
  `sProcessName` varchar(128) DEFAULT NULL,
  `sActivity` varchar(128) DEFAULT NULL,
  `sActivityName` varchar(128) DEFAULT NULL,
  `sCreatorFID` varchar(1024) DEFAULT NULL,
  `sCreatorFName` varchar(1024) DEFAULT NULL,
  `sCreatorName` varchar(128) DEFAULT NULL,
  `sCreatorID` varchar(32) DEFAULT NULL,
  `sContent` text,
  `sContent2` text,
  `sCreateTime` datetime DEFAULT NULL,
  `sValidState` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_SA_PT_ALL` (`sTypeID`,`sKindID`,`sName`,`sProcessName`),
  KEY `IDX_SA_PT_PROCESS` (`sProcess`),
  KEY `IDX_SA_PT_CREATETIME` (`sCreateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_processtemplate
-- ----------------------------

-- ----------------------------
-- Table structure for sa_quickstart
-- ----------------------------
DROP TABLE IF EXISTS `sa_quickstart`;
CREATE TABLE `sa_quickstart` (
  `sID` varchar(32) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `sLabel` varchar(1024) DEFAULT NULL,
  `sIcon` varchar(1024) DEFAULT NULL,
  `sURL` varchar(1024) DEFAULT NULL,
  `sProcess` varchar(1024) DEFAULT NULL,
  `sActivity` varchar(1024) DEFAULT NULL,
  `sPersonID` varchar(32) DEFAULT NULL,
  `sSequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_quickstart
-- ----------------------------

-- ----------------------------
-- Table structure for sa_remind
-- ----------------------------
DROP TABLE IF EXISTS `sa_remind`;
CREATE TABLE `sa_remind` (
  `sID` varchar(50) NOT NULL,
  `sName` varchar(200) NOT NULL,
  `sRemindStyle` varchar(50) NOT NULL,
  `sRemindStyleName` varchar(50) DEFAULT NULL,
  `sTimes` int(11) DEFAULT NULL,
  `sActualStartTime` datetime NOT NULL,
  `sActualFinishTime` datetime DEFAULT NULL,
  `sLastTime` datetime DEFAULT NULL,
  `sIntervalTime` datetime DEFAULT NULL,
  `sProcess` varchar(1024) DEFAULT NULL,
  `sActivity` varchar(1024) DEFAULT NULL,
  `sAction` varchar(100) DEFAULT NULL,
  `sStatus` varchar(30) DEFAULT NULL,
  `sCreatorID` varchar(50) NOT NULL,
  `sCreatorName` varchar(100) NOT NULL,
  `sRemark` varchar(500) DEFAULT NULL,
  `sReturnable` varchar(50) DEFAULT NULL,
  `sReturnPattern` varchar(500) DEFAULT NULL,
  `sActionParam` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `sCondition` varchar(500) DEFAULT NULL,
  `sIntervalDay` int(11) DEFAULT NULL,
  `sIntervalHour` int(11) DEFAULT NULL,
  `sIntervalMin` int(11) DEFAULT NULL,
  `sType` int(11) DEFAULT NULL,
  `sDataModel` varchar(50) DEFAULT NULL,
  `sContent` longtext,
  `sReminder` longtext,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_remind
-- ----------------------------

-- ----------------------------
-- Table structure for sa_remindactionparameter
-- ----------------------------
DROP TABLE IF EXISTS `sa_remindactionparameter`;
CREATE TABLE `sa_remindactionparameter` (
  `sID` varchar(50) NOT NULL,
  `sRemindID` varchar(50) NOT NULL,
  `sName` varchar(50) NOT NULL,
  `sDataType` varchar(50) DEFAULT NULL,
  `sValue` varchar(100) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_remindactionparameter
-- ----------------------------

-- ----------------------------
-- Table structure for sa_remindconfig
-- ----------------------------
DROP TABLE IF EXISTS `sa_remindconfig`;
CREATE TABLE `sa_remindconfig` (
  `sID` varchar(50) NOT NULL,
  `sOverdueEnable` varchar(10) DEFAULT NULL,
  `sPersonID` varchar(50) NOT NULL,
  `sIntervalMinute` int(11) DEFAULT NULL,
  `sEnable` varchar(10) DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_remindconfig
-- ----------------------------

-- ----------------------------
-- Table structure for sa_reminder
-- ----------------------------
DROP TABLE IF EXISTS `sa_reminder`;
CREATE TABLE `sa_reminder` (
  `sRemindID` varchar(50) NOT NULL,
  `sPersonID` varchar(100) NOT NULL,
  `sPersonName` varchar(50) NOT NULL,
  `sID` varchar(50) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_reminder
-- ----------------------------

-- ----------------------------
-- Table structure for sa_resourcecontrol
-- ----------------------------
DROP TABLE IF EXISTS `sa_resourcecontrol`;
CREATE TABLE `sa_resourcecontrol` (
  `sID` varchar(32) NOT NULL,
  `sName` varchar(128) DEFAULT NULL,
  `sDescription` text,
  `sOrgID` varchar(65) NOT NULL,
  `sOrgName` varchar(128) DEFAULT NULL,
  `sOrgFID` varchar(255) NOT NULL,
  `sOrgFName` varchar(1024) DEFAULT NULL,
  `sCreatorID` varchar(65) NOT NULL,
  `sCreatorName` varchar(128) DEFAULT NULL,
  `sCreatorFID` varchar(255) NOT NULL,
  `sCreatorFName` varchar(1024) DEFAULT NULL,
  `sCreateTime` datetime DEFAULT NULL,
  `sResourceID` varchar(255) NOT NULL,
  `sTypeID` varchar(128) DEFAULT NULL,
  `sTypeName` varchar(128) DEFAULT NULL,
  `sProcess` varchar(255) DEFAULT NULL,
  `sProcessName` varchar(128) DEFAULT NULL,
  `sActivity` varchar(128) DEFAULT NULL,
  `sActivityName` varchar(128) DEFAULT NULL,
  `sAction` varchar(128) DEFAULT NULL,
  `sActionName` varchar(128) DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_RC_ORGFID` (`sOrgFID`),
  KEY `IDX_RC_ORGID` (`sOrgID`),
  KEY `IDX_RC_CID` (`sCreatorID`),
  KEY `IDX_RC_CFID` (`sCreatorFID`),
  KEY `IDX_RC_CTIME` (`sCreateTime`),
  KEY `IDX_RC_RID` (`sResourceID`),
  KEY `IDX_RC_P` (`sProcess`),
  KEY `IDX_RC_AY` (`sActivity`),
  KEY `IDX_RC_AN` (`sAction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_resourcecontrol
-- ----------------------------

-- ----------------------------
-- Table structure for sa_runtime
-- ----------------------------
DROP TABLE IF EXISTS `sa_runtime`;
CREATE TABLE `sa_runtime` (
  `sID` varchar(64) NOT NULL,
  `sString` varchar(128) DEFAULT NULL,
  `sString2` varchar(128) DEFAULT NULL,
  `sString3` varchar(128) DEFAULT NULL,
  `sInteger` int(11) DEFAULT NULL,
  `sInteger2` int(11) DEFAULT NULL,
  `sInteger3` int(11) DEFAULT NULL,
  `fNumeric` decimal(18,4) DEFAULT NULL,
  `fNumeric2` decimal(18,4) DEFAULT NULL,
  `fNumeric3` decimal(18,4) DEFAULT NULL,
  `fDatetime` timestamp NULL DEFAULT NULL,
  `fDatetime2` timestamp NULL DEFAULT NULL,
  `fDatetime3` timestamp NULL DEFAULT NULL,
  `sData` longtext,
  `sBData` longblob,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_runtime
-- ----------------------------

-- ----------------------------
-- Table structure for sa_shorturl
-- ----------------------------
DROP TABLE IF EXISTS `sa_shorturl`;
CREATE TABLE `sa_shorturl` (
  `sID` varchar(128) NOT NULL,
  `sLongURL` varchar(1024) DEFAULT NULL,
  `sCreateTime` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_shorturl
-- ----------------------------

-- ----------------------------
-- Table structure for sa_social
-- ----------------------------
DROP TABLE IF EXISTS `sa_social`;
CREATE TABLE `sa_social` (
  `sID` varchar(32) NOT NULL,
  `sName` varchar(255) DEFAULT NULL,
  `sTypeID` varchar(32) DEFAULT NULL,
  `sTypeName` varchar(64) DEFAULT NULL,
  `sProcess` varchar(1024) DEFAULT NULL,
  `sActivity` varchar(128) DEFAULT NULL,
  `sURL` text,
  `sData1` varchar(128) DEFAULT NULL,
  `sData2` varchar(128) DEFAULT NULL,
  `sData3` varchar(128) DEFAULT NULL,
  `sData4` varchar(128) DEFAULT NULL,
  `sCreatorID` varchar(32) DEFAULT NULL,
  `sCreatorName` varchar(128) DEFAULT NULL,
  `sCreatorFID` varchar(1024) DEFAULT NULL,
  `sCreatorFName` varchar(1024) DEFAULT NULL,
  `sPersonID` varchar(32) DEFAULT NULL,
  `sPersonName` varchar(128) DEFAULT NULL,
  `sOrgID` varchar(65) DEFAULT NULL,
  `sOrgName` varchar(128) DEFAULT NULL,
  `sOrgFID` varchar(1024) DEFAULT NULL,
  `sOrgFName` varchar(1024) DEFAULT NULL,
  `sValidState` int(11) DEFAULT NULL,
  `sCreateTime` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `sESField01` varchar(128) DEFAULT NULL,
  `sESField02` varchar(128) DEFAULT NULL,
  `sESField03` varchar(128) DEFAULT NULL,
  `sESField04` varchar(128) DEFAULT NULL,
  `sESField05` varchar(128) DEFAULT NULL,
  `sESField06` varchar(128) DEFAULT NULL,
  `sESField07` varchar(128) DEFAULT NULL,
  `sESField08` varchar(128) DEFAULT NULL,
  `sENField11` decimal(10,0) DEFAULT NULL,
  `sENField12` decimal(10,0) DEFAULT NULL,
  `sENField13` decimal(10,0) DEFAULT NULL,
  `sENField14` decimal(10,0) DEFAULT NULL,
  `sEDField21` datetime DEFAULT NULL,
  `sEDField22` datetime DEFAULT NULL,
  `sEDField23` datetime DEFAULT NULL,
  `sEDField24` datetime DEFAULT NULL,
  `sETField31` text,
  `sETField32` text,
  `sETField33` text,
  `sETField34` text,
  `sEIField41` int(11) DEFAULT NULL,
  `sEIField42` int(11) DEFAULT NULL,
  `sEIField43` int(11) DEFAULT NULL,
  `sEIField44` int(11) DEFAULT NULL,
  `sEBField51` longblob,
  `sEBField52` longblob,
  `sEbField53` longblob,
  `sEBField54` longblob,
  `sGroupID` varchar(32) DEFAULT NULL,
  `sGroupName` varchar(64) DEFAULT NULL,
  `sMessageNumber` int(11) DEFAULT NULL,
  `sActive` int(11) DEFAULT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_SOCIAL_DATA` (`sData1`),
  KEY `IDX_SOCIAL_NAME` (`sName`),
  KEY `IDX_SOCIAL_CREATETIME` (`sCreateTime`),
  KEY `IDX_SOCIAL_TOD` (`sTypeID`,`sPersonID`,`sData1`),
  KEY `IDX_SOCIAL_TOC` (`sTypeID`,`sPersonID`,`sCreateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_social
-- ----------------------------
INSERT INTO `sa_social` VALUES ('065D751AB0494A7FA9A1B893D54310FA', '太原，09-18至09-24', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '2113E4B1395A496690397936EF52AA6F', null, null, null, '1BADD5EF1B18458E8F3', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', '1BADD5EF1B18458E8F3', '费都', '1BADD5EF1B18458E8F3@73483702DFCD48E98E1', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', '1', '2014-09-18 09:13:50', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '3', '0');
INSERT INTO `sa_social` VALUES ('087B33D374C54CBC84624147BCA8E1FE', '李云委托给何婧铱', 'Focus', '关注', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', 'CAC0B20BAA664BDD8B963A5E40F9BA29', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-17 17:20:02', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '1');
INSERT INTO `sa_social` VALUES ('1981309CBAB5454981145C8331F9D7BE', '李云委托给何婧铱', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', 'CAC0B20BAA664BDD8B963A5E40F9BA29', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-17 17:19:52', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '1', '0');
INSERT INTO `sa_social` VALUES ('27D0B8AB27F3487C96C90B351F34B944', '李云委托给宋武乔', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', 'ED95CDEC299145DE9A87D76455E3A5B7', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-17 17:23:24', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '3', '0');
INSERT INTO `sa_social` VALUES ('304288BA1F2C41A0A1C9CEDDFCAF134D', '费都委托给王巧燕', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', '64517552D47B4D06B0FC6EC6D8A20750', null, null, null, '1BADD5EF1B18458E8F3', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', '1BADD5EF1B18458E8F3', '费都', '1BADD5EF1B18458E8F3@73483702DFCD48E98E1', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', '1', '2014-09-18 09:09:34', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '5', '0');
INSERT INTO `sa_social` VALUES ('41D973EB6BD8423DB25D9216F67B3A44', '北京，09-18至09-20', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '355FB153AFFE459F8574C2428EB2F8F3', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-17 17:29:46', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '1', '0');
INSERT INTO `sa_social` VALUES ('54C1AB19F59E4570A0CCC140A2B53699', '黄河电站，09-18至09-25', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '319F08561AB54E528981B095A19FBD72', null, null, null, '1BADD5EF1B18458E8F3', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', '1BADD5EF1B18458E8F3', '费都', '1BADD5EF1B18458E8F3@73483702DFCD48E98E1', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', '1', '2014-09-18 09:14:49', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '6', '0');
INSERT INTO `sa_social` VALUES ('5B43CE0326194820AF161840988AD9BC', '李云委托给何婧铱', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', '769751C8E7794198A975BF972CE38634', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-17 17:20:59', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '12', '0');
INSERT INTO `sa_social` VALUES ('7FF2F6013FF3413E8B329C3D10E7FD7F', '天津，09-18至09-24', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '5031E19BF5D94564B728D5A1FCA1F326', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-17 17:30:36', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '5', '0');
INSERT INTO `sa_social` VALUES ('821957B485AB48C7B13D808E28546B1D', '冯霖委托给李云', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', 'A52D56EEDE5241F596271EF11A15FDC3', null, null, null, '121E7ECE93084C4B9AF', '冯霖', '/F92C257AEA094865A96.ogn/71C4DBECB50D429E879.dpt/E58A8B0F375547CAA1A.pos/121E7ECE93084C4B9AF@E58A8B0F375547CAA1A.psm', '/阳光集团（演示数据）/财务部/出纳/冯霖', '121E7ECE93084C4B9AF', '冯霖', '121E7ECE93084C4B9AF@E58A8B0F375547CAA1A', '冯霖', '/F92C257AEA094865A96.ogn/71C4DBECB50D429E879.dpt/E58A8B0F375547CAA1A.pos/121E7ECE93084C4B9AF@E58A8B0F375547CAA1A.psm', '/阳光集团（演示数据）/财务部/出纳/冯霖', '1', '2014-09-17 17:52:12', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '6', '0');
INSERT INTO `sa_social` VALUES ('B3C03ADE80F9457D967B17DCAAA76603', '李云委托给费都', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', '43848BB8FCD1474CB85B52561B5FB461', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-17 17:18:57', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '1', '0');
INSERT INTO `sa_social` VALUES ('BECCBC1C60534F78AA1280BE4AC5640A', '南京，09-18至09-21', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', 'C2384E80464B475F9862F65E887C958A', null, null, null, '1BADD5EF1B18458E8F3', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', '1BADD5EF1B18458E8F3', '费都', '1BADD5EF1B18458E8F3@73483702DFCD48E98E1', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', '1', '2014-09-18 09:12:27', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '1', '0');
INSERT INTO `sa_social` VALUES ('C13CED3ADC384228BC341815ED2184D0', '李云委托给王巧燕', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', '5CB6C0274C2048B8B9E30C8605D6236D', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-17 17:17:20', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '3', '0');
INSERT INTO `sa_social` VALUES ('C64EB942CE80000141371D001CA0D510', '李云委托给王巧燕', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', '5CB6C0274C2048B8B9E30C8605D6236D', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '60A6A1F656EA497399B', '王巧燕', '60A6A1F656EA497399B@BF19DCBBE86F4088A69', '王巧燕', '/F92C257AEA094865A96.ogn/760984EF931942799BE.dpt/BF19DCBBE86F4088A69.pos/60A6A1F656EA497399B@BF19DCBBE86F4088A69.psm', '/阳光集团（演示数据）/综合办公室/文员/王巧燕', '1', '2014-09-17 17:16:59', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '负责人', '5', '0');
INSERT INTO `sa_social` VALUES ('C64EB94672B0000127A51C10B3E2C4A0', '李云委托给王巧燕', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', '5CB6C0274C2048B8B9E30C8605D6236D', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '03B5F725A1CA4C0DB64', '郑迪文', '03B5F725A1CA4C0DB64@046DFE4BD7624367BFF', '郑迪文', '/F92C257AEA094865A96.ogn/4830B1B9A8204D23A7D.ogn/C5974B908942488C991.dpt/046DFE4BD7624367BFF.pos/03B5F725A1CA4C0DB64@046DFE4BD7624367BFF.psm', '/阳光集团（演示数据）/广东分公司/销售部/销售代表/郑迪文', '1', '2014-09-17 17:17:14', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '参与人', '6', '0');
INSERT INTO `sa_social` VALUES ('C64EB95D93600001A31C2A5E13B0134D', '李云委托给费都', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', '43848BB8FCD1474CB85B52561B5FB461', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1BADD5EF1B18458E8F3', '费都', '1BADD5EF1B18458E8F3@73483702DFCD48E98E1', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', '1', '2014-09-17 17:18:49', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '负责人', '2', '0');
INSERT INTO `sa_social` VALUES ('C64EB95F0B600001FB601E6030021C71', '李云委托给费都', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', '43848BB8FCD1474CB85B52561B5FB461', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '60A6A1F656EA497399B', '王巧燕', '60A6A1F656EA497399B@BF19DCBBE86F4088A69', '王巧燕', '/F92C257AEA094865A96.ogn/760984EF931942799BE.dpt/BF19DCBBE86F4088A69.pos/60A6A1F656EA497399B@BF19DCBBE86F4088A69.psm', '/阳光集团（演示数据）/综合办公室/文员/王巧燕', '1', '2014-09-17 17:18:55', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '参与人', '3', '0');
INSERT INTO `sa_social` VALUES ('C64EB96B513000018FC817406BE01978', '李云委托给何婧铱', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', 'CAC0B20BAA664BDD8B963A5E40F9BA29', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '3B0DBE41B6D0433ABC9', '何婧铱', '3B0DBE41B6D0433ABC9@EF55626CA2364362AAD', '何婧铱', '/9EDE6548885F45ECB57.ogn/86F4096103B548DE95F.dpt/EF55626CA2364362AAD.pos/3B0DBE41B6D0433ABC9@EF55626CA2364362AAD.psm', '/中共阳光集团党委（演示数据）/第二党小组/组员/何婧铱', '1', '2014-09-17 17:19:45', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '负责人', '3', '0');
INSERT INTO `sa_social` VALUES ('C64EB96C86C000014DAE1DC94C6D58F0', '李云委托给何婧铱', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', 'CAC0B20BAA664BDD8B963A5E40F9BA29', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '60A6A1F656EA497399B', '王巧燕', '60A6A1F656EA497399B@BF19DCBBE86F4088A69', '王巧燕', '/F92C257AEA094865A96.ogn/760984EF931942799BE.dpt/BF19DCBBE86F4088A69.pos/60A6A1F656EA497399B@BF19DCBBE86F4088A69.psm', '/阳光集团（演示数据）/综合办公室/文员/王巧燕', '1', '2014-09-17 17:19:50', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '参与人', '3', '0');
INSERT INTO `sa_social` VALUES ('C64EB97B6A200001F259C60013001F5C', '李云委托给何婧铱', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', '769751C8E7794198A975BF972CE38634', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '3B0DBE41B6D0433ABC9', '何婧铱', '3B0DBE41B6D0433ABC9@EF55626CA2364362AAD', '何婧铱', '/9EDE6548885F45ECB57.ogn/86F4096103B548DE95F.dpt/EF55626CA2364362AAD.pos/3B0DBE41B6D0433ABC9@EF55626CA2364362AAD.psm', '/中共阳光集团党委（演示数据）/第二党小组/组员/何婧铱', '1', '2014-09-17 17:20:51', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '负责人', '2', '0');
INSERT INTO `sa_social` VALUES ('C64EB97CC42000019BE77B1013201550', '李云委托给何婧铱', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', '769751C8E7794198A975BF972CE38634', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '60A6A1F656EA497399B', '王巧燕', '60A6A1F656EA497399B@BF19DCBBE86F4088A69', '王巧燕', '/F92C257AEA094865A96.ogn/760984EF931942799BE.dpt/BF19DCBBE86F4088A69.pos/60A6A1F656EA497399B@BF19DCBBE86F4088A69.psm', '/阳光集团（演示数据）/综合办公室/文员/王巧燕', '1', '2014-09-17 17:20:56', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '参与人', '2', '0');
INSERT INTO `sa_social` VALUES ('C64EB99D4FB00001F28172701DFAACF0', '李云委托给宋武乔', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', 'ED95CDEC299145DE9A87D76455E3A5B7', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1752AEF56D084A4FA8C', '宋武乔', '1752AEF56D084A4FA8C@44D74816FBDF483D871', '宋武乔', '/F92C257AEA094865A96.ogn/DBAE54DFEB754CEFB0C.dpt/EDFC70021AA34E98A1F.dpt/44D74816FBDF483D871.pos/1752AEF56D084A4FA8C@44D74816FBDF483D871.psm', '/阳光集团（演示数据）/生产部/二组/组员/宋武乔', '1', '2014-09-17 17:23:10', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '负责人', '2', '0');
INSERT INTO `sa_social` VALUES ('C64EB9A046200001C8831C504F90182E', '李云委托给宋武乔', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', 'ED95CDEC299145DE9A87D76455E3A5B7', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1752AEF56D084A4FA8C', '宋武乔', '1752AEF56D084A4FA8C@44D74816FBDF483D871', '宋武乔', '/F92C257AEA094865A96.ogn/DBAE54DFEB754CEFB0C.dpt/EDFC70021AA34E98A1F.dpt/44D74816FBDF483D871.pos/1752AEF56D084A4FA8C@44D74816FBDF483D871.psm', '/阳光集团（演示数据）/生产部/二组/组员/宋武乔', '1', '2014-09-17 17:23:22', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '参与人', '2', '0');
INSERT INTO `sa_social` VALUES ('C64EB9CD35B0000110EB1E08B4702E40', '爬长城', 'RelativeOrg', '相关人', '/OA/personalOffice/process/schedule/scheduleProcess', 'mainActivity', '/OA/personalOffice/process/schedule/mainActivity.a', '7C8735D56EBE4FD58B4DFA45F40AB6B1', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1752AEF56D084A4FA8C', '宋武乔', '1752AEF56D084A4FA8C@44D74816FBDF483D871', '宋武乔', '/F92C257AEA094865A96.ogn/DBAE54DFEB754CEFB0C.dpt/EDFC70021AA34E98A1F.dpt/44D74816FBDF483D871.pos/1752AEF56D084A4FA8C@44D74816FBDF483D871.psm', '/阳光集团（演示数据）/生产部/二组/组员/宋武乔', '1', '2014-09-17 17:26:26', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'E', '与会人', '1', '0');
INSERT INTO `sa_social` VALUES ('C64EB9F69C70000116A518111E801900', '李云', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '355FB153AFFE459F8574C2428EB2F8F3', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1752AEF56D084A4FA8C', '宋武乔', '1752AEF56D084A4FA8C@44D74816FBDF483D871', '宋武乔', '/F92C257AEA094865A96.ogn/DBAE54DFEB754CEFB0C.dpt/EDFC70021AA34E98A1F.dpt/44D74816FBDF483D871.pos/1752AEF56D084A4FA8C@44D74816FBDF483D871.psm', '/阳光集团（演示数据）/生产部/二组/组员/宋武乔', '1', '2014-09-17 17:29:15', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '审批人', '1', '0');
INSERT INTO `sa_social` VALUES ('C64EB9FCD9E0000144AF65CE49B0F370', '李云', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '355FB153AFFE459F8574C2428EB2F8F3', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '60A6A1F656EA497399B', '王巧燕', '60A6A1F656EA497399B@BF19DCBBE86F4088A69', '王巧燕', '/F92C257AEA094865A96.ogn/760984EF931942799BE.dpt/BF19DCBBE86F4088A69.pos/60A6A1F656EA497399B@BF19DCBBE86F4088A69.psm', '/阳光集团（演示数据）/综合办公室/文员/王巧燕', '1', '2014-09-17 17:29:41', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '知会相关人', '4', '0');
INSERT INTO `sa_social` VALUES ('C64EBA0784000001BCF51BBD17206A60', '李云', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '5031E19BF5D94564B728D5A1FCA1F326', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '60A6A1F656EA497399B', '王巧燕', '60A6A1F656EA497399B@BF19DCBBE86F4088A69', '王巧燕', '/F92C257AEA094865A96.ogn/760984EF931942799BE.dpt/BF19DCBBE86F4088A69.pos/60A6A1F656EA497399B@BF19DCBBE86F4088A69.psm', '/阳光集团（演示数据）/综合办公室/文员/王巧燕', '1', '2014-09-17 17:30:25', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '审批人', '5', '0');
INSERT INTO `sa_social` VALUES ('C64EBA09A4000001461695A05EB01E9E', '李云', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '5031E19BF5D94564B728D5A1FCA1F326', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '03B5F725A1CA4C0DB64', '郑迪文', '03B5F725A1CA4C0DB64@046DFE4BD7624367BFF', '郑迪文', '/F92C257AEA094865A96.ogn/4830B1B9A8204D23A7D.ogn/C5974B908942488C991.dpt/046DFE4BD7624367BFF.pos/03B5F725A1CA4C0DB64@046DFE4BD7624367BFF.psm', '/阳光集团（演示数据）/广东分公司/销售部/销售代表/郑迪文', '1', '2014-09-17 17:30:33', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '知会相关人', '6', '0');
INSERT INTO `sa_social` VALUES ('C64EBA09A40000019D9D1BF0E3001637', '李云', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '5031E19BF5D94564B728D5A1FCA1F326', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1DCBCEB96654473DB62', '张梦薇', '1DCBCEB96654473DB62@38467DB9DEE0409E831', '张梦薇', '/F92C257AEA094865A96.ogn/DBAE54DFEB754CEFB0C.dpt/A03944D4257144C6839.dpt/38467DB9DEE0409E831.pos/1DCBCEB96654473DB62@38467DB9DEE0409E831.psm', '/阳光集团（演示数据）/生产部/一组/组员/张梦薇', '1', '2014-09-17 17:30:33', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '知会相关人', '4', '0');
INSERT INTO `sa_social` VALUES ('C64EBA16214000016BD715801EBC6100', '李云', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '1A595721EA3D4AB29698724045BBEDDD', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '03B5F725A1CA4C0DB64', '郑迪文', '03B5F725A1CA4C0DB64@046DFE4BD7624367BFF', '郑迪文', '/F92C257AEA094865A96.ogn/4830B1B9A8204D23A7D.ogn/C5974B908942488C991.dpt/046DFE4BD7624367BFF.pos/03B5F725A1CA4C0DB64@046DFE4BD7624367BFF.psm', '/阳光集团（演示数据）/广东分公司/销售部/销售代表/郑迪文', '1', '2014-09-17 17:31:25', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '审批人', '5', '0');
INSERT INTO `sa_social` VALUES ('C64EBA1832B0000130ECD760635D1696', '李云', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '1A595721EA3D4AB29698724045BBEDDD', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1DCBCEB96654473DB62', '张梦薇', '1DCBCEB96654473DB62@38467DB9DEE0409E831', '张梦薇', '/F92C257AEA094865A96.ogn/DBAE54DFEB754CEFB0C.dpt/A03944D4257144C6839.dpt/38467DB9DEE0409E831.pos/1DCBCEB96654473DB62@38467DB9DEE0409E831.psm', '/阳光集团（演示数据）/生产部/一组/组员/张梦薇', '1', '2014-09-17 17:31:33', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '知会相关人', '3', '0');
INSERT INTO `sa_social` VALUES ('C64EBA1832B00001AA76147C1BB013B6', '李云', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '1A595721EA3D4AB29698724045BBEDDD', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '03B5F725A1CA4C0DB64', '郑迪文', '03B5F725A1CA4C0DB64@046DFE4BD7624367BFF', '郑迪文', '/F92C257AEA094865A96.ogn/4830B1B9A8204D23A7D.ogn/C5974B908942488C991.dpt/046DFE4BD7624367BFF.pos/03B5F725A1CA4C0DB64@046DFE4BD7624367BFF.psm', '/阳光集团（演示数据）/广东分公司/销售部/销售代表/郑迪文', '1', '2014-09-17 17:31:33', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '知会相关人', '6', '0');
INSERT INTO `sa_social` VALUES ('C64EBA245DE00001B54B13A0F4B51C73', '河南，09-17至09-29', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '64E84A6C35DB42D294161CF3EE690933', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1DCBCEB96654473DB62', '张梦薇', '1DCBCEB96654473DB62@38467DB9DEE0409E831', '张梦薇', '/F92C257AEA094865A96.ogn/DBAE54DFEB754CEFB0C.dpt/A03944D4257144C6839.dpt/38467DB9DEE0409E831.pos/1DCBCEB96654473DB62@38467DB9DEE0409E831.psm', '/阳光集团（演示数据）/生产部/一组/组员/张梦薇', '1', '2014-09-17 17:32:23', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '审批人', '3', '0');
INSERT INTO `sa_social` VALUES ('C64EBA2526C00001544C19A816D0138D', '河南，09-17至09-29', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '64E84A6C35DB42D294161CF3EE690933', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '03B5F725A1CA4C0DB64', '郑迪文', '03B5F725A1CA4C0DB64@046DFE4BD7624367BFF', '郑迪文', '/F92C257AEA094865A96.ogn/4830B1B9A8204D23A7D.ogn/C5974B908942488C991.dpt/046DFE4BD7624367BFF.pos/03B5F725A1CA4C0DB64@046DFE4BD7624367BFF.psm', '/阳光集团（演示数据）/广东分公司/销售部/销售代表/郑迪文', '1', '2014-09-17 17:32:26', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '知会相关人', '3', '0');
INSERT INTO `sa_social` VALUES ('C64EBB40164000018EB31C501DC2D340', '冯霖委托给李云', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', 'A52D56EEDE5241F596271EF11A15FDC3', null, null, null, '121E7ECE93084C4B9AF', '冯霖', '/F92C257AEA094865A96.ogn/71C4DBECB50D429E879.dpt/E58A8B0F375547CAA1A.pos/121E7ECE93084C4B9AF@E58A8B0F375547CAA1A.psm', '/阳光集团（演示数据）/财务部/出纳/冯霖', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-17 17:51:45', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '负责人', '5', '0');
INSERT INTO `sa_social` VALUES ('C64EBB451B9000017C7E4B8480B31FD3', '冯霖委托给李云', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', 'A52D56EEDE5241F596271EF11A15FDC3', null, null, null, '121E7ECE93084C4B9AF', '冯霖', '/F92C257AEA094865A96.ogn/71C4DBECB50D429E879.dpt/E58A8B0F375547CAA1A.pos/121E7ECE93084C4B9AF@E58A8B0F375547CAA1A.psm', '/阳光集团（演示数据）/财务部/出纳/冯霖', '03B5F725A1CA4C0DB64', '郑迪文', '03B5F725A1CA4C0DB64@046DFE4BD7624367BFF', '郑迪文', '/F92C257AEA094865A96.ogn/4830B1B9A8204D23A7D.ogn/C5974B908942488C991.dpt/046DFE4BD7624367BFF.pos/03B5F725A1CA4C0DB64@046DFE4BD7624367BFF.psm', '/阳光集团（演示数据）/广东分公司/销售部/销售代表/郑迪文', '1', '2014-09-17 17:52:06', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '参与人', '3', '0');
INSERT INTO `sa_social` VALUES ('C64EBB451BA00001878A1540A3C480A0', '冯霖委托给李云', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', 'A52D56EEDE5241F596271EF11A15FDC3', null, null, null, '121E7ECE93084C4B9AF', '冯霖', '/F92C257AEA094865A96.ogn/71C4DBECB50D429E879.dpt/E58A8B0F375547CAA1A.pos/121E7ECE93084C4B9AF@E58A8B0F375547CAA1A.psm', '/阳光集团（演示数据）/财务部/出纳/冯霖', '1DCBCEB96654473DB62', '张梦薇', '1DCBCEB96654473DB62@38467DB9DEE0409E831', '张梦薇', '/F92C257AEA094865A96.ogn/DBAE54DFEB754CEFB0C.dpt/A03944D4257144C6839.dpt/38467DB9DEE0409E831.pos/1DCBCEB96654473DB62@38467DB9DEE0409E831.psm', '/阳光集团（演示数据）/生产部/一组/组员/张梦薇', '1', '2014-09-17 17:52:06', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '参与人', '5', '0');
INSERT INTO `sa_social` VALUES ('C64EEFB8FD500001F44E11BA2098132A', '费都委托给王巧燕', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', '64517552D47B4D06B0FC6EC6D8A20750', null, null, null, '1BADD5EF1B18458E8F3', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-18 09:08:46', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '参与人', '6', '0');
INSERT INTO `sa_social` VALUES ('C64EEFBD2BB00001794E98282B57186B', '费都委托给王巧燕', 'RelativeOrg', '相关人', '/OA/personalOffice/process/tasksAssigned/tasksAssignedProcess', 'mainActivity', '/OA/personalOffice/process/tasksAssigned/mainActivity.a', '64517552D47B4D06B0FC6EC6D8A20750', null, null, null, '1BADD5EF1B18458E8F3', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', '60A6A1F656EA497399B', '王巧燕', '60A6A1F656EA497399B@BF19DCBBE86F4088A69', '王巧燕', '/F92C257AEA094865A96.ogn/760984EF931942799BE.dpt/BF19DCBBE86F4088A69.pos/60A6A1F656EA497399B@BF19DCBBE86F4088A69.psm', '/阳光集团（演示数据）/综合办公室/文员/王巧燕', '1', '2014-09-18 09:09:03', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '负责人', '3', '0');
INSERT INTO `sa_social` VALUES ('C64EEFEC1A100001BAE0FA41E8803210', '南京，09-18至09-21', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', 'C2384E80464B475F9862F65E887C958A', null, null, null, '1BADD5EF1B18458E8F3', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-18 09:12:16', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '审批人', '4', '0');
INSERT INTO `sa_social` VALUES ('C64EEFEE6E90000174CB80CD1E60189C', '南京，09-18至09-21', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', 'C2384E80464B475F9862F65E887C958A', null, null, null, '1BADD5EF1B18458E8F3', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-18 09:12:25', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '知会相关人', '6', '0');
INSERT INTO `sa_social` VALUES ('C64EF0013ED00001A98614EA1E301357', '费都', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '2113E4B1395A496690397936EF52AA6F', null, null, null, '1BADD5EF1B18458E8F3', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-18 09:13:42', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '审批人', '2', '0');
INSERT INTO `sa_social` VALUES ('C64EF0022B4000016D301EA9D5503F50', '费都', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '2113E4B1395A496690397936EF52AA6F', null, null, null, '1BADD5EF1B18458E8F3', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-18 09:13:46', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '知会相关人', '3', '0');
INSERT INTO `sa_social` VALUES ('C64EF00E8CF00001422115F05A404970', '费都', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '319F08561AB54E528981B095A19FBD72', null, null, null, '1BADD5EF1B18458E8F3', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-18 09:14:37', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'A', '审批人', '4', '0');
INSERT INTO `sa_social` VALUES ('C64EF01126F000019DB81A468037A4E0', '费都', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '319F08561AB54E528981B095A19FBD72', null, null, null, '1BADD5EF1B18458E8F3', '费都', '/F92C257AEA094865A96.ogn/A22B7A6A13114DCD99C.dpt/73483702DFCD48E98E1.pos/1BADD5EF1B18458E8F3@73483702DFCD48E98E1.psm', '/阳光集团（演示数据）/销售部/专员/费都', '60A6A1F656EA497399B', '王巧燕', '60A6A1F656EA497399B@BF19DCBBE86F4088A69', '王巧燕', '/F92C257AEA094865A96.ogn/760984EF931942799BE.dpt/BF19DCBBE86F4088A69.pos/60A6A1F656EA497399B@BF19DCBBE86F4088A69.psm', '/阳光集团（演示数据）/综合办公室/文员/王巧燕', '1', '2014-09-18 09:14:47', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'P', '知会相关人', '3', '0');
INSERT INTO `sa_social` VALUES ('D8805341620143079FAB42F067702413', '河南，09-17至09-29', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '64E84A6C35DB42D294161CF3EE690933', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-17 17:32:30', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '2', '0');
INSERT INTO `sa_social` VALUES ('E7D8AF2D992C4D55BE2125B210050DD8', '河北，09-18至09-27', 'RelativeOrg', '相关人', '/OA/personalOffice/process/evection/evectionProcess', 'mainActivity', '/OA/personalOffice/process/evection/mainActivity.a', '1A595721EA3D4AB29698724045BBEDDD', null, null, null, 'PSN02', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', 'PSN02', '李云', 'PSN02@7096FD2AA306425384C', '李云', '/F92C257AEA094865A96.ogn/4D53667E30F0445DA65.dpt/7096FD2AA306425384C.pos/PSN02@7096FD2AA306425384C.psm', '/阳光集团（演示数据）/采购部/专员/李云', '1', '2014-09-17 17:31:35', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'C', '委托人', '4', '0');

-- ----------------------------
-- Table structure for sa_task
-- ----------------------------
DROP TABLE IF EXISTS `sa_task`;
CREATE TABLE `sa_task` (
  `sID` varchar(32) NOT NULL,
  `sCode` varchar(128) DEFAULT NULL,
  `sParentID` varchar(32) DEFAULT NULL,
  `sName` varchar(255) DEFAULT NULL,
  `sContent` text,
  `sRemark` text,
  `sSummary` text,
  `sFlowID` varchar(32) DEFAULT NULL,
  `sSourceID` varchar(32) DEFAULT NULL,
  `sFrontID` varchar(32) DEFAULT NULL,
  `sExecuteMode2` varchar(256) DEFAULT NULL,
  `sExecuteMode` varchar(32) DEFAULT NULL,
  `sPreemptMode` varchar(32) DEFAULT NULL,
  `sCatalogID` varchar(32) DEFAULT NULL,
  `sKindID` varchar(32) DEFAULT NULL,
  `sTypeID` varchar(32) DEFAULT NULL,
  `sTypeName` varchar(64) DEFAULT NULL,
  `sImportanceID` varchar(32) DEFAULT NULL,
  `sImportanceName` varchar(64) DEFAULT NULL,
  `sEmergencyID` varchar(32) DEFAULT NULL,
  `sEmergencyName` varchar(64) DEFAULT NULL,
  `sProcess` varchar(127) DEFAULT NULL,
  `sActivity` varchar(128) DEFAULT NULL,
  `sCURL` text,
  `sEURL` text,
  `sCreateTime` datetime DEFAULT NULL,
  `sDistributeTime` datetime DEFAULT NULL,
  `sLastModifyTime` datetime DEFAULT NULL,
  `sWarningTime` datetime DEFAULT NULL,
  `sLimitTime` datetime DEFAULT NULL,
  `sExpectStartTime` datetime DEFAULT NULL,
  `sExpectFinishTime` datetime DEFAULT NULL,
  `sActualStartTime` datetime DEFAULT NULL,
  `sActualFinishTime` datetime DEFAULT NULL,
  `sExecuteTime` datetime DEFAULT NULL,
  `sCreatorPersonID` varchar(32) DEFAULT NULL,
  `sCreatorPersonName` varchar(128) DEFAULT NULL,
  `sCreatorPosID` varchar(32) DEFAULT NULL,
  `sCreatorPosName` varchar(128) DEFAULT NULL,
  `sCreatorDeptID` varchar(32) DEFAULT NULL,
  `sCreatorDeptName` varchar(128) DEFAULT NULL,
  `sCreatorOgnID` varchar(32) DEFAULT NULL,
  `sCreatorOgnName` varchar(128) DEFAULT NULL,
  `sCreatorFID` varchar(212) DEFAULT NULL,
  `sCreatorFName` varchar(1024) DEFAULT NULL,
  `sExecutorPersonID` varchar(32) DEFAULT NULL,
  `sExecutorPersonName` varchar(128) DEFAULT NULL,
  `sExecutorPosID` varchar(32) DEFAULT NULL,
  `sExecutorPosName` varchar(128) DEFAULT NULL,
  `sExecutorDeptID` varchar(32) DEFAULT NULL,
  `sExecutorDeptName` varchar(128) DEFAULT NULL,
  `sExecutorOgnID` varchar(32) DEFAULT NULL,
  `sExecutorOgnName` varchar(128) DEFAULT NULL,
  `sExecutorFID` varchar(212) DEFAULT NULL,
  `sExecutorFName` varchar(1024) DEFAULT NULL,
  `sExecutorNames` text,
  `sActivityNames` text,
  `sResponsible` varchar(8) DEFAULT NULL,
  `sCustomerID` varchar(64) DEFAULT NULL,
  `ScustomerCode` varchar(64) DEFAULT NULL,
  `sCustomerName` varchar(128) DEFAULT NULL,
  `sProjectID` varchar(64) DEFAULT NULL,
  `sProjectCode` varchar(64) DEFAULT NULL,
  `sProjectName` varchar(128) DEFAULT NULL,
  `sPlanID` varchar(64) DEFAULT NULL,
  `sPlanCode` varchar(64) DEFAULT NULL,
  `sPlanName` varchar(128) DEFAULT NULL,
  `sData1` varchar(32) DEFAULT NULL,
  `sData2` varchar(32) DEFAULT NULL,
  `sData3` varchar(32) DEFAULT NULL,
  `sData4` varchar(32) DEFAULT NULL,
  `sFake` varchar(8) DEFAULT NULL,
  `sActive` varchar(8) DEFAULT NULL,
  `sStatusID` varchar(32) DEFAULT NULL,
  `sStatusName` varchar(64) DEFAULT NULL,
  `sAIID` varchar(32) DEFAULT NULL,
  `sAIStatusID` varchar(256) DEFAULT NULL,
  `sAIStatusName` varchar(256) DEFAULT NULL,
  `sAIActive` varchar(8) DEFAULT NULL,
  `sWorkTime` int(11) DEFAULT NULL,
  `sVersionNumber` varchar(64) DEFAULT NULL,
  `sSequence` int(11) DEFAULT NULL,
  `sLock` varchar(32) DEFAULT NULL,
  `sHints` text,
  `sShortcut` text,
  `sRemindMode` varchar(32) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `sWithdraw` int(11) DEFAULT NULL,
  `sVariable` text,
  `sProcessName` varchar(128) DEFAULT NULL,
  `sActivityName` varchar(128) DEFAULT NULL,
  `sProcessTemplateID` varchar(32) DEFAULT NULL,
  `sProcessTemplateItemSequence` varchar(128) DEFAULT NULL,
  `sTempPermissionID` varchar(32) DEFAULT NULL,
  `sActivityInTemplate` varchar(128) DEFAULT NULL,
  `sProcessTemplateID2` varchar(32) DEFAULT NULL,
  `sESField01` varchar(1024) DEFAULT NULL,
  `sESField02` varchar(128) DEFAULT NULL,
  `sESField03` varchar(128) DEFAULT NULL,
  `sESField04` varchar(128) DEFAULT NULL,
  `sESField05` varchar(128) DEFAULT NULL,
  `sESField06` varchar(128) DEFAULT NULL,
  `sESField07` varchar(128) DEFAULT NULL,
  `sESField08` varchar(128) DEFAULT NULL,
  `sENField11` decimal(10,0) DEFAULT NULL,
  `sENField12` decimal(10,0) DEFAULT NULL,
  `sENField13` decimal(10,0) DEFAULT NULL,
  `sENField14` decimal(10,0) DEFAULT NULL,
  `sEDField21` datetime DEFAULT NULL,
  `sEDField22` datetime DEFAULT NULL,
  `sEDField23` datetime DEFAULT NULL,
  `sEDField24` datetime DEFAULT NULL,
  `sETField31` text,
  `sETField32` text,
  `sETField33` text,
  `sETField34` text,
  `sEIField41` int(11) DEFAULT NULL,
  `sEIField42` int(11) DEFAULT NULL,
  `sEIField43` int(11) DEFAULT NULL,
  `sEIField44` int(11) DEFAULT NULL,
  `sEBField51` longblob,
  `sEBField52` longblob,
  `sEbField53` longblob,
  `sEBField54` longblob,
  PRIMARY KEY (`sID`),
  KEY `IDX_TASK_SFLOWID` (`sFlowID`),
  KEY `IDX_TASK_CREATETIME` (`sCreateTime`),
  KEY `IDX_TASK_WAIT` (`sExecutorFID`,`sStatusID`),
  KEY `IDX_TASK_SUB` (`sCreatorFID`,`sStatusID`),
  KEY `IDX_TASK_SUB2` (`sCreatorPersonID`,`sStatusID`),
  KEY `IDX_TASK_DATA_P` (`sData1`,`sData2`,`sData3`,`sData4`,`sProcess`),
  KEY `IDX_TASK_PIK` (`sParentID`,`sID`,`sKindID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_task
-- ----------------------------

-- ----------------------------
-- Table structure for sa_taskrelation
-- ----------------------------
DROP TABLE IF EXISTS `sa_taskrelation`;
CREATE TABLE `sa_taskrelation` (
  `sTaskID1` varchar(32) NOT NULL,
  `sTaskID2` varchar(32) NOT NULL,
  `sKind` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`sTaskID1`,`sTaskID2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_taskrelation
-- ----------------------------

-- ----------------------------
-- Table structure for sa_taskrelation_histroy
-- ----------------------------
DROP TABLE IF EXISTS `sa_taskrelation_histroy`;
CREATE TABLE `sa_taskrelation_histroy` (
  `sTaskID1` varchar(32) NOT NULL,
  `sTaskID2` varchar(32) NOT NULL,
  `sKind` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`sTaskID1`,`sTaskID2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_taskrelation_histroy
-- ----------------------------

-- ----------------------------
-- Table structure for sa_taskrelation_sysbak
-- ----------------------------
DROP TABLE IF EXISTS `sa_taskrelation_sysbak`;
CREATE TABLE `sa_taskrelation_sysbak` (
  `sTaskID1` varchar(32) NOT NULL,
  `sTaskID2` varchar(32) NOT NULL,
  `sKind` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`sTaskID1`,`sTaskID2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_taskrelation_sysbak
-- ----------------------------

-- ----------------------------
-- Table structure for sa_tasktype
-- ----------------------------
DROP TABLE IF EXISTS `sa_tasktype`;
CREATE TABLE `sa_tasktype` (
  `sID` varchar(32) NOT NULL,
  `sName` varchar(128) DEFAULT NULL,
  `sConcept` varchar(128) DEFAULT NULL,
  `sNewActivity` varchar(1024) DEFAULT NULL,
  `sExecuteActivity` varchar(1024) DEFAULT NULL,
  `sKind` varchar(32) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `sProcess` varchar(1024) DEFAULT NULL,
  `sActivity` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_tasktype
-- ----------------------------
INSERT INTO `sa_tasktype` VALUES ('FLOWTASK', '工作流任务', null, null, null, null, '0', null, null);
INSERT INTO `sa_tasktype` VALUES ('REMINDTASK', '提醒任务', null, null, null, null, '0', null, null);
INSERT INTO `sa_tasktype` VALUES ('TASK', '普通任务', null, null, null, null, '0', null, null);
INSERT INTO `sa_tasktype` VALUES ('WORKRECORD', '工作记录', null, '/SA/task/workRecord/useActivity.w', '/SA/task/workRecord/useActivity.w', 'task', '0', '/SA/task/workRecord/workRecordProcess', 'useActivity');
INSERT INTO `sa_tasktype` VALUES ('WORKREMIND', '工作提醒', null, '/SA/task/workRemind/useActivity.w', '/SA/task/workRemind/useActivity.w', 'task', '0', '/SA/task/workRemind/workRemindProcess', 'useActivity');
INSERT INTO `sa_tasktype` VALUES ('WORKTASK', '工作任务', null, '/SA/task/workTask/useActivity.w', '/SA/task/workTask/useActivity.w', 'task', '0', '/SA/task/workTask/workTaskProcess', 'useActivity');

-- ----------------------------
-- Table structure for sa_task_histroy
-- ----------------------------
DROP TABLE IF EXISTS `sa_task_histroy`;
CREATE TABLE `sa_task_histroy` (
  `sID` varchar(32) NOT NULL,
  `sCode` varchar(128) DEFAULT NULL,
  `sParentID` varchar(32) DEFAULT NULL,
  `sName` varchar(255) DEFAULT NULL,
  `sContent` text,
  `sRemark` text,
  `sSummary` text,
  `sFlowID` varchar(32) DEFAULT NULL,
  `sSourceID` varchar(32) DEFAULT NULL,
  `sFrontID` varchar(32) DEFAULT NULL,
  `sExecuteMode2` varchar(256) DEFAULT NULL,
  `sExecuteMode` varchar(32) DEFAULT NULL,
  `sPreemptMode` varchar(32) DEFAULT NULL,
  `sCatalogID` varchar(32) DEFAULT NULL,
  `sKindID` varchar(32) DEFAULT NULL,
  `sTypeID` varchar(32) DEFAULT NULL,
  `sTypeName` varchar(64) DEFAULT NULL,
  `sImportanceID` varchar(32) DEFAULT NULL,
  `sImportanceName` varchar(64) DEFAULT NULL,
  `sEmergencyID` varchar(32) DEFAULT NULL,
  `sEmergencyName` varchar(64) DEFAULT NULL,
  `sProcess` varchar(127) DEFAULT NULL,
  `sActivity` varchar(128) DEFAULT NULL,
  `sCURL` text,
  `sEURL` text,
  `sCreateTime` datetime DEFAULT NULL,
  `sDistributeTime` datetime DEFAULT NULL,
  `sLastModifyTime` datetime DEFAULT NULL,
  `sWarningTime` datetime DEFAULT NULL,
  `sLimitTime` datetime DEFAULT NULL,
  `sExpectStartTime` datetime DEFAULT NULL,
  `sExpectFinishTime` datetime DEFAULT NULL,
  `sActualStartTime` datetime DEFAULT NULL,
  `sActualFinishTime` datetime DEFAULT NULL,
  `sExecuteTime` datetime DEFAULT NULL,
  `sCreatorPersonID` varchar(32) DEFAULT NULL,
  `sCreatorPersonName` varchar(128) DEFAULT NULL,
  `sCreatorPosID` varchar(32) DEFAULT NULL,
  `sCreatorPosName` varchar(128) DEFAULT NULL,
  `sCreatorDeptID` varchar(32) DEFAULT NULL,
  `sCreatorDeptName` varchar(128) DEFAULT NULL,
  `sCreatorOgnID` varchar(32) DEFAULT NULL,
  `sCreatorOgnName` varchar(128) DEFAULT NULL,
  `sCreatorFID` varchar(212) DEFAULT NULL,
  `sCreatorFName` varchar(1024) DEFAULT NULL,
  `sExecutorPersonID` varchar(32) DEFAULT NULL,
  `sExecutorPersonName` varchar(128) DEFAULT NULL,
  `sExecutorPosID` varchar(32) DEFAULT NULL,
  `sExecutorPosName` varchar(128) DEFAULT NULL,
  `sExecutorDeptID` varchar(32) DEFAULT NULL,
  `sExecutorDeptName` varchar(128) DEFAULT NULL,
  `sExecutorOgnID` varchar(32) DEFAULT NULL,
  `sExecutorOgnName` varchar(128) DEFAULT NULL,
  `sExecutorFID` varchar(212) DEFAULT NULL,
  `sExecutorFName` varchar(1024) DEFAULT NULL,
  `sExecutorNames` text,
  `sActivityNames` text,
  `sResponsible` varchar(8) DEFAULT NULL,
  `sCustomerID` varchar(64) DEFAULT NULL,
  `ScustomerCode` varchar(64) DEFAULT NULL,
  `sCustomerName` varchar(128) DEFAULT NULL,
  `sProjectID` varchar(64) DEFAULT NULL,
  `sProjectCode` varchar(64) DEFAULT NULL,
  `sProjectName` varchar(128) DEFAULT NULL,
  `sPlanID` varchar(64) DEFAULT NULL,
  `sPlanCode` varchar(64) DEFAULT NULL,
  `sPlanName` varchar(128) DEFAULT NULL,
  `sData1` varchar(32) DEFAULT NULL,
  `sData2` varchar(32) DEFAULT NULL,
  `sData3` varchar(32) DEFAULT NULL,
  `sData4` varchar(32) DEFAULT NULL,
  `sFake` varchar(8) DEFAULT NULL,
  `sActive` varchar(8) DEFAULT NULL,
  `sStatusID` varchar(32) DEFAULT NULL,
  `sStatusName` varchar(64) DEFAULT NULL,
  `sAIID` varchar(32) DEFAULT NULL,
  `sAIStatusID` varchar(256) DEFAULT NULL,
  `sAIStatusName` varchar(256) DEFAULT NULL,
  `sAIActive` varchar(8) DEFAULT NULL,
  `sWorkTime` int(11) DEFAULT NULL,
  `sVersionNumber` varchar(64) DEFAULT NULL,
  `sSequence` int(11) DEFAULT NULL,
  `sLock` varchar(32) DEFAULT NULL,
  `sHints` text,
  `sShortcut` text,
  `sRemindMode` varchar(32) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `sWithdraw` int(11) DEFAULT NULL,
  `sVariable` text,
  `sProcessName` varchar(128) DEFAULT NULL,
  `sActivityName` varchar(128) DEFAULT NULL,
  `sProcessTemplateID` varchar(32) DEFAULT NULL,
  `sProcessTemplateItemSequence` varchar(128) DEFAULT NULL,
  `sTempPermissionID` varchar(32) DEFAULT NULL,
  `sActivityInTemplate` varchar(128) DEFAULT NULL,
  `sProcessTemplateID2` varchar(32) DEFAULT NULL,
  `sESField01` varchar(128) DEFAULT NULL,
  `sESField02` varchar(128) DEFAULT NULL,
  `sESField03` varchar(128) DEFAULT NULL,
  `sESField04` varchar(128) DEFAULT NULL,
  `sESField05` varchar(128) DEFAULT NULL,
  `sESField06` varchar(128) DEFAULT NULL,
  `sESField07` varchar(128) DEFAULT NULL,
  `sESField08` varchar(128) DEFAULT NULL,
  `sENField11` decimal(10,0) DEFAULT NULL,
  `sENField12` decimal(10,0) DEFAULT NULL,
  `sENField13` decimal(10,0) DEFAULT NULL,
  `sENField14` decimal(10,0) DEFAULT NULL,
  `sEDField21` datetime DEFAULT NULL,
  `sEDField22` datetime DEFAULT NULL,
  `sEDField23` datetime DEFAULT NULL,
  `sEDField24` datetime DEFAULT NULL,
  `sETField31` text,
  `sETField32` text,
  `sETField33` text,
  `sETField34` text,
  `sEIField41` int(11) DEFAULT NULL,
  `sEIField42` int(11) DEFAULT NULL,
  `sEIField43` int(11) DEFAULT NULL,
  `sEIField44` int(11) DEFAULT NULL,
  `sEBField51` longblob,
  `sEBField52` longblob,
  `sEbField53` longblob,
  `sEBField54` longblob,
  PRIMARY KEY (`sID`),
  KEY `IDX_TASKH_SFLOWID` (`sFlowID`),
  KEY `IDX_TASKH_CREATETIME` (`sCreateTime`),
  KEY `IDX_TASKH_WAIT` (`sExecutorFID`,`sStatusID`),
  KEY `IDX_TASKH_SUB` (`sCreatorFID`,`sStatusID`),
  KEY `IDX_TASKH_SUB2` (`sCreatorPersonID`,`sStatusID`),
  KEY `IDX_TASKH_DATA_P` (`sData1`,`sData2`,`sData3`,`sData4`,`sProcess`),
  KEY `IDX_TASKH_PIK` (`sParentID`,`sID`,`sKindID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_task_histroy
-- ----------------------------

-- ----------------------------
-- Table structure for sa_task_sysbak
-- ----------------------------
DROP TABLE IF EXISTS `sa_task_sysbak`;
CREATE TABLE `sa_task_sysbak` (
  `sID` varchar(32) NOT NULL,
  `sCode` varchar(128) DEFAULT NULL,
  `sParentID` varchar(32) DEFAULT NULL,
  `sName` varchar(255) DEFAULT NULL,
  `sContent` text,
  `sRemark` text,
  `sSummary` text,
  `sFlowID` varchar(32) DEFAULT NULL,
  `sSourceID` varchar(32) DEFAULT NULL,
  `sFrontID` varchar(32) DEFAULT NULL,
  `sExecuteMode2` varchar(256) DEFAULT NULL,
  `sExecuteMode` varchar(32) DEFAULT NULL,
  `sPreemptMode` varchar(32) DEFAULT NULL,
  `sCatalogID` varchar(32) DEFAULT NULL,
  `sKindID` varchar(32) DEFAULT NULL,
  `sTypeID` varchar(32) DEFAULT NULL,
  `sTypeName` varchar(64) DEFAULT NULL,
  `sImportanceID` varchar(32) DEFAULT NULL,
  `sImportanceName` varchar(64) DEFAULT NULL,
  `sEmergencyID` varchar(32) DEFAULT NULL,
  `sEmergencyName` varchar(64) DEFAULT NULL,
  `sProcess` varchar(127) DEFAULT NULL,
  `sActivity` varchar(128) DEFAULT NULL,
  `sCURL` text,
  `sEURL` text,
  `sCreateTime` datetime DEFAULT NULL,
  `sDistributeTime` datetime DEFAULT NULL,
  `sLastModifyTime` datetime DEFAULT NULL,
  `sWarningTime` datetime DEFAULT NULL,
  `sLimitTime` datetime DEFAULT NULL,
  `sExpectStartTime` datetime DEFAULT NULL,
  `sExpectFinishTime` datetime DEFAULT NULL,
  `sActualStartTime` datetime DEFAULT NULL,
  `sActualFinishTime` datetime DEFAULT NULL,
  `sExecuteTime` datetime DEFAULT NULL,
  `sCreatorPersonID` varchar(32) DEFAULT NULL,
  `sCreatorPersonName` varchar(128) DEFAULT NULL,
  `sCreatorPosID` varchar(32) DEFAULT NULL,
  `sCreatorPosName` varchar(128) DEFAULT NULL,
  `sCreatorDeptID` varchar(32) DEFAULT NULL,
  `sCreatorDeptName` varchar(128) DEFAULT NULL,
  `sCreatorOgnID` varchar(32) DEFAULT NULL,
  `sCreatorOgnName` varchar(128) DEFAULT NULL,
  `sCreatorFID` varchar(212) DEFAULT NULL,
  `sCreatorFName` varchar(1024) DEFAULT NULL,
  `sExecutorPersonID` varchar(32) DEFAULT NULL,
  `sExecutorPersonName` varchar(128) DEFAULT NULL,
  `sExecutorPosID` varchar(32) DEFAULT NULL,
  `sExecutorPosName` varchar(128) DEFAULT NULL,
  `sExecutorDeptID` varchar(32) DEFAULT NULL,
  `sExecutorDeptName` varchar(128) DEFAULT NULL,
  `sExecutorOgnID` varchar(32) DEFAULT NULL,
  `sExecutorOgnName` varchar(128) DEFAULT NULL,
  `sExecutorFID` varchar(212) DEFAULT NULL,
  `sExecutorFName` varchar(1024) DEFAULT NULL,
  `sExecutorNames` text,
  `sActivityNames` text,
  `sResponsible` varchar(8) DEFAULT NULL,
  `sCustomerID` varchar(64) DEFAULT NULL,
  `ScustomerCode` varchar(64) DEFAULT NULL,
  `sCustomerName` varchar(128) DEFAULT NULL,
  `sProjectID` varchar(64) DEFAULT NULL,
  `sProjectCode` varchar(64) DEFAULT NULL,
  `sProjectName` varchar(128) DEFAULT NULL,
  `sPlanID` varchar(64) DEFAULT NULL,
  `sPlanCode` varchar(64) DEFAULT NULL,
  `sPlanName` varchar(128) DEFAULT NULL,
  `sData1` varchar(32) DEFAULT NULL,
  `sData2` varchar(32) DEFAULT NULL,
  `sData3` varchar(32) DEFAULT NULL,
  `sData4` varchar(32) DEFAULT NULL,
  `sFake` varchar(8) DEFAULT NULL,
  `sActive` varchar(8) DEFAULT NULL,
  `sStatusID` varchar(32) DEFAULT NULL,
  `sStatusName` varchar(64) DEFAULT NULL,
  `sAIID` varchar(32) DEFAULT NULL,
  `sAIStatusID` varchar(256) DEFAULT NULL,
  `sAIStatusName` varchar(256) DEFAULT NULL,
  `sAIActive` varchar(8) DEFAULT NULL,
  `sWorkTime` int(11) DEFAULT NULL,
  `sVersionNumber` varchar(64) DEFAULT NULL,
  `sSequence` int(11) DEFAULT NULL,
  `sLock` varchar(32) DEFAULT NULL,
  `sHints` text,
  `sShortcut` text,
  `sRemindMode` varchar(32) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `sWithdraw` int(11) DEFAULT NULL,
  `sVariable` text,
  `sProcessName` varchar(128) DEFAULT NULL,
  `sActivityName` varchar(128) DEFAULT NULL,
  `sProcessTemplateID` varchar(32) DEFAULT NULL,
  `sProcessTemplateItemSequence` varchar(128) DEFAULT NULL,
  `sTempPermissionID` varchar(32) DEFAULT NULL,
  `sActivityInTemplate` varchar(128) DEFAULT NULL,
  `sProcessTemplateID2` varchar(32) DEFAULT NULL,
  `sESField01` varchar(128) DEFAULT NULL,
  `sESField02` varchar(128) DEFAULT NULL,
  `sESField03` varchar(128) DEFAULT NULL,
  `sESField04` varchar(128) DEFAULT NULL,
  `sESField05` varchar(128) DEFAULT NULL,
  `sESField06` varchar(128) DEFAULT NULL,
  `sESField07` varchar(128) DEFAULT NULL,
  `sESField08` varchar(128) DEFAULT NULL,
  `sENField11` decimal(10,0) DEFAULT NULL,
  `sENField12` decimal(10,0) DEFAULT NULL,
  `sENField13` decimal(10,0) DEFAULT NULL,
  `sENField14` decimal(10,0) DEFAULT NULL,
  `sEDField21` datetime DEFAULT NULL,
  `sEDField22` datetime DEFAULT NULL,
  `sEDField23` datetime DEFAULT NULL,
  `sEDField24` datetime DEFAULT NULL,
  `sETField31` text,
  `sETField32` text,
  `sETField33` text,
  `sETField34` text,
  `sEIField41` int(11) DEFAULT NULL,
  `sEIField42` int(11) DEFAULT NULL,
  `sEIField43` int(11) DEFAULT NULL,
  `sEIField44` int(11) DEFAULT NULL,
  `sEBField51` longblob,
  `sEBField52` longblob,
  `sEbField53` longblob,
  `sEBField54` longblob,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_task_sysbak
-- ----------------------------

-- ----------------------------
-- Table structure for sa_terminal
-- ----------------------------
DROP TABLE IF EXISTS `sa_terminal`;
CREATE TABLE `sa_terminal` (
  `sID` varchar(32) NOT NULL,
  `sPersonID` varchar(32) NOT NULL,
  `sTypeID` varchar(32) NOT NULL,
  `sTypeName` varchar(64) NOT NULL,
  `sAccountNumber` varchar(128) NOT NULL,
  `sProtocol` varchar(32) NOT NULL,
  `sValidState` int(11) DEFAULT NULL,
  `sIsDefault` int(11) DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_TERMINAL_PNS` (`sPersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_terminal
-- ----------------------------

-- ----------------------------
-- Table structure for sa_themedefine
-- ----------------------------
DROP TABLE IF EXISTS `sa_themedefine`;
CREATE TABLE `sa_themedefine` (
  `sID` varchar(100) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `sThemeName` varchar(100) DEFAULT NULL,
  `sThemeLayoutInfo` text,
  `sThemePublishType` varchar(100) DEFAULT NULL,
  `sThemeActivity` varchar(1024) DEFAULT NULL,
  `sCreatorID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_themedefine
-- ----------------------------

-- ----------------------------
-- Table structure for sa_thememanager
-- ----------------------------
DROP TABLE IF EXISTS `sa_thememanager`;
CREATE TABLE `sa_thememanager` (
  `sID` varchar(100) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `sThemeID` varchar(100) DEFAULT NULL,
  `sOrgID` varchar(100) DEFAULT NULL,
  `sThemeActivity` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_thememanager
-- ----------------------------

-- ----------------------------
-- Table structure for sa_tokeninstance
-- ----------------------------
DROP TABLE IF EXISTS `sa_tokeninstance`;
CREATE TABLE `sa_tokeninstance` (
  `sID` varchar(32) NOT NULL,
  `sProcessInstanceID` varchar(32) DEFAULT NULL,
  `sProcess` varchar(1024) DEFAULT NULL,
  `sProcessTemplateID2` varchar(32) DEFAULT NULL,
  `sPlace` varchar(128) DEFAULT NULL,
  `sFromActivityInstanceID` varchar(32) DEFAULT NULL,
  `sFromActivity` varchar(128) DEFAULT NULL,
  `sToActivity` varchar(128) DEFAULT NULL,
  `sToActivityInstanceID` varchar(32) DEFAULT NULL,
  `sValue` text,
  `sActive` varchar(8) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_TI_PI` (`sProcessInstanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_tokeninstance
-- ----------------------------

-- ----------------------------
-- Table structure for sa_tokeninstance_histroy
-- ----------------------------
DROP TABLE IF EXISTS `sa_tokeninstance_histroy`;
CREATE TABLE `sa_tokeninstance_histroy` (
  `sID` varchar(32) NOT NULL,
  `sProcessInstanceID` varchar(32) DEFAULT NULL,
  `sProcess` varchar(1024) DEFAULT NULL,
  `sProcessTemplateID2` varchar(32) DEFAULT NULL,
  `sPlace` varchar(128) DEFAULT NULL,
  `sFromActivityInstanceID` varchar(32) DEFAULT NULL,
  `sFromActivity` varchar(128) DEFAULT NULL,
  `sToActivity` varchar(128) DEFAULT NULL,
  `sToActivityInstanceID` varchar(32) DEFAULT NULL,
  `sValue` text,
  `sActive` varchar(8) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`sID`),
  KEY `IDX_TIH_PI` (`sProcessInstanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_tokeninstance_histroy
-- ----------------------------

-- ----------------------------
-- Table structure for sa_tokeninstance_sysbak
-- ----------------------------
DROP TABLE IF EXISTS `sa_tokeninstance_sysbak`;
CREATE TABLE `sa_tokeninstance_sysbak` (
  `sID` varchar(32) NOT NULL,
  `sProcessInstanceID` varchar(32) DEFAULT NULL,
  `sProcess` varchar(1024) DEFAULT NULL,
  `sProcessTemplateID2` varchar(32) DEFAULT NULL,
  `sPlace` varchar(128) DEFAULT NULL,
  `sFromActivityInstanceID` varchar(32) DEFAULT NULL,
  `sFromActivity` varchar(128) DEFAULT NULL,
  `sToActivity` varchar(128) DEFAULT NULL,
  `sToActivityInstanceID` varchar(32) DEFAULT NULL,
  `sValue` text,
  `sActive` varchar(8) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sa_tokeninstance_sysbak
-- ----------------------------
