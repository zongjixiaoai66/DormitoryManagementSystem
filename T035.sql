/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t035`;
CREATE DATABASE IF NOT EXISTS `t035` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t035`;

DROP TABLE IF EXISTS `chuangweianpai`;
CREATE TABLE IF NOT EXISTS `chuangweianpai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616252384295 DEFAULT CHARSET=utf8mb3 COMMENT='床位安排';

DELETE FROM `chuangweianpai`;
INSERT INTO `chuangweianpai` (`id`, `addtime`, `bianhao`, `xuehao`, `xingming`, `xingbie`, `fangjianhao`, `chuangweihao`, `sfsh`, `shhf`) VALUES
	(101, '2021-03-20 14:53:25', '编号1', '学号1', '姓名1', '性别1', '房间号1', '床位号1', '是', ''),
	(102, '2021-03-20 14:53:25', '编号2', '学号2', '姓名2', '性别2', '房间号2', '床位号2', '是', ''),
	(103, '2021-03-20 14:53:25', '编号3', '学号3', '姓名3', '性别3', '房间号3', '床位号3', '是', ''),
	(104, '2021-03-20 14:53:25', '编号4', '学号4', '姓名4', '性别4', '房间号4', '床位号4', '是', ''),
	(105, '2021-03-20 14:53:25', '编号5', '学号5', '姓名5', '性别5', '房间号5', '床位号5', '是', ''),
	(106, '2021-03-20 14:53:25', '编号6', '学号6', '姓名6', '性别6', '房间号6', '床位号6', '是', ''),
	(1616252321816, '2021-03-20 14:58:41', '1616252295516', '001', '零一', '男', '501', '2号床', '是', NULL),
	(1616252384294, '2021-03-20 14:59:43', '1616252376637', '001', '零一', '男', '501', '3号', '否', '安排床位了');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboott7kpr/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboott7kpr/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboott7kpr/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `gongyuzichan`;
CREATE TABLE IF NOT EXISTS `gongyuzichan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `gudingzichan` varchar(200) DEFAULT NULL COMMENT '固定资产',
  `goururiqi` date DEFAULT NULL COMMENT '购入日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616252226383 DEFAULT CHARSET=utf8mb3 COMMENT='公寓资产';

DELETE FROM `gongyuzichan`;
INSERT INTO `gongyuzichan` (`id`, `addtime`, `bianhao`, `fangjianhao`, `zichanmingcheng`, `gudingzichan`, `goururiqi`, `gonghao`, `xingming`, `beizhu`) VALUES
	(41, '2021-03-20 14:53:25', '编号1', '房间号1', '资产名称1', '固定资产1', '2021-03-20', '工号1', '姓名1', '备注1'),
	(42, '2021-03-20 14:53:25', '编号2', '房间号2', '资产名称2', '固定资产2', '2021-03-20', '工号2', '姓名2', '备注2'),
	(43, '2021-03-20 14:53:25', '编号3', '房间号3', '资产名称3', '固定资产3', '2021-03-20', '工号3', '姓名3', '备注3'),
	(44, '2021-03-20 14:53:25', '编号4', '房间号4', '资产名称4', '固定资产4', '2021-03-20', '工号4', '姓名4', '备注4'),
	(45, '2021-03-20 14:53:25', '编号5', '房间号5', '资产名称5', '固定资产5', '2021-03-20', '工号5', '姓名5', '备注5'),
	(46, '2021-03-20 14:53:25', '编号6', '房间号6', '资产名称6', '固定资产6', '2021-03-20', '工号6', '姓名6', '备注6'),
	(1616252226382, '2021-03-20 14:57:05', '1616252208854', '501', '电脑桌', '电脑桌', '2021-03-01', '100', '宿一', NULL);

DROP TABLE IF EXISTS `jiaofeixinxi`;
CREATE TABLE IF NOT EXISTS `jiaofeixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhusufeiyong` int DEFAULT NULL COMMENT '住宿费用',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `jiaofeiriqi` date DEFAULT NULL COMMENT '缴费日期',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616252283775 DEFAULT CHARSET=utf8mb3 COMMENT='缴费信息';

