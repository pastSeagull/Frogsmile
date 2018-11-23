/*
Navicat MySQL Data Transfer

Source Server         : lhq
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : teacher

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-12-14 12:57:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL COMMENT '班级名称',
  `class_number` int(10) DEFAULT NULL COMMENT '班级人数',
  `addtime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('6', '15计算机应用技术1班', '40', null);
INSERT INTO `classes` VALUES ('7', '15计算机应用技术2班', '41', null);
INSERT INTO `classes` VALUES ('8', '15电子信息工程技术班', '35', null);
INSERT INTO `classes` VALUES ('9', '15电子商务1班', '40', null);
INSERT INTO `classes` VALUES ('10', '15电子商务2班', '42', null);
INSERT INTO `classes` VALUES ('11', '15计算机网络技术班', '37', null);
INSERT INTO `classes` VALUES ('12', '15应用电子技术班', '40', null);
INSERT INTO `classes` VALUES ('13', '15通信技术班', '36', null);
INSERT INTO `classes` VALUES ('14', '15物联网应用技术班', '39', null);
INSERT INTO `classes` VALUES ('15', '15会展艺术设计班', '35', null);
INSERT INTO `classes` VALUES ('16', '15数字媒体技术班', '33', null);

-- ----------------------------
-- Table structure for class_hour
-- ----------------------------
DROP TABLE IF EXISTS `class_hour`;
CREATE TABLE `class_hour` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `term_id` int(10) DEFAULT NULL COMMENT '学期',
  `class_id` int(10) DEFAULT NULL COMMENT '授课班级',
  `course_name_id` int(255) DEFAULT NULL COMMENT '课程名称',
  `hour` varchar(255) DEFAULT NULL COMMENT '计划课时',
  `class_hour` varchar(255) DEFAULT NULL COMMENT '实际课时',
  `state` int(10) DEFAULT NULL COMMENT '状态',
  `addtime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_hour
-- ----------------------------
INSERT INTO `class_hour` VALUES ('8', '22', '5', '6', '2', '120', '110', '2', '1513151535');
INSERT INTO `class_hour` VALUES ('10', '20', '11', '8', '3', '120', '120', '2', '1512292767');
INSERT INTO `class_hour` VALUES ('11', '20', '7', '8', '6', '120', '120', '2', '1512354346');
INSERT INTO `class_hour` VALUES ('12', '20', '7', '11', '5', '130', '128', '2', '1512354422');
INSERT INTO `class_hour` VALUES ('13', '20', '8', '10', '5', '130', '124', '2', '1512354676');
INSERT INTO `class_hour` VALUES ('14', '20', '8', '11', '7', '120', '112', '2', '1512354662');
INSERT INTO `class_hour` VALUES ('15', '20', '0', '0', '0', '', '', '2', '1512398873');
INSERT INTO `class_hour` VALUES ('17', '20', '5', '7', '3', '411', '23', '2', '1513152054');
INSERT INTO `class_hour` VALUES ('18', '20', '6', '7', '6', '120', '123', '2', '1513152153');
INSERT INTO `class_hour` VALUES ('19', '22', '6', '7', '6', '120', '120', '2', '1513152177');
INSERT INTO `class_hour` VALUES ('21', '20', '5', '7', '2', '120', '110', '2', '1513152436');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `addtime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('2', '微信公众号开发', null);
INSERT INTO `course` VALUES ('3', 'PHP程序设计', null);
INSERT INTO `course` VALUES ('5', 'msql数据库设计', null);
INSERT INTO `course` VALUES ('6', '高级办公软件', null);
INSERT INTO `course` VALUES ('7', '计算机组装与维护', null);

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `term_id` int(10) DEFAULT NULL COMMENT '学期',
  `paper_title` varchar(255) DEFAULT NULL COMMENT '论文题目',
  `journal_name` varchar(255) DEFAULT NULL COMMENT '刊物名称',
  `publish` int(50) DEFAULT NULL COMMENT '发表期号',
  `ranking_order` varchar(255) DEFAULT NULL COMMENT '排名顺序',
  `grade` varchar(255) DEFAULT NULL COMMENT '等级',
  `state` int(10) DEFAULT NULL COMMENT '状态',
  `addtime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES ('6', '22', '8', '“工作室制”的工学结合教学模式探索与实践', '科技视界', '2017', '第一作者', '省级期刊', '1', '1512978408');
INSERT INTO `paper` VALUES ('8', '22', '8', '“工作室制”的工学结合教学模式探索与实践', '科技视界', '2017', '第一作者', '省级期刊', '1', '1513158735');

-- ----------------------------
-- Table structure for research
-- ----------------------------
DROP TABLE IF EXISTS `research`;
CREATE TABLE `research` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `term_id` int(255) DEFAULT NULL COMMENT '学期',
  `entry_name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `project_time` varchar(255) DEFAULT NULL COMMENT '立项时间',
  `closing_time` varchar(255) DEFAULT NULL COMMENT '结题时间',
  `level` varchar(255) DEFAULT NULL COMMENT '级别',
  `state` int(10) DEFAULT NULL COMMENT '状态',
  `addtime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of research
-- ----------------------------
INSERT INTO `research` VALUES ('3', '22', '5', '基于移动平台的教师工作量管理系统研发', '2017.6', '2017.10', '校级', '1', '4255353132');
INSERT INTO `research` VALUES ('4', '22', '6', '基于移动平台的教师工作量管理系统研发', '2017.6', '2017.10', '校级', '1', '4255353132');

-- ----------------------------
-- Table structure for term
-- ----------------------------
DROP TABLE IF EXISTS `term`;
CREATE TABLE `term` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `term` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '学期',
  `addtime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of term
-- ----------------------------
INSERT INTO `term` VALUES ('5', '2015-2016-1', null);
INSERT INTO `term` VALUES ('6', '2015-2016-2', null);
INSERT INTO `term` VALUES ('7', '2016-2017-1', null);
INSERT INTO `term` VALUES ('8', '2016-2017-2', null);
INSERT INTO `term` VALUES ('11', '2017-2018-1', null);
INSERT INTO `term` VALUES ('12', '2017-2018-2', null);

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `term_id` int(10) DEFAULT NULL COMMENT '学期',
  `train_time` varchar(255) DEFAULT NULL COMMENT '培训时间',
  `train_program` varchar(255) DEFAULT NULL COMMENT '培训项目',
  `train_location` varchar(255) DEFAULT NULL COMMENT '培训地点',
  `train_days` varchar(255) DEFAULT NULL COMMENT '培训天数',
  `state` int(10) DEFAULT NULL COMMENT '状态',
  `addtime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES ('1', '22', '8', '2017.3.17', '参加2017年广西职业院校技能大赛高职组《移动互联软件开发》赛项说明会', '柳州', '2天', '1', '1512981772');
INSERT INTO `train` VALUES ('2', '22', '6', '2017.3.17', '参加2017年广西职业院校技能大赛高职组《移动互联软件开发》赛项说明会', '柳州', '2天', '1', '1513159244');

-- ----------------------------
-- Table structure for training
-- ----------------------------
DROP TABLE IF EXISTS `training`;
CREATE TABLE `training` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `term_id` int(10) DEFAULT NULL COMMENT '学期',
  `class_id` int(50) DEFAULT NULL COMMENT '班级',
  `name` varchar(255) DEFAULT NULL COMMENT '实训名称',
  `weeks` varchar(255) DEFAULT NULL COMMENT '实训周数',
  `class_number` int(50) DEFAULT NULL COMMENT '实训人数',
  `state` int(10) DEFAULT NULL COMMENT '状态',
  `addtime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of training
-- ----------------------------
INSERT INTO `training` VALUES ('12', '20', '7', '9', '移动应用综合实训', '2周', null, '1', '1512983788');
INSERT INTO `training` VALUES ('13', '22', '5', '6', '移动应用综合实训', '2周', null, '1', '1513085947');
INSERT INTO `training` VALUES ('15', '22', '7', '7', '移动应用综合实训', '2周', null, '1', '1513087343');
INSERT INTO `training` VALUES ('16', '22', '5', '7', '移动应用综合实训', '2周', null, '1', '1513087500');
INSERT INTO `training` VALUES ('17', '22', '5', '8', '移动应用综合实训', '2周', null, '1', '1513088305');
INSERT INTO `training` VALUES ('18', '22', '8', '10', '移动应用综合实训', '2周', null, '1', '1513088326');

-- ----------------------------
-- Table structure for user_name
-- ----------------------------
DROP TABLE IF EXISTS `user_name`;
CREATE TABLE `user_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '姓名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `title` varchar(50) DEFAULT NULL COMMENT '职称',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `post` varchar(50) DEFAULT NULL COMMENT '岗位',
  `administrators` int(1) DEFAULT NULL COMMENT '管理员',
  `addtime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_name
-- ----------------------------
INSERT INTO `user_name` VALUES ('20', '廖惠琼', 'e10adc3949ba59abbe56e057f20f883e', '861092371@qq.com', '讲师', '13557216482', null, '0', '1511322636');
INSERT INTO `user_name` VALUES ('22', '黎明明', 'e10adc3949ba59abbe56e057f20f883e', '123456789@qq.com', '讲师', '123456', null, '1', '1511327024');

-- ----------------------------
-- Table structure for winning
-- ----------------------------
DROP TABLE IF EXISTS `winning`;
CREATE TABLE `winning` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `term_id` int(10) DEFAULT NULL COMMENT '学期',
  `winning` varchar(255) DEFAULT NULL COMMENT '获奖项目',
  `reward_level` varchar(255) DEFAULT NULL COMMENT '获奖等级',
  `winning_time` varchar(255) DEFAULT NULL COMMENT '获奖时间',
  `state` int(10) DEFAULT NULL COMMENT '状态',
  `addtime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of winning
-- ----------------------------
INSERT INTO `winning` VALUES ('3', '22', '7', '指导学生参加2017年广西职业院校技能大赛高职组《软件测试》赛项', '区赛三等奖', '2017.5', '1', '1513172532');
INSERT INTO `winning` VALUES ('4', '22', '8', '指导学生参加2017年广西职业院校技能大赛高职组《软件测试》赛项', '区赛三等奖', '2017.5', '1', '1513162211');
