/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmx5rm4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmx5rm4` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmx5rm4`;

/*Table structure for table `beiwanglu` */

DROP TABLE IF EXISTS `beiwanglu`;

CREATE TABLE `beiwanglu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghu` varchar(200) DEFAULT NULL COMMENT '用户',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `peitu` varchar(200) DEFAULT NULL COMMENT '配图',
  `shixiang` longtext COMMENT '事项',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='备忘录';

/*Data for the table `beiwanglu` */

insert  into `beiwanglu`(`id`,`addtime`,`zhanghao`,`yonghu`,`biaoti`,`peitu`,`shixiang`,`riqi`,`userid`) values (31,'2021-04-21 20:26:21','账号1','用户1','标题1','http://localhost:8080/ssmx5rm4/upload/beiwanglu_peitu1.jpg','事项1','2021-04-21',1),(32,'2021-04-21 20:26:21','账号2','用户2','标题2','http://localhost:8080/ssmx5rm4/upload/beiwanglu_peitu2.jpg','事项2','2021-04-21',2),(33,'2021-04-21 20:26:21','账号3','用户3','标题3','http://localhost:8080/ssmx5rm4/upload/beiwanglu_peitu3.jpg','事项3','2021-04-21',3),(34,'2021-04-21 20:26:21','账号4','用户4','标题4','http://localhost:8080/ssmx5rm4/upload/beiwanglu_peitu4.jpg','事项4','2021-04-21',4),(35,'2021-04-21 20:26:21','账号5','用户5','标题5','http://localhost:8080/ssmx5rm4/upload/beiwanglu_peitu5.jpg','事项5','2021-04-21',5),(36,'2021-04-21 20:26:21','账号6','用户6','标题6','http://localhost:8080/ssmx5rm4/upload/beiwanglu_peitu6.jpg','事项6','2021-04-21',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmx5rm4/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmx5rm4/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmx5rm4/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussxuexiziyuan` */

DROP TABLE IF EXISTS `discussxuexiziyuan`;

CREATE TABLE `discussxuexiziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='学习资源评论表';

/*Data for the table `discussxuexiziyuan` */

insert  into `discussxuexiziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-04-21 20:26:21',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-04-21 20:26:21',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-04-21 20:26:21',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-04-21 20:26:21',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-04-21 20:26:21',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-04-21 20:26:21',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='论坛交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (61,'2021-04-21 20:26:21','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-04-21 20:26:21','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-04-21 20:26:21','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-04-21 20:26:21','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-04-21 20:26:21','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-04-21 20:26:21','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `meiridaka` */

DROP TABLE IF EXISTS `meiridaka`;

CREATE TABLE `meiridaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghu` varchar(200) DEFAULT NULL COMMENT '用户',
  `daka` varchar(200) DEFAULT NULL COMMENT '打卡',
  `dongtai` longtext COMMENT '动态',
  `peitu` varchar(200) DEFAULT NULL COMMENT '配图',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='每日打卡';

/*Data for the table `meiridaka` */

insert  into `meiridaka`(`id`,`addtime`,`zhanghao`,`yonghu`,`daka`,`dongtai`,`peitu`,`shijian`,`userid`) values (21,'2021-04-21 20:26:21','账号1','用户1','签到','动态1','http://localhost:8080/ssmx5rm4/upload/meiridaka_peitu1.jpg','2021-04-21 20:26:21',1),(22,'2021-04-21 20:26:21','账号2','用户2','签到','动态2','http://localhost:8080/ssmx5rm4/upload/meiridaka_peitu2.jpg','2021-04-21 20:26:21',2),(23,'2021-04-21 20:26:21','账号3','用户3','签到','动态3','http://localhost:8080/ssmx5rm4/upload/meiridaka_peitu3.jpg','2021-04-21 20:26:21',3),(24,'2021-04-21 20:26:21','账号4','用户4','签到','动态4','http://localhost:8080/ssmx5rm4/upload/meiridaka_peitu4.jpg','2021-04-21 20:26:21',4),(25,'2021-04-21 20:26:21','账号5','用户5','签到','动态5','http://localhost:8080/ssmx5rm4/upload/meiridaka_peitu5.jpg','2021-04-21 20:26:21',5),(26,'2021-04-21 20:26:21','账号6','用户6','签到','动态6','http://localhost:8080/ssmx5rm4/upload/meiridaka_peitu6.jpg','2021-04-21 20:26:21',6);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='网站资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-04-21 20:26:21','标题1','简介1','http://localhost:8080/ssmx5rm4/upload/news_picture1.jpg','内容1'),(82,'2021-04-21 20:26:21','标题2','简介2','http://localhost:8080/ssmx5rm4/upload/news_picture2.jpg','内容2'),(83,'2021-04-21 20:26:21','标题3','简介3','http://localhost:8080/ssmx5rm4/upload/news_picture3.jpg','内容3'),(84,'2021-04-21 20:26:21','标题4','简介4','http://localhost:8080/ssmx5rm4/upload/news_picture4.jpg','内容4'),(85,'2021-04-21 20:26:21','标题5','简介5','http://localhost:8080/ssmx5rm4/upload/news_picture5.jpg','内容5'),(86,'2021-04-21 20:26:21','标题6','简介6','http://localhost:8080/ssmx5rm4/upload/news_picture6.jpg','内容6');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-21 20:26:21');

/*Table structure for table `xuexijihua` */

DROP TABLE IF EXISTS `xuexijihua`;

CREATE TABLE `xuexijihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghu` varchar(200) DEFAULT NULL COMMENT '用户',
  `xueximubiao` varchar(200) DEFAULT NULL COMMENT '学习目标',
  `xuexineirong` longtext COMMENT '学习内容',
  `xuexibiao` varchar(200) DEFAULT NULL COMMENT '学习表',
  `qishiriqi` date DEFAULT NULL COMMENT '起始日期',
  `jieshuriqi` date DEFAULT NULL COMMENT '结束日期',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='学习计划';

/*Data for the table `xuexijihua` */

insert  into `xuexijihua`(`id`,`addtime`,`zhanghao`,`yonghu`,`xueximubiao`,`xuexineirong`,`xuexibiao`,`qishiriqi`,`jieshuriqi`,`userid`) values (41,'2021-04-21 20:26:21','账号1','用户1','学习目标1','学习内容1','http://localhost:8080/ssmx5rm4/upload/xuexijihua_xuexibiao1.jpg','2021-04-21','2021-04-21',1),(42,'2021-04-21 20:26:21','账号2','用户2','学习目标2','学习内容2','http://localhost:8080/ssmx5rm4/upload/xuexijihua_xuexibiao2.jpg','2021-04-21','2021-04-21',2),(43,'2021-04-21 20:26:21','账号3','用户3','学习目标3','学习内容3','http://localhost:8080/ssmx5rm4/upload/xuexijihua_xuexibiao3.jpg','2021-04-21','2021-04-21',3),(44,'2021-04-21 20:26:21','账号4','用户4','学习目标4','学习内容4','http://localhost:8080/ssmx5rm4/upload/xuexijihua_xuexibiao4.jpg','2021-04-21','2021-04-21',4),(45,'2021-04-21 20:26:21','账号5','用户5','学习目标5','学习内容5','http://localhost:8080/ssmx5rm4/upload/xuexijihua_xuexibiao5.jpg','2021-04-21','2021-04-21',5),(46,'2021-04-21 20:26:21','账号6','用户6','学习目标6','学习内容6','http://localhost:8080/ssmx5rm4/upload/xuexijihua_xuexibiao6.jpg','2021-04-21','2021-04-21',6);

/*Table structure for table `xuexiziyuan` */

DROP TABLE IF EXISTS `xuexiziyuan`;

CREATE TABLE `xuexiziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `peitu` varchar(200) DEFAULT NULL COMMENT '配图',
  `shipinxuexi` varchar(200) DEFAULT NULL COMMENT '视频学习',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='学习资源';

/*Data for the table `xuexiziyuan` */

insert  into `xuexiziyuan`(`id`,`addtime`,`biaoti`,`jianjie`,`peitu`,`shipinxuexi`,`thumbsupnum`,`crazilynum`,`userid`) values (51,'2021-04-21 20:26:21','标题1','简介1','http://localhost:8080/ssmx5rm4/upload/xuexiziyuan_peitu1.jpg','',1,1,1),(52,'2021-04-21 20:26:21','标题2','简介2','http://localhost:8080/ssmx5rm4/upload/xuexiziyuan_peitu2.jpg','',2,2,2),(53,'2021-04-21 20:26:21','标题3','简介3','http://localhost:8080/ssmx5rm4/upload/xuexiziyuan_peitu3.jpg','',3,3,3),(54,'2021-04-21 20:26:21','标题4','简介4','http://localhost:8080/ssmx5rm4/upload/xuexiziyuan_peitu4.jpg','',4,4,4),(55,'2021-04-21 20:26:21','标题5','简介5','http://localhost:8080/ssmx5rm4/upload/xuexiziyuan_peitu5.jpg','',5,5,5),(56,'2021-04-21 20:26:21','标题6','简介6','http://localhost:8080/ssmx5rm4/upload/xuexiziyuan_peitu6.jpg','',6,6,6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghu` varchar(200) NOT NULL COMMENT '用户',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghu`,`nianling`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-04-21 20:26:21','用户1','123456','用户1',1,'男','13823888881','773890001@qq.com','http://localhost:8080/ssmx5rm4/upload/yonghu_touxiang1.jpg'),(12,'2021-04-21 20:26:21','用户2','123456','用户2',2,'男','13823888882','773890002@qq.com','http://localhost:8080/ssmx5rm4/upload/yonghu_touxiang2.jpg'),(13,'2021-04-21 20:26:21','用户3','123456','用户3',3,'男','13823888883','773890003@qq.com','http://localhost:8080/ssmx5rm4/upload/yonghu_touxiang3.jpg'),(14,'2021-04-21 20:26:21','用户4','123456','用户4',4,'男','13823888884','773890004@qq.com','http://localhost:8080/ssmx5rm4/upload/yonghu_touxiang4.jpg'),(15,'2021-04-21 20:26:21','用户5','123456','用户5',5,'男','13823888885','773890005@qq.com','http://localhost:8080/ssmx5rm4/upload/yonghu_touxiang5.jpg'),(16,'2021-04-21 20:26:21','用户6','123456','用户6',6,'男','13823888886','773890006@qq.com','http://localhost:8080/ssmx5rm4/upload/yonghu_touxiang6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
