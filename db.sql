/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssml9u00
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssml9u00` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssml9u00`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssml9u00/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssml9u00/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssml9u00/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussjiaoxueziyuan` */

DROP TABLE IF EXISTS `discussjiaoxueziyuan`;

CREATE TABLE `discussjiaoxueziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='教学资源评论表';

/*Data for the table `discussjiaoxueziyuan` */

insert  into `discussjiaoxueziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-03-16 15:23:14',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-03-16 15:23:14',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-03-16 15:23:14',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-03-16 15:23:14',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-03-16 15:23:14',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-03-16 15:23:14',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussketangxinxi` */

DROP TABLE IF EXISTS `discussketangxinxi`;

CREATE TABLE `discussketangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615880639862 DEFAULT CHARSET=utf8 COMMENT='课堂信息评论表';

/*Data for the table `discussketangxinxi` */

insert  into `discussketangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-03-16 15:23:14',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-16 15:23:14',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-16 15:23:14',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-16 15:23:14',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-16 15:23:14',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-16 15:23:14',6,6,'用户名6','评论内容6','回复内容6'),(1615880639861,'2021-03-16 15:43:59',33,1615880590346,'1','1212',NULL);

/*Table structure for table `discussqiandaoxinxi` */

DROP TABLE IF EXISTS `discussqiandaoxinxi`;

CREATE TABLE `discussqiandaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615880650750 DEFAULT CHARSET=utf8 COMMENT='签到信息评论表';

/*Data for the table `discussqiandaoxinxi` */

insert  into `discussqiandaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-03-16 15:23:14',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-16 15:23:14',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-16 15:23:14',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-16 15:23:14',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-16 15:23:14',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-16 15:23:14',6,6,'用户名6','评论内容6','回复内容6'),(1615880650749,'2021-03-16 15:44:10',53,1615880590346,'1','adas',NULL);

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615880861071 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1615880849004,'2021-03-16 15:47:28','作业01',60,1),(1615880861070,'2021-03-16 15:47:40','考试02',60,1);

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1615880936404 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1615880897489,'2021-03-16 15:48:16',1615880849004,'作业01','1+1=？','[{\"text\":\"A.2\",\"code\":\"A\"},{\"text\":\"B.3\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',10,'A','1+1=2',0,1),(1615880936403,'2021-03-16 15:48:56',1615880861070,'考试02','2+5=？','[{\"text\":\"A.4\",\"code\":\"A\"},{\"text\":\"B.5\",\"code\":\"B\"},{\"text\":\"C.6\",\"code\":\"C\"},{\"text\":\"D.7\",\"code\":\"D\"}]',10,'D','2+5=7',0,1);

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1615881136548 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1615881128267,'2021-03-16 15:52:08',1615880590346,NULL,1615880849004,'作业01',1615880897489,'1+1=？','[{\"text\":\"A.2\",\"code\":\"A\"},{\"text\":\"B.3\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',10,'A','1+1=2',0,'B'),(1615881136547,'2021-03-16 15:52:15',1615880590346,NULL,1615880861070,'考试02',1615880936403,'2+5=？','[{\"text\":\"A.4\",\"code\":\"A\"},{\"text\":\"B.5\",\"code\":\"B\"},{\"text\":\"C.6\",\"code\":\"C\"},{\"text\":\"D.7\",\"code\":\"D\"}]',10,'D','2+5=7',10,'D');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615880608106 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`nianling`,`shenfenzhenghaoma`,`shoujihaoma`,`xiangpian`) values (21,'2021-03-16 15:23:14','教师1','123456','教师姓名1','男',1,'440300199101010001','13823888881','http://localhost:8080/ssml9u00/upload/jiaoshi_xiangpian1.jpg'),(22,'2021-03-16 15:23:14','教师2','123456','教师姓名2','男',2,'440300199202020002','13823888882','http://localhost:8080/ssml9u00/upload/jiaoshi_xiangpian2.jpg'),(23,'2021-03-16 15:23:14','教师3','123456','教师姓名3','男',3,'440300199303030003','13823888883','http://localhost:8080/ssml9u00/upload/jiaoshi_xiangpian3.jpg'),(24,'2021-03-16 15:23:14','教师4','123456','教师姓名4','男',4,'440300199404040004','13823888884','http://localhost:8080/ssml9u00/upload/jiaoshi_xiangpian4.jpg'),(25,'2021-03-16 15:23:14','教师5','123456','教师姓名5','男',5,'440300199505050005','13823888885','http://localhost:8080/ssml9u00/upload/jiaoshi_xiangpian5.jpg'),(26,'2021-03-16 15:23:14','教师6','123456','教师姓名6','男',6,'440300199606060006','13823888886','http://localhost:8080/ssml9u00/upload/jiaoshi_xiangpian6.jpg'),(1615880608105,'2021-03-16 15:43:28','2','2','哦啊','女',40,'502136525587456325','15236525893','http://localhost:8080/ssml9u00/upload/1615880740827.png');

