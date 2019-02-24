/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.28 : Database - security
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`security` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `security`;

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '资源名称',
  `code` varchar(30) DEFAULT NULL COMMENT '权限字符串',
  `type` int(11) DEFAULT NULL COMMENT '资源类型',
  `url` varchar(30) DEFAULT NULL COMMENT 'url',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `permission` */

insert  into `permission`(`id`,`name`,`code`,`type`,`url`,`sort`,`pid`) values (1,'个人中心','UserIndex',NULL,'/user/index.html',NULL,NULL),(2,'图书列表','BookList',NULL,'/book/list',NULL,NULL),(3,'添加图书','BookAdd',NULL,'/book/add',NULL,NULL),(4,'查看图书','BookDetail',NULL,'/book/detail',NULL,NULL);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rodename` varchar(20) DEFAULT NULL,
  `rodecode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`rodename`,`rodecode`) values (1,'管理员','ADMIN'),(2,'开发者','DEVELOPER');

/*Table structure for table `role_permiss` */

DROP TABLE IF EXISTS `role_permiss`;

CREATE TABLE `role_permiss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `permisid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `role_permiss` */

insert  into `role_permiss`(`id`,`roleid`,`permisid`) values (1,1,1),(2,1,2),(3,1,3),(4,1,4),(8,2,4);

/*Table structure for table `sysuser` */

DROP TABLE IF EXISTS `sysuser`;

CREATE TABLE `sysuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `sysuser` */

insert  into `sysuser`(`id`,`username`,`password`) values (1,'zhangsan','$2a$12$5vBtv/o7zUZ/e3mVO.xPL.JgTdTKheFB6IiEaFDWYc/hX4hAShMfC'),(2,'lisi','$2a$12$5vBtv/o7zUZ/e3mVO.xPL.JgTdTKheFB6IiEaFDWYc/hX4hAShMfC');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`id`,`userid`,`roleid`) values (1,1,1),(2,2,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
