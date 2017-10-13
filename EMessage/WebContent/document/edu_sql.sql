-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.19 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 edu_message 的数据库结构
CREATE DATABASE IF NOT EXISTS `edu_message` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `edu_message`;


-- 导出  表 edu_message.edu_eval_task 结构
CREATE TABLE IF NOT EXISTS `edu_eval_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考评ID',
  `teach_id` int(11) NOT NULL COMMENT '老师编号',
  `org_id` int(11) NOT NULL COMMENT '系部编号',
  `eval_start` datetime NOT NULL COMMENT '考评开始时间',
  `eval_end` datetime NOT NULL COMMENT '考评结束时间',
  `step1` varchar(50) NOT NULL COMMENT '考评1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师考评任务表';

-- 正在导出表  edu_message.edu_eval_task 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `edu_eval_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_eval_task` ENABLE KEYS */;


-- 导出  表 edu_message.edu_file 结构
CREATE TABLE IF NOT EXISTS `edu_file` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `fpath` varchar(1000) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `fsize` int(11) NOT NULL DEFAULT '0',
  `msg_id` int(11) DEFAULT NULL,
  `feed_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fid`,`fsize`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- 正在导出表  edu_message.edu_file 的数据：~84 rows (大约)
/*!40000 ALTER TABLE `edu_file` DISABLE KEYS */;
INSERT INTO `edu_file` (`fid`, `fname`, `fpath`, `remark`, `fsize`, `msg_id`, `feed_id`) VALUES
	(7, '西安.txt', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486256788492.txt', NULL, 1166, NULL, NULL),
	(8, '自由上机管理.txt', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486257865820.txt', NULL, 1196, NULL, NULL),
	(9, 'ee.sql', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486258150732.sql', NULL, 1541, NULL, NULL),
	(10, 'ee.sql', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486258225482.sql', NULL, 1541, NULL, NULL),
	(11, 'ee.sql', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486258298173.sql', NULL, 1541, NULL, NULL),
	(12, 'ee.sql', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486258316818.sql', NULL, 1541, NULL, NULL),
	(13, '上机任务打印模版.xlsx', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486258415074.xlsx', NULL, 21585, NULL, NULL),
	(14, 'xh.txt', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486258445883.txt', NULL, 19081, NULL, NULL),
	(15, '年会资料.doc', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486258499593.doc', NULL, 86528, NULL, NULL),
	(16, '现在游戏.txt', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486258576760.txt', NULL, 565, NULL, NULL),
	(17, '2月份阅卷任务.xlsx', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486258655637.xlsx', NULL, 10499, NULL, NULL),
	(18, '现在游戏.txt', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486258722764.txt', NULL, 565, NULL, NULL),
	(19, '现在游戏.txt', 'D:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\EMessage\\savefile\\1486258755894.txt', NULL, 565, NULL, NULL),
	(20, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486280265438.jpg', NULL, 2680, NULL, NULL),
	(21, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486280285686.jpg', NULL, 2680, NULL, NULL),
	(22, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486280877737.jpg', NULL, 2680, NULL, NULL),
	(23, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486281637807.jpg', NULL, 2680, NULL, NULL),
	(24, '5.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486281769329.jpg', NULL, 2473, NULL, NULL),
	(25, '5.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486281868936.jpg', NULL, 2473, NULL, NULL),
	(26, '9.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486281930113.jpg', NULL, 2465, NULL, NULL),
	(27, '5.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486282016881.jpg', NULL, 2473, NULL, NULL),
	(28, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486282039816.jpg', NULL, 2680, NULL, NULL),
	(29, '5.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486282968772.jpg', NULL, 2473, NULL, NULL),
	(30, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486282992953.jpg', NULL, 2680, NULL, NULL),
	(31, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486283219232.jpg', NULL, 2680, NULL, NULL),
	(32, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486283291711.jpg', NULL, 2680, NULL, NULL),
	(33, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486283313819.jpg', NULL, 2680, NULL, NULL),
	(34, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486283909149.jpg', NULL, 2680, NULL, NULL),
	(35, '3.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486283917444.jpg', NULL, 2550, NULL, NULL),
	(36, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486284005274.jpg', NULL, 2680, NULL, NULL),
	(37, '3.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486284011914.jpg', NULL, 2550, NULL, NULL),
	(38, '3.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486284254198.jpg', NULL, 2550, NULL, NULL),
	(39, '4.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486284266271.jpg', NULL, 2402, NULL, NULL),
	(40, '1.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486284674207.jpg', NULL, 2443, NULL, NULL),
	(41, '1.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486284857214.jpg', NULL, 2443, NULL, NULL),
	(42, '5.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486285498357.jpg', NULL, 2473, 17, NULL),
	(43, '3.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486285514369.jpg', NULL, 2550, 17, NULL),
	(44, '5.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486286305792.jpg', NULL, 2473, NULL, NULL),
	(45, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486286313800.jpg', NULL, 2680, NULL, NULL),
	(46, '3.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486286506584.jpg', NULL, 2550, NULL, NULL),
	(47, '8.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486286512792.jpg', NULL, 2506, NULL, NULL),
	(48, '6.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486286802697.jpg', NULL, 2680, NULL, NULL),
	(49, '2.jpg', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486286808527.jpg', NULL, 2867, NULL, NULL),
	(50, 'hello.txt', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486339985384.txt', NULL, 1188, NULL, NULL),
	(51, 'hello.txt', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486339991834.txt', NULL, 1188, NULL, NULL),
	(52, 'wb.txt', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486340003395.txt', NULL, 1197, NULL, NULL),
	(53, 'H5_ZYX.iml', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486340268419.iml', NULL, 296, NULL, NULL),
	(54, 'H5-designMode.html', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486340275671.html', NULL, 1309, NULL, NULL),
	(55, 'wb.txt', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486340457174.txt', NULL, 1197, NULL, NULL),
	(56, 'H5_ZYX.iml', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486340573200.iml', NULL, 296, 21, NULL),
	(57, 'wb.txt', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486340664397.txt', NULL, 1197, 4, NULL),
	(58, 'readText.html', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486340676668.html', NULL, 802, NULL, NULL),
	(59, 'H5_ZYX.iml', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486340893493.iml', NULL, 296, NULL, NULL),
	(60, 'wb.txt', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486340901502.txt', NULL, 1197, NULL, NULL),
	(61, 'hello.txt', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486340916692.txt', NULL, 1188, NULL, NULL),
	(62, 'wc.tab', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486341067563.tab', NULL, 6144, 23, NULL),
	(63, 'a_b.tab', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486341076912.tab', NULL, 6144, 23, NULL),
	(64, 'a_b.tab', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486342031295.tab', NULL, 6144, NULL, NULL),
	(65, 'sqmapi.dll', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486342539047.dll', NULL, 189952, NULL, NULL),
	(66, 'wc.tab', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486343795389.tab', NULL, 6144, NULL, NULL),
	(67, 'a_b.tab', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486343803705.tab', NULL, 6144, NULL, NULL),
	(68, 'wc.tab', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486344354933.tab', NULL, 6144, NULL, NULL),
	(69, 'a_b.tab', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486344361944.tab', NULL, 6144, NULL, NULL),
	(70, 'wc.tab', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486344643272.tab', NULL, 6144, 25, NULL),
	(71, '综合编程题.docx', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486344650360.docx', NULL, 24150, 25, NULL),
	(72, '综合编程题.docx', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486344785391.docx', NULL, 24150, 26, NULL),
	(73, 'wc.tab', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486344791677.tab', NULL, 6144, 26, NULL),
	(74, 'wc.tab', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486348034921.tab', NULL, 6144, 28, NULL),
	(75, 'a_b.tab', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486348041741.tab', NULL, 6144, 28, NULL),
	(76, '综合编程题.docx', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486366974609.docx', NULL, 24150, 5, NULL),
	(77, '综合编程题.docx', 'D:\\workspace_3g4g2015\\.metadata\\.me_tcat\\webapps\\EMessage\\savefile\\1486367032776.docx', NULL, 24150, 29, NULL),
	(78, 'mylog.txt', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486387675233.txt', NULL, 1501, 4, NULL),
	(79, 'mylog.txt', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486389206588.txt', NULL, 1501, NULL, NULL),
	(80, 'mylog.txt', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486389632814.txt', NULL, 1501, NULL, NULL),
	(81, 'mylog.txt', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486389811624.txt', NULL, 1501, NULL, NULL),
	(82, 'mylog.txt', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486390259766.txt', NULL, 1501, NULL, 1),
	(83, 'xianlu.txt', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486444596995.txt', NULL, 36840, NULL, 2),
	(84, 'IMG_20170131_140051.jpg', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486445316307.jpg', NULL, 1591852, NULL, 3),
	(85, '值班考勤.xlsx', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486450971112.xlsx', NULL, 16789, 32, NULL),
	(86, '3期课程修改建议.xlsx', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486485684784.xlsx', NULL, 9999, 33, NULL),
	(87, '学校教学事故认定合订版（讨论稿）.docx', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486485819776.docx', NULL, 17977, 34, NULL),
	(88, '学校教学事故认定合订版（讨论稿）.docx', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486512684809.docx', NULL, 17977, 35, NULL),
	(89, '《JavaScript框架设计》迷你书.pdf', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486529790615.pdf', NULL, 996538, 36, NULL),
	(90, '《JavaScript框架设计》迷你书.pdf', 'D:\\汽院\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EMessage\\savefile\\1486530090752.pdf', NULL, 996538, 38, NULL);
/*!40000 ALTER TABLE `edu_file` ENABLE KEYS */;


-- 导出  表 edu_message.edu_message_feedback 结构
CREATE TABLE IF NOT EXISTS `edu_message_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复ID',
  `push_id` int(11) NOT NULL COMMENT '推送ID',
  `teach_id` int(11) DEFAULT NULL COMMENT '回复教师ID',
  `stu_id` int(11) DEFAULT NULL COMMENT '回复学生ID',
  `fd_date` datetime DEFAULT NULL COMMENT '回复时间',
  `fd_content` varchar(1000) DEFAULT NULL COMMENT '回复内容',
  `fd_attache_path` varchar(5000) DEFAULT NULL COMMENT '回复附件URL（如有多个文件路径用'',''分割）',
  `fd_attache_suffix` varchar(500) DEFAULT NULL COMMENT '附件后缀（如有多个文件后缀用'',''分割）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='消息回复表';

