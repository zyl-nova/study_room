/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 80041
Source Host           : localhost:3306
Source Database       : study_room

Target Server Type    : MYSQL
Target Server Version : 80041
File Encoding         : 65001

Date: 2025-12-17 22:49:21
*/
<<<<<<< HEAD
USE study_room; -- 先指定要操作的数据库
=======

>>>>>>> main
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `heimingdan`
-- ----------------------------
DROP TABLE IF EXISTS `heimingdan`;
CREATE TABLE `heimingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '学生学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `total_weigui_count` tinyint NOT NULL DEFAULT '0' COMMENT '累计违规次数（≥3次自动拉黑）',
  `weigui_chifan_count` tinyint NOT NULL DEFAULT '0' COMMENT '教室乱吃乱喝违规次数',
  `weigui_weiqiandao_count` tinyint NOT NULL DEFAULT '0' COMMENT '未签到违规次数',
  `weigui_xuanhua_count` tinyint NOT NULL DEFAULT '0' COMMENT '大声喧哗违规次数',
  `weigui_suibiaobian_count` tinyint NOT NULL DEFAULT '0' COMMENT '随地大小便违规次数',
  `other_weigui_desc` varchar(500) DEFAULT NULL COMMENT '其他违规类型说明（非以上四类时填写）',
  `heimingdan_yuanyin` longtext COMMENT '拉黑原因（汇总说明）',
  `heimingdan_start_time` datetime NOT NULL COMMENT '拉黑开始时间（即加入黑名单时间）',
  `heimingdan_end_time` datetime NOT NULL COMMENT '拉黑结束时间（即解除时间）',
  `shifoujiechu` tinyint DEFAULT '0' COMMENT '是否解除（0=未解除，1=已解除）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_xuehao_status` (`xuehao`,`shifoujiechu`),
  KEY `idx_xuehao` (`xuehao`),
  KEY `idx_heimingdan_time` (`heimingdan_start_time`,`heimingdan_end_time`),
  CONSTRAINT `fk_heimingdan_xuehao` FOREIGN KEY (`xuehao`) REFERENCES `xuesheng` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='黑名单表（最终版）';

-- ----------------------------
-- Records of heimingdan
-- ----------------------------
INSERT INTO `heimingdan` VALUES ('4', '236003000', '李四', '3', '1', '1', '1', '0', null, '教室乱吃乱喝1次+未签到1次+大声喧哗1次，累计3次违规达到拉黑阈值', '2025-12-15 09:00:00', '2025-12-22 09:00:00', '0');
INSERT INTO `heimingdan` VALUES ('5', '236002000', '赵晗天', '4', '2', '1', '0', '0', '课间追逐打闹', '教室乱吃乱喝2次+未签到1次+追逐打闹1次，累计4次违规', '2025-12-10 14:30:00', '2025-12-17 14:30:00', '0');
INSERT INTO `heimingdan` VALUES ('6', '236001000', '周泽楷', '3', '0', '1', '1', '2', null, '未签到1次+大声喧哗2次，累计3次违规', '2025-12-08 08:00:00', '2025-12-22 08:00:00', '0');
