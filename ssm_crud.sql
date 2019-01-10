/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : ssm_crud

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-01-11 01:19:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES ('1', '开发部');
INSERT INTO `tbl_dept` VALUES ('2', '设计部');
INSERT INTO `tbl_dept` VALUES ('3', '测试部');
INSERT INTO `tbl_dept` VALUES ('4', '人事部');

-- ----------------------------
-- Table structure for `tbl_emp`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(45) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_emp_dept_idx` (`d_id`),
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`d_id`) REFERENCES `tbl_dept` (`dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2051 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------
INSERT INTO `tbl_emp` VALUES ('2034', '张三', 'M', 'ed39d7@163.com', '2');
INSERT INTO `tbl_emp` VALUES ('2036', '李四', 'M', '279909@163.com', '3');
INSERT INTO `tbl_emp` VALUES ('2038', '王五', 'M', '2e1b011@163.com', '4');
INSERT INTO `tbl_emp` VALUES ('2039', '哈哈', 'M', '6666@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('2040', '玲玲', 'F', '55555555@qq.com', '2');
INSERT INTO `tbl_emp` VALUES ('2041', '啊啊', 'M', '123@qq.com', '3');
INSERT INTO `tbl_emp` VALUES ('2042', '老王', 'M', '45454454@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('2044', '蒋晶晶', 'F', 'jlangk@qq.com', '4');
INSERT INTO `tbl_emp` VALUES ('2045', '茹静', 'F', '4444@qq.com', '2');
INSERT INTO `tbl_emp` VALUES ('2048', '单发', 'F', '122@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('2049', '老二', 'M', '121@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('2050', '追追', 'M', '123@qq.com', '1');