-- 正在导出表  edu_message.edu_message_feedback 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `edu_message_feedback` DISABLE KEYS */;
INSERT INTO `edu_message_feedback` (`id`, `push_id`, `teach_id`, `stu_id`, `fd_date`, `fd_content`, `fd_attache_path`, `fd_attache_suffix`) VALUES
	(1, 5, 1, NULL, '2017-02-06 22:11:28', '测试回复内容', NULL, NULL),
	(2, 4, 65, NULL, '2017-02-07 13:17:28', '体检你在', NULL, NULL),
	(3, 4, 65, NULL, '2017-02-07 13:28:53', '希莫斯婆婆', NULL, NULL);
/*!40000 ALTER TABLE `edu_message_feedback` ENABLE KEYS */;


-- 导出  表 edu_message.edu_message_push 结构
CREATE TABLE IF NOT EXISTS `edu_message_push` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `push_date` timestamp NULL DEFAULT NULL COMMENT '推送时间',
  `push_title` varchar(500) DEFAULT NULL COMMENT '推送标题',
  `push_content` varchar(500) DEFAULT NULL COMMENT '推送内容',
  `push_to` varchar(500) DEFAULT NULL COMMENT '推送给谁',
  `attache_file` varchar(5000) DEFAULT NULL COMMENT '附件文件（如有多个文件路径用''；''分割）',
  `attache_suffix` varchar(500) DEFAULT NULL COMMENT '附件后缀（如有多个文件后缀用''；''分割）',
  `is_feedback` varchar(50) DEFAULT NULL COMMENT '是否需要回复',
  `push_user` char(50) DEFAULT NULL COMMENT '推送人',
  `push_status` char(50) DEFAULT NULL COMMENT '推送状态( 1 = 已推送 ， 2 = 推送失败 , 0 = 未推送）',
  `role_id` int(11) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='消息推送记录表';

