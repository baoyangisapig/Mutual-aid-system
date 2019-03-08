/*
 Navicat MySQL Data Transfer

 Source Server         : success
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : hospital

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 08/03/2019 13:21:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for application
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) DEFAULT NULL,
  `p_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `p_section` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `d_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `d_section` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `n_id` int(255) DEFAULT NULL,
  `n_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `n_id1` int(255) DEFAULT NULL,
  `n_name1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `roomnumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of application
-- ----------------------------
INSERT INTO `application` VALUES (16, 20, '章三', '心理咨询', 1, '李时珍', '心理咨询', '下午三点', '失恋后寻求心理咨询', 3, 7, '李鹏', NULL, NULL, '一教101');
INSERT INTO `application` VALUES (17, 22, '张三', '考研互助', 2, '周小平', '考研互助', '每天下午1点半', '考研英语复习', 3, 3, '王麻小', NULL, NULL, '三教102');

-- ----------------------------
-- Table structure for count
-- ----------------------------
DROP TABLE IF EXISTS `count`;
CREATE TABLE `count`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of count
-- ----------------------------
INSERT INTO `count` VALUES (1, 1, '1', 'doc00001', 'doc00001');
INSERT INTO `count` VALUES (3, 5, '1', 'doc00005', 'doc00005');
INSERT INTO `count` VALUES (5, 4, '1', 'doc00004', 'doc00004');
INSERT INTO `count` VALUES (6, 2, '1', 'doc00002', 'doc00002');
INSERT INTO `count` VALUES (7, 3, '1', 'doc00003', 'doc00003');
INSERT INTO `count` VALUES (8, 6, '1', 'doc00006', 'doc00006');
INSERT INTO `count` VALUES (9, 7, '1', 'doc00007', 'doc00007');
INSERT INTO `count` VALUES (10, 8, '1', 'doc00008', 'doc00008');
INSERT INTO `count` VALUES (20, 20, '2', 'stu001', 'stu001');
INSERT INTO `count` VALUES (21, 22, '2', 'stu002', 'stu002');

-- ----------------------------
-- Table structure for donator
-- ----------------------------
DROP TABLE IF EXISTS `donator`;
CREATE TABLE `donator`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `section` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donator
-- ----------------------------
INSERT INTO `donator` VALUES (1, '李时珍', '11000', '心理咨询');
INSERT INTO `donator` VALUES (2, '周小平', '11001', '考研互助');
INSERT INTO `donator` VALUES (3, '胡万', '11002', '拾取遗物');
INSERT INTO `donator` VALUES (4, '周晓会', '11003', '考研相关');
INSERT INTO `donator` VALUES (5, '陈岚', '11004', '考研相关');
INSERT INTO `donator` VALUES (6, '赵无极', '11005', '作业相关');
INSERT INTO `donator` VALUES (7, '陈坤', '11006', '考研相关');
INSERT INTO `donator` VALUES (8, '张三丰', '11007', '拾取遗物');

-- ----------------------------
-- Table structure for professor
-- ----------------------------
DROP TABLE IF EXISTS `professor`;
CREATE TABLE `professor`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of professor
-- ----------------------------
INSERT INTO `professor` VALUES (1, '张麻子', '10010', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552027927829&di=3a8b70e589ad4cff7fcd52431c63bbc4&imgtype=0&src=http%3A%2F%2Fpic.baike.soso.com%2Fp%2F20131221%2F20131221113851-814274349.jpg', '副教授', '1');
INSERT INTO `professor` VALUES (2, '王麻丫', '10011', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552027927829&di=b5749f715aa2de7c50832dd67054f13f&imgtype=0&src=http%3A%2F%2Fwx4.sinaimg.cn%2Fnmw690%2F005M94J9ly4fq2qsqrb1aj30dw0dwt91.jpg', '教授', '1');
INSERT INTO `professor` VALUES (3, '王麻小', '10012', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552027927824&di=4d2a0863f771d63d0756cbc941720f3f&imgtype=0&src=http%3A%2F%2Fwww.ygjj.com%2Fbookpic2%2F2011-03-27%2Fnew401227-20110327154843981178.jpg', '副教授', '2');
INSERT INTO `professor` VALUES (4, '李国旭', '10013', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552027927815&di=4c79d01e80dd46cb5bee7efa0c7f5b03&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181207%2Fee229b1a8b744ae5ad3eb45c093e67d5.jpeg', '讲师', '1');
INSERT INTO `professor` VALUES (5, '周龙', '10014', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552027980974&di=6f050e9aeadb255666e5223b34d97cf7&imgtype=0&src=http%3A%2F%2Fs1.sinaimg.cn%2Fmw690%2F001NWxbVzy7aWBqUZyg00%26690', '副教授', '1');
INSERT INTO `professor` VALUES (6, '章小蕙', '10015', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552027980969&di=3ccfb64eea191b47c820c5c9b9d0ccea&imgtype=0&src=http%3A%2F%2Fwww.nustti.edu.cn%2Fuploads%2Fimg1%2F20170326%2F58d74baabb4b6.jpg', '教授', '1');
INSERT INTO `professor` VALUES (7, '李鹏', '10016', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552027980968&di=14a5a3fc139de1c2bb1e499a09416e6a&imgtype=0&src=http%3A%2F%2Fwww.wxic.edu.cn%2Ffiles%2F103499%2F1903%2Fx_29e4104836.jpg', '教授', '2');
INSERT INTO `professor` VALUES (8, '何云伟', '10017', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552028153316&di=65d4d7d5b27ed7344de9a68264b48561&imgtype=0&src=http%3A%2F%2Fs13.sinaimg.cn%2Fmiddle%2F564a12f5tc0785492ffcc%26690', '讲师', '1');

-- ----------------------------
-- Table structure for seeker
-- ----------------------------
DROP TABLE IF EXISTS `seeker`;
CREATE TABLE `seeker`  (
  `id` int(11) NOT NULL AUTO_INCREMENT