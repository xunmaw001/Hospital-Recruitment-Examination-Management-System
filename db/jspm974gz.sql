-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm974gz
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614657128278 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-02 03:46:28',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-02 03:46:28',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-02 03:46:28',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-02 03:46:28',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-02 03:46:28',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-02 03:46:28',6,'宇宙银河系月球1号','月某','13823888886','是'),(1614657128277,'2021-03-02 03:52:07',1614657042089,'江西省南昌市青山湖区京东镇创业路169号何兴村','孙医','14222222222','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baomingxinxi`
--

DROP TABLE IF EXISTS `baomingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baomingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baomingbianhao` varchar(200) DEFAULT NULL COMMENT '报名编号',
  `baokaoxiangmu` varchar(200) DEFAULT NULL COMMENT '报考项目',
  `baokaoweizhi` varchar(200) DEFAULT NULL COMMENT '报考位置',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `zhuanye` varchar(200) NOT NULL COMMENT '专业',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614657204736 DEFAULT CHARSET=utf8 COMMENT='报名信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baomingxinxi`
--

LOCK TABLES `baomingxinxi` WRITE;
/*!40000 ALTER TABLE `baomingxinxi` DISABLE KEYS */;
INSERT INTO `baomingxinxi` VALUES (41,'2021-03-02 03:46:28','报名编号1','报考项目1','报考位置1','账号1','姓名1','身份证号码1','手机号码1','专业1','是',''),(42,'2021-03-02 03:46:28','报名编号2','报考项目2','报考位置2','账号2','姓名2','身份证号码2','手机号码2','专业2','是',''),(43,'2021-03-02 03:46:28','报名编号3','报考项目3','报考位置3','账号3','姓名3','身份证号码3','手机号码3','专业3','是',''),(44,'2021-03-02 03:46:28','报名编号4','报考项目4','报考位置4','账号4','姓名4','身份证号码4','手机号码4','专业4','是',''),(45,'2021-03-02 03:46:28','报名编号5','报考项目5','报考位置5','账号5','姓名5','身份证号码5','手机号码5','专业5','是',''),(46,'2021-03-02 03:46:28','报名编号6','报考项目6','报考位置6','账号6','姓名6','身份证号码6','手机号码6','专业6','是',''),(1614657204735,'2021-03-02 03:53:24','报名编号3','报考项目3','报考位置3','123','孙医','221422222222222222','14222222222','医学专业','是','');
/*!40000 ALTER TABLE `baomingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'zaixianbaoming' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614657209584 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-03-02 03:46:28',1,1,'提问1','回复1',1),(52,'2021-03-02 03:46:28',2,2,'提问2','回复2',2),(53,'2021-03-02 03:46:28',3,3,'提问3','回复3',3),(54,'2021-03-02 03:46:28',4,4,'提问4','回复4',4),(55,'2021-03-02 03:46:28',5,5,'提问5','回复5',5),(56,'2021-03-02 03:46:28',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm974gz/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm974gz/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm974gz/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyiyuanjianjie`
--

DROP TABLE IF EXISTS `discussyiyuanjianjie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyiyuanjianjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614657155841 DEFAULT CHARSET=utf8 COMMENT='医院简介评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyiyuanjianjie`
--

LOCK TABLES `discussyiyuanjianjie` WRITE;
/*!40000 ALTER TABLE `discussyiyuanjianjie` DISABLE KEYS */;
INSERT INTO `discussyiyuanjianjie` VALUES (141,'2021-03-02 03:46:28',1,1,'评论内容1','回复内容1'),(142,'2021-03-02 03:46:28',2,2,'评论内容2','回复内容2'),(143,'2021-03-02 03:46:28',3,3,'评论内容3','回复内容3'),(144,'2021-03-02 03:46:28',4,4,'评论内容4','回复内容4'),(145,'2021-03-02 03:46:28',5,5,'评论内容5','回复内容5'),(146,'2021-03-02 03:46:28',6,6,'评论内容6','回复内容6'),(1614657155840,'2021-03-02 03:52:35',22,1614657042089,'设施配置好',NULL);
/*!40000 ALTER TABLE `discussyiyuanjianjie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszaixianbaoming`
--

DROP TABLE IF EXISTS `discusszaixianbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszaixianbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='在线报名评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszaixianbaoming`
--

LOCK TABLES `discusszaixianbaoming` WRITE;
/*!40000 ALTER TABLE `discusszaixianbaoming` DISABLE KEYS */;
INSERT INTO `discusszaixianbaoming` VALUES (151,'2021-03-02 03:46:28',1,1,'评论内容1','回复内容1'),(152,'2021-03-02 03:46:28',2,2,'评论内容2','回复内容2'),(153,'2021-03-02 03:46:28',3,3,'评论内容3','回复内容3'),(154,'2021-03-02 03:46:28',4,4,'评论内容4','回复内容4'),(155,'2021-03-02 03:46:28',5,5,'评论内容5','回复内容5'),(156,'2021-03-02 03:46:28',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusszaixianbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614657321656 DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1614657321655,'2021-03-02 03:55:21','一般试卷',80,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614657488517 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1614657420566,'2021-03-02 03:57:00',1614657321655,'一般试卷','西红柿属于哪一类','[{\"text\":\"蔬菜\",\"code\":\"A\"},{\"text\":\"水果\",\"code\":\"B\"},{\"text\":\"两个都是\",\"code\":\"C\"},{\"text\":\"两个都不是\",\"code\":\"D\"}]',10,'A','西红柿属于蔬菜',0,10),(1614657488516,'2021-03-02 03:58:08',1614657321655,'一般试卷','报考需要提交信息吗','[{\"text\":\"需要\",\"code\":\"A\"},{\"text\":\"不需要\",\"code\":\"B\"},{\"text\":\"可能\",\"code\":\"C\"},{\"text\":\"不可能\",\"code\":\"D\"}]',10,'A','需要提交信息',0,9);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614657544163 DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1614657541228,'2021-03-02 03:59:00',1614657042089,NULL,1614657321655,'一般试卷',1614657488516,'报考需要提交信息吗','[{\"text\":\"需要\",\"code\":\"A\"},{\"text\":\"不需要\",\"code\":\"B\"},{\"text\":\"可能\",\"code\":\"C\"},{\"text\":\"不可能\",\"code\":\"D\"}]',10,'A','需要提交信息',10,'A'),(1614657544162,'2021-03-02 03:59:03',1614657042089,NULL,1614657321655,'一般试卷',1614657420566,'西红柿属于哪一类','[{\"text\":\"蔬菜\",\"code\":\"A\"},{\"text\":\"水果\",\"code\":\"B\"},{\"text\":\"两个都是\",\"code\":\"C\"},{\"text\":\"两个都不是\",\"code\":\"D\"}]',10,'A','西红柿属于蔬菜',0,'B');
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614657181069 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2021-03-02 03:46:28','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-03-02 03:46:28','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-03-02 03:46:28','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-03-02 03:46:28','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-03-02 03:46:28','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-03-02 03:46:28','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1614657181068,'2021-03-02 03:53:00','求一起考试的','<p>有没有人？</p>',0,1614657042089,'123','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'zaixianbaoming' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614657221587 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1614657221586,'2021-03-02 03:53:41','20213211532364698083','zaixianbaoming',1614657042089,33,'报考项目3','http://localhost:8080/jspm974gz/upload/zaixianbaoming_xiangguantupian3.jpg',1,99.9,99.9,99.9,99.9,1,'已支付','江西省南昌市青山湖区京东镇创业路169号何兴村');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614657212089 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614657140700,'2021-03-02 03:52:20',1614657042089,22,'yiyuanjianjie','医院名称2','http://localhost:8080/jspm974gz/upload/yiyuanjianjie_xiangguantupian2.jpg'),(1614657212088,'2021-03-02 03:53:31',1614657042089,33,'zaixianbaoming','报考项目3','http://localhost:8080/jspm974gz/upload/zaixianbaoming_xiangguantupian3.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1614657042089,'123','yonghu','用户','xvddy65xu3w913ukv06zq498m0vrjxf2','2021-03-02 03:50:54','2021-03-02 04:58:48'),(2,1,'abo','users','管理员','bupyjyht928ia7k5ps9e05b8vx3ex1id','2021-03-02 03:53:55','2021-03-02 04:53:56');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-02 03:46:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiyuanjianjie`
--

