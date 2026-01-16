/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 80041
Source Host           : localhost:3306
Source Database       : study_room

Target Server Type    : MYSQL
Target Server Version : 80041
File Encoding         : 65001

Date: 2025-12-19 03:16:44
*/
<<<<<<< HEAD
USE study_room; -- 先指定要操作的数据库
=======

>>>>>>> main
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `weigui_record`
-- ----------------------------
DROP TABLE IF EXISTS `weigui_record`;
CREATE TABLE `weigui_record` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '违规记录创建时间',
  `weiguiDanhao` varchar(200) NOT NULL COMMENT '违规单号（唯一标识单次违规）',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '违规学生学号（关联xuesheng表/heimingdan表）',
  `xingming` varchar(200) DEFAULT NULL COMMENT '违规学生姓名',
  `zixishiId` int DEFAULT NULL COMMENT '违规自习室编号（关联zixishi表）',
  `zixishiMingcheng` varchar(200) DEFAULT NULL COMMENT '违规自习室名称',
  `zuoWei` int DEFAULT NULL COMMENT '违规座位号',
  `weiguiShijian` datetime DEFAULT NULL COMMENT '违规时间',
  `weiguiLeixing` varchar(50) DEFAULT NULL COMMENT '违规类型（chifan/weiqiandao等）',
  `weiguiLeixingName` varchar(50) DEFAULT NULL COMMENT '违规类型中文名称',
  `weiguiBeizhu` longtext COMMENT '违规详情说明（如：2025-10-20 14:00在大自习室21号座位未签到）',
  `weiguiTupian` longtext COMMENT '违规证据图片（多个URL用逗号分隔）',
  `luRuRen` varchar(200) DEFAULT NULL COMMENT '录入人（管理员账号）',
  `isValid` tinyint NOT NULL DEFAULT '1' COMMENT '记录是否有效（0=作废/1=有效，申诉通过后可作废）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_weiguiDanhao` (`weiguiDanhao`),
  KEY `idx_xuehao` (`xuehao`),
  KEY `idx_zixishiId` (`zixishiId`),
  KEY `idx_weiguiShijian` (`weiguiShijian`),
  KEY `idx_weiguiLeixing` (`weiguiLeixing`),
  CONSTRAINT `fk_weigui_xuehao` FOREIGN KEY (`xuehao`) REFERENCES `xuesheng` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='学生违规记录表（单次违规行为）';

-- ----------------------------
-- Records of weigui_record
-- ----------------------------
INSERT INTO `weigui_record` VALUES ('6', '2025-12-16 01:24:37', 'ee47eedc-d9da-11f0-98c1-005056c00001', '236001000', '周泽楷', null, '23计科1班专属自习室', null, '2025-12-15 10:20:00', 'xuanhua', '大声喧哗', '讨论问题声音过大，影响他人', null, null, '0');
INSERT INTO `weigui_record` VALUES ('17', '2025-12-17 15:08:37', '4b718d252ad941e7', '236003000', '李四', null, '图书馆', null, '2025-12-09 00:00:00', 'weiqiandao', null, '未按规则签到', null, null, '0');
INSERT INTO `weigui_record` VALUES ('18', '2025-12-17 15:09:15', '9bc4c20297e745ad', '236003000', '李四', null, 's2s', null, '2025-12-14 00:00:00', 'xuanhua', null, '自习室大声喧哗', null, null, '1');
INSERT INTO `weigui_record` VALUES ('20', '2025-12-18 00:04:49', '6385a14f85c94c95', '236001000', '周泽楷', null, '图书馆', null, '2025-12-18 00:04:30', 'xuanhua', null, '大吵大闹，影响他人自习', null, null, '1');
INSERT INTO `weigui_record` VALUES ('21', '2025-12-18 00:07:05', '4212626488304176', '236003000', '李四', null, '图书馆', null, '2025-12-18 00:06:51', 'weiqiandao', null, '未进行签到', null, null, '1');
INSERT INTO `weigui_record` VALUES ('22', '2025-12-18 00:08:31', '692c0a733c984e20', '236002000', '赵晗天', null, '图书馆', null, '2025-12-16 00:00:00', 'chifan', null, '教室违规吃东西', null, null, '1');
INSERT INTO `weigui_record` VALUES ('23', '2025-12-18 00:10:45', '6b3d0033aada499e', '236002000', '赵晗天', null, '图书馆', null, '2025-12-10 00:00:00', 'weiqiandao', null, '未按时签到', null, null, '1');
INSERT INTO `weigui_record` VALUES ('24', '2025-12-18 00:15:22', '671ac43201354d7c', '236001000', '周泽楷', null, '图书馆', null, '2025-12-18 00:15:05', 'chifan', null, '乱吃乱喝', null, null, '1');
