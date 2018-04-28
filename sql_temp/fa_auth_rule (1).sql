-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 04 月 28 日 12:32
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `admin`
--

-- --------------------------------------------------------

--
-- 表的结构 `fa_auth_rule`
--

CREATE TABLE IF NOT EXISTS `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表' AUTO_INCREMENT=123 ;

--
-- 转存表中的数据 `fa_auth_rule`
--

INSERT INTO `fa_auth_rule` (`id`, `type`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `ismenu`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 'menu', 0, '/adm', '资讯管理', '&#xe616', '', '', 0, 0, 0, 0, 'normal'),
(85, 'menu', 1, 'article-list.html', '资讯管理', '', '', '', 0, 0, 0, 0, 'normal'),
(86, 'menu', 0, '', '图片管理', '&#xe613', '', '', 0, 0, 0, 0, 'normal'),
(89, 'menu', 86, '87', '图片管理', '', '', '', 0, 0, 0, 0, 'normal'),
(90, 'menu', 0, '产品管理0', '产品管理', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(91, 'menu', 90, '品牌管理1', '品牌管理', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(92, 'menu', 90, '分类管理2', '分类管理', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(93, 'menu', 90, '产品管理3', '产品管理', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(94, 'menu', 0, '评论管理0', '评论管理', '&#xe622', '', '', 0, 0, 0, 0, 'normal'),
(95, 'menu', 94, '评论列表1', '评论列表', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(96, 'menu', 94, '意见反馈2', '意见反馈', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(97, 'menu', 0, '会员管理0', '会员管理', '&#xe60d', '', '', 0, 0, 0, 0, 'normal'),
(98, 'menu', 97, '会员列表1', '会员列表', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(99, 'menu', 97, '删除的会员2', '删除的会员', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(100, 'menu', 97, '等级管理3', '等级管理', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(101, 'menu', 97, '积分管理4', '积分管理', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(102, 'menu', 97, '浏览记录5', '浏览记录', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(103, 'menu', 97, '下载记录6', '下载记录', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(104, 'menu', 97, '分享记录7', '分享记录', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(105, 'menu', 0, '管理员管理0', '管理员管理', '&#xe62d', '', '', 0, 0, 0, 0, 'normal'),
(106, 'menu', 105, '角色管理1', '角色管理', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(107, 'menu', 105, '权限管理2', '权限管理', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(108, 'menu', 105, '/admin/admin/lists', '管理员列表', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(109, 'menu', 0, '系统统计0', '系统统计', '&#xe61a', '', '', 0, 0, 0, 0, 'normal'),
(110, 'menu', 109, '折线图1', '折线图', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(111, 'menu', 109, '时间轴折线图2', '时间轴折线图', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(112, 'menu', 109, '区域图3', '区域图', '&#区域图', '', '', 0, 0, 0, 0, 'normal'),
(113, 'menu', 109, '柱状图4', '柱状图', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(114, 'menu', 109, '饼状图5', '饼状图', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(115, 'menu', 109, '3D柱状图6', '3D柱状图', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(116, 'menu', 109, '3D饼状图7', '3D饼状图', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(117, 'menu', 0, '系统管理0', '系统管理', '&#xe62e', '', '', 0, 0, 0, 0, 'normal'),
(118, 'menu', 117, '系统设置1', '系统设置', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(119, 'menu', 117, '栏目管理2', '栏目管理', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(120, 'menu', 117, '数据字典3', '数据字典', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(121, 'menu', 117, '屏蔽词4', '屏蔽词', '&#xe620', '', '', 0, 0, 0, 0, 'normal'),
(122, 'menu', 117, '系统日志5', '系统日志', '&#xe620', '', '', 0, 0, 0, 0, 'normal');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