/*Table structure for table `jiaoxueziyuan` */

DROP TABLE IF EXISTS `jiaoxueziyuan`;

CREATE TABLE `jiaoxueziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanbianhao` varchar(200) NOT NULL COMMENT '资源编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `jianjie` longtext COMMENT '简介',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ziyuanbianhao` (`ziyuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615881025052 DEFAULT CHARSET=utf8 COMMENT='教学资源';

/*Data for the table `jiaoxueziyuan` */

insert  into `jiaoxueziyuan`(`id`,`addtime`,`ziyuanbianhao`,`mingcheng`,`jianjie`,`shipin`,`tupian`,`faburiqi`,`thumbsupnum`,`crazilynum`) values (71,'2021-03-16 15:23:14','资源编号1','名称1','简介1','','http://localhost:8080/ssml9u00/upload/jiaoxueziyuan_tupian1.jpg','2021-03-16',1,1),(72,'2021-03-16 15:23:14','资源编号2','名称2','简介2','','http://localhost:8080/ssml9u00/upload/jiaoxueziyuan_tupian2.jpg','2021-03-16',2,2),(73,'2021-03-16 15:23:14','资源编号3','名称3','简介3','','http://localhost:8080/ssml9u00/upload/jiaoxueziyuan_tupian3.jpg','2021-03-16',3,3),(74,'2021-03-16 15:23:14','资源编号4','名称4','简介4','','http://localhost:8080/ssml9u00/upload/jiaoxueziyuan_tupian4.jpg','2021-03-16',4,4),(75,'2021-03-16 15:23:14','资源编号5','名称5','简介5','','http://localhost:8080/ssml9u00/upload/jiaoxueziyuan_tupian5.jpg','2021-03-16',5,5),(76,'2021-03-16 15:23:14','资源编号6','名称6','简介6','','http://localhost:8080/ssml9u00/upload/jiaoxueziyuan_tupian6.jpg','2021-03-16',6,6),(1615881025051,'2021-03-16 15:50:24','1615880900555','动画','道教飒飒652632','http://localhost:8080/ssml9u00/upload/1615881017518.mp4','http://localhost:8080/ssml9u00/upload/1615881005347.jpg','2021-02-01',0,0);

/*Table structure for table `ketangjiaru` */

DROP TABLE IF EXISTS `ketangjiaru`;

