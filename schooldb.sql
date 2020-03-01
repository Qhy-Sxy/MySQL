/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : schooldb

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2020-03-01 23:15:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a
-- ----------------------------
DROP TABLE IF EXISTS `a`;
CREATE TABLE `a` (
  `a1` int(11) NOT NULL,
  `aname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`a1`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a
-- ----------------------------

-- ----------------------------
-- Table structure for b
-- ----------------------------
DROP TABLE IF EXISTS `b`;
CREATE TABLE `b` (
  `b1` int(11) DEFAULT NULL,
  `a1` int(11) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b
-- ----------------------------

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `buildId` int(11) NOT NULL AUTO_INCREMENT,
  `buildName` varchar(30) DEFAULT NULL,
  `dormCount` int(11) DEFAULT NULL,
  `dormFloor` int(11) DEFAULT NULL,
  PRIMARY KEY (`buildId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('1', '宿舍楼1', '300', '6');
INSERT INTO `building` VALUES ('2', '宿舍楼2', '280', '6');
INSERT INTO `building` VALUES ('3', '宿舍楼3', '320', '6');
INSERT INTO `building` VALUES ('4', '宿舍楼4', '200', '6');
INSERT INTO `building` VALUES ('5', '宿舍楼5', '310', '5');
INSERT INTO `building` VALUES ('6', '宿舍楼6', '100', '3');

-- ----------------------------
-- Table structure for cc
-- ----------------------------
DROP TABLE IF EXISTS `cc`;
CREATE TABLE `cc` (
  `a1` int(11) NOT NULL,
  `aname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`a1`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cc
-- ----------------------------

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `ClassID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(9) NOT NULL DEFAULT '',
  `BeginTime` datetime NOT NULL,
  `EndTime` datetime DEFAULT NULL,
  `GradeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('5', 'Y201', '2011-05-05 00:00:00', '2011-12-01 00:00:00', '2');
INSERT INTO `class` VALUES ('9', 'S103', '2011-05-20 00:00:00', '2011-10-10 00:00:00', '1');
INSERT INTO `class` VALUES ('10', 'A130', '2019-06-27 04:48:24', '2019-06-27 04:48:24', '3');
INSERT INTO `class` VALUES ('11', 'A131', '2019-06-27 04:59:14', '2019-06-27 04:59:14', '4');
INSERT INTO `class` VALUES ('18', 'A134', '2019-07-27 11:15:27', '2019-07-27 11:15:27', '3');
INSERT INTO `class` VALUES ('20', 'A136', '2019-07-26 21:22:38', '2019-07-26 21:22:38', '1');
INSERT INTO `class` VALUES ('24', 'A140', '2019-08-15 15:21:36', '2021-08-20 15:21:36', '1');
INSERT INTO `class` VALUES ('45', 'java1705', '2011-04-01 00:00:03', '2019-07-27 11:15:28', '3');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `DepartmentId` int(11) NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(50) DEFAULT '',
  PRIMARY KEY (`DepartmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='系别表';

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '计算机系');
INSERT INTO `department` VALUES ('2', '英语系');
INSERT INTO `department` VALUES ('3', '电气自动化系');
INSERT INTO `department` VALUES ('4', '物理系');
INSERT INTO `department` VALUES ('5', '数学系');
INSERT INTO `department` VALUES ('6', '导演系');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `ExamID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(10) NOT NULL DEFAULT '',
  `SubjectId` int(11) NOT NULL DEFAULT '0',
  `Exam` double DEFAULT '0',
  PRIMARY KEY (`ExamID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='考试成绩表';

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('1', '2011001002', '1', '67');
INSERT INTO `exam` VALUES ('2', '2011001002', '2', '73');
INSERT INTO `exam` VALUES ('3', '2011001002', '4', '80');
INSERT INTO `exam` VALUES ('4', '2011001003', '1', '50');
INSERT INTO `exam` VALUES ('5', '2011001003', '2', '60');
INSERT INTO `exam` VALUES ('6', '2011001003', '4', '85');
INSERT INTO `exam` VALUES ('7', '2011001004', '1', '90');
INSERT INTO `exam` VALUES ('8', '2011001004', '2', '95');
INSERT INTO `exam` VALUES ('9', '2011001004', '4', '100');
INSERT INTO `exam` VALUES ('10', '2011001006', '1', '70');
INSERT INTO `exam` VALUES ('11', '2011001006', '2', '75');
INSERT INTO `exam` VALUES ('12', '2011001006', '4', '65');
INSERT INTO `exam` VALUES ('13', '2011001008', '1', '80');
INSERT INTO `exam` VALUES ('14', '2011001008', '2', '75');
INSERT INTO `exam` VALUES ('15', '2011001008', '4', '90');
INSERT INTO `exam` VALUES ('16', '2011001009', '1', '75');
INSERT INTO `exam` VALUES ('17', '2011001009', '2', '80');
INSERT INTO `exam` VALUES ('18', '2011001009', '4', '85');
INSERT INTO `exam` VALUES ('19', '2011001010', '1', '65');
INSERT INTO `exam` VALUES ('20', '2011001010', '2', '75');
INSERT INTO `exam` VALUES ('21', '2011001010', '4', '85');
INSERT INTO `exam` VALUES ('22', '2011001011', '1', '40');
INSERT INTO `exam` VALUES ('23', '2011001011', '2', '50');
INSERT INTO `exam` VALUES ('24', '2011001011', '4', '60');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `GradeID` int(11) NOT NULL AUTO_INCREMENT,
  `GradeName` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`GradeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='年级表';

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', 'S1');
INSERT INTO `grade` VALUES ('2', 'S2');
INSERT INTO `grade` VALUES ('3', 'Y2');
INSERT INTO `grade` VALUES ('4', 'Android');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '商品名称',
  `price` float(10,1) NOT NULL COMMENT '商品定价',
  `detail` text COMMENT '商品描述',
  `pic` varchar(64) DEFAULT NULL COMMENT '商品图片',
  `createtime` datetime NOT NULL COMMENT '生产日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', '台式机', '3006.3', '该电脑质量非常好！！！', null, '2015-02-03 01:22:53');
INSERT INTO `items` VALUES ('2', '笔记本', '6001.1', '笔记本性能好，质量好！！！！！', null, '2015-02-09 01:22:57');
INSERT INTO `items` VALUES ('3', '电脑包', '202.0', '名牌背包，容量大,质量好！！！!', null, '2019-02-06 13:23:02');

-- ----------------------------
-- Table structure for mytest
-- ----------------------------
DROP TABLE IF EXISTS `mytest`;
CREATE TABLE `mytest` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `TName` varchar(10) DEFAULT '',
  `TAge` int(11) DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='测试表';

-- ----------------------------
-- Records of mytest
-- ----------------------------
INSERT INTO `mytest` VALUES ('1', '张三', '21');
INSERT INTO `mytest` VALUES ('2', '李四', '20');
INSERT INTO `mytest` VALUES ('3', '王五', '21');
INSERT INTO `mytest` VALUES ('4', '赵六', '19');

-- ----------------------------
-- Table structure for newsinfo
-- ----------------------------
DROP TABLE IF EXISTS `newsinfo`;
CREATE TABLE `newsinfo` (
  `NewsId` int(11) NOT NULL AUTO_INCREMENT,
  `NewsTitle` varchar(150) NOT NULL DEFAULT '',
  `NewsAuthor` varchar(50) DEFAULT '管理员',
  `NewsContent` text,
  `Clicks` int(11) DEFAULT '0',
  `AddTime` datetime DEFAULT NULL,
  PRIMARY KEY (`NewsId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='新闻表';

-- ----------------------------
-- Records of newsinfo
-- ----------------------------
INSERT INTO `newsinfo` VALUES ('3', '房价继续上涨，刚需者连连叫苦', '管理员', '今年国家调控政策，房价依然坚挺，让老百姓苦不堪言，安居才能乐页，连生活温饱都得不到满足，还能有什么更高的追求', '145', '2012-01-01 00:00:00');
INSERT INTO `newsinfo` VALUES ('4', '物价连续上涨，工资不见提高', '管理员', '中国社会矛盾重重，一斤葱的价格让人望而却步，有人说一顿饭吃上一根葱那绝对是富人，哎，老百姓日子苦呀，物价轮番涨，是否也该轮到涨工资了呢？我看难于上青天', '1000', '2012-02-01 16:39:19');
INSERT INTO `newsinfo` VALUES ('5', '王立军事件引发的思考', '管理员', '是人变了，还是社会体制的原因呢？', '100', '2012-03-17 16:40:32');
INSERT INTO `newsinfo` VALUES ('6', '汽车烧的不是油，是钱', '管理员', '国际油价上涨，发改委称与世界接轨，国际油价下跌，发改委称中国国情与国外不同', '123', '2012-03-18 08:54:41');
INSERT INTO `newsinfo` VALUES ('7', '春天咋暖还寒，气温继续走低', '管理员', '市民出行注意防雨保暖', '350', '2012-03-19 10:19:32');
INSERT INTO `newsinfo` VALUES ('8', '日本网红眼药水', '管理员', '不要追风买药', '200', '2019-06-08 09:30:20');
INSERT INTO `newsinfo` VALUES ('9', '武汉看海。。。。', '管理员', '武汉连续暴雨', '210', '2019-06-19 17:58:16');
INSERT INTO `newsinfo` VALUES ('10', '四川133', '管理员', '四川地震，大面积损失', '220', '2019-06-20 17:58:55');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL COMMENT '订单id',
  `items_id` int(11) NOT NULL COMMENT '商品id',
  `items_num` int(11) DEFAULT NULL COMMENT '商品购买数量',
  PRIMARY KEY (`id`),
  KEY `FK_orderdetail_1` (`orders_id`),
  KEY `FK_orderdetail_2` (`items_id`),
  CONSTRAINT `FK_orderdetail_1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FK_orderdetail_2` FOREIGN KEY (`items_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('1', '3', '1', '1');
INSERT INTO `orderdetail` VALUES ('2', '3', '2', '3');
INSERT INTO `orderdetail` VALUES ('3', '4', '3', '4');
INSERT INTO `orderdetail` VALUES ('4', '4', '2', '3');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '下单用户id',
  `number` varchar(32) NOT NULL COMMENT '订单号',
  `createtime` datetime NOT NULL COMMENT '创建订单时间',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_orders_1` (`user_id`),
  CONSTRAINT `FK_orders_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('3', '1', '1000010', '2015-02-04 13:22:35', null);
INSERT INTO `orders` VALUES ('4', '1', '1000011', '2015-02-03 13:22:41', null);
INSERT INTO `orders` VALUES ('5', '10', '1000012', '2015-02-12 16:13:23', null);

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `professional` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1', '武大', '32', '计算机科学与技术');
INSERT INTO `person` VALUES ('3', '张三', '25', '计算机科学与技术');
INSERT INTO `person` VALUES ('4', '李四', '25', '计算机科学与技术');
INSERT INTO `person` VALUES ('5', '孙五', '25', '计算机科学与技术');
INSERT INTO `person` VALUES ('6', '钱六', '25', '计算机科学与技术');
INSERT INTO `person` VALUES ('7', '赵七', '25', '计算机科学与技术');
INSERT INTO `person` VALUES ('8', '刘八', '25', '计算机科学与技术');
INSERT INTO `person` VALUES ('9', '张九', '25', '计算机科学与技术');
INSERT INTO `person` VALUES ('10', '郑十', '25', '计算机科学与技术');
INSERT INTO `person` VALUES ('11', '岳勇宏', '25', 'Java讲师');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `productname` varchar(20) NOT NULL,
  `parent_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='产品表，用来讲解自连接';

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '数码产品', '0');
INSERT INTO `product` VALUES ('2', '家用产品', '0');
INSERT INTO `product` VALUES ('3', '笔记本', '1');
INSERT INTO `product` VALUES ('4', '智能手机', '1');
INSERT INTO `product` VALUES ('5', '电器', '2');
INSERT INTO `product` VALUES ('6', '家具', '2');
INSERT INTO `product` VALUES ('7', '冰箱', '5');
INSERT INTO `product` VALUES ('8', '洗衣机', '5');
INSERT INTO `product` VALUES ('9', '汽车品牌', '0');
INSERT INTO `product` VALUES ('10', '别克', '9');
INSERT INTO `product` VALUES ('11', '宝马', '9');
INSERT INTO `product` VALUES ('12', '雪佛兰', '9');
INSERT INTO `product` VALUES ('13', '家纺', '0');

-- ----------------------------
-- Table structure for replyinfo
-- ----------------------------
DROP TABLE IF EXISTS `replyinfo`;
CREATE TABLE `replyinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(150) NOT NULL DEFAULT '',
  `NewsId` int(11) NOT NULL DEFAULT '0',
  `ReplyTime` datetime DEFAULT NULL,
  `StudentId` varchar(10) DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='回复信息表';

-- ----------------------------
-- Records of replyinfo
-- ----------------------------
INSERT INTO `replyinfo` VALUES ('1', '没法活了，练法轮功到极乐世界吧', '6', '2012-03-20 14:42:25', '2011001002');
INSERT INTO `replyinfo` VALUES ('2', '不买车，让他随便涨', '6', '2012-03-20 14:42:51', '2011001003');
INSERT INTO `replyinfo` VALUES ('3', '涨价会带动其他产业涨价', '6', '2012-03-20 14:43:12', '2011001004');
INSERT INTO `replyinfo` VALUES ('4', '接轨了', '6', '2012-03-20 14:43:36', '2011001006');
INSERT INTO `replyinfo` VALUES ('5', '真希望国民党回来多党轮流执政', '6', '2012-03-20 14:44:07', '2011001008');
INSERT INTO `replyinfo` VALUES ('6', '天气变化无常', '7', '2012-03-20 14:44:19', '2011001002');
INSERT INTO `replyinfo` VALUES ('7', '注意保暖了', '7', '2012-03-20 14:44:29', '2011001008');
INSERT INTO `replyinfo` VALUES ('8', '妈的真糟糕 ', '3', '2019-01-01 01:00:00', '');
INSERT INTO `replyinfo` VALUES ('9', '妈的真糟糕 ', '3', '2019-01-01 01:01:01', '');
INSERT INTO `replyinfo` VALUES ('10', '妈的真糟糕 ', '3', '2019-01-01 01:00:00', '');
INSERT INTO `replyinfo` VALUES ('11', '爱上了，很棒，很喜欢', '3', '2019-01-01 01:01:01', '');

-- ----------------------------
-- Table structure for software
-- ----------------------------
DROP TABLE IF EXISTS `software`;
CREATE TABLE `software` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `version` decimal(5,2) NOT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  `price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of software
-- ----------------------------
INSERT INTO `software` VALUES ('1', '360安全卫士', '8.70', '奇虎', '0.00');
INSERT INTO `software` VALUES ('2', 'Office2910', '14.00', '微软', '160.00');
INSERT INTO `software` VALUES ('5', 'Window8', '8.00', '微软', '240.00');
INSERT INTO `software` VALUES ('6', 'Adobe Dreamweaver CS6', '6.00', 'Adobe', '280.00');
INSERT INTO `software` VALUES ('9', 'QQ', '1.40', '腾讯', '222.00');
INSERT INTO `software` VALUES ('10', '吃鸡', '4.10', '腾讯', '333.00');
INSERT INTO `software` VALUES ('11', '微信', '3.50', '腾讯', '444.00');
INSERT INTO `software` VALUES ('12', '俄罗斯方块', '3.50', '微软', '555.00');
INSERT INTO `software` VALUES ('13', 'myeclipse', '3.50', '微软', '531.00');
INSERT INTO `software` VALUES ('14', 'idea', '2.80', '微软', '234.00');
INSERT INTO `software` VALUES ('15', 'mysql', '3.10', '微软', '333.00');

-- ----------------------------
-- Table structure for studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `StudentID` varchar(10) NOT NULL DEFAULT '',
  `StudentName` varchar(10) NOT NULL DEFAULT '',
  `Gender` varchar(2) DEFAULT '',
  `Age` int(11) DEFAULT '0',
  `Birthday` datetime DEFAULT NULL,
  `StudentNO` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `ClassID` int(11) DEFAULT '0',
  `BeginTime` varchar(20) NOT NULL DEFAULT '',
  `Phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `Province` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '河南',
  `City` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '郑州',
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`StudentID`),
  KEY `uq_StudentInfo_StudentNO` (`StudentNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生信息表';

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES ('2011001002', '马钰', '男', '20', '1991-02-21 00:00:00', '410702199102210213', '1', '2011-5-6', '15125741526', '河南', '商丘', 'my91@263.com');
INSERT INTO `studentinfo` VALUES ('2011001003', '谭处端', '男', '21', '1990-06-21 00:00:00', '410303199006210215', '1', '2011-5-6', '15890172541', '河南', '洛阳', 'tcd@163.com');
INSERT INTO `studentinfo` VALUES ('2011001004', '黄蓉', '女', '28', '1990-02-11 00:00:00', '412701199002110618', '1', '2011-10-6', '18637165241', '河南', '周口', 'huangrong@263.com');
INSERT INTO `studentinfo` VALUES ('2011001006', '刘处玄', '男', '18', '1990-10-14 00:00:00', '410102199010140317', '1', '2011-5-6', '15569852141', '河南', '郑州', 'LCX90@hotmail.com');
INSERT INTO `studentinfo` VALUES ('2011001008', '丘处机', '男', '20', '1991-06-21 00:00:00', '410103199106210613', '1', '2011-5-6', '15142153256', '河南', '郑州', 'qcj@163.com');
INSERT INTO `studentinfo` VALUES ('2011001009', '王处一', '男', '20', '1991-11-15 00:00:00', '410702199111150517', '1', '2011-5-6', '15125741529', '河南', '洛阳', '王99@sina.com.cn');
INSERT INTO `studentinfo` VALUES ('2011001012', '葛优', '女', '17', '1999-06-21 15:55:52', '140522199910106073', null, '2012-06-06', '15517592129', '河南', '郑州', 'sdfasd@qq.com');
INSERT INTO `studentinfo` VALUES ('2011003001', '刘瑛', '女', '20', '1991-11-07 00:00:00', '410106199111070412', '3', '2011-5-6', '18854215874', '河南', '郑州', 'liuying@sohu.com');
INSERT INTO `studentinfo` VALUES ('2011003002', '曲灵风', '女', '16', '1989-06-04 00:00:00', '411303198906040102', '3', '2011-5-6', '18878452365', '河南', '南阳', 'qlf@taohuadao.com');
INSERT INTO `studentinfo` VALUES ('2011003003', '陈玄风', '男', '21', '1990-05-29 00:00:00', '410522199005290213', '3', '2011-5-6', '18878452361', '河南', '安阳', 'cxf@163.com');
INSERT INTO `studentinfo` VALUES ('2011003004', '梅超风', '女', '21', '1990-09-16 00:00:00', '410104199009160416', '3', '2011-5-6', '18878452397', '河南', '郑州', 'mcf@sohu.com');
INSERT INTO `studentinfo` VALUES ('2011003007', '裘千尺', '女', '19', '1992-01-07 00:00:00', '410102199201070317', '3', '2011-5-6', '13852417412', '河南', '郑州', 'jueqingdan@163.com');
INSERT INTO `studentinfo` VALUES ('20172021', '小悦悦', '女', '18', '2019-01-01 10:10:20', '410482199901021751', '20', '2019-01-01 06:06:06', '12345678978', 'hahah', 'ha', '15565797757@qq.com');
INSERT INTO `studentinfo` VALUES ('88888', '孙新悦', '女', '18', null, '410724201910129588', '38', '', '', '河南', '郑州', '');

-- ----------------------------
-- Table structure for stus
-- ----------------------------
DROP TABLE IF EXISTS `stus`;
CREATE TABLE `stus` (
  `stuid` int(11) NOT NULL AUTO_INCREMENT,
  `stuname` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  PRIMARY KEY (`stuid`),
  KEY `fk_classid` (`classid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stus
-- ----------------------------

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `SubjectId` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(100) NOT NULL DEFAULT '',
  `CreditHour` int(11) NOT NULL DEFAULT '0',
  `Credit` int(11) NOT NULL DEFAULT '0',
  `GradeID` int(11) DEFAULT '0',
  PRIMARY KEY (`SubjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='科目表';

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', '基于C语言理解软件编程', '44', '2', '1');
INSERT INTO `subject` VALUES ('2', '基于Java语言深入理解程序逻辑', '44', '2', '1');
INSERT INTO `subject` VALUES ('3', 'Photoshop&Flash程序界面美工设计', '22', '1', '1');
INSERT INTO `subject` VALUES ('4', '网页设计与Web开发基础', '40', '2', '1');
INSERT INTO `subject` VALUES ('5', '基于SQL Server管理和查询数据', '34', '2', '1');
INSERT INTO `subject` VALUES ('6', 'C# WinForm 数据库应用设计', '44', '2', '1');
INSERT INTO `subject` VALUES ('7', 'SQL Server数据库高级查询和管理', '34', '3', '2');
INSERT INTO `subject` VALUES ('8', 'Java面向对象编程', '56', '3', '2');
INSERT INTO `subject` VALUES ('9', '网站页面布局DIV+CSS设计', '26', '3', '2');
INSERT INTO `subject` VALUES ('10', '基于JavaScript的WEB表单验证和客户端特效制作', '30', '3', '2');
INSERT INTO `subject` VALUES ('11', 'Android平台手机图形应用开发', '52', '4', '2');
INSERT INTO `subject` VALUES ('12', '基于JSP搭建WEB应用程序', '48', '4', '2');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `TeacherID` int(11) NOT NULL AUTO_INCREMENT,
  `TeacherName` varchar(20) NOT NULL DEFAULT '',
  `Gender` varchar(2) NOT NULL DEFAULT '',
  `GraduatedSchool` varchar(50) NOT NULL DEFAULT '',
  `Major` varchar(20) NOT NULL DEFAULT '',
  `Education` varchar(4) NOT NULL DEFAULT '本科',
  `GradeuatedTime` datetime NOT NULL,
  `TeachTime` datetime DEFAULT NULL,
  `DepartmentId` int(11) DEFAULT '0',
  PRIMARY KEY (`TeacherID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='教师信息表';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '王重阳', '男', '全真研究院', '阵法', '博士', '2000-06-01 00:00:00', '2000-08-15 00:00:00', '1');
INSERT INTO `teacher` VALUES ('2', '黄药师', '男', '桃花岛大学', '格斗', '博士', '1999-06-01 00:00:00', '1999-08-18 00:00:00', '2');
INSERT INTO `teacher` VALUES ('3', '段智兴', '男', '大理皇家学院', '格斗', '博士', '1998-06-01 00:00:00', '1999-08-01 00:00:00', '1');
INSERT INTO `teacher` VALUES ('4', '欧阳锋', '男', '西域理工', '生物', '博士', '1999-06-01 00:00:00', '1999-08-01 00:00:00', '3');
INSERT INTO `teacher` VALUES ('5', '洪七公', '男', '丐帮职业学院', '掌法', '博士', '1994-06-01 00:00:00', '1994-10-01 00:00:00', '2');

-- ----------------------------
-- Table structure for teachsubject
-- ----------------------------
DROP TABLE IF EXISTS `teachsubject`;
CREATE TABLE `teachsubject` (
  `TeacherID` int(11) NOT NULL DEFAULT '0',
  `SubjectID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师科目关联表';

-- ----------------------------
-- Records of teachsubject
-- ----------------------------
INSERT INTO `teachsubject` VALUES ('1', '1');
INSERT INTO `teachsubject` VALUES ('1', '2');
INSERT INTO `teachsubject` VALUES ('1', '4');
INSERT INTO `teachsubject` VALUES ('1', '5');
INSERT INTO `teachsubject` VALUES ('1', '6');
INSERT INTO `teachsubject` VALUES ('2', '2');
INSERT INTO `teachsubject` VALUES ('2', '4');
INSERT INTO `teachsubject` VALUES ('2', '5');
INSERT INTO `teachsubject` VALUES ('3', '3');
INSERT INTO `teachsubject` VALUES ('3', '4');
INSERT INTO `teachsubject` VALUES ('3', '9');
INSERT INTO `teachsubject` VALUES ('4', '2');
INSERT INTO `teachsubject` VALUES ('4', '5');
INSERT INTO `teachsubject` VALUES ('4', '7');
INSERT INTO `teachsubject` VALUES ('4', '11');
INSERT INTO `teachsubject` VALUES ('5', '5');
INSERT INTO `teachsubject` VALUES ('5', '7');
INSERT INTO `teachsubject` VALUES ('5', '9');
INSERT INTO `teachsubject` VALUES ('5', '10');
INSERT INTO `teachsubject` VALUES ('5', '12');

-- ----------------------------
-- Table structure for test1
-- ----------------------------
DROP TABLE IF EXISTS `test1`;
CREATE TABLE `test1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `score` decimal(5,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test1
-- ----------------------------
INSERT INTO `test1` VALUES ('1', '张三', '数学', '34.00');
INSERT INTO `test1` VALUES ('2', '张三', '语文', '58.00');
INSERT INTO `test1` VALUES ('3', '张三', '英语', '58.00');
INSERT INTO `test1` VALUES ('4', '李四', '数学', '45.00');
INSERT INTO `test1` VALUES ('5', '李四', '语文', '87.00');
INSERT INTO `test1` VALUES ('6', '李四', '英语', '45.00');
INSERT INTO `test1` VALUES ('7', '王五', '数学', '76.00');
INSERT INTO `test1` VALUES ('8', '王五', '语文', '34.00');
INSERT INTO `test1` VALUES ('9', '王五', '英语', '89.00');

-- ----------------------------
-- Table structure for test2
-- ----------------------------
DROP TABLE IF EXISTS `test2`;
CREATE TABLE `test2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `cnscore` int(11) DEFAULT NULL,
  `mathscore` int(11) DEFAULT NULL,
  `enscore` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test2
-- ----------------------------
INSERT INTO `test2` VALUES ('1', '张三', '34', '58', '75');
INSERT INTO `test2` VALUES ('2', '李四', '45', '74', '86');
INSERT INTO `test2` VALUES ('3', '王五', '66', '85', '87');

-- ----------------------------
-- Table structure for t_a
-- ----------------------------
DROP TABLE IF EXISTS `t_a`;
CREATE TABLE `t_a` (
  `A1` varchar(10) NOT NULL DEFAULT '',
  `A2` varchar(10) DEFAULT '',
  PRIMARY KEY (`A1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试表A，用来讲解表连接';

-- ----------------------------
-- Records of t_a
-- ----------------------------
INSERT INTO `t_a` VALUES ('A11', 'A21');
INSERT INTO `t_a` VALUES ('A12', 'A22');
INSERT INTO `t_a` VALUES ('A13', 'A23');
INSERT INTO `t_a` VALUES ('A14', 'A24');
INSERT INTO `t_a` VALUES ('A15', 'A15%');
INSERT INTO `t_a` VALUES ('A16', 'A16_12');
INSERT INTO `t_a` VALUES ('A18', '');
INSERT INTO `t_a` VALUES ('A19', null);

-- ----------------------------
-- Table structure for t_b
-- ----------------------------
DROP TABLE IF EXISTS `t_b`;
CREATE TABLE `t_b` (
  `B1` varchar(10) NOT NULL DEFAULT '',
  `B2` varchar(10) NOT NULL DEFAULT '',
  `A1` varchar(10) DEFAULT '',
  PRIMARY KEY (`B1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试表B，用来讲解表连接';

-- ----------------------------
-- Records of t_b
-- ----------------------------
INSERT INTO `t_b` VALUES ('B11', 'B21', 'A11');
INSERT INTO `t_b` VALUES ('B12', 'B22', 'A12');
INSERT INTO `t_b` VALUES ('B13', 'B23', 'A11');
INSERT INTO `t_b` VALUES ('B14', 'B24', 'A16');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `mid` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言编号',
  `title` varchar(100) NOT NULL COMMENT '留言标题',
  `username` varchar(20) NOT NULL COMMENT '留言人姓名',
  `mcontent` varchar(300) DEFAULT NULL COMMENT '留言内容',
  `createtime` datetime DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '王五', null, '2', null);
INSERT INTO `user` VALUES ('10', '张三', '2014-07-10', '1', '北京市');
INSERT INTO `user` VALUES ('16', '张小明', null, '1', '河南郑州');
INSERT INTO `user` VALUES ('22', '陈小明', null, '1', '河南郑州');
INSERT INTO `user` VALUES ('24', '张三丰', null, '1', '河南郑州');
INSERT INTO `user` VALUES ('25', '陈小明', null, '1', '河南郑州');
INSERT INTO `user` VALUES ('26', '王五', null, null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `usepwd` varchar(50) NOT NULL,
  `userpic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '岳勇宏', 'c8837b23ff8aaa8a2dde915473ce0991', '20ec5bd6-0343-4adc-813d-04df7797aaf64.png');
INSERT INTO `users` VALUES ('2', 'xdl', 'e10adc3949ba59abbe56e057f20f883e', 'd0bd9b07-e98a-4c7b-9659-e3ef22b537bd8.jpg');
INSERT INTO `users` VALUES ('3', 'xky', 'c8837b23ff8aaa8a2dde915473ce0991', 'adf08dc3-4455-437b-b0d7-4732a31ddcf25.jpg');
INSERT INTO `users` VALUES ('4', '张柏芝', '698d51a19d8a121ce581499d7b701668', 'a12f4f7e-f163-4050-b716-8a7b1ac6a308');
INSERT INTO `users` VALUES ('5', '葛优', 'c8837b23ff8aaa8a2dde915473ce0991', 'd5eb6652-87c3-41f9-94a0-9a5bccff1c2e岳勇宏.jpg');
