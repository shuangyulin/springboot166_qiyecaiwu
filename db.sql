/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qiyecaiwuguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qiyecaiwuguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qiyecaiwuguanli`;

/*Table structure for table `baoxiao` */

DROP TABLE IF EXISTS `baoxiao`;

CREATE TABLE `baoxiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '申请人',
  `baoxiao_name` varchar(200) DEFAULT NULL COMMENT '报销名目 Search111 ',
  `baoxiao_types` int(11) DEFAULT NULL COMMENT '报销类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `baoxiao_money` decimal(10,4) DEFAULT NULL COMMENT '报销金额',
  `baoxiao_content` text COMMENT '报销详情',
  `baoxiao_yesno_types` int(11) DEFAULT NULL COMMENT '是否同意',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='报销信息';

/*Data for the table `baoxiao` */

insert  into `baoxiao`(`id`,`yuangong_id`,`baoxiao_name`,`baoxiao_types`,`insert_time`,`baoxiao_money`,`baoxiao_content`,`baoxiao_yesno_types`,`create_time`) values (1,2,'报销名目1',2,'2022-02-26 21:16:41','41.3400','报销详情1',1,'2022-02-26 21:16:41'),(2,1,'报销名目2',1,'2022-02-26 21:16:41','827.4000','报销详情2',1,'2022-02-26 21:16:41'),(3,1,'报销名目3',2,'2022-02-26 21:16:41','207.2100','报销详情3',1,'2022-02-26 21:16:41'),(4,1,'报销名目4',2,'2022-02-26 21:16:41','589.7800','报销详情4',1,'2022-02-26 21:16:41'),(5,3,'报销名目5',1,'2022-02-26 21:16:41','783.7600','报销详情5',2,'2022-02-26 21:16:41'),(8,1,'报销999',2,'2022-02-26 21:50:19','800.0000','<p>表笑7888的内容</p>',1,'2022-02-26 21:50:19');

/*Table structure for table `caiwurenyuan` */

DROP TABLE IF EXISTS `caiwurenyuan`;

CREATE TABLE `caiwurenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `caiwurenyuan_name` varchar(200) DEFAULT NULL COMMENT '财务人员姓名 Search111 ',
  `caiwurenyuan_phone` varchar(200) DEFAULT NULL COMMENT '财务人员手机号',
  `caiwurenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '财务人员身份证号',
  `caiwurenyuan_photo` varchar(200) DEFAULT NULL COMMENT '财务人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `caiwurenyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='财务人员';

/*Data for the table `caiwurenyuan` */

