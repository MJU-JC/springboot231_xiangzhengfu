/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiangzhengfuguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiangzhengfuguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiangzhengfuguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xiangzhengfuguanli/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xiangzhengfuguanli/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xiangzhengfuguanli/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'ziliaoshangchuan_types','资料类型',1,'资料类型1',NULL,NULL,'2022-04-09 19:32:31'),(2,'ziliaoshangchuan_types','资料类型',2,'资料类型2',NULL,NULL,'2022-04-09 19:32:31'),(3,'ziliaoshangchuan_types','资料类型',3,'资料类型3',NULL,NULL,'2022-04-09 19:32:31'),(4,'ziliaoshangchuan_yesno_types','审核状态',1,'审核中',NULL,NULL,'2022-04-09 19:32:31'),(5,'ziliaoshangchuan_yesno_types','审核状态',2,'通过',NULL,NULL,'2022-04-09 19:32:31'),(6,'ziliaoshangchuan_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-04-09 19:32:31'),(7,'huodong_types','活动类型',1,'活动类型1',NULL,NULL,'2022-04-09 19:32:31'),(8,'huodong_types','活动类型',2,'活动类型2',NULL,NULL,'2022-04-09 19:32:31'),(9,'huodong_types','活动类型',3,'活动类型3',NULL,NULL,'2022-04-09 19:32:31'),(10,'huodong_order_yesno_types','审核状态',1,'审核中',NULL,NULL,'2022-04-09 19:32:31'),(11,'huodong_order_yesno_types','审核状态',2,'通过',NULL,NULL,'2022-04-09 19:32:31'),(12,'huodong_order_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-04-09 19:32:31'),(13,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2022-04-09 19:32:31'),(14,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2022-04-09 19:32:31'),(15,'news_types','新闻类型',3,'新闻类型3',NULL,NULL,'2022-04-09 19:32:31'),(16,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-09 19:32:31'),(17,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-09 19:32:31'),(18,'yonghu_types','家庭',1,'家庭1',NULL,NULL,'2022-04-09 19:32:31'),(19,'yonghu_types','家庭',2,'家庭2',NULL,NULL,'2022-04-09 19:32:31'),(20,'yonghu_types','家庭',3,'家庭3',NULL,NULL,'2022-04-09 19:32:31'),(21,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-09 19:32:31'),(22,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-09 19:32:31');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,'2022-04-09 19:32:39','2022-04-09 19:32:39','2022-04-09 19:32:39'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,1,'2022-04-09 19:32:39','2022-04-09 19:32:39','2022-04-09 19:32:39'),(3,'帖子标题3',3,NULL,'发布内容3',NULL,1,'2022-04-09 19:32:39','2022-04-09 19:32:39','2022-04-09 19:32:39'),(4,'帖子标题4',1,NULL,'发布内容4',NULL,1,'2022-04-09 19:32:39','2022-04-09 19:32:39','2022-04-09 19:32:39'),(5,'帖子标题5',3,NULL,'发布内容5',NULL,1,'2022-04-09 19:32:39','2022-04-09 19:32:39','2022-04-09 19:32:39'),(6,NULL,1,NULL,'评论内容123',5,2,'2022-04-09 20:19:51',NULL,'2022-04-09 20:19:51'),(7,NULL,NULL,1,'管理评论123',5,2,'2022-04-09 20:20:18',NULL,'2022-04-09 20:20:18');

/*Table structure for table `huodong` */

DROP TABLE IF EXISTS `huodong`;

