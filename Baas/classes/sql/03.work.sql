/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : work

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-09-11 14:12:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comm_usemode_d
-- ----------------------------
DROP TABLE IF EXISTS `comm_usemode_d`;
CREATE TABLE `comm_usemode_d` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fName` varchar(100) DEFAULT NULL COMMENT '出行方式',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comm_usemode_d
-- ----------------------------

-- ----------------------------
-- Table structure for im_bot
-- ----------------------------
DROP TABLE IF EXISTS `im_bot`;
CREATE TABLE `im_bot` (
  `sID` varchar(100) NOT NULL,
  `sName` varchar(128) NOT NULL COMMENT '名称',
  `sNickName` varchar(255) DEFAULT NULL COMMENT '昵称',
  `sActorID` int(11) NOT NULL COMMENT 'ActorID',
  `sType` varchar(32) DEFAULT NULL COMMENT 'BOT类型',
  `sBusinessAPI` varchar(128) DEFAULT NULL COMMENT '业务API',
  `sBusinessCycle` int(10) DEFAULT NULL COMMENT '业务API访问周期',
  `sStatus` varchar(8) DEFAULT NULL COMMENT '状态',
  `sRemarks` varchar(256) DEFAULT NULL COMMENT '备注',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`sID`),
  KEY `IDX_IMBOT_NAME` (`sName`),
  KEY `IDX_IMBOT_ACTORID` (`sActorID`),
  KEY `IDX_IMBOT_TYPE` (`sType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_bot
-- ----------------------------
INSERT INTO `im_bot` VALUES ('C73D887A64600001392713B012CDC6F0', '铛铛工作助理', '铛铛工作助理', '1871309870', '', null, null, '启用', '名称：铛铛工作助理，昵称：铛铛工作助理，类型：', null);
INSERT INTO `im_bot` VALUES ('C73D88D2D2E000012FBF61491E6416AE', 'ROOT', 'ROOT', '234739656', '', null, null, '启用', '名称：ROOT，昵称：ROOT，类型：', null);
INSERT INTO `im_bot` VALUES ('C73D88D2D45000014F521AD018301314', '审批', '审批', '398220420', '', null, null, '启用', '名称：审批，昵称：审批，类型：', null);