insert  into `caiwurenyuan`(`id`,`username`,`password`,`caiwurenyuan_name`,`caiwurenyuan_phone`,`caiwurenyuan_id_number`,`caiwurenyuan_photo`,`sex_types`,`caiwurenyuan_email`,`create_time`) values (1,'a1','123456','财务人员姓名1','17703786901','410224199610232001','http://localhost:8080/qiyecaiwuguanli/upload/caiwurenyuan1.jpg',1,'1@qq.com','2022-02-26 21:16:41'),(2,'a2','123456','财务人员姓名2','17703786902','410224199610232002','http://localhost:8080/qiyecaiwuguanli/upload/caiwurenyuan2.jpg',1,'2@qq.com','2022-02-26 21:16:41'),(3,'a3','123456','财务人员姓名3','17703786903','410224199610232003','http://localhost:8080/qiyecaiwuguanli/upload/caiwurenyuan3.jpg',1,'3@qq.com','2022-02-26 21:16:41');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-26 21:16:25'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-26 21:16:25'),(3,'baoxiao_types','报销类型',2,'出差',NULL,NULL,'2022-02-26 21:16:25'),(4,'baoxiao_types','报销类型',1,'招待费用',NULL,NULL,'2022-02-26 21:16:25'),(5,'baoxiao_yesno_types','是否同意',1,'待审核',NULL,NULL,'2022-02-26 21:16:25'),(6,'baoxiao_yesno_types','是否同意',2,'同意',NULL,NULL,'2022-02-26 21:16:25'),(7,'baoxiao_yesno_types','是否同意',3,'拒绝',NULL,NULL,'2022-02-26 21:16:25'),(8,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-02-26 21:16:25'),(9,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-02-26 21:16:25'),(10,'zhichuxinxi_types','支出类型',1,'支出类型1',NULL,NULL,'2022-02-26 21:16:26'),(11,'zhichuxinxi_types','支出类型',2,'支出类型2',NULL,NULL,'2022-02-26 21:16:26'),(12,'zhichuxinxi_types','支出类型',3,'支出类型3',NULL,NULL,'2022-02-26 21:16:26'),(13,'zhichuxinxi_types','支出类型',4,'支出类型4',NULL,NULL,'2022-02-26 21:16:26'),(14,'shoufeixinxi_types','收费类型',1,'收费类型1',NULL,NULL,'2022-02-26 21:16:26'),(15,'shoufeixinxi_types','收费类型',2,'收费类型2',NULL,NULL,'2022-02-26 21:16:26'),(16,'shoufeixinxi_types','收费类型',3,'收费类型3',NULL,NULL,'2022-02-26 21:16:26'),(17,'shoufeixinxi_types','收费类型',4,'收费类型4',NULL,NULL,'2022-02-26 21:16:26'),(18,'zhichuxinxi_types','支出类型',5,'支出类型5',NULL,'','2022-02-26 21:46:46');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/qiyecaiwuguanli/upload/gonggao1.jpg',1,'2022-02-26 21:16:41','公告详情1','2022-02-26 21:16:41'),(2,'公告名称2','http://localhost:8080/qiyecaiwuguanli/upload/gonggao2.jpg',1,'2022-02-26 21:16:41','公告详情2','2022-02-26 21:16:41'),(3,'公告名称3','http://localhost:8080/qiyecaiwuguanli/upload/gonggao3.jpg',1,'2022-02-26 21:16:41','公告详情3','2022-02-26 21:16:41'),(4,'公告名称4','http://localhost:8080/qiyecaiwuguanli/upload/gonggao4.jpg',2,'2022-02-26 21:16:41','公告详情4','2022-02-26 21:16:41'),(5,'公告名称5','http://localhost:8080/qiyecaiwuguanli/upload/gonggao5.jpg',1,'2022-02-26 21:16:41','公告详情5','2022-02-26 21:16:41');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yuangong_id`,`liuyan_name`,`liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,2,'留言标题1','留言内容1','回复信息1','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(2,3,'留言标题2','留言内容2','回复信息2','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(3,1,'留言标题3','留言内容3','回复信息3','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(4,1,'留言标题4','留言内容4','回复信息4','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(5,3,'留言标题5','留言内容5','回复信息58999','2022-02-26 21:16:41','2022-02-26 21:47:00','2022-02-26 21:16:41'),(6,1,'标日111','内容111','','2022-02-26 21:50:54',NULL,'2022-02-26 21:50:54');

/*Table structure for table `shoufeixinxi` */

DROP TABLE IF EXISTS `shoufeixinxi`;

CREATE TABLE `shoufeixinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mingmu_name` varchar(200) DEFAULT NULL COMMENT '收费名目 Search111 ',
  `shoufeixinxi_types` int(11) DEFAULT NULL COMMENT '收费类型 Search111 ',
  `shoufeixinxi_yushou_money` decimal(10,4) DEFAULT NULL COMMENT '预售金额',
  `shoufeixinxi_shishou_money` decimal(10,4) DEFAULT NULL COMMENT '实收金额',
  `shoufei_time` timestamp NULL DEFAULT NULL COMMENT '收费时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='收费信息';

/*Data for the table `shoufeixinxi` */