DELETE FROM `jiaofeixinxi`;
INSERT INTO `jiaofeixinxi` (`id`, `addtime`, `bianhao`, `xuehao`, `xingming`, `zhusufeiyong`, `fabushijian`, `jiaofeiriqi`, `clicknum`) VALUES
	(71, '2021-03-20 14:53:25', '编号1', '学号1', '姓名1', 1, '2021-03-20', '2021-03-20', 1),
	(72, '2021-03-20 14:53:25', '编号2', '学号2', '姓名2', 2, '2021-03-20', '2021-03-20', 4),
	(73, '2021-03-20 14:53:25', '编号3', '学号3', '姓名3', 3, '2021-03-20', '2021-03-20', 3),
	(74, '2021-03-20 14:53:25', '编号4', '学号4', '姓名4', 4, '2021-03-20', '2021-03-20', 4),
	(75, '2021-03-20 14:53:25', '编号5', '学号5', '姓名5', 5, '2021-03-20', '2021-03-20', 5),
	(76, '2021-03-20 14:53:25', '编号6', '学号6', '姓名6', 6, '2021-03-20', '2021-03-20', 6),
	(1616252283774, '2021-03-20 14:58:03', '1616252267502', '001', '零一', 1200, '2021-03-01', '2021-03-11', 1);

DROP TABLE IF EXISTS `qingligonggongchangsuo`;
CREATE TABLE IF NOT EXISTS `qingligonggongchangsuo` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `qinglishijian` date DEFAULT NULL COMMENT '清理时间',
  `qinglididian` varchar(200) DEFAULT NULL COMMENT '清理地点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616252206977 DEFAULT CHARSET=utf8mb3 COMMENT='清理公共场所';

DELETE FROM `qingligonggongchangsuo`;
INSERT INTO `qingligonggongchangsuo` (`id`, `addtime`, `xuehao`, `xingming`, `qinglishijian`, `qinglididian`) VALUES
	(81, '2021-03-20 14:53:25', '学号1', '姓名1', '2021-03-20', '清理地点1'),
	(82, '2021-03-20 14:53:25', '学号2', '姓名2', '2021-03-20', '清理地点2'),
	(83, '2021-03-20 14:53:25', '学号3', '姓名3', '2021-03-20', '清理地点3'),
	(84, '2021-03-20 14:53:25', '学号4', '姓名4', '2021-03-20', '清理地点4'),
	(85, '2021-03-20 14:53:25', '学号5', '姓名5', '2021-03-20', '清理地点5'),
	(86, '2021-03-20 14:53:25', '学号6', '姓名6', '2021-03-20', '清理地点6'),
	(1616252206976, '2021-03-20 14:56:46', '001', '零一', '2021-03-02', '食堂');

DROP TABLE IF EXISTS `richangshiwu`;
CREATE TABLE IF NOT EXISTS `richangshiwu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `jiafenshixiang` varchar(200) DEFAULT NULL COMMENT '加分事项',
  `pingfenbiaozhun` varchar(200) DEFAULT NULL COMMENT '评分标准',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616252194799 DEFAULT CHARSET=utf8mb3 COMMENT='日常事物';

DELETE FROM `richangshiwu`;
INSERT INTO `richangshiwu` (`id`, `addtime`, `bianhao`, `xuehao`, `xingming`, `biaoti`, `neirong`, `shijian`, `jiafenshixiang`, `pingfenbiaozhun`, `beizhu`) VALUES
	(91, '2021-03-20 14:53:25', '编号1', '学号1', '姓名1', '标题1', '内容1', '2021-03-20', '加分事项1', '评分标准1', '备注1'),
	(92, '2021-03-20 14:53:25', '编号2', '学号2', '姓名2', '标题2', '内容2', '2021-03-20', '加分事项2', '评分标准2', '备注2'),
	(93, '2021-03-20 14:53:25', '编号3', '学号3', '姓名3', '标题3', '内容3', '2021-03-20', '加分事项3', '评分标准3', '备注3'),
	(94, '2021-03-20 14:53:25', '编号4', '学号4', '姓名4', '标题4', '内容4', '2021-03-20', '加分事项4', '评分标准4', '备注4'),
	(95, '2021-03-20 14:53:25', '编号5', '学号5', '姓名5', '标题5', '内容5', '2021-03-20', '加分事项5', '评分标准5', '备注5'),
	(96, '2021-03-20 14:53:25', '编号6', '学号6', '姓名6', '标题6', '内容6', '2021-03-20', '加分事项6', '评分标准6', '备注6'),
	(1616252194798, '2021-03-20 14:56:34', '1616252154732', '001', '宿一', '卫生清洁', '<p>卫生清洁</p>', '2021-03-02', '卫生清洁', '卫生评分标准', NULL);

DROP TABLE IF EXISTS `suguanyuan`;
CREATE TABLE IF NOT EXISTS `suguanyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616252099083 DEFAULT CHARSET=utf8mb3 COMMENT='宿管员';

