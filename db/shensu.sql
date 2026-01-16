/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 80041
Source Host           : localhost:3306
Source Database       : study_room

Target Server Type    : MYSQL
Target Server Version : 80041
File Encoding         : 65001

Date: 2025-12-18 17:39:18
*/
<<<<<<< HEAD
USE study_room; -- 先指定要操作的数据库
=======

>>>>>>> main
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `shensu`
-- ----------------------------
DROP TABLE IF EXISTS `shensu`;
CREATE TABLE `shensu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '申诉记录主键ID',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '申诉记录创建时间',
  `shensuDanhao` varchar(200) NOT NULL COMMENT '申诉单号（唯一标识单次申诉）',
  `xuehao` varchar(200) NOT NULL COMMENT '申诉学生学号（关联xuesheng/weigui_record表）',
  `xingming` varchar(200) DEFAULT NULL COMMENT '申诉学生姓名',
  `weiguiRecordId` bigint NOT NULL COMMENT '关联违规记录ID（关联weigui_record表的id）',
  `shensuNeirong` longtext COMMENT '申诉内容（如：我未大声喧哗，申请撤销违规）',
  `shensuTupian` longtext COMMENT '申诉举证图片（多个URL用逗号分隔）',
  `shensuShijian` datetime DEFAULT NULL COMMENT '申诉提交时间',
  `chuliZhuangtai` tinyint NOT NULL DEFAULT '0' COMMENT '处理状态：0=待处理/1=确认（通过）/2=驳回',
  `chuliRen` varchar(200) DEFAULT NULL COMMENT '处理人（管理员账号）',
  `chuliBeizhu` longtext COMMENT '处理备注（如：核实无违规，撤销记录）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_shensuDanhao` (`shensuDanhao`),
  KEY `idx_xuehao` (`xuehao`),
  KEY `idx_weiguiRecordId` (`weiguiRecordId`),
  KEY `idx_chuliZhuangtai` (`chuliZhuangtai`),
  CONSTRAINT `fk_shensu_weiguiRecordId` FOREIGN KEY (`weiguiRecordId`) REFERENCES `weigui_record` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='学生违规申诉表';

-- ----------------------------
-- Records of shensu
-- ----------------------------
INSERT INTO `shensu` VALUES ('1', '2025-12-18 13:43:31', 'SS20251218001', '236001000', '周泽楷', '6', '我只是正常讨论问题，声音未超标，申请撤销违规记录', null, '2025-12-18 13:43:31', '1', 'admin', '情况属实');
INSERT INTO `shensu` VALUES ('2', '2025-12-18 15:17:11', 'SS20251218002', '236003000', '李四', '17', '我实际到场但忘记签到，申请撤销未签到违规', null, '2025-12-18 15:17:11', '1', 'admin', '情况属实');
INSERT INTO `shensu` VALUES ('3', '2025-12-18 15:17:25', 'SS20251218003', '236003000', '李四', '18', '当时是接紧急电话，并非故意喧哗', null, '2025-12-18 15:17:25', '0', null, null);
INSERT INTO `shensu` VALUES ('4', '2025-12-18 15:17:37', 'SS20251218004', '236003000', '李四', '21', '系统签到故障导致未签到，有同学可以证明', null, '2025-12-18 15:17:37', '0', null, null);
INSERT INTO `shensu` VALUES ('5', '2025-12-18 15:17:49', 'SS20251218005', '236001000', '周泽楷', '20', '当时是和同学讨论学习问题，声音在合理范围', null, '2025-12-18 15:17:49', '0', null, null);