insert  into `shoufeixinxi`(`id`,`mingmu_name`,`shoufeixinxi_types`,`shoufeixinxi_yushou_money`,`shoufeixinxi_shishou_money`,`shoufei_time`,`insert_time`,`create_time`) values (1,'收费名目1',3,'830.2800','742.5300','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(2,'收费名目2',3,'741.3400','367.8000','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(3,'收费名目3',4,'416.9000','60.7700','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(4,'收费名目4',2,'613.2500','35.5700','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(5,'收费名目5',1,'923.2100','413.8900','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(12,'收费名目1111',4,'500.0000','400.0000','2022-02-27 00:00:00','2022-02-26 21:48:19','2022-02-26 21:48:19');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','on3ppneqaxztsrt705i1idaxgy4jfn9z','2022-02-26 21:19:06','2022-02-26 22:54:23'),(2,1,'a1','caiwurenyuan','财务人员','q236rjunjvc1j7k3be7u56z9a1l9l2rj','2022-02-26 21:33:59','2022-02-26 22:47:45'),(3,1,'a1','yuangong','员工','penft7k07g8squhtao139c1h7j2z1qs0','2022-02-26 21:49:09','2022-02-26 22:49:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `xinzi_month` varchar(200) DEFAULT NULL COMMENT '月份  Search111',
  `jine` decimal(10,4) DEFAULT NULL COMMENT '薪资',
  `xinzi_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yuangong_id`,`xinzi_month`,`jine`,`xinzi_content`,`insert_time`,`create_time`) values (1,3,'2022-02','792.4700','备注1','2022-02-26 21:16:41','2022-02-26 21:16:41'),(2,2,'2022-02','919.7400','备注2','2022-02-26 21:16:41','2022-02-26 21:16:41'),(3,1,'2021-12','105.1500','备注3','2021-12-26 21:16:41','2021-12-26 21:16:41'),(4,1,'2022-01','386.0400','备注4','2022-01-26 21:16:41','2021-02-26 21:16:41'),(5,1,'2022-02','987.3700','备注5','2022-02-26 21:16:41','2022-02-26 21:16:41'),(6,2,'2022-01','3000.0000','<p>无</p>','2022-02-26 21:49:00','2022-02-26 21:49:00');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`create_time`) values (1,'a1','123456','员工姓名1','17703786901','410224199610232001','http://localhost:8080/qiyecaiwuguanli/upload/yuangong1.jpg',2,'1@qq.com','2022-02-26 21:16:41'),(2,'a2','123456','员工姓名2','17703786902','410224199610232002','http://localhost:8080/qiyecaiwuguanli/upload/yuangong2.jpg',1,'2@qq.com','2022-02-26 21:16:41'),(3,'a3','123456','员工姓名3','17703786903','410224199610232003','http://localhost:8080/qiyecaiwuguanli/upload/yuangong3.jpg',2,'3@qq.com','2022-02-26 21:16:41');

/*Table structure for table `zhichuxinxi` */

DROP TABLE IF EXISTS `zhichuxinxi`;

CREATE TABLE `zhichuxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhichuxinxi_mingmu_name` varchar(200) DEFAULT NULL COMMENT '支出名目 Search111 ',
  `zhichuxinxi_types` int(11) DEFAULT NULL COMMENT '支出类型 Search111 ',
  `zhichuxinxi_money` decimal(10,4) DEFAULT NULL COMMENT '支出金额',
  `zhichu_content` text COMMENT '备注',
  `zhichuxinxi_time` timestamp NULL DEFAULT NULL COMMENT '支出时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='支出信息';

/*Data for the table `zhichuxinxi` */

insert  into `zhichuxinxi`(`id`,`zhichuxinxi_mingmu_name`,`zhichuxinxi_types`,`zhichuxinxi_money`,`zhichu_content`,`zhichuxinxi_time`,`insert_time`,`create_time`) values (1,'支出名目1',4,'262.7000','备注1','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(2,'支出名目2',1,'820.9800','备注2','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(3,'支出名目3',4,'614.8900','备注3','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(4,'支出名目4',4,'564.1100','备注4','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(5,'支出名目5',1,'289.8000','备注5','2022-02-26 21:16:41','2022-02-26 21:16:41','2022-02-26 21:16:41'),(6,'支出1',5,'200.0000','<p>备注222</p>','2022-02-23 00:00:00','2022-02-26 21:48:39','2022-02-26 21:48:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