DELETE FROM `suguanyuan`;
INSERT INTO `suguanyuan` (`id`, `addtime`, `gonghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `zhaopian`) VALUES
	(21, '2021-03-20 14:53:25', '宿管员1', '123456', '姓名1', '男', '13823888881', '邮箱1', 'http://localhost:8080/springboott7kpr/upload/suguanyuan_zhaopian1.jpg'),
	(22, '2021-03-20 14:53:25', '宿管员2', '123456', '姓名2', '男', '13823888882', '邮箱2', 'http://localhost:8080/springboott7kpr/upload/suguanyuan_zhaopian2.jpg'),
	(23, '2021-03-20 14:53:25', '宿管员3', '123456', '姓名3', '男', '13823888883', '邮箱3', 'http://localhost:8080/springboott7kpr/upload/suguanyuan_zhaopian3.jpg'),
	(24, '2021-03-20 14:53:25', '宿管员4', '123456', '姓名4', '男', '13823888884', '邮箱4', 'http://localhost:8080/springboott7kpr/upload/suguanyuan_zhaopian4.jpg'),
	(25, '2021-03-20 14:53:25', '宿管员5', '123456', '姓名5', '男', '13823888885', '邮箱5', 'http://localhost:8080/springboott7kpr/upload/suguanyuan_zhaopian5.jpg'),
	(26, '2021-03-20 14:53:25', '宿管员6', '123456', '姓名6', '男', '13823888886', '邮箱6', 'http://localhost:8080/springboott7kpr/upload/suguanyuan_zhaopian6.jpg'),
	(1616252099082, '2021-03-20 14:54:59', '100', '100', '宿一', NULL, '15236985236', '100@qq.com', NULL);

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1616252099082, '100', 'suguanyuan', '宿管员', 'zl119w5btl78cus7papvctjpvn3hkfu5', '2021-03-20 14:55:05', '2021-03-20 16:00:31'),
	(2, 1616252081495, '001', 'xuesheng', '学生', '6ihpi31motilzenmsdixp3ge9wbxbtnl', '2021-03-20 14:58:59', '2021-03-20 16:00:57'),
	(3, 1, 'admin', 'users', '管理员', 'wnhuszhaxaco8ycsnzcy4gor3pkoarho', '2024-01-09 01:12:24', '2024-01-09 02:15:59'),
	(4, 11, '学生1', 'xuesheng', '学生', 'qa67pn3qyhzpqk93bdheqghptm67fa3l', '2024-01-09 01:14:15', '2024-01-09 02:16:35'),
	(5, 21, '宿管员1', 'suguanyuan', '宿管员', 'xgd5bwpnwbqas25hn6oxz4r7a50rdmku', '2024-01-09 01:15:11', '2024-01-09 02:17:19');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-03-20 14:53:25');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616252081496 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xuehao`, `mima`, `xingming`, `xingbie`, `zhaopian`, `dianhuahaoma`, `youxiang`) VALUES
	(11, '2021-03-20 14:53:25', '学生1', '123456', '姓名1', '男', 'http://localhost:8080/springboott7kpr/upload/xuesheng_zhaopian1.jpg', '13823888881', '773890001@qq.com'),
	(12, '2021-03-20 14:53:25', '学生2', '123456', '姓名2', '男', 'http://localhost:8080/springboott7kpr/upload/xuesheng_zhaopian2.jpg', '13823888882', '773890002@qq.com'),
	(13, '2021-03-20 14:53:25', '学生3', '123456', '姓名3', '男', 'http://localhost:8080/springboott7kpr/upload/xuesheng_zhaopian3.jpg', '13823888883', '773890003@qq.com'),
	(14, '2021-03-20 14:53:25', '学生4', '123456', '姓名4', '男', 'http://localhost:8080/springboott7kpr/upload/xuesheng_zhaopian4.jpg', '13823888884', '773890004@qq.com'),
	(15, '2021-03-20 14:53:25', '学生5', '123456', '姓名5', '男', 'http://localhost:8080/springboott7kpr/upload/xuesheng_zhaopian5.jpg', '13823888885', '773890005@qq.com'),
	(16, '2021-03-20 14:53:25', '学生6', '123456', '姓名6', '男', 'http://localhost:8080/springboott7kpr/upload/xuesheng_zhaopian6.jpg', '13823888886', '773890006@qq.com'),
	(1616252081495, '2021-03-20 14:54:41', '001', '01', '零一', '男', 'http://localhost:8080/springboott7kpr/upload/1616252118783.jpg', '13852369853', '001@qq.com');