-- ----------------------------
-- Table structure for im_botgroup
-- ----------------------------
DROP TABLE IF EXISTS `im_botgroup`;
CREATE TABLE `im_botgroup` (
  `sID` varchar(88) NOT NULL,
  `sGroupID` int(11) NOT NULL COMMENT '讨论组ID',
  `sBusinessID` varchar(88) DEFAULT NULL COMMENT '业务ID',
  `sBusinessType` varchar(10) DEFAULT NULL COMMENT '业务类型',
  `sGroupName` varchar(128) NOT NULL COMMENT '讨论组名称',
  `sGroupMsgURL` varchar(1024) DEFAULT NULL COMMENT '讨论组消息地址',
  `sGroupDescribe` varchar(1024) DEFAULT NULL COMMENT '讨论组描述',
  `sStatus` varchar(10) DEFAULT NULL COMMENT '状态',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`sID`),
  KEY `IDX_IMBOTGROUP_NAME` (`sGroupName`),
  KEY `IDX_IMBOTGROUP_ID` (`sGroupID`),
  KEY `IDX_IMBOTGROUP_BUSINESSID` (`sBusinessID`),
  KEY `IDX_IMBOTGROUP_TYPE` (`sBusinessType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_botgroup
-- ----------------------------

-- ----------------------------
-- Table structure for oa_advancedsetting
-- ----------------------------
DROP TABLE IF EXISTS `oa_advancedsetting`;
CREATE TABLE `oa_advancedsetting` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fGoWorkTime` varchar(100) DEFAULT NULL COMMENT '上班弹性时间',
  `fLateTime` varchar(100) DEFAULT NULL COMMENT '迟到考核',
  `fAbsentTime` varchar(100) DEFAULT NULL COMMENT '旷工考核',
  `fFirstEarlyTime` varchar(100) DEFAULT NULL COMMENT '最早打卡时间',
  `fOgnID` varchar(100) DEFAULT NULL COMMENT '组织ID',
  `fOgnName` varchar(100) DEFAULT NULL COMMENT '组织名称',
  `fCreatepreID` varchar(100) DEFAULT NULL COMMENT '创建人ID',
  `fCreatepreName` varchar(100) DEFAULT NULL COMMENT '创建人名称',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_advancedsetting
-- ----------------------------

-- ----------------------------
-- Table structure for oa_approval
-- ----------------------------
DROP TABLE IF EXISTS `oa_approval`;
CREATE TABLE `oa_approval` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fPersonName` varchar(50) DEFAULT NULL COMMENT '创建人',
  `fPersonID` varchar(50) DEFAULT NULL COMMENT '创建人ID',
  `fCreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `fDeptName` varchar(50) DEFAULT NULL COMMENT '部门',
  `fDeptID` varchar(50) DEFAULT NULL COMMENT '部门ID',
  `fOrgName` varchar(50) DEFAULT NULL COMMENT '组织',
  `fOrgID` varchar(50) DEFAULT NULL COMMENT '组织ID',
  `fState` varchar(50) DEFAULT NULL COMMENT '审批状态',
  `fStateID` varchar(50) DEFAULT NULL COMMENT '审批状态ID',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '审批状态修改时间',
  `fUpdatePerson` varchar(50) DEFAULT NULL COMMENT '审批状态修改人',
  `fUpdatePersonID` varchar(50) DEFAULT NULL COMMENT '审批状态修改人ID',
  `fTheme` varchar(50) DEFAULT NULL COMMENT '审批主题',
  `fContent` varchar(50) DEFAULT NULL COMMENT '审批内容',
  `fApprovalAttachment` varchar(1024) DEFAULT NULL COMMENT '审批附件',
  `fType` varchar(50) DEFAULT NULL COMMENT '审批类型',
  `fTypeID` varchar(50) DEFAULT NULL COMMENT '审批类型ID',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审批';

-- ----------------------------
-- Records of oa_approval
-- ----------------------------

-- ----------------------------
-- Table structure for oa_approvers
-- ----------------------------
DROP TABLE IF EXISTS `oa_approvers`;
CREATE TABLE `oa_approvers` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fApprovalID` varchar(50) DEFAULT NULL COMMENT '审批ID',
  `fApprovers` varchar(50) DEFAULT NULL COMMENT '审批人',
  `fApproversID` varchar(50) DEFAULT NULL COMMENT '审批人ID',
  `fApproval` varchar(50) DEFAULT NULL COMMENT '审批意见',
  `fCCPerson` varchar(1024) DEFAULT NULL COMMENT '抄送人',
  `fCCPersonID` varchar(1024) DEFAULT NULL COMMENT '抄送人ID',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '审批意见修改时间',
  `fState` varchar(50) DEFAULT NULL COMMENT '审批状态',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审批人';

-- ----------------------------
-- Records of oa_approvers
-- ----------------------------

-- ----------------------------
-- Table structure for oa_attendanceadmin
-- ----------------------------
DROP TABLE IF EXISTS `oa_attendanceadmin`;
CREATE TABLE `oa_attendanceadmin` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fPersonID` varchar(100) DEFAULT NULL COMMENT '考勤人ID',
  `fPersonName` varchar(100) DEFAULT NULL COMMENT '考勤人名称',
  `fOrgID` varchar(100) DEFAULT NULL COMMENT '考勤组织ID',
  `fOrgName` varchar(100) DEFAULT NULL COMMENT '考勤组织名称',
  `fDeptID` varchar(100) DEFAULT NULL COMMENT '考勤部门ID',
  `fDeptName` varchar(100) DEFAULT NULL COMMENT '考勤部门名称',
  `fAttendanceClass` varchar(100) DEFAULT NULL COMMENT '考勤班制',
  `fAttendanceGroupName` varchar(100) DEFAULT NULL COMMENT '考勤组名称',
  `fAttendanceTeamManager` varchar(1024) DEFAULT NULL COMMENT '考勤组负责人',
  `fAttendanceTeamManagerID` varchar(1024) DEFAULT NULL COMMENT '考勤组负责人ID',
  `fCreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `fUpdataTime` datetime DEFAULT NULL COMMENT '修改时间',
  `fAttendancePersonName` varchar(1024) DEFAULT NULL COMMENT '参与考勤人员',
  `fAttendancePersonID` varchar(1024) DEFAULT NULL COMMENT '参与考勤人员ID',
  `fEffectiveRange` int(11) DEFAULT NULL COMMENT '有效范围',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_attendanceadmin
-- ----------------------------

-- ----------------------------
-- Table structure for oa_attendancemap
-- ----------------------------
DROP TABLE IF EXISTS `oa_attendancemap`;
CREATE TABLE `oa_attendancemap` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fAttendanceAdminID` varchar(100) DEFAULT NULL COMMENT '考勤管理ID',
  `fLongitude` varchar(100) DEFAULT NULL COMMENT '经度',
  `fLatitude` varchar(100) DEFAULT NULL COMMENT '纬度',
  `fAddressDetail` varchar(100) DEFAULT NULL COMMENT '地址信息',
  `fAttenAddrName` varchar(100) DEFAULT NULL COMMENT '考勤地点名称',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_attendancemap
-- ----------------------------

-- ----------------------------
-- Table structure for oa_attendanceset
-- ----------------------------
DROP TABLE IF EXISTS `oa_attendanceset`;
CREATE TABLE `oa_attendanceset` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fOrgID` varchar(100) DEFAULT NULL COMMENT '考勤组织ID',
  `fOrgName` varchar(100) DEFAULT NULL COMMENT '考勤组织名称',
  `fDeptID` varchar(100) DEFAULT NULL COMMENT '考勤部门ID',
  `fDeptName` varchar(100) DEFAULT NULL COMMENT '考勤部门名称',
  `checkInAMtime` varchar(100) DEFAULT NULL COMMENT '签到时间AM',
  `checkOutAMtime` varchar(100) DEFAULT NULL COMMENT '签退时间AM',
  `checkInPMtime` varchar(100) DEFAULT NULL COMMENT '签到时间PM',
  `checkOutPMtime` varchar(100) DEFAULT NULL COMMENT '签退时间PM',
  `fCheckSite` varchar(100) DEFAULT NULL COMMENT '考勤地点',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_attendanceset
-- ----------------------------

-- ----------------------------
-- Table structure for oa_attendancetime
-- ----------------------------
DROP TABLE IF EXISTS `oa_attendancetime`;
CREATE TABLE `oa_attendancetime` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fAttendanceAdminID` varchar(100) DEFAULT NULL COMMENT '考勤管理ID',
  `fDepart` varchar(100) DEFAULT NULL COMMENT '班次',
  `fStartAM` varchar(100) DEFAULT NULL COMMENT '上班',
  `fEndAM` varchar(100) DEFAULT NULL COMMENT '下班',
  `fStartPM` varchar(100) DEFAULT NULL COMMENT '下午上班时间',
  `fEndPM` varchar(100) DEFAULT NULL COMMENT '下午下班时间',
  `fTime` varchar(100) DEFAULT NULL COMMENT '时段',
  `fOrgID` varchar(100) DEFAULT NULL COMMENT '考勤组织ID',
  `fOrgName` varchar(100) DEFAULT NULL COMMENT '考勤组织名称',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_attendancetime
-- ----------------------------

-- ----------------------------
-- Table structure for oa_attendanceweek
-- ----------------------------
DROP TABLE IF EXISTS `oa_attendanceweek`;
CREATE TABLE `oa_attendanceweek` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fAttendanceAdminID` varchar(100) DEFAULT NULL COMMENT '考勤管理ID',
  `fDepartID` varchar(100) DEFAULT NULL COMMENT '考勤班次设置ID',
  `fMonday` varchar(100) DEFAULT NULL COMMENT '每周一',
  `fTuesday` varchar(100) DEFAULT NULL COMMENT '每周二',
  `fWednesday` varchar(100) DEFAULT NULL COMMENT '每周三',
  `fThursday` varchar(100) DEFAULT NULL COMMENT '每周四',
  `fFriday` varchar(100) DEFAULT NULL COMMENT '每周五',
  `fSaturday` varchar(100) DEFAULT NULL COMMENT '每周六',
  `fSunday` varchar(100) DEFAULT NULL COMMENT '每周日',
  `fDepart` varchar(100) DEFAULT NULL COMMENT '班次',
  `fDepartTime` varchar(100) DEFAULT NULL COMMENT '班次时间',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_attendanceweek
-- ----------------------------

-- ----------------------------
-- Table structure for oa_attendancewifi
-- ----------------------------
DROP TABLE IF EXISTS `oa_attendancewifi`;
CREATE TABLE `oa_attendancewifi` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fAttendanceAdminID` varchar(100) DEFAULT NULL COMMENT '考勤管理ID',
  `fWifiName` varchar(100) DEFAULT NULL COMMENT 'WIFI名称',
  `fMacAddress` varchar(100) DEFAULT NULL COMMENT 'MAC地址',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_attendancewifi
-- ----------------------------

-- ----------------------------
-- Table structure for oa_chekinout
-- ----------------------------
DROP TABLE IF EXISTS `oa_chekinout`;
CREATE TABLE `oa_chekinout` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fPersonID` varchar(100) DEFAULT NULL COMMENT '考勤人ID',
  `fPersonName` varchar(100) DEFAULT NULL COMMENT '考勤人名称',
  `fOrgID` varchar(100) DEFAULT NULL COMMENT '考勤组织ID',
  `fOrgName` varchar(100) DEFAULT NULL COMMENT '考勤组织名称',
  `fDeptID` varchar(100) DEFAULT NULL COMMENT '考勤部门ID',
  `fDeptName` varchar(100) DEFAULT NULL COMMENT '考勤部门名称',
  `fCheckInAM` datetime DEFAULT NULL COMMENT '签到时间AM',
  `fCheckOutAM` datetime DEFAULT NULL COMMENT '签退时间AM',
  `fCheckInPM` datetime DEFAULT NULL COMMENT '签到时间PM',
  `fCheckOutPM` datetime DEFAULT NULL COMMENT '签退时间PM',
  `fIsLate` varchar(100) DEFAULT NULL COMMENT '是否迟到',
  `fIsLateRemark` varchar(1024) DEFAULT NULL COMMENT '迟到备注',
  `fIsLeaving` varchar(100) DEFAULT NULL COMMENT '是否早退',
  `fIsLeavingRemark` varchar(1024) DEFAULT NULL COMMENT '早退备注',
  `fAbsenteeism` varchar(100) DEFAULT NULL COMMENT '是否旷工',
  `fLateImg` varchar(1024) DEFAULT NULL COMMENT '迟到图片',
  `fLeavingImg` varchar(1024) DEFAULT NULL COMMENT '早退图片',
  `fCheckAreaAM` varchar(100) DEFAULT NULL COMMENT '早签到地点',
  `fCheckAreaPM` varchar(100) DEFAULT NULL COMMENT '晚签退地点',
  `fCheckSite` varchar(100) DEFAULT NULL COMMENT '考勤地点',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_chekinout
-- ----------------------------

-- ----------------------------
-- Table structure for oa_fc_loanapply
-- ----------------------------
DROP TABLE IF EXISTS `oa_fc_loanapply`;
CREATE TABLE `oa_fc_loanapply` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fNO` varchar(100) DEFAULT NULL COMMENT '单据号',
  `fBizState` varchar(100) DEFAULT NULL COMMENT '业务流程状态编码',
  `fBizStateName` varchar(100) DEFAULT NULL COMMENT '业务流程状态',
  `fLoanOgnID` varchar(100) DEFAULT NULL COMMENT '借款机构ID',
  `fLoanOgnName` varchar(100) DEFAULT NULL COMMENT '借款机构',
  `fLoanDeptID` varchar(100) DEFAULT NULL COMMENT '借款部门ID',
  `fLoanDeptName` varchar(100) DEFAULT NULL COMMENT '借款部门',
  `fLoanPosID` varchar(100) DEFAULT NULL COMMENT '借款岗位ID',
  `fLoanPosName` varchar(100) DEFAULT NULL COMMENT '借款岗位',
  `fLoanPsnID` varchar(100) DEFAULT NULL COMMENT '借款人员ID',
  `fLoanPsnName` varchar(100) DEFAULT NULL COMMENT '借款人员',
  `fLoanPsnFullID` varchar(100) DEFAULT NULL COMMENT '借款人员FullID',
  `fLoanPsnFullName` varchar(100) DEFAULT NULL COMMENT '借款人员FullName',
  `fLoanDate` date DEFAULT NULL COMMENT '借款日期',
  `fCreatePsnID` varchar(100) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(100) DEFAULT NULL COMMENT '提交人员',
  `fCreatePsnFID` varchar(100) DEFAULT NULL COMMENT '提交人员FullID',
  `fCreatePsnFName` varchar(100) DEFAULT NULL COMMENT '提交人员FullName',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fUpdatePsnID` varchar(100) DEFAULT NULL COMMENT '修改人员ID',
  `fUpdatePsnName` varchar(100) DEFAULT NULL COMMENT '修改人员',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `fClienter` varchar(100) DEFAULT NULL COMMENT '客户',
  `fLoanAmt` decimal(10,0) DEFAULT NULL COMMENT '借款金额',
  `fLoanType` varchar(100) DEFAULT NULL COMMENT '借款类型',
  `fLoanTypeName` varchar(100) DEFAULT NULL COMMENT '借款类型名称',
  `fLoanTypeCode` varchar(100) DEFAULT NULL COMMENT '借款类型编码',
  `fReturnDate` date DEFAULT NULL COMMENT '归还日期',
  `fLoanPurpose` varchar(100) DEFAULT NULL COMMENT '借款用途',
  `fRemark` varchar(100) DEFAULT NULL COMMENT '备注',
  `fCreateOgnID` varchar(100) DEFAULT NULL COMMENT '提交机构ID',
  `fCreateOgnName` varchar(100) DEFAULT NULL COMMENT '提交机构',
  `fCreateDeptID` varchar(100) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(100) DEFAULT NULL COMMENT '提交部门',
  `fCreatePosID` varchar(100) DEFAULT NULL COMMENT '提交岗位ID',
  `fCreatePosName` varchar(100) DEFAULT NULL COMMENT '提交岗位',
  `fCreateDate` date DEFAULT NULL COMMENT '提交日期',
  `fFactAmount` decimal(10,0) DEFAULT NULL COMMENT '合计',
  `fStatus` int(11) DEFAULT NULL COMMENT '归还状态',
  `fStatusName` varchar(100) DEFAULT NULL COMMENT '归还状态名称',
  `fCurrentActivities` varchar(100) DEFAULT NULL COMMENT '当前环节',
  `fCurrentExecutors` varchar(100) DEFAULT NULL COMMENT '当前执行者',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_fc_loanapply
-- ----------------------------

-- ----------------------------
-- Table structure for oa_fc_reimbapplyd
-- ----------------------------
DROP TABLE IF EXISTS `oa_fc_reimbapplyd`;
CREATE TABLE `oa_fc_reimbapplyd` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fCostType` varchar(100) DEFAULT NULL COMMENT '费用类别',
  `fCostTypeCode` varchar(100) DEFAULT NULL COMMENT '费用类别ID',
  `fCostTypeName` varchar(100) DEFAULT NULL COMMENT '费用类别名称',
  `fBeginTime` date DEFAULT NULL COMMENT '开始时间',
  `fEndTime` date DEFAULT NULL COMMENT '结束时间',
  `fCostBillNum` int(11) DEFAULT NULL COMMENT '单据张数',
  `fSimpleDeclara` varchar(100) DEFAULT NULL COMMENT '简要说明',
  `fCostAmt` decimal(10,0) DEFAULT NULL COMMENT '金额',
  `fReimFID` varchar(100) DEFAULT NULL COMMENT '报销申请发fID',
  `fFactAmount` decimal(10,0) DEFAULT NULL COMMENT '合计',
  `fReiAllowancem` decimal(10,0) DEFAULT NULL COMMENT '出差补助',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_fc_reimbapplyd
-- ----------------------------

-- ----------------------------
-- Table structure for oa_fc_reimbapplym
-- ----------------------------
DROP TABLE IF EXISTS `oa_fc_reimbapplym`;
CREATE TABLE `oa_fc_reimbapplym` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fNO` varchar(36) DEFAULT NULL COMMENT '单据号',
  `fLoanOgnID` varchar(36) DEFAULT NULL COMMENT '报销机构ID',
  `fLoanOgnName` varchar(64) DEFAULT NULL COMMENT '报销机构',
  `fLoanDeptID` varchar(36) DEFAULT NULL COMMENT '报销部门ID',
  `fLoanDeptName` varchar(64) DEFAULT NULL COMMENT '报销部门',
  `fLoanPosID` varchar(36) DEFAULT NULL COMMENT '报销岗位ID',
  `fLoanPosName` varchar(64) DEFAULT NULL COMMENT '报销岗位',
  `fLoanPsnID` varchar(64) DEFAULT NULL COMMENT '报销人员ID',
  `fLoanPsnName` varchar(64) DEFAULT NULL COMMENT '报销人员',
  `fLoanPsnFullID` varchar(1024) DEFAULT NULL COMMENT '报销人员FullID',
  `fLoanPsnFullName` varchar(64) DEFAULT NULL COMMENT '报销人员FullName',
  `fLoanDate` date DEFAULT NULL COMMENT '报销日期',
  `fClienter` varchar(64) DEFAULT NULL COMMENT '客户',
  `fReimAmt` decimal(64,0) DEFAULT NULL COMMENT '报销金额',
  `fMustReimAmt` decimal(10,0) DEFAULT NULL COMMENT '实报金额',
  `fCreatePsnID` varchar(36) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(36) DEFAULT NULL COMMENT '提交人员',
  `fCreatePsnFID` varchar(1024) DEFAULT NULL COMMENT '提交人员FullID',
  `fCreatePsnFName` varchar(36) DEFAULT NULL COMMENT '提交人员FullName',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fReiBeginDate` date DEFAULT NULL COMMENT '出差开始日期',
  `fReiBackDate` date DEFAULT NULL COMMENT '出差终止日期',
  `fReiEvent` varchar(1024) DEFAULT NULL COMMENT '报销事项',
  `fReiAllowance` decimal(10,0) DEFAULT NULL COMMENT '出差补助',
  `fRemark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `fIsPreLoan` varchar(64) DEFAULT NULL COMMENT '是否预借款',
  `fLoanAmt` decimal(64,0) DEFAULT NULL COMMENT '借款金额',
  `fBizState` varchar(1024) DEFAULT NULL COMMENT '业务流程状态编码',
  `fBizStateName` varchar(1024) DEFAULT NULL COMMENT '业务流程状态',
  `fCreateOgnID` varchar(64) DEFAULT NULL COMMENT '提交机构ID',
  `fCreateOgnName` varchar(64) DEFAULT NULL COMMENT '提交机构',
  `fCreateDeptID` varchar(64) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(64) DEFAULT NULL COMMENT '提交部门',
  `fCreatePosID` varchar(36) DEFAULT NULL COMMENT '提交岗位ID',
  `fCreatePosName` varchar(36) DEFAULT NULL COMMENT '提交岗位',
  `fFactAmount` decimal(10,0) DEFAULT NULL COMMENT '合计',
  `fCurrentActivities` varchar(64) DEFAULT NULL COMMENT '当前环节',
  `fCurrentExecutors` varchar(64) DEFAULT NULL COMMENT '当前执行者',
  `fOughtReimbAmtCn` varchar(64) DEFAULT NULL COMMENT '实报金额大写',
  `fExtendStr1` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_fc_reimbapplym
-- ----------------------------

-- ----------------------------
-- Table structure for oa_fc_reimbbadgutd
-- ----------------------------
DROP TABLE IF EXISTS `oa_fc_reimbbadgutd`;
CREATE TABLE `oa_fc_reimbbadgutd` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fCostType` varchar(100) DEFAULT NULL COMMENT '费用类别',
  `fCostTypeCode` varchar(100) DEFAULT NULL COMMENT '费用类别ID',
  `fCostTypeName` varchar(100) DEFAULT NULL COMMENT '费用类别名称',
  `fCostCenterID` varchar(100) DEFAULT NULL COMMENT '成本中心ID',
  `fCostCenterName` varchar(100) DEFAULT NULL COMMENT '成本中心',
  `fAccountID` varchar(100) DEFAULT NULL COMMENT '总账科目ID',
  `fAccountName` varchar(100) DEFAULT NULL COMMENT '总账科目',
  `fBeginTime` date DEFAULT NULL COMMENT '开始时间',
  `fEndTime` date DEFAULT NULL COMMENT '结束时间',
  `fCostBillNum` int(11) DEFAULT NULL COMMENT '单据张数',
  `fSimpleDeclara` varchar(100) DEFAULT NULL COMMENT '简要说明',
  `fCostAmt` decimal(10,0) DEFAULT NULL COMMENT '金额',
  `fReimFID` varchar(100) DEFAULT NULL COMMENT '报销申请发fID',
  `fFactAmount` decimal(10,0) DEFAULT NULL COMMENT '合计',
  `fReiAllowancem` decimal(10,0) DEFAULT NULL COMMENT '出差补助',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_fc_reimbbadgutd
-- ----------------------------

-- ----------------------------
-- Table structure for oa_km_batchkw
-- ----------------------------
DROP TABLE IF EXISTS `oa_km_batchkw`;
CREATE TABLE `oa_km_batchkw` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fFolderID` varchar(100) DEFAULT NULL COMMENT '栏目ID',
  `fFolderName` varchar(100) DEFAULT NULL COMMENT '栏目名称',
  `fFolderFullID` varchar(100) DEFAULT NULL COMMENT '栏目ID路径',
  `fFolderFullName` varchar(100) DEFAULT NULL COMMENT '栏目Name路径',
  `fIsNeedApprove` int(11) DEFAULT NULL COMMENT '是否需要审批',
  `fReleaseStatus` varchar(100) DEFAULT NULL COMMENT '发布状态',
  `fReleaseStatusName` varchar(100) DEFAULT NULL COMMENT '发布状态名称',
  `fDocument` varchar(100) DEFAULT NULL COMMENT '上传文档',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_km_batchkw
-- ----------------------------

-- ----------------------------
-- Table structure for oa_km_fdmanager
-- ----------------------------
DROP TABLE IF EXISTS `oa_km_fdmanager`;
CREATE TABLE `oa_km_fdmanager` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fFolderID` varchar(100) DEFAULT NULL COMMENT '栏目ID',
  `fManagerID` varchar(100) DEFAULT NULL COMMENT '管理员ID',
  `fManagerName` varchar(100) DEFAULT NULL COMMENT '管理员',
  `fIsInherit` int(11) DEFAULT NULL COMMENT '继承',
  `fCreatePsnID` varchar(100) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(100) DEFAULT NULL COMMENT '提交人员',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_km_fdmanager
-- ----------------------------

-- ----------------------------
-- Table structure for oa_km_folder
-- ----------------------------
DROP TABLE IF EXISTS `oa_km_folder`;
CREATE TABLE `oa_km_folder` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fParent` varchar(100) DEFAULT NULL COMMENT '父',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fName` varchar(100) DEFAULT NULL COMMENT '栏目名称',
  `fDescription` varchar(100) DEFAULT NULL COMMENT '栏目描述',
  `fFullID` varchar(100) DEFAULT NULL COMMENT 'ID路径',
  `fFullName` varchar(100) DEFAULT NULL COMMENT 'name路径',
  `fIsNeedApprove` int(11) DEFAULT NULL COMMENT '是否需要审批',
  `fManagerNames` varchar(100) DEFAULT NULL COMMENT '管理员名称',
  `fIsInheritApprove` int(11) DEFAULT NULL COMMENT '是否继承父项审批设置',
  `fIsInheritManager` int(11) DEFAULT NULL COMMENT '是否继承父项管理员设置',
  `fIsInheritRights` int(11) DEFAULT NULL COMMENT '是否继承父项权限设置',
  `fSequence` int(11) DEFAULT NULL COMMENT '排序',
  `fUseStatus` int(11) DEFAULT NULL COMMENT '启用标识',
  `fUseStatusName` varchar(100) DEFAULT NULL COMMENT '启用状态',
  `fCreatePsnID` varchar(100) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(100) DEFAULT NULL COMMENT '提交人员',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fRebuildApprove` int(11) DEFAULT NULL COMMENT '重构审批标记',
  `fRebuildManager` int(11) DEFAULT NULL COMMENT '重构管理员标记',
  `fRebuildRight` int(11) DEFAULT NULL COMMENT '重构权限标记',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_km_folder
-- ----------------------------

-- ----------------------------
-- Table structure for oa_km_knowledge
-- ----------------------------
DROP TABLE IF EXISTS `oa_km_knowledge`;
CREATE TABLE `oa_km_knowledge` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fTitle` varchar(100) DEFAULT NULL COMMENT '标 题',
  `fKeyword` varchar(100) DEFAULT NULL COMMENT '主 题 词',
  `fDocNumber` varchar(100) DEFAULT NULL COMMENT '文号',
  `fImportant` varchar(100) DEFAULT NULL COMMENT '重要度',
  `fImportantName` varchar(100) DEFAULT NULL COMMENT '重要度',
  `fWriter` varchar(100) DEFAULT NULL COMMENT '作者',
  `fFolderID` varchar(100) DEFAULT NULL COMMENT '栏目ID',
  `fFolderName` varchar(100) DEFAULT NULL COMMENT '发布栏目',
  `fFolderFullID` varchar(100) DEFAULT NULL COMMENT '栏目ID路径',
  `fFolderFullName` varchar(100) DEFAULT NULL COMMENT '栏目',
  `fRightsText` varchar(100) DEFAULT NULL COMMENT '权限显示文本',
  `fIsNeedApprove` int(11) DEFAULT NULL COMMENT '是否需要审批',
  `fContentType` varchar(100) DEFAULT NULL COMMENT '正文类型',
  `fContentTypeName` varchar(100) DEFAULT NULL COMMENT '正文类型显示',
  `fTemplateID` varchar(100) DEFAULT NULL COMMENT '内容模板ID',
  `fTemplateName` varchar(100) DEFAULT NULL COMMENT 'HTML模板',
  `fTemplateFileName` varchar(100) DEFAULT NULL COMMENT '内容模板文件名称',
  `fLinkURL` varchar(100) DEFAULT NULL COMMENT '引用链接',
  `fContent` varchar(1024) DEFAULT NULL COMMENT '内容',
  `fContentURL` varchar(100) DEFAULT NULL COMMENT '静态页面URL',
  `fIsTop` int(11) DEFAULT NULL COMMENT '是否置顶',
  `fTopBeginTime` datetime DEFAULT NULL COMMENT '置顶开始时间',
  `fTopEndTime` datetime DEFAULT NULL COMMENT '置顶结束时间',
  `fCreateOgnID` varchar(100) DEFAULT NULL COMMENT '提交机构ID',
  `fCreateOgnName` varchar(100) DEFAULT NULL COMMENT '提交机构',
  `fCreateDeptID` varchar(100) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(100) DEFAULT NULL COMMENT '提交部门',
  `fCreatePsnID` varchar(100) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(100) DEFAULT NULL COMMENT '提交人员',
  `fCreatePsnFID` varchar(100) DEFAULT NULL COMMENT '提交人员FullID',
  `fCreatePsnFName` varchar(100) DEFAULT NULL COMMENT '提交人员FullName',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fReleaseOgnID` varchar(128) DEFAULT NULL COMMENT '发布机构ID',
  `fReleaseOgnName` varchar(128) DEFAULT NULL COMMENT '发布机构',
  `fReleaseDeptID` varchar(128) DEFAULT NULL COMMENT '发布部门ID',
  `fReleaseDeptName` varchar(128) DEFAULT NULL COMMENT '发布部门',
  `fReleasePsnID` varchar(128) DEFAULT NULL COMMENT '发布人员ID',
  `fReleasePsnName` varchar(128) DEFAULT NULL COMMENT '发布人',
  `fReleasePsnFID` varchar(1024) DEFAULT NULL COMMENT '发布人员FullID',
  `fReleasePsnFName` varchar(1024) DEFAULT NULL COMMENT '发布人员FullName',
  `fReleaseTime` datetime DEFAULT NULL COMMENT '发布时间',
  `fReleaseStatus` varchar(100) DEFAULT NULL COMMENT '发布状态',
  `fReleaseStatusName` varchar(128) DEFAULT NULL COMMENT '发布状态名称',
  `fApproverID` varchar(100) DEFAULT NULL COMMENT '审核人ID',
  `fApproverName` varchar(100) DEFAULT NULL COMMENT '审核人名称',
  `fApproveTime` datetime DEFAULT NULL COMMENT '审核时间',
  `fBizState` varchar(100) DEFAULT NULL COMMENT '业务流程状态编码',
  `fBizStateName` varchar(100) DEFAULT NULL COMMENT '业务流程状态',
  `fIsDisplayOnPortal` int(11) DEFAULT NULL COMMENT '是否显示在Portal',
  `fSmallPic` varchar(100) DEFAULT NULL COMMENT '缩略图',
  `fIsInheritRights` int(11) DEFAULT NULL COMMENT '是否继承父项权限设置',
  `fOtherFolders` varchar(100) DEFAULT NULL COMMENT '其他栏目',
  `fAttachment` varchar(1024) DEFAULT NULL COMMENT '附件',
  `fDocument` varchar(1024) DEFAULT NULL COMMENT '上传文档',
  `fBizID` varchar(100) DEFAULT NULL COMMENT '接口ID',
  `fBizType` varchar(100) DEFAULT NULL COMMENT '接口类型',
  `fBizTypeName` varchar(100) DEFAULT NULL COMMENT '接口类型名称',
  `fReaderCount` int(11) DEFAULT NULL COMMENT '已阅人数',
  `fRepliesCount` int(11) DEFAULT NULL COMMENT '回复人数',
  `fPicture1` varchar(1024) DEFAULT NULL COMMENT '照片1',
  `fPicture2` varchar(1024) DEFAULT NULL COMMENT '照片2',
  `fPicture3` varchar(1024) DEFAULT NULL COMMENT '照片3',
  `fPicture4` varchar(100) DEFAULT NULL COMMENT '照片4',
  `fPicture5` varchar(100) DEFAULT NULL COMMENT '照片5',
  `fCurrentActivities` varchar(100) DEFAULT NULL COMMENT '当前环节',
  `fCurrentExecutors` varchar(100) DEFAULT NULL COMMENT '当前执行者',
  `fExtendStr1` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fGZPsnIDs` longtext COMMENT '关注人IDs',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_km_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for oa_km_knowledgegzpsn
-- ----------------------------
DROP TABLE IF EXISTS `oa_km_knowledgegzpsn`;
CREATE TABLE `oa_km_knowledgegzpsn` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fMasterID` varchar(36) DEFAULT NULL COMMENT '主数据ID',
  `fCreatePsnID` varchar(64) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(36) DEFAULT NULL COMMENT '提交人员',
  `fCreatePsnFID` varchar(512) DEFAULT NULL COMMENT '提交人员FullID',
  `fCreatePsnFName` varchar(1024) DEFAULT NULL COMMENT '提交人员FullName',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_km_knowledgegzpsn
-- ----------------------------

-- ----------------------------
-- Table structure for oa_km_kwfolder
-- ----------------------------
DROP TABLE IF EXISTS `oa_km_kwfolder`;
CREATE TABLE `oa_km_kwfolder` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fKWID` varchar(100) DEFAULT NULL COMMENT '知识ID',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fFolderKind` varchar(100) DEFAULT NULL COMMENT '文件夹类型',
  `fFolderID` varchar(100) DEFAULT NULL COMMENT '栏目ID',
  `fKWFullID` varchar(100) DEFAULT NULL COMMENT '知识ID路径',
  `fKWFullName` varchar(100) DEFAULT NULL COMMENT '知识Name路径',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_km_kwfolder
-- ----------------------------

-- ----------------------------
-- Table structure for oa_km_kwpictures
-- ----------------------------
DROP TABLE IF EXISTS `oa_km_kwpictures`;
CREATE TABLE `oa_km_kwpictures` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fKWID` varchar(100) DEFAULT NULL COMMENT '知识ID',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fSequence` int(11) DEFAULT NULL COMMENT '排序',
  `fName` varchar(100) DEFAULT NULL COMMENT '名称',
  `fPicInfo` varchar(100) DEFAULT NULL COMMENT '图片信息',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_km_kwpictures
-- ----------------------------

-- ----------------------------
-- Table structure for oa_km_readers
-- ----------------------------
DROP TABLE IF EXISTS `oa_km_readers`;
CREATE TABLE `oa_km_readers` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fKWID` varchar(100) DEFAULT NULL COMMENT '知识ID',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fReaderID` varchar(100) DEFAULT NULL COMMENT '阅文人ID',
  `fReaderName` varchar(100) DEFAULT NULL COMMENT '阅文人姓名',
  `fReadTime` datetime DEFAULT NULL COMMENT '阅文时间',
  `fScore` float DEFAULT NULL COMMENT '评分',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_km_readers
-- ----------------------------

-- ----------------------------
-- Table structure for oa_km_rights
-- ----------------------------
DROP TABLE IF EXISTS `oa_km_rights`;
CREATE TABLE `oa_km_rights` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fKWID` varchar(100) DEFAULT NULL COMMENT '知识ID',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fKWKind` varchar(100) DEFAULT NULL COMMENT '知识类型',
  `fFolderID` varchar(100) DEFAULT NULL COMMENT '栏目ID',
  `fFolderName` varchar(100) DEFAULT NULL COMMENT '栏目名称',
  `fKWName` varchar(100) DEFAULT NULL COMMENT '知识名称',
  `fKWFullID` varchar(100) DEFAULT NULL COMMENT '知识ID路径',
  `fKWFullName` varchar(100) DEFAULT NULL COMMENT '知识Name路径',
  `fOrgKind` varchar(100) DEFAULT NULL COMMENT '组织类型',
  `fOrgID` varchar(100) DEFAULT NULL COMMENT '组织ID',
  `fOrgName` varchar(100) DEFAULT NULL COMMENT '组织名称',
  `fOrgFID` varchar(100) DEFAULT NULL COMMENT '组织ID路径',
  `fOrgFName` varchar(100) DEFAULT NULL COMMENT '组织Name路径',
  `fCanCreateKW` int(11) DEFAULT NULL COMMENT '创建知识权限',
  `fCanReadKW` int(11) DEFAULT NULL COMMENT '阅读知识权限',
  `fCanReleaseKW` int(11) DEFAULT NULL COMMENT '发布知识权限',
  `fCanCreateComment` int(11) DEFAULT NULL COMMENT '发表评论权限',
  `fCanReadComment` int(11) DEFAULT NULL COMMENT '阅读评论权限',
  `fCanScore` int(11) DEFAULT NULL COMMENT '评分权限',
  `fCanReadRecord` int(11) DEFAULT NULL COMMENT '查看历史',
  `fIsInherit` int(11) DEFAULT NULL COMMENT '继承',
  `fCreatePsnID` varchar(100) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(100) DEFAULT NULL COMMENT '提交人员',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_km_rights
-- ----------------------------

-- ----------------------------
-- Table structure for oa_km_template
-- ----------------------------
DROP TABLE IF EXISTS `oa_km_template`;
CREATE TABLE `oa_km_template` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fName` varchar(100) DEFAULT NULL COMMENT '名称',
  `fFileName` varchar(100) DEFAULT NULL COMMENT '文件名',
  `fPictureCount` int(11) DEFAULT NULL COMMENT '图片个数',
  `fUseStatus` varchar(100) DEFAULT NULL COMMENT '启用标识',
  `fUseStatusName` varchar(100) DEFAULT NULL COMMENT '启用标识',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_km_template
-- ----------------------------

-- ----------------------------
-- Table structure for oa_lateappeal
-- ----------------------------
DROP TABLE IF EXISTS `oa_lateappeal`;
CREATE TABLE `oa_lateappeal` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fApplicantID` varchar(100) DEFAULT NULL COMMENT '申请人ID',
  `fApplicantName` varchar(100) DEFAULT NULL COMMENT '申请人名称',
  `fApplicantTime` datetime DEFAULT NULL COMMENT '申请时间',
  `fAppealContent` varchar(100) DEFAULT NULL COMMENT '申诉内容',
  `fAppealResult` varchar(100) DEFAULT NULL COMMENT '申诉结果',
  `fAppealWay` varchar(100) DEFAULT NULL COMMENT '申诉方式',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_lateappeal
-- ----------------------------

-- ----------------------------
-- Table structure for oa_mt_arrangepsns
-- ----------------------------
DROP TABLE IF EXISTS `oa_mt_arrangepsns`;
CREATE TABLE `oa_mt_arrangepsns` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fMasterID` varchar(100) DEFAULT NULL COMMENT '主数据ID',
  `fOrgKind` varchar(100) DEFAULT NULL COMMENT '组织类型',
  `fOrgID` varchar(100) DEFAULT NULL COMMENT '组织ID',
  `fOrgName` varchar(100) DEFAULT NULL COMMENT '组织名称',
  `fPersonID` varchar(100) DEFAULT NULL COMMENT '人员ID',
  `fPersonName` varchar(100) DEFAULT NULL COMMENT '人员',
  `fRangeURL` varchar(100) DEFAULT NULL COMMENT '参会人员全路径',
  `fRangeURLName` varchar(100) DEFAULT NULL COMMENT '参会人员全路径名称',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_mt_arrangepsns
-- ----------------------------

-- ----------------------------
-- Table structure for oa_mt_boardroom
-- ----------------------------
DROP TABLE IF EXISTS `oa_mt_boardroom`;
CREATE TABLE `oa_mt_boardroom` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fType` varchar(100) DEFAULT NULL COMMENT '会议室类型',
  `fHoldNum` int(11) DEFAULT NULL COMMENT '容纳人数',
  `fUse` varchar(100) DEFAULT NULL COMMENT '主要用途',
  `fFloor` varchar(100) DEFAULT NULL COMMENT '所在楼层',
  `fBaseConfig` varchar(100) DEFAULT NULL COMMENT '基础配置',
  `fEquipment` varchar(100) DEFAULT NULL COMMENT '附属设备',
  `fDescription` varchar(100) DEFAULT NULL COMMENT '描述',
  `fPicture` varchar(100) DEFAULT NULL COMMENT '图片',
  `fUseStatus` varchar(100) DEFAULT NULL COMMENT '启用标识',
  `fUseStatusName` varchar(100) DEFAULT NULL COMMENT '启用标识',
  `fDuptOgnID` varchar(100) DEFAULT NULL COMMENT '所属机构ID',
  `fDuptOgnName` varchar(100) DEFAULT NULL COMMENT '所属机构',
  `fDuptOgnFID` varchar(100) DEFAULT NULL COMMENT '责任机构FID',
  `fDutyDeptID` varchar(100) DEFAULT NULL COMMENT '责任部门ID',
  `fDutyDeptName` varchar(100) DEFAULT NULL COMMENT '责任部门',
  `fDutyPsnID` varchar(100) DEFAULT NULL COMMENT '责任人',
  `fDutyPsnName` varchar(100) DEFAULT NULL COMMENT '责任人姓名',
  `fDutyPsnFID` varchar(100) DEFAULT NULL COMMENT '责任人全路径',
  `fDutyPsnFName` varchar(100) DEFAULT NULL COMMENT '责任人完整姓名',
  `fCreateOgnID` varchar(100) DEFAULT NULL COMMENT '提交机构ID',
  `fCreateOgnName` varchar(100) DEFAULT NULL COMMENT '提交机构',
  `fCreateDeptID` varchar(100) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(100) DEFAULT NULL COMMENT '提交部门',
  `fCreatePosID` varchar(100) DEFAULT NULL COMMENT '提交岗位ID',
  `fCreatePosName` varchar(100) DEFAULT NULL COMMENT '提交岗位',
  `fCreatePsnID` varchar(100) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(100) DEFAULT NULL COMMENT '提交人员',
  `fCreatePsnFID` varchar(100) DEFAULT NULL COMMENT '提交人员FullID',
  `fCreatePsnFName` varchar(100) DEFAULT NULL COMMENT '提交人员FullName',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fUpdatePsnID` varchar(100) DEFAULT NULL COMMENT '修改人员ID',
  `fUpdatePsnName` varchar(100) DEFAULT NULL COMMENT '修改人员',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `fDisUseTime` datetime DEFAULT NULL COMMENT '停用时间',
  `fAddress` varchar(100) DEFAULT NULL COMMENT '地址',
  `fCode` varchar(100) DEFAULT NULL COMMENT '编码',
  `fName` varchar(100) DEFAULT NULL COMMENT '名称',
  `fRemark` varchar(100) DEFAULT NULL COMMENT '备注',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_mt_boardroom
-- ----------------------------

-- ----------------------------
-- Table structure for oa_mt_budgetapply
-- ----------------------------
DROP TABLE IF EXISTS `oa_mt_budgetapply`;
CREATE TABLE `oa_mt_budgetapply` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fMeetName` varchar(256) DEFAULT NULL COMMENT '会议名称',
  `fMeetTime` datetime DEFAULT NULL COMMENT '会议时间',
  `fMeetPalce` varchar(256) DEFAULT NULL COMMENT '会议地点',
  `fMeetReport` varchar(64) DEFAULT NULL COMMENT '会议批件',
  `fMeetType` varchar(64) DEFAULT NULL COMMENT '会议类别',
  `fMeetTypeCode` varchar(36) DEFAULT NULL COMMENT '会议类别Code',
  `fMeetDayCount` int(11) DEFAULT NULL COMMENT '会议天数',
  `fMeetPartnerNum` int(11) DEFAULT NULL COMMENT '会议人数',
  `fRentHouseCost` varchar(64) DEFAULT NULL COMMENT '房租费',
  `fRentHouseCostStand` int(11) DEFAULT NULL COMMENT '房租费标准',
  `fEatCost` varchar(64) DEFAULT NULL COMMENT '伙食费',
  `fEatCostStadard` int(11) DEFAULT NULL COMMENT '伙食费标准',
  `fOtherCost` int(11) DEFAULT NULL COMMENT '其他费用',
  `fConsultCost` int(11) DEFAULT NULL COMMENT '咨询费',
  `fApplyOgnID` varchar(36) DEFAULT NULL COMMENT '申请机构ID',
  `fApplyOgnName` varchar(64) DEFAULT NULL COMMENT '申请机构',
  `fApplyDeptID` varchar(36) DEFAULT NULL COMMENT '申请部门ID',
  `fApplyDeptName` varchar(64) DEFAULT NULL COMMENT '申请部门',
  `fApplyPosID` varchar(36) DEFAULT NULL COMMENT '申请岗位ID',
  `fApplyPosName` varchar(64) DEFAULT NULL COMMENT '申请岗位',
  `fApplyPsnID` varchar(36) DEFAULT NULL COMMENT '申请人员ID',
  `fApplyPsnName` varchar(64) DEFAULT NULL COMMENT '申请人员',
  `fApplyPsnFID` varchar(1024) DEFAULT NULL COMMENT '申请人员FullID',
  `fApplyPsnFName` varchar(1024) DEFAULT NULL COMMENT '申请人员FullName',
  `fApplyDate` datetime DEFAULT NULL COMMENT '申请日期',
  `fCostSource` varchar(128) DEFAULT NULL COMMENT '经费来源',
  `fAccountName` varchar(64) DEFAULT NULL COMMENT '列表科目',
  `fBizState` varchar(32) DEFAULT NULL COMMENT '业务流程状态编码',
  `fBizStateName` varchar(64) DEFAULT NULL COMMENT '业务流程状态',
  `fCurrentActivities` varchar(64) DEFAULT NULL COMMENT '当前环节',
  `fCurrentExecutors` varchar(64) DEFAULT NULL COMMENT '当前执行者',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_mt_budgetapply
-- ----------------------------

-- ----------------------------
-- Table structure for oa_mt_budgetapplyexecute
-- ----------------------------
DROP TABLE IF EXISTS `oa_mt_budgetapplyexecute`;
CREATE TABLE `oa_mt_budgetapplyexecute` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fMasterID` varchar(100) DEFAULT NULL COMMENT '主数据ID',
  `fTaskID` varchar(36) DEFAULT NULL COMMENT '任务ID',
  `fActivityFName` varchar(1024) DEFAULT NULL COMMENT '环节路径',
  `fActivityLabel` varchar(64) DEFAULT NULL COMMENT '环节名称',
  `fOpinion` varchar(1024) DEFAULT NULL COMMENT '处理意见',
  `fVerdict` varchar(64) DEFAULT NULL COMMENT '处理结论',
  `fState` varchar(32) DEFAULT NULL COMMENT '处理状态编码',
  `fStateName` varchar(32) DEFAULT NULL COMMENT '处理状态',
  `fCreateOgnID` varchar(36) DEFAULT NULL COMMENT '提交机构ID',
  `fCreateOgnName` varchar(64) DEFAULT NULL COMMENT '提交机构',
  `fCreateDeptID` varchar(36) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(64) DEFAULT NULL COMMENT '提交部门',
  `fCreatePosID` varchar(36) DEFAULT NULL COMMENT '提交岗位ID',
  `fCreatePosName` varchar(64) DEFAULT NULL COMMENT '提交岗位',
  `fCreatePsnID` varchar(36) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(64) DEFAULT NULL COMMENT '提交人员',
  `fCreatePsnFID` varchar(1024) DEFAULT NULL COMMENT '提交人员FullID',
  `fCreatePsnFName` varchar(1024) DEFAULT NULL COMMENT '提交人员FullName',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fUpdatePsnID` varchar(36) DEFAULT NULL COMMENT '修改人员ID',
  `fUpdatePsnName` varchar(64) DEFAULT NULL COMMENT '修改人员',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_mt_budgetapplyexecute
-- ----------------------------

-- ----------------------------
-- Table structure for oa_mt_roomarrange
-- ----------------------------
DROP TABLE IF EXISTS `oa_mt_roomarrange`;
CREATE TABLE `oa_mt_roomarrange` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fUseOgnId` varchar(100) DEFAULT NULL COMMENT '使用机构ID',
  `fUseOrgName` varchar(100) DEFAULT NULL COMMENT '使用机构',
  `fUseDeptID` varchar(100) DEFAULT NULL COMMENT '使用部门ID',
  `fUseDeptName` varchar(100) DEFAULT NULL COMMENT '使用部门',
  `fUsePsnID` varchar(100) DEFAULT NULL COMMENT '使用人ID',
  `fUsePsnName` varchar(100) DEFAULT NULL COMMENT '使用人',
  `fUsePsnFID` varchar(100) DEFAULT NULL COMMENT '使用人FID',
  `fUsePsnFName` varchar(100) DEFAULT NULL COMMENT '使用人FName',
  `fBoardroomID` varchar(100) DEFAULT NULL COMMENT '会议室ID',
  `fBoardroom` varchar(100) DEFAULT NULL COMMENT '会议室',
  `fMeetName` varchar(100) DEFAULT NULL COMMENT '会议主题',
  `fMeetPsns` varchar(100) DEFAULT NULL COMMENT '参会人员',
  `fMeetPsnNum` int(11) DEFAULT NULL COMMENT '参会人数',
  `fBeginTime` datetime DEFAULT NULL COMMENT '开始时间',
  `fEndTime` datetime DEFAULT NULL COMMENT '结束时间',
  `fPhone` varchar(100) DEFAULT NULL COMMENT '电话',
  `fArrOgnID` varchar(100) DEFAULT NULL COMMENT '安排机构',
  `fArrOgnName` varchar(100) DEFAULT NULL COMMENT '安排机构名称',
  `fArrDeptID` varchar(100) DEFAULT NULL COMMENT '安排部门ID',
  `fArrDeptName` varchar(100) DEFAULT NULL COMMENT '安排部门',
  `fArrPsnFID` varchar(100) DEFAULT NULL COMMENT '安排人FID',
  `fArrPsnFName` varchar(100) DEFAULT NULL COMMENT '安排人FName',
  `fArrTime` datetime DEFAULT NULL COMMENT '安排时间',
  `fDescription` varchar(100) DEFAULT NULL COMMENT '描述',
  `fEffect` int(11) DEFAULT NULL COMMENT '是否有效',
  `fMTUseApplyID` varchar(100) DEFAULT NULL COMMENT '会议室申请ID',
  `fArrPsnID` varchar(100) DEFAULT NULL COMMENT '安排人ID',
  `fArrPsnName` varchar(100) DEFAULT NULL COMMENT '安排人',
  `fRemark` varchar(100) DEFAULT NULL COMMENT '备注',
  `fOutPsns` varchar(100) DEFAULT NULL COMMENT '外部参会人员',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_mt_roomarrange
-- ----------------------------

-- ----------------------------
-- Table structure for oa_mt_summary
-- ----------------------------
DROP TABLE IF EXISTS `oa_mt_summary`;
CREATE TABLE `oa_mt_summary` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fArrangeID` varchar(100) DEFAULT NULL COMMENT '会议安排ID',
  `fCompereID` varchar(100) DEFAULT NULL COMMENT '主持人ID',
  `fCompere` varchar(100) DEFAULT NULL COMMENT '主持人',
  `fMeetName` varchar(100) DEFAULT NULL COMMENT '会议主题',
  `fBeginTime` datetime DEFAULT NULL COMMENT '开始时间',
  `fEndTime` datetime DEFAULT NULL COMMENT '结束时间',
  `fMeetPsns` varchar(100) DEFAULT NULL COMMENT '参会人员',
  `fMeetPsnNum` int(11) DEFAULT NULL COMMENT '参会人数',
  `fContent` varchar(100) DEFAULT NULL COMMENT '内容',
  `fAttachment` varchar(100) DEFAULT NULL COMMENT '附件',
  `fIssueRange` varchar(100) DEFAULT NULL COMMENT '发布范围',
  `fIssueState` varchar(100) DEFAULT NULL COMMENT '状态',
  `fIssueStateName` varchar(100) DEFAULT NULL COMMENT '状态名称',
  `fCreateOgnID` varchar(100) DEFAULT NULL COMMENT '提交机构ID',
  `fCreateOgnName` varchar(100) DEFAULT NULL COMMENT '提交机构',
  `fCreateDeptID` varchar(100) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(100) DEFAULT NULL COMMENT '提交部门',
  `fCreatePsnID` varchar(100) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(100) DEFAULT NULL COMMENT '提交人员',
  `fCreatePsnFID` varchar(100) DEFAULT NULL COMMENT '提交人员FID',
  `fCreatePsnFName` varchar(100) DEFAULT NULL COMMENT '提交人员FName',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fBoardroomID` varchar(100) DEFAULT NULL COMMENT '会议室ID',
  `fBoardroom` varchar(100) DEFAULT NULL COMMENT '会议室',
  `fUseOgnId` varchar(100) DEFAULT NULL COMMENT '使用机构ID',
  `fUseOrgName` varchar(100) DEFAULT NULL COMMENT '使用机构',
  `fUseDeptID` varchar(100) DEFAULT NULL COMMENT '使用部门ID',
  `fUseDeptName` varchar(100) DEFAULT NULL COMMENT '使用部门',
  `fUsePsnID` varchar(100) DEFAULT NULL COMMENT '使用人',
  `fUsePsnName` varchar(100) DEFAULT NULL COMMENT '使用人',
  `fUsePsnFID` varchar(100) DEFAULT NULL COMMENT '使用人FID',
  `fUsePsnFName` varchar(100) DEFAULT NULL COMMENT '使用人FName',
  `fUpdatePsnID` varchar(100) DEFAULT NULL COMMENT '修改人员ID',
  `fUpdatePsnName` varchar(100) DEFAULT NULL COMMENT '修改人员',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `fRemark` varchar(100) DEFAULT NULL COMMENT '备注',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_mt_summary
-- ----------------------------

-- ----------------------------
-- Table structure for oa_mt_summaryissue
-- ----------------------------
DROP TABLE IF EXISTS `oa_mt_summaryissue`;
CREATE TABLE `oa_mt_summaryissue` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fMasterID` varchar(100) DEFAULT NULL COMMENT '会议纪要ID',
  `fOrgKind` varchar(100) DEFAULT NULL COMMENT '组织类型',
  `fOrgID` varchar(100) DEFAULT NULL COMMENT '组织ID',
  `fOrgName` varchar(100) DEFAULT NULL COMMENT '组织名称',
  `fPersonID` varchar(100) DEFAULT NULL COMMENT '人员ID',
  `fPersonName` varchar(100) DEFAULT NULL COMMENT '人员',
  `fRangeURL` varchar(100) DEFAULT NULL COMMENT '组织机构全路径',
  `fRangeURLName` varchar(100) DEFAULT NULL COMMENT '组织机构全称',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_mt_summaryissue
-- ----------------------------

-- ----------------------------
-- Table structure for oa_mt_useapply
-- ----------------------------
DROP TABLE IF EXISTS `oa_mt_useapply`;
CREATE TABLE `oa_mt_useapply` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fNO` varchar(100) DEFAULT NULL COMMENT '单据号',
  `fApplyOgnID` varchar(100) DEFAULT NULL COMMENT '申请机构ID',
  `fApplyOgnName` varchar(100) DEFAULT NULL COMMENT '申请机构',
  `fApplyDeptName` varchar(100) DEFAULT NULL COMMENT '申请部门',
  `fApplyPsnID` varchar(100) DEFAULT NULL COMMENT '申请人员ID',
  `fApplyPsnName` varchar(100) DEFAULT NULL COMMENT '申请人员',
  `fApplyPsnFID` varchar(100) DEFAULT NULL COMMENT '申请人员FullID',
  `fApplyPsnFName` varchar(100) DEFAULT NULL COMMENT '申请人员FullName',
  `fApplyDate` datetime DEFAULT NULL COMMENT '申请日期',
  `fMeetName` varchar(100) DEFAULT NULL COMMENT '会议主题',
  `fMeetPsns` varchar(100) DEFAULT NULL COMMENT '参会人员',
  `fMeetPsnNum` int(11) DEFAULT NULL COMMENT '参会人数',
  `fBoardroomID` varchar(100) DEFAULT NULL COMMENT '会议室ID',
  `fBoardroom` varchar(100) DEFAULT NULL COMMENT '会议室',
  `fBeginTime` datetime DEFAULT NULL COMMENT '开始时间',
  `fEndTime` datetime DEFAULT NULL COMMENT '结束时间',
  `fPhone` varchar(100) DEFAULT NULL COMMENT '电话',
  `fDescription` varchar(100) DEFAULT NULL COMMENT '描述',
  `fArrBoardroomID` varchar(100) DEFAULT NULL COMMENT '安排会议室ID',
  `fArrBoardroom` varchar(100) DEFAULT NULL COMMENT '安排会议室',
  `fArrBeginTime` datetime DEFAULT NULL COMMENT '安排开始时间',
  `fArrEndTime` datetime DEFAULT NULL COMMENT '安排结束时间',
  `fArrOgnID` varchar(100) DEFAULT NULL COMMENT '安排机构',
  `fArrOgnName` varchar(100) DEFAULT NULL COMMENT '安排机构名称',
  `fArrDeptID` varchar(100) DEFAULT NULL COMMENT '安排部门ID',
  `fArrDeptName` varchar(100) DEFAULT NULL COMMENT '安排人',
  `fArrPsnID` varchar(100) DEFAULT NULL COMMENT '安排人ID',
  `fArrPsnName` varchar(100) DEFAULT NULL COMMENT '安排人',
  `fArrPsnFID` varchar(100) DEFAULT NULL COMMENT '安排人FID',
  `fArrPsnFName` varchar(100) DEFAULT NULL COMMENT '安排人FName',
  `fArrTime` datetime DEFAULT NULL COMMENT '安排时间',
  `fArrRemark` varchar(100) DEFAULT NULL COMMENT '安排备注',
  `fBizState` varchar(100) DEFAULT NULL COMMENT '业务流程状态编码',
  `fBizStateName` varchar(100) DEFAULT NULL COMMENT '业务流程状态',
  `fCreateOgnID` varchar(100) DEFAULT NULL COMMENT '提交机构ID',
  `fCreateOgnName` varchar(100) DEFAULT NULL COMMENT '提交机构',
  `fCreateDeptID` varchar(100) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(100) DEFAULT NULL COMMENT '提交部门',
  `fCreatePosID` varchar(100) DEFAULT NULL COMMENT '提交岗位ID',
  `fCreatePosName` varchar(100) DEFAULT NULL COMMENT '提交岗位',
  `fCreatePsnID` varchar(100) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(100) DEFAULT NULL COMMENT '提交人员',
  `fCreatePsnFID` varchar(100) DEFAULT NULL COMMENT '提交人员FullID',
  `fCreatePsnFName` varchar(100) DEFAULT NULL COMMENT '提交人员FullName',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fUpdatePsnID` varchar(100) DEFAULT NULL COMMENT '修改人员ID',
  `fUpdatePsnName` varchar(100) DEFAULT NULL COMMENT '修改人员',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `fRemark` varchar(100) DEFAULT NULL COMMENT '备注',
  `fApplyDeptID` varchar(100) DEFAULT NULL COMMENT '申请部门ID',
  `fCurrentActivities` varchar(100) DEFAULT NULL COMMENT '当前环节',
  `fCurrentExecutors` varchar(100) DEFAULT NULL COMMENT '当前执行者',
  `fOutPsns` varchar(100) DEFAULT NULL COMMENT '外部参会人员',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_mt_useapply
-- ----------------------------

-- ----------------------------
-- Table structure for oa_mt_useapplypsns
-- ----------------------------
DROP TABLE IF EXISTS `oa_mt_useapplypsns`;
CREATE TABLE `oa_mt_useapplypsns` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fMasterID` varchar(100) DEFAULT NULL COMMENT '主数据ID',
  `fOrgKind` varchar(100) DEFAULT NULL COMMENT '组织类型',
  `fOrgID` varchar(100) DEFAULT NULL COMMENT '组织ID',
  `fOrgName` varchar(100) DEFAULT NULL COMMENT '组织名称',
  `fPersonID` varchar(100) DEFAULT NULL COMMENT '人员ID',
  `fPersonName` varchar(100) DEFAULT NULL COMMENT '人员',
  `fRangeURL` varchar(100) DEFAULT NULL COMMENT '参会人员全路径',
  `fRangeURLName` varchar(100) DEFAULT NULL COMMENT '参会人员全路径名称',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_mt_useapplypsns
-- ----------------------------

-- ----------------------------
-- Table structure for oa_osc_baseinfo
-- ----------------------------
DROP TABLE IF EXISTS `oa_osc_baseinfo`;
CREATE TABLE `oa_osc_baseinfo` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fCode` varchar(64) DEFAULT NULL COMMENT '编码',
  `fName` varchar(64) DEFAULT NULL COMMENT '名称',
  `fSpecType` varchar(64) DEFAULT NULL COMMENT '规格型号',
  `fPrice` decimal(10,0) DEFAULT NULL COMMENT '单价',
  `fKindID` varchar(36) DEFAULT NULL COMMENT '类别ID',
  `fKindName` varchar(64) DEFAULT NULL COMMENT '类别',
  `fUnitID` varchar(36) DEFAULT NULL COMMENT '计量单位ID',
  `fUnitName` varchar(64) DEFAULT NULL COMMENT '计量单位',
  `fStock` int(11) DEFAULT NULL COMMENT '库存数量',
  `fUseStatus` varchar(100) DEFAULT NULL COMMENT '启用标识',
  `fUseStatusName` varchar(36) DEFAULT NULL COMMENT '启用标识',
  `fDescription` varchar(255) DEFAULT NULL COMMENT '描述',
  `fCreateOgnID` varchar(65) DEFAULT NULL COMMENT '提交机构ID',
  `fCreateOgnName` varchar(64) DEFAULT NULL COMMENT '提交机构',
  `fCreateDeptID` varchar(65) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(64) DEFAULT NULL COMMENT '提交部门',
  `fCreatePosID` varchar(36) DEFAULT NULL COMMENT '提交岗位ID',
  `fCreatePosName` varchar(64) DEFAULT NULL COMMENT '提交岗位',
  `fCreatePsnID` varchar(65) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(128) DEFAULT NULL COMMENT '提交人员',
  `fCreatePsnFID` varchar(512) DEFAULT NULL COMMENT '提交人员FullID',
  `fCreatePsnFName` varchar(1024) DEFAULT NULL COMMENT '提交人员FullName',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fUpdatePsnID` varchar(65) DEFAULT NULL COMMENT '修改人员ID',
  `fUpdatePsnName` varchar(128) DEFAULT NULL COMMENT '修改人员',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_osc_baseinfo
-- ----------------------------

-- ----------------------------
-- Table structure for oa_osc_buyapplyd
-- ----------------------------
DROP TABLE IF EXISTS `oa_osc_buyapplyd`;
CREATE TABLE `oa_osc_buyapplyd` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fMasterID` varchar(36) DEFAULT NULL COMMENT '主数据ID',
  `fItemID` varchar(36) DEFAULT NULL COMMENT '办公用品ID',
  `fName` varchar(64) DEFAULT NULL COMMENT '名称',
  `fCode` varchar(64) DEFAULT NULL COMMENT '编码',
  `fSpecType` varchar(64) DEFAULT NULL COMMENT '规格型号',
  `fKindID` varchar(36) DEFAULT NULL COMMENT '类别ID',
  `fKindName` varchar(64) DEFAULT NULL COMMENT '类别',
  `fUnitID` varchar(36) DEFAULT NULL COMMENT '计量单位ID',
  `fUnitName` varchar(64) DEFAULT NULL COMMENT '计量单位',
  `fConsultPrice` decimal(10,0) DEFAULT NULL COMMENT '参考单价',
  `fFactPrice` decimal(10,0) DEFAULT NULL COMMENT '实际单价',
  `fDemandNum` int(11) DEFAULT NULL COMMENT '需求数量',
  `fApprovalNum` int(11) DEFAULT NULL COMMENT '审批数量',
  `fFactNum` int(11) DEFAULT NULL COMMENT '实际数量',
  `fConsultAmount` decimal(10,0) DEFAULT NULL COMMENT '参考金额',
  `fFactAmount` decimal(10,0) DEFAULT NULL COMMENT '实际金额',
  `fRemark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_osc_buyapplyd
-- ----------------------------

-- ----------------------------
-- Table structure for oa_osc_buyapplym
-- ----------------------------
DROP TABLE IF EXISTS `oa_osc_buyapplym`;
CREATE TABLE `oa_osc_buyapplym` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fNO` varchar(64) DEFAULT NULL COMMENT '单据号',
  `fBizState` varchar(36) DEFAULT NULL COMMENT '业务流程状态编码',
  `fBizStateName` varchar(36) DEFAULT NULL COMMENT '业务流程状态',
  `fConsultAmount` decimal(10,0) DEFAULT NULL COMMENT '参考金额',
  `fApplyReason` varchar(100) DEFAULT NULL COMMENT '申请原因',
  `fRemark` varchar(100) DEFAULT NULL COMMENT '备注',
  `fApplyOgnID` varchar(36) DEFAULT NULL COMMENT '申请机构ID',
  `fApplyOgnName` varchar(64) DEFAULT NULL COMMENT '申请机构',
  `fApplyDeptID` varchar(36) DEFAULT NULL COMMENT '申请部门ID',
  `fApplyDeptName` varchar(64) DEFAULT NULL COMMENT '申请部门',
  `fApplyPosID` varchar(36) DEFAULT NULL COMMENT '申请岗位ID',
  `fApplyPosName` varchar(64) DEFAULT NULL COMMENT '申请岗位',
  `fApplyPsnID` varchar(36) DEFAULT NULL COMMENT '申请人员ID',
  `fApplyPsnName` varchar(128) DEFAULT NULL COMMENT '申请人员',
  `fApplyPsnFID` varchar(512) DEFAULT NULL COMMENT '申请人员FullID',
  `fApplyPsnFName` varchar(1024) DEFAULT NULL COMMENT '申请人员FullName',
  `fApplyDate` date DEFAULT NULL COMMENT '申请日期',
  `fCreateOgnID` varchar(36) DEFAULT NULL COMMENT '提交机构ID',
  `fCreateOgnName` varchar(64) DEFAULT NULL COMMENT '提交机构',
  `fCreateDeptID` varchar(36) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(64) DEFAULT NULL COMMENT '提交部门',
  `fCreatePosID` varchar(36) DEFAULT NULL COMMENT '提交岗位ID',
  `fCreatePosName` varchar(64) DEFAULT NULL COMMENT '提交岗位',
  `fCreatePsnID` varchar(36) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(128) DEFAULT NULL COMMENT '提交人员',
  `fCreatePsnFID` varchar(512) DEFAULT NULL COMMENT '提交人员FullID',
  `fCreatePsnFName` varchar(1024) DEFAULT NULL COMMENT '提交人员FullName',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fUpdatePsnID` varchar(36) DEFAULT NULL COMMENT '修改人员ID',
  `fUpdatePsnName` varchar(128) DEFAULT NULL COMMENT '修改人员',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `fCurrentActivities` varchar(128) DEFAULT NULL COMMENT '当前环节',
  `fCurrentExecutors` varchar(128) DEFAULT NULL COMMENT '当前执行者',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_osc_buyapplym
-- ----------------------------

-- ----------------------------
-- Table structure for oa_osc_useapplyd
-- ----------------------------
DROP TABLE IF EXISTS `oa_osc_useapplyd`;
CREATE TABLE `oa_osc_useapplyd` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fMasterID` varchar(36) DEFAULT NULL COMMENT '主数据ID',
  `fItemID` varchar(36) DEFAULT NULL COMMENT '办公用品ID',
  `fCode` varchar(64) DEFAULT NULL COMMENT '编码',
  `fName` varchar(64) DEFAULT NULL COMMENT '名称',
  `fKindID` varchar(36) DEFAULT NULL COMMENT '类别ID',
  `fKindName` varchar(64) DEFAULT NULL COMMENT '类别',
  `fUnitID` varchar(36) DEFAULT NULL COMMENT '计量单位ID',
  `fUnitName` varchar(64) DEFAULT NULL COMMENT '计量单位',
  `fSpecType` varchar(64) DEFAULT NULL COMMENT '规格型号',
  `fConsultPrice` decimal(10,0) DEFAULT NULL COMMENT '参考单价',
  `fDemandNum` int(11) DEFAULT NULL COMMENT '需求数量',
  `fConsultAmount` decimal(10,0) DEFAULT NULL COMMENT '参考金额',
  `fFactPrice` decimal(10,0) DEFAULT NULL COMMENT '实际单价',
  `fFactNum` int(11) DEFAULT NULL COMMENT '实际数量',
  `fFactAmount` decimal(10,0) DEFAULT NULL COMMENT '实际金额',
  `fRemark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_osc_useapplyd
-- ----------------------------

-- ----------------------------
-- Table structure for oa_osc_useapplym
-- ----------------------------
DROP TABLE IF EXISTS `oa_osc_useapplym`;
CREATE TABLE `oa_osc_useapplym` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fNO` varchar(64) DEFAULT NULL COMMENT '单据号',
  `fBizState` varchar(36) DEFAULT NULL COMMENT '业务流程状态编码',
  `fBizStateName` varchar(36) DEFAULT NULL COMMENT '业务流程状态',
  `fConsultAmount` decimal(10,0) DEFAULT NULL COMMENT '参考金额',
  `fFactAmount` decimal(10,0) DEFAULT NULL COMMENT '实际金额',
  `fDemandDate` date DEFAULT NULL COMMENT '需求日期',
  `fApplyReason` varchar(100) DEFAULT NULL COMMENT '申请原因',
  `fProvideState` int(11) DEFAULT NULL COMMENT '发放状态',
  `fProvideStateName` varchar(36) DEFAULT NULL COMMENT '发放状态',
  `fRemark` varchar(100) DEFAULT NULL COMMENT '备注',
  `fApplyOgnID` varchar(36) DEFAULT NULL COMMENT '申请机构ID',
  `fApplyOgnName` varchar(64) DEFAULT NULL COMMENT '申请机构',
  `fApplyDeptID` varchar(36) DEFAULT NULL COMMENT '申请部门ID',
  `fApplyDeptName` varchar(64) DEFAULT NULL COMMENT '申请部门',
  `fApplyPosID` varchar(36) DEFAULT NULL COMMENT '申请岗位ID',
  `fApplyPosName` varchar(64) DEFAULT NULL COMMENT '申请岗位',
  `fApplyPsnID` varchar(36) DEFAULT NULL COMMENT '申请人员ID',
  `fApplyPsnName` varchar(128) DEFAULT NULL COMMENT '申请人员',
  `fApplyPsnFID` varchar(512) DEFAULT NULL COMMENT '申请人员FullID',
  `fApplyPsnFName` varchar(1024) DEFAULT NULL COMMENT '申请人员FullName',
  `fApplyDate` date DEFAULT NULL COMMENT '申请日期',
  `fCreateOgnID` varchar(36) DEFAULT NULL COMMENT '提交机构ID',
  `fCreateOgnName` varchar(64) DEFAULT NULL COMMENT '提交机构',
  `fCreateDeptID` varchar(36) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(64) DEFAULT NULL COMMENT '提交部门',
  `fCreatePosID` varchar(36) DEFAULT NULL COMMENT '提交岗位ID',
  `fCreatePosName` varchar(64) DEFAULT NULL COMMENT '提交岗位',
  `fCreatePsnID` varchar(36) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(128) DEFAULT NULL COMMENT '提交人员',
  `fCreatePsnFID` varchar(512) DEFAULT NULL COMMENT '提交人员FullID',
  `fCreatePsnFName` varchar(1024) DEFAULT NULL COMMENT '提交人员FullName',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fUpdatePsnID` varchar(36) DEFAULT NULL COMMENT '修改人员ID',
  `fUpdatePsnName` varchar(128) DEFAULT NULL COMMENT '修改人员',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `fCurrentActivities` varchar(128) DEFAULT NULL COMMENT '当前环节',
  `fCurrentExecutors` varchar(128) DEFAULT NULL COMMENT '当前执行者',
  `fIsProcess` varchar(36) DEFAULT NULL COMMENT '流程标识',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_osc_useapplym
-- ----------------------------

-- ----------------------------
-- Table structure for oa_participateattendanceperson
-- ----------------------------
DROP TABLE IF EXISTS `oa_participateattendanceperson`;
CREATE TABLE `oa_participateattendanceperson` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fAttendanceAdminID` varchar(100) DEFAULT NULL COMMENT '考勤管理ID',
  `fPersonID` varchar(100) DEFAULT NULL COMMENT '参与考勤人员ID',
  `fPersonName` varchar(100) DEFAULT NULL COMMENT '参与考勤人员',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_participateattendanceperson
-- ----------------------------

-- ----------------------------
-- Table structure for oa_pub_execute
-- ----------------------------
DROP TABLE IF EXISTS `oa_pub_execute`;
CREATE TABLE `oa_pub_execute` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fMasterID` varchar(100) DEFAULT NULL COMMENT '主数据ID',
  `fTaskID` varchar(100) DEFAULT NULL COMMENT '任务ID',
  `fActivityFName` varchar(100) DEFAULT NULL COMMENT '环节路径',
  `fActivityLabel` varchar(100) DEFAULT NULL COMMENT '环节名称',
  `fOpinion` varchar(100) DEFAULT NULL COMMENT '处理意见',
  `fVerdict` varchar(100) DEFAULT NULL COMMENT '处理结论',
  `fState` varchar(100) DEFAULT NULL COMMENT '处理状态编码',
  `fStateName` varchar(100) DEFAULT NULL COMMENT '处理状态',
  `fCreateOgnID` varchar(100) DEFAULT NULL COMMENT '提交机构ID',
  `fCreateOgnName` varchar(100) DEFAULT NULL COMMENT '提交机构',
  `fCreateDeptID` varchar(100) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(100) DEFAULT NULL COMMENT '提交部门',
  `fCreatePosID` varchar(100) DEFAULT NULL COMMENT '提交岗位ID',
  `fCreatePosName` varchar(100) DEFAULT NULL COMMENT '提交岗位',
  `fCreatePsnID` varchar(100) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(100) DEFAULT NULL COMMENT '提交人员',
  `fCreatePsnFID` varchar(100) DEFAULT NULL COMMENT '提交人员FullID',
  `fCreatePsnFName` varchar(100) DEFAULT NULL COMMENT '提交人员FullName',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fUpdatePsnID` varchar(100) DEFAULT NULL COMMENT '修改人员ID',
  `fUpdatePsnName` varchar(100) DEFAULT NULL COMMENT '修改人员',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fBizKind` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_pub_execute
-- ----------------------------

-- ----------------------------
-- Table structure for oa_qn_answer
-- ----------------------------
DROP TABLE IF EXISTS `oa_qn_answer`;
CREATE TABLE `oa_qn_answer` (
  `fID` varchar(50) NOT NULL COMMENT '主键',
  `version` int(11) DEFAULT NULL,
  `fQuestionnaireID` varchar(50) DEFAULT NULL COMMENT '问卷主键',
  `fQuestionID` varchar(50) DEFAULT NULL COMMENT '题目主键',
  `fAnswerText` varchar(200) DEFAULT NULL COMMENT '填空等答案',
  `fOptionID` varchar(200) DEFAULT NULL COMMENT '选项ID',
  `fScope` smallint(6) DEFAULT NULL COMMENT '所打分数',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_qn_answer
-- ----------------------------

-- ----------------------------
-- Table structure for oa_qn_author
-- ----------------------------
DROP TABLE IF EXISTS `oa_qn_author`;
CREATE TABLE `oa_qn_author` (
  `fID` varchar(50) NOT NULL,
  `version` int(11) NOT NULL,
  `fAuthorID` varchar(100) NOT NULL COMMENT '答卷人ID',
  `fAuthorName` varchar(100) DEFAULT NULL COMMENT '答卷人姓名',
  `fSubmitTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fQuestionnaireID` varchar(100) NOT NULL COMMENT '问卷ID',
  `fQuesStatus` int(11) NOT NULL COMMENT '是否回答（0：未答，1：已答）',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_qn_author
-- ----------------------------

-- ----------------------------
-- Table structure for oa_qn_option
-- ----------------------------
DROP TABLE IF EXISTS `oa_qn_option`;
CREATE TABLE `oa_qn_option` (
  `fID` varchar(50) NOT NULL COMMENT '主键',
  `version` int(11) NOT NULL DEFAULT '0',
  `fQuestionnaireID` varchar(50) NOT NULL COMMENT '问卷ID',
  `fQuestionID` varchar(50) NOT NULL COMMENT '题目主键',
  `fOptionTile` varchar(100) NOT NULL COMMENT '选项标题',
  `fOrder` tinyint(4) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_qn_option
-- ----------------------------

-- ----------------------------
-- Table structure for oa_qn_question
-- ----------------------------
DROP TABLE IF EXISTS `oa_qn_question`;
CREATE TABLE `oa_qn_question` (
  `fID` varchar(50) NOT NULL COMMENT '主键',
  `version` int(11) NOT NULL DEFAULT '0',
  `fQuestionnaireID` varchar(50) NOT NULL DEFAULT '0' COMMENT '问卷主键ID',
  `fQuestionTypeId` varchar(50) NOT NULL COMMENT '问题类型名称',
  `fQuestionTile` varchar(100) DEFAULT NULL COMMENT '问题题目',
  `fMaxSelectCount` tinyint(4) DEFAULT NULL COMMENT '多选题是最多选择几项',
  `fQuestionScore` int(11) DEFAULT NULL COMMENT '打分题的总分值',
  `fAnswerCount` int(11) NOT NULL COMMENT '回答的次数',
  `fMustAnswer` tinyint(4) NOT NULL COMMENT '是否必须回答',
  `fOrder` smallint(6) DEFAULT NULL COMMENT '问题的顺序',
  `fImgUrl` varchar(128) DEFAULT NULL COMMENT '问题图片',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_qn_question
-- ----------------------------

-- ----------------------------
-- Table structure for oa_qn_questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `oa_qn_questionnaire`;
CREATE TABLE `oa_qn_questionnaire` (
  `fID` varchar(100) NOT NULL COMMENT '主键',
  `version` int(11) NOT NULL COMMENT '版本控制',
  `fTile` varchar(100) NOT NULL COMMENT '问卷名称',
  `fWelcome` varchar(100) NOT NULL COMMENT '问卷欢迎词',
  `fState` tinyint(4) NOT NULL DEFAULT '0' COMMENT '问卷状态；0未发布；1已发布',
  `fAnswerCount` int(11) NOT NULL DEFAULT '0' COMMENT '答卷人数',
  `fCreatePsnID` varchar(100) NOT NULL COMMENT '创建人ID',
  `fCreatePsnName` varchar(100) NOT NULL COMMENT '创建人Name',
  `fCreatePsnFID` varchar(100) NOT NULL COMMENT '创建人FID',
  `fCreatePsnFName` varchar(100) NOT NULL COMMENT '创建人FName',
  `fCreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fUpdatePsnID` varchar(100) NOT NULL COMMENT '修改人ID',
  `fUpdatePsnName` varchar(100) NOT NULL COMMENT '修改人Name',
  `fUpdatePsnFID` varchar(100) NOT NULL COMMENT '修改人FID',
  `fUpdatePsnFName` varchar(100) NOT NULL COMMENT '修改人FName',
  `fUpdateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `fRangeID` varchar(50) DEFAULT NULL COMMENT '发布范围的人员',
  PRIMARY KEY (`fID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_qn_questionnaire
-- ----------------------------

-- ----------------------------
-- Table structure for oa_sd_especialscheduleperson
-- ----------------------------
DROP TABLE IF EXISTS `oa_sd_especialscheduleperson`;
CREATE TABLE `oa_sd_especialscheduleperson` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fExecutorID` varchar(100) DEFAULT NULL COMMENT '执行人',
  `fExecutorName` varchar(100) DEFAULT NULL COMMENT '执行人姓名',
  `fOrderNum` int(11) DEFAULT NULL COMMENT '顺序号',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_sd_especialscheduleperson
-- ----------------------------

-- ----------------------------
-- Table structure for oa_sd_executor
-- ----------------------------
DROP TABLE IF EXISTS `oa_sd_executor`;
CREATE TABLE `oa_sd_executor` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fMasterID` varchar(100) DEFAULT NULL COMMENT '业务外键',
  `fExecutorID` varchar(100) DEFAULT NULL COMMENT '执行人',
  `fExecutorName` varchar(100) DEFAULT NULL COMMENT '执行人姓名',
  `fRemark` varchar(100) DEFAULT NULL COMMENT '备注',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_sd_executor
-- ----------------------------

-- ----------------------------
-- Table structure for oa_sd_schedule
-- ----------------------------
DROP TABLE IF EXISTS `oa_sd_schedule`;
CREATE TABLE `oa_sd_schedule` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fTitle` varchar(100) DEFAULT NULL COMMENT '主题',
  `fBeginDatePart` date DEFAULT NULL COMMENT '开始时间日期部分',
  `fBeginTimePart` varchar(100) DEFAULT NULL COMMENT '开始时间时间部分',
  `fBeginTime` datetime DEFAULT NULL COMMENT '开始时间',
  `fEndDatePart` date DEFAULT NULL COMMENT '结束时间日期部分',
  `fEndTimePart` varchar(100) DEFAULT NULL COMMENT '结束时间时间部分',
  `fEndTime` datetime DEFAULT NULL COMMENT '结束时间',
  `fContent` varchar(100) DEFAULT NULL COMMENT '内容',
  `fExecutors` varchar(100) DEFAULT NULL COMMENT '执行人',
  `fIsShared` int(11) DEFAULT NULL COMMENT '是否公开',
  `fIsRemind` int(11) DEFAULT NULL COMMENT '是否提醒',
  `fRemindDatePart` date DEFAULT NULL COMMENT '提醒时间日期部分',
  `fRemindTimePart` varchar(100) DEFAULT NULL COMMENT '提醒时间时间部分',
  `fRemindTime` datetime DEFAULT NULL COMMENT '提醒时间',
  `fCreatePsnID` varchar(100) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(100) DEFAULT NULL COMMENT '提交人员',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fCreateURL` varchar(100) DEFAULT NULL COMMENT '创建人路径',
  `fBizID` varchar(100) DEFAULT NULL COMMENT '业务ID',
  `fBizType` varchar(100) DEFAULT NULL COMMENT '业务类型',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fIsOutSide` varchar(36) DEFAULT NULL COMMENT '是否外出',
  `fTimePeriod` varchar(100) DEFAULT NULL COMMENT '日程时间段',
  `fScheDay` varchar(100) DEFAULT NULL COMMENT '日程日',
  `fIsTitle` varchar(100) DEFAULT NULL COMMENT '是否标题',
  `fScheID` varchar(100) DEFAULT NULL COMMENT '日程ID',
  `fScope` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_sd_schedule
-- ----------------------------

-- ----------------------------
-- Table structure for oa_sd_scheduleesp
-- ----------------------------
DROP TABLE IF EXISTS `oa_sd_scheduleesp`;
CREATE TABLE `oa_sd_scheduleesp` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fTitle` varchar(100) DEFAULT NULL COMMENT '主题',
  `fBeginDatePart` date DEFAULT NULL COMMENT '开始时间日期部分',
  `fBeginTimePart` varchar(100) DEFAULT NULL COMMENT '开始时间时间部分',
  `fBeginTime` datetime DEFAULT NULL COMMENT '开始时间',
  `fEndDatePart` date DEFAULT NULL COMMENT '结束时间日期部分',
  `fEndTimePart` varchar(100) DEFAULT NULL COMMENT '结束时间时间部分',
  `fEndTime` datetime DEFAULT NULL COMMENT '结束时间',
  `fContent` varchar(100) DEFAULT NULL COMMENT '内容',
  `fExecutors` varchar(100) DEFAULT NULL COMMENT '执行人',
  `fIsShared` int(11) DEFAULT NULL COMMENT '是否公开',
  `fIsRemind` int(11) DEFAULT NULL COMMENT '是否提醒',
  `fRemindDatePart` date DEFAULT NULL COMMENT '提醒时间日期部分',
  `fRemindTimePart` varchar(100) DEFAULT NULL COMMENT '提醒时间时间部分',
  `fRemindTime` datetime DEFAULT NULL COMMENT '提醒时间',
  `fCreatePsnID` varchar(100) DEFAULT NULL COMMENT '提交人员ID',
  `fCreatePsnName` varchar(100) DEFAULT NULL COMMENT '提交人员',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fCreateURL` varchar(1000) DEFAULT NULL COMMENT '创建人路径',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_sd_scheduleesp
-- ----------------------------

-- ----------------------------
-- Table structure for oa_sd_sharerange
-- ----------------------------
DROP TABLE IF EXISTS `oa_sd_sharerange`;
CREATE TABLE `oa_sd_sharerange` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fShareType` int(11) DEFAULT NULL COMMENT '共享类型',
  `fSharedOrgKindID` varchar(100) DEFAULT NULL COMMENT '共享组织类型',
  `fSharedOrgID` varchar(100) DEFAULT NULL COMMENT '共享组织',
  `fSharedOrgName` varchar(100) DEFAULT NULL COMMENT '共享组织名称',
  `fSharedOrgFID` varchar(100) DEFAULT NULL COMMENT '共享组织路径',
  `fSharedOrgFName` varchar(100) DEFAULT NULL COMMENT '共享组织全称',
  `fShareToOrgKindID` varchar(100) DEFAULT NULL COMMENT '共享到组织类型',
  `fShareToOrgID` varchar(100) DEFAULT NULL COMMENT '共享到组织',
  `fShareToOrgName` varchar(100) DEFAULT NULL COMMENT '共享到组织名称',
  `fShareToOrgFID` varchar(100) DEFAULT NULL COMMENT '共享到组织路径',
  `fShareToOrgFName` varchar(100) DEFAULT NULL COMMENT '共享到组织全称',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_sd_sharerange
-- ----------------------------

-- ----------------------------
-- Table structure for oa_sign
-- ----------------------------
DROP TABLE IF EXISTS `oa_sign`;
CREATE TABLE `oa_sign` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fPersonID` varchar(100) DEFAULT NULL COMMENT '签到人',
  `fPersonName` varchar(100) DEFAULT NULL COMMENT '签到人名称',
  `fOrgID` varchar(100) DEFAULT NULL COMMENT '签到组织',
  `fOrgName` varchar(100) DEFAULT NULL COMMENT '组织名称',
  `fDeptID` varchar(100) DEFAULT NULL COMMENT '签到部门',
  `fDeptName` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `fSignTime` datetime DEFAULT NULL COMMENT '签到时间',
  `fLongitude` varchar(100) DEFAULT NULL COMMENT '经度',
  `fDimension` varchar(100) DEFAULT NULL COMMENT '纬度',
  `fSignAddress` varchar(100) DEFAULT NULL COMMENT '签到地址',
  `fRemark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `fImgURL` varchar(1024) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_sign
-- ----------------------------

-- ----------------------------
-- Table structure for oa_v_especialschedule
-- ----------------------------
DROP TABLE IF EXISTS `oa_v_especialschedule`;
CREATE TABLE `oa_v_especialschedule` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fScheduleID` varchar(36) DEFAULT NULL COMMENT '领导日程ID',
  `fTitle` varchar(1024) DEFAULT NULL COMMENT '主题',
  `fExecutorName` varchar(100) DEFAULT NULL COMMENT '执行人姓名',
  `fExecutorID` varchar(100) DEFAULT NULL COMMENT '执行人',
  `fContent` varchar(100) DEFAULT NULL COMMENT '内容',
  `fEndDatePart` date DEFAULT NULL COMMENT '结束时间日期部分',
  `fEndTime` datetime DEFAULT NULL COMMENT '结束时间',
  `fDate` date DEFAULT NULL COMMENT '日期',
  `fBeginTimePart` varchar(100) DEFAULT NULL COMMENT '开始时间时间部分',
  `fEndTimePart` varchar(100) DEFAULT NULL COMMENT '结束时间时间部分',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_v_especialschedule
-- ----------------------------

-- ----------------------------
-- Table structure for oa_wm_evemember
-- ----------------------------
DROP TABLE IF EXISTS `oa_wm_evemember`;
CREATE TABLE `oa_wm_evemember` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fDeptID` varchar(100) DEFAULT NULL COMMENT '部门ID',
  `fDeptName` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `fPositionID` varchar(100) DEFAULT NULL COMMENT '岗位',
  `fPersonName` varchar(100) DEFAULT NULL COMMENT '人员名称',
  `fOrgURL` varchar(100) DEFAULT NULL COMMENT '组织机构URL',
  `fIsNotify` varchar(100) DEFAULT NULL COMMENT '是否已经通知',
  `fNotifyMode` varchar(100) DEFAULT NULL COMMENT '通知方式',
  `fNotifyTime` varchar(100) DEFAULT NULL COMMENT '通知时间',
  `fOrgKind` varchar(100) DEFAULT NULL COMMENT '组织机构类型',
  `fPersonID` varchar(100) DEFAULT NULL COMMENT '人员ID',
  `fMasterID` varchar(100) DEFAULT NULL COMMENT '出差申请外键',
  `fExtendStr1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr4` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr5` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr7` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `fExtendStr9` varchar(1024) DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate1` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate2` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate3` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate4` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendDate5` date DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum1` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum2` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum3` decimal(15,2) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum4` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  `fExtendNum5` decimal(18,4) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_wm_evemember
-- ----------------------------

-- ----------------------------
-- Table structure for oa_wm_holiday
-- ----------------------------
DROP TABLE IF EXISTS `oa_wm_holiday`;
CREATE TABLE `oa_wm_holiday` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fName` varchar(64) DEFAULT NULL COMMENT '名称',
  `fBrefExplain` varchar(225) DEFAULT NULL COMMENT '简要说明',
  `fState` varchar(36) DEFAULT NULL COMMENT '状态编码',
  `fStateName` varchar(64) DEFAULT NULL COMMENT '状态',
  `fCreatePsnName` varchar(64) DEFAULT NULL COMMENT '提交人员',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fLeaveTypeName` varchar(64) DEFAULT NULL COMMENT '类型',
  `fLeaveTypeID` varchar(36) DEFAULT NULL COMMENT '类型',
  `fDate` date DEFAULT NULL COMMENT '日期',
  `fMultiple` int(11) DEFAULT NULL COMMENT '倍数',
  `fYear` int(11) DEFAULT NULL COMMENT '年度',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_wm_holiday
-- ----------------------------

-- ----------------------------
-- Table structure for oa_wm_leaveapply
-- ----------------------------
DROP TABLE IF EXISTS `oa_wm_leaveapply`;
CREATE TABLE `oa_wm_leaveapply` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fNO` varchar(100) DEFAULT NULL COMMENT '单据号',
  `fApplyPersonID` varchar(36) DEFAULT NULL COMMENT '申请人',
  `fApplyPersonName` varchar(64) DEFAULT NULL COMMENT '申请人',
  `fApplyDate` date DEFAULT NULL COMMENT '申请日期',
  `fApplyDeptID` varchar(36) DEFAULT NULL COMMENT '申请部门',
  `fApplyDeptName` varchar(64) DEFAULT NULL COMMENT '申请部门',
  `fDeptPath` varchar(1024) DEFAULT NULL COMMENT '部门path',
  `fURL` varchar(1024) DEFAULT NULL COMMENT '路径',
  `fLeaveReason` varchar(1024) DEFAULT NULL COMMENT '请假事由',
  `fPlanID` varchar(36) DEFAULT NULL COMMENT '计划ID',
  `fPlanName` varchar(64) DEFAULT NULL COMMENT '计划名称',
  `fProjectID` varchar(36) DEFAULT NULL COMMENT '项目ID',
  `fProjectName` varchar(64) DEFAULT NULL COMMENT '项目名称',
  `fClienterID` varchar(36) DEFAULT NULL COMMENT '客户ID',
  `fClienterName` varchar(64) DEFAULT NULL COMMENT '客户名称',
  `fStartTime` datetime DEFAULT NULL COMMENT '开始时间',
  `fEndTime` datetime DEFAULT NULL COMMENT '结束时间',
  `fLeaveDays` int(11) DEFAULT NULL COMMENT '请假天数',
  `fLeaveHours` float DEFAULT NULL COMMENT '请假小时数',
  `fLeaveTime` float DEFAULT NULL COMMENT '请假时长',
  `fLeaveTypeName` varchar(63) DEFAULT NULL COMMENT '请假类型',
  `fLeaveTypeID` varchar(36) DEFAULT NULL COMMENT '请假类型',
  `fRelationTel` varchar(36) DEFAULT NULL COMMENT '联系电话',
  `fWorkConnectPersonID` varchar(36) DEFAULT NULL COMMENT '工作暂接人',
  `fWorkConnectPersonName` varchar(64) DEFAULT NULL COMMENT '工作暂接人',
  `fWorkExplain` varchar(512) DEFAULT NULL COMMENT '工作安排说明',
  `fIsReducHoliday` int(11) DEFAULT NULL COMMENT '是否启用销假',
  `fFactStartTime` datetime DEFAULT NULL COMMENT '实际开始时间',
  `fFactEndTime` datetime DEFAULT NULL COMMENT '实际结束时间',
  `fFactDays` int(11) DEFAULT NULL COMMENT '实际天数',
  `fFactTime` float DEFAULT NULL COMMENT '实际时长',
  `fCancelHolsDeptName` varchar(64) DEFAULT NULL COMMENT '确认部门',
  `fCancelHolsPersonName` varchar(64) DEFAULT NULL COMMENT '确认人',
  `fCancelHolsDate` datetime DEFAULT NULL COMMENT '确认日期',
  `fRemark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `fCreateDeptID` varchar(36) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(64) DEFAULT NULL COMMENT '提交部门',
  `fCreatePerID` varchar(36) DEFAULT NULL COMMENT '提交人ID',
  `fCreatePerName` varchar(64) DEFAULT NULL COMMENT '提交人',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fUpdateDeptID` varchar(36) DEFAULT NULL COMMENT '修改部门ID',
  `fUpdateDeptName` varchar(64) DEFAULT NULL COMMENT '修改部门',
  `fUpdatePerID` varchar(36) DEFAULT NULL COMMENT '修改人ID',
  `fUpdatePerName` varchar(64) DEFAULT NULL COMMENT '修改人',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `fFactHours` float DEFAULT NULL COMMENT '实际小时数',
  `fBizState` varchar(36) DEFAULT NULL COMMENT '业务流程状态编码',
  `fBizStateName` varchar(64) DEFAULT NULL COMMENT '业务流程状态',
  `fIsSalary` int(11) DEFAULT NULL COMMENT '是否扣薪',
  `fCurrentActivities` varchar(64) DEFAULT NULL COMMENT '当前环节',
  `fCurrentExecutors` varchar(64) DEFAULT NULL COMMENT '当前执行者',
  `fPLACE` varchar(512) DEFAULT NULL COMMENT '地点',
  `fTransport` varchar(64) DEFAULT NULL COMMENT '交通工具',
  `fImageURL` varchar(1024) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_wm_leaveapply
-- ----------------------------

-- ----------------------------
-- Table structure for oa_wm_leavetype
-- ----------------------------
DROP TABLE IF EXISTS `oa_wm_leavetype`;
CREATE TABLE `oa_wm_leavetype` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fTypeCode` varchar(64) DEFAULT NULL COMMENT '类型编码',
  `fTypeName` varchar(64) DEFAULT NULL COMMENT '类型名称',
  `fIsSalary` int(11) DEFAULT NULL COMMENT '是否扣薪',
  `fSalaryRule` varchar(64) DEFAULT NULL COMMENT '扣薪规则',
  `fIsReducHoliday` int(11) DEFAULT NULL COMMENT '是否启用销假',
  `fUseStatus` int(11) DEFAULT NULL COMMENT '启用标识',
  `fUseStatusName` varchar(64) DEFAULT NULL COMMENT '启用标识名称',
  `fCreatePerID` varchar(36) DEFAULT NULL COMMENT '提交人ID',
  `fCreatePerName` varchar(64) DEFAULT NULL COMMENT '提交人',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fRemark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `fSequence` int(11) DEFAULT NULL COMMENT '序号',
  `fUseTime` datetime DEFAULT NULL COMMENT '启用时间',
  `fStopTime` datetime DEFAULT NULL COMMENT '停用时间',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_wm_leavetype
-- ----------------------------

-- ----------------------------
-- Table structure for oa_wm_otherapply
-- ----------------------------
DROP TABLE IF EXISTS `oa_wm_otherapply`;
CREATE TABLE `oa_wm_otherapply` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fNO` varchar(32) DEFAULT NULL COMMENT '单据号',
  `fTYPEID` varchar(36) DEFAULT NULL COMMENT '补签类型ID',
  `fTYPENAME` varchar(128) DEFAULT NULL COMMENT '类型名称',
  `fAPPLYPERSONID` varchar(64) DEFAULT NULL COMMENT '申请人ID',
  `fAPPLYPERSONNAME` varchar(64) DEFAULT NULL COMMENT '申请人',
  `fAPPLYDATE` datetime DEFAULT NULL COMMENT '申请日期',
  `fAPPLYDEPTID` varchar(64) DEFAULT NULL COMMENT '申请部门ID',
  `fAPPLYDEPTNAME` varchar(64) DEFAULT NULL COMMENT '申请部门',
  `fERPTM` varchar(64) DEFAULT NULL COMMENT '所在岗位',
  `fPLANID` varchar(36) DEFAULT NULL COMMENT '计划ID',
  `fPLANNAME` varchar(128) DEFAULT NULL COMMENT '计划名称',
  `fPROJECTID` varchar(36) DEFAULT NULL COMMENT '项目ID',
  `fPROJECTNAME` varchar(128) DEFAULT NULL COMMENT '项目名称',
  `fCLIENTERID` varchar(36) DEFAULT NULL COMMENT '客户ID',
  `fCLIENTERNAME` varchar(128) DEFAULT NULL COMMENT '客户名称',
  `fSTARTTIME` datetime DEFAULT NULL COMMENT '开始时间',
  `fENDTIME` datetime DEFAULT NULL COMMENT '结束时间',
  `fDAYS` int(11) DEFAULT NULL COMMENT '申请天数',
  `fHOURS` float DEFAULT NULL COMMENT '小时',
  `fTIME` float DEFAULT NULL COMMENT '申请时长',
  `fREASON` varchar(1024) DEFAULT NULL COMMENT '事由',
  `fREMARK` varchar(1024) DEFAULT NULL COMMENT '备注',
  `fISSURE` int(11) DEFAULT NULL COMMENT '是否确认',
  `fCANCELHOLSDEPTID` varchar(64) DEFAULT NULL COMMENT '确认部门ID',
  `fCANCELHOLSDEPTNAME` varchar(64) DEFAULT NULL COMMENT '确认部门',
  `fCANCELHOLSPERSONNAME` varchar(64) DEFAULT NULL COMMENT '确认人',
  `fCANCELHOLSDATE` datetime DEFAULT NULL COMMENT '确认日期',
  `fNUMBER` int(11) DEFAULT NULL COMMENT '人数',
  `fPERSONNEL` varchar(1024) DEFAULT NULL COMMENT '人员',
  `fCARDTIME` datetime DEFAULT NULL COMMENT '打卡时间',
  `fSQUADID` varchar(36) DEFAULT NULL COMMENT '班次ID',
  `fSQUAD` varchar(32) DEFAULT NULL COMMENT '所属排班',
  `fPLACE` varchar(32) DEFAULT NULL COMMENT '地点',
  `fMODEID` varchar(32) DEFAULT NULL COMMENT '出行方式ID',
  `fMODENAME` varchar(64) DEFAULT NULL COMMENT '出行方式',
  `fARRANGE` varchar(200) DEFAULT NULL COMMENT '行程安排',
  `fMONEY` float DEFAULT NULL COMMENT '出差备用金',
  `fEXPLAIN` varchar(1024) DEFAULT NULL COMMENT '用途说明',
  `fFACTSTARTTIME` datetime DEFAULT NULL COMMENT '实际开始时间',
  `fFACTENDTIME` datetime DEFAULT NULL COMMENT '实际结束时间',
  `fFACTDAYS` varchar(100) DEFAULT NULL COMMENT '实际天数',
  `fFACTHOURS` float DEFAULT NULL COMMENT '实际小时数',
  `fCREATEDEPTID` varchar(36) DEFAULT NULL COMMENT '提交部门ID',
  `fCREATEDEPTNAME` varchar(128) DEFAULT NULL COMMENT '提交部门',
  `fCREATEPERID` varchar(36) DEFAULT NULL COMMENT '提交人ID',
  `fCREATEPERNAME` varchar(64) DEFAULT NULL COMMENT '提交人',
  `fCREATETIME` datetime DEFAULT NULL COMMENT '提交时间',
  `fUPDATEDEPTID` varchar(36) DEFAULT NULL COMMENT '修改部门ID',
  `fUPDATEDEPTNAME` varchar(128) DEFAULT NULL COMMENT '修改部门',
  `fUPDATEPERID` varchar(36) DEFAULT NULL COMMENT '修改人ID',
  `fUPDATEPERNAME` varchar(64) DEFAULT NULL COMMENT '修改人',
  `fUPDATETIME` datetime DEFAULT NULL COMMENT '修改时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fDEPTPATH` varchar(1024) DEFAULT NULL COMMENT '部门path',
  `fURL` varchar(1024) DEFAULT NULL COMMENT '路径',
  `fBizState` varchar(36) DEFAULT NULL COMMENT '流程状态',
  `fBizStateName` varchar(64) DEFAULT NULL COMMENT '流程状态名称',
  `fCurrentExecutors` varchar(36) DEFAULT NULL COMMENT '流程处理人',
  `fCurrentActivities` varchar(128) DEFAULT NULL COMMENT '流程节点名称',
  `fFactTime` float DEFAULT NULL COMMENT '实际时长',
  `fBrefExplain` varchar(1024) DEFAULT NULL COMMENT '简要说明',
  `fCANCELHOLSPERSONID` varchar(100) DEFAULT NULL COMMENT 'fCANCELHOLSPERSONID',
  `fType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_wm_otherapply
-- ----------------------------

-- ----------------------------
-- Table structure for oa_wm_outapply
-- ----------------------------
DROP TABLE IF EXISTS `oa_wm_outapply`;
CREATE TABLE `oa_wm_outapply` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fNO` varchar(36) DEFAULT NULL COMMENT '单据编号',
  `fAPPLYPERSONNAME` varchar(64) DEFAULT NULL COMMENT '申请人',
  `fAPPLYPERSONID` varchar(36) DEFAULT NULL COMMENT '申请人ID',
  `fAPPLYDEPTID` varchar(36) DEFAULT NULL COMMENT '申请部门ID',
  `fAPPLYDEPTNAME` varchar(64) DEFAULT NULL COMMENT '申请部门',
  `fDAYS` int(11) DEFAULT NULL COMMENT '预计天数',
  `fHOURS` float DEFAULT NULL COMMENT '预计小时数',
  `fNUMBER` int(11) DEFAULT NULL COMMENT '外出人数',
  `fPERSONNEL` varchar(64) DEFAULT NULL COMMENT '人员',
  `fREASON` varchar(64) DEFAULT NULL COMMENT '外出事由',
  `fRemark` varchar(64) DEFAULT NULL COMMENT '备注',
  `fTIME` int(11) DEFAULT NULL COMMENT '申请时长',
  `fFACTHOURS` float DEFAULT NULL COMMENT '实际小时数',
  `fFACTENDTIME` datetime DEFAULT NULL COMMENT '实际结束时间',
  `fFACTSTARTTIME` datetime DEFAULT NULL COMMENT '实际开始时间',
  `fFACTDAYS` int(11) DEFAULT NULL COMMENT '实际天数',
  `fCreatePerID` varchar(36) DEFAULT NULL COMMENT '提交人ID',
  `fCreatePerName` varchar(64) DEFAULT NULL COMMENT '提交人',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fCREATEDEPTID` varchar(36) DEFAULT NULL COMMENT '提交部门ID',
  `fCREATEDEPTNAME` varchar(64) DEFAULT NULL COMMENT '提交部门',
  `fUPDATEDEPTID` varchar(36) DEFAULT NULL COMMENT '修改部门ID',
  `fUPDATEPERNAME` varchar(64) DEFAULT NULL COMMENT '修改人',
  `fUPDATEDEPTNAME` varchar(64) DEFAULT NULL COMMENT '修改部门',
  `fUPDATETIME` datetime DEFAULT NULL COMMENT '修改时间',
  `fUPDATEPERID` varchar(36) DEFAULT NULL COMMENT '修改人ID',
  `fBizState` varchar(36) DEFAULT NULL COMMENT '流程状态',
  `fBizStateName` varchar(64) DEFAULT NULL COMMENT '流程状态名称',
  `fCurrentExecutors` varchar(64) DEFAULT NULL COMMENT '流程处理人',
  `fCurrentActivities` varchar(64) DEFAULT NULL COMMENT '流程节点名称',
  `fISSURE` int(11) DEFAULT NULL COMMENT '是否确认',
  `fCANCELHOLSPERSONID` varchar(36) DEFAULT NULL COMMENT '确认人ID',
  `fCANCELHOLSPERSONNAME` varchar(64) DEFAULT NULL COMMENT '确认人',
  `fCANCELHOLSDATE` datetime DEFAULT NULL COMMENT '确认日期',
  `fCANCELHOLSDEPTNAME` varchar(64) DEFAULT NULL COMMENT '确认部门',
  `fCANCELHOLSDEPTID` varchar(36) DEFAULT NULL COMMENT '确认部门ID',
  `fAPPLYDATE` date DEFAULT NULL COMMENT '申请日期',
  `fPLANNAME` varchar(64) DEFAULT NULL COMMENT '计划',
  `fPLANID` varchar(36) DEFAULT NULL COMMENT '计划ID',
  `fPROJECTNAME` varchar(64) DEFAULT NULL COMMENT '项目',
  `fPROJECTID` varchar(36) DEFAULT NULL COMMENT '项目ID',
  `fCLIENTERNAME` varchar(64) DEFAULT NULL COMMENT '客户',
  `fCLIENTERID` varchar(36) DEFAULT NULL COMMENT '客户ID',
  `fSTARTTIME` datetime DEFAULT NULL COMMENT '开始时间',
  `fENDTIME` datetime DEFAULT NULL COMMENT '结束时间',
  `fExplain` varchar(1024) DEFAULT NULL COMMENT '简要说明',
  `fURL` varchar(512) DEFAULT NULL COMMENT '组织路径',
  `fFactTime` float DEFAULT NULL COMMENT '实际时长',
  `fType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_wm_outapply
-- ----------------------------

-- ----------------------------
-- Table structure for oa_wm_outmember
-- ----------------------------
DROP TABLE IF EXISTS `oa_wm_outmember`;
CREATE TABLE `oa_wm_outmember` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fMasterID` varchar(36) DEFAULT NULL COMMENT '外出申请外键',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fDeptID` varchar(36) DEFAULT NULL COMMENT '部门ID',
  `fDeptName` varchar(64) DEFAULT NULL COMMENT '部门名称',
  `fPositionID` varchar(36) DEFAULT NULL COMMENT '岗位',
  `fPersonName` varchar(64) DEFAULT NULL COMMENT '人员',
  `fOrgURL` varchar(512) DEFAULT NULL COMMENT '组织机构URL',
  `fIsNotify` int(11) DEFAULT NULL COMMENT '是否已经通知',
  `fNotifyMode` varchar(64) DEFAULT NULL COMMENT '通知方式',
  `fNotifyTime` varchar(64) DEFAULT NULL COMMENT '通知时间',
  `fOrgKind` varchar(64) DEFAULT NULL COMMENT '组织机构类型',
  `fPersonID` varchar(36) DEFAULT NULL COMMENT '人员ID',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_wm_outmember
-- ----------------------------

-- ----------------------------
-- Table structure for oa_wm_overtimeapply
-- ----------------------------
DROP TABLE IF EXISTS `oa_wm_overtimeapply`;
CREATE TABLE `oa_wm_overtimeapply` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fNO` varchar(36) DEFAULT NULL COMMENT '单据号',
  `fApplyPersonID` varchar(36) DEFAULT NULL COMMENT '申请人',
  `fApplyPersonName` varchar(64) DEFAULT NULL COMMENT '申请人',
  `fApplyDeptID` varchar(36) DEFAULT NULL COMMENT '申请部门',
  `fApplyDeptName` varchar(64) DEFAULT NULL COMMENT '申请部门',
  `fApplyDate` datetime DEFAULT NULL COMMENT '申请日期',
  `fSTARTTIME` datetime DEFAULT NULL COMMENT '开始时间',
  `fENDTIME` datetime DEFAULT NULL COMMENT '结束时间',
  `fDAYS` int(11) DEFAULT NULL COMMENT '申请天数',
  `fHOURS` int(11) DEFAULT NULL COMMENT '申请小时',
  `fTIME` decimal(10,0) DEFAULT NULL COMMENT '申请时长',
  `fREASON` varchar(1024) DEFAULT NULL COMMENT '加班事由',
  `fType` varchar(64) DEFAULT NULL COMMENT '鉴别列',
  `fBizState` varchar(36) DEFAULT NULL COMMENT '流程状态',
  `fBizStateName` varchar(64) DEFAULT NULL COMMENT '流程状态名称',
  `fCreateDeptID` varchar(36) DEFAULT NULL COMMENT '提交部门ID',
  `fCreateDeptName` varchar(64) DEFAULT NULL COMMENT '提交部门',
  `fCreatePerID` varchar(36) DEFAULT NULL COMMENT '提交人ID',
  `fCreatePerName` varchar(64) DEFAULT NULL COMMENT '提交人',
  `fCreateTime` datetime DEFAULT NULL COMMENT '提交时间',
  `fUpdateDeptID` varchar(36) DEFAULT NULL COMMENT '修改部门ID',
  `fUpdateDeptName` varchar(64) DEFAULT NULL COMMENT '修改部门',
  `fUpdatePerID` varchar(36) DEFAULT NULL COMMENT '修改人ID',
  `fUpdatePerName` varchar(64) DEFAULT NULL COMMENT '修改人',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `fCurrentActivities` varchar(36) DEFAULT NULL COMMENT '当前环节',
  `fCurrentExecutors` varchar(64) DEFAULT NULL COMMENT '当前执行者',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_wm_overtimeapply
-- ----------------------------

-- ----------------------------
-- Table structure for oa_wm_timeenactment
-- ----------------------------
DROP TABLE IF EXISTS `oa_wm_timeenactment`;
CREATE TABLE `oa_wm_timeenactment` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fYear` int(11) DEFAULT NULL COMMENT '年',
  `fSemiAnnual` varchar(64) DEFAULT NULL COMMENT '半年度',
  `fSemiAnnualID` varchar(36) DEFAULT NULL COMMENT '半年度',
  `fMorningBeginDate` varchar(36) DEFAULT NULL COMMENT '上午开始时间',
  `fMorningendDate` varchar(36) DEFAULT NULL COMMENT '上午结束时间',
  `fAfternoonBeginDate` varchar(36) DEFAULT NULL COMMENT '下午开始时间',
  `fAfternoonendDate` varchar(36) DEFAULT NULL COMMENT '下午结束时间',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_wm_timeenactment
-- ----------------------------

-- ----------------------------
-- Table structure for oa_wm_vacation
-- ----------------------------
DROP TABLE IF EXISTS `oa_wm_vacation`;
CREATE TABLE `oa_wm_vacation` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fPersonID` varchar(36) DEFAULT NULL COMMENT '人员ID',
  `fPersonName` varchar(64) DEFAULT NULL COMMENT '人员',
  `fDeptID` varchar(36) DEFAULT NULL COMMENT '部门ID',
  `fYear` int(11) DEFAULT NULL COMMENT '年度',
  `fLeaveTypeName` varchar(64) DEFAULT NULL COMMENT '类型',
  `fLeaveTypeID` varchar(36) DEFAULT NULL COMMENT '类型',
  `fRemark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `fPersonCode` varchar(36) DEFAULT NULL COMMENT '人员编码',
  `fEffectiveDate` date DEFAULT NULL COMMENT '生效日期',
  `fExpiryDate` date DEFAULT NULL COMMENT '失效日期',
  `fHoliday` int(11) DEFAULT NULL COMMENT '当年可休天数',
  `fLeavingsDay` int(11) DEFAULT NULL COMMENT '剩余休假天数',
  `fJoinInWork` date DEFAULT NULL COMMENT '参加工作日期',
  `fLeavingsHour` float DEFAULT NULL COMMENT '剩余休假小时',
  `fAlreadyDay` int(11) DEFAULT NULL COMMENT '已经休假天数',
  `fAlreadyHour` float DEFAULT NULL COMMENT '已经休假小时',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_wm_vacation
-- ----------------------------

-- ----------------------------
-- Table structure for oa_workdaily
-- ----------------------------
DROP TABLE IF EXISTS `oa_workdaily`;
CREATE TABLE `oa_workdaily` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fPersonID` varchar(36) DEFAULT NULL COMMENT '填报人',
  `fPersonName` varchar(64) DEFAULT NULL COMMENT '填报人名称',
  `fDeptID` varchar(36) DEFAULT NULL COMMENT '填报部门',
  `fDeptName` varchar(64) DEFAULT NULL COMMENT '填报部门名称',
  `fCreateTime` datetime DEFAULT NULL COMMENT '创建日期',
  `fDate` date DEFAULT NULL COMMENT '填报日期',
  `fFinishWork` varchar(1024) DEFAULT NULL COMMENT '今日完成工作',
  `fWorkPlan` varchar(1024) DEFAULT NULL COMMENT '明日工作计划',
  `fNeedHelp` varchar(1024) DEFAULT NULL COMMENT '需协调与帮助',
  `fRemark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `fImgURL` varchar(1024) DEFAULT NULL COMMENT '图片路径',
  `fReleaseScope` varchar(1024) DEFAULT NULL COMMENT '发布范围',
  `fReleaseScopeID` varchar(1024) DEFAULT NULL COMMENT '发布范围ID',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_workdaily
-- ----------------------------
INSERT INTO `oa_workdaily` VALUES ('C7240A0013B0000131117DB011306DE0', null, 'C72408ECD7F0000199C013201F004600', '查看', 'C72404C5481000019CB91769729317EE', '财务部', '2016-07-11 11:17:08', '2016-07-11', '测试1', '风好大', '发多点', '护具', '[{\"storeFileName\":\"C7240A16A7800001A0F71350B4001D2C\",\"realFileName\":\"IMG_20160711_111453.jpg\"}]', 'system', 'PSN01');
INSERT INTO `oa_workdaily` VALUES ('C7240BC85BC00001A33C5757C84C1482', null, 'C72408ECD7F0000199C013201F004600', '查看', 'C72404C5481000019CB91769729317EE', '保洁部', '2016-07-11 11:46:58', '2016-07-11', '回家继续继续继续', '吃就吃附近的减肥呢', '就差不多烦恼发不过', 'uvv雨回房间肥牛饭', '[{\"storeFileName\":\"C7240BCCF4900001AB84100020B311E2\",\"realFileName\":\"GallaryTmpFile-1464791567846.jpg\"}]', '估计', 'C72408159690000114C01AD06790A890');
INSERT INTO `oa_workdaily` VALUES ('C727A3FCD7F0000189435000187010A5', null, 'C727A3AD57E0000153721E602E308090', 'sf', '', '', '2016-07-22 15:36:46', '2016-07-22', null, null, null, null, null, 'system,sf', 'PSN01,C727A3AD57E0000153721E602E308090');

-- ----------------------------
-- Table structure for oa_workfavorite
-- ----------------------------
DROP TABLE IF EXISTS `oa_workfavorite`;
CREATE TABLE `oa_workfavorite` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fPresonID` varchar(100) DEFAULT NULL COMMENT '人员ID',
  `fLabel` varchar(100) DEFAULT NULL COMMENT '名称',
  `fProcess` varchar(100) DEFAULT NULL COMMENT '流程',
  `fActitvty` varchar(100) DEFAULT NULL COMMENT '环节',
  `fUrl` varchar(100) DEFAULT NULL COMMENT '地址',
  `fIcon` varchar(100) DEFAULT NULL COMMENT '图标',
  `fColor` varchar(100) DEFAULT NULL COMMENT '图标颜色',
  `fDevicesType` varchar(100) DEFAULT NULL COMMENT '设备类型',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_workfavorite
-- ----------------------------

-- ----------------------------
-- Table structure for oa_workmonthly
-- ----------------------------
DROP TABLE IF EXISTS `oa_workmonthly`;
CREATE TABLE `oa_workmonthly` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fPersonID` varchar(36) DEFAULT NULL COMMENT '填报人',
  `fPersonName` varchar(64) DEFAULT NULL COMMENT '填报人名称',
  `fDeptID` varchar(36) DEFAULT NULL COMMENT '填报部门',
  `fDeptName` varchar(64) DEFAULT NULL COMMENT '填报部门名称',
  `fCreateTime` datetime DEFAULT NULL COMMENT '创建日期',
  `fDate` date DEFAULT NULL COMMENT '填报日期',
  `fFinishWork` varchar(1024) DEFAULT NULL COMMENT '本月完成工作',
  `fWorkPlan` varchar(1024) DEFAULT NULL COMMENT '下月工作计划',
  `fNeedHelp` varchar(1024) DEFAULT NULL COMMENT '需协调与帮助',
  `fRemark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `fImgURL` varchar(1024) DEFAULT NULL COMMENT '图片路径',
  `fReleaseScope` varchar(1024) DEFAULT NULL COMMENT '发布范围',
  `fWorkSummary` varchar(1024) DEFAULT NULL COMMENT '本月工作总结',
  `fReleaseScopeID` varchar(1024) DEFAULT NULL COMMENT '发布范围ID',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_workmonthly
-- ----------------------------

-- ----------------------------
-- Table structure for oa_workweekly
-- ----------------------------
DROP TABLE IF EXISTS `oa_workweekly`;
CREATE TABLE `oa_workweekly` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fPersonID` varchar(36) DEFAULT NULL COMMENT '填报人',
  `fPersonName` varchar(64) DEFAULT NULL COMMENT '填报人名称',
  `fDeptID` varchar(36) DEFAULT NULL COMMENT '填报部门',
  `fDeptName` varchar(64) DEFAULT NULL COMMENT '填报部门名称',
  `fCreateTime` datetime DEFAULT NULL COMMENT '创建日期',
  `fDate` date DEFAULT NULL COMMENT '填报日期',
  `fFinishWork` varchar(1024) DEFAULT NULL COMMENT '本周完成工作',
  `fWorkPlan` varchar(1024) DEFAULT NULL COMMENT '下周工作计划',
  `fNeedHelp` varchar(1024) DEFAULT NULL COMMENT '需协调与帮助',
  `fRemark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `fImgURL` varchar(1024) DEFAULT NULL COMMENT '图片路径',
  `fReleaseScope` varchar(1024) DEFAULT NULL COMMENT '发布范围',
  `fWorkSummary` varchar(1024) DEFAULT NULL COMMENT '本周工作总结',
  `fReleaseScopeID` varchar(1024) DEFAULT NULL COMMENT '发布范围ID',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_workweekly
-- ----------------------------

-- ----------------------------
-- Table structure for v_oa_kw_firstfolder
-- ----------------------------
DROP TABLE IF EXISTS `v_oa_kw_firstfolder`;
CREATE TABLE `v_oa_kw_firstfolder` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fName` varchar(100) DEFAULT NULL COMMENT '名称',
  `fFullID` varchar(100) DEFAULT NULL COMMENT 'ID路径',
  `fFullName` varchar(100) DEFAULT NULL COMMENT 'name路径',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_oa_kw_firstfolder
-- ----------------------------

-- ----------------------------
-- Table structure for v_oa_kw_secondfolder
-- ----------------------------
DROP TABLE IF EXISTS `v_oa_kw_secondfolder`;
CREATE TABLE `v_oa_kw_secondfolder` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `fName` varchar(100) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_oa_kw_secondfolder
-- ----------------------------

-- ----------------------------
-- Table structure for wk_activity_detail
-- ----------------------------
DROP TABLE IF EXISTS `wk_activity_detail`;
CREATE TABLE `wk_activity_detail` (
  `fID` varchar(50) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fPersonID` varchar(50) DEFAULT NULL COMMENT '报名人ID',
  `fPersonName` varchar(50) DEFAULT NULL COMMENT '报名人姓名',
  `fNumber` int(50) DEFAULT '1' COMMENT '报名人数',
  `fTel` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `fAge` varchar(50) DEFAULT NULL COMMENT '年龄',
  `fSex` varchar(50) DEFAULT NULL COMMENT '性别',
  `fRemark` varchar(50) DEFAULT NULL COMMENT '备注',
  `fParentsID` varchar(50) DEFAULT NULL COMMENT '父ID',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wk_activity_detail
-- ----------------------------

-- ----------------------------
-- Table structure for wk_activity_start
-- ----------------------------
DROP TABLE IF EXISTS `wk_activity_start`;
CREATE TABLE `wk_activity_start` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fImage` varchar(1024) DEFAULT NULL COMMENT '图片',
  `fTitle` varchar(100) DEFAULT NULL COMMENT '标题',
  `fExplain` varchar(1024) DEFAULT NULL COMMENT '说明',
  `fPersonID` varchar(100) DEFAULT NULL COMMENT '发起人ID',
  `fPersonName` varchar(100) DEFAULT NULL COMMENT '发起人姓名',
  `fRegistrationTime` datetime DEFAULT NULL COMMENT '报名结束时间',
  `fStartTime` datetime DEFAULT NULL COMMENT '活动开始时间',
  `fEndTime` datetime DEFAULT NULL COMMENT '活动结束时间',
  `fNumber` int(50) DEFAULT NULL COMMENT '报名人数',
  `fAdds` varchar(520) DEFAULT NULL COMMENT '地点',
  `fTel` varchar(50) DEFAULT NULL COMMENT '手机号',
  `fSex` varchar(50) DEFAULT NULL COMMENT '性别',
  `fAge` varchar(50) DEFAULT NULL COMMENT '年龄',
  `fRemark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `fCost` varchar(100) DEFAULT NULL COMMENT '费用',
  `fName` varchar(100) DEFAULT NULL COMMENT '报名人姓名',
  `fSignUp` int(11) DEFAULT NULL COMMENT '已经计算人数',
  `fAttention` varchar(50) DEFAULT NULL COMMENT '关注',
  `fCostType` varchar(50) DEFAULT NULL COMMENT '费用形式',
  `end` int(11) DEFAULT NULL,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wk_activity_start
-- ----------------------------

-- ----------------------------
-- Table structure for wk_comment
-- ----------------------------
DROP TABLE IF EXISTS `wk_comment`;
CREATE TABLE `wk_comment` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fType` varchar(100) DEFAULT NULL COMMENT '类型、方式',
  `fParentID` varchar(100) DEFAULT NULL COMMENT '对象ID',
  `fParentName` varchar(100) DEFAULT NULL COMMENT '对象名称',
  `fCreateTime` datetime DEFAULT NULL COMMENT '评论时间',
  `fCreatorID` varchar(100) DEFAULT NULL COMMENT '评论人ID',
  `fCreatorName` varchar(100) DEFAULT NULL COMMENT '评论人名称',
  `fName` varchar(100) DEFAULT NULL COMMENT '评论标题',
  `fComment` varchar(100) DEFAULT NULL COMMENT '评论内容',
  `fCommentImg` varchar(100) DEFAULT NULL COMMENT '评论图片',
  `fCreatorOgnID` varchar(100) DEFAULT NULL COMMENT '评论人机构ID',
  `fCreatorOgnName` varchar(100) DEFAULT NULL COMMENT '评论人机构名称',
  `fCreatorDptID` varchar(100) DEFAULT NULL COMMENT '评论人部门ID',
  `fCreatorDptName` varchar(100) DEFAULT NULL COMMENT '评论人部门名称',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表\r\n';

-- ----------------------------
-- Records of wk_comment
-- ----------------------------

-- ----------------------------
-- Table structure for wk_vote_content
-- ----------------------------
DROP TABLE IF EXISTS `wk_vote_content`;
CREATE TABLE `wk_vote_content` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fStartId` varchar(100) DEFAULT NULL COMMENT '关联id',
  `fContent` varchar(100) DEFAULT NULL COMMENT '内容',
  `fVoteCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wk_vote_content
-- ----------------------------

-- ----------------------------
-- Table structure for wk_vote_detail
-- ----------------------------
DROP TABLE IF EXISTS `wk_vote_detail`;
CREATE TABLE `wk_vote_detail` (
  `fID` varchar(50) NOT NULL,
  `fContent` varchar(100) NOT NULL DEFAULT '' COMMENT '内容',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fStartId` varchar(50) DEFAULT NULL COMMENT '活动id',
  `fVoteName` varchar(100) DEFAULT NULL COMMENT '投票人姓名',
  `fPersonId` varchar(100) DEFAULT NULL,
  `fVoteTime` datetime DEFAULT NULL COMMENT '投票时间',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wk_vote_detail
-- ----------------------------

-- ----------------------------
-- Table structure for wk_vote_start
-- ----------------------------
DROP TABLE IF EXISTS `wk_vote_start`;
CREATE TABLE `wk_vote_start` (
  `fID` varchar(100) NOT NULL DEFAULT '',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  `fPersonId` varchar(100) DEFAULT NULL COMMENT '登陆人Id',
  `fPersonName` varchar(100) DEFAULT NULL,
  `fTitle` varchar(100) DEFAULT NULL COMMENT '标题',
  `fExplain` varchar(500) DEFAULT NULL COMMENT '说明',
  `fSelect` varchar(50) DEFAULT NULL COMMENT '选择',
  `fnum` int(11) DEFAULT NULL COMMENT '多选选择的个数',
  `fAnomity` varchar(50) DEFAULT NULL COMMENT '是否匿名',
  `seeSelect` varchar(50) DEFAULT NULL COMMENT '是否可见',
  `fEndTime` datetime DEFAULT NULL COMMENT '截至时间',
  `fCount` int(11) DEFAULT NULL COMMENT '投票总次数',
  `end` int(11) DEFAULT NULL,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wk_vote_start
-- ----------------------------

-- ----------------------------
-- Table structure for wk_vote_type
-- ----------------------------
DROP TABLE IF EXISTS `wk_vote_type`;
CREATE TABLE `wk_vote_type` (
  `fID` varchar(100) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `fStartId` varchar(100) DEFAULT NULL,
  `fPersonId` varchar(100) DEFAULT NULL,
  `fType` varchar(50) DEFAULT NULL,
  `fEndTime` datetime DEFAULT NULL,
  `fPersonName` varchar(100) DEFAULT NULL,
  `fTitle` varchar(100) DEFAULT NULL,
  `fCount` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wk_vote_type
-- ----------------------------