DROP TABLE IF EXISTS `yiyuanjianjie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiyuanjianjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanbianhao` varchar(200) NOT NULL COMMENT '医院编号',
  `yiyuanmingcheng` varchar(200) NOT NULL COMMENT '医院名称',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `neirongjianjie` longtext COMMENT '内容简介',
  `danweixingzhi` varchar(200) DEFAULT NULL COMMENT '单位性质',
  `yuangongrenshu` int(11) DEFAULT NULL COMMENT '员工人数',
  `yiyuanyuanzhang` varchar(200) DEFAULT NULL COMMENT '医院院长',
  `chengliriqi` date DEFAULT NULL COMMENT '成立日期',
  `chenglikeshi` varchar(200) DEFAULT NULL COMMENT '成立科室',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yiyuanbianhao` (`yiyuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医院简介';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiyuanjianjie`
--

LOCK TABLES `yiyuanjianjie` WRITE;
/*!40000 ALTER TABLE `yiyuanjianjie` DISABLE KEYS */;
INSERT INTO `yiyuanjianjie` VALUES (21,'2021-03-02 03:46:28','医院编号1','医院名称1','http://localhost:8080/jspm974gz/upload/yiyuanjianjie_xiangguantupian1.jpg','内容简介1','民营',1,'医院院长1','2021-03-02','成立科室1',1,1),(22,'2021-03-02 03:46:28','医院编号2','医院名称2','http://localhost:8080/jspm974gz/upload/yiyuanjianjie_xiangguantupian2.jpg','内容简介2','民营',2,'医院院长2','2021-03-02','成立科室2',3,3),(23,'2021-03-02 03:46:28','医院编号3','医院名称3','http://localhost:8080/jspm974gz/upload/yiyuanjianjie_xiangguantupian3.jpg','内容简介3','民营',3,'医院院长3','2021-03-02','成立科室3',3,3),(24,'2021-03-02 03:46:28','医院编号4','医院名称4','http://localhost:8080/jspm974gz/upload/yiyuanjianjie_xiangguantupian4.jpg','内容简介4','民营',4,'医院院长4','2021-03-02','成立科室4',4,4),(25,'2021-03-02 03:46:28','医院编号5','医院名称5','http://localhost:8080/jspm974gz/upload/yiyuanjianjie_xiangguantupian5.jpg','内容简介5','民营',5,'医院院长5','2021-03-02','成立科室5',5,5),(26,'2021-03-02 03:46:28','医院编号6','医院名称6','http://localhost:8080/jspm974gz/upload/yiyuanjianjie_xiangguantupian6.jpg','内容简介6','民营',6,'医院院长6','2021-03-02','成立科室6',6,6);
/*!40000 ALTER TABLE `yiyuanjianjie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614657042090 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-02 03:46:28','用户1','123456','姓名1','男','440300199101010001','13823888881','http://localhost:8080/jspm974gz/upload/yonghu_zhaopian1.jpg',100),(12,'2021-03-02 03:46:28','用户2','123456','姓名2','男','440300199202020002','13823888882','http://localhost:8080/jspm974gz/upload/yonghu_zhaopian2.jpg',100),(13,'2021-03-02 03:46:28','用户3','123456','姓名3','男','440300199303030003','13823888883','http://localhost:8080/jspm974gz/upload/yonghu_zhaopian3.jpg',100),(14,'2021-03-02 03:46:28','用户4','123456','姓名4','男','440300199404040004','13823888884','http://localhost:8080/jspm974gz/upload/yonghu_zhaopian4.jpg',100),(15,'2021-03-02 03:46:28','用户5','123456','姓名5','男','440300199505050005','13823888885','http://localhost:8080/jspm974gz/upload/yonghu_zhaopian5.jpg',100),(16,'2021-03-02 03:46:28','用户6','123456','姓名6','男','440300199606060006','13823888886','http://localhost:8080/jspm974gz/upload/yonghu_zhaopian6.jpg',100),(1614657042089,'2021-03-02 03:50:42','123','123','孙医','','221422222222222222','14222222222','http://localhost:8080/jspm974gz/upload/1614657073490.png',100.1);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianbaoming`
--

DROP TABLE IF EXISTS `zaixianbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baomingbianhao` varchar(200) NOT NULL COMMENT '报名编号',
  `baokaoxiangmu` varchar(200) NOT NULL COMMENT '报考项目',
  `baokaoweizhi` varchar(200) DEFAULT NULL COMMENT '报考位置',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `baokaoriqi` date DEFAULT NULL COMMENT '报考日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baomingbianhao` (`baomingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614657290146 DEFAULT CHARSET=utf8 COMMENT='在线报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianbaoming`
--

LOCK TABLES `zaixianbaoming` WRITE;
/*!40000 ALTER TABLE `zaixianbaoming` DISABLE KEYS */;
INSERT INTO `zaixianbaoming` VALUES (31,'2021-03-02 03:46:28','报名编号1','报考项目1','报考位置1','http://localhost:8080/jspm974gz/upload/zaixianbaoming_xiangguantupian1.jpg','2021-03-02',1,1,99.9),(32,'2021-03-02 03:46:28','报名编号2','报考项目2','报考位置2','http://localhost:8080/jspm974gz/upload/zaixianbaoming_xiangguantupian2.jpg','2021-03-02',2,2,99.9),(33,'2021-03-02 03:46:28','报名编号3','报考项目3','报考位置3','http://localhost:8080/jspm974gz/upload/zaixianbaoming_xiangguantupian3.jpg','2021-03-02',3,3,99.9),(34,'2021-03-02 03:46:28','报名编号4','报考项目4','报考位置4','http://localhost:8080/jspm974gz/upload/zaixianbaoming_xiangguantupian4.jpg','2021-03-02',4,4,99.9),(35,'2021-03-02 03:46:28','报名编号5','报考项目5','报考位置5','http://localhost:8080/jspm974gz/upload/zaixianbaoming_xiangguantupian5.jpg','2021-03-02',5,5,99.9),(36,'2021-03-02 03:46:28','报名编号6','报考项目6','报考位置6','http://localhost:8080/jspm974gz/upload/zaixianbaoming_xiangguantupian6.jpg','2021-03-02',6,6,99.9),(1614657290145,'2021-03-02 03:54:49','1614657231','新报考项目','新新医院','http://localhost:8080/jspm974gz/upload/1614657279655.jpg','2021-03-01',0,0,200);
/*!40000 ALTER TABLE `zaixianbaoming` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 10:57:17
