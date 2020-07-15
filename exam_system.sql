/*
 Navicat Premium Data Transfer

 Source Server         : user
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : localhost:3306
 Source Schema         : exam_system

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 30/06/2020 14:03:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出卷人姓名',
  `examName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `examType` int(255) DEFAULT NULL COMMENT '试卷类型',
  `time` datetime(0) DEFAULT NULL COMMENT '考试截止时间',
  `oneId` int(11) DEFAULT NULL,
  `twoId` int(11) DEFAULT NULL,
  `threeId` int(11) DEFAULT NULL,
  `fourId` int(11) DEFAULT NULL,
  `fiveId` int(11) DEFAULT NULL,
  `sixId` int(11) DEFAULT NULL,
  `sevenId` int(11) DEFAULT NULL,
  `eightId` int(11) DEFAULT NULL,
  `nineId` int(11) DEFAULT NULL,
  `tenId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES (1, 5, 'wjf', '数据结构在线测试（四）', 1, '2020-06-22 20:00:00', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
INSERT INTO `exam` VALUES (2, 5, 'mwf', '软工导论在线测试（一）', 3, '2020-06-15 19:00:00', 2, 4, 6, 7, 8, 9, 10, 16, 17, 20);
INSERT INTO `exam` VALUES (3, 5, 'wjf', '操作系统在线测试（二）', 2, '2020-06-25 18:00:00', 12, 13, 14, 15, 21, 22, 23, 24, 25, 26);
INSERT INTO `exam` VALUES (4, 5, 'xc', '分布式期末考试', 4, '2020-06-15 14:00:00', 2, 3, 4, 5, 7, 8, 9, 10, 17, 20);
INSERT INTO `exam` VALUES (5, 5, 'wjf', '操作系统期末考试', 2, '2020-07-17 20:49:09', 11, 12, 13, 15, 21, 22, 23, 24, 25, 26);
INSERT INTO `exam` VALUES (6, 5, 'mwf', 'q', 1, '2020-07-05 02:06:10', 1, 2, 3, 4, 7, 8, 9, 10, 16, 17);
INSERT INTO `exam` VALUES (7, 6, 'mwf', 'q', 2, '2020-07-05 02:08:14', 11, 12, 13, 14, 15, 21, 22, 23, 24, 25);
INSERT INTO `exam` VALUES (8, 6, 'mwf', '1', 2, '2020-07-05 02:08:54', 11, 12, 13, 14, 15, 21, 22, 23, 24, 25);

-- ----------------------------
-- Table structure for examreport
-- ----------------------------
DROP TABLE IF EXISTS `examreport`;
CREATE TABLE `examreport`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '考生ID',
  `examName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '考试名称',
  `one` int(11) DEFAULT NULL COMMENT '1-10表示每题的对错',
  `two` int(11) DEFAULT NULL,
  `three` int(11) DEFAULT NULL,
  `four` int(11) DEFAULT NULL,
  `five` int(11) DEFAULT NULL,
  `six` int(11) DEFAULT NULL,
  `seven` int(11) DEFAULT NULL,
  `eight` int(11) DEFAULT NULL,
  `nine` int(11) DEFAULT NULL,
  `ten` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of examreport
-- ----------------------------
INSERT INTO `examreport` VALUES (1, 4, '操作系统期末考试', 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 50);
INSERT INTO `examreport` VALUES (2, 2, '操作系统期末考试', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 30);
INSERT INTO `examreport` VALUES (3, 3, '操作系统期末考试', 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 50);
INSERT INTO `examreport` VALUES (4, 3, '操作系统期末考试', 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 40);
INSERT INTO `examreport` VALUES (5, 2, '操作系统期末考试', 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 40);
INSERT INTO `examreport` VALUES (6, 3, '操作系统期末考试', 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 50);
INSERT INTO `examreport` VALUES (7, 4, '操作系统期末考试', 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 60);
INSERT INTO `examreport` VALUES (8, 5, '操作系统期末考试', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 90);
INSERT INTO `examreport` VALUES (9, 13, '操作系统期末考试', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 60);
INSERT INTO `examreport` VALUES (10, 7, '操作系统期末考试', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 60);
INSERT INTO `examreport` VALUES (11, 8, '操作系统期末考试', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 10);
INSERT INTO `examreport` VALUES (12, 9, '操作系统期末考试', 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 80);
INSERT INTO `examreport` VALUES (13, 10, '操作系统期末考试', 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 60);
INSERT INTO `examreport` VALUES (14, 11, '操作系统期末考试', 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 40);
INSERT INTO `examreport` VALUES (15, 12, '操作系统期末考试', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 100);
INSERT INTO `examreport` VALUES (16, 2, '数据结构在线测试（四）', 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 50);
INSERT INTO `examreport` VALUES (17, 3, '数据结构在线测试（四）', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 50);
INSERT INTO `examreport` VALUES (18, 4, '数据结构在线测试（四）', 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 40);
INSERT INTO `examreport` VALUES (19, 5, '数据结构在线测试（四）', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 80);
INSERT INTO `examreport` VALUES (20, 7, '数据结构在线测试（四）', 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 70);
INSERT INTO `examreport` VALUES (21, 2, '操作系统在线测试（二）', 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 50);
INSERT INTO `examreport` VALUES (22, 2, '操作系统在线测试（二）', 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 40);
INSERT INTO `examreport` VALUES (23, 2, '操作系统在线测试（二）', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 30);
INSERT INTO `examreport` VALUES (24, 2, '操作系统在线测试（二）', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 10);
INSERT INTO `examreport` VALUES (25, 2, '操作系统在线测试（二）', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 20);
INSERT INTO `examreport` VALUES (26, 2, '操作系统在线测试（二）', 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 50);
INSERT INTO `examreport` VALUES (27, 2, '操作系统期末考试', 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 30);
INSERT INTO `examreport` VALUES (28, 2, '数据结构在线测试（四）', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `examreport` VALUES (29, 2, '操作系统期末考试', 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 40);
INSERT INTO `examreport` VALUES (30, 2, '数据结构在线测试（四）', 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 40);
INSERT INTO `examreport` VALUES (31, 2, '操作系统期末考试', 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 50);
INSERT INTO `examreport` VALUES (32, 2, '操作系统期末考试', 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 20);
INSERT INTO `examreport` VALUES (33, 3, '操作系统期末考试', 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 30);
INSERT INTO `examreport` VALUES (34, 2, '操作系统期末考试', 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 30);
INSERT INTO `examreport` VALUES (35, 2, '操作系统期末考试', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 20);
INSERT INTO `examreport` VALUES (36, 2, '操作系统期末考试', 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 40);
INSERT INTO `examreport` VALUES (37, 3, '操作系统期末考试', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 10);
INSERT INTO `examreport` VALUES (38, 2, '数据结构在线测试（四）', 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 40);
INSERT INTO `examreport` VALUES (39, 2, '操作系统期末考试', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 10);
INSERT INTO `examreport` VALUES (40, 3, '数据结构在线测试（四）', 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 30);
INSERT INTO `examreport` VALUES (41, 2, '操作系统期末考试', 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 50);
INSERT INTO `examreport` VALUES (42, 2, '操作系统期末考试', 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 30);
INSERT INTO `examreport` VALUES (43, 2, '数据结构在线测试（四）', 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 40);
INSERT INTO `examreport` VALUES (47, 2, '分布式期末考试', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20);
INSERT INTO `examreport` VALUES (48, 2, '数据结构在线测试（四）', 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 60);
INSERT INTO `examreport` VALUES (50, 2, '软工导论在线测试（一）', 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 30);
INSERT INTO `examreport` VALUES (51, 2, '软工导论在线测试（一）', 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 30);
INSERT INTO `examreport` VALUES (52, 2, '操作系统在线测试（二）', 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 30);
INSERT INTO `examreport` VALUES (53, 2, '软工导论在线测试（一）', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 10);
INSERT INTO `examreport` VALUES (57, 2, '数据结构在线测试（四）', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `examreport` VALUES (58, 2, '数据结构在线测试（四）', 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 30);
INSERT INTO `examreport` VALUES (59, 2, '数据结构在线测试（四）', 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 40);
INSERT INTO `examreport` VALUES (60, 2, '数据结构在线测试（四）', 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 40);
INSERT INTO `examreport` VALUES (61, 2, 'OS', 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 20);
INSERT INTO `examreport` VALUES (62, 2, 'OS', 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 30);
INSERT INTO `examreport` VALUES (63, 2, '操作系统期末考试', 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 20);
INSERT INTO `examreport` VALUES (64, 2, '操作系统期末考试', 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 20);

-- ----------------------------
-- Table structure for practicereport
-- ----------------------------
DROP TABLE IF EXISTS `practicereport`;
CREATE TABLE `practicereport`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT NULL COMMENT '对应用户id',
  `one` int(2) DEFAULT NULL COMMENT '1-10题每题对错',
  `two` int(2) DEFAULT NULL,
  `three` int(2) DEFAULT NULL,
  `four` int(2) DEFAULT NULL,
  `five` int(2) DEFAULT NULL,
  `six` int(2) DEFAULT NULL,
  `seven` int(2) DEFAULT NULL,
  `eight` int(2) DEFAULT NULL,
  `nine` int(2) DEFAULT NULL,
  `ten` int(2) DEFAULT NULL,
  `grade` int(3) DEFAULT NULL COMMENT '最后得分',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userid`(`userid`) USING BTREE,
  CONSTRAINT `practicereport_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of practicereport
-- ----------------------------
INSERT INTO `practicereport` VALUES (1, 2, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 50);
INSERT INTO `practicereport` VALUES (2, 2, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 20);
INSERT INTO `practicereport` VALUES (3, 2, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 40);
INSERT INTO `practicereport` VALUES (4, 2, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 30);
INSERT INTO `practicereport` VALUES (5, 2, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 50);
INSERT INTO `practicereport` VALUES (7, 2, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 60);
INSERT INTO `practicereport` VALUES (8, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 90);
INSERT INTO `practicereport` VALUES (9, 3, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 70);
INSERT INTO `practicereport` VALUES (10, 2, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 30);
INSERT INTO `practicereport` VALUES (11, 2, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 40);
INSERT INTO `practicereport` VALUES (12, 2, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 70);
INSERT INTO `practicereport` VALUES (13, 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 40);
INSERT INTO `practicereport` VALUES (14, 2, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 30);
INSERT INTO `practicereport` VALUES (15, 2, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 30);
INSERT INTO `practicereport` VALUES (16, 2, 1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 50);
INSERT INTO `practicereport` VALUES (17, 3, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 30);
INSERT INTO `practicereport` VALUES (18, 3, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 20);
INSERT INTO `practicereport` VALUES (19, 3, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 40);
INSERT INTO `practicereport` VALUES (21, 3, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 40);
INSERT INTO `practicereport` VALUES (22, 2, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 30);
INSERT INTO `practicereport` VALUES (23, 2, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 20);
INSERT INTO `practicereport` VALUES (24, 2, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 30);
INSERT INTO `practicereport` VALUES (25, 2, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 40);
INSERT INTO `practicereport` VALUES (30, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 20);
INSERT INTO `practicereport` VALUES (31, 2, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 40);
INSERT INTO `practicereport` VALUES (32, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `practicereport` VALUES (33, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 10);
INSERT INTO `practicereport` VALUES (34, 2, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 30);
INSERT INTO `practicereport` VALUES (35, 2, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 40);
INSERT INTO `practicereport` VALUES (36, 2, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 30);

-- ----------------------------
-- Table structure for testquestion
-- ----------------------------
DROP TABLE IF EXISTS `testquestion`;
CREATE TABLE `testquestion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qDescrip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '题目描述',
  `optionA` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'A选项答案',
  `optionB` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'B选项答案',
  `optionC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'C选项答案',
  `optionD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'D选项答案',
  `answer` int(255) DEFAULT NULL COMMENT '正确答案',
  `type` int(255) DEFAULT NULL COMMENT '题目类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of testquestion
-- ----------------------------
INSERT INTO `testquestion` VALUES (1, '对一组包含10个元素的非递减有序序列，采用直接插入排序排成非递增序列，其可能的比较次数和移动次数分别是：', '100, 100', '100, 54', '54, 63', '45, 44', 4, 1);
INSERT INTO `testquestion` VALUES (2, '对于序列{ 49，38，65，97，76，13，27，50 }，按由小到大进行排序，下面哪一个是初始步长为4的希尔排序法第一趟的结果？', '13,27,38,49,50,65,76,97', '49,13,27,50,76,38,65,97', '49,76,65,13,27,50,97,38', '97,76,65,50,49,38,27,13', 2, 1);
INSERT INTO `testquestion` VALUES (3, '设主串的长度为n，模式串的长度为m，则串匹配的KMP算法时间复杂度是( )。', 'O(m)', 'O(n)', 'O(n + m)', 'O(n×m)', 3, 1);
INSERT INTO `testquestion` VALUES (4, '串 ‘ababaaababaa’ 的next数组为：', '012345678999', '012121111212', '011234223456', '0123012322345', 3, 1);
INSERT INTO `testquestion` VALUES (5, '若一棵二叉树的后序遍历序列是{ 1, 3, 2, 6, 5, 7, 4 }，中序遍历序列是{ 1, 2, 3, 4, 5, 6, 7 }，则下列哪句是错的？', '这是一棵完全二叉树', '2是1和3的父结点', '这是一棵二叉搜索树', '7是5的父结点', 1, 1);
INSERT INTO `testquestion` VALUES (6, '对二叉搜索树进行什么遍历可以得到从小到大的排序序列？', '前序遍历', '后序遍历', '中序遍历', '层次遍历', 3, 1);
INSERT INTO `testquestion` VALUES (7, '若二叉搜索树是有N个结点的完全二叉树，则不正确的说法是：', '平均查找效率是O(logN)', '最大值一定在最后一层', '最小值一定在叶结点上', '中位值结点在根结点或根的左子树上', 2, 1);
INSERT INTO `testquestion` VALUES (8, '下列叙述正确的是（）', '在任意一棵非空二叉搜索树，删除某结点后又将其插入，则所得二叉搜索树与删除前原二叉搜索树相同。', '二叉树中除叶结点外, 任一结点X，其左子树根结点的值小于该结点（X）的值；其右子树根结点的值≥该结点（X）的值，则此二叉树一定是二叉搜索树。', '虽然给出关键字序列的顺序不一样，但依次生成的二叉搜索树却是一样的。', '在二叉搜索树中插入一个新结点，总是插入到最下层，作为新的叶子结点。', 4, 1);
INSERT INTO `testquestion` VALUES (9, '在AOE网中，什么是关键路径？', '最短回路', '最长回路', '从第一个事件到最后一个事件的最短路径', '从第一个事件到最后一个事件的最长路径', 4, 1);
INSERT INTO `testquestion` VALUES (10, '下面关于图的存储的叙述中，哪一个是正确的？', '用相邻矩阵法存储图，占用的存储空间数只与图中结点个数有关，而与边数无关', '用相邻矩阵法存储图，占用的存储空间数只与图中边数有关，而与结点个数无关', '用邻接表法存储图，占用的存储空间数只与图中结点个数有关，而与边数无关', '用邻接表法存储图，占用的存储空间数只与图中边数有关，而与结点个数无关', 1, 1);
INSERT INTO `testquestion` VALUES (11, '下面的（）不是文件的存储结构。', '索引文件', '记录式文件', '串联文件', '连续文件', 2, 2);
INSERT INTO `testquestion` VALUES (12, '有一磁盘，共有10个柱面，每个柱面20个磁道，每个盘面分成16个扇区。采用位示图对其存储空间进行管理。如果字长是16个二进制位，那么位示图共需 （） 字。', '200', '128', '256', '100', 1, 2);
INSERT INTO `testquestion` VALUES (13, '操作系统为每一个文件开辟一个存储区，在它的里面记录着该文件的有关信息。这就是所谓的（）', '进程控制块', '文件控制块', '设备控制块', '作业控制块', 2, 2);
INSERT INTO `testquestion` VALUES (14, '文件控制块的英文缩写符号是（）', 'PCB', 'DCB', 'FCB', 'JCB', 3, 2);
INSERT INTO `testquestion` VALUES (15, '一个文件的绝对路径名是从（）开始，逐步沿着每一级子目录向下，最后到达指定文件的整个通路上所有子目录名组成的一个字符串。', '当前目录', '根目录', '多级目录', '二级目录', 2, 2);
INSERT INTO `testquestion` VALUES (16, '一个算法应该是（）。', '程序', '问题求解步骤的描述', '要满足五个基本属性', 'A和C', 2, 1);
INSERT INTO `testquestion` VALUES (17, '与数据元素本身的形式、内容、相对位置、个数无关的是数据的（ ）。', '存储结构', '逻辑结构', '算法', '操作', 2, 1);
INSERT INTO `testquestion` VALUES (20, ' 下列叙述中正确的是(    )。', '一个逻辑数据结构只能有一种存储结构', '数据的逻辑结构属于线性结构，存储结构属于非线性结构', '一个逻辑数据结构可以有多种存储结构，且各种存储结构不影响数据处理的效率', '一个逻辑数据结构可以有多种存储结构，且各种存储结构影响数据处理的效率', 4, 1);
INSERT INTO `testquestion` VALUES (21, '在文件系统中，采用位示图主要是实现（    ）。', '磁盘的驱动调度', '页面置换', '文件目录的查找', '磁盘空间的分配和回收', 4, 2);
INSERT INTO `testquestion` VALUES (22, '操作系统实现按名存取的关键在于解决(       )。', '文件逻辑地址到文件具体的存储地址的转换', '文件的符号名与文件具体的存储地址的转换和映射', '文件逻辑结构到文件名称转换', '文件名称到文件逻辑地址的转换', 2, 2);
INSERT INTO `testquestion` VALUES (23, '下列算法中用于磁盘移臂调度的是(       )。', '时间片轮转法', 'LRU算法', '最短寻找时间优先算法', '优先级高者优先算法', 3, 2);
INSERT INTO `testquestion` VALUES (24, '在下面的I/O控制方式中，需要CPU干预最少的方式是（   ）。', '程序I/O方式', '中断驱动I/O控制方式 ', '直接存储器访问(DMA)控制方式 ', ' I/O通道控制方式', 4, 2);
INSERT INTO `testquestion` VALUES (25, '与设备控制器关系最密切的软件是（     ）。', '设备驱动程序 ', '编译程序', '存储管理程序', '处理机管理', 1, 2);
INSERT INTO `testquestion` VALUES (26, '引入缓冲可以（        ）。', '改善用户编程环境', '提高CPU的处理速度', '提高CPU与设备之间的并行程度', '降低计算机的硬件成本', 3, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `schoolId` int(11) DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(255) DEFAULT NULL,
  `classes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1111 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 1, '软件工程', 0, '172', 'admin');
INSERT INTO `user` VALUES (2, 'wzj', 1170220026, '软件工程', 2, '172', '123');
INSERT INTO `user` VALUES (3, '徐鑫', 1170220021, '软工', 2, '172789', 'xx');
INSERT INTO `user` VALUES (4, 'zcy', 1170220014, '软工', 2, '172', 'zcy');
INSERT INTO `user` VALUES (6, 'mwf', 100, '软件工程', 1, '172', '100');
INSERT INTO `user` VALUES (7, 'name2', 100002, '计算机', 2, '181', '1');
INSERT INTO `user` VALUES (8, 'name3', 100003, '数媒', 2, '172', '1');
INSERT INTO `user` VALUES (9, 'name4', 100004, '物联网', 2, '171', '1');
INSERT INTO `user` VALUES (10, 'name5', 100005, '物联网', 2, '171', '1');
INSERT INTO `user` VALUES (11, 'wjf', 101, '软件工程', 1, '172', '101');
INSERT INTO `user` VALUES (1110, 'name1', 100001, '计算机', 2, '171', '1');

SET FOREIGN_KEY_CHECKS = 1;