CREATE TABLE `ketangjiaru` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketangbianhao` varchar(200) DEFAULT NULL COMMENT '课堂编号',
  `ketangmingcheng` varchar(200) DEFAULT NULL COMMENT '课堂名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `faburiqi` varchar(200) DEFAULT NULL COMMENT '发布日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615881061428 DEFAULT CHARSET=utf8 COMMENT='课堂加入';

/*Data for the table `ketangjiaru` */

insert  into `ketangjiaru`(`id`,`addtime`,`ketangbianhao`,`ketangmingcheng`,`leixing`,`faburiqi`,`gonghao`,`jiaoshixingming`,`zhuangtai`,`shenqingriqi`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (41,'2021-03-16 15:23:14','课堂编号1','课堂名称1','类型1','发布日期1','工号1','教师姓名1','已加入','2021-03-16','学号1','学生姓名1','是',''),(42,'2021-03-16 15:23:14','课堂编号2','课堂名称2','类型2','发布日期2','工号2','教师姓名2','已加入','2021-03-16','学号2','学生姓名2','是',''),(43,'2021-03-16 15:23:14','课堂编号3','课堂名称3','类型3','发布日期3','工号3','教师姓名3','已加入','2021-03-16','学号3','学生姓名3','是',''),(44,'2021-03-16 15:23:14','课堂编号4','课堂名称4','类型4','发布日期4','工号4','教师姓名4','已加入','2021-03-16','学号4','学生姓名4','是',''),(45,'2021-03-16 15:23:14','课堂编号5','课堂名称5','类型5','发布日期5','工号5','教师姓名5','已加入','2021-03-16','学号5','学生姓名5','是',''),(46,'2021-03-16 15:23:14','课堂编号6','课堂名称6','类型6','发布日期6','工号6','教师姓名6','已加入','2021-03-16','学号6','学生姓名6','是',''),(1615881061427,'2021-03-16 15:51:01','001','美术课堂','美术','2021-02-01','2','哦啊','已加入','2021-02-02','1','案说','是','hao123');

/*Table structure for table `ketangxinxi` */

DROP TABLE IF EXISTS `ketangxinxi`;

CREATE TABLE `ketangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketangbianhao` varchar(200) NOT NULL COMMENT '课堂编号',
  `ketangmingcheng` varchar(200) NOT NULL COMMENT '课堂名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jianjie` longtext COMMENT '简介',
  `xiangguanwendang` varchar(200) DEFAULT NULL COMMENT '相关文档',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ketangbianhao` (`ketangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615880800821 DEFAULT CHARSET=utf8 COMMENT='课堂信息';

/*Data for the table `ketangxinxi` */