-- 正在导出表  edu_message.edu_message_push 的数据：~33 rows (大约)
/*!40000 ALTER TABLE `edu_message_push` DISABLE KEYS */;
INSERT INTO `edu_message_push` (`id`, `push_date`, `push_title`, `push_content`, `push_to`, `attache_file`, `attache_suffix`, `is_feedback`, `push_user`, `push_status`, `role_id`, `org_id`) VALUES
	(4, '2017-02-05 09:50:01', '放假通知', '放假50年', '3', '2.jpg', NULL, '1', '1', NULL, 2, 2),
	(5, '2017-02-05 09:57:45', '122222222222222', '22222222222', '1', '6.jpg', NULL, '1', '3', NULL, 2, 3),
	(6, '2017-02-05 10:56:19', '', '', NULL, '', NULL, '1', '1', NULL, 2, 2),
	(7, '2017-02-05 14:30:55', 'ss', 'ss', NULL, '6.jpg', NULL, '1', '1', NULL, 3, 3),
	(8, '2017-02-05 15:06:47', 'ss', 'ssssss', NULL, '5.jpg', NULL, '1', '1', NULL, 2, 4),
	(9, '2017-02-05 15:07:31', 'd', 'd', NULL, '6.jpg', NULL, '0', '1', NULL, 2, 5),
	(10, '2017-02-05 15:11:49', 'xxx', 'sxxx', NULL, '9.jpg', NULL, '1', '1', NULL, 2, 3),
	(11, '2017-02-05 15:12:44', '666666666666', '6666666666666', NULL, '6.jpg', NULL, NULL, '1', NULL, 2, 5),
	(12, '2017-02-05 15:13:48', 'ss', 'ss', NULL, '9.jpg', NULL, NULL, '1', NULL, 2, 6),
	(13, '2017-02-05 15:16:23', '111111111111111111111', '111111111111111111111111111', NULL, '5.jpg', NULL, NULL, '1', NULL, 2, 6),
	(14, '2017-02-05 15:20:49', 'pp', 'pp', NULL, '6.jpg', NULL, '0', '1', NULL, 2, 3),
	(15, '2017-02-05 15:21:24', 'ss', 'ss', NULL, '9.jpg', NULL, '1', '1', NULL, 2, 4),
	(16, '2017-02-05 16:44:47', '梦梦梦梦', '梦梦梦梦梦', NULL, '3.jpg-4.jpg-', NULL, '1', '1', NULL, 2, 3),
	(17, '2017-02-05 17:27:05', '要', '在', NULL, '6.jpg-2.jpg-', NULL, '0', '1', NULL, 2, 6),
	(18, '2017-02-06 08:14:09', '测试1', '测试1', NULL, 'hello.txt-hello.txt-wb.txt-', NULL, '0', '1', NULL, 2, 5),
	(19, '2017-02-06 08:18:05', '测试2', '测试2', NULL, 'H5_ZYX.iml-H5-designMode.html-', NULL, '0', '1', NULL, 2, 4),
	(20, '2017-02-06 08:21:14', '测试3', '测试3', NULL, '-wb.txt-', NULL, '0', '1', NULL, 2, 4),
	(21, '2017-02-06 08:23:08', '测试4', '测试4', NULL, 'H5_ZYX.iml-', NULL, '0', '1', NULL, 2, 5),
	(22, '2017-02-06 08:24:45', '测试5', '测试5', NULL, 'wb.txt-readText.html-', NULL, '0', '1', NULL, 2, 4),
	(23, '2017-02-06 08:31:21', '测试成功1', '测试成功1', NULL, 'wc.tab-a_b.tab-', NULL, '0', '1', NULL, 2, 6),
	(24, '2017-02-06 09:26:13', '测试成功吧', '测试成功吧', NULL, 'wc.tab-a_b.tab-', NULL, '0', '1', NULL, 2, 4),
	(25, '2017-02-06 09:30:56', '测试成功吧', '测试成功吧', NULL, 'wc.tab-综合编程题.docx-', NULL, '0', '1', NULL, 2, 3),
	(26, '2017-02-06 09:33:16', 'hidden', 'hidden', NULL, '综合编程题.docx-wc.tab-', NULL, '0', '1', NULL, 2, 3),
	(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(28, '2017-02-06 10:27:24', '丝绸', '丝绸', NULL, 'wc.tab-a_b.tab-', NULL, '0', '1', '0', 0, 1),
	(29, '2017-02-06 15:43:55', '4', '3', NULL, '综合编程题.docx-', NULL, '0', '1', '0', 2, 2),
	(32, '2017-02-07 15:03:20', '开学通知', '老师看到就废了看似简单防雷接地索拉卡受打击了', NULL, '值班考勤.xlsx-', NULL, '1', '1', '1', 2, 2),
	(33, '2017-02-08 00:41:28', '开学典礼', '测试附件', NULL, '3期课程修改建议.xlsx-', NULL, NULL, '1', '1', 2, 1),
	(34, '2017-02-08 00:43:42', '收款打款', '塑料袋会计师两地分居', NULL, '学校教学事故认定合订版（讨论稿）.docx-', NULL, NULL, '1', '1', 2, 2),
	(35, '2017-02-08 08:11:28', '收款打款', '阿斯顿发生第三方', NULL, '学校教学事故认定合订版（讨论稿）.docx-', NULL, NULL, '1', '0', 2, 1),
	(36, '2017-02-08 12:56:47', '随时随地', '水电费水电费', NULL, '《JavaScript框架设计》迷你书.pdf-', NULL, NULL, '1', '0', 2, 1),
	(37, '2017-02-08 13:01:03', '水电费水电费', '沙发斯蒂芬是否对', NULL, '', NULL, NULL, '1', '0', 2, 2),
	(38, '2017-02-08 13:01:33', '计划根据韩国', '胜多负少是否', NULL, '《JavaScript框架设计》迷你书.pdf-', NULL, NULL, '1', '0', 2, 1);
/*!40000 ALTER TABLE `edu_message_push` ENABLE KEYS */;


-- 导出  表 edu_message.edu_org 结构
CREATE TABLE IF NOT EXISTS `edu_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组织ID',
  `parent_id` int(11) DEFAULT NULL COMMENT '上级组织结构',
  `org_name` varchar(500) NOT NULL COMMENT '组织结构名称',
  `is_use` int(11) NOT NULL COMMENT '是否删除',
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='学院组织结构表';

-- 正在导出表  edu_message.edu_org 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `edu_org` DISABLE KEYS */;
INSERT INTO `edu_org` (`id`, `parent_id`, `org_name`, `is_use`, `update_date`) VALUES
	(1, 0, '襄阳汽车职业技术学院', 0, '2017-01-16 15:15:55'),
	(2, 1, '教务处', 0, NULL),
	(3, 1, '汽车应用系', 0, NULL),
	(4, 1, '汽车工程系', 0, NULL),
	(5, 1, '机电与电子信息工程系', 0, NULL),
	(6, 1, '经济管理系', 0, NULL),
	(7, 1, '公共课部', 0, NULL),
	(10, 1, '实训中心', 0, NULL),
	(11, 1, '电大教学部', 0, NULL);
/*!40000 ALTER TABLE `edu_org` ENABLE KEYS */;


-- 导出  表 edu_message.edu_push_record 结构
CREATE TABLE IF NOT EXISTS `edu_push_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '推送记录ID',
  `msg_id` int(11) DEFAULT NULL COMMENT '消息ID',
  `org_id` int(11) DEFAULT NULL COMMENT '组织机构ID',
  `push_status` int(11) DEFAULT NULL COMMENT '发送状态：0=在发送， 1=成功，2=失败',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='消息推送记录表';

-- 正在导出表  edu_message.edu_push_record 的数据：~17 rows (大约)
/*!40000 ALTER TABLE `edu_push_record` DISABLE KEYS */;
INSERT INTO `edu_push_record` (`id`, `msg_id`, `org_id`, `push_status`, `update_date`) VALUES
	(1, 10, 2, 0, '2017-02-05 15:11:49'),
	(2, 11, 6, 0, '2017-02-05 15:12:44'),
	(3, 12, 2, 0, '2017-02-05 15:13:48'),
	(4, 13, 5, 0, '2017-02-05 15:16:23'),
	(5, 14, 2, 0, '2017-02-05 15:20:49'),
	(6, 15, 6, 0, '2017-02-05 15:21:24'),
	(7, 16, 5, 0, '2017-02-05 16:44:47'),
	(8, 17, 5, 0, '2017-02-05 17:27:11'),
	(9, 18, 5, 0, '2017-02-06 08:14:13'),
	(10, 19, 3, 0, '2017-02-06 08:18:06'),
	(11, 20, 5, 0, '2017-02-06 08:21:14'),
	(12, 21, 2, 0, '2017-02-06 08:23:08'),
	(13, 22, 5, 0, '2017-02-06 08:24:45'),
	(14, 23, 2, 0, '2017-02-06 08:31:21'),
	(15, 24, 5, 0, '2017-02-06 09:26:20'),
	(16, 25, 6, 0, '2017-02-06 09:30:57'),
	(17, 26, 5, 0, '2017-02-06 09:33:16');
/*!40000 ALTER TABLE `edu_push_record` ENABLE KEYS */;


-- 导出  表 edu_message.edu_role 结构
CREATE TABLE IF NOT EXISTS `edu_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `is_use` int(11) DEFAULT '0' COMMENT '是否在用（0 使用中， 1 删除了）',
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- 正在导出表  edu_message.edu_role 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `edu_role` DISABLE KEYS */;
INSERT INTO `edu_role` (`id`, `role_name`, `is_use`, `update_date`) VALUES
	(0, '师生', 0, '2017-02-06 20:37:31'),
	(1, '管理员', 0, '2017-01-11 17:04:18'),
	(2, '教师', 0, '2017-01-18 16:55:37'),
	(3, '学生', 0, '2017-01-18 16:55:39'),
	(4, '班委', 0, '2017-01-18 16:55:56'),
	(5, '领导', 0, '2017-01-18 16:56:05');
/*!40000 ALTER TABLE `edu_role` ENABLE KEYS */;


-- 导出  表 edu_message.edu_student 结构
CREATE TABLE IF NOT EXISTS `edu_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_no` varchar(50) DEFAULT NULL COMMENT '学号',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `sex` char(2) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `degree` varchar(50) DEFAULT NULL COMMENT '学历',
  `phone_number` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `org_id` int(11) DEFAULT NULL COMMENT '组织机构ID',
  `teacher_id` int(11) DEFAULT NULL COMMENT '班主任ID',
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='学生表';

-- 正在导出表  edu_message.edu_student 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `edu_student` DISABLE KEYS */;
INSERT INTO `edu_student` (`id`, `stu_no`, `name`, `password`, `sex`, `birthday`, `degree`, `phone_number`, `email`, `org_id`, `teacher_id`, `update_date`, `rid`) VALUES
	(3, '1001', '刘菲', '123', '男', '1998-09-09', '本科', '13992877007,liufei@qq.com', NULL, 5, 1, NULL, NULL),
	(4, '1002', '张云晓', '123', '女', '1999-09-09', '本科', '110,hb', NULL, 6, 1, NULL, NULL),
	(5, '1003', '刘亦菲', '123123', '女', '1987-10-09', '本科', '13992877007', 'hboss007@163.com', 1, 3, '2017-01-19 17:07:31', NULL),
	(6, '1004', '张飞2', '321', '男', '1989-07-05', '本科', '13992877999', 'hboss007@163.com', 1, 4, '2017-01-19 16:33:41', NULL),
	(7, '1006', '123', '123', '男', '2017-01-25', '123', '123', '123', 5, 1, '2017-01-19 16:40:21', NULL);
/*!40000 ALTER TABLE `edu_student` ENABLE KEYS */;


-- 导出  表 edu_message.edu_stu_eval 结构
CREATE TABLE IF NOT EXISTS `edu_stu_eval` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评价ID',
  `eval_start_day` date NOT NULL COMMENT '评价开始日期',
  `eval_end_day` date NOT NULL COMMENT '评价结束日期',
  `teach_id` int(11) DEFAULT '0' COMMENT '评价老师ID',
  `eval_subject` varchar(500) DEFAULT '0' COMMENT '评价主题',
  `org_id` int(11) DEFAULT '0' COMMENT '系部ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生评价任务表';

-- 正在导出表  edu_message.edu_stu_eval 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `edu_stu_eval` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_stu_eval` ENABLE KEYS */;


-- 导出  表 edu_message.edu_stu_eval_contents 结构
CREATE TABLE IF NOT EXISTS `edu_stu_eval_contents` (
  `id` int(11) NOT NULL,
  `eval_id` int(11) NOT NULL COMMENT '学生评价任务ID',
  `stu_id` int(11) NOT NULL COMMENT '学生ID',
  `eval_content` varchar(2000) NOT NULL COMMENT '评价内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生评价内容表';

-- 正在导出表  edu_message.edu_stu_eval_contents 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `edu_stu_eval_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_stu_eval_contents` ENABLE KEYS */;


-- 导出  表 edu_message.edu_teachers 结构
CREATE TABLE IF NOT EXISTS `edu_teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_no` varchar(50) DEFAULT NULL COMMENT '工号',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `sex` char(2) DEFAULT NULL COMMENT '性别',
  `birthday` varchar(50) DEFAULT NULL COMMENT '出生日期',
  `degree` varchar(50) DEFAULT NULL COMMENT '学历',
  `position` varchar(50) DEFAULT NULL COMMENT '职称',
  `job` varchar(50) DEFAULT NULL COMMENT '岗位',
  `is_employee` char(50) DEFAULT NULL COMMENT '是否在岗',
  `phone_number` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `org_id` int(11) DEFAULT NULL COMMENT '组织机构ID',
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8 COMMENT='教师表';

-- 正在导出表  edu_message.edu_teachers 的数据：~328 rows (大约)
/*!40000 ALTER TABLE `edu_teachers` DISABLE KEYS */;
INSERT INTO `edu_teachers` (`id`, `emp_no`, `name`, `password`, `sex`, `birthday`, `degree`, `position`, `job`, `is_employee`, `phone_number`, `email`, `org_id`, `update_date`, `rid`) VALUES
	(1, '142', '柴长富', '123456', '男', '1900/1/2', '本科', '', '', '0', '', '', 2, '2017-02-07 14:10:22', 2),
	(2, '006', '熊良猛', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(3, '0411', '雷永强', '123456', '男', '1900/1/2', '本科', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(4, '0412', '何文杰', '123456', '男', '1900/1/2', '本科', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(5, '0413', '王旭冉', '123456', '男', '1900/1/2', '本科', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(6, '108', '包科杰', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(7, '109', '张仕军', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(8, '110', '何晓勇', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(9, '111', '孙莉', '123456', '女', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(10, '112', '秦显峰', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(11, '113', '张劲', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(12, '114', '左小勇', '123456', '男', '1980/10/13', '硕士研究生', '硕士学位', '讲师', '0', '13627198037', '79371059@qq.com', 3, '2017-02-07 14:10:22', 2),
	(13, '115', '贾江波', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(14, '116', '郑文超', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(15, '117', '王勇', '123456', '男', '1966/10/10', '本科', '无', '副教授', '0', '13035230088', '', 3, '2017-02-07 14:10:22', 2),
	(16, '118', '游光师', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(17, '119', '陈明录', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(18, '120', '赵亮', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(19, '226', '孙振勇', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(20, '227', '薛嵘', '123456', '男', '1974/8/14', '本科', '', '工程师', '0', '', '422701530@qq.com', 3, '2017-02-07 14:10:22', 2),
	(21, '228', '崔景', '123456', '女', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(22, '229', '尚宏', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(23, '230', '何世勇', '123456', '男', '1972/7/28', '本科', '硕士学位', '副教授', '0', '13035225457', '2174855@qq.com', 3, '2017-02-07 14:10:22', 2),
	(24, '231', '宋为真', '123456', '女', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(25, '232', '张军建', '123456', '男', '1975/8/6', '本科', '', '副教授', '0', '18371016988', '', 3, '2017-02-07 14:10:22', 2),
	(26, '233', '陈景春', '123456', '女', '1967/3/13', '本科', '学士学位', '副教授', '0', '18071157713', '', 3, '2017-02-07 14:10:22', 2),
	(27, '234', '余宽海', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(28, '235', '魏红品', '123456', '女', '1980/10/4', '本科', '硕士学位', '讲师', '0', '13085281043', '992602394@qq.com', 3, '2017-02-07 14:10:22', 2),
	(29, '236', '刘光明', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(30, '237', '袁静', '123456', '女', '1984/9/12', '本科', '', '助教', '0', '15997286181', '510546057@qq.com', 3, '2017-02-07 14:10:22', 2),
	(31, '238', '胡圆圆', '123456', '女', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(32, '239', '张华勤', '123456', '女', '1976/8/1', '本科', '无', '讲师', '0', '13995747598', '', 3, '2017-02-07 14:10:22', 2),
	(33, '240', '曹园园', '123456', '女', '1984/7/21', '本科', '学士学位', '助教', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(34, '241', '范文静', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(35, '242', '朱文明', '123456', '女', '1900/1/2', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(36, '243', '卢颖', '123456', '女', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(37, '244', '王平', '123456', '女', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(38, '245', '孟凤', '123456', '女', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(39, '246', '刘晓莉', '123456', '女', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(40, '247', '冷鑫', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(41, '248', '王灿', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(42, '249', '张伟', '123456', '男', '1989/1/13', '本科', '学士学位', '助教', '0', '15072261089', '1375561201@qq.com', 3, '2017-02-07 14:10:22', 2),
	(43, '250', '刘美君', '123456', '女', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(44, '251', '段鹏程', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(45, '252', '张静', '123456', '女', '1993/5/9', '', '', '助教', '0', '18872568969', '1184295009@qq.com', 3, '2017-02-07 14:10:22', 2),
	(46, '253', '张梦帆', '123456', '女', '1992/6/6', '本科', '学士学位', '', '0', '611157', '493116012@qq.com', 3, '2017-02-07 14:10:22', 2),
	(47, '254', '李兆平', '123456', '女', '1974/1/15', '本科', '学士学位', '副教授', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(48, '255', '王新芝', '123456', '女', '1967/3/8', '本科', '学士学位', '高级工程师', '0', '15997273907', '1211124405@qq.com', 3, '2017-02-07 14:10:22', 2),
	(49, '256', '程阳', '123456', '女', '1900/1/2', '硕士研究生', '学士学位', '讲师', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(50, '258', '郑梦琪', '123456', '女', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(51, '259', '郭传慧', '123456', '女', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(52, '276', '吴琦', '123456', '男', '', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(53, '375', '张长贵', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(54, '382', '龚银先', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(55, '408', '吕泽群', '123456', '女', '1900/1/2', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(56, '607', '董定强', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(57, '632', '张俊', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(58, '634', '武锐', '123456', '男', '1900/1/2', '硕士研究生', '硕士学位', '工程师', '0', '69008', 'wurui2878@163.com', 3, '2017-02-07 14:10:22', 2),
	(59, '636', '王腊梅', '123456', '女', '1986/11/9', '硕士研究生', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(60, 'CS700', '黄佳', '123456', '女', '1990/11/10', '硕士研究生', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(61, 'CS701', '杨襄渝', '123456', '女', '1991/10/25', '本科', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(62, 'CS702', '谢映', '123456', '女', '1989/10/13', '硕士研究生', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(63, 'CS703', '韩子旭', '123456', '男', '1992/1/18', '本科', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(64, 'CS704', '陈磊', '123456', '男', '1986/1/1', '硕士研究生', '', '', '0', '', '', 3, '2017-02-07 14:10:22', 2),
	(65, '101', '刘甫勇', '123456', '男', '1972/2/26', '本科', '学士学位', '高级讲师', '0', '0710-3063829', '347055962@qq.com', 4, '2017-02-07 14:10:22', 2),
	(66, '102', '胡三强', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(67, '103', '李剑', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(68, '104', '王俊雄', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(69, '105', '郭健青', '123456', '男', '1988/11/9', '本科', '学士学位', '助教', '0', '15090976786', '351900698@qq.com', 4, '2017-02-07 14:10:22', 2),
	(70, '106', '明金山', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(71, '107', '陈俊', '123456', '男', '1986/3/25', '本科', '学士学位', '教师', '0', '15997271115', 'www.316104994@qq.com', 4, '2017-02-07 14:10:22', 2),
	(72, '125', '刘旭光', '123456', '女', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(73, '129', '薛君', '123456', '女', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(74, '200', '刘萍', '123456', '女', '1967/4/21', '本科', '学士学位', '副教授', '0', '13227510518', '472753604@qq.com', 4, '2017-02-07 14:10:22', 2),
	(75, '201', '胡云林', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(76, '202', '冯友田', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(77, '203', '刘忠', '123456', '女', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(78, '204', '马银林', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(79, '205', '朱冬伟', '123456', '女', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(80, '206', '宋爱民', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(81, '207', '张璐', '123456', '女', '', '本科', '学士学位', '讲师', '0', '13995784663', '330408467@qq.com', 4, '2017-02-07 14:10:22', 2),
	(82, '208', '金春', '123456', '男', '1983/1/3', '本科', '学士学位', '讲师', '0', '13217107370', '176782979@qq.com', 4, '2017-02-07 14:10:22', 2),
	(83, '209', '高伶俐', '123456', '女', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(84, '210', '徐家斌', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(85, '211', '李梦飞', '123456', '女', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(86, '212', '叶洪飞', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(87, '213', '徐振', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(88, '214', '杨鹏', '123456', '男', '1992/11/19', '本科', '学士学位', '助教', '0', '', 'yyyn@msn.com', 4, '2017-02-07 14:10:22', 2),
	(89, '215', '张振华', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(90, '216', '覃小航', '123456', '女', '1987/10/24', '本科', '学士学位', '助教', '0', '', '635315059@qq.com', 4, '2017-02-07 14:10:22', 2),
	(91, '217', '韦振玲', '123456', '女', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(92, '218', '李伟新', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(93, '219', '郑芬', '123456', '女', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(94, '220', '姚彬', '123456', '女', '1900/1/2', '', '', '讲师', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(95, '221', '王虹', '123456', '女', '1970/1/25', '本科', '学士学位', '讲师', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(96, '222', '郑颖', '123456', '女', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(97, '223', '陈志华', '123456', '女', '1971/11/25', '硕士研究生', '硕士学位', '副教授', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(98, '224', '张向东', '123456', '女', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(99, '225', '沈战军', '123456', '男', '', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(100, '257', '陶慧', '123456', '女', '1970/6/7', '本科', '无', '讲师', '0', '', '1279757825@qq.com', 4, '2017-02-07 14:10:22', 2),
	(101, '372', '王敏', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(102, '374', '陈爱群', '123456', '女', '1900/1/2', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(103, '376', '王强', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(104, '377', '张家禄', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(105, '380', '方华伟', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(106, '402', '方毅', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(107, '403', '丁洁', '123456', '女', '1900/1/2', '本科', '硕士学位', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(108, '416', '梁敏', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(109, '417', '黄闪闪', '123456', '女', '1900/1/2', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(110, 'CS706', '刘毅', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 4, '2017-02-07 14:10:22', 2),
	(111, 'CS707', '章露露', '123456', '女', '1988/7/27', '硕士研究生', '硕士学位', '', '0', '18872452709', '694766327@qq.com', 4, '2017-02-07 14:10:22', 2),
	(112, '005', '王达文', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(113, '007', '周先进', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(114, '121', '张善群', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(115, '122', '杨胜先', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(116, '123', '卜文刚', '123456', '男', '1981/11/10', '', '硕士学位', '讲师', '0', '13972091822', 'buwengang@foxmail.com', 5, '2017-02-07 14:10:22', 2),
	(117, '124', '陈艺', '123456', '男', '1972/9/22', '本科', '硕士学位', '讲师', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(118, '126', '王勇', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(119, '127', '张霞', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(120, '128', '徐刚', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(121, '130', '程传红', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(122, '131', '胡德洪', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(123, '132', '陈辉', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(124, '133', '吕爱华', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(125, '134', '刘劲', '123456', '男', '1977/4/4', '本科', '学士学位', '讲师', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(126, '135', '刘彦', '123456', '男', '1900/1/2', '硕士研究生', '硕士学位', '讲师', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(127, '136', '孙涛涛', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(128, '137', '焦宇', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(129, '138', '彭晓黎', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(130, '139', '付晓红', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(131, '140', '喻赵敏', '123456', '女', '1900/1/2', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(132, '141', '吴迪', '123456', '男', '1979/5/31', '本科', '', '教员', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(133, '143', '李飞', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(134, '144', '何璐', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(135, '145', '袁芬芬', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(136, '146', '孙旭阳', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(137, '147', '温世军', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(138, '148', '刘毅军', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(139, '175', '崔书太', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(140, '260', '曾晓彤', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(141, '261', '卢斌', '123456', '男', '1962/5/16', '本科', '学士学位', '副教授', '0', '13035207772', '1059951307@qq.com', 5, '2017-02-07 14:10:22', 2),
	(142, '262', '徐强', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(143, '263', '刘跃', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(144, '264', '魏新国', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(145, '265', '郝文莲', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(146, '266', '江薇薇', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(147, '267', '徐莺', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(148, '268', '夏炜', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(149, '269', '李小燕', '123456', '女', '1900/1/2', '本科', '学士学位', '', '0', '18772113557', '42841570@qq.com', 5, '2017-02-07 14:10:22', 2),
	(150, '270', '黄理', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(151, '271', '周凯', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(152, '272', '唐宽芝', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(153, '273', '陈露', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(154, '274', '吴超', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(155, '275', '陈勇', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(156, '277', '杨关全', '123456', '男', '1969/9/24', '本科', '硕士学位', '副教授', '0', '13094134267', '1947913519@qq.com', 5, '2017-02-07 14:10:22', 2),
	(157, '278', '刘红梅', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(158, '279', '冯飞', '123456', '男', '1977/8/4', '本科', '硕士学位', '工程师', '0', '', '549385226@qq.com', 5, '2017-02-07 14:10:22', 2),
	(159, '280', '游志平', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(160, '281', '邹颖', '123456', '女', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(161, '282', '朱辉', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(162, '283', '余世民', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(163, '284', '方勇', '123456', '男', '', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(164, '385', '张美霞', '123456', '女', '1989/6/15', '本科', '学士学位', '助教', '0', '15997173675', '2519367866@qq.com', 5, '2017-02-07 14:10:22', 2),
	(165, '404', '王瑞', '123456', '男', '1900/1/2', '本科', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(166, '405', '廖谦', '123456', '男', '1900/1/2', '本科', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(167, '406', '李静雯', '123456', '女', '1900/1/2', '硕士研究生', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(168, '613', '杨泽忠', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(169, '635', '刘永双', '123456', '女', '1900/1/2', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(170, 'CS705', '方钦骜', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 5, '2017-02-07 14:10:22', 2),
	(171, '008', '吴仲平', '123456', '男', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(172, '0356', '丁克平', '123456', '女', '1979/7/16', '硕士研究生', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(173, '0430', '高捷', '123456', '男', '1968/11/22', '本科', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(174, '0431', '易杰', '123456', '女', '1983/2/2', '本科', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(175, '0489', '王颖坤', '123456', '女', '1984/11/3', '本科', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(176, '0624', '任悦', '123456', '女', '1992/1/26', '本科', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(177, '0629', '郭嫣茹', '123456', '女', '1900/1/2', '本科', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(178, '0630', '付砚然', '123456', '女', '1900/1/2', '本科', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(179, '0638', '张磊', '123456', '女', '1992/9/23', '本科', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(180, '149', '付克强', '123456', '男', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(181, '150', '常俊丽', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(182, '151', '付德波', '123456', '男', '1970/7/4', '本科', '硕士学位', '副教授', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(183, '152', '李海波', '123456', '男', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(184, '153', '马国超', '123456', '男', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(185, '154', '朱成林', '123456', '男', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(186, '155', '李莉', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(187, '156', '杨丹', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(188, '157', '程冬', '123456', '男', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(189, '158', '余萍', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(190, '159', '文劲', '123456', '男', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(191, '160', '傅雨青', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(192, '161', '王文毅', '123456', '男', '1900/1/2', '硕士研究生', '学士学位', '副教授', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(193, '162', '蒋珊', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(194, '163', '高坤', '123456', '男', '1900/1/2', '本科', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(195, '164', '刘习吉', '123456', '男', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(196, '165', '戴斌斌', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(197, '166', '邵敏', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(198, '167', '汤凌云', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(199, '168', '钱泓霏', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(200, '286', '宋青梅', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(201, '287', '王军', '123456', '男', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(202, '288', '周磊', '123456', '男', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(203, '289', '郭北', '123456', '男', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(204, '290', '屈璇', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(205, '291', '张雅彬', '123456', '女', '1982/10/25', '本科', '学士学位', '助教', '0', '', '345059983@qq.com', 6, '2017-02-07 14:10:22', 2),
	(206, '292', '李国彩', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(207, '293', '刘建萍', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(208, '294', '刘辉', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(209, '295', '刘丽丽', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(210, '296', '郭明璐', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(211, '297', '习颖', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(212, '298', '廉婉梦', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(213, '299', '陶红艳', '123456', '女', '', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(214, '300', '熊漳平', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 6, '2017-02-07 14:10:22', 2),
	(215, '003', '管用才', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(216, '004', '张建成', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(217, '0655', '李玲', '123456', '女', '1900/1/2', '本科', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(218, '169', '范汉水', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(219, '170', '石慧', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(220, '171', '陈军', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(221, '172', '涂羽', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(222, '173', '王蕾', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(223, '174', '王国斌', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(224, '176', '付强', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(225, '177', '张显辉', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(226, '178', '谢迎辉', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(227, '179', '王卡明', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(228, '180', '程少钢', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(229, '181', '雷俊杰', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(230, '182', '王明海', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(231, '183', '沈国清', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(232, '184', '朱文', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(233, '185', '陈勃', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(234, '186', '贾志农', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(235, '187', '刘星', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(236, '188', '曹鸿霞', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(237, '189', '刘露', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(238, '190', '王威', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(239, '191', '高珊', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(240, '192', '冷宣强', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(241, '193', '何红霞', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(242, '194', '王飞', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(243, '195', '潘红', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(244, '196', '刘树森', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(245, '197', '王楠', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(246, '198', '李胜邦', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(247, '199', '胡显丽', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(248, '301', '陶纯芝', '123456', '女', '1900/1/2', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(249, '302', '柳树森', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(250, '303', '肖堤', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(251, '304', '袁幼梅', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(252, '305', '赵虹', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(253, '306', '刘慧华', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(254, '307', '付桂芹', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(255, '308', '张晓军', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(256, '309', '徐建立', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(257, '310', '魏汐岑', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(258, '311', '伍先俊', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(259, '312', '朱剑峰', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(260, '313', '朱光恒', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(261, '314', '姜香梅', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(262, '315', '但汉玲', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(263, '316', '黄琳', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(264, '317', '何春莲', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(265, '318', '汪洋', '123456', '男', '1900/1/2', '', '', '', '0', '', '10082220@qq.com', 7, '2017-02-07 14:10:22', 2),
	(266, '319', '何沙', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(267, '320', '李慧', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(268, '321', '阮珍', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(269, '322', '方舒扬', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(270, '324', '陈本才', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(271, '325', '何志超', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(272, '326', '徐红', '123456', '女', '', '', '硕士学位', '副教授', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(273, '327', '聂卉', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(274, '328', '李云友', '123456', '男', '1964/7/28', '本科', '', '高级讲师', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(275, '329', '苏巧君', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(276, '330', '陈悦', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(277, '331', '李端', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(278, '332', '唐金琴', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(279, '333', '陶仕冰', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(280, '334', '刘翠平', '123456', '女', '1965/2/9', '本科', '学士学位', '副教授', '0', '13343570679', '331280424@qq.com', 7, '2017-02-07 14:10:22', 2),
	(281, '335', '肖琼', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(282, '336', '何峰', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(283, '337', '李睿', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(284, '338', '胡月玲', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(285, '339', '姚丽', '123456', '女', '1900/1/2', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(286, '340', '柏杨', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(287, '341', '周书', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(288, '342', '齐莲敏', '123456', '女', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(289, '343', '杜江晖', '123456', '女', '1900/1/2', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(290, '344', '周智庆', '123456', '男', '', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(291, '345', '郭黎', '123456', '女', '1978/4/11', '本科', '学士学位', '讲师', '0', '13995717273', '', 7, '2017-02-07 14:10:22', 2),
	(292, '358', '程洪波', '123456', '女', '1900/1/2', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(293, '414', '沈毅', '123456', '男', '1900/1/2', '本科', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(294, '415', '陶金', '123456', '女', '1990/11/20', '硕士研究生', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(295, '630', '李琳', '123456', '女', '1985/11/1', '硕士研究生', '硕士学位', '教员', '0', '13797731452', '476160637@qq.com', 7, '2017-02-07 14:10:22', 2),
	(296, '631', '童文超', '123456', '男', '1900/1/2', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(297, '633', '刘明霞', '123456', '女', '1900/1/2', '', '', '', '0', '', '', 7, '2017-02-07 14:10:22', 2),
	(298, '355', '叶俊华', '123456', '男', '1973/8/29', '本科', '学士学位', '讲师', '0', '13687283340', '806892428@qq.com', 10, '2017-02-07 14:10:22', 2),
	(299, '346', '彭梅', '123456', '女', '', '', '', '', '0', '', '', 11, '2017-02-07 14:10:22', 2),
	(300, '347', '李飞', '123456', '男', '', '', '', '', '0', '', '', 11, '2017-02-07 14:10:22', 2),
	(301, '348', '杨进', '123456', '男', '', '', '', '', '0', '', '', 11, '2017-02-07 14:10:22', 2),
	(302, '349', '李山英', '123456', '女', '', '', '', '', '0', '', '', 11, '2017-02-07 14:10:22', 2),
	(303, '351', '马义学', '123456', '男', '', '', '', '', '0', '', '', 11, '2017-02-07 14:10:22', 2),
	(304, '352', '刘移', '123456', '女', '', '', '', '', '0', '', '', 11, '2017-02-07 14:10:22', 2),
	(305, '353', '张旭', '123456', '女', '', '', '', '', '0', '', '', 11, '2017-02-07 14:10:22', 2),
	(306, '371', '郑若琼', '123456', '女', '1900/1/2', '', '', '', '0', '', '', 11, '2017-02-07 14:10:22', 2);
/*!40000 ALTER TABLE `edu_teachers` ENABLE KEYS */;


-- 导出  表 edu_message.edu_teach_eval_content 结构
CREATE TABLE IF NOT EXISTS `edu_teach_eval_content` (
  `id` int(11) DEFAULT NULL,
  `teach_id` int(11) DEFAULT NULL COMMENT '教师ID',
  `eval_id` int(11) DEFAULT NULL COMMENT '考评任务ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师考核内容表';

-- 正在导出表  edu_message.edu_teach_eval_content 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `edu_teach_eval_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_teach_eval_content` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