CREATE TABLE `huodong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '活动标题  Search111 ',
  `huodong_types` int(11) DEFAULT NULL COMMENT '活动类型  Search111 ',
  `huodong_photo` varchar(200) DEFAULT NULL COMMENT '活动封面',
  `huodong_date` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `huodong_content` text COMMENT '活动详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='活动信息';

/*Data for the table `huodong` */

insert  into `huodong`(`id`,`huodong_name`,`huodong_types`,`huodong_photo`,`huodong_date`,`huodong_content`,`create_time`) values (1,'活动标题1',1,'http://localhost:8080/xiangzhengfuguanli/upload/huodong1.jpg','活动时间1','活动详情1','2022-04-09 19:32:39'),(2,'活动标题2',2,'http://localhost:8080/xiangzhengfuguanli/upload/huodong2.jpg','活动时间2','活动详情2','2022-04-09 19:32:39'),(3,'活动标题3',1,'http://localhost:8080/xiangzhengfuguanli/upload/huodong3.jpg','活动时间3','活动详情3','2022-04-09 19:32:39'),(4,'活动标题4',1,'http://localhost:8080/xiangzhengfuguanli/upload/huodong4.jpg','活动时间4','活动详情4','2022-04-09 19:32:39'),(5,'活动标题5',2,'http://localhost:8080/xiangzhengfuguanli/upload/huodong5.jpg','活动时间5','活动详情5','2022-04-09 19:32:39');

/*Table structure for table `huodong_order` */

DROP TABLE IF EXISTS `huodong_order`;

CREATE TABLE `huodong_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_id` int(11) DEFAULT NULL COMMENT '活动',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `huodong_order_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态',
  `huodong_order_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='活动报名';

/*Data for the table `huodong_order` */

insert  into `huodong_order`(`id`,`huodong_id`,`yonghu_id`,`huodong_order_yesno_types`,`huodong_order_yesno_text`,`insert_time`,`create_time`) values (1,4,1,1,NULL,'2022-04-09 20:16:45','2022-04-09 20:16:45'),(2,5,1,3,'请不要重复报名活动','2022-04-09 20:18:50','2022-04-09 20:18:50'),(3,5,1,2,'同意123','2022-04-09 20:19:01','2022-04-09 20:19:01');

/*Table structure for table `jiatingchengyuan` */

DROP TABLE IF EXISTS `jiatingchengyuan`;

CREATE TABLE `jiatingchengyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiatingchengyuan_name` varchar(200) DEFAULT NULL COMMENT '外出人员名称  Search111 ',
  `jiatingchengyuan_phone` varchar(200) DEFAULT NULL COMMENT '外出人员联系方式',
  `jiatingchengyuan_address` varchar(200) DEFAULT NULL COMMENT '外出地址  Search111 ',
  `jiatingchengyuan_date` varchar(200) DEFAULT NULL COMMENT '外出时间',
  `jiatingchengyuan_text` text COMMENT '外出详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='家庭成员流动';

/*Data for the table `jiatingchengyuan` */

insert  into `jiatingchengyuan`(`id`,`yonghu_id`,`jiatingchengyuan_name`,`jiatingchengyuan_phone`,`jiatingchengyuan_address`,`jiatingchengyuan_date`,`jiatingchengyuan_text`,`insert_time`,`create_time`) values (1,2,'张三','17785599694','外出地址1','外出时间1','外出详情1','2022-04-09 20:32:47','2022-04-09 20:32:47'),(2,1,'123','13314134121','123','123','123','2022-04-09 20:33:06','2022-04-09 20:33:06');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='留言版';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,2,'留言标题1','留言内容1','2022-04-09 19:32:39','回复信息1','2022-04-09 19:32:39','2022-04-09 19:32:39'),(2,2,'留言标题2','留言内容2','2022-04-09 19:32:39','回复信息2','2022-04-09 19:32:39','2022-04-09 19:32:39'),(3,2,'留言标题3','留言内容3','2022-04-09 19:32:39','回复信息3','2022-04-09 19:32:39','2022-04-09 19:32:39'),(4,3,'留言标题4','留言内容4','2022-04-09 19:32:39','回复信息4','2022-04-09 19:32:39','2022-04-09 19:32:39'),(5,2,'留言标题5','留言内容5','2022-04-09 19:32:39','回复信息5','2022-04-09 19:32:39','2022-04-09 19:32:39'),(6,1,'留言标题','标题内容1231231','2022-04-09 20:18:41','收到反馈1111','2022-04-09 20:20:58','2022-04-09 20:18:41');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新闻动态';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻标题1',3,'http://localhost:8080/xiangzhengfuguanli/upload/news1.jpg','2022-04-09 19:32:39','新闻详情1','2022-04-09 19:32:39'),(2,'新闻标题2',2,'http://localhost:8080/xiangzhengfuguanli/upload/news2.jpg','2022-04-09 19:32:39','新闻详情2','2022-04-09 19:32:39'),(3,'新闻标题3',3,'http://localhost:8080/xiangzhengfuguanli/upload/news3.jpg','2022-04-09 19:32:39','新闻详情3','2022-04-09 19:32:39'),(4,'新闻标题4',2,'http://localhost:8080/xiangzhengfuguanli/upload/news4.jpg','2022-04-09 19:32:39','新闻详情4','2022-04-09 19:32:39'),(5,'新闻标题5',2,'http://localhost:8080/xiangzhengfuguanli/upload/news5.jpg','2022-04-09 19:32:39','新闻详情5','2022-04-09 19:32:39');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','rupsqdnopuu65heuo5hw3h0eaidb2s9d','2022-04-09 19:43:06','2022-04-09 21:37:46'),(2,1,'a1','yonghu','用户','368n87jcc2qaw0gta6kxz2hn1rqkvh7t','2022-04-09 20:03:06','2022-04-09 21:32:55');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_types` int(11) DEFAULT NULL COMMENT '家庭 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_email`,`sex_types`,`yonghu_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/xiangzhengfuguanli/upload/yonghu1.jpg','17703786901','1@qq.com',2,3,1,'2022-04-09 19:32:39'),(2,'a2','123456','用户姓名2','http://localhost:8080/xiangzhengfuguanli/upload/yonghu2.jpg','17703786902','2@qq.com',1,3,1,'2022-04-09 19:32:39'),(3,'a3','123456','用户姓名3','http://localhost:8080/xiangzhengfuguanli/upload/yonghu3.jpg','17703786903','3@qq.com',1,1,1,'2022-04-09 19:32:39');