insert  into `ketangxinxi`(`id`,`addtime`,`ketangbianhao`,`ketangmingcheng`,`leixing`,`jianjie`,`xiangguanwendang`,`xiangguantupian`,`faburiqi`,`gonghao`,`jiaoshixingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (31,'2021-03-16 15:23:14','课堂编号1','课堂名称1','类型1','简介1','','http://localhost:8080/ssml9u00/upload/ketangxinxi_xiangguantupian1.jpg','2021-03-16','工号1','教师姓名1',1,1,'2021-03-16 15:23:14',1),(33,'2021-03-16 15:23:14','课堂编号3','课堂名称3','类型3','简介3','','http://localhost:8080/ssml9u00/upload/ketangxinxi_xiangguantupian3.jpg','2021-03-16','工号3','教师姓名3',4,4,'2021-03-16 15:44:02',6),(34,'2021-03-16 15:23:14','课堂编号4','课堂名称4','类型4','简介4','','http://localhost:8080/ssml9u00/upload/ketangxinxi_xiangguantupian4.jpg','2021-03-16','工号4','教师姓名4',4,4,'2021-03-16 15:23:14',4),(35,'2021-03-16 15:23:14','课堂编号5','课堂名称5','类型5','简介5','','http://localhost:8080/ssml9u00/upload/ketangxinxi_xiangguantupian5.jpg','2021-03-16','工号5','教师姓名5',5,5,'2021-03-16 15:23:14',5),(36,'2021-03-16 15:23:14','课堂编号6','课堂名称6','类型6','简介6','','http://localhost:8080/ssml9u00/upload/ketangxinxi_xiangguantupian6.jpg','2021-03-16','工号6','教师姓名6',6,6,'2021-03-16 15:23:14',6),(1615880800820,'2021-03-16 15:46:40','001','美术课堂','美术','美术内容656232','http://localhost:8080/ssml9u00/upload/1615880776943.docx','http://localhost:8080/ssml9u00/upload/1615880786545.jpg','2021-02-01','2','哦啊',0,0,'2021-03-16 15:51:04',2);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615880671090 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (121,'2021-03-16 15:23:14',1,'用户名1','留言内容1','回复内容1'),(122,'2021-03-16 15:23:14',2,'用户名2','留言内容2','回复内容2'),(123,'2021-03-16 15:23:14',3,'用户名3','留言内容3','回复内容3'),(124,'2021-03-16 15:23:14',4,'用户名4','留言内容4','回复内容4'),(125,'2021-03-16 15:23:14',5,'用户名5','留言内容5','回复内容5'),(126,'2021-03-16 15:23:14',6,'用户名6','留言内容6','回复内容6'),(1615880671089,'2021-03-16 15:44:30',1615880590346,'1','有新资源么','有的');

/*Table structure for table `qiandaoqingkuang` */

DROP TABLE IF EXISTS `qiandaoqingkuang`;

CREATE TABLE `qiandaoqingkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinxibianhao` varchar(200) NOT NULL COMMENT '信息编号',
  `qiandaoxiangmu` varchar(200) DEFAULT NULL COMMENT '签到项目',
  `faburiqi` varchar(200) DEFAULT NULL COMMENT '发布日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `qiandaoshijian` date DEFAULT NULL COMMENT '签到时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615881111208 DEFAULT CHARSET=utf8 COMMENT='签到情况';

/*Data for the table `qiandaoqingkuang` */

insert  into `qiandaoqingkuang`(`id`,`addtime`,`xinxibianhao`,`qiandaoxiangmu`,`faburiqi`,`gonghao`,`jiaoshixingming`,`zhuangtai`,`xuehao`,`xueshengxingming`,`qiandaoshijian`,`sfsh`,`shhf`) values (61,'2021-03-16 15:23:14','信息编号1','签到项目1','发布日期1','工号1','教师姓名1','已签到','学号1','学生姓名1','2021-03-16','是',''),(62,'2021-03-16 15:23:14','信息编号2','签到项目2','发布日期2','工号2','教师姓名2','已签到','学号2','学生姓名2','2021-03-16','是',''),(63,'2021-03-16 15:23:14','信息编号3','签到项目3','发布日期3','工号3','教师姓名3','已签到','学号3','学生姓名3','2021-03-16','是',''),(64,'2021-03-16 15:23:14','信息编号4','签到项目4','发布日期4','工号4','教师姓名4','已签到','学号4','学生姓名4','2021-03-16','是',''),(65,'2021-03-16 15:23:14','信息编号5','签到项目5','发布日期5','工号5','教师姓名5','已签到','学号5','学生姓名5','2021-03-16','是',''),(66,'2021-03-16 15:23:14','信息编号6','签到项目6','发布日期6','工号6','教师姓名6','已签到','学号6','学生姓名6','2021-03-16','是',''),(1615881111207,'2021-03-16 15:51:50','1615880720806','美术签到','2021-02-01','2','哦啊','已签到','1','案说','2021-02-02','是','hao666');

/*Table structure for table `qiandaoxinxi` */

DROP TABLE IF EXISTS `qiandaoxinxi`;

CREATE TABLE `qiandaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinxibianhao` varchar(200) NOT NULL COMMENT '信息编号',
  `qiandaoxiangmu` varchar(200) NOT NULL COMMENT '签到项目',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinxibianhao` (`xinxibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615880824183 DEFAULT CHARSET=utf8 COMMENT='签到信息';

/*Data for the table `qiandaoxinxi` */

insert  into `qiandaoxinxi`(`id`,`addtime`,`xinxibianhao`,`qiandaoxiangmu`,`xiangguantupian`,`faburiqi`,`gonghao`,`jiaoshixingming`,`thumbsupnum`,`crazilynum`) values (51,'2021-03-16 15:23:14','信息编号1','签到项目1','http://localhost:8080/ssml9u00/upload/qiandaoxinxi_xiangguantupian1.jpg','2021-03-16','工号1','教师姓名1',1,1),(52,'2021-03-16 15:23:14','信息编号2','签到项目2','http://localhost:8080/ssml9u00/upload/qiandaoxinxi_xiangguantupian2.jpg','2021-03-16','工号2','教师姓名2',2,2),(53,'2021-03-16 15:23:14','信息编号3','签到项目3','http://localhost:8080/ssml9u00/upload/qiandaoxinxi_xiangguantupian3.jpg','2021-03-16','工号3','教师姓名3',4,4),(54,'2021-03-16 15:23:14','信息编号4','签到项目4','http://localhost:8080/ssml9u00/upload/qiandaoxinxi_xiangguantupian4.jpg','2021-03-16','工号4','教师姓名4',4,4),(55,'2021-03-16 15:23:14','信息编号5','签到项目5','http://localhost:8080/ssml9u00/upload/qiandaoxinxi_xiangguantupian5.jpg','2021-03-16','工号5','教师姓名5',5,5),(56,'2021-03-16 15:23:14','信息编号6','签到项目6','http://localhost:8080/ssml9u00/upload/qiandaoxinxi_xiangguantupian6.jpg','2021-03-16','工号6','教师姓名6',6,6),(1615880824182,'2021-03-16 15:47:03','1615880720806','美术签到','http://localhost:8080/ssml9u00/upload/1615880819150.jpg','2021-02-01','2','哦啊',0,0);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615880645755 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615880634991,'2021-03-16 15:43:54',1615880590346,33,'ketangxinxi','课堂名称3','http://localhost:8080/ssml9u00/upload/ketangxinxi_xiangguantupian3.jpg'),(1615880645754,'2021-03-16 15:44:05',1615880590346,53,'qiandaoxinxi','签到项目3','http://localhost:8080/ssml9u00/upload/qiandaoxinxi_xiangguantupian3.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1615880590346,'1','xuesheng','学生','1toz286k4y44q16bscwit3f829ltji8o','2021-03-16 15:43:33','2021-03-16 16:50:44'),(2,1615880608105,'2','jiaoshi','教师','mfjo1y87mlngz2lc5ry3ji3xs2trjo3c','2021-03-16 15:45:32','2021-03-16 16:52:39'),(3,1,'abo','users','管理员','u1dw1413svcdoc0gml9qlekjk07cifi8','2021-03-16 15:49:10','2021-03-16 16:49:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-16 15:23:14');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615880590347 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`nianling`,`shenfenzhenghaoma`,`shoujihaoma`,`xiangpian`) values (12,'2021-03-16 15:23:14','学生2','123456','学生姓名2','男',2,'440300199202020002','13823888882','http://localhost:8080/ssml9u00/upload/xuesheng_xiangpian2.jpg'),(13,'2021-03-16 15:23:14','学生3','123456','学生姓名3','男',30,'440300199303030003','13823888883','http://localhost:8080/ssml9u00/upload/xuesheng_xiangpian3.jpg'),(14,'2021-03-16 15:23:14','学生4','123456','学生姓名4','男',4,'440300199404040004','13823888884','http://localhost:8080/ssml9u00/upload/xuesheng_xiangpian4.jpg'),(15,'2021-03-16 15:23:14','学生5','123456','学生姓名5','男',5,'440300199505050005','13823888885','http://localhost:8080/ssml9u00/upload/xuesheng_xiangpian5.jpg'),(16,'2021-03-16 15:23:14','学生6','123456','学生姓名6','男',6,'440300199606060006','13823888886','http://localhost:8080/ssml9u00/upload/xuesheng_xiangpian6.jpg'),(1615880590346,'2021-03-16 15:43:10','1','1','案说','男',18,'526385596635214587','15263258521','http://localhost:8080/ssml9u00/upload/1615880690725.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