DROP TABLE IF EXISTS `xueshengxinxi`;
CREATE TABLE IF NOT EXISTS `xueshengxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `fangjianhao` int DEFAULT NULL COMMENT '房间号',
  `chuangwei` varchar(200) DEFAULT NULL COMMENT '床位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616252152165 DEFAULT CHARSET=utf8mb3 COMMENT='学生信息';

DELETE FROM `xueshengxinxi`;
INSERT INTO `xueshengxinxi` (`id`, `addtime`, `xuehao`, `xingming`, `xingbie`, `dianhuahaoma`, `fangjianhao`, `chuangwei`) VALUES
	(31, '2021-03-20 14:53:25', '学号1', '姓名1', '性别1', '电话号码1', 1, '床位1'),
	(32, '2021-03-20 14:53:25', '学号2', '姓名2', '性别2', '电话号码2', 2, '床位2'),
	(33, '2021-03-20 14:53:25', '学号3', '姓名3', '性别3', '电话号码3', 3, '床位3'),
	(34, '2021-03-20 14:53:25', '学号4', '姓名4', '性别4', '电话号码4', 4, '床位4'),
	(35, '2021-03-20 14:53:25', '学号5', '姓名5', '性别5', '电话号码5', 5, '床位5'),
	(36, '2021-03-20 14:53:25', '学号6', '姓名6', '性别6', '电话号码6', 6, '床位6'),
	(1616252152164, '2021-03-20 14:55:51', '001', '零一', '男', '13852369852', 501, '一号');

DROP TABLE IF EXISTS `zichansunhuai`;
CREATE TABLE IF NOT EXISTS `zichansunhuai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `sunhuaiqingkuang` varchar(200) DEFAULT NULL COMMENT '损坏情况',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616252242978 DEFAULT CHARSET=utf8mb3 COMMENT='资产损坏';

DELETE FROM `zichansunhuai`;
INSERT INTO `zichansunhuai` (`id`, `addtime`, `bianhao`, `fangjianhao`, `zichanmingcheng`, `leixing`, `sunhuaiqingkuang`) VALUES
	(51, '2021-03-20 14:53:25', '编号1', '房间号1', '资产名称1', '类型1', '损坏情况1'),
	(52, '2021-03-20 14:53:25', '编号2', '房间号2', '资产名称2', '类型2', '损坏情况2'),
	(53, '2021-03-20 14:53:25', '编号3', '房间号3', '资产名称3', '类型3', '损坏情况3'),
	(54, '2021-03-20 14:53:25', '编号4', '房间号4', '资产名称4', '类型4', '损坏情况4'),
	(55, '2021-03-20 14:53:25', '编号5', '房间号5', '资产名称5', '类型5', '损坏情况5'),
	(56, '2021-03-20 14:53:25', '编号6', '房间号6', '资产名称6', '类型6', '损坏情况6'),
	(1616252242977, '2021-03-20 14:57:22', '1616252208854', '501', '电脑桌', '家具', '桌角损坏');

DROP TABLE IF EXISTS `zichanxinzeng`;
CREATE TABLE IF NOT EXISTS `zichanxinzeng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616252256662 DEFAULT CHARSET=utf8mb3 COMMENT='资产新增';

DELETE FROM `zichanxinzeng`;
INSERT INTO `zichanxinzeng` (`id`, `addtime`, `bianhao`, `fangjianhao`, `mingcheng`, `leixing`, `beizhu`) VALUES
	(61, '2021-03-20 14:53:25', '编号1', '房间号1', '名称1', '类型1', '备注1'),
	(62, '2021-03-20 14:53:25', '编号2', '房间号2', '名称2', '类型2', '备注2'),
	(63, '2021-03-20 14:53:25', '编号3', '房间号3', '名称3', '类型3', '备注3'),
	(64, '2021-03-20 14:53:25', '编号4', '房间号4', '名称4', '类型4', '备注4'),
	(65, '2021-03-20 14:53:25', '编号5', '房间号5', '名称5', '类型5', '备注5'),
	(66, '2021-03-20 14:53:25', '编号6', '房间号6', '名称6', '类型6', '备注6'),
	(1616252256661, '2021-03-20 14:57:35', '1616252208854', '501', '电脑椅', '家具', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
