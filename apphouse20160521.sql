/*
Navicat MySQL Data Transfer

Source Server         : 120.24.99.158_3306
Source Server Version : 50540
Source Host           : 120.24.99.158:3306
Source Database       : apphouse

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-05-21 14:04:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for agent
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `agent_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `agent_create_time` timestamp NOT NULL DEFAULT '2016-05-12 00:00:00',
  `agent_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `agent_nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agent_gender` tinyint(4) NOT NULL DEFAULT '0',
  `agent_birthday` date NOT NULL DEFAULT '2015-12-12',
  `agent_thumb_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agent_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agent_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '签名',
  `agent_industry` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '行业',
  `agent_job` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '工作',
  `agent_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agent_company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `agent_role` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0管理, 1经纪人',
  `agent_check_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核状态：通过、待审、拒绝、过期',
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of agent
-- ----------------------------

-- ----------------------------
-- Table structure for agentcompany
-- ----------------------------
DROP TABLE IF EXISTS `agentcompany`;
CREATE TABLE `agentcompany` (
  `agentcompany_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `agentcompany_create_time` timestamp NOT NULL DEFAULT '2016-05-12 00:00:00',
  `agentcompany_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `agentcompany_check_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核状态：通过、待审、拒绝、过期',
  `agentcompany_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agentcompany_manager_tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agentcompany_manager_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agentcompany_license` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agentcompany_tax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agentcompany_record` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agentcompany_manager_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agentcompany_account` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agentcompany_tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agentcompany_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`agentcompany_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='经纪公司';

-- ----------------------------
-- Records of agentcompany
-- ----------------------------

-- ----------------------------
-- Table structure for apartment
-- ----------------------------
DROP TABLE IF EXISTS `apartment`;
CREATE TABLE `apartment` (
  `apartment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `apartment_create_time` timestamp NOT NULL DEFAULT '2016-05-12 00:00:00',
  `apartment_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `apartment_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `apartment_room_num` tinyint(4) NOT NULL DEFAULT '0' COMMENT '室数',
  `apartment_hall_num` tinyint(4) NOT NULL DEFAULT '0' COMMENT '厅数',
  `apartment_toilet_num` tinyint(4) NOT NULL DEFAULT '0' COMMENT '卫数',
  `apartment_area` int(11) NOT NULL DEFAULT '0',
  `apartment_price` int(11) NOT NULL DEFAULT '0',
  `apartment_featured_one` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `apartment_featured_two` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `apartment_featured_three` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `house_id` int(11) NOT NULL DEFAULT '0',
  `building_id` int(11) NOT NULL DEFAULT '0',
  `apartment_admin_uid` int(11) NOT NULL DEFAULT '0',
  `apartment_check_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核状态：通过、待审、拒绝、过期',
  PRIMARY KEY (`apartment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of apartment
-- ----------------------------
INSERT INTO `apartment` VALUES ('1', '2016-05-17 16:30:08', '2016-05-17 16:30:08', '三室一厅', '3', '1', '1', '150', '2000000', '大户型', '朝南', '低价', '3', '1', '3', '1');
INSERT INTO `apartment` VALUES ('2', '2016-05-17 16:30:24', '2016-05-17 16:30:24', '三室二厅', '2', '2', '1', '160', '2100000', '大户型', '朝南', '高性价比', '3', '1', '3', '1');
INSERT INTO `apartment` VALUES ('3', '2016-05-17 16:30:35', '2016-05-17 16:30:35', '三室二厅11', '1', '1', '1', '100', '2110000', '大户型1', '朝南1', '高性价比1', '3', '2', '3', '1');

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `building_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `building_create_time` timestamp NOT NULL DEFAULT '2016-05-12 00:00:00',
  `building_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `building_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '距离市场',
  `building_position_x` int(11) NOT NULL DEFAULT '0',
  `building_position_y` int(11) NOT NULL DEFAULT '0',
  `building_open_time` date NOT NULL DEFAULT '2016-05-12' COMMENT '开盘时间',
  `building_unit` int(11) NOT NULL DEFAULT '0' COMMENT '单元数',
  `building_floor` int(11) NOT NULL DEFAULT '0' COMMENT '楼层数目',
  `building_family` int(11) NOT NULL DEFAULT '0' COMMENT '户数',
  `building_remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `house_id` int(11) NOT NULL DEFAULT '0' COMMENT '楼盘id',
  `building_admin_uid` int(11) NOT NULL DEFAULT '0',
  `building_check_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核状态：通过、待审、拒绝、过期',
  PRIMARY KEY (`building_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('1', '2016-05-17 15:41:13', '2016-05-19 10:39:14', '第一栋', '548', '453', '2015-12-12', '3', '20', '50', '第一栋哦, 嗯嗯嗯', '3', '1', '1');
INSERT INTO `building` VALUES ('2', '2016-05-17 16:29:50', '2016-05-19 10:39:21', '第二栋', '830', '700', '2015-12-08', '2', '40', '80', '第二栋哦, 嗯嗯嗯', '3', '1', '1');

-- ----------------------------
-- Table structure for concern
-- ----------------------------
DROP TABLE IF EXISTS `concern`;
CREATE TABLE `concern` (
  `concern_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `house_id` int(10) unsigned NOT NULL DEFAULT '0',
  `concern_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`concern_id`),
  UNIQUE KEY `customer_id` (`customer_id`,`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of concern
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_create_time` timestamp NOT NULL DEFAULT '2016-05-12 00:00:00',
  `customer_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `customer_check_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核状态：通过、待审、拒绝、过期',
  `customer_nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customer_gender` tinyint(4) NOT NULL DEFAULT '0',
  `customer_birthday` date NOT NULL DEFAULT '2016-05-02',
  `customer_thumb_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customer_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customer_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customer_industry` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '行业',
  `customer_job` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customer_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customer_agent_aid` int(11) NOT NULL DEFAULT '0',
  `customer_version` float(3,2) NOT NULL DEFAULT '0.00',
  `customer_3party_type` tinyint(4) NOT NULL DEFAULT '0',
  `customer_openid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customer_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customer_platform` tinyint(4) NOT NULL DEFAULT '0',
  `customer_code` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_telephone` (`customer_telephone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '2016-05-12 00:00:00', '2016-05-20 14:25:29', '0', '', '0', '2016-05-02', '/public/0.jpg', '13888888888', '', '', '', '', '0', '0.00', '0', '123456789', '', '0', '192642');

-- ----------------------------
-- Table structure for develop
-- ----------------------------
DROP TABLE IF EXISTS `develop`;
CREATE TABLE `develop` (
  `develop_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `develop_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `develop_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `develop_manger` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`develop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of develop
-- ----------------------------
INSERT INTO `develop` VALUES ('1', '金湖地产', '东城主山村', '王健林');

-- ----------------------------
-- Table structure for discount
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `discount_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `house_id` int(10) unsigned NOT NULL DEFAULT '0',
  `discount_create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of discount
-- ----------------------------

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `feedback_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `feedback_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feedback_create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `house_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `house_create_time` timestamp NOT NULL DEFAULT '2016-05-12 00:00:00',
  `house_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `house_sale_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '售卖状态',
  `house_name` char(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `house_limit_years` tinyint(4) NOT NULL DEFAULT '0' COMMENT '产权年限',
  `house_featured` tinyint(4) NOT NULL DEFAULT '0' COMMENT '楼盘特色',
  `house_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '物业类型',
  `house_decoration_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '楼盘状态',
  `house_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `house_recommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `house_min_area` int(11) NOT NULL DEFAULT '0',
  `house_max_area` int(11) NOT NULL DEFAULT '0',
  `house_commission` int(11) NOT NULL DEFAULT '0' COMMENT '佣金',
  `house_commission_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '佣金描述',
  `house_longtitude` decimal(15,10) NOT NULL DEFAULT '23.0269970000' COMMENT '经度',
  `house_latitude` decimal(15,10) NOT NULL DEFAULT '113.7582310000' COMMENT '纬度',
  `house_plan_family` int(11) NOT NULL DEFAULT '0' COMMENT '规划户数',
  `house_parking_num` int(11) NOT NULL DEFAULT '0' COMMENT '车位',
  `house_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `house_zone_id` int(11) NOT NULL DEFAULT '0' COMMENT '区域id',
  `house_fee` float(4,1) NOT NULL DEFAULT '0.0' COMMENT '物业费',
  `house_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '物业公司',
  `house_average_price` int(11) NOT NULL DEFAULT '0',
  `house_max_price` int(11) NOT NULL DEFAULT '0',
  `house_min_price` int(11) NOT NULL DEFAULT '0',
  `house_discount_info` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '优惠信息',
  `house_discount_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '优惠描述',
  `house_sales_tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '电话号码',
  `house_sales_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '买楼地址',
  `house_open_time` date NOT NULL DEFAULT '2016-05-12',
  `house_handing_time` date NOT NULL DEFAULT '2016-05-12',
  `house_volume` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '容积率',
  `house_green` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '容积率',
  `house_water` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '水电燃气',
  `house_heat` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '供暖方式',
  `house_center_distance` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '距离中心',
  `house_subway_distance` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '距离地铁',
  `house_school_distance` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '距离学校',
  `house_hospital_distance` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '距离医院',
  `house_market_distance` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '距离市场',
  `house_distribution_pid` int(11) NOT NULL DEFAULT '0' COMMENT '楼栋图',
  `house_slider_pid` int(11) NOT NULL DEFAULT '0' COMMENT '广告图',
  `house_main_pid` int(11) NOT NULL DEFAULT '0' COMMENT '背景图',
  `house_thumb_pid` int(11) NOT NULL DEFAULT '0' COMMENT '缩略图',
  `house_remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `house_develop_id` int(11) NOT NULL DEFAULT '0',
  `house_admin_uid` int(11) NOT NULL DEFAULT '0',
  `house_check_status` tinyint(4) NOT NULL DEFAULT '0',
  `house_apartment_styles` int(11) NOT NULL DEFAULT '3',
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('1', '2016-05-13 02:20:26', '2016-05-18 14:53:46', '1', '东城主山桥洞', '0', '23', '0', '1', '品牌企业,南北对流,车位充足', '1', '80', '120', '0', '佣金描述', '23.0269970000', '113.7582310000', '0', '0', '东莞市东城区主山村1', '3', '0.0', '物业公司', '7000', '400000', '600000', '优惠信息', '', '电话号码', '买楼地址', '2016-05-12', '2016-05-12', '', '', '', '', '', '', '', '', '', '2', '22', '23', '22', '', '1', '0', '0', '3');
INSERT INTO `house` VALUES ('3', '2016-05-13 06:12:01', '2016-05-18 14:53:46', '2', '万达公馆', '0', '11', '3', '2', '品牌企业,南北对流,车位充足', '1', '100', '150', '0', '佣金描述', '23.0269970000', '113.7582310000', '0', '0', '东莞市东城区主山村2', '3', '0.0', '物业公司', '10000', '850000', '1000000', '优惠信息', '', '电话号码', '买楼地址', '2015-12-18', '2016-05-12', '', '', '', '', '', '', '', '', '', '2', '26', '26', '2', '', '1', '0', '0', '3');
INSERT INTO `house` VALUES ('4', '2016-05-12 18:20:26', '2016-05-18 14:53:46', '3', '东城主山3', '0', '15', '2', '1', '品牌企业,南北对流,车位充足', '1', '99', '168', '0', '佣金描述', '23.0269970000', '113.7582310000', '0', '0', '东莞市东城区主山村3', '3', '0.0', '物业公司', '6800', '1000000', '1200000', '优惠信息', '', '电话号码', '买楼地址', '2016-05-12', '2016-05-12', '', '', '', '', '', '', '', '', '', '2', '27', '27', '27', '', '1', '0', '0', '3');
INSERT INTO `house` VALUES ('5', '2016-05-12 18:20:26', '2016-05-18 14:53:46', '3', '东城主山4', '0', '18', '0', '1', '品牌企业,南北对流,车位充足', '1', '98', '300', '0', '佣金描述', '23.0269970000', '113.7582310000', '0', '0', '东莞市东城区主山村4', '3', '0.0', '物业公司', '25000', '680000', '800000', '优惠信息', '', '电话号码', '买楼地址', '2016-05-12', '2016-05-12', '', '', '', '', '', '', '', '', '', '2', '28', '28', '28', '', '1', '0', '0', '3');
INSERT INTO `house` VALUES ('6', '2016-05-12 18:20:26', '2016-05-18 14:53:46', '2', '东城主山5', '0', '11', '0', '1', '品牌企业,南北对流,车位充足', '1', '100', '250', '0', '佣金描述', '23.0269970000', '113.7582310000', '0', '0', '东莞市东城区主山村5', '3', '0.0', '物业公司', '12000', '780000', '1000000', '优惠信息', '', '电话号码', '买楼地址', '2016-05-12', '2016-05-12', '', '', '', '', '', '', '', '', '', '2', '16', '16', '15', '', '1', '0', '0', '3');
INSERT INTO `house` VALUES ('7', '2016-05-12 18:20:26', '2016-05-18 14:53:46', '1', '东城主山6', '0', '12', '0', '2', '品牌企业,南北对流,车位充足', '1', '150', '450', '0', '佣金描述', '23.0269970000', '113.7582310000', '0', '0', '东莞市东城区主山村6', '3', '0.0', '物业公司', '1280000', '1200000', '1500000', '优惠信息', '', '电话号码', '买楼地址', '2016-05-12', '2016-05-12', '', '', '', '', '', '', '', '', '', '2', '16', '21', '16', '', '1', '0', '0', '3');
INSERT INTO `house` VALUES ('8', '2016-05-12 18:20:26', '2016-05-18 14:53:46', '2', '东城主山7', '0', '13', '0', '1', '品牌企业,南北对流,车位充足', '1', '120', '300', '0', '佣金描述', '23.0269970000', '113.7582310000', '0', '0', '东莞市东城区主山村7', '3', '0.0', '物业公司', '2680000', '2580000', '3000000', '优惠信息', '', '电话号码', '买楼地址', '2016-05-12', '2016-05-12', '', '', '', '', '', '', '', '', '', '2', '16', '15', '15', '', '1', '0', '0', '3');
INSERT INTO `house` VALUES ('9', '2016-05-12 18:20:26', '2016-05-18 14:53:46', '1', '东城主山8', '0', '14', '0', '2', '品牌企业,南北对流,车位充足', '1', '300', '600', '0', '佣金描述', '23.0269970000', '113.7582310000', '0', '0', '东莞市东城区主山村8', '3', '0.0', '物业公司', '988000', '900000', '1000000', '优惠信息', '', '电话号码', '买楼地址', '2016-05-12', '2016-05-12', '', '', '', '', '', '', '', '', '', '2', '16', '24', '16', '', '1', '0', '0', '3');
INSERT INTO `house` VALUES ('10', '2016-05-12 18:20:26', '2016-05-18 14:53:46', '3', '东城主山9', '0', '15', '0', '1', '品牌企业,南北对流,车位充足', '1', '200', '420', '0', '佣金描述', '23.0269970000', '113.7582310000', '0', '0', '东莞市东城区主山村9', '4', '0.0', '物业公司', '598000', '550000', '600000', '优惠信息', '', '电话号码', '买楼地址', '2016-05-12', '2016-05-12', '', '', '', '', '', '', '', '', '', '2', '16', '27', '27', '', '1', '0', '0', '5');
INSERT INTO `house` VALUES ('11', '2016-05-12 18:20:26', '2016-05-18 14:53:46', '3', '东城主山10', '0', '12', '0', '1', '品牌企业,南北对流,车位充足', '1', '60', '180', '0', '佣金描述', '23.0269970000', '113.7582310000', '0', '0', '东莞市东城区主山村10', '4', '0.0', '物业公司', '785000', '700000', '100000', '优惠信息', '', '电话号码', '买楼地址', '2016-05-12', '2016-05-12', '', '', '', '', '', '', '', '', '', '2', '16', '2', '2', '', '1', '0', '0', '5');
INSERT INTO `house` VALUES ('12', '2016-05-12 18:20:26', '2016-05-18 14:53:46', '3', '东城主山11', '0', '18', '0', '1', '品牌企业,南北对流,车位充足', '1', '120', '260', '0', '佣金描述', '23.0269970000', '113.7582310000', '0', '0', '东莞市东城区主山村11', '4', '0.0', '物业公司', '1680000', '1500000', '200000', '优惠信息', '', '电话号码', '买楼地址', '2016-05-12', '2016-05-12', '', '', '', '', '', '', '', '', '', '2', '16', '19', '19', '', '1', '0', '0', '5');
INSERT INTO `house` VALUES ('13', '2016-05-12 18:20:26', '2016-05-18 14:53:46', '1', '东城主山12', '0', '15', '0', '1', '品牌企业,南北对流,车位充足', '1', '200', '310', '0', '佣金描述', '23.0269970000', '113.7582310000', '0', '0', '东莞市东城区主山村12', '4', '0.0', '物业公司', '2350000', '2000000', '250000', '优惠信息', '', '电话号码', '买楼地址', '2016-05-12', '2016-05-12', '', '', '', '', '', '', '', '', '', '2', '16', '16', '16', '', '1', '0', '0', '5');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_create_time` timestamp NOT NULL DEFAULT '2016-05-12 00:00:00',
  `image_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image_check_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核状态：通过、待审、拒绝、过期',
  `image_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_origin_width` int(11) NOT NULL DEFAULT '0',
  `image_origin_height` int(11) NOT NULL DEFAULT '0',
  `image_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_source_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_thumb_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_type` tinyint(4) NOT NULL DEFAULT '0',
  `house_id` tinyint(4) NOT NULL DEFAULT '0',
  `apartment_id` int(11) NOT NULL DEFAULT '0',
  `image_admin_uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', '2016-05-13 03:23:14', '2016-05-17 15:31:49', '0', '', '', '0', '0', '', '/public/img/lp/lp1.jpg', '/public/img/lp/lp1.jpg', '0', '10', '0', '0');
INSERT INTO `image` VALUES ('2', '2016-05-13 03:23:18', '2016-05-19 10:12:15', '0', '', '', '1600', '1249', '', '/public/img/house/ld.jpg', '/public/img/lp/lp2.jpg', '0', '10', '0', '0');
INSERT INTO `image` VALUES ('3', '2016-05-13 03:25:31', '2016-05-17 15:31:54', '0', '', '', '0', '0', '', '/public/2016-05-16/57392af5396ab.jpg', '/public/img/lp/lp1.jpg', '0', '10', '0', '0');
INSERT INTO `image` VALUES ('4', '2016-05-13 03:25:36', '2016-05-17 15:31:57', '0', '', '', '0', '0', '', '/public/2016-05-16/57392af5396ab.jpg', '/public/img/lp/lp2.jpg', '0', '10', '0', '0');
INSERT INTO `image` VALUES ('5', '2016-05-13 03:28:21', '2016-05-17 15:32:00', '0', '', '', '0', '0', '', '/public/2016-05-16/57392af5396ab.jpg', '/public/img/lp/lp1.jpg', '0', '10', '0', '0');
INSERT INTO `image` VALUES ('6', '2016-05-13 03:30:47', '2016-05-17 15:32:06', '0', '', '', '0', '0', '', '/public/2016-05-13/57354a6742b54.png', '/public/img/lp/lp1.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('7', '2016-05-13 03:31:34', '2016-05-17 15:32:09', '0', '', '', '0', '0', '', '/public/2016-05-13/57354a96c668c.png', '/public/img/lp/lp2.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('8', '2016-05-13 03:31:44', '2016-05-17 15:32:13', '0', '', '', '0', '0', '', '/public/2016-05-13/57354aa00bdae.png', '/public/img/lp/lp1.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('9', '2016-05-13 03:31:49', '2016-05-17 15:32:17', '0', '', '', '0', '0', '', '/public/2016-05-13/57354aa5814dc.png', '/public/img/lp/lp2.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('10', '2016-05-13 03:36:05', '2016-05-17 15:32:19', '0', '', '', '0', '0', '', '/public/2016-05-13/57354ba565cc3.png', '/public/img/lp/lp1.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('11', '2016-05-13 03:36:32', '2016-05-17 15:32:21', '0', '', '', '0', '0', '', '/public/2016-05-13/57354bc0d37f4.png', '/public/img/lp/lp2.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('12', '2016-05-13 03:36:42', '2016-05-17 15:32:22', '0', '', '', '0', '0', '', '/public/2016-05-13/57354bcac3615.png', '/public/img/lp/lp1.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('13', '2016-05-13 03:38:35', '2016-05-17 15:32:24', '0', '', '', '0', '0', '', '/public/2016-05-13/57354c3b467f4.png', '/public/img/lp/lp2.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('14', '2016-05-13 03:38:38', '2016-05-17 15:32:26', '0', '', '', '0', '0', '', '/public/2016-05-13/57354c3e40741.png', '/public/img/lp/lp1.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('15', '2016-05-13 03:39:10', '2016-05-17 15:32:30', '0', '', '', '0', '0', '', '/public/2016-05-13/57354c5ed53d9.png', '/public/img/lp/lp2.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('16', '2016-05-13 04:01:16', '2016-05-17 15:32:32', '0', '', '', '0', '0', '', '/public/2016-05-13/5735518c70ea3.jpg', '/public/img/lp/lp1.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('17', '2016-05-13 06:11:09', '2016-05-17 15:32:34', '0', '', '', '0', '0', '', '/public/2016-05-13/57356ffd5a1b9.jpg', '/public/img/lp/lp1.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('18', '2016-05-13 06:12:01', '2016-05-17 15:32:36', '0', '', '', '0', '0', '', '/public/2016-05-13/57357031f1a5e.jpg', '/public/img/lp/lp1.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('19', '2016-05-13 06:12:10', '2016-05-17 15:32:38', '0', '', '', '0', '0', '', '/public/2016-05-13/5735703aa5b6a.jpg', '/public/img/lp/lp2.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('20', '2016-05-12 00:00:00', '2016-05-18 14:14:07', '0', '', '', '0', '0', '', '/public/2016-05-16/57392aed2c10c.jpg', '/public/img/lp/lp1.jpg', '1', '3', '0', '0');
INSERT INTO `image` VALUES ('21', '2016-05-12 00:00:00', '2016-05-18 14:14:07', '0', '', '', '0', '0', '', '/public/2016-05-16/57392af5396ab.jpg', '/public/img/lp/lp2.jpg', '1', '3', '0', '0');
INSERT INTO `image` VALUES ('22', '2016-05-12 00:00:00', '2016-05-18 14:14:07', '0', '', '', '0', '0', '', '/public/img/sliders/slider1.jpg', '/public/img/lp/lp1.jpg', '1', '3', '0', '0');
INSERT INTO `image` VALUES ('23', '2016-05-12 00:00:00', '2016-05-18 18:38:10', '0', '', '', '0', '0', '', '/public/img/sliders/slider4.jpg', '/public/img/lp/lp2.jpg', '0', '3', '0', '0');
INSERT INTO `image` VALUES ('24', '2016-05-12 00:00:00', '2016-05-18 14:14:24', '0', '', '', '0', '0', '', '/public/2016-05-17/573a8b4fa02ce.jpg', '/public/img/lp/lp2.jpg', '0', '3', '0', '0');
INSERT INTO `image` VALUES ('25', '2016-05-12 00:00:00', '2016-05-18 14:14:24', '0', '', '', '0', '0', '', '/public/2016-05-17/573a8b59a3094.jpg', '/public/img/lp/lp1.jpg', '0', '3', '0', '0');
INSERT INTO `image` VALUES ('26', '2016-05-12 00:00:00', '2016-05-18 13:32:24', '0', '', '', '0', '0', '', '/public/img/sliders/slider2.jpg', '/public/img/lp/lp1.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('27', '2016-05-12 00:00:00', '2016-05-17 15:32:55', '0', '', '', '0', '0', '', '/public/img/sliders/slider3.jpg', '/public/img/lp/lp2.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('28', '2016-05-12 00:00:00', '2016-05-17 15:32:58', '0', '', '', '0', '0', '', '/public/img/sliders/slider4.jpg', '/public/img/lp/lp1.jpg', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('29', '2016-05-12 00:00:00', '2016-05-18 11:18:32', '0', '', '', '0', '0', '', '/public/img/house/house1.jpg', '', '0', '0', '0', '0');
INSERT INTO `image` VALUES ('30', '2016-05-12 00:00:00', '2016-05-18 14:29:25', '0', '', '', '0', '0', '', '/public/img/house/sj/sj1.jpg', '', '1', '1', '0', '0');
INSERT INTO `image` VALUES ('31', '2016-05-12 00:00:00', '2016-05-18 14:29:25', '0', '', '', '0', '0', '', '/public/img/house/sj/sj2.jpg', '', '1', '1', '0', '0');
INSERT INTO `image` VALUES ('32', '2016-05-12 00:00:00', '2016-05-18 14:29:26', '0', '', '', '0', '0', '', '/public/img/house/sj/sj3.jpg', '', '1', '1', '0', '0');
INSERT INTO `image` VALUES ('33', '2016-05-12 00:00:00', '2016-05-18 14:29:26', '0', '', '', '0', '0', '', '/public/img/house/sj/sj4.jpg', '', '1', '1', '0', '0');
INSERT INTO `image` VALUES ('34', '2016-05-12 00:00:00', '2016-05-18 14:29:26', '0', '', '', '0', '0', '', '/public/img/house/sj/sj1.jpg', '', '0', '1', '0', '0');
INSERT INTO `image` VALUES ('35', '2016-05-12 00:00:00', '2016-05-18 14:29:27', '0', '', '', '0', '0', '', '/public/img/house/sj/sj2.jpg', '', '0', '1', '0', '0');
INSERT INTO `image` VALUES ('36', '2016-05-12 00:00:00', '2016-05-18 14:29:27', '0', '', '', '0', '0', '', '/public/img/house/sj/sj3.jpg', '', '0', '1', '0', '0');
INSERT INTO `image` VALUES ('37', '2016-05-12 00:00:00', '2016-05-18 14:29:28', '0', '', '', '0', '0', '', '/public/img/house/sj/sj4.jpg', '', '0', '1', '0', '0');
INSERT INTO `image` VALUES ('38', '2016-05-12 00:00:00', '2016-05-18 14:29:28', '0', '', '', '0', '0', '', '/public/img/house/hxt2/hxt1.png', '', '2', '1', '0', '0');
INSERT INTO `image` VALUES ('39', '2016-05-12 00:00:00', '2016-05-18 14:29:28', '0', '', '', '0', '0', '', '/public/img/house/hxt2/hxt2.png', '', '2', '1', '0', '0');
INSERT INTO `image` VALUES ('40', '2016-05-12 00:00:00', '2016-05-18 14:29:29', '0', '', '', '0', '0', '', '/public/img/house/hxt2/hxt3.png', '', '2', '1', '0', '0');
INSERT INTO `image` VALUES ('41', '2016-05-12 00:00:00', '2016-05-18 14:29:29', '0', '', '', '0', '0', '', '/public/img/house/hxt2/hxt4.png', '', '2', '1', '0', '0');
INSERT INTO `image` VALUES ('42', '2016-05-12 00:00:00', '2016-05-18 15:09:42', '0', '', '', '0', '0', '', '/public/img/house/hxt/hxt1.png', '', '0', '0', '1', '0');
INSERT INTO `image` VALUES ('43', '2016-05-12 00:00:00', '2016-05-18 15:09:48', '0', '', '', '0', '0', '', '/public/img/house/hxt/hxt2.png', '', '0', '0', '2', '0');
INSERT INTO `image` VALUES ('44', '2016-05-12 00:00:00', '2016-05-18 15:09:53', '0', '', '', '0', '0', '', '/public/img/house/hxt/hxt3.png', '', '0', '0', '3', '0');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `record_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `record_customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `develop_customer_tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `house_id` int(10) unsigned NOT NULL DEFAULT '0',
  `record_demand` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `record_record_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-未报备，1-正在报备，2-报备成功，3-报备失败，4-已带看',
  `record_error_info` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `record_time` date NOT NULL DEFAULT '2016-12-12',
  `record_remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sales_id` int(10) unsigned NOT NULL DEFAULT '0',
  `record_create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of record
-- ----------------------------

-- ----------------------------
-- Table structure for reservation
-- ----------------------------
DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `reservation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reservation_customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `house_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reservation_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0为预约，1为已带看，2为复看，默认为0',
  `reservation_record_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-未报备，1-正在报备，2-报备成功，3-报备失败，4-已带看',
  `reservation_error_info` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reservation_time` date NOT NULL DEFAULT '2016-12-12',
  `reservation_remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sales_id` int(10) unsigned NOT NULL DEFAULT '0',
  `watched_time` date NOT NULL DEFAULT '2015-12-12',
  PRIMARY KEY (`reservation_id`),
  UNIQUE KEY `customer_house_id` (`customer_id`,`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of reservation
-- ----------------------------

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `sales_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sales_create_time` timestamp NOT NULL DEFAULT '2016-05-12 00:00:00',
  `sales_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sales_check_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核状态：通过、待审、拒绝、过期',
  `sales_nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_gender` tinyint(4) NOT NULL DEFAULT '0',
  `sales_birthday` date NOT NULL DEFAULT '2015-12-12',
  `sales_thumb_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_industry` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '行业',
  `sales_job` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '工作',
  `sales_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `develop_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开发商id',
  PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sales
-- ----------------------------

-- ----------------------------
-- Table structure for zone
-- ----------------------------
DROP TABLE IF EXISTS `zone`;
CREATE TABLE `zone` (
  `zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zone_parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `zone_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of zone
-- ----------------------------
INSERT INTO `zone` VALUES ('1', '东莞', '0', '');
INSERT INTO `zone` VALUES ('2', '东城', '1', '');
INSERT INTO `zone` VALUES ('3', '南城', '1', '');
INSERT INTO `zone` VALUES ('4', '莞城', '1', '');
INSERT INTO `zone` VALUES ('5', '常平', '1', '');
INSERT INTO `zone` VALUES ('6', '虎门', '1', '');
INSERT INTO `zone` VALUES ('7', '长安', '1', '');
