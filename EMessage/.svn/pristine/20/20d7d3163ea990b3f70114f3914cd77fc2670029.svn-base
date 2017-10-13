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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息回复表';

-- 正在导出表  edu_message.edu_message_feedback 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `edu_message_feedback` DISABLE KEYS */;
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
  `is_feedback` char(50) DEFAULT NULL COMMENT '是否需要回复',
  `push_user` char(50) DEFAULT NULL COMMENT '推送人',
  `push_status` char(50) DEFAULT NULL COMMENT '推送状态( 1 = 已推送 ， 2 = 推送失败 , 0 = 未推送）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息推送记录表';

-- 正在导出表  edu_message.edu_message_push 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `edu_message_push` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_message_push` ENABLE KEYS */;


-- 导出  表 edu_message.edu_org 结构
CREATE TABLE IF NOT EXISTS `edu_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组织ID',
  `parent_id` int(11) DEFAULT NULL COMMENT '上级组织结构',
  `org_name` varchar(500) NOT NULL COMMENT '组织结构名称',
  `is_use` int(11) NOT NULL COMMENT '是否删除',
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学院组织结构表';

-- 正在导出表  edu_message.edu_org 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `edu_org` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_org` ENABLE KEYS */;


-- 导出  表 edu_message.edu_role 结构
CREATE TABLE IF NOT EXISTS `edu_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `is_use` int(11) DEFAULT '0' COMMENT '是否在用（0 使用中， 1 删除了）',
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- 正在导出表  edu_message.edu_role 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `edu_role` DISABLE KEYS */;
INSERT INTO `edu_role` (`id`, `role_name`, `is_use`, `update_date`) VALUES
	(1, '管理员', 0, '2017-01-11 17:04:18'),
	(2, '讲师', 0, '2017-01-11 17:04:42'),
	(3, '学生', 0, '2017-01-11 17:04:58'),
	(4, '领导', 0, '2017-01-11 17:05:18');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='学生表';

-- 正在导出表  edu_message.edu_student 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `edu_student` DISABLE KEYS */;
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
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `degree` varchar(50) DEFAULT NULL COMMENT '学历',
  `position` varchar(50) DEFAULT NULL COMMENT '职称',
  `job` varchar(50) DEFAULT NULL COMMENT '岗位',
  `is_employee` char(50) DEFAULT NULL COMMENT '是否在岗',
  `phone_number` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `org_id` int(11) DEFAULT NULL COMMENT '组织机构ID',
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='教师表';

-- 正在导出表  edu_message.edu_teachers 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `edu_teachers` DISABLE KEYS */;
INSERT INTO `edu_teachers` (`id`, `emp_no`, `name`, `password`, `sex`, `birthday`, `degree`, `position`, `job`, `is_employee`, `phone_number`, `email`, `org_id`, `update_date`) VALUES
	(1, '101', '刘甫勇', '123456', '男', '1972-02-26', '本科', '高级讲师', NULL, '1', '13627198037', NULL, NULL, '2017-01-11 16:39:46');
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
alter table edu_teachers add  rid int(11);
alter table edu_student  add  rid int(11);