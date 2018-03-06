-- MySQL dump 10.11
--
-- Host: localhost    Database: crimaster
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt-log

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
-- Table structure for table `cri_files`
--

DROP TABLE IF EXISTS `cri_files`;
CREATE TABLE `cri_files` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fullname` varchar(260) NOT NULL,
  `createUser` varchar(50) default NULL,
  `createDate` timestamp NULL default NULL,
  `updateUser` varchar(50) default NULL,
  `updateDate` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `Index 2` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cri_files`
--

LOCK TABLES `cri_files` WRITE;
/*!40000 ALTER TABLE `cri_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `cri_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cri_forums`
--

DROP TABLE IF EXISTS `cri_forums`;
CREATE TABLE `cri_forums` (
  `id` int(10) NOT NULL auto_increment,
  `sid` int(10) NOT NULL default '0',
  `uid` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text,
  `file` varchar(100) default NULL,
  `createUser` varchar(50) default NULL,
  `createDate` timestamp NULL default NULL,
  `updateUser` varchar(50) default NULL,
  `updateDate` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `Index 2` (`sid`),
  KEY `Index 3` (`title`),
  KEY `Index 4` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cri_forums`
--

LOCK TABLES `cri_forums` WRITE;
/*!40000 ALTER TABLE `cri_forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `cri_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cri_missions`
--

DROP TABLE IF EXISTS `cri_missions`;
CREATE TABLE `cri_missions` (
  `id` int(10) NOT NULL auto_increment,
  `sid` int(10) NOT NULL default '0',
  `uid` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text,
  `file` varchar(100) default NULL,
  `createUser` varchar(50) default NULL,
  `createDate` timestamp NULL default NULL,
  `updateUser` varchar(50) default NULL,
  `updateDate` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `Index 2` (`title`),
  KEY `Index 3` (`sid`),
  KEY `Index 4` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cri_missions`
--

LOCK TABLES `cri_missions` WRITE;
/*!40000 ALTER TABLE `cri_missions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cri_missions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cri_users`
--

DROP TABLE IF EXISTS `cri_users`;
CREATE TABLE `cri_users` (
  `id` int(10) NOT NULL auto_increment,
  `usr` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `state` int(11) default '1',
  `eml` varchar(50) default NULL,
  `ip` int(11) default NULL,
  `lv` int(11) default '0',
  `url` varchar(100) default NULL,
  `head` int(11) default NULL,
  `updateUser` varchar(50) default 'system',
  `updateDate` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `Index 2` (`usr`),
  UNIQUE KEY `Index 4` (`eml`),
  KEY `Index 3` (`pwd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cri_users`
--

LOCK TABLES `cri_users` WRITE;
/*!40000 ALTER TABLE `cri_users` DISABLE KEYS */;
INSERT INTO `cri_users` VALUES (1,'crimaster','89B9D91659B810CA33E487CBFADB9F11DFC2B0CB',1,'crimaster@crimaster.com',NULL,0,NULL,NULL,'system','2018-03-06 02:44:09');
/*!40000 ALTER TABLE `cri_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-06  3:25:09