/*Table structure for table `ziliaoshangchuan` */

DROP TABLE IF EXISTS `ziliaoshangchuan`;

CREATE TABLE `ziliaoshangchuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ziliaoshangchuan_name` varchar(200) DEFAULT NULL COMMENT '资料名称  Search111 ',
  `ziliaoshangchuan_types` int(11) DEFAULT NULL COMMENT '资料类型  Search111 ',
  `ziliaoshangchuan_file` varchar(200) DEFAULT NULL COMMENT '资料',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `ziliaoshangchuan_content` text COMMENT '资料详情',
  `ziliaoshangchuan_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态',
  `ziliaoshangchuan_yesno_text` text COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='资料上传';

/*Data for the table `ziliaoshangchuan` */

insert  into `ziliaoshangchuan`(`id`,`ziliaoshangchuan_name`,`ziliaoshangchuan_types`,`ziliaoshangchuan_file`,`insert_time`,`ziliaoshangchuan_content`,`ziliaoshangchuan_yesno_types`,`ziliaoshangchuan_yesno_text`,`create_time`) values (1,'资料名称1',1,'http://localhost:8080/xiangzhengfuguanli/upload/file.rar','2022-04-09 19:32:39','资料详情1',1,NULL,'2022-04-09 19:32:39'),(2,'资料名称2',1,'http://localhost:8080/xiangzhengfuguanli/upload/file.rar','2022-04-09 19:32:39','资料详情2',1,NULL,'2022-04-09 19:32:39'),(3,'资料名称3',2,'http://localhost:8080/xiangzhengfuguanli/upload/file.rar','2022-04-09 19:32:39','资料详情3',1,NULL,'2022-04-09 19:32:39'),(4,'资料名称4',1,'http://localhost:8080/xiangzhengfuguanli/upload/file.rar','2022-04-09 19:32:39','资料详情4',1,NULL,'2022-04-09 19:32:39'),(5,'资料名称5',2,'http://localhost:8080/xiangzhengfuguanli/upload/file.rar','2022-04-09 19:32:39','资料详情5',2,'123','2022-04-09 19:32:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
