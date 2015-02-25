/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.6.17 : Database - concrete
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`concrete` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `concrete`;

/*Table structure for table `arealayoutcolumns` */

DROP TABLE IF EXISTS `arealayoutcolumns`;

CREATE TABLE `arealayoutcolumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `arID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`),
  KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  KEY `arID` (`arID`),
  KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `arealayoutcolumns` */

LOCK TABLES `arealayoutcolumns` WRITE;

insert  into `arealayoutcolumns`(`arLayoutColumnID`,`arLayoutID`,`arLayoutColumnIndex`,`arID`,`arLayoutColumnDisplayID`) values (1,1,0,27,1),(2,1,1,28,2),(3,2,0,31,3),(4,2,1,32,4),(5,2,2,33,5),(6,3,0,34,6),(7,3,1,35,7),(8,4,0,36,8),(9,4,1,37,9),(10,4,2,38,10),(11,5,0,41,11),(12,5,1,42,12),(13,5,2,43,13),(14,5,3,44,14),(15,6,0,45,15),(16,6,1,46,16),(17,7,0,48,17),(18,7,1,49,18),(19,8,0,76,19),(20,8,1,77,20),(21,9,0,78,21),(22,9,1,79,22),(23,9,2,80,23),(24,10,0,81,24),(25,10,1,82,25),(26,11,0,97,26),(27,11,1,98,27),(28,12,0,99,28),(29,12,1,100,29),(30,12,2,101,30),(31,13,0,104,31),(32,13,1,105,32),(33,14,0,106,33),(34,14,1,107,34),(35,15,0,108,35),(36,15,1,109,36),(37,16,0,111,37),(38,16,1,112,38),(39,16,2,113,39),(40,17,0,114,40),(41,17,1,115,41);

UNLOCK TABLES;

/*Table structure for table `arealayoutcustomcolumns` */

DROP TABLE IF EXISTS `arealayoutcustomcolumns`;

CREATE TABLE `arealayoutcustomcolumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `arealayoutcustomcolumns` */

LOCK TABLES `arealayoutcustomcolumns` WRITE;

UNLOCK TABLES;

/*Table structure for table `arealayoutpresets` */

DROP TABLE IF EXISTS `arealayoutpresets`;

CREATE TABLE `arealayoutpresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arLayoutPresetID`),
  KEY `arLayoutID` (`arLayoutID`),
  KEY `arLayoutPresetName` (`arLayoutPresetName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `arealayoutpresets` */

LOCK TABLES `arealayoutpresets` WRITE;

UNLOCK TABLES;

/*Table structure for table `arealayouts` */

DROP TABLE IF EXISTS `arealayouts`;

CREATE TABLE `arealayouts` (
  `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `arealayouts` */

LOCK TABLES `arealayouts` WRITE;

insert  into `arealayouts`(`arLayoutID`,`arLayoutSpacing`,`arLayoutIsCustom`,`arLayoutMaxColumns`,`arLayoutUsesThemeGridFramework`) values (1,0,0,12,1),(2,0,0,12,1),(3,0,0,12,1),(4,0,0,12,1),(5,0,0,12,1),(6,0,0,12,1),(7,0,0,12,1),(8,0,0,12,1),(9,0,0,12,1),(10,0,0,12,1),(11,0,0,12,1),(12,0,0,12,1),(13,0,0,12,1),(14,0,0,12,1),(15,0,0,12,1),(16,0,0,12,1),(17,0,0,12,1);

UNLOCK TABLES;

/*Table structure for table `arealayoutthemegridcolumns` */

DROP TABLE IF EXISTS `arealayoutthemegridcolumns`;

CREATE TABLE `arealayoutthemegridcolumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `arealayoutthemegridcolumns` */

LOCK TABLES `arealayoutthemegridcolumns` WRITE;

insert  into `arealayoutthemegridcolumns`(`arLayoutColumnID`,`arLayoutColumnSpan`,`arLayoutColumnOffset`) values (1,8,0),(2,3,1),(3,4,0),(4,4,0),(5,4,0),(6,6,0),(7,6,0),(8,2,0),(9,3,0),(10,6,1),(11,3,0),(12,3,0),(13,3,0),(14,3,0),(15,6,0),(16,6,0),(17,5,0),(18,5,2),(19,6,0),(20,6,0),(21,4,0),(22,4,0),(23,4,0),(24,4,0),(25,7,1),(26,7,0),(27,4,1),(28,2,0),(29,4,0),(30,6,0),(31,7,0),(32,5,0),(33,4,0),(34,7,1),(35,4,0),(36,7,1),(37,4,0),(38,4,0),(39,4,0),(40,4,0),(41,8,0);

UNLOCK TABLES;

/*Table structure for table `areapermissionassignments` */

DROP TABLE IF EXISTS `areapermissionassignments`;

CREATE TABLE `areapermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `areapermissionassignments` */

LOCK TABLES `areapermissionassignments` WRITE;

UNLOCK TABLES;

/*Table structure for table `areapermissionblocktypeaccesslist` */

DROP TABLE IF EXISTS `areapermissionblocktypeaccesslist`;

CREATE TABLE `areapermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `areapermissionblocktypeaccesslist` */

LOCK TABLES `areapermissionblocktypeaccesslist` WRITE;

UNLOCK TABLES;

/*Table structure for table `areapermissionblocktypeaccesslistcustom` */

DROP TABLE IF EXISTS `areapermissionblocktypeaccesslistcustom`;

CREATE TABLE `areapermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `areapermissionblocktypeaccesslistcustom` */

LOCK TABLES `areapermissionblocktypeaccesslistcustom` WRITE;

UNLOCK TABLES;

/*Table structure for table `areas` */

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`),
  KEY `arParentID` (`arParentID`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `areas` */

LOCK TABLES `areas` WRITE;

insert  into `areas`(`arID`,`cID`,`arHandle`,`arOverrideCollectionPermissions`,`arInheritPermissionsFromAreaOnCID`,`arIsGlobal`,`arParentID`) values (1,124,'Main',0,0,0,0),(2,125,'Primary',0,0,0,0),(3,125,'Secondary 1',0,0,0,0),(4,125,'Secondary 2',0,0,0,0),(5,125,'Secondary 3',0,0,0,0),(6,125,'Secondary 4',0,0,0,0),(7,125,'Secondary 5',0,0,0,0),(8,142,'Main',0,0,0,0),(9,143,'Main',0,0,0,0),(10,144,'Main',0,0,0,0),(11,145,'Main',0,0,0,0),(12,146,'Main',0,0,0,0),(13,147,'Main',0,0,0,0),(14,148,'Main',0,0,0,0),(15,149,'Main',0,0,0,0),(16,167,'Main',0,0,0,0),(17,167,'Sidebar',0,0,0,0),(18,167,'Page Footer',0,0,0,0),(19,174,'Page Header',0,0,0,0),(20,174,'Sidebar',0,0,0,0),(21,174,'Main',0,0,0,0),(22,160,'Page Header',0,0,0,0),(23,160,'Sidebar',0,0,0,0),(24,160,'Main',0,0,0,0),(25,160,'Page Footer',0,0,0,0),(26,155,'Main',0,0,0,0),(27,155,'Main : 1',0,0,0,26),(28,155,'Main : 2',0,0,0,26),(29,152,'Main',0,0,0,0),(30,1,'Main',0,0,0,0),(31,1,'Main : 3',0,0,0,30),(32,1,'Main : 4',0,0,0,30),(33,1,'Main : 5',0,0,0,30),(34,1,'Main : 6',0,0,0,30),(35,1,'Main : 7',0,0,0,30),(36,1,'Main : 8',0,0,0,30),(37,1,'Main : 9',0,0,0,30),(38,1,'Main : 10',0,0,0,30),(39,1,'Page Footer',0,0,0,0),(40,151,'Main',0,0,0,0),(41,151,'Main : 11',0,0,0,40),(42,151,'Main : 12',0,0,0,40),(43,151,'Main : 13',0,0,0,40),(44,151,'Main : 14',0,0,0,40),(45,151,'Main : 15',0,0,0,40),(46,151,'Main : 16',0,0,0,40),(47,151,'Page Footer',0,0,0,0),(48,151,'Page Footer : 17',0,0,0,47),(49,151,'Page Footer : 18',0,0,0,47),(50,153,'Main',0,0,0,0),(51,161,'Page Header',0,0,0,0),(52,161,'Main',0,0,0,0),(53,161,'Sidebar',0,0,0,0),(54,161,'Page Footer',0,0,0,0),(55,162,'Page Header',0,0,0,0),(56,162,'Main',0,0,0,0),(57,162,'Sidebar',0,0,0,0),(58,162,'Page Footer',0,0,0,0),(59,163,'Page Header',0,0,0,0),(60,163,'Main',0,0,0,0),(61,163,'Sidebar',0,0,0,0),(62,163,'Page Footer',0,0,0,0),(63,164,'Page Header',0,0,0,0),(64,164,'Main',0,0,0,0),(65,164,'Sidebar',0,0,0,0),(66,164,'Page Footer',0,0,0,0),(67,165,'Page Header',0,0,0,0),(68,165,'Main',0,0,0,0),(69,165,'Sidebar',0,0,0,0),(70,165,'Page Footer',0,0,0,0),(71,166,'Page Header',0,0,0,0),(72,166,'Main',0,0,0,0),(73,166,'Sidebar',0,0,0,0),(74,166,'Page Footer',0,0,0,0),(75,154,'Main',0,0,0,0),(76,154,'Main : 19',0,0,0,75),(77,154,'Main : 20',0,0,0,75),(78,154,'Main : 21',0,0,0,75),(79,154,'Main : 22',0,0,0,75),(80,154,'Main : 23',0,0,0,75),(81,154,'Main : 24',0,0,0,75),(82,154,'Main : 25',0,0,0,75),(83,156,'Main',0,0,0,0),(84,156,'Main : 1',0,0,0,0),(85,156,'Main : 2',0,0,0,0),(86,168,'Page Footer',0,0,0,0),(87,168,'Main',0,0,0,0),(88,168,'Sidebar',0,0,0,0),(89,169,'Page Footer',0,0,0,0),(90,169,'Main',0,0,0,0),(91,169,'Sidebar',0,0,0,0),(92,170,'Page Footer',0,0,0,0),(93,170,'Main',0,0,0,0),(94,170,'Sidebar',0,0,0,0),(95,157,'Main',0,0,0,0),(96,158,'Main',0,0,0,0),(97,158,'Main : 26',0,0,0,96),(98,158,'Main : 27',0,0,0,96),(99,158,'Main : 28',0,0,0,96),(100,158,'Main : 29',0,0,0,96),(101,158,'Main : 30',0,0,0,96),(102,159,'Main',0,0,0,0),(103,171,'Main',0,0,0,0),(104,171,'Main : 31',0,0,0,103),(105,171,'Main : 32',0,0,0,103),(106,171,'Main : 33',0,0,0,103),(107,171,'Main : 34',0,0,0,103),(108,171,'Main : 35',0,0,0,103),(109,171,'Main : 36',0,0,0,103),(110,172,'Main',0,0,0,0),(111,172,'Main : 37',0,0,0,110),(112,172,'Main : 38',0,0,0,110),(113,172,'Main : 39',0,0,0,110),(114,172,'Main : 40',0,0,0,110),(115,172,'Main : 41',0,0,0,110),(116,175,'Main',0,0,0,0),(117,175,'Page Header',0,0,0,0),(118,175,'Sidebar',0,0,0,0),(119,176,'Main',0,0,0,0),(120,176,'Page Header',0,0,0,0),(121,176,'Sidebar',0,0,0,0),(122,173,'Main',0,0,0,0),(123,1,'Header Site Title',0,0,1,0),(124,1,'Header Navigation',0,0,1,0),(125,1,'Header Search',0,0,1,0),(126,1,'Footer Site Title',0,0,1,0),(127,1,'Footer Social',0,0,1,0),(128,1,'Footer Legal',0,0,1,0),(129,1,'Footer Navigation',0,0,1,0),(130,1,'Footer Contact',0,0,1,0),(131,171,'Header Site Title',0,0,1,0),(132,171,'Header Navigation',0,0,1,0),(133,171,'Header Search',0,0,1,0),(134,171,'Page Footer',0,0,0,0),(135,171,'Footer Site Title',0,0,1,0),(136,171,'Footer Social',0,0,1,0),(137,171,'Footer Legal',0,0,1,0),(138,171,'Footer Navigation',0,0,1,0),(139,171,'Footer Contact',0,0,1,0),(140,153,'Header Site Title',0,0,1,0),(141,153,'Header Navigation',0,0,1,0),(142,153,'Header Search',0,0,1,0),(143,153,'Page Footer',0,0,0,0),(144,153,'Footer Site Title',0,0,1,0),(145,153,'Footer Social',0,0,1,0),(146,153,'Footer Legal',0,0,1,0),(147,153,'Footer Navigation',0,0,1,0),(148,153,'Footer Contact',0,0,1,0);

UNLOCK TABLES;

/*Table structure for table `ataddress` */

DROP TABLE IF EXISTS `ataddress`;

CREATE TABLE `ataddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ataddress` */

LOCK TABLES `ataddress` WRITE;

UNLOCK TABLES;

/*Table structure for table `ataddresscustomcountries` */

DROP TABLE IF EXISTS `ataddresscustomcountries`;

CREATE TABLE `ataddresscustomcountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ataddresscustomcountries` */

LOCK TABLES `ataddresscustomcountries` WRITE;

UNLOCK TABLES;

/*Table structure for table `ataddresssettings` */

DROP TABLE IF EXISTS `ataddresssettings`;

CREATE TABLE `ataddresssettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` tinyint(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ataddresssettings` */

LOCK TABLES `ataddresssettings` WRITE;

UNLOCK TABLES;

/*Table structure for table `atboolean` */

DROP TABLE IF EXISTS `atboolean`;

CREATE TABLE `atboolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `atboolean` */

LOCK TABLES `atboolean` WRITE;

insert  into `atboolean`(`avID`,`value`) values (9,1),(16,1),(18,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(42,1),(43,1),(47,1),(51,1),(98,1),(105,1),(106,1),(107,1),(144,1),(145,1),(146,1),(157,1),(163,1),(179,1),(184,0),(194,1),(196,0),(197,1),(202,0),(209,0);

UNLOCK TABLES;

/*Table structure for table `atbooleansettings` */

DROP TABLE IF EXISTS `atbooleansettings`;

CREATE TABLE `atbooleansettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `atbooleansettings` */

LOCK TABLES `atbooleansettings` WRITE;

insert  into `atbooleansettings`(`akID`,`akCheckedByDefault`) values (5,0),(6,0),(9,0),(10,0),(11,0),(12,1),(13,1),(20,0);

UNLOCK TABLES;

/*Table structure for table `atdatetime` */

DROP TABLE IF EXISTS `atdatetime`;

CREATE TABLE `atdatetime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `atdatetime` */

LOCK TABLES `atdatetime` WRITE;

UNLOCK TABLES;

/*Table structure for table `atdatetimesettings` */

DROP TABLE IF EXISTS `atdatetimesettings`;

CREATE TABLE `atdatetimesettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `atdatetimesettings` */

LOCK TABLES `atdatetimesettings` WRITE;

UNLOCK TABLES;

/*Table structure for table `atdefault` */

DROP TABLE IF EXISTS `atdefault`;

CREATE TABLE `atdefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `atdefault` */

LOCK TABLES `atdefault` WRITE;

insert  into `atdefault`(`avID`,`value`) values (1,'fa fa-th-large'),(2,'pages, add page, delete page, copy, move, alias'),(3,'pages, add page, delete page, copy, move, alias'),(4,'pages, add page, delete page, copy, move, alias, bulk'),(5,'find page, search page, search, find, pages, sitemap'),(6,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),(7,'file, file attributes, title, attribute, description, rename'),(8,'files, category, categories'),(10,'new file set'),(11,'users, groups, people, find, delete user, remove user, change password, password'),(12,'find, search, people, delete user, remove user, change password, password'),(13,'user, group, people, permissions, expire, badges'),(14,'user attributes, user data, gather data, registration data'),(15,'new user, create'),(17,'new user group, new group, group, create'),(19,'group set'),(20,'community, points, karma'),(21,'action, community actions'),(22,'forms, log, error, email, mysql, exception, survey'),(23,'forms, questions, response, data'),(24,'questions, quiz, response'),(25,'forms, log, error, email, mysql, exception, survey, history'),(26,'new theme, theme, active theme, change theme, template, css'),(27,'page types'),(36,'page attributes, custom'),(37,'single, page, custom, application'),(38,'atom, rss, feed, syndication'),(39,'icon-bullhorn'),(40,'add workflow, remove workflow'),(41,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),(44,'edit stacks, view stacks, all stacks'),(45,'block, refresh, custom'),(46,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks'),(48,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),(49,'update, upgrade'),(50,'concrete5.org, my account, marketplace'),(52,'buy theme, new theme, marketplace, template'),(53,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),(54,'dashboard, configuration'),(55,'website name, title'),(56,'accessibility, easy mode'),(57,'sharing, facebook, twitter'),(58,'logo, favicon, iphone, icon, bookmark'),(59,'tinymce, content block, fonts, editor, content, overlay'),(60,'translate, translation, internationalization, multilingual'),(61,'timezone, profile, locale'),(62,'multilingual, localization, internationalization, i18n'),(63,'vanity, pretty url, seo, pageview, view'),(64,'bulk, seo, change keywords, engine, optimization, search'),(65,'traffic, statistics, google analytics, quant, pageviews, hits'),(66,'pretty, slug'),(67,'configure search, site search, search option'),(68,'file options, file manager, upload, modify'),(69,'security, files, media, extension, manager, upload'),(70,'images, picture, responsive, retina'),(71,'security, alternate storage, hide files'),(72,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),(73,'cache option, turn off cache, no cache, page cache, caching'),(74,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),(75,'queries, database, mysql'),(76,'editors, hide site, offline, private, public, access'),(77,'security, actions, administrator, admin, package, marketplace, search'),(78,'security, lock ip, lock out, block ip, address, restrict, access'),(79,'security, registration'),(80,'antispam, block spam, security'),(81,'lock site, under construction, hide, hidden'),(82,'profile, login, redirect, specific, dashboard, administrators'),(83,'member profile, member page, community, forums, social, avatar'),(84,'signup, new user, community, public registration, public, registration'),(85,'auth, authentication, types, oauth, facebook, login, registration'),(86,'smtp, mail settings'),(87,'email server, mail settings, mail configuration, external, internal'),(88,'test smtp, test mail'),(89,'email server, mail settings, mail configuration, private message, message system, import, email, message'),(90,'conversations'),(91,'conversations'),(92,'conversations ratings, ratings, community, community points'),(93,'conversations bad words, banned words, banned, bad words, bad, words, list'),(94,'attribute configuration'),(95,'attributes, sets'),(96,'attributes, types'),(97,'topics, tags, taxonomy'),(99,'overrides, system info, debug, support, help'),(100,'errors, exceptions, develop, support, help'),(101,'email, logging, logs, smtp, pop, errors, mysql, log'),(102,'network, proxy server'),(103,'export, backup, database, sql, mysql, encryption, restore'),(104,'upgrade, new version, update'),(108,'fa fa-edit'),(109,'fa fa-trash-o'),(110,'fa fa-th'),(111,'fa fa-briefcase'),(149,'Test Client'),(154,'Test Client'),(160,'Test Client 2'),(166,'Test Client 2'),(171,'Test Client 2'),(176,'Test Client 2'),(180,NULL),(181,NULL),(182,NULL),(183,NULL),(191,NULL),(192,NULL),(193,NULL),(195,NULL),(198,NULL),(199,NULL),(200,NULL),(201,NULL),(204,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla massa lacus, vehicula eu interdum convallis, laoreet id lectus. Nunc turpis elit, aliquam sit amet aliquam tincidunt, dapibus vel tellus. '),(205,NULL),(206,NULL),(207,NULL),(208,NULL),(211,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla massa lacus, vehicula eu interdum convallis, laoreet id lectus. Nunc turpis elit, aliquam sit amet aliquam tincidunt, dapibus vel tellus. ');

UNLOCK TABLES;

/*Table structure for table `atfile` */

DROP TABLE IF EXISTS `atfile`;

CREATE TABLE `atfile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `atfile` */

LOCK TABLES `atfile` WRITE;

insert  into `atfile`(`avID`,`fID`) values (185,2),(147,6),(187,7),(152,8),(174,10),(189,11),(169,12),(164,15),(158,16);

UNLOCK TABLES;

/*Table structure for table `atnumber` */

DROP TABLE IF EXISTS `atnumber`;

CREATE TABLE `atnumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `atnumber` */

LOCK TABLES `atnumber` WRITE;

insert  into `atnumber`(`avID`,`value`) values (112,'200.0000'),(113,'200.0000'),(114,'500.0000'),(115,'500.0000'),(116,'460.0000'),(117,'460.0000'),(118,'592.0000'),(119,'397.0000'),(120,'250.0000'),(121,'252.0000'),(122,'1600.0000'),(123,'1067.0000'),(124,'200.0000'),(125,'200.0000'),(126,'1499.0000'),(127,'1067.0000'),(128,'1100.0000'),(129,'263.0000'),(130,'1600.0000'),(131,'1067.0000'),(132,'1600.0000'),(133,'1066.0000'),(134,'1600.0000'),(135,'1067.0000'),(136,'1100.0000'),(137,'368.0000'),(138,'1100.0000'),(139,'368.0000'),(140,'1600.0000'),(141,'1067.0000'),(142,'1600.0000'),(143,'953.0000');

UNLOCK TABLES;

/*Table structure for table `atselectedtopics` */

DROP TABLE IF EXISTS `atselectedtopics`;

CREATE TABLE `atselectedtopics` (
  `avID` int(10) unsigned NOT NULL,
  `TopicNodeID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`TopicNodeID`),
  KEY `TopicNodeID` (`TopicNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `atselectedtopics` */

LOCK TABLES `atselectedtopics` WRITE;

insert  into `atselectedtopics`(`avID`,`TopicNodeID`) values (186,11),(190,11),(188,13),(148,16),(159,16),(165,16),(170,16),(175,16),(153,18);

UNLOCK TABLES;

/*Table structure for table `atselectoptions` */

DROP TABLE IF EXISTS `atselectoptions`;

CREATE TABLE `atselectoptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `akID` (`akID`,`displayOrder`),
  KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `atselectoptions` */

LOCK TABLES `atselectoptions` WRITE;

insert  into `atselectoptions`(`ID`,`akID`,`value`,`displayOrder`,`isEndUserAdded`) values (1,18,'Finance',0,0),(2,18,'Marketing and Sales',1,0),(3,18,'Human Resources',2,0),(4,18,'Technical and Operations',3,0),(5,18,'Management',4,0),(6,25,'Architecture',0,0),(7,25,'Multimedia',1,0),(8,25,'Design',2,0),(9,25,'Production',3,0),(10,25,'Development',4,0),(11,25,'Quality Assurance',5,0),(12,26,'HTML',0,0),(13,26,'JavaScript',1,0),(14,26,'PHP',2,0),(15,26,'Database',3,0),(16,26,'CSS',4,0),(17,26,'Ruby',5,0),(18,26,'Java',6,0),(19,26,'iOS/Android/App Development',7,0),(20,26,'Photoshop',8,0),(21,26,'Python',9,0),(22,26,'Writing',10,0);

UNLOCK TABLES;

/*Table structure for table `atselectoptionsselected` */

DROP TABLE IF EXISTS `atselectoptionsselected`;

CREATE TABLE `atselectoptionsselected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`),
  KEY `atSelectOptionID` (`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `atselectoptionsselected` */

LOCK TABLES `atselectoptionsselected` WRITE;

insert  into `atselectoptionsselected`(`avID`,`atSelectOptionID`) values (210,2),(203,4),(150,6),(155,6),(161,7),(150,8),(167,8),(172,8),(177,8),(150,9),(161,9),(161,10),(151,12),(162,12),(151,13),(162,13),(151,14),(156,14),(162,14),(162,16),(168,20),(173,20),(178,20);

UNLOCK TABLES;

/*Table structure for table `atselectsettings` */

DROP TABLE IF EXISTS `atselectsettings`;

CREATE TABLE `atselectsettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `atselectsettings` */

LOCK TABLES `atselectsettings` WRITE;

insert  into `atselectsettings`(`akID`,`akSelectAllowMultipleValues`,`akSelectOptionDisplayOrder`,`akSelectAllowOtherValues`) values (8,1,'display_asc',1),(18,0,'display_asc',0),(25,1,'display_asc',0),(26,1,'display_asc',0);

UNLOCK TABLES;

/*Table structure for table `atsociallinks` */

DROP TABLE IF EXISTS `atsociallinks`;

CREATE TABLE `atsociallinks` (
  `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avsID`),
  KEY `avID` (`avID`,`avsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `atsociallinks` */

LOCK TABLES `atsociallinks` WRITE;

UNLOCK TABLES;

/*Table structure for table `attextareasettings` */

DROP TABLE IF EXISTS `attextareasettings`;

CREATE TABLE `attextareasettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akTextareaDisplayModeCustomOptions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `attextareasettings` */

LOCK TABLES `attextareasettings` WRITE;

insert  into `attextareasettings`(`akID`,`akTextareaDisplayMode`,`akTextareaDisplayModeCustomOptions`) values (2,'',''),(3,'',''),(4,'',''),(7,'',''),(19,'text','');

UNLOCK TABLES;

/*Table structure for table `attopicsettings` */

DROP TABLE IF EXISTS `attopicsettings`;

CREATE TABLE `attopicsettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTopicParentNodeID` int(11) DEFAULT NULL,
  `akTopicTreeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`akID`),
  KEY `akTopicTreeID` (`akTopicTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `attopicsettings` */

LOCK TABLES `attopicsettings` WRITE;

insert  into `attopicsettings`(`akID`,`akTopicParentNodeID`,`akTopicTreeID`) values (22,5,2),(23,14,3);

UNLOCK TABLES;

/*Table structure for table `attributekeycategories` */

DROP TABLE IF EXISTS `attributekeycategories`;

CREATE TABLE `attributekeycategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` smallint(6) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`),
  KEY `akCategoryHandle` (`akCategoryHandle`),
  KEY `pkgID` (`pkgID`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `attributekeycategories` */

LOCK TABLES `attributekeycategories` WRITE;

insert  into `attributekeycategories`(`akCategoryID`,`akCategoryHandle`,`akCategoryAllowSets`,`pkgID`) values (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL);

UNLOCK TABLES;

/*Table structure for table `attributekeys` */

DROP TABLE IF EXISTS `attributekeys`;

CREATE TABLE `attributekeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`),
  KEY `atID` (`atID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `attributekeys` */

LOCK TABLES `attributekeys` WRITE;

insert  into `attributekeys`(`akID`,`akHandle`,`akName`,`akIsSearchable`,`akIsSearchableIndexed`,`akIsAutoCreated`,`akIsInternal`,`akIsColumnHeader`,`akIsEditable`,`atID`,`akCategoryID`,`pkgID`) values (1,'meta_title','Meta Title',1,1,1,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,1,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,1,0,0,1,2,1,0),(4,'icon_dashboard','Dashboard Icon',0,0,1,1,0,1,2,1,0),(5,'exclude_nav','Exclude From Nav',1,1,1,0,0,1,3,1,0),(6,'exclude_page_list','Exclude From Page List',1,1,1,0,0,1,3,1,0),(7,'header_extra_content','Header Extra Content',1,1,1,0,0,1,2,1,0),(8,'tags','Tags',1,1,1,0,0,1,8,1,0),(9,'is_featured','Is Featured',1,0,1,0,0,1,3,1,0),(10,'exclude_search_index','Exclude From Search Index',1,1,1,0,0,1,3,1,0),(11,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,1,0,0,1,3,1,0),(12,'profile_private_messages_enabled','I would like to receive private messages.',1,0,0,0,0,1,3,2,0),(13,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,0,0,0,0,1,3,2,0),(14,'width','Width',1,1,1,0,0,1,6,3,0),(15,'height','Height',1,1,1,0,0,1,6,3,0),(16,'account_profile_links','Personal Links',0,0,0,0,0,1,11,2,0),(17,'duration','Duration',1,1,1,0,0,1,6,3,0),(18,'job_posting_department','Department',1,1,1,0,0,1,8,1,0),(19,'job_location','Location',1,1,1,0,0,1,2,1,0),(20,'exclude_subpages_from_nav','Exclude Sub-Pages From Nav',1,1,1,0,0,1,3,1,0),(21,'thumbnail','Thumbnail',1,1,1,0,0,1,5,1,0),(22,'blog_entry_topics','Blog Entry Topics',1,1,1,0,0,1,10,1,0),(23,'project_topics','Project Topics',1,1,1,0,0,1,10,1,0),(24,'project_client','Client',1,1,1,0,0,1,1,1,0),(25,'project_tasks','Task',1,1,1,0,0,1,8,1,0),(26,'project_skills','Skills',1,1,1,0,0,1,8,1,0);

UNLOCK TABLES;

/*Table structure for table `attributesetkeys` */

DROP TABLE IF EXISTS `attributesetkeys`;

CREATE TABLE `attributesetkeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`),
  KEY `asID` (`asID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `attributesetkeys` */

LOCK TABLES `attributesetkeys` WRITE;

insert  into `attributesetkeys`(`akID`,`asID`,`displayOrder`) values (1,1,1),(2,1,2),(3,1,3),(7,1,4),(11,1,5),(9,2,1),(5,2,2),(6,2,3),(10,2,4),(8,2,5),(21,2,6),(20,2,7),(18,3,1),(19,3,2),(22,4,1),(23,5,1),(24,5,2),(25,5,3),(26,5,4);

UNLOCK TABLES;

/*Table structure for table `attributesets` */

DROP TABLE IF EXISTS `attributesets`;

CREATE TABLE `attributesets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` tinyint(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`),
  UNIQUE KEY `asHandle` (`asHandle`),
  KEY `akCategoryID` (`akCategoryID`,`asDisplayOrder`),
  KEY `pkgID` (`pkgID`,`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `attributesets` */

LOCK TABLES `attributesets` WRITE;

insert  into `attributesets`(`asID`,`asName`,`asHandle`,`akCategoryID`,`pkgID`,`asIsLocked`,`asDisplayOrder`) values (1,'SEO','seo',1,0,0,0),(2,'Navigation and Indexing','navigation',1,0,0,1),(3,'Jobs','job_board',1,0,0,2),(4,'Blog','blog',1,0,0,3),(5,'Portfolio','portfolio',1,0,0,4);

UNLOCK TABLES;

/*Table structure for table `attributetypecategories` */

DROP TABLE IF EXISTS `attributetypecategories`;

CREATE TABLE `attributetypecategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `attributetypecategories` */

LOCK TABLES `attributetypecategories` WRITE;

insert  into `attributetypecategories`(`atID`,`akCategoryID`) values (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(10,1),(1,2),(2,2),(3,2),(4,2),(6,2),(8,2),(9,2),(10,2),(11,2),(1,3),(2,3),(3,3),(4,3),(6,3),(7,3),(8,3),(10,3);

UNLOCK TABLES;

/*Table structure for table `attributetypes` */

DROP TABLE IF EXISTS `attributetypes`;

CREATE TABLE `attributetypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `atHandle` (`atHandle`),
  KEY `pkgID` (`pkgID`,`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `attributetypes` */

LOCK TABLES `attributetypes` WRITE;

insert  into `attributetypes`(`atID`,`atHandle`,`atName`,`pkgID`) values (1,'text','Text',0),(2,'textarea','Text Area',0),(3,'boolean','Checkbox',0),(4,'date_time','Date/Time',0),(5,'image_file','Image/File',0),(6,'number','Number',0),(7,'rating','Rating',0),(8,'select','Select',0),(9,'address','Address',0),(10,'topics','Topics',0),(11,'social_links','Social Links',0);

UNLOCK TABLES;

/*Table structure for table `attributevalues` */

DROP TABLE IF EXISTS `attributevalues`;

CREATE TABLE `attributevalues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `akID` (`akID`),
  KEY `uID` (`uID`),
  KEY `atID` (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `attributevalues` */

LOCK TABLES `attributevalues` WRITE;

insert  into `attributevalues`(`avID`,`akID`,`avDateAdded`,`uID`,`atID`) values (1,4,'2015-02-25 06:52:34',1,2),(2,3,'2015-02-25 06:52:35',1,2),(3,3,'2015-02-25 06:52:35',1,2),(4,3,'2015-02-25 06:52:35',1,2),(5,3,'2015-02-25 06:52:35',1,2),(6,3,'2015-02-25 06:52:35',1,2),(7,3,'2015-02-25 06:52:35',1,2),(8,3,'2015-02-25 06:52:35',1,2),(9,5,'2015-02-25 06:52:36',1,3),(10,3,'2015-02-25 06:52:36',1,2),(11,3,'2015-02-25 06:52:36',1,2),(12,3,'2015-02-25 06:52:36',1,2),(13,3,'2015-02-25 06:52:36',1,2),(14,3,'2015-02-25 06:52:36',1,2),(15,3,'2015-02-25 06:52:36',1,2),(16,5,'2015-02-25 06:52:37',1,3),(17,3,'2015-02-25 06:52:37',1,2),(18,5,'2015-02-25 06:52:37',1,3),(19,3,'2015-02-25 06:52:37',1,2),(20,3,'2015-02-25 06:52:37',1,2),(21,3,'2015-02-25 06:52:38',1,2),(22,3,'2015-02-25 06:52:38',1,2),(23,3,'2015-02-25 06:52:38',1,2),(24,3,'2015-02-25 06:52:38',1,2),(25,3,'2015-02-25 06:52:38',1,2),(26,3,'2015-02-25 06:52:38',1,2),(27,3,'2015-02-25 06:52:38',1,2),(28,5,'2015-02-25 06:52:39',1,3),(29,5,'2015-02-25 06:52:39',1,3),(30,5,'2015-02-25 06:52:39',1,3),(31,5,'2015-02-25 06:52:39',1,3),(32,5,'2015-02-25 06:52:39',1,3),(33,5,'2015-02-25 06:52:39',1,3),(34,5,'2015-02-25 06:52:39',1,3),(35,5,'2015-02-25 06:52:39',1,3),(36,3,'2015-02-25 06:52:39',1,2),(37,3,'2015-02-25 06:52:40',1,2),(38,3,'2015-02-25 06:52:40',1,2),(39,4,'2015-02-25 06:52:40',1,2),(40,3,'2015-02-25 06:52:40',1,2),(41,3,'2015-02-25 06:52:40',1,2),(42,5,'2015-02-25 06:52:40',1,3),(43,10,'2015-02-25 06:52:41',1,3),(44,3,'2015-02-25 06:52:41',1,2),(45,3,'2015-02-25 06:52:41',1,2),(46,3,'2015-02-25 06:52:41',1,2),(47,5,'2015-02-25 06:52:41',1,3),(48,3,'2015-02-25 06:52:41',1,2),(49,3,'2015-02-25 06:52:41',1,2),(50,3,'2015-02-25 06:52:41',1,2),(51,5,'2015-02-25 06:52:41',1,3),(52,3,'2015-02-25 06:52:42',1,2),(53,3,'2015-02-25 06:52:42',1,2),(54,3,'2015-02-25 06:52:42',1,2),(55,3,'2015-02-25 06:52:42',1,2),(56,3,'2015-02-25 06:52:42',1,2),(57,3,'2015-02-25 06:52:42',1,2),(58,3,'2015-02-25 06:52:42',1,2),(59,3,'2015-02-25 06:52:43',1,2),(60,3,'2015-02-25 06:52:43',1,2),(61,3,'2015-02-25 06:52:43',1,2),(62,3,'2015-02-25 06:52:43',1,2),(63,3,'2015-02-25 06:52:43',1,2),(64,3,'2015-02-25 06:52:43',1,2),(65,3,'2015-02-25 06:52:44',1,2),(66,3,'2015-02-25 06:52:45',1,2),(67,3,'2015-02-25 06:52:45',1,2),(68,3,'2015-02-25 06:52:45',1,2),(69,3,'2015-02-25 06:52:45',1,2),(70,3,'2015-02-25 06:52:46',1,2),(71,3,'2015-02-25 06:52:46',1,2),(72,3,'2015-02-25 06:52:47',1,2),(73,3,'2015-02-25 06:52:47',1,2),(74,3,'2015-02-25 06:52:47',1,2),(75,3,'2015-02-25 06:52:47',1,2),(76,3,'2015-02-25 06:52:47',1,2),(77,3,'2015-02-25 06:52:47',1,2),(78,3,'2015-02-25 06:52:47',1,2),(79,3,'2015-02-25 06:52:47',1,2),(80,3,'2015-02-25 06:52:48',1,2),(81,3,'2015-02-25 06:52:48',1,2),(82,3,'2015-02-25 06:52:48',1,2),(83,3,'2015-02-25 06:52:48',1,2),(84,3,'2015-02-25 06:52:48',1,2),(85,3,'2015-02-25 06:52:48',1,2),(86,3,'2015-02-25 06:52:48',1,2),(87,3,'2015-02-25 06:52:49',1,2),(88,3,'2015-02-25 06:52:49',1,2),(89,3,'2015-02-25 06:52:49',1,2),(90,3,'2015-02-25 06:52:49',1,2),(91,3,'2015-02-25 06:52:49',1,2),(92,3,'2015-02-25 06:52:49',1,2),(93,3,'2015-02-25 06:52:49',1,2),(94,3,'2015-02-25 06:52:49',1,2),(95,3,'2015-02-25 06:52:50',1,2),(96,3,'2015-02-25 06:52:50',1,2),(97,3,'2015-02-25 06:52:50',1,2),(98,10,'2015-02-25 06:52:50',1,3),(99,3,'2015-02-25 06:52:50',1,2),(100,3,'2015-02-25 06:52:51',1,2),(101,3,'2015-02-25 06:52:51',1,2),(102,3,'2015-02-25 06:52:51',1,2),(103,3,'2015-02-25 06:52:51',1,2),(104,3,'2015-02-25 06:52:52',1,2),(105,5,'2015-02-25 06:52:53',1,3),(106,5,'2015-02-25 06:52:55',1,3),(107,10,'2015-02-25 06:52:55',1,3),(108,4,'2015-02-25 06:53:01',1,2),(109,4,'2015-02-25 06:53:01',1,2),(110,4,'2015-02-25 06:53:01',1,2),(111,4,'2015-02-25 06:53:01',1,2),(112,14,'2015-02-25 06:53:05',1,6),(113,15,'2015-02-25 06:53:05',1,6),(114,14,'2015-02-25 06:53:07',1,6),(115,15,'2015-02-25 06:53:07',1,6),(116,14,'2015-02-25 06:53:07',1,6),(117,15,'2015-02-25 06:53:08',1,6),(118,14,'2015-02-25 06:53:08',1,6),(119,15,'2015-02-25 06:53:09',1,6),(120,14,'2015-02-25 06:53:09',1,6),(121,15,'2015-02-25 06:53:09',1,6),(122,14,'2015-02-25 06:53:10',1,6),(123,15,'2015-02-25 06:53:11',1,6),(124,14,'2015-02-25 06:53:14',1,6),(125,15,'2015-02-25 06:53:14',1,6),(126,14,'2015-02-25 06:53:15',1,6),(127,15,'2015-02-25 06:53:15',1,6),(128,14,'2015-02-25 06:53:18',1,6),(129,15,'2015-02-25 06:53:18',1,6),(130,14,'2015-02-25 06:53:19',1,6),(131,15,'2015-02-25 06:53:19',1,6),(132,14,'2015-02-25 06:53:22',1,6),(133,15,'2015-02-25 06:53:22',1,6),(134,14,'2015-02-25 06:53:25',1,6),(135,15,'2015-02-25 06:53:25',1,6),(136,14,'2015-02-25 06:53:27',1,6),(137,15,'2015-02-25 06:53:28',1,6),(138,14,'2015-02-25 06:53:29',1,6),(139,15,'2015-02-25 06:53:29',1,6),(140,14,'2015-02-25 06:53:30',1,6),(141,15,'2015-02-25 06:53:30',1,6),(142,14,'2015-02-25 06:53:33',1,6),(143,15,'2015-02-25 06:53:33',1,6),(144,5,'2015-02-25 06:54:06',1,3),(145,20,'2015-02-25 06:54:11',1,3),(146,9,'2015-02-25 06:54:12',1,3),(147,21,'2015-02-25 06:54:13',1,5),(148,23,'2015-02-25 06:54:13',1,10),(149,24,'2015-02-25 06:54:13',1,1),(150,25,'2015-02-25 06:54:13',1,8),(151,26,'2015-02-25 06:54:14',1,8),(152,21,'2015-02-25 06:54:15',1,5),(153,23,'2015-02-25 06:54:15',1,10),(154,24,'2015-02-25 06:54:16',1,1),(155,25,'2015-02-25 06:54:16',1,8),(156,26,'2015-02-25 06:54:16',1,8),(157,9,'2015-02-25 06:54:17',1,3),(158,21,'2015-02-25 06:54:18',1,5),(159,23,'2015-02-25 06:54:18',1,10),(160,24,'2015-02-25 06:54:18',1,1),(161,25,'2015-02-25 06:54:18',1,8),(162,26,'2015-02-25 06:54:19',1,8),(163,9,'2015-02-25 06:54:20',1,3),(164,21,'2015-02-25 06:54:20',1,5),(165,23,'2015-02-25 06:54:20',1,10),(166,24,'2015-02-25 06:54:20',1,1),(167,25,'2015-02-25 06:54:20',1,8),(168,26,'2015-02-25 06:54:21',1,8),(169,21,'2015-02-25 06:54:22',1,5),(170,23,'2015-02-25 06:54:22',1,10),(171,24,'2015-02-25 06:54:23',1,1),(172,25,'2015-02-25 06:54:23',1,8),(173,26,'2015-02-25 06:54:23',1,8),(174,21,'2015-02-25 06:54:24',1,5),(175,23,'2015-02-25 06:54:25',1,10),(176,24,'2015-02-25 06:54:25',1,1),(177,25,'2015-02-25 06:54:25',1,8),(178,26,'2015-02-25 06:54:25',1,8),(179,20,'2015-02-25 06:54:32',1,3),(180,1,'2015-02-25 06:54:33',1,1),(181,2,'2015-02-25 06:54:33',1,2),(182,3,'2015-02-25 06:54:33',1,2),(183,7,'2015-02-25 06:54:33',1,2),(184,11,'2015-02-25 06:54:34',1,3),(185,21,'2015-02-25 06:54:34',1,5),(186,22,'2015-02-25 06:54:34',1,10),(187,21,'2015-02-25 06:54:36',1,5),(188,22,'2015-02-25 06:54:36',1,10),(189,21,'2015-02-25 06:54:37',1,5),(190,22,'2015-02-25 06:54:37',1,10),(191,1,'2015-02-25 06:54:38',1,1),(192,2,'2015-02-25 06:54:38',1,2),(193,3,'2015-02-25 06:54:38',1,2),(194,5,'2015-02-25 06:54:38',1,3),(195,7,'2015-02-25 06:54:38',1,2),(196,11,'2015-02-25 06:54:39',1,3),(197,5,'2015-02-25 06:54:42',1,3),(198,1,'2015-02-25 06:54:51',1,1),(199,2,'2015-02-25 06:54:51',1,2),(200,3,'2015-02-25 06:54:51',1,2),(201,7,'2015-02-25 06:54:52',1,2),(202,11,'2015-02-25 06:54:52',1,3),(203,18,'2015-02-25 06:54:52',1,8),(204,19,'2015-02-25 06:54:53',1,2),(205,1,'2015-02-25 06:54:54',1,1),(206,2,'2015-02-25 06:54:54',1,2),(207,3,'2015-02-25 06:54:54',1,2),(208,7,'2015-02-25 06:54:55',1,2),(209,11,'2015-02-25 06:54:55',1,3),(210,18,'2015-02-25 06:54:55',1,8),(211,19,'2015-02-25 06:54:55',1,2);

UNLOCK TABLES;

/*Table structure for table `authenticationtypes` */

DROP TABLE IF EXISTS `authenticationtypes`;

CREATE TABLE `authenticationtypes` (
  `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authTypeID`),
  UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `authenticationtypes` */

LOCK TABLES `authenticationtypes` WRITE;

insert  into `authenticationtypes`(`authTypeID`,`authTypeHandle`,`authTypeName`,`authTypeIsEnabled`,`authTypeDisplayOrder`,`pkgID`) values (1,'concrete','Standard',1,0,0),(2,'community','concrete5.org',0,0,0),(3,'facebook','Facebook',0,0,0),(4,'twitter','Twitter',0,0,0),(5,'google','Google',0,0,0);

UNLOCK TABLES;

/*Table structure for table `authtypeconcretecookiemap` */

DROP TABLE IF EXISTS `authtypeconcretecookiemap`;

CREATE TABLE `authtypeconcretecookiemap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `token` (`token`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `authtypeconcretecookiemap` */

LOCK TABLES `authtypeconcretecookiemap` WRITE;

UNLOCK TABLES;

/*Table structure for table `bannedwords` */

DROP TABLE IF EXISTS `bannedwords`;

CREATE TABLE `bannedwords` (
  `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bwID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `bannedwords` */

LOCK TABLES `bannedwords` WRITE;

insert  into `bannedwords`(`bwID`,`bannedWord`) values (1,'fuck'),(2,'shit'),(3,'bitch'),(4,'ass');

UNLOCK TABLES;

/*Table structure for table `basicworkflowpermissionassignments` */

DROP TABLE IF EXISTS `basicworkflowpermissionassignments`;

CREATE TABLE `basicworkflowpermissionassignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `basicworkflowpermissionassignments` */

LOCK TABLES `basicworkflowpermissionassignments` WRITE;

UNLOCK TABLES;

/*Table structure for table `basicworkflowprogressdata` */

DROP TABLE IF EXISTS `basicworkflowprogressdata`;

CREATE TABLE `basicworkflowprogressdata` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`),
  KEY `uIDStarted` (`uIDStarted`),
  KEY `uIDCompleted` (`uIDCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `basicworkflowprogressdata` */

LOCK TABLES `basicworkflowprogressdata` WRITE;

UNLOCK TABLES;

/*Table structure for table `blockfeatureassignments` */

DROP TABLE IF EXISTS `blockfeatureassignments`;

CREATE TABLE `blockfeatureassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  KEY `faID` (`faID`,`cID`,`cvID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `blockfeatureassignments` */

LOCK TABLES `blockfeatureassignments` WRITE;

insert  into `blockfeatureassignments`(`cID`,`cvID`,`bID`,`faID`) values (167,1,16,1),(154,1,110,2),(168,1,112,3),(169,1,114,4),(170,1,116,5),(158,1,125,6),(171,1,132,7),(171,2,132,7),(171,1,139,8),(171,1,143,9),(172,1,146,10),(171,2,164,11),(171,2,165,12);

UNLOCK TABLES;

/*Table structure for table `blockpermissionassignments` */

DROP TABLE IF EXISTS `blockpermissionassignments`;

CREATE TABLE `blockpermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  KEY `bID` (`bID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `blockpermissionassignments` */

LOCK TABLES `blockpermissionassignments` WRITE;

UNLOCK TABLES;

/*Table structure for table `blockrelations` */

DROP TABLE IF EXISTS `blockrelations`;

CREATE TABLE `blockrelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`brID`),
  KEY `bID` (`bID`),
  KEY `originalBID` (`originalBID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `blockrelations` */

LOCK TABLES `blockrelations` WRITE;

insert  into `blockrelations`(`brID`,`bID`,`originalBID`,`relationType`) values (1,164,143,'DUPLICATE'),(2,165,139,'DUPLICATE');

UNLOCK TABLES;

/*Table structure for table `blocks` */

DROP TABLE IF EXISTS `blocks`;

CREATE TABLE `blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`),
  KEY `btID` (`btID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `blocks` */

LOCK TABLES `blocks` WRITE;

insert  into `blocks`(`bID`,`bName`,`bDateAdded`,`bDateModified`,`bFilename`,`bIsActive`,`btID`,`uID`,`btCachedBlockRecord`) values (1,'','2015-02-25 06:52:52','2015-02-25 06:52:52',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjEiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRMb2NhbCI7czo3OiJjb250ZW50IjtzOjIwNzoiPGRpdiBzdHlsZT0icGFkZGluZzogNDBweDsgdGV4dC1hbGlnbjogY2VudGVyIj4gPGlmcmFtZSB3aWR0aD0iODUzIiBoZWlnaHQ9IjQ4MCIgc3JjPSIvL3d3dy55b3V0dWJlLmNvbS9lbWJlZC9WQi1SNzF6azA2VSIgZnJhbWVib3JkZXI9IjAiIGFsbG93ZnVsbHNjcmVlbj48L2lmcmFtZT4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+Ijt9'),(2,'','2015-02-25 06:52:53','2015-02-25 06:52:53',NULL,'0',9,1,NULL),(3,'','2015-02-25 06:52:53','2015-02-25 06:52:53',NULL,'0',10,1,NULL),(4,'','2015-02-25 06:52:53','2015-02-25 06:52:53',NULL,'0',8,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjQiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQSI7fQ=='),(5,'','2015-02-25 06:52:54','2015-02-25 06:52:54',NULL,'0',8,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjUiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQiI7fQ=='),(6,'','2015-02-25 06:52:54','2015-02-25 06:52:54',NULL,'0',7,1,NULL),(7,'','2015-02-25 06:52:54','2015-02-25 06:52:54',NULL,'0',6,1,NULL),(8,'','2015-02-25 06:52:54','2015-02-25 06:52:54',NULL,'0',8,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjgiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQyI7fQ=='),(9,'','2015-02-25 06:53:53','2015-02-25 06:53:53','byline.php','0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjE6IjkiO3M6OToiACoAX3RhYmxlIjtzOjExOiJidFBhZ2VUaXRsZSI7czoxNDoidXNlQ3VzdG9tVGl0bGUiO2k6MDtzOjk6InRpdGxlVGV4dCI7czoxMjoiW1BhZ2UgVGl0bGVdIjt9'),(10,'','2015-02-25 06:53:53','2015-02-25 06:53:53',NULL,'0',2,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjEwIjtzOjk6IgAqAF90YWJsZSI7czozNToiYnRDb3JlUGFnZVR5cGVDb21wb3NlckNvbnRyb2xPdXRwdXQiO3M6MjU6InB0Q29tcG9zZXJPdXRwdXRDb250cm9sSUQiO3M6MToiMSI7fQ=='),(11,'','2015-02-25 06:53:53','2015-02-25 06:53:53',NULL,'0',29,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjExIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnROZXh0UHJldmlvdXMiO3M6OToibmV4dExhYmVsIjtzOjk6Ik5leHQgUG9zdCI7czoxMzoicHJldmlvdXNMYWJlbCI7czo5OiJMYXN0IFBvc3QiO3M6MTE6InBhcmVudExhYmVsIjtzOjA6IiI7czoxMjoibG9vcFNlcXVlbmNlIjtpOjA7czoxODoiZXhjbHVkZVN5c3RlbVBhZ2VzIjtzOjE6IjEiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO30='),(12,'','2015-02-25 06:53:53','2015-02-25 06:53:53',NULL,'0',23,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtzOjI6IjEyIjtzOjk6IgAqAF90YWJsZSI7czoxNToiYnRTaGFyZVRoaXNQYWdlIjt9'),(13,'','2015-02-25 06:53:54','2015-02-25 06:53:54',NULL,'0',20,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjEzIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRUb3BpY0xpc3QiO3M6NDoibW9kZSI7czoxOiJQIjtzOjIzOiJ0b3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czoxNzoiYmxvZ19lbnRyeV90b3BpY3MiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjIiO3M6OToiY1BhcmVudElEIjtpOjE1NjtzOjU6InRpdGxlIjtzOjY6IlRvcGljcyI7fQ=='),(14,'','2015-02-25 06:53:54','2015-02-25 06:53:54',NULL,'0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjIyOntzOjM6ImJJRCI7czoyOiIxNCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjMiO3M6Nzoib3JkZXJCeSI7czo2OiJyYW5kb20iO3M6OToiY1BhcmVudElEIjtzOjM6IjE1NiI7czo1OiJjVGhpcyI7czoxOiIwIjtzOjEzOiJwYWdlTGlzdFRpdGxlIjtzOjEzOiJSZWxhdGVkIFBvc3RzIjtzOjMwOiJyZWxhdGVkVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MTc6ImJsb2dfZW50cnlfdG9waWNzIjtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMCI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMCI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO2k6MDtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIwIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMSI7czo0OiJwdElEIjtpOjY7czo0OiJwZklEIjtpOjA7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMCI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJkaXNwbGF5VGh1bWJuYWlsIjtzOjE6IjAiO3M6MTM6InRydW5jYXRlQ2hhcnMiO2k6MDt9'),(15,'','2015-02-25 06:53:54','2015-02-25 06:53:54',NULL,'0',26,1,NULL),(16,'','2015-02-25 06:53:54','2015-02-25 06:53:54',NULL,'0',5,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE1OntzOjM6ImJJRCI7czoyOiIxNiI7czo5OiIAKgBfdGFibGUiO3M6MTg6ImJ0Q29yZUNvbnZlcnNhdGlvbiI7czo1OiJjbnZJRCI7czoxOiIxIjtzOjEzOiJlbmFibGVQb3N0aW5nIjtzOjE6IjEiO3M6ODoicGFnaW5hdGUiO3M6MToiMSI7czoxMjoiaXRlbXNQZXJQYWdlIjtzOjI6IjUwIjtzOjExOiJkaXNwbGF5TW9kZSI7czo4OiJ0aHJlYWRlZCI7czo3OiJvcmRlckJ5IjtzOjg6ImRhdGVfYXNjIjtzOjE0OiJlbmFibGVPcmRlcmluZyI7aTowO3M6MTk6ImVuYWJsZUNvbW1lbnRSYXRpbmciO3M6MToiMSI7czoxODoiZGlzcGxheVBvc3RpbmdGb3JtIjtzOjM6InRvcCI7czoxNToiYWRkTWVzc2FnZUxhYmVsIjtzOjExOiJBZGQgTWVzc2FnZSI7czoxMDoiZGF0ZUZvcm1hdCI7czo3OiJkZWZhdWx0IjtzOjE2OiJjdXN0b21EYXRlRm9ybWF0IjtzOjA6IiI7czoxNzoiaW5zZXJ0TmV3TWVzc2FnZXMiO3M6MzoidG9wIjt9'),(17,'','2015-02-25 06:53:55','2015-02-25 06:53:55',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjE3IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjA7czo5OiJ0aXRsZVRleHQiO3M6MTI6IltQYWdlIFRpdGxlXSI7fQ=='),(18,'','2015-02-25 06:53:55','2015-02-25 06:53:55',NULL,'0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjIwOntzOjM6ImJJRCI7czoyOiIxOCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtpOjA7czo3OiJvcmRlckJ5IjtzOjExOiJjaHJvbm9fZGVzYyI7czo5OiJjUGFyZW50SUQiO3M6MzoiMTcyIjtzOjU6ImNUaGlzIjtzOjE6IjAiO3M6MTM6InBhZ2VMaXN0VGl0bGUiO3M6MTQ6Ik9wZW4gUG9zaXRpb25zIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMCI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMCI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO2k6MDtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIwIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czo0OiJwdElEIjtpOjA7czo0OiJwZklEIjtpOjA7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMCI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJkaXNwbGF5VGh1bWJuYWlsIjtzOjE6IjAiO3M6MTM6InRydW5jYXRlQ2hhcnMiO2k6MDt9'),(19,'','2015-02-25 06:53:55','2015-02-25 06:53:55',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjE5IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxODI6IiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHA+PGEgaHJlZj0ie0NDTTpDSURfMTcyfSIgc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsiPjxpIGNsYXNzPSJmYSBmYS1hcnJvdy1sZWZ0Ij48L2k+IEJhY2sgdG8gQ2FyZWVyczwvYT48L3A+Ijt9'),(20,'','2015-02-25 06:53:55','2015-02-25 06:53:55',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjIwIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxOToiPGgzPkRlcGFydG1lbnQ8L2gzPiI7fQ=='),(21,'','2015-02-25 06:53:55','2015-02-25 06:53:55',NULL,'0',16,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjIxIjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjIyOiJqb2JfcG9zdGluZ19kZXBhcnRtZW50IjtzOjE4OiJhdHRyaWJ1dGVUaXRsZVRleHQiO3M6MDoiIjtzOjEwOiJkaXNwbGF5VGFnIjtzOjE6InAiO3M6MTA6ImRhdGVGb3JtYXQiO3M6MTE6Im0vZC95IGg6aTphIjtzOjE1OiJ0aHVtYm5haWxIZWlnaHQiO3M6MzoiMjUwIjtzOjE0OiJ0aHVtYm5haWxXaWR0aCI7czozOiIyNTAiO30='),(22,'','2015-02-25 06:53:56','2015-02-25 06:53:56',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjIyIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxNzoiPGgzPkxvY2F0aW9uPC9oMz4iO30='),(23,'','2015-02-25 06:53:56','2015-02-25 06:53:56',NULL,'0',16,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjIzIjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjEyOiJqb2JfbG9jYXRpb24iO3M6MTg6ImF0dHJpYnV0ZVRpdGxlVGV4dCI7czowOiIiO3M6MTA6ImRpc3BsYXlUYWciO3M6MToicCI7czoxMDoiZGF0ZUZvcm1hdCI7czoxMToibS9kL3kgaDppOmEiO3M6MTU6InRodW1ibmFpbEhlaWdodCI7czozOiIyNTAiO3M6MTQ6InRodW1ibmFpbFdpZHRoIjtzOjM6IjI1MCI7fQ=='),(24,'','2015-02-25 06:53:56','2015-02-25 06:53:56',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI0IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyNDoiPGgzPkpvYiBJbmZvcm1hdGlvbjwvaDM+Ijt9'),(25,'','2015-02-25 06:53:56','2015-02-25 06:53:56',NULL,'0',2,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI1IjtzOjk6IgAqAF90YWJsZSI7czozNToiYnRDb3JlUGFnZVR5cGVDb21wb3NlckNvbnRyb2xPdXRwdXQiO3M6MjU6InB0Q29tcG9zZXJPdXRwdXRDb250cm9sSUQiO3M6MToiMiI7fQ=='),(26,'','2015-02-25 06:53:56','2015-02-25 06:53:56',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo2MzoiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YnIvPjxici8+Ijt9'),(27,'','2015-02-25 06:53:56','2015-02-25 06:53:56',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjI3IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjA7czo5OiJ0aXRsZVRleHQiO3M6MTI6IltQYWdlIFRpdGxlXSI7fQ=='),(28,'','2015-02-25 06:53:57','2015-02-25 06:53:57',NULL,'0',2,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI4IjtzOjk6IgAqAF90YWJsZSI7czozNToiYnRDb3JlUGFnZVR5cGVDb21wb3NlckNvbnRyb2xPdXRwdXQiO3M6MjU6InB0Q29tcG9zZXJPdXRwdXRDb250cm9sSUQiO3M6MToiMyI7fQ=='),(29,'','2015-02-25 06:53:57','2015-02-25 06:53:57',NULL,'0',16,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjI5IjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjE0OiJwcm9qZWN0X2NsaWVudCI7czoxODoiYXR0cmlidXRlVGl0bGVUZXh0IjtzOjc6IkNsaWVudDoiO3M6MTA6ImRpc3BsYXlUYWciO3M6MzoiZGl2IjtzOjEwOiJkYXRlRm9ybWF0IjtzOjExOiJtL2QveSBoOmk6YSI7czoxNToidGh1bWJuYWlsSGVpZ2h0IjtzOjM6IjI1MCI7czoxNDoidGh1bWJuYWlsV2lkdGgiO3M6MzoiMjUwIjt9'),(30,'','2015-02-25 06:53:57','2015-02-25 06:53:57',NULL,'0',16,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjMwIjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjEzOiJwcm9qZWN0X3Rhc2tzIjtzOjE4OiJhdHRyaWJ1dGVUaXRsZVRleHQiO3M6NToiVGFzazoiO3M6MTA6ImRpc3BsYXlUYWciO3M6MzoiZGl2IjtzOjEwOiJkYXRlRm9ybWF0IjtzOjExOiJtL2QveSBoOmk6YSI7czoxNToidGh1bWJuYWlsSGVpZ2h0IjtzOjM6IjI1MCI7czoxNDoidGh1bWJuYWlsV2lkdGgiO3M6MzoiMjUwIjt9'),(31,'','2015-02-25 06:53:57','2015-02-25 06:53:57',NULL,'0',16,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjMxIjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjE0OiJwcm9qZWN0X3NraWxscyI7czoxODoiYXR0cmlidXRlVGl0bGVUZXh0IjtzOjc6IlNraWxsczoiO3M6MTA6ImRpc3BsYXlUYWciO3M6MzoiZGl2IjtzOjEwOiJkYXRlRm9ybWF0IjtzOjExOiJtL2QveSBoOmk6YSI7czoxNToidGh1bWJuYWlsSGVpZ2h0IjtzOjM6IjI1MCI7czoxNDoidGh1bWJuYWlsV2lkdGgiO3M6MzoiMjUwIjt9'),(32,'','2015-02-25 06:53:57','2015-02-25 06:53:57',NULL,'0',2,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjMyIjtzOjk6IgAqAF90YWJsZSI7czozNToiYnRDb3JlUGFnZVR5cGVDb21wb3NlckNvbnRyb2xPdXRwdXQiO3M6MjU6InB0Q29tcG9zZXJPdXRwdXRDb250cm9sSUQiO3M6MToiNCI7fQ=='),(33,'','2015-02-25 06:53:57','2015-02-25 06:53:57',NULL,'0',26,1,NULL),(34,'','2015-02-25 06:53:58','2015-02-25 06:53:58','thumbnail_grid','0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjIzOntzOjM6ImJJRCI7czoyOiIzNCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjMiO3M6Nzoib3JkZXJCeSI7czo2OiJyYW5kb20iO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJjVGhpcyI7czoxOiIwIjtzOjEzOiJwYWdlTGlzdFRpdGxlIjtzOjE2OiJSZWxhdGVkIFByb2plY3RzIjtzOjMwOiJyZWxhdGVkVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MTQ6InByb2plY3RfdG9waWNzIjtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMCI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMCI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO2k6MDtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIwIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMSI7czo0OiJwdElEIjtpOjg7czo0OiJwZklEIjtpOjA7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMCI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJub1Jlc3VsdHNNZXNzYWdlIjtzOjI2OiJObyByZWxhdGVkIHByb2plY3RzIGZvdW5kLiI7czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIwIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtpOjA7fQ=='),(35,'','2015-02-25 06:53:58','2015-02-25 06:53:58',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjM1IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjA7czo5OiJ0aXRsZVRleHQiO3M6MTI6IltQYWdlIFRpdGxlXSI7fQ=='),(36,'','2015-02-25 06:53:58','2015-02-25 06:53:58',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjM2IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiIxIjt9'),(37,'','2015-02-25 06:53:58','2015-02-25 06:53:58',NULL,'0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjIzOntzOjM6ImJJRCI7czoyOiIzNyI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjI6IjEwIjtzOjc6Im9yZGVyQnkiO3M6MTE6ImNocm9ub19kZXNjIjtzOjk6ImNQYXJlbnRJRCI7aTowO3M6NToiY1RoaXMiO3M6MToiMCI7czoxNjoidXNlQnV0dG9uRm9yTGluayI7czoxOiIwIjtzOjE0OiJidXR0b25MaW5rVGV4dCI7czowOiIiO3M6MTE6ImluY2x1ZGVOYW1lIjtzOjE6IjEiO3M6MTg6ImluY2x1ZGVEZXNjcmlwdGlvbiI7czoxOiIxIjtzOjExOiJpbmNsdWRlRGF0ZSI7czoxOiIxIjtzOjIxOiJpbmNsdWRlQWxsRGVzY2VuZGVudHMiO3M6MToiMCI7czo4OiJwYWdpbmF0ZSI7aToxO3M6MTQ6ImRpc3BsYXlBbGlhc2VzIjtzOjE6IjAiO3M6MjM6ImVuYWJsZUV4dGVybmFsRmlsdGVyaW5nIjtzOjE6IjEiO3M6MTU6ImZpbHRlckJ5UmVsYXRlZCI7czoxOiIwIjtzOjQ6InB0SUQiO2k6NjtzOjQ6InBmSUQiO2k6MTtzOjE3OiJ0cnVuY2F0ZVN1bW1hcmllcyI7czoxOiIwIjtzOjE5OiJkaXNwbGF5RmVhdHVyZWRPbmx5IjtzOjE6IjAiO3M6MTY6Im5vUmVzdWx0c01lc3NhZ2UiO3M6MjI6Ik5vIHBvc3RzIHRvIHRoaXMgYmxvZy4iO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMCI7czoxMzoidHJ1bmNhdGVDaGFycyI7aTowO30='),(38,'','2015-02-25 06:53:59','2015-02-25 06:53:59',NULL,'0',20,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjM4IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRUb3BpY0xpc3QiO3M6NDoibW9kZSI7czoxOiJTIjtzOjIzOiJ0b3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjIiO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJ0aXRsZSI7czo2OiJUb3BpY3MiO30='),(39,'','2015-02-25 06:53:59','2015-02-25 06:53:59',NULL,'0',13,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjM5IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnREYXRlTmF2aWdhdGlvbiI7czo1OiJ0aXRsZSI7czo4OiJBcmNoaXZlcyI7czoxNDoiZmlsdGVyQnlQYXJlbnQiO3M6MToiMSI7czoxNzoicmVkaXJlY3RUb1Jlc3VsdHMiO3M6MToiMCI7czo5OiJjUGFyZW50SUQiO2k6MTU2O3M6OToiY1RhcmdldElEIjtpOjA7czo0OiJwdElEIjtpOjY7fQ=='),(40,'','2015-02-25 06:53:59','2015-02-25 06:53:59',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjQwIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjA7czo5OiJ0aXRsZVRleHQiO3M6MTI6IltQYWdlIFRpdGxlXSI7fQ=='),(41,'','2015-02-25 06:53:59','2015-02-25 06:53:59','flat_filter.php','0',20,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjQxIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRUb3BpY0xpc3QiO3M6NDoibW9kZSI7czoxOiJTIjtzOjIzOiJ0b3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjMiO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJ0aXRsZSI7czowOiIiO30='),(42,'','2015-02-25 06:54:00','2015-02-25 06:54:00','thumbnail_grid','0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjIzOntzOjM6ImJJRCI7czoyOiI0MiI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtpOjA7czo3OiJvcmRlckJ5IjtzOjExOiJjaHJvbm9fZGVzYyI7czo5OiJjUGFyZW50SUQiO2k6MDtzOjU6ImNUaGlzIjtzOjE6IjAiO3M6MTY6InVzZUJ1dHRvbkZvckxpbmsiO3M6MToiMCI7czoxNDoiYnV0dG9uTGlua1RleHQiO3M6MDoiIjtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMCI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMCI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO2k6MTtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIxIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czo0OiJwdElEIjtpOjg7czo0OiJwZklEIjtpOjA7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMCI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJub1Jlc3VsdHNNZXNzYWdlIjtzOjE4OiJObyBwcm9qZWN0cyBmb3VuZC4iO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMSI7czoxMzoidHJ1bmNhdGVDaGFycyI7aTowO30='),(43,'','2015-02-25 06:54:00','2015-02-25 06:54:00',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjQzIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxNTc6IiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cD4xMjM0IFNFIFN0cmVldFZpZXc8L3A+PHA+U3VpdGUgMzAxPC9wPjxwPlBvcnRsYW5kLCBPUiA5ODEwMTwvcD48cD48YSBocmVmPSJ7Q0NNOkNJRF8xNTh9Ij5WaWV3IG9uIEdvb2dsZSBNYXBzPC9hPjwvcD4iO30='),(44,'','2015-02-25 06:54:00','2015-02-25 06:54:00',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjQ0IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo2ODoiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPsKpIDIwMTTCoEVsZW1lbnRhbCBUaGVtZTwvcD4iO30='),(45,'','2015-02-25 06:54:00','2015-02-25 06:54:00',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjQ1IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozOTg6IiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHA+PGEgaHJlZj0ie0NDTTpDSURfMTczfSI+RkFRIC8gSGVscDwvYT48L3A+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPjxhIGhyZWY9IntDQ006Q0lEXzE1M30iPkNhc2UgU3R1ZGllczwvYT48L3A+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPjxhIGhyZWY9IntDQ006Q0lEXzE1Nn0iPkJsb2c8L2E+PC9wPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cD48YSBocmVmPSJ7Q0NNOkNJRF8xfSI+QW5vdGhlciBMaW5rPC9hPjwvcD4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIjt9'),(46,'','2015-02-25 06:54:00','2015-02-25 06:54:00',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjQ2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo1ODoiPGEgaHJlZj0ie0NDTTpDSURfMX0iIGlkPSJmb290ZXItc2l0ZS10aXRsZSI+RWxlbWVudGFsPC9hPiI7fQ=='),(47,'','2015-02-25 06:54:01','2015-02-25 06:54:01',NULL,'0',21,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtzOjI6IjQ3IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRTb2NpYWxMaW5rcyI7fQ=='),(48,'','2015-02-25 06:54:01','2015-02-25 06:54:01','responsive_header_navigation','0',11,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiI0OCI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtpOjA7czoyMzoiZGlzcGxheVBhZ2VzSW5jbHVkZVNlbGYiO2k6MDtzOjE1OiJkaXNwbGF5U3ViUGFnZXMiO3M6MzoiYWxsIjtzOjIwOiJkaXNwbGF5U3ViUGFnZUxldmVscyI7czo2OiJjdXN0b20iO3M6MjM6ImRpc3BsYXlTdWJQYWdlTGV2ZWxzTnVtIjtzOjE6IjEiO3M6MjM6ImRpc3BsYXlVbmF2YWlsYWJsZVBhZ2VzIjtpOjA7fQ=='),(49,'','2015-02-25 06:54:01','2015-02-25 06:54:01',NULL,'0',32,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjQ5IjtzOjk6IgAqAF90YWJsZSI7czo4OiJidFNlYXJjaCI7czo1OiJ0aXRsZSI7czowOiIiO3M6MTA6ImJ1dHRvblRleHQiO3M6MDoiIjtzOjE0OiJiYXNlU2VhcmNoUGF0aCI7czowOiIiO3M6MTA6InBvc3RUb19jSUQiO2k6MTU3O3M6MTA6InJlc3VsdHNVUkwiO3M6MDoiIjt9'),(50,'','2015-02-25 06:54:01','2015-02-25 06:54:01',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjUwIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo1ODoiPGEgaHJlZj0ie0NDTTpDSURfMX0iIGlkPSJoZWFkZXItc2l0ZS10aXRsZSI+RWxlbWVudGFsPC9hPiI7fQ=='),(51,'','2015-02-25 06:54:01','2015-02-25 06:54:01',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjUxIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMSI7fQ=='),(52,'','2015-02-25 06:54:02','2015-02-25 06:54:02',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjUyIjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiIyIjt9'),(53,'','2015-02-25 06:54:02','2015-02-25 06:54:02',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjUzIjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czo2OiJwZW5jaWwiO3M6NToidGl0bGUiO3M6MTI6IkVhc3kgdG8gRWRpdCI7czo5OiJwYXJhZ3JhcGgiO3M6MjM0OiIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUGVsbGVudGVzcXVlIHVsdHJpY2llcyBsaWd1bGEgdmVsIG5lcXVlIGRpY3R1bSwgZXUgbW9sbGlzIHRvcnRvciBhZGlwaXNjaW5nLiBFdGlhbSBjb25ndWUsIGVzdCB2ZWwgdGluY2lkdW50IHZlc3RpYnVsdW0sIG51bmMgbnVuYyBwb3J0YSBudWxsYSwgYXQgYWRpcGlzY2luZyBuZXF1ZSB0ZWxsdXMgcXVpcyB1cm5hLiAiO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7aTowO30='),(54,'','2015-02-25 06:54:02','2015-02-25 06:54:02',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjU0IjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czozOiJleWUiO3M6NToidGl0bGUiO3M6MTM6IlBpeGVsIFBlcmZlY3QiO3M6OToicGFyYWdyYXBoIjtzOjIzNDoiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBlbGxlbnRlc3F1ZSB1bHRyaWNpZXMgbGlndWxhIHZlbCBuZXF1ZSBkaWN0dW0sIGV1IG1vbGxpcyB0b3J0b3IgYWRpcGlzY2luZy4gRXRpYW0gY29uZ3VlLCBlc3QgdmVsIHRpbmNpZHVudCB2ZXN0aWJ1bHVtLCBudW5jIG51bmMgcG9ydGEgbnVsbGEsIGF0IGFkaXBpc2NpbmcgbmVxdWUgdGVsbHVzIHF1aXMgdXJuYS4gIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDt9'),(55,'','2015-02-25 06:54:03','2015-02-25 06:54:03',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjU1IjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czoxMjoieW91dHViZS1wbGF5IjtzOjU6InRpdGxlIjtzOjEwOiJNZWRpYSBSaWNoIjtzOjk6InBhcmFncmFwaCI7czoyMzQ6IiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQZWxsZW50ZXNxdWUgdWx0cmljaWVzIGxpZ3VsYSB2ZWwgbmVxdWUgZGljdHVtLCBldSBtb2xsaXMgdG9ydG9yIGFkaXBpc2NpbmcuIEV0aWFtIGNvbmd1ZSwgZXN0IHZlbCB0aW5jaWR1bnQgdmVzdGlidWx1bSwgbnVuYyBudW5jIHBvcnRhIG51bGxhLCBhdCBhZGlwaXNjaW5nIG5lcXVlIHRlbGx1cyBxdWlzIHVybmEuICI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7fQ=='),(56,'','2015-02-25 06:54:03','2015-02-25 06:54:03',NULL,'0',26,1,NULL),(57,'','2015-02-25 06:54:03','2015-02-25 06:54:03',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjU3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozNzA6IjxwIHN0eWxlPSJ0ZXh0LWFsaWduOiBjZW50ZXIiPjxzcGFuIGNsYXNzPSJ0aXRsZS1jYXBzLWJvbGQiPlByZXNlbnRpbmcgeW91ciBCdXNpbmVzcyBoYXMgbmV2ZXIgYmVlbiBzbyBlYXN5PC9zcGFuPjwvcD48cCBzdHlsZT0idGV4dC1hbGlnbjogY2VudGVyOyI+UGVsbGVudGVzcXVlIHVsdHJpY2llcyBsaWd1bGEgdmVsIG5lcXVlIGRpY3R1bSwgZXUgbW9sbGlzIHRvcnRvciBhZGlwaXNjaW5nLjwvcD48cCBzdHlsZT0idGV4dC1hbGlnbjogY2VudGVyOyI+RXRpYW0gY29uZ3VlLCBlc3QgdmVsIHRpbmNpZHVudCB2ZXN0aWJ1bHVtLCBudW5jIG51bmMgcG9ydGEgbnVsbGEsIGF0IGFkaXBpc2NpbmcgbmVxdWUgdGVsbHVzIHF1aXMgdXJuYS7CoDwvcD4iO30='),(58,'','2015-02-25 06:54:03','2015-02-25 06:54:03','thumbnail_grid','0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjIzOntzOjM6ImJJRCI7czoyOiI1OCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjMiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJjVGhpcyI7czoxOiIwIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjEiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtzOjEyOiJWaWV3IFByb2plY3QiO3M6MTE6ImluY2x1ZGVOYW1lIjtzOjE6IjEiO3M6MTg6ImluY2x1ZGVEZXNjcmlwdGlvbiI7czoxOiIxIjtzOjExOiJpbmNsdWRlRGF0ZSI7czoxOiIwIjtzOjIxOiJpbmNsdWRlQWxsRGVzY2VuZGVudHMiO3M6MToiMCI7czo4OiJwYWdpbmF0ZSI7aTowO3M6MTQ6ImRpc3BsYXlBbGlhc2VzIjtzOjE6IjAiO3M6MjM6ImVuYWJsZUV4dGVybmFsRmlsdGVyaW5nIjtzOjE6IjAiO3M6MTU6ImZpbHRlckJ5UmVsYXRlZCI7czoxOiIwIjtzOjQ6InB0SUQiO2k6ODtzOjQ6InBmSUQiO2k6MDtzOjE3OiJ0cnVuY2F0ZVN1bW1hcmllcyI7czoxOiIwIjtzOjE5OiJkaXNwbGF5RmVhdHVyZWRPbmx5IjtzOjE6IjEiO3M6MTY6Im5vUmVzdWx0c01lc3NhZ2UiO3M6MDoiIjtzOjE2OiJkaXNwbGF5VGh1bWJuYWlsIjtzOjE6IjEiO3M6MTM6InRydW5jYXRlQ2hhcnMiO2k6MDt9'),(59,'','2015-02-25 06:54:03','2015-02-25 06:54:03',NULL,'0',26,1,NULL),(60,'','2015-02-25 06:54:04','2015-02-25 06:54:04',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjYwIjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiIzIjt9'),(61,'','2015-02-25 06:54:04','2015-02-25 06:54:04',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjYxIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyNToiPGg1PkxhdGVzdCBCbG9nIFBvc3Q8L2g1PiI7fQ=='),(62,'','2015-02-25 06:54:04','2015-02-25 06:54:04',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjYyIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozMDoiPGg1Pk5vdyBPcGVuIEZvciBCdXNpbmVzczwvaDU+Ijt9'),(63,'','2015-02-25 06:54:04','2015-02-25 06:54:04',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjYzIjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI0Ijt9'),(64,'','2015-02-25 06:54:05','2015-02-25 06:54:05',NULL,'0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjIzOntzOjM6ImJJRCI7czoyOiI2NCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjEiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJjVGhpcyI7czoxOiIwIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjAiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtzOjA6IiI7czoxMToiaW5jbHVkZU5hbWUiO3M6MToiMCI7czoxODoiaW5jbHVkZURlc2NyaXB0aW9uIjtzOjE6IjAiO3M6MTE6ImluY2x1ZGVEYXRlIjtzOjE6IjAiO3M6MjE6ImluY2x1ZGVBbGxEZXNjZW5kZW50cyI7czoxOiIwIjtzOjg6InBhZ2luYXRlIjtpOjA7czoxNDoiZGlzcGxheUFsaWFzZXMiO3M6MToiMCI7czoyMzoiZW5hYmxlRXh0ZXJuYWxGaWx0ZXJpbmciO3M6MToiMCI7czoxNToiZmlsdGVyQnlSZWxhdGVkIjtzOjE6IjAiO3M6NDoicHRJRCI7aTo2O3M6NDoicGZJRCI7aTowO3M6MTc6InRydW5jYXRlU3VtbWFyaWVzIjtzOjE6IjAiO3M6MTk6ImRpc3BsYXlGZWF0dXJlZE9ubHkiO3M6MToiMCI7czoxNjoibm9SZXN1bHRzTWVzc2FnZSI7czowOiIiO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMSI7czoxMzoidHJ1bmNhdGVDaGFycyI7aTowO30='),(65,'','2015-02-25 06:54:05','2015-02-25 06:54:05',NULL,'0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjIzOntzOjM6ImJJRCI7czoyOiI2NSI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjEiO3M6Nzoib3JkZXJCeSI7czoxMToiZGlzcGxheV9hc2MiO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJjVGhpcyI7czoxOiIwIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjAiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtzOjA6IiI7czoxMToiaW5jbHVkZU5hbWUiO3M6MToiMSI7czoxODoiaW5jbHVkZURlc2NyaXB0aW9uIjtzOjE6IjEiO3M6MTE6ImluY2x1ZGVEYXRlIjtzOjE6IjAiO3M6MjE6ImluY2x1ZGVBbGxEZXNjZW5kZW50cyI7czoxOiIwIjtzOjg6InBhZ2luYXRlIjtpOjA7czoxNDoiZGlzcGxheUFsaWFzZXMiO3M6MToiMCI7czoyMzoiZW5hYmxlRXh0ZXJuYWxGaWx0ZXJpbmciO3M6MToiMCI7czoxNToiZmlsdGVyQnlSZWxhdGVkIjtzOjE6IjAiO3M6NDoicHRJRCI7aTo2O3M6NDoicGZJRCI7aTowO3M6MTc6InRydW5jYXRlU3VtbWFyaWVzIjtzOjE6IjAiO3M6MTk6ImRpc3BsYXlGZWF0dXJlZE9ubHkiO3M6MToiMCI7czoxNjoibm9SZXN1bHRzTWVzc2FnZSI7czowOiIiO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMCI7czoxMzoidHJ1bmNhdGVDaGFycyI7aTowO30='),(66,'','2015-02-25 06:54:05','2015-02-25 06:54:05',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjY2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo2MTY6IjxwPiAgPHNwYW4gY2xhc3M9InRpdGxlLXRoaW4iPldlIHNwZWNpYWxpemUgaW4gbWFraW5nIHlvdXIgY29uY2VwdHMgYSByZWFsaXR5Ljwvc3Bhbj4gIDwvcD4gIDxwPiAgICBTZWQgY3Vyc3VzIGZhY2lsaXNpcyBkaWduaXNzaW0uIEFsaXF1YW0gcmhvbmN1cyBlbmltIGV0IHBlbGxlbnRlc3F1ZSB2YXJpdXMuIE51bGxhIHNvZGFsZXMgbmliaCBsb3JlbSwgc2l0IGFtZXQgaW1wZXJkaWV0IGFyY3UgY29tbW9kbyBzaXQgYW1ldC4gTWF1cmlzIHNlZCBzY2VsZXJpc3F1ZSBuaXNsLiBVdCBhdWN0b3IgaXBzdW0gdGVsbHVzLCB2ZWwgdml2ZXJyYSBtYXNzYSBlbGVtZW50dW0gc2l0IGFtZXQuICA8L3A+ICA8cD4gICAgU2VkIGFkaXBpc2NpbmcgdGVtcHVzIHNlbSBldSBtb2xlc3RpZS4gQWVuZWFuIGxhb3JlZXQgcHJldGl1bSBhbnRlIHZpdGFlIHVsdHJpY2VzLiBBZW5lYW4gZXUgZ3JhdmlkYSBtYWduYSwgdmVsIGFsaXF1ZXQgbWFnbmEuIEluIGF1Y3RvciBjb252YWxsaXMgZ3JhdmlkYS48YnI+ICA8L3A+ICA8YnIvPiAgPHA+ICA8YSBocmVmPSJ7Q0NNOkNJRF8xNTh9Ij48c3BhbiBjbGFzcz0iYnRuIGJ0bi1zdWNjZXNzIj5Db250YWN0IFVzIFRvZGF5PC9zcGFuPjwvYT4gIDwvcD4iO30='),(67,'','2015-02-25 06:54:06','2015-02-25 06:54:06',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjY3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxMDk6IjxwIHN0eWxlPSJ0ZXh0LWFsaWduOiBjZW50ZXIiPjxzcGFuIGNsYXNzPSJ0aXRsZS1jYXBzIj5DdXN0b21pemFibGUgZm9vdGVyIGFyZWEgd2l0aCBhY2NlbnQgY2xhc3MuPC9zcGFuPjwvcD4iO30='),(68,'','2015-02-25 06:54:07','2015-02-25 06:54:07',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjY4IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjE7czo5OiJ0aXRsZVRleHQiO3M6MTM6Ik91ciBFeHBlcnRpc2UiO30='),(69,'','2015-02-25 06:54:07','2015-02-25 06:54:07',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjY5IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI1Ijt9'),(70,'','2015-02-25 06:54:07','2015-02-25 06:54:08','hover_description','0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjcwIjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czo0OiJzdGFyIjtzOjU6InRpdGxlIjtzOjc6IlF1YWxpdHkiO3M6OToicGFyYWdyYXBoIjtzOjkwOiJMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBOdWxsYSBzb2RhbGVzIG5vbiBsZW8gaWQgYWxpcXVldC4iO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7aTowO30='),(71,'','2015-02-25 06:54:08','2015-02-25 06:54:08','hover_description','0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjcxIjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czo0OiJ0aW50IjtzOjU6InRpdGxlIjtzOjY6IkRlc2lnbiI7czo5OiJwYXJhZ3JhcGgiO3M6OTA6IkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIE51bGxhIHNvZGFsZXMgbm9uIGxlbyBpZCBhbGlxdWV0LiI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7fQ=='),(72,'','2015-02-25 06:54:08','2015-02-25 06:54:08','hover_description','0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjcyIjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czozOiJjb2ciO3M6NToidGl0bGUiO3M6MTE6IkRldmVsb3BtZW50IjtzOjk6InBhcmFncmFwaCI7czo5MDoiTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gTnVsbGEgc29kYWxlcyBub24gbGVvIGlkIGFsaXF1ZXQuIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDt9'),(73,'','2015-02-25 06:54:08','2015-02-25 06:54:08','hover_description','0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjczIjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czo0OiJsb2NrIjtzOjU6InRpdGxlIjtzOjg6IlNlY3VyaXR5IjtzOjk6InBhcmFncmFwaCI7czo5MDoiTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gTnVsbGEgc29kYWxlcyBub24gbGVvIGlkIGFsaXF1ZXQuIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDt9'),(74,'','2015-02-25 06:54:08','2015-02-25 06:54:08',NULL,'0',26,1,NULL),(75,'','2015-02-25 06:54:08','2015-02-25 06:54:08',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc1IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI2Ijt9'),(76,'','2015-02-25 06:54:09','2015-02-25 06:54:09',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo5Nzk6IjxoMz5Bd2Vzb21lIEZlYXR1cmVzPC9oMz48cD5DdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4gTW9yYmkgYXQgc3VzY2lwaXQgcmlzdXMuIFNlZCBjb25zZXF1YXQgZWxlaWZlbmQgbWV0dXMsIHZpdGFlIG1hbGVzdWFkYSBlcm9zIGVsZW1lbnR1bSBzZWQuIDwvcD48aDM+R3VpZGUgQm9va3M8L2gzPjxwPkZ1c2NlIHJpc3VzIGZlbGlzLCB2aXZlcnJhIGV0IGRpZ25pc3NpbSBhdCwgbG9ib3J0aXMgbm9uIGVzdC4gTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gTnVsbGFtIHNpdCBhbWV0IGNvbnNlY3RldHVyIGxhY3VzLiBWZXN0aWJ1bHVtIG5lcXVlIGxlY3R1cywgZWdlc3RhcyBub24gY3Vyc3VzIHZpdGFlLCBhbGlxdWFtIGF0IG1hZ25hLiBFdGlhbSBhbGlxdWFtLCBqdXN0byBldCB2YXJpdXMgZWxlaWZlbmQsIGR1aSBsZWN0dXMgZWdlc3RhcyBudW5jLCB2ZWwgbWFsZXN1YWRhIG5pc2wgcHVydXMgbmVjIG1ldHVzLiA8L3A+PGgzPkFkbWluIEFjY291bnRzPC9oMz48cD5GdXNjZSByaXN1cyBmZWxpcywgdml2ZXJyYSBldCBkaWduaXNzaW0gYXQsIGxvYm9ydGlzIG5vbiBlc3QuIExvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIE51bGxhbSBzaXQgYW1ldCBjb25zZWN0ZXR1ciBsYWN1cy4gVmVzdGlidWx1bSBuZXF1ZSBsZWN0dXMsIGVnZXN0YXMgbm9uIGN1cnN1cyB2aXRhZSwgYWxpcXVhbSBhdCBtYWduYS4gRXRpYW0gYWxpcXVhbSwganVzdG8gZXQgdmFyaXVzIGVsZWlmZW5kLCBkdWkgbGVjdHVzIGVnZXN0YXMgbnVuYywgdmVsIG1hbGVzdWFkYSBuaXNsIHB1cnVzIG5lYyBtZXR1cy7CoDwvcD4iO30='),(77,'','2015-02-25 06:54:09','2015-02-25 06:54:09',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo4MTg6IjxoMz5TdXBwb3J0PC9oMz48cD5DdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4gTW9yYmkgYXQgc3VzY2lwaXQgcmlzdXMuIFNlZCBjb25zZXF1YXQgZWxlaWZlbmQgbWV0dXMsIHZpdGFlIG1hbGVzdWFkYSBlcm9zIGVsZW1lbnR1bSBzZWQuIDwvcD48aDM+QWRkaXRpb25hbCBPcHRpb25zPC9oMz48cD5GdXNjZSByaXN1cyBmZWxpcywgdml2ZXJyYSBldCBkaWduaXNzaW0gYXQsIGxvYm9ydGlzIG5vbiBlc3QuIExvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIE51bGxhbSBzaXQgYW1ldCBjb25zZWN0ZXR1ciBsYWN1cy4gVmVzdGlidWx1bSBuZXF1ZSBsZWN0dXMsIGVnZXN0YXMgbm9uIGN1cnN1cyB2aXRhZSwgYWxpcXVhbSBhdCBtYWduYS7CoDwvcD48cD5FdGlhbSBhbGlxdWFtLCBqdXN0byBldCB2YXJpdXMgZWxlaWZlbmQsIGR1aSBsZWN0dXMgZWdlc3RhcyBudW5jLCB2ZWwgbWFsZXN1YWRhIG5pc2wgcHVydXMgbmVjIG1ldHVzLiBJbiBncmF2aWRhIHR1cnBpcyBhIHBoYXJldHJhIGNvbW1vZG8uIERvbmVjIG5vbiB0dXJwaXMgdnVscHV0YXRlLCBmYXVjaWJ1cyBtZXR1cyBhLCBjb25zZWN0ZXR1ciBudW5jLiBNb3JiaSB0b3J0b3IgbmlzaSwgaGVuZHJlcml0IHNlZCBsYW9yZWV0IGVnZXQsIGZlcm1lbnR1bSBldCBqdXN0by4gU3VzcGVuZGlzc2UgcG90ZW50aS48L3A+Ijt9'),(78,'','2015-02-25 06:54:09','2015-02-25 06:54:09',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc4IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo5ODoiPHAgc3R5bGU9InRleHQtYWxpZ246IGNlbnRlciI+PHNwYW4gY2xhc3M9InRpdGxlLWNhcHMiPldoYXQgQ2xpZW50cyBBcmUgU2F5aW5nIEFib3V0IFVzPC9zcGFuPjwvcD4iO30='),(79,'','2015-02-25 06:54:10','2015-02-25 06:54:10',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc5IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI3Ijt9'),(80,'','2015-02-25 06:54:10','2015-02-25 06:54:10',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjgwIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRUZXN0aW1vbmlhbCI7czozOiJmSUQiO3M6MToiMSI7czo0OiJuYW1lIjtzOjEyOiJGcmFueiBNYXJ1bmEiO3M6ODoicG9zaXRpb24iO3M6MTM6IkNFTyAmIEZvdW5kZXIiO3M6NzoiY29tcGFueSI7czo5OiJjb25jcmV0ZTUiO3M6MTA6ImNvbXBhbnlVUkwiO3M6MjA6Imh0dHA6Ly9jb25jcmV0ZTUub3JnIjtzOjk6InBhcmFncmFwaCI7czoxNzI6IkN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIE5hbSBiaWJlbmR1bSBsZW8gbmlzaSwgbGFjaW5pYSBtb2xlc3RpZSBhcmN1IGNvbnNlcXVhdCBxdWlzLiBNb3JiaSBhdCBzdXNjaXBpdCByaXN1cy4iO30='),(81,'','2015-02-25 06:54:10','2015-02-25 06:54:10',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjgxIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRUZXN0aW1vbmlhbCI7czozOiJmSUQiO3M6MToiMSI7czo0OiJuYW1lIjtzOjg6IkpvaG4gRG9lIjtzOjg6InBvc2l0aW9uIjtzOjE5OiJNYXJrZXRpbmcgRGlyZWN0b3J5IjtzOjc6ImNvbXBhbnkiO3M6OToiQ29tcGFueUNvIjtzOjEwOiJjb21wYW55VVJMIjtzOjA6IiI7czo5OiJwYXJhZ3JhcGgiO3M6MTcyOiJDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4gTW9yYmkgYXQgc3VzY2lwaXQgcmlzdXMuIjt9'),(82,'','2015-02-25 06:54:10','2015-02-25 06:54:10',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjgyIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRUZXN0aW1vbmlhbCI7czozOiJmSUQiO3M6MToiMSI7czo0OiJuYW1lIjtzOjEzOiJBbmRyZXcgRW1ibGVyIjtzOjg6InBvc2l0aW9uIjtzOjEzOiJDVE8gJiBGb3VuZGVyIjtzOjc6ImNvbXBhbnkiO3M6OToiY29uY3JldGU1IjtzOjEwOiJjb21wYW55VVJMIjtzOjIwOiJodHRwOi8vY29uY3JldGU1Lm9yZyI7czo5OiJwYXJhZ3JhcGgiO3M6MTcyOiJDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4gTW9yYmkgYXQgc3VzY2lwaXQgcmlzdXMuIjt9'),(83,'','2015-02-25 06:54:11','2015-02-25 06:54:11',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjgzIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRUZXN0aW1vbmlhbCI7czozOiJmSUQiO3M6MToiMSI7czo0OiJuYW1lIjtzOjg6IkphbmUgRG9lIjtzOjg6InBvc2l0aW9uIjtzOjEwOiJJVCBNYW5hZ2VyIjtzOjc6ImNvbXBhbnkiO3M6OToiQ29tcGFueUNvIjtzOjEwOiJjb21wYW55VVJMIjtzOjA6IiI7czo5OiJwYXJhZ3JhcGgiO3M6MTcyOiJDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4gTW9yYmkgYXQgc3VzY2lwaXQgcmlzdXMuIjt9'),(84,'','2015-02-25 06:54:12','2015-02-25 06:54:12',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijg0IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7fQ=='),(85,'','2015-02-25 06:54:12','2015-02-25 06:54:12',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijg1IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyOTYxOiI8YmxvY2txdW90ZT5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBNb3JiaSB0ZW1wdXMgbmliaCBhIGxhb3JlZXQgY3Vyc3VzLiBQaGFzZWxsdXMgbWFsZXN1YWRhIHZ1bHB1dGF0ZSBiaWJlbmR1bS4gVXQgdml0YWUganVzdG8gbmlzaS4gU2VkIGNvbnNlY3RldHVyIHZlc3RpYnVsdW0gdG9ydG9yLCBpbiBiaWJlbmR1bSBkaWFtIGxhY2luaWEgdml0YWUuIE51bGxhbSB2b2x1dHBhdCByaXN1cyBxdWlzIG9yY2kgY29uc2VjdGV0dXIgYWRpcGlzY2luZy4gSW4gY29tbW9kbyB2dWxwdXRhdGUgYXJjdSBzaXQgYW1ldCBvcm5hcmUuIFZpdmFtdXMgdXQgaWFjdWxpcyB2ZWxpdC48L2Jsb2NrcXVvdGU+PHA+UGVsbGVudGVzcXVlIGV1aXNtb2QgbGFjdXMgc2VkIGFjY3Vtc2FuIGx1Y3R1cy4gU3VzcGVuZGlzc2UgdXJuYSBmZWxpcywgbGFjaW5pYSB2ZWwgdGVtcG9yIGlkLCB1bHRyaWNpZXMgcnV0cnVtIG5pc2wuIE51bmMgdWx0cmljZXMgbnVsbGEgZXQgYmliZW5kdW0gbW9sZXN0aWUuIFBoYXNlbGx1cyBwb3J0dGl0b3Igc2l0IGFtZXQgbGliZXJvIHZlbCBmZXJtZW50dW0uIFNlZCBzYXBpZW4gcmlzdXMsIGVsZWlmZW5kIHZlbCBoZW5kcmVyaXQgZXUsIHBvcnRhIHZlbCB0ZWxsdXMuIER1aXMgZmF1Y2lidXMgb2RpbyBldCBtYWduYSB2YXJpdXMsIHF1aXMgYWNjdW1zYW4gdGVsbHVzIHZlc3RpYnVsdW0uIE5hbSBudW5jIG51bGxhLCBjb252YWxsaXMgYXQgZWxlbWVudHVtIHBoYXJldHJhLCBhZGlwaXNjaW5nIHF1aXMgZW5pbS4gRG9uZWMgZmV1Z2lhdCBwb3J0dGl0b3IgZG9sb3IsIG5lYyBwb3J0dGl0b3IgbWkgYXVjdG9yIGVnZXQuIEZ1c2NlIGlhY3VsaXMgdmFyaXVzIGRpYW0gbm9uIGRpY3R1bS4gRnVzY2UgZWxlbWVudHVtIGEgbnVuYyB2ZWwgdGluY2lkdW50LiBNb3JiaSBuZWMgZXN0IGVsZW1lbnR1bSwgdmVoaWN1bGEgb2RpbyBuZWMsIGxvYm9ydGlzIGxhY3VzLiBOdWxsYSB1bHRyaWNpZXMgdml0YWUgbnVuYyB1dCBsYWNpbmlhLiBQcm9pbiBtYXR0aXMgZmVsaXMgc2VtLCBldSBjb25zZWN0ZXR1ciBhcmN1IHZhcml1cyBldC4gRHVpcyBhdCBsZWN0dXMgZXUgbG9yZW0gZWxlbWVudHVtIGFsaXF1ZXQgbmVjIGluIGVsaXQuIFZlc3RpYnVsdW0gbm9uIG1ldHVzIGFjIHJpc3VzIGFkaXBpc2NpbmcgcGVsbGVudGVzcXVlIHNlZCBzaXQgYW1ldCBsb3JlbS4gRG9uZWMgdml2ZXJyYSwgbWV0dXMgaW4gdmFyaXVzIHB1bHZpbmFyLCBhdWd1ZSBudW5jIGFjY3Vtc2FuIGVyb3MsIGEgcHVsdmluYXIgZXN0IGVsaXQgdml0YWUgbnVsbGEuPC9wPjxwPkR1aXMgbm9uIGxlbyBpbiBlbmltIGxhb3JlZXQgcHJldGl1bS4gTnVsbGFtIHZpdGFlIG5lcXVlIG5lYyBsaWJlcm8gcGhhcmV0cmEgdGVtcG9yIGF0IGZhdWNpYnVzIGxlY3R1cy4gQ3VtIHNvY2lpcyBuYXRvcXVlIHBlbmF0aWJ1cyBldCBtYWduaXMgZGlzIHBhcnR1cmllbnQgbW9udGVzLCBuYXNjZXR1ciByaWRpY3VsdXMgbXVzLiBTZWQgaW1wZXJkaWV0IGNvbnZhbGxpcyBhcmN1LiBOYW0gc29sbGljaXR1ZGluIHNvbGxpY2l0dWRpbiBsYWN1cyBub24gZGljdHVtLiBBbGlxdWFtIGVyYXQgdm9sdXRwYXQuIE51bGxhIHNhcGllbiBxdWFtLCBjb25zZXF1YXQgbm9uIGR1aSB1dCwgZWxlaWZlbmQgc29kYWxlcyBvcmNpLiBQcmFlc2VudCBxdWlzIGxvcmVtIGFjY3Vtc2FuLCB2b2x1dHBhdCBsZWN0dXMgYSwgc29sbGljaXR1ZGluIGVyYXQuIERvbmVjIGZhdWNpYnVzIG1pIGluIHNhcGllbiB2b2x1dHBhdCwgYWMgYXVjdG9yIGxvcmVtIG1vbGxpcy4gUHJvaW4gZWdldCB0dXJwaXMgbm9uIGxhY3VzIGJpYmVuZHVtIHBvcnRhIG5vbiBhYyBqdXN0by4gQWxpcXVhbSBhbGlxdWFtIHZpdmVycmEgbG9yZW0gYWMgcnV0cnVtLiBJbiBldCBzYXBpZW4gc2l0IGFtZXQgZGlhbSB2ZXN0aWJ1bHVtIGN1cnN1cyB1dCB0cmlzdGlxdWUgdGVsbHVzLjwvcD48cD5VdCBpbiBwdXJ1cyBtaS4gRXRpYW0gYWMgYWxpcXVldCBpcHN1bS4gUGVsbGVudGVzcXVlIGZhdWNpYnVzIGRpYW0gZHVpLiBNb3JiaSBhIHNlbXBlciBvcmNpLiBVdCBuZWMgbWFsZXN1YWRhIHVybmEuIFZlc3RpYnVsdW0gYWxpcXVldCBhbnRlIGFjIGxhY3VzIGRpY3R1bSwgc2l0IGFtZXQgcHVsdmluYXIgbGVvIGxhb3JlZXQuIE1hZWNlbmFzIHV0IGVzdCBjb21tb2RvLCBjb21tb2RvIHF1YW0gbmVjLCBkaWduaXNzaW0gZXN0LiBRdWlzcXVlIHJ1dHJ1bSBtb2xlc3RpZSBudW5jLCBzZWQgbW9sbGlzIG51bGxhIHZvbHV0cGF0IGV0LiBEb25lYyBkaWduaXNzaW0gb3JuYXJlIGF1Z3VlIGV1IGFsaXF1YW0uIEFsaXF1YW0gaW4gdGluY2lkdW50IHZlbGl0LiBJbiBhdCBmZXJtZW50dW0gbWF1cmlzLCB1dCBhY2N1bXNhbiBuaXNsLiBJbnRlcmR1bSBldCBtYWxlc3VhZGEgZmFtZXMgYWMgYW50ZSBpcHN1bSBwcmltaXMgaW4gZmF1Y2lidXMuPC9wPjxwPkludGVnZXIgYWMgbnVsbGEgYXQgbmlzaSBzb2RhbGVzIHVsbGFtY29ycGVyIGlkIGluIGp1c3RvLiBDdW0gc29jaWlzIG5hdG9xdWUgcGVuYXRpYnVzIGV0IG1hZ25pcyBkaXMgcGFydHVyaWVudCBtb250ZXMsIG5hc2NldHVyIHJpZGljdWx1cyBtdXMuIEV0aWFtIHBoYXJldHJhIGVsaXQgb2RpbywgYWMgbWF0dGlzIHR1cnBpcyBjb25zZXF1YXQgYWMuIFBlbGxlbnRlc3F1ZSB0aW5jaWR1bnQgc2VkIGVuaW0gbmVjIGF1Y3Rvci4gUXVpc3F1ZSB2YXJpdXMsIGZlbGlzIGEgaGVuZHJlcml0IGZhdWNpYnVzLCBudW5jIGxvcmVtIHZhcml1cyBuaWJoLCB2ZWwgZGlnbmlzc2ltIHZlbGl0IGRvbG9yIHV0IGVsaXQuIE1hdXJpcyB1dCB2dWxwdXRhdGUgbmVxdWUuIERvbmVjIGF0IGVzdCB2aXRhZSBtYXNzYSBlZ2VzdGFzIGZyaW5naWxsYS4gUHJhZXNlbnQgYSB0cmlzdGlxdWUgbmliaC4gTnVuYyBibGFuZGl0IGR1aSByaXN1cywgcXVpcyByaG9uY3VzIG5pc2kgY29uc2VjdGV0dXIgdmVsLjwvcD4iO30='),(86,'','2015-02-25 06:54:14','2015-02-25 06:54:14',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijg2IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7fQ=='),(87,'','2015-02-25 06:54:15','2015-02-25 06:54:15',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijg3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyOTYxOiI8YmxvY2txdW90ZT5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBNb3JiaSB0ZW1wdXMgbmliaCBhIGxhb3JlZXQgY3Vyc3VzLiBQaGFzZWxsdXMgbWFsZXN1YWRhIHZ1bHB1dGF0ZSBiaWJlbmR1bS4gVXQgdml0YWUganVzdG8gbmlzaS4gU2VkIGNvbnNlY3RldHVyIHZlc3RpYnVsdW0gdG9ydG9yLCBpbiBiaWJlbmR1bSBkaWFtIGxhY2luaWEgdml0YWUuIE51bGxhbSB2b2x1dHBhdCByaXN1cyBxdWlzIG9yY2kgY29uc2VjdGV0dXIgYWRpcGlzY2luZy4gSW4gY29tbW9kbyB2dWxwdXRhdGUgYXJjdSBzaXQgYW1ldCBvcm5hcmUuIFZpdmFtdXMgdXQgaWFjdWxpcyB2ZWxpdC48L2Jsb2NrcXVvdGU+PHA+UGVsbGVudGVzcXVlIGV1aXNtb2QgbGFjdXMgc2VkIGFjY3Vtc2FuIGx1Y3R1cy4gU3VzcGVuZGlzc2UgdXJuYSBmZWxpcywgbGFjaW5pYSB2ZWwgdGVtcG9yIGlkLCB1bHRyaWNpZXMgcnV0cnVtIG5pc2wuIE51bmMgdWx0cmljZXMgbnVsbGEgZXQgYmliZW5kdW0gbW9sZXN0aWUuIFBoYXNlbGx1cyBwb3J0dGl0b3Igc2l0IGFtZXQgbGliZXJvIHZlbCBmZXJtZW50dW0uIFNlZCBzYXBpZW4gcmlzdXMsIGVsZWlmZW5kIHZlbCBoZW5kcmVyaXQgZXUsIHBvcnRhIHZlbCB0ZWxsdXMuIER1aXMgZmF1Y2lidXMgb2RpbyBldCBtYWduYSB2YXJpdXMsIHF1aXMgYWNjdW1zYW4gdGVsbHVzIHZlc3RpYnVsdW0uIE5hbSBudW5jIG51bGxhLCBjb252YWxsaXMgYXQgZWxlbWVudHVtIHBoYXJldHJhLCBhZGlwaXNjaW5nIHF1aXMgZW5pbS4gRG9uZWMgZmV1Z2lhdCBwb3J0dGl0b3IgZG9sb3IsIG5lYyBwb3J0dGl0b3IgbWkgYXVjdG9yIGVnZXQuIEZ1c2NlIGlhY3VsaXMgdmFyaXVzIGRpYW0gbm9uIGRpY3R1bS4gRnVzY2UgZWxlbWVudHVtIGEgbnVuYyB2ZWwgdGluY2lkdW50LiBNb3JiaSBuZWMgZXN0IGVsZW1lbnR1bSwgdmVoaWN1bGEgb2RpbyBuZWMsIGxvYm9ydGlzIGxhY3VzLiBOdWxsYSB1bHRyaWNpZXMgdml0YWUgbnVuYyB1dCBsYWNpbmlhLiBQcm9pbiBtYXR0aXMgZmVsaXMgc2VtLCBldSBjb25zZWN0ZXR1ciBhcmN1IHZhcml1cyBldC4gRHVpcyBhdCBsZWN0dXMgZXUgbG9yZW0gZWxlbWVudHVtIGFsaXF1ZXQgbmVjIGluIGVsaXQuIFZlc3RpYnVsdW0gbm9uIG1ldHVzIGFjIHJpc3VzIGFkaXBpc2NpbmcgcGVsbGVudGVzcXVlIHNlZCBzaXQgYW1ldCBsb3JlbS4gRG9uZWMgdml2ZXJyYSwgbWV0dXMgaW4gdmFyaXVzIHB1bHZpbmFyLCBhdWd1ZSBudW5jIGFjY3Vtc2FuIGVyb3MsIGEgcHVsdmluYXIgZXN0IGVsaXQgdml0YWUgbnVsbGEuPC9wPjxwPkR1aXMgbm9uIGxlbyBpbiBlbmltIGxhb3JlZXQgcHJldGl1bS4gTnVsbGFtIHZpdGFlIG5lcXVlIG5lYyBsaWJlcm8gcGhhcmV0cmEgdGVtcG9yIGF0IGZhdWNpYnVzIGxlY3R1cy4gQ3VtIHNvY2lpcyBuYXRvcXVlIHBlbmF0aWJ1cyBldCBtYWduaXMgZGlzIHBhcnR1cmllbnQgbW9udGVzLCBuYXNjZXR1ciByaWRpY3VsdXMgbXVzLiBTZWQgaW1wZXJkaWV0IGNvbnZhbGxpcyBhcmN1LiBOYW0gc29sbGljaXR1ZGluIHNvbGxpY2l0dWRpbiBsYWN1cyBub24gZGljdHVtLiBBbGlxdWFtIGVyYXQgdm9sdXRwYXQuIE51bGxhIHNhcGllbiBxdWFtLCBjb25zZXF1YXQgbm9uIGR1aSB1dCwgZWxlaWZlbmQgc29kYWxlcyBvcmNpLiBQcmFlc2VudCBxdWlzIGxvcmVtIGFjY3Vtc2FuLCB2b2x1dHBhdCBsZWN0dXMgYSwgc29sbGljaXR1ZGluIGVyYXQuIERvbmVjIGZhdWNpYnVzIG1pIGluIHNhcGllbiB2b2x1dHBhdCwgYWMgYXVjdG9yIGxvcmVtIG1vbGxpcy4gUHJvaW4gZWdldCB0dXJwaXMgbm9uIGxhY3VzIGJpYmVuZHVtIHBvcnRhIG5vbiBhYyBqdXN0by4gQWxpcXVhbSBhbGlxdWFtIHZpdmVycmEgbG9yZW0gYWMgcnV0cnVtLiBJbiBldCBzYXBpZW4gc2l0IGFtZXQgZGlhbSB2ZXN0aWJ1bHVtIGN1cnN1cyB1dCB0cmlzdGlxdWUgdGVsbHVzLjwvcD48cD5VdCBpbiBwdXJ1cyBtaS4gRXRpYW0gYWMgYWxpcXVldCBpcHN1bS4gUGVsbGVudGVzcXVlIGZhdWNpYnVzIGRpYW0gZHVpLiBNb3JiaSBhIHNlbXBlciBvcmNpLiBVdCBuZWMgbWFsZXN1YWRhIHVybmEuIFZlc3RpYnVsdW0gYWxpcXVldCBhbnRlIGFjIGxhY3VzIGRpY3R1bSwgc2l0IGFtZXQgcHVsdmluYXIgbGVvIGxhb3JlZXQuIE1hZWNlbmFzIHV0IGVzdCBjb21tb2RvLCBjb21tb2RvIHF1YW0gbmVjLCBkaWduaXNzaW0gZXN0LiBRdWlzcXVlIHJ1dHJ1bSBtb2xlc3RpZSBudW5jLCBzZWQgbW9sbGlzIG51bGxhIHZvbHV0cGF0IGV0LiBEb25lYyBkaWduaXNzaW0gb3JuYXJlIGF1Z3VlIGV1IGFsaXF1YW0uIEFsaXF1YW0gaW4gdGluY2lkdW50IHZlbGl0LiBJbiBhdCBmZXJtZW50dW0gbWF1cmlzLCB1dCBhY2N1bXNhbiBuaXNsLiBJbnRlcmR1bSBldCBtYWxlc3VhZGEgZmFtZXMgYWMgYW50ZSBpcHN1bSBwcmltaXMgaW4gZmF1Y2lidXMuPC9wPjxwPkludGVnZXIgYWMgbnVsbGEgYXQgbmlzaSBzb2RhbGVzIHVsbGFtY29ycGVyIGlkIGluIGp1c3RvLiBDdW0gc29jaWlzIG5hdG9xdWUgcGVuYXRpYnVzIGV0IG1hZ25pcyBkaXMgcGFydHVyaWVudCBtb250ZXMsIG5hc2NldHVyIHJpZGljdWx1cyBtdXMuIEV0aWFtIHBoYXJldHJhIGVsaXQgb2RpbywgYWMgbWF0dGlzIHR1cnBpcyBjb25zZXF1YXQgYWMuIFBlbGxlbnRlc3F1ZSB0aW5jaWR1bnQgc2VkIGVuaW0gbmVjIGF1Y3Rvci4gUXVpc3F1ZSB2YXJpdXMsIGZlbGlzIGEgaGVuZHJlcml0IGZhdWNpYnVzLCBudW5jIGxvcmVtIHZhcml1cyBuaWJoLCB2ZWwgZGlnbmlzc2ltIHZlbGl0IGRvbG9yIHV0IGVsaXQuIE1hdXJpcyB1dCB2dWxwdXRhdGUgbmVxdWUuIERvbmVjIGF0IGVzdCB2aXRhZSBtYXNzYSBlZ2VzdGFzIGZyaW5naWxsYS4gUHJhZXNlbnQgYSB0cmlzdGlxdWUgbmliaC4gTnVuYyBibGFuZGl0IGR1aSByaXN1cywgcXVpcyByaG9uY3VzIG5pc2kgY29uc2VjdGV0dXIgdmVsLjwvcD4iO30='),(88,'','2015-02-25 06:54:17','2015-02-25 06:54:17',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijg4IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7fQ=='),(89,'','2015-02-25 06:54:17','2015-02-25 06:54:17',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijg5IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyOTYxOiI8YmxvY2txdW90ZT5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBNb3JiaSB0ZW1wdXMgbmliaCBhIGxhb3JlZXQgY3Vyc3VzLiBQaGFzZWxsdXMgbWFsZXN1YWRhIHZ1bHB1dGF0ZSBiaWJlbmR1bS4gVXQgdml0YWUganVzdG8gbmlzaS4gU2VkIGNvbnNlY3RldHVyIHZlc3RpYnVsdW0gdG9ydG9yLCBpbiBiaWJlbmR1bSBkaWFtIGxhY2luaWEgdml0YWUuIE51bGxhbSB2b2x1dHBhdCByaXN1cyBxdWlzIG9yY2kgY29uc2VjdGV0dXIgYWRpcGlzY2luZy4gSW4gY29tbW9kbyB2dWxwdXRhdGUgYXJjdSBzaXQgYW1ldCBvcm5hcmUuIFZpdmFtdXMgdXQgaWFjdWxpcyB2ZWxpdC48L2Jsb2NrcXVvdGU+PHA+UGVsbGVudGVzcXVlIGV1aXNtb2QgbGFjdXMgc2VkIGFjY3Vtc2FuIGx1Y3R1cy4gU3VzcGVuZGlzc2UgdXJuYSBmZWxpcywgbGFjaW5pYSB2ZWwgdGVtcG9yIGlkLCB1bHRyaWNpZXMgcnV0cnVtIG5pc2wuIE51bmMgdWx0cmljZXMgbnVsbGEgZXQgYmliZW5kdW0gbW9sZXN0aWUuIFBoYXNlbGx1cyBwb3J0dGl0b3Igc2l0IGFtZXQgbGliZXJvIHZlbCBmZXJtZW50dW0uIFNlZCBzYXBpZW4gcmlzdXMsIGVsZWlmZW5kIHZlbCBoZW5kcmVyaXQgZXUsIHBvcnRhIHZlbCB0ZWxsdXMuIER1aXMgZmF1Y2lidXMgb2RpbyBldCBtYWduYSB2YXJpdXMsIHF1aXMgYWNjdW1zYW4gdGVsbHVzIHZlc3RpYnVsdW0uIE5hbSBudW5jIG51bGxhLCBjb252YWxsaXMgYXQgZWxlbWVudHVtIHBoYXJldHJhLCBhZGlwaXNjaW5nIHF1aXMgZW5pbS4gRG9uZWMgZmV1Z2lhdCBwb3J0dGl0b3IgZG9sb3IsIG5lYyBwb3J0dGl0b3IgbWkgYXVjdG9yIGVnZXQuIEZ1c2NlIGlhY3VsaXMgdmFyaXVzIGRpYW0gbm9uIGRpY3R1bS4gRnVzY2UgZWxlbWVudHVtIGEgbnVuYyB2ZWwgdGluY2lkdW50LiBNb3JiaSBuZWMgZXN0IGVsZW1lbnR1bSwgdmVoaWN1bGEgb2RpbyBuZWMsIGxvYm9ydGlzIGxhY3VzLiBOdWxsYSB1bHRyaWNpZXMgdml0YWUgbnVuYyB1dCBsYWNpbmlhLiBQcm9pbiBtYXR0aXMgZmVsaXMgc2VtLCBldSBjb25zZWN0ZXR1ciBhcmN1IHZhcml1cyBldC4gRHVpcyBhdCBsZWN0dXMgZXUgbG9yZW0gZWxlbWVudHVtIGFsaXF1ZXQgbmVjIGluIGVsaXQuIFZlc3RpYnVsdW0gbm9uIG1ldHVzIGFjIHJpc3VzIGFkaXBpc2NpbmcgcGVsbGVudGVzcXVlIHNlZCBzaXQgYW1ldCBsb3JlbS4gRG9uZWMgdml2ZXJyYSwgbWV0dXMgaW4gdmFyaXVzIHB1bHZpbmFyLCBhdWd1ZSBudW5jIGFjY3Vtc2FuIGVyb3MsIGEgcHVsdmluYXIgZXN0IGVsaXQgdml0YWUgbnVsbGEuPC9wPjxwPkR1aXMgbm9uIGxlbyBpbiBlbmltIGxhb3JlZXQgcHJldGl1bS4gTnVsbGFtIHZpdGFlIG5lcXVlIG5lYyBsaWJlcm8gcGhhcmV0cmEgdGVtcG9yIGF0IGZhdWNpYnVzIGxlY3R1cy4gQ3VtIHNvY2lpcyBuYXRvcXVlIHBlbmF0aWJ1cyBldCBtYWduaXMgZGlzIHBhcnR1cmllbnQgbW9udGVzLCBuYXNjZXR1ciByaWRpY3VsdXMgbXVzLiBTZWQgaW1wZXJkaWV0IGNvbnZhbGxpcyBhcmN1LiBOYW0gc29sbGljaXR1ZGluIHNvbGxpY2l0dWRpbiBsYWN1cyBub24gZGljdHVtLiBBbGlxdWFtIGVyYXQgdm9sdXRwYXQuIE51bGxhIHNhcGllbiBxdWFtLCBjb25zZXF1YXQgbm9uIGR1aSB1dCwgZWxlaWZlbmQgc29kYWxlcyBvcmNpLiBQcmFlc2VudCBxdWlzIGxvcmVtIGFjY3Vtc2FuLCB2b2x1dHBhdCBsZWN0dXMgYSwgc29sbGljaXR1ZGluIGVyYXQuIERvbmVjIGZhdWNpYnVzIG1pIGluIHNhcGllbiB2b2x1dHBhdCwgYWMgYXVjdG9yIGxvcmVtIG1vbGxpcy4gUHJvaW4gZWdldCB0dXJwaXMgbm9uIGxhY3VzIGJpYmVuZHVtIHBvcnRhIG5vbiBhYyBqdXN0by4gQWxpcXVhbSBhbGlxdWFtIHZpdmVycmEgbG9yZW0gYWMgcnV0cnVtLiBJbiBldCBzYXBpZW4gc2l0IGFtZXQgZGlhbSB2ZXN0aWJ1bHVtIGN1cnN1cyB1dCB0cmlzdGlxdWUgdGVsbHVzLjwvcD48cD5VdCBpbiBwdXJ1cyBtaS4gRXRpYW0gYWMgYWxpcXVldCBpcHN1bS4gUGVsbGVudGVzcXVlIGZhdWNpYnVzIGRpYW0gZHVpLiBNb3JiaSBhIHNlbXBlciBvcmNpLiBVdCBuZWMgbWFsZXN1YWRhIHVybmEuIFZlc3RpYnVsdW0gYWxpcXVldCBhbnRlIGFjIGxhY3VzIGRpY3R1bSwgc2l0IGFtZXQgcHVsdmluYXIgbGVvIGxhb3JlZXQuIE1hZWNlbmFzIHV0IGVzdCBjb21tb2RvLCBjb21tb2RvIHF1YW0gbmVjLCBkaWduaXNzaW0gZXN0LiBRdWlzcXVlIHJ1dHJ1bSBtb2xlc3RpZSBudW5jLCBzZWQgbW9sbGlzIG51bGxhIHZvbHV0cGF0IGV0LiBEb25lYyBkaWduaXNzaW0gb3JuYXJlIGF1Z3VlIGV1IGFsaXF1YW0uIEFsaXF1YW0gaW4gdGluY2lkdW50IHZlbGl0LiBJbiBhdCBmZXJtZW50dW0gbWF1cmlzLCB1dCBhY2N1bXNhbiBuaXNsLiBJbnRlcmR1bSBldCBtYWxlc3VhZGEgZmFtZXMgYWMgYW50ZSBpcHN1bSBwcmltaXMgaW4gZmF1Y2lidXMuPC9wPjxwPkludGVnZXIgYWMgbnVsbGEgYXQgbmlzaSBzb2RhbGVzIHVsbGFtY29ycGVyIGlkIGluIGp1c3RvLiBDdW0gc29jaWlzIG5hdG9xdWUgcGVuYXRpYnVzIGV0IG1hZ25pcyBkaXMgcGFydHVyaWVudCBtb250ZXMsIG5hc2NldHVyIHJpZGljdWx1cyBtdXMuIEV0aWFtIHBoYXJldHJhIGVsaXQgb2RpbywgYWMgbWF0dGlzIHR1cnBpcyBjb25zZXF1YXQgYWMuIFBlbGxlbnRlc3F1ZSB0aW5jaWR1bnQgc2VkIGVuaW0gbmVjIGF1Y3Rvci4gUXVpc3F1ZSB2YXJpdXMsIGZlbGlzIGEgaGVuZHJlcml0IGZhdWNpYnVzLCBudW5jIGxvcmVtIHZhcml1cyBuaWJoLCB2ZWwgZGlnbmlzc2ltIHZlbGl0IGRvbG9yIHV0IGVsaXQuIE1hdXJpcyB1dCB2dWxwdXRhdGUgbmVxdWUuIERvbmVjIGF0IGVzdCB2aXRhZSBtYXNzYSBlZ2VzdGFzIGZyaW5naWxsYS4gUHJhZXNlbnQgYSB0cmlzdGlxdWUgbmliaC4gTnVuYyBibGFuZGl0IGR1aSByaXN1cywgcXVpcyByaG9uY3VzIG5pc2kgY29uc2VjdGV0dXIgdmVsLjwvcD4iO30='),(90,'','2015-02-25 06:54:19','2015-02-25 06:54:19',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjkwIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7fQ=='),(91,'','2015-02-25 06:54:19','2015-02-25 06:54:19',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjkxIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyOTYxOiI8YmxvY2txdW90ZT5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBNb3JiaSB0ZW1wdXMgbmliaCBhIGxhb3JlZXQgY3Vyc3VzLiBQaGFzZWxsdXMgbWFsZXN1YWRhIHZ1bHB1dGF0ZSBiaWJlbmR1bS4gVXQgdml0YWUganVzdG8gbmlzaS4gU2VkIGNvbnNlY3RldHVyIHZlc3RpYnVsdW0gdG9ydG9yLCBpbiBiaWJlbmR1bSBkaWFtIGxhY2luaWEgdml0YWUuIE51bGxhbSB2b2x1dHBhdCByaXN1cyBxdWlzIG9yY2kgY29uc2VjdGV0dXIgYWRpcGlzY2luZy4gSW4gY29tbW9kbyB2dWxwdXRhdGUgYXJjdSBzaXQgYW1ldCBvcm5hcmUuIFZpdmFtdXMgdXQgaWFjdWxpcyB2ZWxpdC48L2Jsb2NrcXVvdGU+PHA+UGVsbGVudGVzcXVlIGV1aXNtb2QgbGFjdXMgc2VkIGFjY3Vtc2FuIGx1Y3R1cy4gU3VzcGVuZGlzc2UgdXJuYSBmZWxpcywgbGFjaW5pYSB2ZWwgdGVtcG9yIGlkLCB1bHRyaWNpZXMgcnV0cnVtIG5pc2wuIE51bmMgdWx0cmljZXMgbnVsbGEgZXQgYmliZW5kdW0gbW9sZXN0aWUuIFBoYXNlbGx1cyBwb3J0dGl0b3Igc2l0IGFtZXQgbGliZXJvIHZlbCBmZXJtZW50dW0uIFNlZCBzYXBpZW4gcmlzdXMsIGVsZWlmZW5kIHZlbCBoZW5kcmVyaXQgZXUsIHBvcnRhIHZlbCB0ZWxsdXMuIER1aXMgZmF1Y2lidXMgb2RpbyBldCBtYWduYSB2YXJpdXMsIHF1aXMgYWNjdW1zYW4gdGVsbHVzIHZlc3RpYnVsdW0uIE5hbSBudW5jIG51bGxhLCBjb252YWxsaXMgYXQgZWxlbWVudHVtIHBoYXJldHJhLCBhZGlwaXNjaW5nIHF1aXMgZW5pbS4gRG9uZWMgZmV1Z2lhdCBwb3J0dGl0b3IgZG9sb3IsIG5lYyBwb3J0dGl0b3IgbWkgYXVjdG9yIGVnZXQuIEZ1c2NlIGlhY3VsaXMgdmFyaXVzIGRpYW0gbm9uIGRpY3R1bS4gRnVzY2UgZWxlbWVudHVtIGEgbnVuYyB2ZWwgdGluY2lkdW50LiBNb3JiaSBuZWMgZXN0IGVsZW1lbnR1bSwgdmVoaWN1bGEgb2RpbyBuZWMsIGxvYm9ydGlzIGxhY3VzLiBOdWxsYSB1bHRyaWNpZXMgdml0YWUgbnVuYyB1dCBsYWNpbmlhLiBQcm9pbiBtYXR0aXMgZmVsaXMgc2VtLCBldSBjb25zZWN0ZXR1ciBhcmN1IHZhcml1cyBldC4gRHVpcyBhdCBsZWN0dXMgZXUgbG9yZW0gZWxlbWVudHVtIGFsaXF1ZXQgbmVjIGluIGVsaXQuIFZlc3RpYnVsdW0gbm9uIG1ldHVzIGFjIHJpc3VzIGFkaXBpc2NpbmcgcGVsbGVudGVzcXVlIHNlZCBzaXQgYW1ldCBsb3JlbS4gRG9uZWMgdml2ZXJyYSwgbWV0dXMgaW4gdmFyaXVzIHB1bHZpbmFyLCBhdWd1ZSBudW5jIGFjY3Vtc2FuIGVyb3MsIGEgcHVsdmluYXIgZXN0IGVsaXQgdml0YWUgbnVsbGEuPC9wPjxwPkR1aXMgbm9uIGxlbyBpbiBlbmltIGxhb3JlZXQgcHJldGl1bS4gTnVsbGFtIHZpdGFlIG5lcXVlIG5lYyBsaWJlcm8gcGhhcmV0cmEgdGVtcG9yIGF0IGZhdWNpYnVzIGxlY3R1cy4gQ3VtIHNvY2lpcyBuYXRvcXVlIHBlbmF0aWJ1cyBldCBtYWduaXMgZGlzIHBhcnR1cmllbnQgbW9udGVzLCBuYXNjZXR1ciByaWRpY3VsdXMgbXVzLiBTZWQgaW1wZXJkaWV0IGNvbnZhbGxpcyBhcmN1LiBOYW0gc29sbGljaXR1ZGluIHNvbGxpY2l0dWRpbiBsYWN1cyBub24gZGljdHVtLiBBbGlxdWFtIGVyYXQgdm9sdXRwYXQuIE51bGxhIHNhcGllbiBxdWFtLCBjb25zZXF1YXQgbm9uIGR1aSB1dCwgZWxlaWZlbmQgc29kYWxlcyBvcmNpLiBQcmFlc2VudCBxdWlzIGxvcmVtIGFjY3Vtc2FuLCB2b2x1dHBhdCBsZWN0dXMgYSwgc29sbGljaXR1ZGluIGVyYXQuIERvbmVjIGZhdWNpYnVzIG1pIGluIHNhcGllbiB2b2x1dHBhdCwgYWMgYXVjdG9yIGxvcmVtIG1vbGxpcy4gUHJvaW4gZWdldCB0dXJwaXMgbm9uIGxhY3VzIGJpYmVuZHVtIHBvcnRhIG5vbiBhYyBqdXN0by4gQWxpcXVhbSBhbGlxdWFtIHZpdmVycmEgbG9yZW0gYWMgcnV0cnVtLiBJbiBldCBzYXBpZW4gc2l0IGFtZXQgZGlhbSB2ZXN0aWJ1bHVtIGN1cnN1cyB1dCB0cmlzdGlxdWUgdGVsbHVzLjwvcD48cD5VdCBpbiBwdXJ1cyBtaS4gRXRpYW0gYWMgYWxpcXVldCBpcHN1bS4gUGVsbGVudGVzcXVlIGZhdWNpYnVzIGRpYW0gZHVpLiBNb3JiaSBhIHNlbXBlciBvcmNpLiBVdCBuZWMgbWFsZXN1YWRhIHVybmEuIFZlc3RpYnVsdW0gYWxpcXVldCBhbnRlIGFjIGxhY3VzIGRpY3R1bSwgc2l0IGFtZXQgcHVsdmluYXIgbGVvIGxhb3JlZXQuIE1hZWNlbmFzIHV0IGVzdCBjb21tb2RvLCBjb21tb2RvIHF1YW0gbmVjLCBkaWduaXNzaW0gZXN0LiBRdWlzcXVlIHJ1dHJ1bSBtb2xlc3RpZSBudW5jLCBzZWQgbW9sbGlzIG51bGxhIHZvbHV0cGF0IGV0LiBEb25lYyBkaWduaXNzaW0gb3JuYXJlIGF1Z3VlIGV1IGFsaXF1YW0uIEFsaXF1YW0gaW4gdGluY2lkdW50IHZlbGl0LiBJbiBhdCBmZXJtZW50dW0gbWF1cmlzLCB1dCBhY2N1bXNhbiBuaXNsLiBJbnRlcmR1bSBldCBtYWxlc3VhZGEgZmFtZXMgYWMgYW50ZSBpcHN1bSBwcmltaXMgaW4gZmF1Y2lidXMuPC9wPjxwPkludGVnZXIgYWMgbnVsbGEgYXQgbmlzaSBzb2RhbGVzIHVsbGFtY29ycGVyIGlkIGluIGp1c3RvLiBDdW0gc29jaWlzIG5hdG9xdWUgcGVuYXRpYnVzIGV0IG1hZ25pcyBkaXMgcGFydHVyaWVudCBtb250ZXMsIG5hc2NldHVyIHJpZGljdWx1cyBtdXMuIEV0aWFtIHBoYXJldHJhIGVsaXQgb2RpbywgYWMgbWF0dGlzIHR1cnBpcyBjb25zZXF1YXQgYWMuIFBlbGxlbnRlc3F1ZSB0aW5jaWR1bnQgc2VkIGVuaW0gbmVjIGF1Y3Rvci4gUXVpc3F1ZSB2YXJpdXMsIGZlbGlzIGEgaGVuZHJlcml0IGZhdWNpYnVzLCBudW5jIGxvcmVtIHZhcml1cyBuaWJoLCB2ZWwgZGlnbmlzc2ltIHZlbGl0IGRvbG9yIHV0IGVsaXQuIE1hdXJpcyB1dCB2dWxwdXRhdGUgbmVxdWUuIERvbmVjIGF0IGVzdCB2aXRhZSBtYXNzYSBlZ2VzdGFzIGZyaW5naWxsYS4gUHJhZXNlbnQgYSB0cmlzdGlxdWUgbmliaC4gTnVuYyBibGFuZGl0IGR1aSByaXN1cywgcXVpcyByaG9uY3VzIG5pc2kgY29uc2VjdGV0dXIgdmVsLjwvcD4iO30='),(92,'','2015-02-25 06:54:21','2015-02-25 06:54:21',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjkyIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7fQ=='),(93,'','2015-02-25 06:54:22','2015-02-25 06:54:22',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjkzIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyOTYxOiI8YmxvY2txdW90ZT5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBNb3JiaSB0ZW1wdXMgbmliaCBhIGxhb3JlZXQgY3Vyc3VzLiBQaGFzZWxsdXMgbWFsZXN1YWRhIHZ1bHB1dGF0ZSBiaWJlbmR1bS4gVXQgdml0YWUganVzdG8gbmlzaS4gU2VkIGNvbnNlY3RldHVyIHZlc3RpYnVsdW0gdG9ydG9yLCBpbiBiaWJlbmR1bSBkaWFtIGxhY2luaWEgdml0YWUuIE51bGxhbSB2b2x1dHBhdCByaXN1cyBxdWlzIG9yY2kgY29uc2VjdGV0dXIgYWRpcGlzY2luZy4gSW4gY29tbW9kbyB2dWxwdXRhdGUgYXJjdSBzaXQgYW1ldCBvcm5hcmUuIFZpdmFtdXMgdXQgaWFjdWxpcyB2ZWxpdC48L2Jsb2NrcXVvdGU+PHA+UGVsbGVudGVzcXVlIGV1aXNtb2QgbGFjdXMgc2VkIGFjY3Vtc2FuIGx1Y3R1cy4gU3VzcGVuZGlzc2UgdXJuYSBmZWxpcywgbGFjaW5pYSB2ZWwgdGVtcG9yIGlkLCB1bHRyaWNpZXMgcnV0cnVtIG5pc2wuIE51bmMgdWx0cmljZXMgbnVsbGEgZXQgYmliZW5kdW0gbW9sZXN0aWUuIFBoYXNlbGx1cyBwb3J0dGl0b3Igc2l0IGFtZXQgbGliZXJvIHZlbCBmZXJtZW50dW0uIFNlZCBzYXBpZW4gcmlzdXMsIGVsZWlmZW5kIHZlbCBoZW5kcmVyaXQgZXUsIHBvcnRhIHZlbCB0ZWxsdXMuIER1aXMgZmF1Y2lidXMgb2RpbyBldCBtYWduYSB2YXJpdXMsIHF1aXMgYWNjdW1zYW4gdGVsbHVzIHZlc3RpYnVsdW0uIE5hbSBudW5jIG51bGxhLCBjb252YWxsaXMgYXQgZWxlbWVudHVtIHBoYXJldHJhLCBhZGlwaXNjaW5nIHF1aXMgZW5pbS4gRG9uZWMgZmV1Z2lhdCBwb3J0dGl0b3IgZG9sb3IsIG5lYyBwb3J0dGl0b3IgbWkgYXVjdG9yIGVnZXQuIEZ1c2NlIGlhY3VsaXMgdmFyaXVzIGRpYW0gbm9uIGRpY3R1bS4gRnVzY2UgZWxlbWVudHVtIGEgbnVuYyB2ZWwgdGluY2lkdW50LiBNb3JiaSBuZWMgZXN0IGVsZW1lbnR1bSwgdmVoaWN1bGEgb2RpbyBuZWMsIGxvYm9ydGlzIGxhY3VzLiBOdWxsYSB1bHRyaWNpZXMgdml0YWUgbnVuYyB1dCBsYWNpbmlhLiBQcm9pbiBtYXR0aXMgZmVsaXMgc2VtLCBldSBjb25zZWN0ZXR1ciBhcmN1IHZhcml1cyBldC4gRHVpcyBhdCBsZWN0dXMgZXUgbG9yZW0gZWxlbWVudHVtIGFsaXF1ZXQgbmVjIGluIGVsaXQuIFZlc3RpYnVsdW0gbm9uIG1ldHVzIGFjIHJpc3VzIGFkaXBpc2NpbmcgcGVsbGVudGVzcXVlIHNlZCBzaXQgYW1ldCBsb3JlbS4gRG9uZWMgdml2ZXJyYSwgbWV0dXMgaW4gdmFyaXVzIHB1bHZpbmFyLCBhdWd1ZSBudW5jIGFjY3Vtc2FuIGVyb3MsIGEgcHVsdmluYXIgZXN0IGVsaXQgdml0YWUgbnVsbGEuPC9wPjxwPkR1aXMgbm9uIGxlbyBpbiBlbmltIGxhb3JlZXQgcHJldGl1bS4gTnVsbGFtIHZpdGFlIG5lcXVlIG5lYyBsaWJlcm8gcGhhcmV0cmEgdGVtcG9yIGF0IGZhdWNpYnVzIGxlY3R1cy4gQ3VtIHNvY2lpcyBuYXRvcXVlIHBlbmF0aWJ1cyBldCBtYWduaXMgZGlzIHBhcnR1cmllbnQgbW9udGVzLCBuYXNjZXR1ciByaWRpY3VsdXMgbXVzLiBTZWQgaW1wZXJkaWV0IGNvbnZhbGxpcyBhcmN1LiBOYW0gc29sbGljaXR1ZGluIHNvbGxpY2l0dWRpbiBsYWN1cyBub24gZGljdHVtLiBBbGlxdWFtIGVyYXQgdm9sdXRwYXQuIE51bGxhIHNhcGllbiBxdWFtLCBjb25zZXF1YXQgbm9uIGR1aSB1dCwgZWxlaWZlbmQgc29kYWxlcyBvcmNpLiBQcmFlc2VudCBxdWlzIGxvcmVtIGFjY3Vtc2FuLCB2b2x1dHBhdCBsZWN0dXMgYSwgc29sbGljaXR1ZGluIGVyYXQuIERvbmVjIGZhdWNpYnVzIG1pIGluIHNhcGllbiB2b2x1dHBhdCwgYWMgYXVjdG9yIGxvcmVtIG1vbGxpcy4gUHJvaW4gZWdldCB0dXJwaXMgbm9uIGxhY3VzIGJpYmVuZHVtIHBvcnRhIG5vbiBhYyBqdXN0by4gQWxpcXVhbSBhbGlxdWFtIHZpdmVycmEgbG9yZW0gYWMgcnV0cnVtLiBJbiBldCBzYXBpZW4gc2l0IGFtZXQgZGlhbSB2ZXN0aWJ1bHVtIGN1cnN1cyB1dCB0cmlzdGlxdWUgdGVsbHVzLjwvcD48cD5VdCBpbiBwdXJ1cyBtaS4gRXRpYW0gYWMgYWxpcXVldCBpcHN1bS4gUGVsbGVudGVzcXVlIGZhdWNpYnVzIGRpYW0gZHVpLiBNb3JiaSBhIHNlbXBlciBvcmNpLiBVdCBuZWMgbWFsZXN1YWRhIHVybmEuIFZlc3RpYnVsdW0gYWxpcXVldCBhbnRlIGFjIGxhY3VzIGRpY3R1bSwgc2l0IGFtZXQgcHVsdmluYXIgbGVvIGxhb3JlZXQuIE1hZWNlbmFzIHV0IGVzdCBjb21tb2RvLCBjb21tb2RvIHF1YW0gbmVjLCBkaWduaXNzaW0gZXN0LiBRdWlzcXVlIHJ1dHJ1bSBtb2xlc3RpZSBudW5jLCBzZWQgbW9sbGlzIG51bGxhIHZvbHV0cGF0IGV0LiBEb25lYyBkaWduaXNzaW0gb3JuYXJlIGF1Z3VlIGV1IGFsaXF1YW0uIEFsaXF1YW0gaW4gdGluY2lkdW50IHZlbGl0LiBJbiBhdCBmZXJtZW50dW0gbWF1cmlzLCB1dCBhY2N1bXNhbiBuaXNsLiBJbnRlcmR1bSBldCBtYWxlc3VhZGEgZmFtZXMgYWMgYW50ZSBpcHN1bSBwcmltaXMgaW4gZmF1Y2lidXMuPC9wPjxwPkludGVnZXIgYWMgbnVsbGEgYXQgbmlzaSBzb2RhbGVzIHVsbGFtY29ycGVyIGlkIGluIGp1c3RvLiBDdW0gc29jaWlzIG5hdG9xdWUgcGVuYXRpYnVzIGV0IG1hZ25pcyBkaXMgcGFydHVyaWVudCBtb250ZXMsIG5hc2NldHVyIHJpZGljdWx1cyBtdXMuIEV0aWFtIHBoYXJldHJhIGVsaXQgb2RpbywgYWMgbWF0dGlzIHR1cnBpcyBjb25zZXF1YXQgYWMuIFBlbGxlbnRlc3F1ZSB0aW5jaWR1bnQgc2VkIGVuaW0gbmVjIGF1Y3Rvci4gUXVpc3F1ZSB2YXJpdXMsIGZlbGlzIGEgaGVuZHJlcml0IGZhdWNpYnVzLCBudW5jIGxvcmVtIHZhcml1cyBuaWJoLCB2ZWwgZGlnbmlzc2ltIHZlbGl0IGRvbG9yIHV0IGVsaXQuIE1hdXJpcyB1dCB2dWxwdXRhdGUgbmVxdWUuIERvbmVjIGF0IGVzdCB2aXRhZSBtYXNzYSBlZ2VzdGFzIGZyaW5naWxsYS4gUHJhZXNlbnQgYSB0cmlzdGlxdWUgbmliaC4gTnVuYyBibGFuZGl0IGR1aSByaXN1cywgcXVpcyByaG9uY3VzIG5pc2kgY29uc2VjdGV0dXIgdmVsLjwvcD4iO30='),(94,'','2015-02-25 06:54:24','2015-02-25 06:54:24',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijk0IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7fQ=='),(95,'','2015-02-25 06:54:24','2015-02-25 06:54:24',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijk1IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyOTYxOiI8YmxvY2txdW90ZT5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBNb3JiaSB0ZW1wdXMgbmliaCBhIGxhb3JlZXQgY3Vyc3VzLiBQaGFzZWxsdXMgbWFsZXN1YWRhIHZ1bHB1dGF0ZSBiaWJlbmR1bS4gVXQgdml0YWUganVzdG8gbmlzaS4gU2VkIGNvbnNlY3RldHVyIHZlc3RpYnVsdW0gdG9ydG9yLCBpbiBiaWJlbmR1bSBkaWFtIGxhY2luaWEgdml0YWUuIE51bGxhbSB2b2x1dHBhdCByaXN1cyBxdWlzIG9yY2kgY29uc2VjdGV0dXIgYWRpcGlzY2luZy4gSW4gY29tbW9kbyB2dWxwdXRhdGUgYXJjdSBzaXQgYW1ldCBvcm5hcmUuIFZpdmFtdXMgdXQgaWFjdWxpcyB2ZWxpdC48L2Jsb2NrcXVvdGU+PHA+UGVsbGVudGVzcXVlIGV1aXNtb2QgbGFjdXMgc2VkIGFjY3Vtc2FuIGx1Y3R1cy4gU3VzcGVuZGlzc2UgdXJuYSBmZWxpcywgbGFjaW5pYSB2ZWwgdGVtcG9yIGlkLCB1bHRyaWNpZXMgcnV0cnVtIG5pc2wuIE51bmMgdWx0cmljZXMgbnVsbGEgZXQgYmliZW5kdW0gbW9sZXN0aWUuIFBoYXNlbGx1cyBwb3J0dGl0b3Igc2l0IGFtZXQgbGliZXJvIHZlbCBmZXJtZW50dW0uIFNlZCBzYXBpZW4gcmlzdXMsIGVsZWlmZW5kIHZlbCBoZW5kcmVyaXQgZXUsIHBvcnRhIHZlbCB0ZWxsdXMuIER1aXMgZmF1Y2lidXMgb2RpbyBldCBtYWduYSB2YXJpdXMsIHF1aXMgYWNjdW1zYW4gdGVsbHVzIHZlc3RpYnVsdW0uIE5hbSBudW5jIG51bGxhLCBjb252YWxsaXMgYXQgZWxlbWVudHVtIHBoYXJldHJhLCBhZGlwaXNjaW5nIHF1aXMgZW5pbS4gRG9uZWMgZmV1Z2lhdCBwb3J0dGl0b3IgZG9sb3IsIG5lYyBwb3J0dGl0b3IgbWkgYXVjdG9yIGVnZXQuIEZ1c2NlIGlhY3VsaXMgdmFyaXVzIGRpYW0gbm9uIGRpY3R1bS4gRnVzY2UgZWxlbWVudHVtIGEgbnVuYyB2ZWwgdGluY2lkdW50LiBNb3JiaSBuZWMgZXN0IGVsZW1lbnR1bSwgdmVoaWN1bGEgb2RpbyBuZWMsIGxvYm9ydGlzIGxhY3VzLiBOdWxsYSB1bHRyaWNpZXMgdml0YWUgbnVuYyB1dCBsYWNpbmlhLiBQcm9pbiBtYXR0aXMgZmVsaXMgc2VtLCBldSBjb25zZWN0ZXR1ciBhcmN1IHZhcml1cyBldC4gRHVpcyBhdCBsZWN0dXMgZXUgbG9yZW0gZWxlbWVudHVtIGFsaXF1ZXQgbmVjIGluIGVsaXQuIFZlc3RpYnVsdW0gbm9uIG1ldHVzIGFjIHJpc3VzIGFkaXBpc2NpbmcgcGVsbGVudGVzcXVlIHNlZCBzaXQgYW1ldCBsb3JlbS4gRG9uZWMgdml2ZXJyYSwgbWV0dXMgaW4gdmFyaXVzIHB1bHZpbmFyLCBhdWd1ZSBudW5jIGFjY3Vtc2FuIGVyb3MsIGEgcHVsdmluYXIgZXN0IGVsaXQgdml0YWUgbnVsbGEuPC9wPjxwPkR1aXMgbm9uIGxlbyBpbiBlbmltIGxhb3JlZXQgcHJldGl1bS4gTnVsbGFtIHZpdGFlIG5lcXVlIG5lYyBsaWJlcm8gcGhhcmV0cmEgdGVtcG9yIGF0IGZhdWNpYnVzIGxlY3R1cy4gQ3VtIHNvY2lpcyBuYXRvcXVlIHBlbmF0aWJ1cyBldCBtYWduaXMgZGlzIHBhcnR1cmllbnQgbW9udGVzLCBuYXNjZXR1ciByaWRpY3VsdXMgbXVzLiBTZWQgaW1wZXJkaWV0IGNvbnZhbGxpcyBhcmN1LiBOYW0gc29sbGljaXR1ZGluIHNvbGxpY2l0dWRpbiBsYWN1cyBub24gZGljdHVtLiBBbGlxdWFtIGVyYXQgdm9sdXRwYXQuIE51bGxhIHNhcGllbiBxdWFtLCBjb25zZXF1YXQgbm9uIGR1aSB1dCwgZWxlaWZlbmQgc29kYWxlcyBvcmNpLiBQcmFlc2VudCBxdWlzIGxvcmVtIGFjY3Vtc2FuLCB2b2x1dHBhdCBsZWN0dXMgYSwgc29sbGljaXR1ZGluIGVyYXQuIERvbmVjIGZhdWNpYnVzIG1pIGluIHNhcGllbiB2b2x1dHBhdCwgYWMgYXVjdG9yIGxvcmVtIG1vbGxpcy4gUHJvaW4gZWdldCB0dXJwaXMgbm9uIGxhY3VzIGJpYmVuZHVtIHBvcnRhIG5vbiBhYyBqdXN0by4gQWxpcXVhbSBhbGlxdWFtIHZpdmVycmEgbG9yZW0gYWMgcnV0cnVtLiBJbiBldCBzYXBpZW4gc2l0IGFtZXQgZGlhbSB2ZXN0aWJ1bHVtIGN1cnN1cyB1dCB0cmlzdGlxdWUgdGVsbHVzLjwvcD48cD5VdCBpbiBwdXJ1cyBtaS4gRXRpYW0gYWMgYWxpcXVldCBpcHN1bS4gUGVsbGVudGVzcXVlIGZhdWNpYnVzIGRpYW0gZHVpLiBNb3JiaSBhIHNlbXBlciBvcmNpLiBVdCBuZWMgbWFsZXN1YWRhIHVybmEuIFZlc3RpYnVsdW0gYWxpcXVldCBhbnRlIGFjIGxhY3VzIGRpY3R1bSwgc2l0IGFtZXQgcHVsdmluYXIgbGVvIGxhb3JlZXQuIE1hZWNlbmFzIHV0IGVzdCBjb21tb2RvLCBjb21tb2RvIHF1YW0gbmVjLCBkaWduaXNzaW0gZXN0LiBRdWlzcXVlIHJ1dHJ1bSBtb2xlc3RpZSBudW5jLCBzZWQgbW9sbGlzIG51bGxhIHZvbHV0cGF0IGV0LiBEb25lYyBkaWduaXNzaW0gb3JuYXJlIGF1Z3VlIGV1IGFsaXF1YW0uIEFsaXF1YW0gaW4gdGluY2lkdW50IHZlbGl0LiBJbiBhdCBmZXJtZW50dW0gbWF1cmlzLCB1dCBhY2N1bXNhbiBuaXNsLiBJbnRlcmR1bSBldCBtYWxlc3VhZGEgZmFtZXMgYWMgYW50ZSBpcHN1bSBwcmltaXMgaW4gZmF1Y2lidXMuPC9wPjxwPkludGVnZXIgYWMgbnVsbGEgYXQgbmlzaSBzb2RhbGVzIHVsbGFtY29ycGVyIGlkIGluIGp1c3RvLiBDdW0gc29jaWlzIG5hdG9xdWUgcGVuYXRpYnVzIGV0IG1hZ25pcyBkaXMgcGFydHVyaWVudCBtb250ZXMsIG5hc2NldHVyIHJpZGljdWx1cyBtdXMuIEV0aWFtIHBoYXJldHJhIGVsaXQgb2RpbywgYWMgbWF0dGlzIHR1cnBpcyBjb25zZXF1YXQgYWMuIFBlbGxlbnRlc3F1ZSB0aW5jaWR1bnQgc2VkIGVuaW0gbmVjIGF1Y3Rvci4gUXVpc3F1ZSB2YXJpdXMsIGZlbGlzIGEgaGVuZHJlcml0IGZhdWNpYnVzLCBudW5jIGxvcmVtIHZhcml1cyBuaWJoLCB2ZWwgZGlnbmlzc2ltIHZlbGl0IGRvbG9yIHV0IGVsaXQuIE1hdXJpcyB1dCB2dWxwdXRhdGUgbmVxdWUuIERvbmVjIGF0IGVzdCB2aXRhZSBtYXNzYSBlZ2VzdGFzIGZyaW5naWxsYS4gUHJhZXNlbnQgYSB0cmlzdGlxdWUgbmliaC4gTnVuYyBibGFuZGl0IGR1aSByaXN1cywgcXVpcyByaG9uY3VzIG5pc2kgY29uc2VjdGV0dXIgdmVsLjwvcD4iO30='),(96,'','2015-02-25 06:54:26','2015-02-25 06:54:26',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6Ijk2IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjA7czo5OiJ0aXRsZVRleHQiO3M6MDoiIjt9'),(97,'','2015-02-25 06:54:26','2015-02-25 06:54:26',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijk3IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI4Ijt9'),(98,'','2015-02-25 06:54:27','2015-02-25 06:54:27',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6Ijk4IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRUZXN0aW1vbmlhbCI7czozOiJmSUQiO3M6MToiMyI7czo0OiJuYW1lIjtzOjEwOiJKb2huIFNtaXRoIjtzOjg6InBvc2l0aW9uIjtzOjE2OiJDby1Gb3VuZGVyIC8gQ0VPIjtzOjc6ImNvbXBhbnkiO3M6MDoiIjtzOjEwOiJjb21wYW55VVJMIjtzOjA6IiI7czo5OiJwYXJhZ3JhcGgiO3M6MTQ3OiJDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4iO30='),(99,'','2015-02-25 06:54:27','2015-02-25 06:54:27',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6Ijk5IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRUZXN0aW1vbmlhbCI7czozOiJmSUQiO3M6MToiMyI7czo0OiJuYW1lIjtzOjk6IkJvYiBTbWl0aCI7czo4OiJwb3NpdGlvbiI7czoxNjoiQ28tRm91bmRlciAvIENUTyI7czo3OiJjb21wYW55IjtzOjA6IiI7czoxMDoiY29tcGFueVVSTCI7czowOiIiO3M6OToicGFyYWdyYXBoIjtzOjE0NzoiQ3VyYWJpdHVyIHNhZ2l0dGlzIGVsZW1lbnR1bSBmZWxpcyBhdCBzb2RhbGVzLiBOdWxsYW0gZmVybWVudHVtIGF0IHVybmEgcXVpcyBhY2N1bXNhbi4gTmFtIGJpYmVuZHVtIGxlbyBuaXNpLCBsYWNpbmlhIG1vbGVzdGllIGFyY3UgY29uc2VxdWF0IHF1aXMuIjt9'),(100,'','2015-02-25 06:54:27','2015-02-25 06:54:27',NULL,'0',26,1,NULL),(101,'','2015-02-25 06:54:27','2015-02-25 06:54:27',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEwMSI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MToiOSI7fQ=='),(102,'','2015-02-25 06:54:28','2015-02-25 06:54:28',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjEwMiI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtzOjE6IjMiO3M6NDoibmFtZSI7czoxMDoiSm9obiBTbWl0aCI7czo4OiJwb3NpdGlvbiI7czoxMjoiQXJ0IERpcmVjdG9yIjtzOjc6ImNvbXBhbnkiO3M6MDoiIjtzOjEwOiJjb21wYW55VVJMIjtzOjA6IiI7czo5OiJwYXJhZ3JhcGgiO3M6MTQ3OiJDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4iO30='),(103,'','2015-02-25 06:54:28','2015-02-25 06:54:28',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjEwMyI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtzOjE6IjMiO3M6NDoibmFtZSI7czoxMDoiSm9obiBTbWl0aCI7czo4OiJwb3NpdGlvbiI7czoxMjoiQXJ0IERpcmVjdG9yIjtzOjc6ImNvbXBhbnkiO3M6MDoiIjtzOjEwOiJjb21wYW55VVJMIjtzOjA6IiI7czo5OiJwYXJhZ3JhcGgiO3M6MTQ3OiJDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4iO30='),(104,'','2015-02-25 06:54:28','2015-02-25 06:54:28',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjEwNCI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtzOjE6IjMiO3M6NDoibmFtZSI7czo5OiJCb2IgU21pdGgiO3M6ODoicG9zaXRpb24iO3M6MTI6IkFydCBEaXJlY3RvciI7czo3OiJjb21wYW55IjtzOjA6IiI7czoxMDoiY29tcGFueVVSTCI7czowOiIiO3M6OToicGFyYWdyYXBoIjtzOjE0NzoiQ3VyYWJpdHVyIHNhZ2l0dGlzIGVsZW1lbnR1bSBmZWxpcyBhdCBzb2RhbGVzLiBOdWxsYW0gZmVybWVudHVtIGF0IHVybmEgcXVpcyBhY2N1bXNhbi4gTmFtIGJpYmVuZHVtIGxlbyBuaXNpLCBsYWNpbmlhIG1vbGVzdGllIGFyY3UgY29uc2VxdWF0IHF1aXMuIjt9'),(105,'','2015-02-25 06:54:29','2015-02-25 06:54:29',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjEwNSI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtzOjE6IjMiO3M6NDoibmFtZSI7czo5OiJCb2IgU21pdGgiO3M6ODoicG9zaXRpb24iO3M6MTI6IkFydCBEaXJlY3RvciI7czo3OiJjb21wYW55IjtzOjA6IiI7czoxMDoiY29tcGFueVVSTCI7czowOiIiO3M6OToicGFyYWdyYXBoIjtzOjE0NzoiQ3VyYWJpdHVyIHNhZ2l0dGlzIGVsZW1lbnR1bSBmZWxpcyBhdCBzb2RhbGVzLiBOdWxsYW0gZmVybWVudHVtIGF0IHVybmEgcXVpcyBhY2N1bXNhbi4gTmFtIGJpYmVuZHVtIGxlbyBuaXNpLCBsYWNpbmlhIG1vbGVzdGllIGFyY3UgY29uc2VxdWF0IHF1aXMuIjt9'),(106,'','2015-02-25 06:54:29','2015-02-25 06:54:29',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjEwNiI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtzOjE6IjMiO3M6NDoibmFtZSI7czo5OiJCb2IgU21pdGgiO3M6ODoicG9zaXRpb24iO3M6MTI6IkFydCBEaXJlY3RvciI7czo3OiJjb21wYW55IjtzOjA6IiI7czoxMDoiY29tcGFueVVSTCI7czowOiIiO3M6OToicGFyYWdyYXBoIjtzOjE0NzoiQ3VyYWJpdHVyIHNhZ2l0dGlzIGVsZW1lbnR1bSBmZWxpcyBhdCBzb2RhbGVzLiBOdWxsYW0gZmVybWVudHVtIGF0IHVybmEgcXVpcyBhY2N1bXNhbi4gTmFtIGJpYmVuZHVtIGxlbyBuaXNpLCBsYWNpbmlhIG1vbGVzdGllIGFyY3UgY29uc2VxdWF0IHF1aXMuIjt9'),(107,'','2015-02-25 06:54:30','2015-02-25 06:54:30',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjEwNyI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtzOjE6IjMiO3M6NDoibmFtZSI7czo5OiJCb2IgU21pdGgiO3M6ODoicG9zaXRpb24iO3M6MTI6IkFydCBEaXJlY3RvciI7czo3OiJjb21wYW55IjtzOjA6IiI7czoxMDoiY29tcGFueVVSTCI7czowOiIiO3M6OToicGFyYWdyYXBoIjtzOjE0NzoiQ3VyYWJpdHVyIHNhZ2l0dGlzIGVsZW1lbnR1bSBmZWxpcyBhdCBzb2RhbGVzLiBOdWxsYW0gZmVybWVudHVtIGF0IHVybmEgcXVpcyBhY2N1bXNhbi4gTmFtIGJpYmVuZHVtIGxlbyBuaXNpLCBsYWNpbmlhIG1vbGVzdGllIGFyY3UgY29uc2VxdWF0IHF1aXMuIjt9'),(108,'','2015-02-25 06:54:30','2015-02-25 06:54:30',NULL,'0',26,1,NULL),(109,'','2015-02-25 06:54:30','2015-02-25 06:54:30',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEwOSI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTAiO30='),(110,'','2015-02-25 06:54:30','2015-02-25 06:54:30',NULL,'0',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiIxMTAiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRJbWFnZSI7czozOiJmSUQiO3M6MToiNSI7czoxMDoiZk9uc3RhdGVJRCI7aTowO3M6ODoibWF4V2lkdGgiO2k6MDtzOjk6Im1heEhlaWdodCI7aTowO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7aTowO3M6NzoiYWx0VGV4dCI7czoxMToiQmxhbmsgSW1hZ2UiO3M6NToidGl0bGUiO3M6MTE6IkJsYW5rIEltYWdlIjt9'),(111,'','2015-02-25 06:54:31','2015-02-25 06:54:31',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExMSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MzE5OiIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwIGNsYXNzPSJ0aXRsZS10aGluIj5HZXQgaW4gVG91Y2g8L3A+PHA+U2VkIGN1cnN1cyBmYWNpbGlzaXMgZGlnbmlzc2ltLiBBbGlxdWFtIHJob25jdXMgZW5pbSBldCBwZWxsZW50ZXNxdWUgdmFyaXVzLiBOdWxsYSBzb2RhbGVzIG5pYmggbG9yZW0sIHNpdCBhbWV0IGltcGVyZGlldCBhcmN1IGNvbW1vZG8gc2l0IGFtZXQuPGJyPjxicj48L3A+PHA+PGEgY2xhc3M9ImJ0biBidG4tc3VjY2VzcyIgaHJlZj0ie0NDTTpDSURfMTU4fSI+Q29udGFjdCBVczwvYT48L3A+Ijt9'),(112,'','2015-02-25 06:54:32','2015-02-25 06:54:32',NULL,'0',5,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE1OntzOjM6ImJJRCI7czozOiIxMTIiO3M6OToiACoAX3RhYmxlIjtzOjE4OiJidENvcmVDb252ZXJzYXRpb24iO3M6NToiY252SUQiO3M6MToiMiI7czoxMzoiZW5hYmxlUG9zdGluZyI7czoxOiIxIjtzOjg6InBhZ2luYXRlIjtzOjE6IjEiO3M6MTI6Iml0ZW1zUGVyUGFnZSI7czoyOiI1MCI7czoxMToiZGlzcGxheU1vZGUiO3M6ODoidGhyZWFkZWQiO3M6Nzoib3JkZXJCeSI7czo4OiJkYXRlX2FzYyI7czoxNDoiZW5hYmxlT3JkZXJpbmciO2k6MDtzOjE5OiJlbmFibGVDb21tZW50UmF0aW5nIjtzOjE6IjEiO3M6MTg6ImRpc3BsYXlQb3N0aW5nRm9ybSI7czozOiJ0b3AiO3M6MTU6ImFkZE1lc3NhZ2VMYWJlbCI7czoxMToiQWRkIE1lc3NhZ2UiO3M6MTA6ImRhdGVGb3JtYXQiO3M6NzoiZGVmYXVsdCI7czoxNjoiY3VzdG9tRGF0ZUZvcm1hdCI7czowOiIiO3M6MTc6Imluc2VydE5ld01lc3NhZ2VzIjtzOjM6InRvcCI7fQ=='),(113,'','2015-02-25 06:54:32','2015-02-25 06:54:32',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExMyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MzA3MDoiPGJsb2NrcXVvdGU+RnVzY2Ugdm9sdXRwYXQgc29kYWxlcyBtYXVyaXMgcXVpcyBkYXBpYnVzLiBNYWVjZW5hcyBjb252YWxsaXMsIGxpYmVybyBldSB1bHRyaWNlcyBpbnRlcmR1bSwgbGVvIG1hdXJpcyBjb21tb2RvIGRpYW0sIHNlZCBjdXJzdXMgc2FwaWVuIGxpZ3VsYSBuZWMgbGVvLjwvYmxvY2txdW90ZT48cD5DdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4gTW9yYmkgYXQgc3VzY2lwaXQgcmlzdXMuIFNlZCBjb25zZXF1YXQgZWxlaWZlbmQgbWV0dXMsIHZpdGFlIG1hbGVzdWFkYSBlcm9zIGVsZW1lbnR1bSBzZWQuIEZ1c2NlIHJpc3VzIGZlbGlzLCB2aXZlcnJhIGV0IGRpZ25pc3NpbSBhdCwgbG9ib3J0aXMgbm9uIGVzdC4gTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gTnVsbGFtIHNpdCBhbWV0IGNvbnNlY3RldHVyIGxhY3VzLiBWZXN0aWJ1bHVtIG5lcXVlIGxlY3R1cywgZWdlc3RhcyBub24gY3Vyc3VzIHZpdGFlLCBhbGlxdWFtIGF0IG1hZ25hLiBFdGlhbSBhbGlxdWFtLCBqdXN0byBldCB2YXJpdXMgZWxlaWZlbmQsIGR1aSBsZWN0dXMgZWdlc3RhcyBudW5jLCB2ZWwgbWFsZXN1YWRhIG5pc2wgcHVydXMgbmVjIG1ldHVzLiBJbiBncmF2aWRhIHR1cnBpcyBhIHBoYXJldHJhIGNvbW1vZG8uIERvbmVjIG5vbiB0dXJwaXMgdnVscHV0YXRlLCBmYXVjaWJ1cyBtZXR1cyBhLCBjb25zZWN0ZXR1ciBudW5jLiBNb3JiaSB0b3J0b3IgbmlzaSwgaGVuZHJlcml0IHNlZCBsYW9yZWV0IGVnZXQsIGZlcm1lbnR1bSBldCBqdXN0by4gU3VzcGVuZGlzc2UgcG90ZW50aS48L3A+PHA+PGEgaHJlZj0ie0NDTTpGSURfRExfMn0iIGRhdGEtY29uY3JldGU1LWxpbmstbGF1bmNoPSJsaWdodGJveCIgZGF0YS1jb25jcmV0ZTUtbGluay10eXBlPSJpbWFnZSI+PGNvbmNyZXRlLXBpY3R1cmUgYWx0PSIiIGZpZD0iMiIgLz48L2E+PC9wPjxoMj5IZWFkaW5nIDI8L2gyPjxwPkN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIE5hbSBiaWJlbmR1bSBsZW8gbmlzaSwgbGFjaW5pYSBtb2xlc3RpZSBhcmN1IGNvbnNlcXVhdCBxdWlzLiBNb3JiaSBhdCBzdXNjaXBpdCByaXN1cy4gU2VkIGNvbnNlcXVhdCBlbGVpZmVuZCBtZXR1cywgdml0YWUgbWFsZXN1YWRhIGVyb3MgZWxlbWVudHVtIHNlZC4gRnVzY2UgcmlzdXMgZmVsaXMsIHZpdmVycmEgZXQgZGlnbmlzc2ltIGF0LCBsb2JvcnRpcyBub24gZXN0LiBMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBOdWxsYW0gc2l0IGFtZXQgY29uc2VjdGV0dXIgbGFjdXMuIFZlc3RpYnVsdW0gbmVxdWUgbGVjdHVzLCBlZ2VzdGFzIG5vbiBjdXJzdXMgdml0YWUsIGFsaXF1YW0gYXQgbWFnbmEuIEV0aWFtIGFsaXF1YW0sIGp1c3RvIGV0IHZhcml1cyBlbGVpZmVuZCwgZHVpIGxlY3R1cyBlZ2VzdGFzIG51bmMsIHZlbCBtYWxlc3VhZGEgbmlzbCBwdXJ1cyBuZWMgbWV0dXMuIEluIGdyYXZpZGEgdHVycGlzIGEgcGhhcmV0cmEgY29tbW9kby4gRG9uZWMgbm9uIHR1cnBpcyB2dWxwdXRhdGUsIGZhdWNpYnVzIG1ldHVzIGEsIGNvbnNlY3RldHVyIG51bmMuIE1vcmJpIHRvcnRvciBuaXNpLCBoZW5kcmVyaXQgc2VkIGxhb3JlZXQgZWdldCwgZmVybWVudHVtIGV0IGp1c3RvLiBTdXNwZW5kaXNzZSBwb3RlbnRpLjwvcD48aDM+SGVhZGluZyAzPC9oMz48cD5QZWxsZW50ZXNxdWUgdWx0cmljaWVzIGxpZ3VsYSB2ZWwgbmVxdWUgZGljdHVtLCBldSBtb2xsaXMgdG9ydG9yIGFkaXBpc2NpbmcuIEV0aWFtIGNvbmd1ZSwgZXN0IHZlbCB0aW5jaWR1bnQgdmVzdGlidWx1bSwgbnVuYyBudW5jIHBvcnRhIG51bGxhLCBhdCBhZGlwaXNjaW5nIG5lcXVlIHRlbGx1cyBxdWlzIHVybmEuIFF1aXNxdWUgZGlnbmlzc2ltIG5lcXVlIGEgaXBzdW0gc29kYWxlcywgbWF0dGlzIGFsaXF1YW0gYW50ZSBkaWN0dW0uIFZlc3RpYnVsdW0gZWxlbWVudHVtIHBlbGxlbnRlc3F1ZSB0b3J0b3IgYWMgY29uZ3VlLiBNYXVyaXMgdmVsIG5pYmggaWQgbWV0dXMgdGluY2lkdW50IGVsZWlmZW5kLiBJbiBpbnRlcmR1bSBncmF2aWRhIGxpZ3VsYSwgYXQgdmVuZW5hdGlzIG9kaW8gZmVybWVudHVtIGF0LiBEb25lYyBkYXBpYnVzIGVuaW0gbGVjdHVzLCBxdWlzIHZlbmVuYXRpcyB0ZWxsdXMgdm9sdXRwYXQgaW4uIE51bGxhbSBpbiB2ZWxpdCB0b3J0b3IuPC9wPjxoMz5IZWFkaW5nIDM8L2gzPjxwPkRvbmVjIGJsYW5kaXQgbGVjdHVzIG5lYyBuZXF1ZSB1bGxhbWNvcnBlciByaG9uY3VzLiBTZWQgYWRpcGlzY2luZyB0ZW1wdXMgc2VtIGV1IG1vbGVzdGllLiBBZW5lYW4gbGFvcmVldCBwcmV0aXVtIGFudGUgdml0YWUgdWx0cmljZXMuIEFlbmVhbiBldSBncmF2aWRhIG1hZ25hLCB2ZWwgYWxpcXVldCBtYWduYS4gSW4gYXVjdG9yIGNvbnZhbGxpcyBncmF2aWRhLiBQaGFzZWxsdXMgZXN0IGVyYXQsIGFkaXBpc2NpbmcgbmVjIGxvYm9ydGlzIHF1aXMsIGVsZWlmZW5kIGF0IHNlbS4gQ3VyYWJpdHVyIGZyaW5naWxsYSB2aXZlcnJhIGRvbG9yLCBpbiBydXRydW0gaXBzdW0gcnV0cnVtIHNpdCBhbWV0LiBWZXN0aWJ1bHVtIGZldWdpYXQgcG9ydHRpdG9yIGlwc3VtIHZlbCBjb25kaW1lbnR1bS4gU3VzcGVuZGlzc2UgYXQgdGVtcHVzIGxpYmVyby4gU2VkIGV1IHRlbXBvciBlbmltLiBFdGlhbSBjb252YWxsaXMgZWxlaWZlbmQgcnV0cnVtLiBEb25lYyBwb3J0YSBkaWFtIHF1aXMgdGVsbHVzIGZldWdpYXQgZGlnbmlzc2ltLiBDcmFzIHBvc3VlcmUsIG1hc3NhIGVnZXQgbGFvcmVldCBsYW9yZWV0LCB1cm5hIGxpYmVybyBsb2JvcnRpcyBkb2xvciwgc2VkIGNvbnNlcXVhdCBlbGl0IHVybmEgZWdldCBtYXNzYS4gRG9uZWMgYWxpcXVldCBwZWxsZW50ZXNxdWUgY29uc2VjdGV0dXIuPC9wPiI7fQ=='),(114,'','2015-02-25 06:54:35','2015-02-25 06:54:35',NULL,'0',5,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE1OntzOjM6ImJJRCI7czozOiIxMTQiO3M6OToiACoAX3RhYmxlIjtzOjE4OiJidENvcmVDb252ZXJzYXRpb24iO3M6NToiY252SUQiO3M6MToiMyI7czoxMzoiZW5hYmxlUG9zdGluZyI7czoxOiIxIjtzOjg6InBhZ2luYXRlIjtzOjE6IjEiO3M6MTI6Iml0ZW1zUGVyUGFnZSI7czoyOiI1MCI7czoxMToiZGlzcGxheU1vZGUiO3M6ODoidGhyZWFkZWQiO3M6Nzoib3JkZXJCeSI7czo4OiJkYXRlX2FzYyI7czoxNDoiZW5hYmxlT3JkZXJpbmciO2k6MDtzOjE5OiJlbmFibGVDb21tZW50UmF0aW5nIjtzOjE6IjEiO3M6MTg6ImRpc3BsYXlQb3N0aW5nRm9ybSI7czozOiJ0b3AiO3M6MTU6ImFkZE1lc3NhZ2VMYWJlbCI7czoxMToiQWRkIE1lc3NhZ2UiO3M6MTA6ImRhdGVGb3JtYXQiO3M6NzoiZGVmYXVsdCI7czoxNjoiY3VzdG9tRGF0ZUZvcm1hdCI7czowOiIiO3M6MTc6Imluc2VydE5ld01lc3NhZ2VzIjtzOjM6InRvcCI7fQ=='),(115,'','2015-02-25 06:54:35','2015-02-25 06:54:35',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExNSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6OTA0OiI8cD5DdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4gTW9yYmkgYXQgc3VzY2lwaXQgcmlzdXMuIFNlZCBjb25zZXF1YXQgZWxlaWZlbmQgbWV0dXMsIHZpdGFlIG1hbGVzdWFkYSBlcm9zIGVsZW1lbnR1bSBzZWQuIEZ1c2NlIHJpc3VzIGZlbGlzLCB2aXZlcnJhIGV0IGRpZ25pc3NpbSBhdCwgbG9ib3J0aXMgbm9uIGVzdC4gTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC7CoDwvcD48cD48c3BhbiBjbGFzcz0idGl0bGUtdGhpbiI+Q01TIFRvIHRoZSBSZXNjdWUhPC9zcGFuPjwvcD48cD5OdWxsYW0gc2l0IGFtZXQgY29uc2VjdGV0dXIgbGFjdXMuIFZlc3RpYnVsdW0gbmVxdWUgbGVjdHVzLCBlZ2VzdGFzIG5vbiBjdXJzdXMgdml0YWUsIGFsaXF1YW0gYXQgbWFnbmEuIEV0aWFtIGFsaXF1YW0sIGp1c3RvIGV0IHZhcml1cyBlbGVpZmVuZCwgZHVpIGxlY3R1cyBlZ2VzdGFzIG51bmMsIHZlbCBtYWxlc3VhZGEgbmlzbCBwdXJ1cyBuZWMgbWV0dXMuIEluIGdyYXZpZGEgdHVycGlzIGEgcGhhcmV0cmEgY29tbW9kby4gRG9uZWMgbm9uIHR1cnBpcyB2dWxwdXRhdGUsIGZhdWNpYnVzIG1ldHVzIGEsIGNvbnNlY3RldHVyIG51bmMuIE1vcmJpIHRvcnRvciBuaXNpLCBoZW5kcmVyaXQgc2VkIGxhb3JlZXQgZWdldCwgZmVybWVudHVtIGV0IGp1c3RvLiBTdXNwZW5kaXNzZSBwb3RlbnRpLjwvcD48cD48YSBocmVmPSJodHRwOi8vd3d3LmNvbmNyZXRlNS5vcmciPkxlYXJuIG1vcmUgYXQgY29uY3JldGU1Lm9yZ8KgPC9hPjxicj48L3A+Ijt9'),(116,'','2015-02-25 06:54:36','2015-02-25 06:54:36',NULL,'0',5,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE1OntzOjM6ImJJRCI7czozOiIxMTYiO3M6OToiACoAX3RhYmxlIjtzOjE4OiJidENvcmVDb252ZXJzYXRpb24iO3M6NToiY252SUQiO3M6MToiNCI7czoxMzoiZW5hYmxlUG9zdGluZyI7czoxOiIxIjtzOjg6InBhZ2luYXRlIjtzOjE6IjEiO3M6MTI6Iml0ZW1zUGVyUGFnZSI7czoyOiI1MCI7czoxMToiZGlzcGxheU1vZGUiO3M6ODoidGhyZWFkZWQiO3M6Nzoib3JkZXJCeSI7czo4OiJkYXRlX2FzYyI7czoxNDoiZW5hYmxlT3JkZXJpbmciO2k6MDtzOjE5OiJlbmFibGVDb21tZW50UmF0aW5nIjtzOjE6IjEiO3M6MTg6ImRpc3BsYXlQb3N0aW5nRm9ybSI7czozOiJ0b3AiO3M6MTU6ImFkZE1lc3NhZ2VMYWJlbCI7czoxMToiQWRkIE1lc3NhZ2UiO3M6MTA6ImRhdGVGb3JtYXQiO3M6NzoiZGVmYXVsdCI7czoxNjoiY3VzdG9tRGF0ZUZvcm1hdCI7czowOiIiO3M6MTc6Imluc2VydE5ld01lc3NhZ2VzIjtzOjM6InRvcCI7fQ=='),(117,'','2015-02-25 06:54:37','2015-02-25 06:54:37',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExNyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjA1MDoiPHA+Q3VyYWJpdHVyIHNhZ2l0dGlzIGVsZW1lbnR1bSBmZWxpcyBhdCBzb2RhbGVzLiBOdWxsYW0gZmVybWVudHVtIGF0IHVybmEgcXVpcyBhY2N1bXNhbi4gTmFtIGJpYmVuZHVtIGxlbyBuaXNpLCBsYWNpbmlhIG1vbGVzdGllIGFyY3UgY29uc2VxdWF0IHF1aXMuIE1vcmJpIGF0IHN1c2NpcGl0IHJpc3VzLiBTZWQgY29uc2VxdWF0IGVsZWlmZW5kIG1ldHVzLCB2aXRhZSBtYWxlc3VhZGEgZXJvcyBlbGVtZW50dW0gc2VkLiBGdXNjZSByaXN1cyBmZWxpcywgdml2ZXJyYSBldCBkaWduaXNzaW0gYXQsIGxvYm9ydGlzIG5vbiBlc3QuIExvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIE51bGxhbSBzaXQgYW1ldCBjb25zZWN0ZXR1ciBsYWN1cy4gVmVzdGlidWx1bSBuZXF1ZSBsZWN0dXMsIGVnZXN0YXMgbm9uIGN1cnN1cyB2aXRhZSwgYWxpcXVhbSBhdCBtYWduYS4gRXRpYW0gYWxpcXVhbSwganVzdG8gZXQgdmFyaXVzIGVsZWlmZW5kLCBkdWkgbGVjdHVzIGVnZXN0YXMgbnVuYywgdmVsIG1hbGVzdWFkYSBuaXNsIHB1cnVzIG5lYyBtZXR1cy4gSW4gZ3JhdmlkYSB0dXJwaXMgYSBwaGFyZXRyYSBjb21tb2RvLiBEb25lYyBub24gdHVycGlzIHZ1bHB1dGF0ZSwgZmF1Y2lidXMgbWV0dXMgYSwgY29uc2VjdGV0dXIgbnVuYy4gTW9yYmkgdG9ydG9yIG5pc2ksIGhlbmRyZXJpdCBzZWQgbGFvcmVldCBlZ2V0LCBmZXJtZW50dW0gZXQganVzdG8uIFN1c3BlbmRpc3NlIHBvdGVudGkuPC9wPjxwPjxzcGFuIGNsYXNzPSJ0aXRsZS1jYXBzLWJvbGQiPkhlYWRpbmcgMzwvc3Bhbj48L3A+PHA+UGVsbGVudGVzcXVlIHVsdHJpY2llcyBsaWd1bGEgdmVsIG5lcXVlIGRpY3R1bSwgZXUgbW9sbGlzIHRvcnRvciBhZGlwaXNjaW5nLiBFdGlhbSBjb25ndWUsIGVzdCB2ZWwgdGluY2lkdW50IHZlc3RpYnVsdW0sIG51bmMgbnVuYyBwb3J0YSBudWxsYSwgYXQgYWRpcGlzY2luZyBuZXF1ZSB0ZWxsdXMgcXVpcyB1cm5hLiBRdWlzcXVlIGRpZ25pc3NpbSBuZXF1ZSBhIGlwc3VtIHNvZGFsZXMsIG1hdHRpcyBhbGlxdWFtIGFudGUgZGljdHVtLiBWZXN0aWJ1bHVtIGVsZW1lbnR1bSBwZWxsZW50ZXNxdWUgdG9ydG9yIGFjIGNvbmd1ZS4gTWF1cmlzIHZlbCBuaWJoIGlkIG1ldHVzIHRpbmNpZHVudCBlbGVpZmVuZC4gSW4gaW50ZXJkdW0gZ3JhdmlkYSBsaWd1bGEsIGF0IHZlbmVuYXRpcyBvZGlvIGZlcm1lbnR1bSBhdC4gRG9uZWMgZGFwaWJ1cyBlbmltIGxlY3R1cywgcXVpcyB2ZW5lbmF0aXMgdGVsbHVzIHZvbHV0cGF0IGluLiBOdWxsYW0gaW4gdmVsaXQgdG9ydG9yLjwvcD48cD48YSBocmVmPSJ7Q0NNOkZJRF9ETF8xMX0iIGRhdGEtY29uY3JldGU1LWxpbmstbGF1bmNoPSJsaWdodGJveCIgZGF0YS1jb25jcmV0ZTUtbGluay10eXBlPSJpbWFnZSI+PGNvbmNyZXRlLXBpY3R1cmUgYWx0PSIiIGZpZD0iMTEiIC8+PC9hPjwvcD48cD48c3BhbiBjbGFzcz0iaW1hZ2UtY2FwdGlvbiI+TG9vayBhdCBteSBiZWF1dGlmdWwgaW1hZ2UuIERvbid0IHlvdSB0byBsb29rIG1vcmU/PC9zcGFuPjwvcD48cD5QZWxsZW50ZXNxdWUgdWx0cmljaWVzIGxpZ3VsYSB2ZWwgbmVxdWUgZGljdHVtLCBldSBtb2xsaXMgdG9ydG9yIGFkaXBpc2NpbmcuIEV0aWFtIGNvbmd1ZSwgZXN0IHZlbCB0aW5jaWR1bnQgdmVzdGlidWx1bSwgbnVuYyBudW5jIHBvcnRhIG51bGxhLCBhdCBhZGlwaXNjaW5nIG5lcXVlIHRlbGx1cyBxdWlzIHVybmEuIFF1aXNxdWUgZGlnbmlzc2ltIG5lcXVlIGEgaXBzdW0gc29kYWxlcywgbWF0dGlzIGFsaXF1YW0gYW50ZSBkaWN0dW0uIFZlc3RpYnVsdW0gZWxlbWVudHVtIHBlbGxlbnRlc3F1ZSB0b3J0b3IgYWMgY29uZ3VlLiBNYXVyaXMgdmVsIG5pYmggaWQgbWV0dXMgdGluY2lkdW50IGVsZWlmZW5kLiBJbiBpbnRlcmR1bSBncmF2aWRhIGxpZ3VsYSwgYXQgdmVuZW5hdGlzIG9kaW8gZmVybWVudHVtIGF0LiBEb25lYyBkYXBpYnVzIGVuaW0gbGVjdHVzLCBxdWlzIHZlbmVuYXRpcyB0ZWxsdXMgdm9sdXRwYXQgaW4uIE51bGxhbSBpbiB2ZWxpdCB0b3J0b3IuPC9wPiI7fQ=='),(118,'','2015-02-25 06:54:38','2015-02-25 06:54:38',NULL,'0',32,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjExOCI7czo5OiIAKgBfdGFibGUiO3M6ODoiYnRTZWFyY2giO3M6NToidGl0bGUiO3M6NjoiU2VhcmNoIjtzOjEwOiJidXR0b25UZXh0IjtzOjY6IlNlYXJjaCI7czoxNDoiYmFzZVNlYXJjaFBhdGgiO3M6MDoiIjtzOjEwOiJwb3N0VG9fY0lEIjtzOjA6IiI7czoxMDoicmVzdWx0c1VSTCI7czowOiIiO30='),(119,'','2015-02-25 06:54:39','2015-02-25 06:54:39',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjM6IjExOSI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7aTowO3M6OToidGl0bGVUZXh0IjtzOjA6IiI7fQ=='),(120,'','2015-02-25 06:54:39','2015-02-25 06:54:39',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyMCI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTEiO30='),(121,'','2015-02-25 06:54:39','2015-02-25 06:54:39',NULL,'0',24,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiIxMjEiO3M6OToiACoAX3RhYmxlIjtzOjExOiJidEdvb2dsZU1hcCI7czo1OiJ0aXRsZSI7czowOiIiO3M6ODoibG9jYXRpb24iO3M6NDc6IjEyMDAgTlcgTmFpdG8gUGt3eSwgUG9ydGxhbmQsIE9SLCBVbml0ZWQgU3RhdGVzIjtzOjg6ImxhdGl0dWRlIjtzOjEwOiI0NS41MzEzMjU0IjtzOjk6ImxvbmdpdHVkZSI7czoxMjoiLTEyMi42NzYzNDkzIjtzOjQ6Inpvb20iO2k6MTQ7czo1OiJ3aWR0aCI7czo0OiIxMDAlIjtzOjY6ImhlaWdodCI7czo1OiI0MDBweCI7czoxMToic2Nyb2xsd2hlZWwiO2k6MDt9'),(122,'','2015-02-25 06:54:40','2015-02-25 06:54:40',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyMiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjY1OiIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxoNT5IZWFkcXVhcnRlcnM8L2g1PjxwPjEyMzQgU0UgU3RyZWV0IFZpZXc8YnI+U3VpdGUgMzAxPGJyPlBvcnRsYW5kLCBPUiA5ODEwMTwvcD48aDU+SE9VUlM8L2g1PjxwPiA8c3Ryb25nPk0tRjwvc3Ryb25nPjogIDEwIEFNIC0gNyBQTTxicj48c3Ryb25nPlNhdDwvc3Ryb25nPjogTm9vbiAtIE1pZG5pZ2h0PGJyPjxzdHJvbmc+U3VuPC9zdHJvbmc+OiBDbG9zZWQ8L3A+Ijt9'),(123,'','2015-02-25 06:54:40','2015-02-25 06:54:40',NULL,'0',26,1,NULL),(124,'','2015-02-25 06:54:40','2015-02-25 06:54:40',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyNCI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTIiO30='),(125,'','2015-02-25 06:54:41','2015-02-25 06:54:41',NULL,'0',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjM6IjEyNSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7czoxOiI3IjtzOjEwOiJmT25zdGF0ZUlEIjtpOjA7czo4OiJtYXhXaWR0aCI7aTowO3M6OToibWF4SGVpZ2h0IjtpOjA7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7czo3OiJhbHRUZXh0IjtzOjA6IiI7fQ=='),(126,'','2015-02-25 06:54:41','2015-02-25 06:54:41',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyNiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NTczOiIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxoMj5DaG9vc2luZyBVczwvaDI+PHA+UGVsbGVudGVzcXVlIHVsdHJpY2llcyBsaWd1bGEgdmVsIG5lcXVlIGRpY3R1bSwgZXUgbW9sbGlzIHRvcnRvciBhZGlwaXNjaW5nLiBFdGlhbSBjb25ndWUsIGVzdCB2ZWwgdGluY2lkdW50IHZlc3RpYnVsdW0sIG51bmMgbnVuYyBwb3J0YSBudWxsYSwgYXQgYWRpcGlzY2luZyBuZXF1ZSB0ZWxsdXMgcXVpcyB1cm5hLiBRdWlzcXVlIGRpZ25pc3NpbSBuZXF1ZSBhIGlwc3VtIHNvZGFsZXMsIG1hdHRpcyBhbGlxdWFtIGFudGUgZGljdHVtLiBWZXN0aWJ1bHVtIGVsZW1lbnR1bSBwZWxsZW50ZXNxdWUgdG9ydG9yIGFjIGNvbmd1ZS4gTWF1cmlzIHZlbCBuaWJoIGlkIG1ldHVzIHRpbmNpZHVudCBlbGVpZmVuZC4gSW4gaW50ZXJkdW0gZ3JhdmlkYSBsaWd1bGEsIGF0IHZlbmVuYXRpcyBvZGlvIGZlcm1lbnR1bSBhdC4gRG9uZWMgZGFwaWJ1cyBlbmltIGxlY3R1cywgcXVpcyB2ZW5lbmF0aXMgdGVsbHVzIHZvbHV0cGF0IGluLiBOdWxsYW0gaW4gdmVsaXQgdG9ydG9yLjwvcD4iO30='),(127,'','2015-02-25 06:54:41','2015-02-25 06:54:41',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyNyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NDA6IjxoNT5XZSB3b3VsZCBsb3ZlIHRvIGhlYXIgZnJvbSB5b3UhPC9oNT4iO30='),(128,'','2015-02-25 06:54:41','2015-02-25 06:54:41',NULL,'0',17,1,NULL),(129,'','2015-02-25 06:54:42','2015-02-25 06:54:42',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyOSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NTU6IjxwPlRoaXMgaXMgbXkgZW1wdHkgY29udGVudCBibG9jayBvbiBteSBibGFuayBwYWdlLjwvcD4iO30='),(130,'','2015-02-25 06:54:42','2015-02-25 06:54:42',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjM6IjEzMCI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7aTowO3M6OToidGl0bGVUZXh0IjtzOjA6IiI7fQ=='),(131,'','2015-02-25 06:54:42','2015-02-25 06:54:42',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzMSI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTMiO30='),(132,'','2015-02-25 06:54:43','2015-02-25 06:54:43',NULL,'0',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjM6IjEzMiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7czoxOiI0IjtzOjEwOiJmT25zdGF0ZUlEIjtpOjA7czo4OiJtYXhXaWR0aCI7aTowO3M6OToibWF4SGVpZ2h0IjtpOjA7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7czo3OiJhbHRUZXh0IjtzOjA6IiI7fQ=='),(133,'','2015-02-25 06:54:43','2015-02-25 06:54:43',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzMyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTcwOiIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxibG9ja3F1b3RlPkZ1c2NlIHZvbHV0cGF0IHNvZGFsZXMgbWF1cmlzIHF1aXMgZGFwaWJ1cy4gTWFlY2VuYXMgY29udmFsbGlzLCBsaWJlcm8gZXUgdWx0cmljZXMgaW50ZXJkdW0uPC9ibG9ja3F1b3RlPiI7fQ=='),(134,'','2015-02-25 06:54:43','2015-02-25 06:54:43',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzNCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NDQ5OiIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPlBlbGxlbnRlc3F1ZSB1bHRyaWNpZXMgbGlndWxhIHZlbCBuZXF1ZSBkaWN0dW0sIGV1IG1vbGxpcyB0b3J0b3IgYWRpcGlzY2luZy4gRXRpYW0gY29uZ3VlLCBlc3QgdmVsIHRpbmNpZHVudCB2ZXN0aWJ1bHVtLCBudW5jIG51bmMgcG9ydGEgbnVsbGEsIGF0IGFkaXBpc2NpbmcgbmVxdWUgdGVsbHVzIHF1aXMgdXJuYS4gPC9wPjxwPjxhIGhyZWY9Imh0dHA6Ly93d3cueWFob28uY29tIj5RdWlzcXVlIGRpZ25pc3NpbTwvYT4gbmVxdWUgYSBpcHN1bSBzb2RhbGVzLCBtYXR0aXMgYWxpcXVhbSBhbnRlIGRpY3R1bS4gVmVzdGlidWx1bSBlbGVtZW50dW0gcGVsbGVudGVzcXVlIHRvcnRvciBhYyBjb25ndWUuIE1hdXJpcyB2ZWwgbmliaCBpZCBtZXR1cyB0aW5jaWR1bnQgZWxlaWZlbmQuPC9wPiI7fQ=='),(135,'','2015-02-25 06:54:43','2015-02-25 06:54:43',NULL,'0',26,1,NULL),(136,'','2015-02-25 06:54:44','2015-02-25 06:54:44',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzNiI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTQiO30='),(137,'','2015-02-25 06:54:44','2015-02-25 06:54:44',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzNyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTYxOiIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxoMT5IZWFkaW5nIDE8L2gxPjxoMj5IZWFkaW5nIDI8L2gyPjxoMz5IZWFkaW5nIDM8L2gzPjxoND5IZWFkaW5nIDQ8L2g0PjxoNT5IZWFkaW5nIDU8L2g1PjxoNj5IZWFkaW5nIDY8L2g2PiI7fQ=='),(138,'','2015-02-25 06:54:44','2015-02-25 06:54:44',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzOCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6ODI1OiIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPkN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIE5hbSBiaWJlbmR1bSBsZW8gbmlzaSwgbGFjaW5pYSBtb2xlc3RpZSBhcmN1IGNvbnNlcXVhdCBxdWlzLiBNb3JiaSBhdCBzdXNjaXBpdCByaXN1cy4gU2VkIGNvbnNlcXVhdCBlbGVpZmVuZCBtZXR1cywgdml0YWUgbWFsZXN1YWRhIGVyb3MgZWxlbWVudHVtIHNlZC4gRnVzY2UgcmlzdXMgZmVsaXMsIHZpdmVycmEgZXQgZGlnbmlzc2ltIGF0LCBsb2JvcnRpcyBub24gZXN0LiBMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBOdWxsYW0gc2l0IGFtZXQgY29uc2VjdGV0dXIgbGFjdXMuIFZlc3RpYnVsdW0gbmVxdWUgbGVjdHVzLCBlZ2VzdGFzIG5vbiBjdXJzdXMgdml0YWUsIGFsaXF1YW0gYXQgbWFnbmEuIEV0aWFtIGFsaXF1YW0sIGp1c3RvIGV0IHZhcml1cyBlbGVpZmVuZCwgZHVpIGxlY3R1cyBlZ2VzdGFzIG51bmMsIHZlbCBtYWxlc3VhZGEgbmlzbCBwdXJ1cyBuZWMgbWV0dXMuIEluIGdyYXZpZGEgdHVycGlzIGEgcGhhcmV0cmEgY29tbW9kby4gRG9uZWMgbm9uIHR1cnBpcyB2dWxwdXRhdGUsIGZhdWNpYnVzIG1ldHVzIGEsIGNvbnNlY3RldHVyIG51bmMuIE1vcmJpIHRvcnRvciBuaXNpLCBoZW5kcmVyaXQgc2VkIGxhb3JlZXQgZWdldCwgZmVybWVudHVtIGV0IGp1c3RvLiBTdXNwZW5kaXNzZSBwb3RlbnRpLjxicj48YnI+PGJyPjwvcD4iO30='),(139,'','2015-02-25 06:54:45','2015-02-25 06:54:45',NULL,'0',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjM6IjEzOSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7czoxOiI0IjtzOjEwOiJmT25zdGF0ZUlEIjtpOjA7czo4OiJtYXhXaWR0aCI7aTowO3M6OToibWF4SGVpZ2h0IjtpOjA7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7czo3OiJhbHRUZXh0IjtzOjA6IiI7fQ=='),(140,'','2015-02-25 06:54:45','2015-02-25 06:54:45',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE0MCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6ODIxOiIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPjxicj48YnI+Q3VyYWJpdHVyIHNhZ2l0dGlzIGVsZW1lbnR1bSBmZWxpcyBhdCBzb2RhbGVzLiBOdWxsYW0gZmVybWVudHVtIGF0IHVybmEgcXVpcyBhY2N1bXNhbi4gTmFtIGJpYmVuZHVtIGxlbyBuaXNpLCBsYWNpbmlhIG1vbGVzdGllIGFyY3UgY29uc2VxdWF0IHF1aXMuIE1vcmJpIGF0IHN1c2NpcGl0IHJpc3VzLiBTZWQgY29uc2VxdWF0IGVsZWlmZW5kIG1ldHVzLCB2aXRhZSBtYWxlc3VhZGEgZXJvcyBlbGVtZW50dW0gc2VkLiBGdXNjZSByaXN1cyBmZWxpcywgdml2ZXJyYSBldCBkaWduaXNzaW0gYXQsIGxvYm9ydGlzIG5vbiBlc3QuIExvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIE51bGxhbSBzaXQgYW1ldCBjb25zZWN0ZXR1ciBsYWN1cy4gVmVzdGlidWx1bSBuZXF1ZSBsZWN0dXMsIGVnZXN0YXMgbm9uIGN1cnN1cyB2aXRhZSwgYWxpcXVhbSBhdCBtYWduYS4gRXRpYW0gYWxpcXVhbSwganVzdG8gZXQgdmFyaXVzIGVsZWlmZW5kLCBkdWkgbGVjdHVzIGVnZXN0YXMgbnVuYywgdmVsIG1hbGVzdWFkYSBuaXNsIHB1cnVzIG5lYyBtZXR1cy4gSW4gZ3JhdmlkYSB0dXJwaXMgYSBwaGFyZXRyYSBjb21tb2RvLiBEb25lYyBub24gdHVycGlzIHZ1bHB1dGF0ZSwgZmF1Y2lidXMgbWV0dXMgYSwgY29uc2VjdGV0dXIgbnVuYy4gTW9yYmkgdG9ydG9yIG5pc2ksIGhlbmRyZXJpdCBzZWQgbGFvcmVldCBlZ2V0LCBmZXJtZW50dW0gZXQganVzdG8uIFN1c3BlbmRpc3NlIHBvdGVudGkuPC9wPiI7fQ=='),(141,'','2015-02-25 06:54:45','2015-02-25 06:54:45',NULL,'0',26,1,NULL),(142,'','2015-02-25 06:54:45','2015-02-25 06:54:45',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE0MiI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTUiO30='),(143,'','2015-02-25 06:54:46','2015-02-25 06:54:46',NULL,'0',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjM6IjE0MyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7czoxOiI1IjtzOjEwOiJmT25zdGF0ZUlEIjtpOjA7czo4OiJtYXhXaWR0aCI7aTowO3M6OToibWF4SGVpZ2h0IjtpOjA7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7czo3OiJhbHRUZXh0IjtzOjA6IiI7fQ=='),(144,'','2015-02-25 06:54:46','2015-02-25 06:54:46',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE0NCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MzE5OiIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwIGNsYXNzPSJ0aXRsZS10aGluIj5HZXQgaW4gVG91Y2g8L3A+PHA+U2VkIGN1cnN1cyBmYWNpbGlzaXMgZGlnbmlzc2ltLiBBbGlxdWFtIHJob25jdXMgZW5pbSBldCBwZWxsZW50ZXNxdWUgdmFyaXVzLiBOdWxsYSBzb2RhbGVzIG5pYmggbG9yZW0sIHNpdCBhbWV0IGltcGVyZGlldCBhcmN1IGNvbW1vZG8gc2l0IGFtZXQuPGJyPjxicj48L3A+PHA+PGEgY2xhc3M9ImJ0biBidG4tc3VjY2VzcyIgaHJlZj0ie0NDTTpDSURfMTU4fSI+Q29udGFjdCBVczwvYT48L3A+Ijt9'),(145,'','2015-02-25 06:54:46','2015-02-25 06:54:46',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjM6IjE0NSI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7aToxO3M6OToidGl0bGVUZXh0IjtzOjEyOiJXb3JrIHdpdGggVXMiO30='),(146,'','2015-02-25 06:54:47','2015-02-25 06:54:47',NULL,'0',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjM6IjE0NiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7czoxOiI5IjtzOjEwOiJmT25zdGF0ZUlEIjtpOjA7czo4OiJtYXhXaWR0aCI7aTowO3M6OToibWF4SGVpZ2h0IjtpOjA7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7czo3OiJhbHRUZXh0IjtzOjA6IiI7fQ=='),(147,'','2015-02-25 06:54:47','2015-02-25 06:54:47',NULL,'0',25,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE0NyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MzI6IjxkaXYgc3R5bGU9ImhlaWdodDogNTBweCI+PC9kaXY+Ijt9'),(148,'','2015-02-25 06:54:47','2015-02-25 06:54:47',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE0OCI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTYiO30='),(149,'','2015-02-25 06:54:48','2015-02-25 06:54:48',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE0OSI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6NDoiaG9tZSI7czo1OiJ0aXRsZSI7czoxMjoiV2VsY29tZSBIb21lIjtzOjk6InBhcmFncmFwaCI7czoxMzk6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQ3VyYWJpdHVyIHNhZ2l0dGlzIGVsZW1lbnR1bSBmZWxpcyBhdCBzb2RhbGVzLiBOdWxsYW0gZmVybWVudHVtIGF0IHVybmEgcXVpcyBhY2N1bXNhbi4iO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7aTowO30='),(150,'','2015-02-25 06:54:48','2015-02-25 06:54:48',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE1MCI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6NDoidXNlciI7czo1OiJ0aXRsZSI7czoxMzoiR3JlYXQgV29ya2VycyI7czo5OiJwYXJhZ3JhcGgiO3M6MTM5OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDt9'),(151,'','2015-02-25 06:54:48','2015-02-25 06:54:48',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE1MSI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6NDoiZmxhZyI7czo1OiJ0aXRsZSI7czoxNjoiQW1hemluZyBMb2NhdGlvbiI7czo5OiJwYXJhZ3JhcGgiO3M6MTM5OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDt9'),(152,'','2015-02-25 06:54:48','2015-02-25 06:54:48',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE1MiI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6NzoiY2xvY2stbyI7czo1OiJ0aXRsZSI7czoxMzoiUGFpZCBUaW1lIE9mZiI7czo5OiJwYXJhZ3JhcGgiO3M6MTM5OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDt9'),(153,'','2015-02-25 06:54:48','2015-02-25 06:54:48',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE1MyI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6NDoic3RhciI7czo1OiJ0aXRsZSI7czoxMToiTm8gTWVldGluZ3MiO3M6OToicGFyYWdyYXBoIjtzOjEzOToiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7fQ=='),(154,'','2015-02-25 06:54:49','2015-02-25 06:54:49',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE1NCI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6NDoiYmVlciI7czo1OiJ0aXRsZSI7czoxMToiRnJlZSBEcmlua3MiO3M6OToicGFyYWdyYXBoIjtzOjEzOToiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7fQ=='),(155,'','2015-02-25 06:54:49','2015-02-25 06:54:49',NULL,'0',26,1,NULL),(156,'','2015-02-25 06:54:49','2015-02-25 06:54:49',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE1NiI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTciO30='),(157,'','2015-02-25 06:54:50','2015-02-25 06:54:50',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE1NyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6OTc6IiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtdGhpbiI+T3BlbiBQb3NpdGlvbnM8L2Rpdj4iO30='),(158,'','2015-02-25 06:54:50','2015-02-25 06:54:50',NULL,'0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjIxOntzOjM6ImJJRCI7czozOiIxNTgiO3M6OToiACoAX3RhYmxlIjtzOjEwOiJidFBhZ2VMaXN0IjtzOjM6Im51bSI7aTowO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtzOjM6IjE3MiI7czo1OiJjVGhpcyI7czoxOiIxIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjEiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtzOjk6IkFwcGx5IE5vdyI7czoxODoiaW5jbHVkZURlc2NyaXB0aW9uIjtzOjE6IjEiO3M6MTE6ImluY2x1ZGVEYXRlIjtzOjE6IjAiO3M6MjE6ImluY2x1ZGVBbGxEZXNjZW5kZW50cyI7czoxOiIwIjtzOjg6InBhZ2luYXRlIjtpOjA7czoxNDoiZGlzcGxheUFsaWFzZXMiO3M6MToiMCI7czoyMzoiZW5hYmxlRXh0ZXJuYWxGaWx0ZXJpbmciO3M6MToiMCI7czoxNToiZmlsdGVyQnlSZWxhdGVkIjtzOjE6IjAiO3M6NDoicHRJRCI7aTo3O3M6NDoicGZJRCI7aTowO3M6MTc6InRydW5jYXRlU3VtbWFyaWVzIjtzOjE6IjAiO3M6MTk6ImRpc3BsYXlGZWF0dXJlZE9ubHkiO3M6MToiMCI7czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIwIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtpOjA7fQ=='),(159,'','2015-02-25 06:54:51','2015-02-25 06:54:51',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE1OSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTY4MDoiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPlF1aXNxdWUgYWNjdW1zYW4gbGVvIHNpdCBhbWV0IG5lcXVlIHByZXRpdW0gY29uc2VjdGV0dXIuIFNlZCBibGFuZGl0IG51bGxhIGF0IGp1c3RvIHZvbHV0cGF0IHJob25jdXMuIFNlZCByaXN1cyBvcmNpLCBsdWN0dXMgc2l0IGFtZXQgZnJpbmdpbGxhIGZhdWNpYnVzLCBjb25ndWUgbmVjIGR1aS4gUGhhc2VsbHVzIG1hdHRpcyBsb2JvcnRpcyBtYWduYSBzZWQgZGFwaWJ1cy4gRG9uZWMgc2FnaXR0aXMgbnVuYyBzZWQgYWNjdW1zYW4gZWxlaWZlbmQuIFV0IHBvcnR0aXRvciBzYXBpZW4gZXUgbmlzbCB2b2x1dHBhdCwgdml0YWUgaW50ZXJkdW0gZXN0IG1vbGxpcy4gU2VkIGxhb3JlZXQgc2l0IGFtZXQgZWxpdCBpbiBlbGVpZmVuZC4gU2VkIGEgdGluY2lkdW50IHZlbGl0LCBuZWMgcG9zdWVyZSB1cm5hLiBJbiBlZ2V0IG1ldHVzIG5vbiBlc3QgdmFyaXVzIHZpdmVycmEuIFF1aXNxdWUgYWNjdW1zYW4gb2RpbyBzZW0sIGluIGNvbnNlcXVhdCBudW5jIGxvYm9ydGlzIGFjLjwvcD48cD5DcmFzIGRpZ25pc3NpbSBudWxsYSB1dCBldWlzbW9kIGFkaXBpc2NpbmcuIE1hdXJpcyBub24gZXJvcyBzZW0uIENyYXMgYXQgbGFjaW5pYSBudWxsYS4gTWFlY2VuYXMgbmVjIG1hZ25hIGFyY3UuIEFlbmVhbiBpYWN1bGlzLCBhdWd1ZSBzZWQgcHJldGl1bSBzZW1wZXIsIG9kaW8gdGVsbHVzIHZvbHV0cGF0IHJpc3VzLCBxdWlzIGNvbnNlY3RldHVyIG5pYmggbWF1cmlzIHV0IG9kaW8uIEludGVnZXIgY29udmFsbGlzLCBhdWd1ZSBhIGFjY3Vtc2FuIGNvbmRpbWVudHVtLCBzZW0gbmlzbCBjb25ndWUgbG9yZW0sIGNvbnNlY3RldHVyIGxhY2luaWEgbmVxdWUgdG9ydG9yIGV1IG5lcXVlLiBBZW5lYW4gY29udmFsbGlzIGFyY3Ugdml0YWUgZW5pbSBkaWduaXNzaW0gdmVzdGlidWx1bS4gUGhhc2VsbHVzIHRpbmNpZHVudCBkb2xvciBpZCBlbmltIGdyYXZpZGEgdWxsYW1jb3JwZXIuIE51bGxhbSB1dCBsb3JlbSBhdWN0b3IsIGNvbmd1ZSBxdWFtIG5vbiwgYXVjdG9yIGFyY3UuIE1vcmJpIGFjIGFsaXF1YW0gaXBzdW0sIGF0IGFsaXF1ZXQgbGlndWxhLjwvcD48cD5DcmFzIGFkaXBpc2NpbmcgdGVsbHVzIG5vbiBudWxsYSBzdXNjaXBpdCBjb25ndWUuIFBlbGxlbnRlc3F1ZSBpZCBuZXF1ZSBldWlzbW9kLCBlbGVtZW50dW0gYXVndWUgdmVsLCB2b2x1dHBhdCB0dXJwaXMuIFBlbGxlbnRlc3F1ZSBzaXQgYW1ldCB0b3J0b3Igbm9uIGxvcmVtIGhlbmRyZXJpdCBwZWxsZW50ZXNxdWUgYWMgaW4gbmlzaS4gU2VkIGFsaXF1ZXQgdGluY2lkdW50IGFyY3UsIGV1IGxhY2luaWEgbG9yZW0gZnJpbmdpbGxhIGlkLiBJbnRlZ2VyIHV0IG9ybmFyZSBvcmNpLiBEb25lYyBzY2VsZXJpc3F1ZSB2dWxwdXRhdGUgZXN0IGEgY29uZGltZW50dW0uIE1vcmJpIHRlbGx1cyBzYXBpZW4sIHZlaGljdWxhIHZlbCBpcHN1bSBub24sIGx1Y3R1cyB1bGxhbWNvcnBlciBtaS4gUGhhc2VsbHVzIGZlbGlzIHRvcnRvciwgZWdlc3RhcyBxdWlzIGZlbGlzIHNpdCBhbWV0LCBtYWxlc3VhZGEgYXVjdG9yIG5pYmguIFNlZCBtb2xsaXMgbWkgc2l0IGFtZXQgdHJpc3RpcXVlIHNjZWxlcmlzcXVlLiBDcmFzIGVsZW1lbnR1bSBtYXVyaXMgdXJuYSwgdWxsYW1jb3JwZXIgY29uc2VjdGV0dXIgb3JjaSB2ZWhpY3VsYSB1dC48L3A+Ijt9'),(160,'','2015-02-25 06:54:53','2015-02-25 06:54:53',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE2MCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTY4MDoiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPlF1aXNxdWUgYWNjdW1zYW4gbGVvIHNpdCBhbWV0IG5lcXVlIHByZXRpdW0gY29uc2VjdGV0dXIuIFNlZCBibGFuZGl0IG51bGxhIGF0IGp1c3RvIHZvbHV0cGF0IHJob25jdXMuIFNlZCByaXN1cyBvcmNpLCBsdWN0dXMgc2l0IGFtZXQgZnJpbmdpbGxhIGZhdWNpYnVzLCBjb25ndWUgbmVjIGR1aS4gUGhhc2VsbHVzIG1hdHRpcyBsb2JvcnRpcyBtYWduYSBzZWQgZGFwaWJ1cy4gRG9uZWMgc2FnaXR0aXMgbnVuYyBzZWQgYWNjdW1zYW4gZWxlaWZlbmQuIFV0IHBvcnR0aXRvciBzYXBpZW4gZXUgbmlzbCB2b2x1dHBhdCwgdml0YWUgaW50ZXJkdW0gZXN0IG1vbGxpcy4gU2VkIGxhb3JlZXQgc2l0IGFtZXQgZWxpdCBpbiBlbGVpZmVuZC4gU2VkIGEgdGluY2lkdW50IHZlbGl0LCBuZWMgcG9zdWVyZSB1cm5hLiBJbiBlZ2V0IG1ldHVzIG5vbiBlc3QgdmFyaXVzIHZpdmVycmEuIFF1aXNxdWUgYWNjdW1zYW4gb2RpbyBzZW0sIGluIGNvbnNlcXVhdCBudW5jIGxvYm9ydGlzIGFjLjwvcD48cD5DcmFzIGRpZ25pc3NpbSBudWxsYSB1dCBldWlzbW9kIGFkaXBpc2NpbmcuIE1hdXJpcyBub24gZXJvcyBzZW0uIENyYXMgYXQgbGFjaW5pYSBudWxsYS4gTWFlY2VuYXMgbmVjIG1hZ25hIGFyY3UuIEFlbmVhbiBpYWN1bGlzLCBhdWd1ZSBzZWQgcHJldGl1bSBzZW1wZXIsIG9kaW8gdGVsbHVzIHZvbHV0cGF0IHJpc3VzLCBxdWlzIGNvbnNlY3RldHVyIG5pYmggbWF1cmlzIHV0IG9kaW8uIEludGVnZXIgY29udmFsbGlzLCBhdWd1ZSBhIGFjY3Vtc2FuIGNvbmRpbWVudHVtLCBzZW0gbmlzbCBjb25ndWUgbG9yZW0sIGNvbnNlY3RldHVyIGxhY2luaWEgbmVxdWUgdG9ydG9yIGV1IG5lcXVlLiBBZW5lYW4gY29udmFsbGlzIGFyY3Ugdml0YWUgZW5pbSBkaWduaXNzaW0gdmVzdGlidWx1bS4gUGhhc2VsbHVzIHRpbmNpZHVudCBkb2xvciBpZCBlbmltIGdyYXZpZGEgdWxsYW1jb3JwZXIuIE51bGxhbSB1dCBsb3JlbSBhdWN0b3IsIGNvbmd1ZSBxdWFtIG5vbiwgYXVjdG9yIGFyY3UuIE1vcmJpIGFjIGFsaXF1YW0gaXBzdW0sIGF0IGFsaXF1ZXQgbGlndWxhLjwvcD48cD5DcmFzIGFkaXBpc2NpbmcgdGVsbHVzIG5vbiBudWxsYSBzdXNjaXBpdCBjb25ndWUuIFBlbGxlbnRlc3F1ZSBpZCBuZXF1ZSBldWlzbW9kLCBlbGVtZW50dW0gYXVndWUgdmVsLCB2b2x1dHBhdCB0dXJwaXMuIFBlbGxlbnRlc3F1ZSBzaXQgYW1ldCB0b3J0b3Igbm9uIGxvcmVtIGhlbmRyZXJpdCBwZWxsZW50ZXNxdWUgYWMgaW4gbmlzaS4gU2VkIGFsaXF1ZXQgdGluY2lkdW50IGFyY3UsIGV1IGxhY2luaWEgbG9yZW0gZnJpbmdpbGxhIGlkLiBJbnRlZ2VyIHV0IG9ybmFyZSBvcmNpLiBEb25lYyBzY2VsZXJpc3F1ZSB2dWxwdXRhdGUgZXN0IGEgY29uZGltZW50dW0uIE1vcmJpIHRlbGx1cyBzYXBpZW4sIHZlaGljdWxhIHZlbCBpcHN1bSBub24sIGx1Y3R1cyB1bGxhbWNvcnBlciBtaS4gUGhhc2VsbHVzIGZlbGlzIHRvcnRvciwgZWdlc3RhcyBxdWlzIGZlbGlzIHNpdCBhbWV0LCBtYWxlc3VhZGEgYXVjdG9yIG5pYmguIFNlZCBtb2xsaXMgbWkgc2l0IGFtZXQgdHJpc3RpcXVlIHNjZWxlcmlzcXVlLiBDcmFzIGVsZW1lbnR1bSBtYXVyaXMgdXJuYSwgdWxsYW1jb3JwZXIgY29uc2VjdGV0dXIgb3JjaSB2ZWhpY3VsYSB1dC48L3A+Ijt9'),(161,'','2015-02-25 06:54:56','2015-02-25 06:54:56',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjM6IjE2MSI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7aTowO3M6OToidGl0bGVUZXh0IjtzOjI2OiJGcmVxdWVudGx5IEFza2VkIFF1ZXN0aW9ucyI7fQ=='),(162,'','2015-02-25 06:54:56','2015-02-25 06:54:56',NULL,'0',28,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE2MiI7czo5OiIAKgBfdGFibGUiO3M6NToiYnRGYXEiO3M6MTA6ImJsb2NrVGl0bGUiO3M6MDoiIjt9'),(164,'','2015-02-25 07:03:22','2015-02-25 07:03:22',NULL,'1',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiIxNjQiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRJbWFnZSI7czozOiJmSUQiO3M6MjoiMTYiO3M6MTA6ImZPbnN0YXRlSUQiO3M6MjoiMTUiO3M6ODoibWF4V2lkdGgiO2k6MDtzOjk6Im1heEhlaWdodCI7aTowO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7aTowO3M6NzoiYWx0VGV4dCI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjt9'),(165,'','2015-02-25 07:04:09','2015-02-25 07:04:10',NULL,'1',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiIxNjUiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRJbWFnZSI7czozOiJmSUQiO3M6MToiOCI7czoxMDoiZk9uc3RhdGVJRCI7czoxOiIwIjtzOjg6Im1heFdpZHRoIjtpOjA7czo5OiJtYXhIZWlnaHQiO2k6MDtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDtzOjc6ImFsdFRleHQiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7fQ==');

UNLOCK TABLES;

/*Table structure for table `blocktypepermissionblocktypeaccesslist` */

DROP TABLE IF EXISTS `blocktypepermissionblocktypeaccesslist`;

CREATE TABLE `blocktypepermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `blocktypepermissionblocktypeaccesslist` */

LOCK TABLES `blocktypepermissionblocktypeaccesslist` WRITE;

UNLOCK TABLES;

/*Table structure for table `blocktypepermissionblocktypeaccesslistcustom` */

DROP TABLE IF EXISTS `blocktypepermissionblocktypeaccesslistcustom`;

CREATE TABLE `blocktypepermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `blocktypepermissionblocktypeaccesslistcustom` */

LOCK TABLES `blocktypepermissionblocktypeaccesslistcustom` WRITE;

UNLOCK TABLES;

/*Table structure for table `blocktypes` */

DROP TABLE IF EXISTS `blocktypes`;

CREATE TABLE `blocktypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` text COLLATE utf8_unicode_ci,
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineAdd` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineEdit` tinyint(1) NOT NULL DEFAULT '0',
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`),
  KEY `btDisplayOrder` (`btDisplayOrder`,`btName`,`btID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `blocktypes` */

LOCK TABLES `blocktypes` WRITE;

insert  into `blocktypes`(`btID`,`btHandle`,`btName`,`btDescription`,`btCopyWhenPropagate`,`btIncludeAll`,`btIsInternal`,`btSupportsInlineAdd`,`btSupportsInlineEdit`,`btIgnorePageThemeGridFrameworkContainer`,`btDisplayOrder`,`btInterfaceWidth`,`btInterfaceHeight`,`pkgID`) values (1,'core_area_layout','Area Layout','Proxy block for area layouts.',0,0,1,1,1,0,0,400,400,0),(2,'core_page_type_composer_control_output','Composer Control','Proxy block for blocks that need to be output through composer.',0,0,1,0,0,0,0,400,400,0),(3,'core_scrapbook_display','Scrapbook Display','Proxy block for blocks pasted through the scrapbook.',0,0,1,0,0,0,0,400,400,0),(4,'core_stack_display','Stack Display','Proxy block for stacks added through the UI.',0,0,1,0,0,0,0,400,400,0),(5,'core_conversation','Conversation','Displays conversations on a page.',1,0,0,0,0,0,0,400,400,0),(6,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',0,0,1,0,0,0,0,300,100,0),(7,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',0,0,1,0,0,0,0,300,100,0),(8,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',0,0,1,0,0,0,0,400,400,0),(9,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',0,0,1,0,0,0,0,400,400,0),(10,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',0,0,1,0,0,0,0,400,400,0),(11,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',0,0,0,0,0,0,0,800,350,0),(12,'content','Content','HTML/WYSIWYG Editor Content.',0,0,0,1,1,0,0,600,465,0),(13,'date_navigation','Date Navigation','Displays a list of months to filter a page list by.',0,0,0,0,0,0,0,400,450,0),(14,'external_form','External Form','Include external forms in the filesystem and place them on pages.',0,0,0,0,0,0,0,370,175,0),(15,'file','File','Link to files stored in the asset library.',0,0,0,0,0,0,0,300,250,0),(16,'page_attribute_display','Page Attribute Display','Displays the value of a page attribute for the current page.',0,0,0,0,0,0,0,500,365,0),(17,'form','Form','Build simple forms and surveys.',0,0,0,0,0,0,0,420,430,0),(18,'page_title','Page Title','Displays a Page\'s Title',0,0,0,0,0,0,0,400,200,0),(19,'feature','Feature','Displays an icon, a title, and a short paragraph description.',0,0,0,0,0,0,0,400,520,0),(20,'topic_list','Topic List','Displays a list of your site\'s topics, allowing you to click on them to filter a page list.',0,0,0,0,0,0,0,400,400,0),(21,'social_links','Social Links','Allows users to add social icons to their website',0,0,0,0,0,0,0,400,400,0),(22,'testimonial','Testimonial','Displays a quote or paragraph next to biographical information and a person\'s picture.',0,0,0,0,0,0,0,450,560,0),(23,'share_this_page','Share This Page','Allows users to share this page with social networks.',0,0,0,0,0,0,0,400,400,0),(24,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',0,0,0,0,0,0,0,400,320,0),(25,'html','HTML','For adding HTML by hand.',0,0,0,0,0,1,0,600,500,0),(26,'horizontal_rule','Horizontal Rule','Adds a thin hairline horizontal divider to the page.',0,0,0,0,0,1,0,400,400,0),(27,'image','Image','Adds images and onstates from the library to pages.',0,0,0,0,0,0,0,400,550,0),(28,'faq','FAQ','Frequently Asked Questions Block',0,0,0,0,0,0,0,600,465,0),(29,'next_previous','Next & Previous Nav','Navigate through sibling pages.',0,0,0,0,0,0,0,430,400,0),(30,'page_list','Page List','List pages based on type, area.',0,0,0,0,0,0,0,800,350,0),(31,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',0,0,0,0,0,0,0,400,550,0),(32,'search','Search','Add a search box to your site.',0,0,0,0,0,0,0,400,420,0),(33,'image_slider','Image Slider','Display your images and captions in an attractive slideshow format.',0,0,0,0,0,1,0,600,465,0),(34,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',0,0,0,0,0,0,0,420,400,0),(35,'switch_language','Switch Language','Adds a front-end language switcher to your website.',0,0,0,0,0,0,0,500,150,0),(36,'tags','Tags','List pages based on type, area.',0,0,0,0,0,0,0,450,439,0),(37,'video','Video Player','Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.',0,0,0,0,0,0,0,320,270,0),(38,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',0,0,0,0,0,0,0,400,430,0);

UNLOCK TABLES;

/*Table structure for table `blocktypesetblocktypes` */

DROP TABLE IF EXISTS `blocktypesetblocktypes`;

CREATE TABLE `blocktypesetblocktypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`,`btsID`),
  KEY `btsID` (`btsID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `blocktypesetblocktypes` */

LOCK TABLES `blocktypesetblocktypes` WRITE;

insert  into `blocktypesetblocktypes`(`btID`,`btsID`,`displayOrder`) values (12,1,0),(25,1,1),(27,1,2),(15,1,3),(26,1,4),(19,1,5),(11,2,0),(18,2,1),(28,2,2),(30,2,3),(29,2,4),(13,2,5),(36,2,6),(20,2,7),(31,2,8),(35,2,9),(17,3,0),(32,3,1),(14,3,2),(34,4,0),(5,4,1),(21,4,2),(22,4,3),(23,4,4),(16,5,0),(33,5,1),(37,5,2),(38,5,3),(24,5,4);

UNLOCK TABLES;

/*Table structure for table `blocktypesets` */

DROP TABLE IF EXISTS `blocktypesets`;

CREATE TABLE `blocktypesets` (
  `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btsID`),
  UNIQUE KEY `btsHandle` (`btsHandle`),
  KEY `btsDisplayOrder` (`btsDisplayOrder`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `blocktypesets` */

LOCK TABLES `blocktypesets` WRITE;

insert  into `blocktypesets`(`btsID`,`btsName`,`btsHandle`,`pkgID`,`btsDisplayOrder`) values (1,'Basic','basic',0,0),(2,'Navigation','navigation',0,0),(3,'Forms','form',0,0),(4,'Social Networking','social',0,0),(5,'Multimedia','multimedia',0,0);

UNLOCK TABLES;

/*Table structure for table `btcontentfile` */

DROP TABLE IF EXISTS `btcontentfile`;

CREATE TABLE `btcontentfile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btcontentfile` */

LOCK TABLES `btcontentfile` WRITE;

UNLOCK TABLES;

/*Table structure for table `btcontentimage` */

DROP TABLE IF EXISTS `btcontentimage`;

CREATE TABLE `btcontentimage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btcontentimage` */

LOCK TABLES `btcontentimage` WRITE;

insert  into `btcontentimage`(`bID`,`fID`,`fOnstateID`,`maxWidth`,`maxHeight`,`externalLink`,`internalLinkCID`,`altText`,`title`) values (110,5,0,0,0,'',0,'Blank Image','Blank Image'),(125,7,0,0,0,'',0,'',NULL),(132,4,0,0,0,'',0,'',NULL),(139,4,0,0,0,'',0,'',NULL),(143,5,0,0,0,'',0,'',NULL),(146,9,0,0,0,'',0,'',NULL),(164,16,15,0,0,'',0,'',''),(165,8,0,0,0,'',0,'','');

UNLOCK TABLES;

/*Table structure for table `btcontentlocal` */

DROP TABLE IF EXISTS `btcontentlocal`;

CREATE TABLE `btcontentlocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btcontentlocal` */

LOCK TABLES `btcontentlocal` WRITE;

insert  into `btcontentlocal`(`bID`,`content`) values (1,'<div style=\"padding: 40px; text-align: center\"> <iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/VB-R71zk06U\" frameborder=\"0\" allowfullscreen></iframe>                                     </div>'),(19,'                                                     <p><a href=\"{CCM:CID_172}\" style=\"background-color: rgb(255, 255, 255);\"><i class=\"fa fa-arrow-left\"></i> Back to Careers</a></p>'),(20,'<h3>Department</h3>'),(22,'<h3>Location</h3>'),(24,'<h3>Job Information</h3>'),(26,'                                                     <br/><br/>'),(43,'                                     <p>1234 SE StreetView</p><p>Suite 301</p><p>Portland, OR 98101</p><p><a href=\"{CCM:CID_158}\">View on Google Maps</a></p>'),(44,'                                     <p>© 2014 Elemental Theme</p>'),(45,'                                                                          <p><a href=\"{CCM:CID_173}\">FAQ / Help</a></p>                                     <p><a href=\"{CCM:CID_153}\">Case Studies</a></p>                                     <p><a href=\"{CCM:CID_156}\">Blog</a></p>                                     <p><a href=\"{CCM:CID_1}\">Another Link</a></p>                                     '),(46,'<a href=\"{CCM:CID_1}\" id=\"footer-site-title\">Elemental</a>'),(50,'<a href=\"{CCM:CID_1}\" id=\"header-site-title\">Elemental</a>'),(57,'<p style=\"text-align: center\"><span class=\"title-caps-bold\">Presenting your Business has never been so easy</span></p><p style=\"text-align: center;\">Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.</p><p style=\"text-align: center;\">Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>'),(61,'<h5>Latest Blog Post</h5>'),(62,'<h5>Now Open For Business</h5>'),(66,'<p>  <span class=\"title-thin\">We specialize in making your concepts a reality.</span>  </p>  <p>    Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.  </p>  <p>    Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.<br>  </p>  <br/>  <p>  <a href=\"{CCM:CID_158}\"><span class=\"btn btn-success\">Contact Us Today</span></a>  </p>'),(67,'<p style=\"text-align: center\"><span class=\"title-caps\">Customizable footer area with accent class.</span></p>'),(76,'<h3>Awesome Features</h3><p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. </p><h3>Guide Books</h3><p>Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. </p><h3>Admin Accounts</h3><p>Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. </p>'),(77,'<h3>Support</h3><p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. </p><h3>Additional Options</h3><p>Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. </p><p>Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p>'),(78,'<p style=\"text-align: center\"><span class=\"title-caps\">What Clients Are Saying About Us</span></p>'),(85,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(87,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(89,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(91,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(93,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(95,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(111,'                                                     <p class=\"title-thin\">Get in Touch</p><p>Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet.<br><br></p><p><a class=\"btn btn-success\" href=\"{CCM:CID_158}\">Contact Us</a></p>'),(113,'<blockquote>Fusce volutpat sodales mauris quis dapibus. Maecenas convallis, libero eu ultrices interdum, leo mauris commodo diam, sed cursus sapien ligula nec leo.</blockquote><p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p><p><a href=\"{CCM:FID_DL_2}\" data-concrete5-link-launch=\"lightbox\" data-concrete5-link-type=\"image\"><concrete-picture alt=\"\" fid=\"2\" /></a></p><h2>Heading 2</h2><p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p><h3>Heading 3</h3><p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.</p><h3>Heading 3</h3><p>Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat, adipiscing nec lobortis quis, eleifend at sem. Curabitur fringilla viverra dolor, in rutrum ipsum rutrum sit amet. Vestibulum feugiat porttitor ipsum vel condimentum. Suspendisse at tempus libero. Sed eu tempor enim. Etiam convallis eleifend rutrum. Donec porta diam quis tellus feugiat dignissim. Cras posuere, massa eget laoreet laoreet, urna libero lobortis dolor, sed consequat elit urna eget massa. Donec aliquet pellentesque consectetur.</p>'),(115,'<p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p><p><span class=\"title-thin\">CMS To the Rescue!</span></p><p>Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p><p><a href=\"http://www.concrete5.org\">Learn more at concrete5.org </a><br></p>'),(117,'<p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p><p><span class=\"title-caps-bold\">Heading 3</span></p><p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.</p><p><a href=\"{CCM:FID_DL_11}\" data-concrete5-link-launch=\"lightbox\" data-concrete5-link-type=\"image\"><concrete-picture alt=\"\" fid=\"11\" /></a></p><p><span class=\"image-caption\">Look at my beautiful image. Don\'t you to look more?</span></p><p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.</p>'),(122,'                                                     <h5>Headquarters</h5><p>1234 SE Street View<br>Suite 301<br>Portland, OR 98101</p><h5>HOURS</h5><p> <strong>M-F</strong>:  10 AM - 7 PM<br><strong>Sat</strong>: Noon - Midnight<br><strong>Sun</strong>: Closed</p>'),(126,'                                                     <h2>Choosing Us</h2><p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.</p>'),(127,'<h5>We would love to hear from you!</h5>'),(129,'<p>This is my empty content block on my blank page.</p>'),(133,'                                                     <blockquote>Fusce volutpat sodales mauris quis dapibus. Maecenas convallis, libero eu ultrices interdum.</blockquote>'),(134,'                                                     <p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p><p><a href=\"http://www.yahoo.com\">Quisque dignissim</a> neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend.</p>'),(137,'                                                     <h1>Heading 1</h1><h2>Heading 2</h2><h3>Heading 3</h3><h4>Heading 4</h4><h5>Heading 5</h5><h6>Heading 6</h6>'),(138,'                                                     <p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.<br><br><br></p>'),(140,'                                                     <p><br><br>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p>'),(144,'                                                     <p class=\"title-thin\">Get in Touch</p><p>Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet.<br><br></p><p><a class=\"btn btn-success\" href=\"{CCM:CID_158}\">Contact Us</a></p>'),(147,'<div style=\"height: 50px\"></div>'),(157,'                                                     <div class=\"title-thin\">Open Positions</div>'),(159,'                                     <p>Quisque accumsan leo sit amet neque pretium consectetur. Sed blandit nulla at justo volutpat rhoncus. Sed risus orci, luctus sit amet fringilla faucibus, congue nec dui. Phasellus mattis lobortis magna sed dapibus. Donec sagittis nunc sed accumsan eleifend. Ut porttitor sapien eu nisl volutpat, vitae interdum est mollis. Sed laoreet sit amet elit in eleifend. Sed a tincidunt velit, nec posuere urna. In eget metus non est varius viverra. Quisque accumsan odio sem, in consequat nunc lobortis ac.</p><p>Cras dignissim nulla ut euismod adipiscing. Mauris non eros sem. Cras at lacinia nulla. Maecenas nec magna arcu. Aenean iaculis, augue sed pretium semper, odio tellus volutpat risus, quis consectetur nibh mauris ut odio. Integer convallis, augue a accumsan condimentum, sem nisl congue lorem, consectetur lacinia neque tortor eu neque. Aenean convallis arcu vitae enim dignissim vestibulum. Phasellus tincidunt dolor id enim gravida ullamcorper. Nullam ut lorem auctor, congue quam non, auctor arcu. Morbi ac aliquam ipsum, at aliquet ligula.</p><p>Cras adipiscing tellus non nulla suscipit congue. Pellentesque id neque euismod, elementum augue vel, volutpat turpis. Pellentesque sit amet tortor non lorem hendrerit pellentesque ac in nisi. Sed aliquet tincidunt arcu, eu lacinia lorem fringilla id. Integer ut ornare orci. Donec scelerisque vulputate est a condimentum. Morbi tellus sapien, vehicula vel ipsum non, luctus ullamcorper mi. Phasellus felis tortor, egestas quis felis sit amet, malesuada auctor nibh. Sed mollis mi sit amet tristique scelerisque. Cras elementum mauris urna, ullamcorper consectetur orci vehicula ut.</p>'),(160,'                                     <p>Quisque accumsan leo sit amet neque pretium consectetur. Sed blandit nulla at justo volutpat rhoncus. Sed risus orci, luctus sit amet fringilla faucibus, congue nec dui. Phasellus mattis lobortis magna sed dapibus. Donec sagittis nunc sed accumsan eleifend. Ut porttitor sapien eu nisl volutpat, vitae interdum est mollis. Sed laoreet sit amet elit in eleifend. Sed a tincidunt velit, nec posuere urna. In eget metus non est varius viverra. Quisque accumsan odio sem, in consequat nunc lobortis ac.</p><p>Cras dignissim nulla ut euismod adipiscing. Mauris non eros sem. Cras at lacinia nulla. Maecenas nec magna arcu. Aenean iaculis, augue sed pretium semper, odio tellus volutpat risus, quis consectetur nibh mauris ut odio. Integer convallis, augue a accumsan condimentum, sem nisl congue lorem, consectetur lacinia neque tortor eu neque. Aenean convallis arcu vitae enim dignissim vestibulum. Phasellus tincidunt dolor id enim gravida ullamcorper. Nullam ut lorem auctor, congue quam non, auctor arcu. Morbi ac aliquam ipsum, at aliquet ligula.</p><p>Cras adipiscing tellus non nulla suscipit congue. Pellentesque id neque euismod, elementum augue vel, volutpat turpis. Pellentesque sit amet tortor non lorem hendrerit pellentesque ac in nisi. Sed aliquet tincidunt arcu, eu lacinia lorem fringilla id. Integer ut ornare orci. Donec scelerisque vulputate est a condimentum. Morbi tellus sapien, vehicula vel ipsum non, luctus ullamcorper mi. Phasellus felis tortor, egestas quis felis sit amet, malesuada auctor nibh. Sed mollis mi sit amet tristique scelerisque. Cras elementum mauris urna, ullamcorper consectetur orci vehicula ut.</p>');

UNLOCK TABLES;

/*Table structure for table `btcorearealayout` */

DROP TABLE IF EXISTS `btcorearealayout`;

CREATE TABLE `btcorearealayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btcorearealayout` */

LOCK TABLES `btcorearealayout` WRITE;

insert  into `btcorearealayout`(`bID`,`arLayoutID`) values (36,1),(52,2),(60,3),(63,4),(69,5),(75,6),(79,7),(97,8),(101,9),(109,10),(120,11),(124,12),(131,13),(136,14),(142,15),(148,16),(156,17);

UNLOCK TABLES;

/*Table structure for table `btcoreconversation` */

DROP TABLE IF EXISTS `btcoreconversation`;

CREATE TABLE `btcoreconversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insertNewMessages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  PRIMARY KEY (`bID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btcoreconversation` */

LOCK TABLES `btcoreconversation` WRITE;

insert  into `btcoreconversation`(`bID`,`cnvID`,`enablePosting`,`paginate`,`itemsPerPage`,`displayMode`,`orderBy`,`enableOrdering`,`enableCommentRating`,`displayPostingForm`,`addMessageLabel`,`dateFormat`,`customDateFormat`,`insertNewMessages`) values (16,1,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default','','top'),(112,2,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default','','top'),(114,3,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default','','top'),(116,4,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default','','top');

UNLOCK TABLES;

/*Table structure for table `btcorepagetypecomposercontroloutput` */

DROP TABLE IF EXISTS `btcorepagetypecomposercontroloutput`;

CREATE TABLE `btcorepagetypecomposercontroloutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btcorepagetypecomposercontroloutput` */

LOCK TABLES `btcorepagetypecomposercontroloutput` WRITE;

insert  into `btcorepagetypecomposercontroloutput`(`bID`,`ptComposerOutputControlID`) values (10,1),(25,2),(28,3),(32,4);

UNLOCK TABLES;

/*Table structure for table `btcorescrapbookdisplay` */

DROP TABLE IF EXISTS `btcorescrapbookdisplay`;

CREATE TABLE `btcorescrapbookdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btcorescrapbookdisplay` */

LOCK TABLES `btcorescrapbookdisplay` WRITE;

UNLOCK TABLES;

/*Table structure for table `btcorestackdisplay` */

DROP TABLE IF EXISTS `btcorestackdisplay`;

CREATE TABLE `btcorestackdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `stID` (`stID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btcorestackdisplay` */

LOCK TABLES `btcorestackdisplay` WRITE;

UNLOCK TABLES;

/*Table structure for table `btdashboardnewsflowlatest` */

DROP TABLE IF EXISTS `btdashboardnewsflowlatest`;

CREATE TABLE `btdashboardnewsflowlatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btdashboardnewsflowlatest` */

LOCK TABLES `btdashboardnewsflowlatest` WRITE;

insert  into `btdashboardnewsflowlatest`(`bID`,`slot`) values (4,'A'),(5,'B'),(8,'C');

UNLOCK TABLES;

/*Table structure for table `btdatenavigation` */

DROP TABLE IF EXISTS `btdatenavigation`;

CREATE TABLE `btdatenavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cTargetID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btdatenavigation` */

LOCK TABLES `btdatenavigation` WRITE;

insert  into `btdatenavigation`(`bID`,`title`,`filterByParent`,`redirectToResults`,`cParentID`,`cTargetID`,`ptID`) values (39,'Archives',1,0,156,0,6);

UNLOCK TABLES;

/*Table structure for table `btexternalform` */

DROP TABLE IF EXISTS `btexternalform`;

CREATE TABLE `btexternalform` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btexternalform` */

LOCK TABLES `btexternalform` WRITE;

UNLOCK TABLES;

/*Table structure for table `btfaq` */

DROP TABLE IF EXISTS `btfaq`;

CREATE TABLE `btfaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btfaq` */

LOCK TABLES `btfaq` WRITE;

insert  into `btfaq`(`bID`,`blockTitle`) values (162,'');

UNLOCK TABLES;

/*Table structure for table `btfaqentries` */

DROP TABLE IF EXISTS `btfaqentries`;

CREATE TABLE `btfaqentries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `bID` (`bID`,`sortOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btfaqentries` */

LOCK TABLES `btfaqentries` WRITE;

insert  into `btfaqentries`(`id`,`bID`,`linkTitle`,`title`,`sortOrder`,`description`) values (4,162,'What are page versions?','What are page versions?',0,'\n                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. '),(5,162,'How do I add more people as editors in my website?','How do I add more people as editors in my website?',1,'\n                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. ');

UNLOCK TABLES;

/*Table structure for table `btfeature` */

DROP TABLE IF EXISTS `btfeature`;

CREATE TABLE `btfeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btfeature` */

LOCK TABLES `btfeature` WRITE;

insert  into `btfeature`(`bID`,`icon`,`title`,`paragraph`,`externalLink`,`internalLinkCID`) values (53,'pencil','Easy to Edit','                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. ','',0),(54,'eye','Pixel Perfect','                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. ','',0),(55,'youtube-play','Media Rich','                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. ','',0),(70,'star','Quality','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet.','',0),(71,'tint','Design','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet.','',0),(72,'cog','Development','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet.','',0),(73,'lock','Security','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet.','',0),(149,'home','Welcome Home','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(150,'user','Great Workers','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(151,'flag','Amazing Location','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(152,'clock-o','Paid Time Off','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(153,'star','No Meetings','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(154,'beer','Free Drinks','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0);

UNLOCK TABLES;

/*Table structure for table `btform` */

DROP TABLE IF EXISTS `btform`;

CREATE TABLE `btform` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btform` */

LOCK TABLES `btform` WRITE;

insert  into `btform`(`bID`,`questionSetId`,`surveyName`,`thankyouMsg`,`notifyMeOnSubmission`,`recipientEmail`,`displayCaptcha`,`redirectCID`,`addFilesToSet`) values (128,1424843681,'Contact Us','Thanks!',0,'',0,0,0);

UNLOCK TABLES;

/*Table structure for table `btformanswers` */

DROP TABLE IF EXISTS `btformanswers`;

CREATE TABLE `btformanswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`aID`),
  KEY `asID` (`asID`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btformanswers` */

LOCK TABLES `btformanswers` WRITE;

UNLOCK TABLES;

/*Table structure for table `btformanswerset` */

DROP TABLE IF EXISTS `btformanswerset`;

CREATE TABLE `btformanswerset` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btformanswerset` */

LOCK TABLES `btformanswerset` WRITE;

UNLOCK TABLES;

/*Table structure for table `btformquestions` */

DROP TABLE IF EXISTS `btformquestions`;

CREATE TABLE `btformquestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`),
  KEY `bID` (`bID`,`questionSetId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btformquestions` */

LOCK TABLES `btformquestions` WRITE;

insert  into `btformquestions`(`qID`,`msqID`,`bID`,`questionSetId`,`question`,`inputType`,`options`,`position`,`width`,`height`,`required`) values (19,1,128,1424843681,'First Name','field','',0,50,3,1),(20,2,128,1424843681,'Last Name','field','',0,50,3,1),(21,3,128,1424843681,'Email Address','email','a:1:{s:22:\"send_notification_from\";i:0;}',0,50,3,1),(25,4,128,1424843681,'Subject','select','\n                                                    I love your work.%%Great website.%%Check out this cool thing I found.%%Other.',0,50,3,0),(26,5,128,1424843681,'Message','text','',0,50,3,0);

UNLOCK TABLES;

/*Table structure for table `btgooglemap` */

DROP TABLE IF EXISTS `btgooglemap`;

CREATE TABLE `btgooglemap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btgooglemap` */

LOCK TABLES `btgooglemap` WRITE;

insert  into `btgooglemap`(`bID`,`title`,`location`,`latitude`,`longitude`,`zoom`,`width`,`height`,`scrollwheel`) values (121,'','1200 NW Naito Pkwy, Portland, OR, United States',45.5313254,-122.6763493,14,'100%','400px',0);

UNLOCK TABLES;

/*Table structure for table `btimageslider` */

DROP TABLE IF EXISTS `btimageslider`;

CREATE TABLE `btimageslider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btimageslider` */

LOCK TABLES `btimageslider` WRITE;

insert  into `btimageslider`(`bID`,`navigationType`) values (51,1),(84,0),(86,0),(88,0),(90,0),(92,0),(94,0);

UNLOCK TABLES;

/*Table structure for table `btimagesliderentries` */

DROP TABLE IF EXISTS `btimagesliderentries`;

CREATE TABLE `btimagesliderentries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btimagesliderentries` */

LOCK TABLES `btimagesliderentries` WRITE;

insert  into `btimagesliderentries`(`id`,`bID`,`cID`,`fID`,`linkURL`,`internalLinkCID`,`title`,`description`,`sortOrder`) values (1,51,0,13,'',0,'Stand Out on the Web','                                    <p>Share your business with an impressive, yet minimal presentation. Let your customers understand your web presence through elegance and clarity.</p>',0),(2,51,0,14,'',0,'A Simple Image Slider','                                    <p>This image slider can have any content that you want in it.</p>',1),(3,84,0,16,'',0,'','',0),(4,84,0,15,'',0,'','',1),(5,84,0,12,'',0,'','',2),(6,86,0,16,'',0,'','',0),(7,86,0,15,'',0,'','',1),(8,86,0,12,'',0,'','',2),(9,88,0,16,'',0,'','',0),(10,88,0,15,'',0,'','',1),(11,88,0,12,'',0,'','',2),(12,90,0,16,'',0,'','',0),(13,90,0,15,'',0,'','',1),(14,90,0,12,'',0,'','',2),(15,92,0,16,'',0,'','',0),(16,92,0,15,'',0,'','',1),(17,92,0,12,'',0,'','',2),(18,94,0,16,'',0,'','',0),(19,94,0,15,'',0,'','',1),(20,94,0,12,'',0,'','',2);

UNLOCK TABLES;

/*Table structure for table `btnavigation` */

DROP TABLE IF EXISTS `btnavigation`;

CREATE TABLE `btnavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btnavigation` */

LOCK TABLES `btnavigation` WRITE;

insert  into `btnavigation`(`bID`,`orderBy`,`displayPages`,`displayPagesCID`,`displayPagesIncludeSelf`,`displaySubPages`,`displaySubPageLevels`,`displaySubPageLevelsNum`,`displayUnavailablePages`) values (48,'display_asc','top',0,0,'all','custom',1,0);

UNLOCK TABLES;

/*Table structure for table `btnextprevious` */

DROP TABLE IF EXISTS `btnextprevious`;

CREATE TABLE `btnextprevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btnextprevious` */

LOCK TABLES `btnextprevious` WRITE;

insert  into `btnextprevious`(`bID`,`nextLabel`,`previousLabel`,`parentLabel`,`loopSequence`,`excludeSystemPages`,`orderBy`) values (11,'Next Post','Last Post','',0,1,'chrono_desc');

UNLOCK TABLES;

/*Table structure for table `btpageattributedisplay` */

DROP TABLE IF EXISTS `btpageattributedisplay`;

CREATE TABLE `btpageattributedisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btpageattributedisplay` */

LOCK TABLES `btpageattributedisplay` WRITE;

insert  into `btpageattributedisplay`(`bID`,`attributeHandle`,`attributeTitleText`,`displayTag`,`dateFormat`,`thumbnailHeight`,`thumbnailWidth`) values (21,'job_posting_department','','p','m/d/y h:i:a',250,250),(23,'job_location','','p','m/d/y h:i:a',250,250),(29,'project_client','Client:','div','m/d/y h:i:a',250,250),(30,'project_tasks','Task:','div','m/d/y h:i:a',250,250),(31,'project_skills','Skills:','div','m/d/y h:i:a',250,250);

UNLOCK TABLES;

/*Table structure for table `btpagelist` */

DROP TABLE IF EXISTS `btpagelist`;

CREATE TABLE `btpagelist` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btpagelist` */

LOCK TABLES `btpagelist` WRITE;

insert  into `btpagelist`(`bID`,`num`,`orderBy`,`cParentID`,`cThis`,`useButtonForLink`,`buttonLinkText`,`pageListTitle`,`relatedTopicAttributeKeyHandle`,`includeName`,`includeDescription`,`includeDate`,`includeAllDescendents`,`paginate`,`displayAliases`,`enableExternalFiltering`,`filterByRelated`,`ptID`,`pfID`,`truncateSummaries`,`displayFeaturedOnly`,`noResultsMessage`,`displayThumbnail`,`truncateChars`) values (14,3,'random',156,0,0,NULL,'Related Posts','blog_entry_topics',1,0,0,0,0,0,0,1,6,0,0,0,NULL,0,0),(18,0,'chrono_desc',172,0,0,NULL,'Open Positions',NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0),(34,3,'random',0,0,0,NULL,'Related Projects','project_topics',1,0,0,0,0,0,0,1,8,0,0,0,'No related projects found.',0,0),(37,10,'chrono_desc',0,0,0,'',NULL,NULL,1,1,1,0,1,0,1,0,6,1,0,0,'No posts to this blog.',0,0),(42,0,'chrono_desc',0,0,0,'',NULL,NULL,1,0,0,0,1,0,1,0,8,0,0,0,'No projects found.',1,0),(58,3,'chrono_desc',0,0,1,'View Project',NULL,NULL,1,1,0,0,0,0,0,0,8,0,0,1,'',1,0),(64,1,'chrono_desc',0,0,0,'',NULL,NULL,0,0,0,0,0,0,0,0,6,0,0,0,'',1,0),(65,1,'display_asc',0,0,0,'',NULL,NULL,1,1,0,0,0,0,0,0,6,0,0,0,'',0,0),(158,0,'chrono_desc',172,1,1,'Apply Now',NULL,NULL,1,1,0,0,0,0,0,0,7,0,0,0,NULL,0,0);

UNLOCK TABLES;

/*Table structure for table `btpagetitle` */

DROP TABLE IF EXISTS `btpagetitle`;

CREATE TABLE `btpagetitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btpagetitle` */

LOCK TABLES `btpagetitle` WRITE;

insert  into `btpagetitle`(`bID`,`useCustomTitle`,`titleText`) values (9,0,'[Page Title]'),(17,0,'[Page Title]'),(27,0,'[Page Title]'),(35,0,'[Page Title]'),(40,0,'[Page Title]'),(68,1,'Our Expertise'),(96,0,''),(119,0,''),(130,0,''),(145,1,'Work with Us'),(161,0,'Frequently Asked Questions');

UNLOCK TABLES;

/*Table structure for table `btrssdisplay` */

DROP TABLE IF EXISTS `btrssdisplay`;

CREATE TABLE `btrssdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btrssdisplay` */

LOCK TABLES `btrssdisplay` WRITE;

UNLOCK TABLES;

/*Table structure for table `btsearch` */

DROP TABLE IF EXISTS `btsearch`;

CREATE TABLE `btsearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btsearch` */

LOCK TABLES `btsearch` WRITE;

insert  into `btsearch`(`bID`,`title`,`buttonText`,`baseSearchPath`,`postTo_cID`,`resultsURL`) values (49,'','','','157',''),(118,'Search','Search','','','');

UNLOCK TABLES;

/*Table structure for table `btsharethispage` */

DROP TABLE IF EXISTS `btsharethispage`;

CREATE TABLE `btsharethispage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btsharethispage` */

LOCK TABLES `btsharethispage` WRITE;

insert  into `btsharethispage`(`btShareThisPageID`,`bID`,`service`,`displayOrder`) values (1,12,'facebook',0),(2,12,'twitter',1),(3,12,'linkedin',2),(4,12,'email',3);

UNLOCK TABLES;

/*Table structure for table `btsociallinks` */

DROP TABLE IF EXISTS `btsociallinks`;

CREATE TABLE `btsociallinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btSocialLinkID`),
  KEY `bID` (`bID`,`displayOrder`),
  KEY `slID` (`slID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btsociallinks` */

LOCK TABLES `btsociallinks` WRITE;

insert  into `btsociallinks`(`btSocialLinkID`,`bID`,`slID`,`displayOrder`) values (1,47,3,0),(2,47,2,1),(3,47,1,2);

UNLOCK TABLES;

/*Table structure for table `btsurvey` */

DROP TABLE IF EXISTS `btsurvey`;

CREATE TABLE `btsurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btsurvey` */

LOCK TABLES `btsurvey` WRITE;

UNLOCK TABLES;

/*Table structure for table `btsurveyoptions` */

DROP TABLE IF EXISTS `btsurveyoptions`;

CREATE TABLE `btsurveyoptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`),
  KEY `bID` (`bID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btsurveyoptions` */

LOCK TABLES `btsurveyoptions` WRITE;

UNLOCK TABLES;

/*Table structure for table `btsurveyresults` */

DROP TABLE IF EXISTS `btsurveyresults`;

CREATE TABLE `btsurveyresults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`),
  KEY `optionID` (`optionID`),
  KEY `cID` (`cID`,`optionID`,`bID`),
  KEY `bID` (`bID`,`cID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btsurveyresults` */

LOCK TABLES `btsurveyresults` WRITE;

UNLOCK TABLES;

/*Table structure for table `btswitchlanguage` */

DROP TABLE IF EXISTS `btswitchlanguage`;

CREATE TABLE `btswitchlanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btswitchlanguage` */

LOCK TABLES `btswitchlanguage` WRITE;

UNLOCK TABLES;

/*Table structure for table `bttags` */

DROP TABLE IF EXISTS `bttags`;

CREATE TABLE `bttags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `bttags` */

LOCK TABLES `bttags` WRITE;

UNLOCK TABLES;

/*Table structure for table `bttestimonial` */

DROP TABLE IF EXISTS `bttestimonial`;

CREATE TABLE `bttestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `bttestimonial` */

LOCK TABLES `bttestimonial` WRITE;

insert  into `bttestimonial`(`bID`,`fID`,`name`,`position`,`company`,`companyURL`,`paragraph`) values (80,1,'Franz Maruna','CEO & Founder','concrete5','http://concrete5.org','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus.'),(81,1,'John Doe','Marketing Directory','CompanyCo','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus.'),(82,1,'Andrew Embler','CTO & Founder','concrete5','http://concrete5.org','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus.'),(83,1,'Jane Doe','IT Manager','CompanyCo','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus.'),(98,3,'John Smith','Co-Founder / CEO','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(99,3,'Bob Smith','Co-Founder / CTO','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(102,3,'John Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(103,3,'John Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(104,3,'Bob Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(105,3,'Bob Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(106,3,'Bob Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(107,3,'Bob Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.');

UNLOCK TABLES;

/*Table structure for table `bttopiclist` */

DROP TABLE IF EXISTS `bttopiclist`;

CREATE TABLE `bttopiclist` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `bttopiclist` */

LOCK TABLES `bttopiclist` WRITE;

insert  into `bttopiclist`(`bID`,`mode`,`topicAttributeKeyHandle`,`topicTreeID`,`cParentID`,`title`) values (13,'P','blog_entry_topics',2,156,'Topics'),(38,'S','',2,0,'Topics'),(41,'S','',3,0,'');

UNLOCK TABLES;

/*Table structure for table `btvideo` */

DROP TABLE IF EXISTS `btvideo`;

CREATE TABLE `btvideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT '0',
  `oggfID` int(10) unsigned DEFAULT '0',
  `posterfID` int(10) unsigned DEFAULT '0',
  `mp4fID` int(10) unsigned DEFAULT '0',
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btvideo` */

LOCK TABLES `btvideo` WRITE;

UNLOCK TABLES;

/*Table structure for table `btyoutube` */

DROP TABLE IF EXISTS `btyoutube`;

CREATE TABLE `btyoutube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vPlayer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `btyoutube` */

LOCK TABLES `btyoutube` WRITE;

UNLOCK TABLES;

/*Table structure for table `collectionattributevalues` */

DROP TABLE IF EXISTS `collectionattributevalues`;

CREATE TABLE `collectionattributevalues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `collectionattributevalues` */

LOCK TABLES `collectionattributevalues` WRITE;

insert  into `collectionattributevalues`(`cID`,`cvID`,`akID`,`avID`) values (2,1,4,1),(3,1,3,2),(4,1,3,3),(5,1,3,4),(6,1,3,5),(8,1,3,6),(9,1,3,7),(10,1,3,8),(11,1,5,9),(11,1,3,10),(12,1,3,11),(13,1,3,12),(14,1,3,13),(15,1,3,14),(16,1,3,15),(16,1,5,16),(17,1,3,17),(17,1,5,18),(19,1,3,19),(20,1,3,20),(22,1,3,21),(23,1,3,22),(24,1,3,23),(25,1,3,24),(26,1,3,25),(28,1,3,26),(29,1,3,27),(29,1,5,28),(31,1,5,29),(32,1,5,30),(33,1,5,31),(34,1,5,32),(35,1,5,33),(36,1,5,34),(38,1,5,35),(39,1,3,36),(40,1,3,37),(41,1,3,38),(43,1,4,39),(44,1,3,40),(48,1,3,41),(50,1,5,42),(50,1,10,43),(50,1,3,44),(51,1,3,45),(52,1,3,46),(53,1,5,47),(54,1,3,48),(55,1,3,49),(56,1,3,50),(56,1,5,51),(57,1,3,52),(58,1,3,53),(59,1,3,54),(61,1,3,55),(62,1,3,56),(63,1,3,57),(64,1,3,58),(65,1,3,59),(66,1,3,60),(67,1,3,61),(68,1,3,62),(73,1,3,63),(74,1,3,64),(75,1,3,65),(76,1,3,66),(77,1,3,67),(79,1,3,68),(80,1,3,69),(81,1,3,70),(82,1,3,71),(84,1,3,72),(85,1,3,73),(86,1,3,74),(87,1,3,75),(89,1,3,76),(90,1,3,77),(93,1,3,78),(94,1,3,79),(95,1,3,80),(96,1,3,81),(98,1,3,82),(99,1,3,83),(100,1,3,84),(101,1,3,85),(102,1,3,86),(103,1,3,87),(104,1,3,88),(105,1,3,89),(106,1,3,90),(107,1,3,91),(108,1,3,92),(109,1,3,93),(111,1,3,94),(112,1,3,95),(113,1,3,96),(114,1,3,97),(116,1,10,98),(117,1,3,99),(118,1,3,100),(119,1,3,101),(120,1,3,102),(121,1,3,103),(123,1,3,104),(124,1,5,105),(125,1,5,106),(125,1,10,107),(126,1,4,108),(127,1,4,109),(128,1,4,110),(131,1,4,111),(1,1,5,144),(1,2,5,144),(153,1,20,145),(161,1,9,146),(161,1,21,147),(161,1,23,148),(161,1,24,149),(161,1,25,150),(161,1,26,151),(162,1,21,152),(162,1,23,153),(162,1,24,154),(162,1,25,155),(162,1,26,156),(163,1,9,157),(163,1,21,158),(163,1,23,159),(163,1,24,160),(163,1,25,161),(163,1,26,162),(164,1,9,163),(164,1,21,164),(164,1,23,165),(164,1,24,166),(164,1,25,167),(164,1,26,168),(165,1,21,169),(165,1,23,170),(165,1,24,171),(165,1,25,172),(165,1,26,173),(166,1,21,174),(166,1,23,175),(166,1,24,176),(166,1,25,177),(166,1,26,178),(156,1,20,179),(168,1,1,180),(168,1,2,181),(168,1,3,182),(168,1,7,183),(168,1,11,184),(168,1,21,185),(168,1,22,186),(169,1,21,187),(169,1,22,188),(170,1,21,189),(170,1,22,190),(157,1,1,191),(157,1,2,192),(157,1,3,193),(157,1,5,194),(157,1,7,195),(157,1,11,196),(159,1,5,197),(175,1,1,198),(175,1,2,199),(175,1,3,200),(175,1,7,201),(175,1,11,202),(175,1,18,203),(175,1,19,204),(176,1,1,205),(176,1,2,206),(176,1,3,207),(176,1,7,208),(176,1,11,209),(176,1,18,210),(176,1,19,211);

UNLOCK TABLES;

/*Table structure for table `collections` */

DROP TABLE IF EXISTS `collections`;

CREATE TABLE `collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cIDDateModified` (`cID`,`cDateModified`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `collections` */

LOCK TABLES `collections` WRITE;

insert  into `collections`(`cID`,`cDateAdded`,`cDateModified`,`cHandle`) values (1,'2015-02-25 06:50:46','2015-02-25 07:01:52','home'),(2,'2015-02-25 06:52:02','2015-02-25 06:52:03','dashboard'),(3,'2015-02-25 06:52:03','2015-02-25 06:52:03','sitemap'),(4,'2015-02-25 06:52:03','2015-02-25 06:52:03','full'),(5,'2015-02-25 06:52:03','2015-02-25 06:52:03','explore'),(6,'2015-02-25 06:52:03','2015-02-25 06:52:03','search'),(7,'2015-02-25 06:52:03','2015-02-25 06:52:03','files'),(8,'2015-02-25 06:52:04','2015-02-25 06:52:04','search'),(9,'2015-02-25 06:52:04','2015-02-25 06:52:04','attributes'),(10,'2015-02-25 06:52:04','2015-02-25 06:52:04','sets'),(11,'2015-02-25 06:52:04','2015-02-25 06:52:04','add_set'),(12,'2015-02-25 06:52:04','2015-02-25 06:52:04','users'),(13,'2015-02-25 06:52:04','2015-02-25 06:52:05','search'),(14,'2015-02-25 06:52:05','2015-02-25 06:52:05','groups'),(15,'2015-02-25 06:52:05','2015-02-25 06:52:05','attributes'),(16,'2015-02-25 06:52:05','2015-02-25 06:52:05','add'),(17,'2015-02-25 06:52:05','2015-02-25 06:52:05','add_group'),(18,'2015-02-25 06:52:05','2015-02-25 06:52:05','bulkupdate'),(19,'2015-02-25 06:52:05','2015-02-25 06:52:06','group_sets'),(20,'2015-02-25 06:52:06','2015-02-25 06:52:06','points'),(21,'2015-02-25 06:52:06','2015-02-25 06:52:06','assign'),(22,'2015-02-25 06:52:06','2015-02-25 06:52:06','actions'),(23,'2015-02-25 06:52:06','2015-02-25 06:52:06','reports'),(24,'2015-02-25 06:52:06','2015-02-25 06:52:07','forms'),(25,'2015-02-25 06:52:07','2015-02-25 06:52:07','surveys'),(26,'2015-02-25 06:52:07','2015-02-25 06:52:07','logs'),(27,'2015-02-25 06:52:07','2015-02-25 06:52:07','pages'),(28,'2015-02-25 06:52:07','2015-02-25 06:52:07','themes'),(29,'2015-02-25 06:52:07','2015-02-25 06:52:07','inspect'),(30,'2015-02-25 06:52:07','2015-02-25 06:52:08','types'),(31,'2015-02-25 06:52:08','2015-02-25 06:52:08','organize'),(32,'2015-02-25 06:52:08','2015-02-25 06:52:08','add'),(33,'2015-02-25 06:52:08','2015-02-25 06:52:08','form'),(34,'2015-02-25 06:52:08','2015-02-25 06:52:08','output'),(35,'2015-02-25 06:52:08','2015-02-25 06:52:08','attributes'),(36,'2015-02-25 06:52:09','2015-02-25 06:52:09','permissions'),(37,'2015-02-25 06:52:09','2015-02-25 06:52:09','templates'),(38,'2015-02-25 06:52:09','2015-02-25 06:52:09','add'),(39,'2015-02-25 06:52:09','2015-02-25 06:52:09','attributes'),(40,'2015-02-25 06:52:09','2015-02-25 06:52:09','single'),(41,'2015-02-25 06:52:09','2015-02-25 06:52:10','feeds'),(42,'2015-02-25 06:52:10','2015-02-25 06:52:10','conversations'),(43,'2015-02-25 06:52:10','2015-02-25 06:52:10','messages'),(44,'2015-02-25 06:52:10','2015-02-25 06:52:10','workflow'),(45,'2015-02-25 06:52:10','2015-02-25 06:52:10','workflows'),(46,'2015-02-25 06:52:10','2015-02-25 06:52:11','me'),(47,'2015-02-25 06:52:11','2015-02-25 06:52:11','blocks'),(48,'2015-02-25 06:52:11','2015-02-25 06:52:11','stacks'),(49,'2015-02-25 06:52:11','2015-02-25 06:52:11','permissions'),(50,'2015-02-25 06:52:11','2015-02-25 06:52:11','list'),(51,'2015-02-25 06:52:11','2015-02-25 06:52:12','types'),(52,'2015-02-25 06:52:12','2015-02-25 06:52:12','extend'),(53,'2015-02-25 06:52:12','2015-02-25 06:52:12','news'),(54,'2015-02-25 06:52:12','2015-02-25 06:52:12','install'),(55,'2015-02-25 06:52:12','2015-02-25 06:52:12','update'),(56,'2015-02-25 06:52:12','2015-02-25 06:52:13','connect'),(57,'2015-02-25 06:52:13','2015-02-25 06:52:13','themes'),(58,'2015-02-25 06:52:13','2015-02-25 06:52:13','addons'),(59,'2015-02-25 06:52:13','2015-02-25 06:52:13','system'),(60,'2015-02-25 06:52:13','2015-02-25 06:52:13','basics'),(61,'2015-02-25 06:52:13','2015-02-25 06:52:14','name'),(62,'2015-02-25 06:52:14','2015-02-25 06:52:14','accessibility'),(63,'2015-02-25 06:52:14','2015-02-25 06:52:14','social'),(64,'2015-02-25 06:52:14','2015-02-25 06:52:14','icons'),(65,'2015-02-25 06:52:14','2015-02-25 06:52:14','editor'),(66,'2015-02-25 06:52:14','2015-02-25 06:52:15','multilingual'),(67,'2015-02-25 06:52:15','2015-02-25 06:52:15','timezone'),(68,'2015-02-25 06:52:15','2015-02-25 06:52:15','multilingual'),(69,'2015-02-25 06:52:15','2015-02-25 06:52:15','setup'),(70,'2015-02-25 06:52:15','2015-02-25 06:52:15','page_report'),(71,'2015-02-25 06:52:15','2015-02-25 06:52:16','translate_interface'),(72,'2015-02-25 06:52:16','2015-02-25 06:52:16','seo'),(73,'2015-02-25 06:52:16','2015-02-25 06:52:16','urls'),(74,'2015-02-25 06:52:16','2015-02-25 06:52:16','bulk'),(75,'2015-02-25 06:52:16','2015-02-25 06:52:16','codes'),(76,'2015-02-25 06:52:17','2015-02-25 06:52:17','excluded'),(77,'2015-02-25 06:52:17','2015-02-25 06:52:17','searchindex'),(78,'2015-02-25 06:52:17','2015-02-25 06:52:17','files'),(79,'2015-02-25 06:52:17','2015-02-25 06:52:18','permissions'),(80,'2015-02-25 06:52:18','2015-02-25 06:52:18','filetypes'),(81,'2015-02-25 06:52:18','2015-02-25 06:52:18','thumbnails'),(82,'2015-02-25 06:52:18','2015-02-25 06:52:19','storage'),(83,'2015-02-25 06:52:19','2015-02-25 06:52:19','optimization'),(84,'2015-02-25 06:52:19','2015-02-25 06:52:19','cache'),(85,'2015-02-25 06:52:19','2015-02-25 06:52:19','clearcache'),(86,'2015-02-25 06:52:19','2015-02-25 06:52:19','jobs'),(87,'2015-02-25 06:52:20','2015-02-25 06:52:20','query_log'),(88,'2015-02-25 06:52:20','2015-02-25 06:52:20','permissions'),(89,'2015-02-25 06:52:20','2015-02-25 06:52:20','site'),(90,'2015-02-25 06:52:21','2015-02-25 06:52:21','tasks'),(91,'2015-02-25 06:52:21','2015-02-25 06:52:21','users'),(92,'2015-02-25 06:52:21','2015-02-25 06:52:21','advanced'),(93,'2015-02-25 06:52:21','2015-02-25 06:52:22','blacklist'),(94,'2015-02-25 06:52:22','2015-02-25 06:52:22','captcha'),(95,'2015-02-25 06:52:23','2015-02-25 06:52:23','antispam'),(96,'2015-02-25 06:52:23','2015-02-25 06:52:23','maintenance'),(97,'2015-02-25 06:52:23','2015-02-25 06:52:23','registration'),(98,'2015-02-25 06:52:24','2015-02-25 06:52:24','postlogin'),(99,'2015-02-25 06:52:24','2015-02-25 06:52:24','profiles'),(100,'2015-02-25 06:52:24','2015-02-25 06:52:24','open'),(101,'2015-02-25 06:52:24','2015-02-25 06:52:25','authentication'),(102,'2015-02-25 06:52:25','2015-02-25 06:52:25','mail'),(103,'2015-02-25 06:52:25','2015-02-25 06:52:25','method'),(104,'2015-02-25 06:52:25','2015-02-25 06:52:26','test'),(105,'2015-02-25 06:52:26','2015-02-25 06:52:26','importers'),(106,'2015-02-25 06:52:26','2015-02-25 06:52:26','conversations'),(107,'2015-02-25 06:52:26','2015-02-25 06:52:27','settings'),(108,'2015-02-25 06:52:27','2015-02-25 06:52:27','points'),(109,'2015-02-25 06:52:27','2015-02-25 06:52:27','bannedwords'),(110,'2015-02-25 06:52:27','2015-02-25 06:52:28','permissions'),(111,'2015-02-25 06:52:28','2015-02-25 06:52:28','attributes'),(112,'2015-02-25 06:52:28','2015-02-25 06:52:28','sets'),(113,'2015-02-25 06:52:28','2015-02-25 06:52:29','types'),(114,'2015-02-25 06:52:29','2015-02-25 06:52:29','topics'),(115,'2015-02-25 06:52:29','2015-02-25 06:52:29','add'),(116,'2015-02-25 06:52:29','2015-02-25 06:52:30','environment'),(117,'2015-02-25 06:52:30','2015-02-25 06:52:30','info'),(118,'2015-02-25 06:52:30','2015-02-25 06:52:31','debug'),(119,'2015-02-25 06:52:31','2015-02-25 06:52:31','logging'),(120,'2015-02-25 06:52:31','2015-02-25 06:52:31','proxy'),(121,'2015-02-25 06:52:31','2015-02-25 06:52:32','backup'),(122,'2015-02-25 06:52:32','2015-02-25 06:52:32','backup'),(123,'2015-02-25 06:52:32','2015-02-25 06:52:32','update'),(124,'2015-02-25 06:52:34','2015-02-25 06:52:34','welcome'),(125,'2015-02-25 06:52:34','2015-02-25 06:52:34','home'),(126,'2015-02-25 06:52:56','2015-02-25 06:52:57','!drafts'),(127,'2015-02-25 06:52:57','2015-02-25 06:52:57','!trash'),(128,'2015-02-25 06:52:57','2015-02-25 06:52:57','!stacks'),(129,'2015-02-25 06:52:57','2015-02-25 06:52:57','login'),(130,'2015-02-25 06:52:57','2015-02-25 06:52:57','register'),(131,'2015-02-25 06:52:58','2015-02-25 06:52:58','account'),(132,'2015-02-25 06:52:58','2015-02-25 06:52:58','edit_profile'),(133,'2015-02-25 06:52:58','2015-02-25 06:52:58','avatar'),(134,'2015-02-25 06:52:59','2015-02-25 06:52:59','messages'),(135,'2015-02-25 06:52:59','2015-02-25 06:52:59','inbox'),(136,'2015-02-25 06:52:59','2015-02-25 06:52:59','members'),(137,'2015-02-25 06:52:59','2015-02-25 06:52:59','profile'),(138,'2015-02-25 06:53:00','2015-02-25 06:53:00','directory'),(139,'2015-02-25 06:53:00','2015-02-25 06:53:00','page_not_found'),(140,'2015-02-25 06:53:00','2015-02-25 06:53:00','page_forbidden'),(141,'2015-02-25 06:53:00','2015-02-25 06:53:00','download_file'),(142,'2015-02-25 06:53:35','2015-02-25 06:53:35','footer-contact'),(143,'2015-02-25 06:53:36','2015-02-25 06:53:36','footer-legal'),(144,'2015-02-25 06:53:36','2015-02-25 06:53:36','footer-navigation'),(145,'2015-02-25 06:53:37','2015-02-25 06:53:37','footer-site-title'),(146,'2015-02-25 06:53:37','2015-02-25 06:53:37','footer-social'),(147,'2015-02-25 06:53:37','2015-02-25 06:53:37','header-navigation'),(148,'2015-02-25 06:53:37','2015-02-25 06:53:37','header-search'),(149,'2015-02-25 06:53:37','2015-02-25 06:53:37','header-site-title'),(150,'2015-02-25 06:53:47','2015-02-25 06:53:47',NULL),(151,'2015-02-25 06:53:47','2015-02-25 06:53:47','services'),(152,'2015-02-25 06:53:47','2015-02-25 06:53:47',NULL),(153,'2015-02-25 06:53:47','2015-02-25 06:53:47','portfolio'),(154,'2015-02-25 06:53:47','2015-02-25 06:53:47','team'),(155,'2015-02-25 06:53:47','2015-02-25 06:53:47',NULL),(156,'2015-02-25 06:53:48','2015-02-25 06:53:48','blog'),(157,'2015-02-25 06:53:48','2015-02-25 06:53:48','search'),(158,'2015-02-25 06:53:48','2015-02-25 06:53:48','contact'),(159,'2015-02-25 06:53:48','2015-02-25 06:53:48','blank-page'),(160,'2015-02-25 06:53:48','2015-02-25 06:53:48',NULL),(161,'2015-02-25 06:53:48','2015-02-25 06:53:48','project-title'),(162,'2015-02-25 06:53:48','2015-02-25 06:53:49','project-title-2'),(163,'2015-02-25 06:53:49','2015-02-25 06:53:49','project-title-3'),(164,'2015-02-25 06:53:49','2015-02-25 06:53:50','project-title-4'),(165,'2015-02-25 06:53:50','2015-02-25 06:53:50','project-title-5'),(166,'2015-02-25 06:53:50','2015-02-25 06:53:50','project-title-6'),(167,'2015-02-25 06:53:50','2015-02-25 06:53:50',NULL),(168,'2015-02-25 06:53:50','2015-02-25 06:53:50','hello-world'),(169,'2015-02-25 06:53:51','2015-02-25 06:53:51','another-blog-post'),(170,'2015-02-25 06:53:51','2015-02-25 06:53:51','a-beautiful-blog'),(171,'2015-02-25 06:53:51','2015-02-25 07:04:19','about'),(172,'2015-02-25 06:53:51','2015-02-25 06:53:51','careers'),(173,'2015-02-25 06:53:51','2015-02-25 06:53:51','faq'),(174,'2015-02-25 06:53:52','2015-02-25 06:53:52',NULL),(175,'2015-02-25 06:53:52','2015-02-25 06:53:52','web-developer'),(176,'2015-02-25 06:53:52','2015-02-25 06:53:52','sales-associate'),(177,'2015-02-25 06:53:52','2015-02-25 06:53:52',NULL),(178,'2015-02-25 06:53:52','2015-02-25 06:53:52',NULL),(179,'2015-02-25 06:53:52','2015-02-25 06:53:52',NULL);

UNLOCK TABLES;

/*Table structure for table `collectionsearchindexattributes` */

DROP TABLE IF EXISTS `collectionsearchindexattributes`;

CREATE TABLE `collectionsearchindexattributes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` tinytext COLLATE utf8_unicode_ci,
  `ak_meta_description` tinytext COLLATE utf8_unicode_ci,
  `ak_meta_keywords` tinytext COLLATE utf8_unicode_ci,
  `ak_icon_dashboard` tinytext COLLATE utf8_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` tinytext COLLATE utf8_unicode_ci,
  `ak_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  `ak_job_posting_department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_job_location` tinytext COLLATE utf8_unicode_ci,
  `ak_exclude_subpages_from_nav` tinyint(1) DEFAULT '0',
  `ak_thumbnail` int(11) DEFAULT '0',
  `ak_blog_entry_topics` tinytext COLLATE utf8_unicode_ci,
  `ak_project_topics` tinytext COLLATE utf8_unicode_ci,
  `ak_project_client` tinytext COLLATE utf8_unicode_ci,
  `ak_project_tasks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_project_skills` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `collectionsearchindexattributes` */

LOCK TABLES `collectionsearchindexattributes` WRITE;

insert  into `collectionsearchindexattributes`(`cID`,`ak_meta_title`,`ak_meta_description`,`ak_meta_keywords`,`ak_icon_dashboard`,`ak_exclude_nav`,`ak_exclude_page_list`,`ak_header_extra_content`,`ak_tags`,`ak_is_featured`,`ak_exclude_search_index`,`ak_exclude_sitemapxml`,`ak_job_posting_department`,`ak_job_location`,`ak_exclude_subpages_from_nav`,`ak_thumbnail`,`ak_blog_entry_topics`,`ak_project_topics`,`ak_project_client`,`ak_project_tasks`,`ak_project_skills`) values (1,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,'fa fa-th-large',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,'find page, search page, search, find, pages, sitemap',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,'file, file attributes, title, attribute, description, rename',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,'files, category, categories',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,'new file set',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,'find, search, people, delete user, remove user, change password, password',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,'user, group, people, permissions, expire, badges',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,'user attributes, user data, gather data, registration data',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,'new user, create',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,'new user group, new group, group, create',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,'group set',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(20,NULL,NULL,'community, points, karma',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,'action, community actions',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,'forms, questions, response, data',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(25,NULL,NULL,'questions, quiz, response',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(29,NULL,NULL,'page types',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(33,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(34,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(35,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(39,NULL,NULL,'page attributes, custom',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(40,NULL,NULL,'single, page, custom, application',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(41,NULL,NULL,'atom, rss, feed, syndication',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(43,NULL,NULL,NULL,'icon-bullhorn',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(44,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(48,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(50,NULL,NULL,'edit stacks, view stacks, all stacks',NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(51,NULL,NULL,'block, refresh, custom',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(52,NULL,NULL,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(53,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(54,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(55,NULL,NULL,'update, upgrade',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(56,NULL,NULL,'concrete5.org, my account, marketplace',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(57,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(58,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(59,NULL,NULL,'dashboard, configuration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(61,NULL,NULL,'website name, title',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(62,NULL,NULL,'accessibility, easy mode',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(63,NULL,NULL,'sharing, facebook, twitter',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(64,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(65,NULL,NULL,'tinymce, content block, fonts, editor, content, overlay',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(66,NULL,NULL,'translate, translation, internationalization, multilingual',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(67,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(68,NULL,NULL,'multilingual, localization, internationalization, i18n',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(73,NULL,NULL,'vanity, pretty url, seo, pageview, view',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(74,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(75,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(76,NULL,NULL,'pretty, slug',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(77,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(79,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(80,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(81,NULL,NULL,'images, picture, responsive, retina',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(82,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(84,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(85,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(86,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(87,NULL,NULL,'queries, database, mysql',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(89,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(90,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(93,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(94,NULL,NULL,'security, registration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(95,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(96,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(98,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(99,NULL,NULL,'member profile, member page, community, forums, social, avatar',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(100,NULL,NULL,'signup, new user, community, public registration, public, registration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(101,NULL,NULL,'auth, authentication, types, oauth, facebook, login, registration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(102,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(103,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(104,NULL,NULL,'test smtp, test mail',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(105,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(106,NULL,NULL,'conversations',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(107,NULL,NULL,'conversations',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(108,NULL,NULL,'conversations ratings, ratings, community, community points',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(109,NULL,NULL,'conversations bad words, banned words, banned, bad words, bad, words, list',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(111,NULL,NULL,'attribute configuration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(112,NULL,NULL,'attributes, sets',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(113,NULL,NULL,'attributes, types',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(114,NULL,NULL,'topics, tags, taxonomy',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(116,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,1,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(117,NULL,NULL,'overrides, system info, debug, support, help',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(118,NULL,NULL,'errors, exceptions, develop, support, help',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(119,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, log',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(120,NULL,NULL,'network, proxy server',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(121,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(123,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(124,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(125,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(126,NULL,NULL,NULL,'fa fa-edit',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(127,NULL,NULL,NULL,'fa fa-trash-o',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(128,NULL,NULL,NULL,'fa fa-th',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(131,NULL,NULL,NULL,'fa fa-briefcase',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(151,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(153,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),(154,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(156,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),(157,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(158,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(159,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(161,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1,0,0,NULL,NULL,0,6,NULL,'||/Homework||','Test Client','\nArchitecture\nDesign\nProduction\n','\nHTML\nJavaScript\nPHP\n'),(162,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,8,NULL,'||/Activities||','Test Client','\nArchitecture\n','\nPHP\n'),(163,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1,0,0,NULL,NULL,0,16,NULL,'||/Homework||','Test Client 2','\nMultimedia\nProduction\nDevelopment\n','\nHTML\nJavaScript\nPHP\nCSS\n'),(164,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1,0,0,NULL,NULL,0,15,NULL,'||/Homework||','Test Client 2','\nDesign\n','\nPhotoshop\n'),(165,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,12,NULL,'||/Homework||','Test Client 2','\nDesign\n','\nPhotoshop\n'),(166,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,10,NULL,'||/Homework||','Test Client 2','\nDesign\n','\nPhotoshop\n'),(168,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,2,'||/Projects||',NULL,NULL,NULL,NULL),(169,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,7,'||/Humor||',NULL,NULL,NULL,NULL),(170,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,11,'||/Projects||',NULL,NULL,NULL,NULL),(171,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(172,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(173,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(175,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,'\nTechnical and Operations\n','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla massa lacus, vehicula eu interdum convallis, laoreet id lectus. Nunc turpis elit, aliquam sit amet aliquam tincidunt, dapibus vel tellus. ',0,0,NULL,NULL,NULL,NULL,NULL),(176,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,'\nMarketing and Sales\n','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla massa lacus, vehicula eu interdum convallis, laoreet id lectus. Nunc turpis elit, aliquam sit amet aliquam tincidunt, dapibus vel tellus. ',0,0,NULL,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `collectionversionareastyles` */

DROP TABLE IF EXISTS `collectionversionareastyles`;

CREATE TABLE `collectionversionareastyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `collectionversionareastyles` */

LOCK TABLES `collectionversionareastyles` WRITE;

insert  into `collectionversionareastyles`(`cID`,`cvID`,`arHandle`,`issID`) values (1,1,'Page Footer',14),(1,2,'Page Footer',14),(151,1,'Page Footer',15);

UNLOCK TABLES;

/*Table structure for table `collectionversionblocks` */

DROP TABLE IF EXISTS `collectionversionblocks`;

CREATE TABLE `collectionversionblocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `collectionversionblocks` */

LOCK TABLES `collectionversionblocks` WRITE;

insert  into `collectionversionblocks`(`cID`,`cvID`,`bID`,`arHandle`,`cbDisplayOrder`,`isOriginal`,`cbOverrideAreaPermissions`,`cbIncludeAll`,`cbOverrideBlockTypeCacheSettings`) values (1,1,51,'Main',0,1,0,0,0),(1,1,52,'Main',1,1,0,0,0),(1,1,53,'Main : 3',0,1,0,0,0),(1,1,54,'Main : 4',0,1,0,0,0),(1,1,55,'Main : 5',0,1,0,0,0),(1,1,56,'Main',2,1,0,0,0),(1,1,57,'Main',3,1,0,0,0),(1,1,58,'Main',4,1,0,0,0),(1,1,59,'Main',5,1,0,0,0),(1,1,60,'Main',6,1,0,0,0),(1,1,61,'Main : 6',0,1,0,0,0),(1,1,62,'Main : 7',0,1,0,0,0),(1,1,63,'Main',7,1,0,0,0),(1,1,64,'Main : 8',0,1,0,0,0),(1,1,65,'Main : 9',0,1,0,0,0),(1,1,66,'Main : 10',0,1,0,0,0),(1,1,67,'Page Footer',0,1,0,0,0),(1,2,51,'Main',1,0,0,0,0),(1,2,52,'Main',2,0,0,0,0),(1,2,53,'Main : 3',0,0,0,0,0),(1,2,54,'Main : 4',0,0,0,0,0),(1,2,55,'Main : 5',0,0,0,0,0),(1,2,56,'Main',3,0,0,0,0),(1,2,57,'Main',4,0,0,0,0),(1,2,58,'Main',5,0,0,0,0),(1,2,59,'Main',6,0,0,0,0),(1,2,60,'Main',7,0,0,0,0),(1,2,61,'Main : 6',0,0,0,0,0),(1,2,62,'Main : 7',0,0,0,0,0),(1,2,63,'Main',8,0,0,0,0),(1,2,64,'Main : 8',0,0,0,0,0),(1,2,65,'Main : 9',0,0,0,0,0),(1,2,66,'Main : 10',0,0,0,0,0),(1,2,67,'Page Footer',0,0,0,0,0),(124,1,1,'Main',0,1,0,0,0),(125,1,2,'Primary',0,1,0,0,0),(125,1,3,'Primary',1,1,0,0,0),(125,1,4,'Secondary 1',0,1,0,0,0),(125,1,5,'Secondary 2',0,1,0,0,0),(125,1,6,'Secondary 3',0,1,0,0,0),(125,1,7,'Secondary 4',0,1,0,0,0),(125,1,8,'Secondary 5',0,1,0,0,0),(142,1,43,'Main',0,1,0,0,0),(143,1,44,'Main',0,1,0,0,0),(144,1,45,'Main',0,1,0,0,0),(145,1,46,'Main',0,1,0,0,0),(146,1,47,'Main',0,1,0,0,0),(147,1,48,'Main',0,1,0,0,1),(148,1,49,'Main',0,1,0,0,0),(149,1,50,'Main',0,1,0,0,0),(151,1,68,'Main',0,1,0,0,0),(151,1,69,'Main',1,1,0,0,0),(151,1,70,'Main : 11',0,1,0,0,0),(151,1,71,'Main : 12',0,1,0,0,0),(151,1,72,'Main : 13',0,1,0,0,0),(151,1,73,'Main : 14',0,1,0,0,0),(151,1,74,'Main',2,1,0,0,0),(151,1,75,'Main',3,1,0,0,0),(151,1,76,'Main : 15',0,1,0,0,0),(151,1,77,'Main : 16',0,1,0,0,0),(151,1,78,'Page Footer',0,1,0,0,0),(151,1,79,'Page Footer',1,1,0,0,0),(151,1,80,'Page Footer : 17',0,1,0,0,0),(151,1,81,'Page Footer : 17',1,1,0,0,0),(151,1,82,'Page Footer : 18',0,1,0,0,0),(151,1,83,'Page Footer : 18',1,1,0,0,0),(152,1,40,'Main',0,1,0,0,0),(152,1,41,'Main',1,1,0,0,0),(152,1,42,'Main',2,1,0,0,0),(153,1,40,'Main',0,0,0,0,0),(153,1,41,'Main',1,0,0,0,0),(153,1,42,'Main',2,0,0,0,0),(154,1,96,'Main',0,1,0,0,0),(154,1,97,'Main',1,1,0,0,0),(154,1,98,'Main : 19',0,1,0,0,0),(154,1,99,'Main : 20',0,1,0,0,0),(154,1,100,'Main',2,1,0,0,0),(154,1,101,'Main',3,1,0,0,0),(154,1,102,'Main : 21',0,1,0,0,0),(154,1,103,'Main : 21',1,1,0,0,0),(154,1,104,'Main : 22',0,1,0,0,0),(154,1,105,'Main : 22',1,1,0,0,0),(154,1,106,'Main : 23',0,1,0,0,0),(154,1,107,'Main : 23',1,1,0,0,0),(154,1,108,'Main',4,1,0,0,0),(154,1,109,'Main',5,1,0,0,0),(154,1,110,'Main : 24',0,1,0,0,0),(154,1,111,'Main : 25',0,1,0,0,0),(155,1,35,'Main',0,1,0,0,0),(155,1,36,'Main',1,1,0,0,0),(155,1,37,'Main : 1',0,1,0,0,0),(155,1,38,'Main : 2',0,1,0,0,0),(155,1,39,'Main : 2',1,1,0,0,0),(156,1,35,'Main',0,0,0,0,0),(156,1,36,'Main',1,0,0,0,0),(156,1,37,'Main : 1',0,0,0,0,0),(156,1,38,'Main : 2',0,0,0,0,0),(156,1,39,'Main : 2',1,0,0,0,0),(157,1,118,'Main',0,1,0,0,0),(158,1,119,'Main',0,1,0,0,0),(158,1,120,'Main',1,1,0,0,0),(158,1,121,'Main : 26',0,1,0,0,0),(158,1,122,'Main : 27',0,1,0,0,0),(158,1,123,'Main',2,1,0,0,0),(158,1,124,'Main',3,1,0,0,0),(158,1,125,'Main : 28',0,1,0,0,0),(158,1,126,'Main : 29',0,1,0,0,0),(158,1,127,'Main : 30',0,1,0,0,0),(158,1,128,'Main : 30',1,1,0,0,0),(159,1,129,'Main',0,1,0,0,0),(160,1,27,'Page Header',0,1,0,0,0),(160,1,28,'Page Header',1,1,0,0,0),(160,1,29,'Sidebar',0,1,0,0,0),(160,1,30,'Sidebar',1,1,0,0,0),(160,1,31,'Sidebar',2,1,0,0,0),(160,1,32,'Main',0,1,0,0,0),(160,1,33,'Page Footer',0,1,0,0,0),(160,1,34,'Page Footer',1,1,0,0,0),(161,1,27,'Page Header',0,0,0,0,0),(161,1,29,'Sidebar',0,0,0,0,0),(161,1,30,'Sidebar',1,0,0,0,0),(161,1,31,'Sidebar',2,0,0,0,0),(161,1,33,'Page Footer',0,0,0,0,0),(161,1,34,'Page Footer',1,0,0,0,0),(161,1,84,'Page Header',1,1,0,0,0),(161,1,85,'Main',0,1,0,0,0),(162,1,27,'Page Header',0,0,0,0,0),(162,1,29,'Sidebar',0,0,0,0,0),(162,1,30,'Sidebar',1,0,0,0,0),(162,1,31,'Sidebar',2,0,0,0,0),(162,1,33,'Page Footer',0,0,0,0,0),(162,1,34,'Page Footer',1,0,0,0,0),(162,1,86,'Page Header',1,1,0,0,0),(162,1,87,'Main',0,1,0,0,0),(163,1,27,'Page Header',0,0,0,0,0),(163,1,29,'Sidebar',0,0,0,0,0),(163,1,30,'Sidebar',1,0,0,0,0),(163,1,31,'Sidebar',2,0,0,0,0),(163,1,33,'Page Footer',0,0,0,0,0),(163,1,34,'Page Footer',1,0,0,0,0),(163,1,88,'Page Header',1,1,0,0,0),(163,1,89,'Main',0,1,0,0,0),(164,1,27,'Page Header',0,0,0,0,0),(164,1,29,'Sidebar',0,0,0,0,0),(164,1,30,'Sidebar',1,0,0,0,0),(164,1,31,'Sidebar',2,0,0,0,0),(164,1,33,'Page Footer',0,0,0,0,0),(164,1,34,'Page Footer',1,0,0,0,0),(164,1,90,'Page Header',1,1,0,0,0),(164,1,91,'Main',0,1,0,0,0),(165,1,27,'Page Header',0,0,0,0,0),(165,1,29,'Sidebar',0,0,0,0,0),(165,1,30,'Sidebar',1,0,0,0,0),(165,1,31,'Sidebar',2,0,0,0,0),(165,1,33,'Page Footer',0,0,0,0,0),(165,1,34,'Page Footer',1,0,0,0,0),(165,1,92,'Page Header',1,1,0,0,0),(165,1,93,'Main',0,1,0,0,0),(166,1,27,'Page Header',0,0,0,0,0),(166,1,29,'Sidebar',0,0,0,0,0),(166,1,30,'Sidebar',1,0,0,0,0),(166,1,31,'Sidebar',2,0,0,0,0),(166,1,33,'Page Footer',0,0,0,0,0),(166,1,34,'Page Footer',1,0,0,0,0),(166,1,94,'Page Header',1,1,0,0,0),(166,1,95,'Main',0,1,0,0,0),(167,1,9,'Main',0,1,0,0,0),(167,1,10,'Main',1,1,0,0,0),(167,1,11,'Sidebar',0,1,0,0,0),(167,1,12,'Sidebar',1,1,0,0,0),(167,1,13,'Sidebar',2,1,0,0,0),(167,1,14,'Sidebar',3,1,0,0,0),(167,1,15,'Page Footer',0,1,0,0,0),(167,1,16,'Page Footer',1,1,0,0,0),(168,1,9,'Main',0,0,0,0,0),(168,1,11,'Sidebar',0,0,0,0,0),(168,1,12,'Sidebar',1,0,0,0,0),(168,1,13,'Sidebar',2,0,0,0,0),(168,1,14,'Sidebar',3,0,0,0,0),(168,1,15,'Page Footer',0,0,0,0,0),(168,1,112,'Page Footer',1,1,0,0,0),(168,1,113,'Main',1,1,0,0,0),(169,1,9,'Main',0,0,0,0,0),(169,1,11,'Sidebar',0,0,0,0,0),(169,1,12,'Sidebar',1,0,0,0,0),(169,1,13,'Sidebar',2,0,0,0,0),(169,1,14,'Sidebar',3,0,0,0,0),(169,1,15,'Page Footer',0,0,0,0,0),(169,1,114,'Page Footer',1,1,0,0,0),(169,1,115,'Main',1,1,0,0,0),(170,1,9,'Main',0,0,0,0,0),(170,1,11,'Sidebar',0,0,0,0,0),(170,1,12,'Sidebar',1,0,0,0,0),(170,1,13,'Sidebar',2,0,0,0,0),(170,1,14,'Sidebar',3,0,0,0,0),(170,1,15,'Page Footer',0,0,0,0,0),(170,1,116,'Page Footer',1,1,0,0,0),(170,1,117,'Main',1,1,0,0,0),(171,1,130,'Main',0,1,0,0,0),(171,1,131,'Main',1,1,0,0,0),(171,1,132,'Main : 31',0,1,0,0,0),(171,1,133,'Main : 32',0,1,0,0,0),(171,1,134,'Main : 32',1,1,0,0,0),(171,1,135,'Main',2,1,0,0,0),(171,1,136,'Main',3,1,0,0,0),(171,1,137,'Main : 33',0,1,0,0,0),(171,1,138,'Main : 34',0,1,0,0,0),(171,1,139,'Main : 34',1,1,0,0,0),(171,1,140,'Main : 34',2,1,0,0,0),(171,1,141,'Main',4,1,0,0,0),(171,1,142,'Main',5,1,0,0,0),(171,1,143,'Main : 35',0,1,0,0,0),(171,1,144,'Main : 36',0,1,0,0,0),(171,2,130,'Main',0,0,0,0,0),(171,2,131,'Main',1,0,0,0,0),(171,2,132,'Main : 31',0,0,0,0,0),(171,2,133,'Main : 32',0,0,0,0,0),(171,2,134,'Main : 32',1,0,0,0,0),(171,2,135,'Main',2,0,0,0,0),(171,2,136,'Main',3,0,0,0,0),(171,2,137,'Main : 33',0,0,0,0,0),(171,2,138,'Main : 34',0,0,0,0,0),(171,2,140,'Main : 34',2,0,0,0,0),(171,2,141,'Main',4,0,0,0,0),(171,2,142,'Main',5,0,0,0,0),(171,2,144,'Main : 36',0,0,0,0,0),(171,2,164,'Main : 35',0,1,0,0,0),(171,2,165,'Main : 34',1,1,0,0,0),(172,1,145,'Main',0,1,0,0,0),(172,1,146,'Main',1,1,0,0,0),(172,1,147,'Main',2,1,0,0,0),(172,1,148,'Main',3,1,0,0,0),(172,1,149,'Main : 37',0,1,0,0,0),(172,1,150,'Main : 37',1,1,0,0,0),(172,1,151,'Main : 38',0,1,0,0,0),(172,1,152,'Main : 38',1,1,0,0,0),(172,1,153,'Main : 39',0,1,0,0,0),(172,1,154,'Main : 39',1,1,0,0,0),(172,1,155,'Main',4,1,0,0,0),(172,1,156,'Main',5,1,0,0,0),(172,1,157,'Main : 40',0,1,0,0,0),(172,1,158,'Main : 41',0,1,0,0,0),(173,1,161,'Main',0,1,0,0,0),(173,1,162,'Main',1,1,0,0,0),(174,1,17,'Page Header',0,1,0,0,0),(174,1,18,'Sidebar',0,1,0,0,0),(174,1,19,'Main',0,1,0,0,0),(174,1,20,'Main',1,1,0,0,0),(174,1,21,'Main',2,1,0,0,0),(174,1,22,'Main',3,1,0,0,0),(174,1,23,'Main',4,1,0,0,0),(174,1,24,'Main',5,1,0,0,0),(174,1,25,'Main',6,1,0,0,0),(174,1,26,'Main',7,1,0,0,0),(175,1,17,'Page Header',0,0,0,0,0),(175,1,18,'Sidebar',0,0,0,0,0),(175,1,19,'Main',0,0,0,0,0),(175,1,20,'Main',1,0,0,0,0),(175,1,21,'Main',2,0,0,0,0),(175,1,22,'Main',3,0,0,0,0),(175,1,23,'Main',4,0,0,0,0),(175,1,24,'Main',5,0,0,0,0),(175,1,26,'Main',7,0,0,0,0),(175,1,159,'Main',6,1,0,0,0),(176,1,17,'Page Header',0,0,0,0,0),(176,1,18,'Sidebar',0,0,0,0,0),(176,1,19,'Main',0,0,0,0,0),(176,1,20,'Main',1,0,0,0,0),(176,1,21,'Main',2,0,0,0,0),(176,1,22,'Main',3,0,0,0,0),(176,1,23,'Main',4,0,0,0,0),(176,1,24,'Main',5,0,0,0,0),(176,1,26,'Main',7,0,0,0,0),(176,1,160,'Main',6,1,0,0,0);

UNLOCK TABLES;

/*Table structure for table `collectionversionblockscachesettings` */

DROP TABLE IF EXISTS `collectionversionblockscachesettings`;

CREATE TABLE `collectionversionblockscachesettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `collectionversionblockscachesettings` */

LOCK TABLES `collectionversionblockscachesettings` WRITE;

insert  into `collectionversionblockscachesettings`(`cID`,`cvID`,`bID`,`arHandle`,`btCacheBlockOutput`,`btCacheBlockOutputOnPost`,`btCacheBlockOutputForRegisteredUsers`,`btCacheBlockOutputLifetime`) values (147,1,48,'Main',1,1,1,3600);

UNLOCK TABLES;

/*Table structure for table `collectionversionblocksoutputcache` */

DROP TABLE IF EXISTS `collectionversionblocksoutputcache`;

CREATE TABLE `collectionversionblocksoutputcache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `collectionversionblocksoutputcache` */

LOCK TABLES `collectionversionblocksoutputcache` WRITE;

insert  into `collectionversionblocksoutputcache`(`cID`,`cvID`,`bID`,`arHandle`,`btCachedBlockOutput`,`btCachedBlockOutputExpires`) values (1,1,47,'Footer Social','\n<div id=\"ccm-block-social-links47\" class=\"ccm-block-social-links\">\n    <ul class=\"list-inline\">\n            <li><a href=\"http://twitter.com/concrete5\"><i class=\"fa fa-twitter\"></i></a></li>\n            <li><a href=\"http://github.com/concrete5\"><i class=\"fa fa-github-square\"></i></a></li>\n            <li><a href=\"http://facebook.com/concrete5\"><i class=\"fa fa-facebook\"></i></a></li>\n        </ul>\n</div>\n',1582610140),(1,1,48,'Header Navigation','\n<nav class=\"ccm-responsive-navigation original\"><ul><li class=\"\"><a href=\"/concrete/index.php/services\" target=\"_self\" class=\"\">Services</a></li><li class=\"\"><a href=\"/concrete/index.php/portfolio\" target=\"_self\" class=\"\">Portfolio</a></li><li class=\"\"><a href=\"/concrete/index.php/team\" target=\"_self\" class=\"\">Team</a><ul><li class=\"\"><a href=\"/concrete/index.php/team/about\" target=\"_self\" class=\"\">About</a></li><li class=\"\"><a href=\"/concrete/index.php/team/careers\" target=\"_self\" class=\"\">Careers</a></li><li class=\"\"><a href=\"/concrete/index.php/team/faq\" target=\"_self\" class=\"\">Frequently Asked Questions</a></li></ul></li><li class=\"\"><a href=\"/concrete/index.php/blog\" target=\"_self\" class=\"\">Blog</a></li><li class=\"\"><a href=\"/concrete/index.php/contact\" target=\"_self\" class=\"\">Contact</a></li></ul></nav><div class=\"ccm-responsive-menu-launch\"><i></i></div>',1424847337),(1,1,53,'Main : 3','<div class=\"ccm-block-feature-item\">\n            <h4><i class=\"fa fa-pencil\"></i> Easy to Edit</h4>\n                <p>                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>\n    </div>',1582610138),(1,1,54,'Main : 4','<div class=\"ccm-block-feature-item\">\n            <h4><i class=\"fa fa-eye\"></i> Pixel Perfect</h4>\n                <p>                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>\n    </div>',1582610138),(1,1,55,'Main : 5','<div class=\"ccm-block-feature-item\">\n            <h4><i class=\"fa fa-youtube-play\"></i> Media Rich</h4>\n                <p>                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>\n    </div>',1582610138),(1,1,56,'Main','<hr/>',1582610138),(1,1,59,'Main','<hr/>',1582610139),(1,2,47,'Footer Social','\n<div id=\"ccm-block-social-links47\" class=\"ccm-block-social-links\">\n    <ul class=\"list-inline\">\n            <li><a href=\"http://twitter.com/concrete5\"><i class=\"fa fa-twitter\"></i></a></li>\n            <li><a href=\"http://github.com/concrete5\"><i class=\"fa fa-github-square\"></i></a></li>\n            <li><a href=\"http://facebook.com/concrete5\"><i class=\"fa fa-facebook\"></i></a></li>\n        </ul>\n</div>\n',1582610503),(1,2,48,'Header Navigation','\n<nav class=\"ccm-responsive-navigation original\"><ul><li class=\"\"><a href=\"/concrete/index.php/services\" target=\"_self\" class=\"\">Services</a></li><li class=\"\"><a href=\"/concrete/index.php/portfolio\" target=\"_self\" class=\"\">Portfolio</a></li><li class=\"\"><a href=\"/concrete/index.php/team\" target=\"_self\" class=\"\">Team</a><ul><li class=\"\"><a href=\"/concrete/index.php/team/about\" target=\"_self\" class=\"\">About</a></li><li class=\"\"><a href=\"/concrete/index.php/team/careers\" target=\"_self\" class=\"\">Careers</a></li><li class=\"\"><a href=\"/concrete/index.php/team/faq\" target=\"_self\" class=\"\">Frequently Asked Questions</a></li></ul></li><li class=\"\"><a href=\"/concrete/index.php/blog\" target=\"_self\" class=\"\">Blog</a></li><li class=\"\"><a href=\"/concrete/index.php/contact\" target=\"_self\" class=\"\">Contact</a></li></ul></nav><div class=\"ccm-responsive-menu-launch\"><i></i></div>',1424847702),(1,2,53,'Main : 3','<div class=\"ccm-block-feature-item\">\n            <h4><i class=\"fa fa-pencil\"></i> Easy to Edit</h4>\n                <p>                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>\n    </div>',1582610502),(1,2,54,'Main : 4','<div class=\"ccm-block-feature-item\">\n            <h4><i class=\"fa fa-eye\"></i> Pixel Perfect</h4>\n                <p>                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>\n    </div>',1582610502),(1,2,55,'Main : 5','<div class=\"ccm-block-feature-item\">\n            <h4><i class=\"fa fa-youtube-play\"></i> Media Rich</h4>\n                <p>                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>\n    </div>',1582610502),(1,2,56,'Main','<hr/>',1582610502),(1,2,59,'Main','<hr/>',1582610502),(153,1,47,'Footer Social','\n<div id=\"ccm-block-social-links47\" class=\"ccm-block-social-links\">\n    <ul class=\"list-inline\">\n            <li><a href=\"http://twitter.com/concrete5\"><i class=\"fa fa-twitter\"></i></a></li>\n            <li><a href=\"http://github.com/concrete5\"><i class=\"fa fa-github-square\"></i></a></li>\n            <li><a href=\"http://facebook.com/concrete5\"><i class=\"fa fa-facebook\"></i></a></li>\n        </ul>\n</div>\n',1582610693),(153,1,48,'Header Navigation','\n<nav class=\"ccm-responsive-navigation original\"><ul><li class=\"\"><a href=\"/concrete/index.php/services\" target=\"_self\" class=\"\">Services</a></li><li class=\"nav-selected nav-path-selected\"><a href=\"/concrete/index.php/portfolio\" target=\"_self\" class=\"nav-selected nav-path-selected\">Portfolio</a></li><li class=\"\"><a href=\"/concrete/index.php/team\" target=\"_self\" class=\"\">Team</a><ul><li class=\"\"><a href=\"/concrete/index.php/team/about\" target=\"_self\" class=\"\">About</a></li><li class=\"\"><a href=\"/concrete/index.php/team/careers\" target=\"_self\" class=\"\">Careers</a></li><li class=\"\"><a href=\"/concrete/index.php/team/faq\" target=\"_self\" class=\"\">Frequently Asked Questions</a></li></ul></li><li class=\"\"><a href=\"/concrete/index.php/blog\" target=\"_self\" class=\"\">Blog</a></li><li class=\"\"><a href=\"/concrete/index.php/contact\" target=\"_self\" class=\"\">Contact</a></li></ul></nav><div class=\"ccm-responsive-menu-launch\"><i></i></div>',1424847893),(171,1,47,'Footer Social','\n<div id=\"ccm-block-social-links47\" class=\"ccm-block-social-links\">\n    <ul class=\"list-inline\">\n            <li><a href=\"http://twitter.com/concrete5\"><i class=\"fa fa-twitter\"></i></a></li>\n            <li><a href=\"http://github.com/concrete5\"><i class=\"fa fa-github-square\"></i></a></li>\n            <li><a href=\"http://facebook.com/concrete5\"><i class=\"fa fa-facebook\"></i></a></li>\n        </ul>\n</div>\n',1582610539),(171,1,48,'Header Navigation','\n<nav class=\"ccm-responsive-navigation original\"><ul><li class=\"\"><a href=\"/concrete/index.php/services\" target=\"_self\" class=\"\">Services</a></li><li class=\"\"><a href=\"/concrete/index.php/portfolio\" target=\"_self\" class=\"\">Portfolio</a></li><li class=\"nav-path-selected\"><a href=\"/concrete/index.php/team\" target=\"_self\" class=\"nav-path-selected\">Team</a><ul><li class=\"nav-selected nav-path-selected\"><a href=\"/concrete/index.php/team/about\" target=\"_self\" class=\"nav-selected nav-path-selected\">About</a></li><li class=\"\"><a href=\"/concrete/index.php/team/careers\" target=\"_self\" class=\"\">Careers</a></li><li class=\"\"><a href=\"/concrete/index.php/team/faq\" target=\"_self\" class=\"\">Frequently Asked Questions</a></li></ul></li><li class=\"\"><a href=\"/concrete/index.php/blog\" target=\"_self\" class=\"\">Blog</a></li><li class=\"\"><a href=\"/concrete/index.php/contact\" target=\"_self\" class=\"\">Contact</a></li></ul></nav><div class=\"ccm-responsive-menu-launch\"><i></i></div>',1424847739),(171,1,132,'Main : 31','<picture><source srcset=\"http://localhost/concrete/application/files/8314/2484/3588/blank.png\" media=\"(min-width: 900px)\" class=\"ccm-image-block img-responsive bID-132\"><source srcset=\"http://localhost/concrete/application/files/8314/2484/3588/blank.png\" media=\"(min-width: 768px)\" class=\"ccm-image-block img-responsive bID-132\"><source srcset=\"http://localhost/concrete/application/files/8314/2484/3588/blank.png\" class=\"ccm-image-block img-responsive bID-132\"><img src=\"http://localhost/concrete/application/files/8314/2484/3588/blank.png\" alt=\"#\" class=\"ccm-image-block img-responsive bID-132\"></picture>\n',1582610539),(171,1,135,'Main','<hr/>',1582610539),(171,1,139,'Main : 34','<picture><source srcset=\"http://localhost/concrete/application/files/8314/2484/3588/blank.png\" media=\"(min-width: 900px)\" class=\"ccm-image-block img-responsive bID-139\"><source srcset=\"http://localhost/concrete/application/files/8314/2484/3588/blank.png\" media=\"(min-width: 768px)\" class=\"ccm-image-block img-responsive bID-139\"><source srcset=\"http://localhost/concrete/application/files/8314/2484/3588/blank.png\" class=\"ccm-image-block img-responsive bID-139\"><img src=\"http://localhost/concrete/application/files/8314/2484/3588/blank.png\" alt=\"#\" class=\"ccm-image-block img-responsive bID-139\"></picture>\n',1582610539),(171,1,141,'Main','<hr/>',1582610539),(171,1,143,'Main : 35','<picture><source srcset=\"http://localhost/concrete/application/files/1714/2484/3589/blank2.png\" media=\"(min-width: 900px)\" class=\"ccm-image-block img-responsive bID-143\"><source srcset=\"http://localhost/concrete/application/files/1714/2484/3589/blank2.png\" media=\"(min-width: 768px)\" class=\"ccm-image-block img-responsive bID-143\"><source srcset=\"http://localhost/concrete/application/files/1714/2484/3589/blank2.png\" class=\"ccm-image-block img-responsive bID-143\"><img src=\"http://localhost/concrete/application/files/1714/2484/3589/blank2.png\" alt=\"#\" class=\"ccm-image-block img-responsive bID-143\"></picture>\n',1582610539),(171,2,47,'Footer Social','\n<div id=\"ccm-block-social-links47\" class=\"ccm-block-social-links\">\n    <ul class=\"list-inline\">\n            <li><a href=\"http://twitter.com/concrete5\"><i class=\"fa fa-twitter\"></i></a></li>\n            <li><a href=\"http://github.com/concrete5\"><i class=\"fa fa-github-square\"></i></a></li>\n            <li><a href=\"http://facebook.com/concrete5\"><i class=\"fa fa-facebook\"></i></a></li>\n        </ul>\n</div>\n',1582610661),(171,2,48,'Header Navigation','\n<nav class=\"ccm-responsive-navigation original\"><ul><li class=\"\"><a href=\"/concrete/index.php/services\" target=\"_self\" class=\"\">Services</a></li><li class=\"\"><a href=\"/concrete/index.php/portfolio\" target=\"_self\" class=\"\">Portfolio</a></li><li class=\"nav-path-selected\"><a href=\"/concrete/index.php/team\" target=\"_self\" class=\"nav-path-selected\">Team</a><ul><li class=\"nav-selected nav-path-selected\"><a href=\"/concrete/index.php/team/about\" target=\"_self\" class=\"nav-selected nav-path-selected\">About</a></li><li class=\"\"><a href=\"/concrete/index.php/team/careers\" target=\"_self\" class=\"\">Careers</a></li><li class=\"\"><a href=\"/concrete/index.php/team/faq\" target=\"_self\" class=\"\">Frequently Asked Questions</a></li></ul></li><li class=\"\"><a href=\"/concrete/index.php/blog\" target=\"_self\" class=\"\">Blog</a></li><li class=\"\"><a href=\"/concrete/index.php/contact\" target=\"_self\" class=\"\">Contact</a></li></ul></nav><div class=\"ccm-responsive-menu-launch\"><i></i></div>',1424847860),(171,2,132,'Main : 31','<picture><source srcset=\"http://localhost/concrete/application/files/8314/2484/3588/blank.png\" media=\"(min-width: 900px)\" class=\"ccm-image-block img-responsive bID-132\"><source srcset=\"http://localhost/concrete/application/files/8314/2484/3588/blank.png\" media=\"(min-width: 768px)\" class=\"ccm-image-block img-responsive bID-132\"><source srcset=\"http://localhost/concrete/application/files/8314/2484/3588/blank.png\" class=\"ccm-image-block img-responsive bID-132\"><img src=\"http://localhost/concrete/application/files/8314/2484/3588/blank.png\" alt=\"#\" class=\"ccm-image-block img-responsive bID-132\"></picture>\n',1582610660),(171,2,135,'Main','<hr/>',1582610660),(171,2,141,'Main','<hr/>',1582610660),(171,2,164,'Main : 35','<picture><source srcset=\"http://localhost/concrete/application/files/thumbnails/large/5314/2484/3612/sunset.jpg\" media=\"(min-width: 900px)\" class=\"ccm-image-block img-responsive bID-164\"><source srcset=\"http://localhost/concrete/application/files/thumbnails/medium/5314/2484/3612/sunset.jpg\" media=\"(min-width: 768px)\" class=\"ccm-image-block img-responsive bID-164\"><source srcset=\"http://localhost/concrete/application/files/thumbnails/small/5314/2484/3612/sunset.jpg\" class=\"ccm-image-block img-responsive bID-164\"><img src=\"http://localhost/concrete/application/files/thumbnails/small/5314/2484/3612/sunset.jpg\" alt=\"#\" class=\"ccm-image-block img-responsive bID-164\"></picture>\n	\n<script>\n$(function() {\n    $(\'.bID-164\')\n        .mouseover(function(e){$(this).attr(\"src\", \'/concrete/application/files/6614/2484/3609/subway.jpg\');})\n        .mouseout(function(e){$(this).attr(\"src\", \'/concrete/application/files/5314/2484/3612/sunset.jpg\');});\n});\n</script>\n',1582610602),(171,2,165,'Main : 34','<picture><source srcset=\"http://localhost/concrete/application/files/thumbnails/large/9214/2484/3594/houses.jpg\" media=\"(min-width: 900px)\" class=\"ccm-image-block img-responsive bID-165\"><source srcset=\"http://localhost/concrete/application/files/thumbnails/medium/9214/2484/3594/houses.jpg\" media=\"(min-width: 768px)\" class=\"ccm-image-block img-responsive bID-165\"><source srcset=\"http://localhost/concrete/application/files/thumbnails/small/9214/2484/3594/houses.jpg\" class=\"ccm-image-block img-responsive bID-165\"><img src=\"http://localhost/concrete/application/files/thumbnails/small/9214/2484/3594/houses.jpg\" alt=\"#\" class=\"ccm-image-block img-responsive bID-165\"></picture>\n',1582610650);

UNLOCK TABLES;

/*Table structure for table `collectionversionblockstyles` */

DROP TABLE IF EXISTS `collectionversionblockstyles`;

CREATE TABLE `collectionversionblockstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`issID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `collectionversionblockstyles` */

LOCK TABLES `collectionversionblockstyles` WRITE;

insert  into `collectionversionblockstyles`(`cID`,`cvID`,`bID`,`arHandle`,`issID`) values (167,1,11,'Sidebar',1),(168,1,11,'Sidebar',1),(169,1,11,'Sidebar',1),(170,1,11,'Sidebar',1),(167,1,12,'Sidebar',2),(168,1,12,'Sidebar',2),(169,1,12,'Sidebar',2),(170,1,12,'Sidebar',2),(174,1,18,'Sidebar',3),(175,1,18,'Sidebar',3),(176,1,18,'Sidebar',3),(155,1,37,'Main : 1',4),(156,1,37,'Main : 1',4),(155,1,38,'Main : 2',5),(156,1,38,'Main : 2',5),(155,1,39,'Main : 2',6),(156,1,39,'Main : 2',6),(152,1,41,'Main',7),(153,1,41,'Main',7),(1,1,53,'Main : 3',8),(1,2,53,'Main : 3',8),(1,1,54,'Main : 4',9),(1,2,54,'Main : 4',9),(1,1,55,'Main : 5',10),(1,2,55,'Main : 5',10),(1,1,57,'Main',11),(1,2,57,'Main',11),(1,1,64,'Main : 8',12),(1,2,64,'Main : 8',12),(1,1,65,'Main : 9',13),(1,2,65,'Main : 9',13),(154,1,98,'Main : 19',16),(154,1,99,'Main : 20',17),(154,1,102,'Main : 21',18),(154,1,103,'Main : 21',19),(154,1,104,'Main : 22',20),(154,1,105,'Main : 22',21),(154,1,106,'Main : 23',22),(154,1,107,'Main : 23',23),(154,1,110,'Main : 24',24),(158,1,125,'Main : 28',25),(171,1,143,'Main : 35',26),(171,2,164,'Main : 35',26),(172,1,158,'Main : 41',27);

UNLOCK TABLES;

/*Table structure for table `collectionversionfeatureassignments` */

DROP TABLE IF EXISTS `collectionversionfeatureassignments`;

CREATE TABLE `collectionversionfeatureassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `collectionversionfeatureassignments` */

LOCK TABLES `collectionversionfeatureassignments` WRITE;

insert  into `collectionversionfeatureassignments`(`cID`,`cvID`,`faID`) values (167,1,1),(154,1,2),(168,1,3),(169,1,4),(170,1,5),(158,1,6),(171,1,7),(171,2,7),(171,1,8),(171,1,9),(172,1,10),(171,2,11),(171,2,12);

UNLOCK TABLES;

/*Table structure for table `collectionversionrelatededits` */

DROP TABLE IF EXISTS `collectionversionrelatededits`;

CREATE TABLE `collectionversionrelatededits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `collectionversionrelatededits` */

LOCK TABLES `collectionversionrelatededits` WRITE;

UNLOCK TABLES;

/*Table structure for table `collectionversions` */

DROP TABLE IF EXISTS `collectionversions`;

CREATE TABLE `collectionversions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `cvAuthorUID` (`cvAuthorUID`),
  KEY `cvApproverUID` (`cvApproverUID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `collectionversions` */

LOCK TABLES `collectionversions` WRITE;

insert  into `collectionversions`(`cID`,`cvID`,`cvName`,`cvHandle`,`cvDescription`,`cvDatePublic`,`cvDateCreated`,`cvComments`,`cvIsApproved`,`cvIsNew`,`cvAuthorUID`,`cvApproverUID`,`pThemeID`,`pTemplateID`,`cvActivateDatetime`) values (1,1,'Home','home','','2015-02-25 06:50:46','2015-02-25 06:50:46','Initial Version',0,0,1,NULL,1,6,NULL),(1,2,'Home','home','','2015-02-25 06:50:46','2015-02-25 06:59:54','Version 2',1,0,1,1,1,6,NULL),(2,1,'Dashboard','dashboard','','2015-02-25 06:52:02','2015-02-25 06:52:02','Initial Version',1,0,1,NULL,1,0,NULL),(3,1,'Sitemap','sitemap','Whole world at a glance.','2015-02-25 06:52:03','2015-02-25 06:52:03','Initial Version',1,0,1,NULL,1,0,NULL),(4,1,'Full Sitemap','full','','2015-02-25 06:52:03','2015-02-25 06:52:03','Initial Version',1,0,1,NULL,1,0,NULL),(5,1,'Flat View','explore','','2015-02-25 06:52:03','2015-02-25 06:52:03','Initial Version',1,0,1,NULL,1,0,NULL),(6,1,'Page Search','search','','2015-02-25 06:52:03','2015-02-25 06:52:03','Initial Version',1,0,1,NULL,1,0,NULL),(7,1,'Files','files','All documents and images.','2015-02-25 06:52:03','2015-02-25 06:52:03','Initial Version',1,0,1,NULL,1,0,NULL),(8,1,'File Manager','search','','2015-02-25 06:52:04','2015-02-25 06:52:04','Initial Version',1,0,1,NULL,1,0,NULL),(9,1,'Attributes','attributes','','2015-02-25 06:52:04','2015-02-25 06:52:04','Initial Version',1,0,1,NULL,1,0,NULL),(10,1,'File Sets','sets','','2015-02-25 06:52:04','2015-02-25 06:52:04','Initial Version',1,0,1,NULL,1,0,NULL),(11,1,'Add File Set','add_set','','2015-02-25 06:52:04','2015-02-25 06:52:04','Initial Version',1,0,1,NULL,1,0,NULL),(12,1,'Members','users','Add and manage the user accounts and groups on your website.','2015-02-25 06:52:04','2015-02-25 06:52:04','Initial Version',1,0,1,NULL,1,0,NULL),(13,1,'Search Users','search','','2015-02-25 06:52:04','2015-02-25 06:52:04','Initial Version',1,0,1,NULL,1,0,NULL),(14,1,'User Groups','groups','','2015-02-25 06:52:05','2015-02-25 06:52:05','Initial Version',1,0,1,NULL,1,0,NULL),(15,1,'Attributes','attributes','','2015-02-25 06:52:05','2015-02-25 06:52:05','Initial Version',1,0,1,NULL,1,0,NULL),(16,1,'Add User','add','','2015-02-25 06:52:05','2015-02-25 06:52:05','Initial Version',1,0,1,NULL,1,0,NULL),(17,1,'Add Group','add_group','','2015-02-25 06:52:05','2015-02-25 06:52:05','Initial Version',1,0,1,NULL,1,0,NULL),(18,1,'Move Multiple Groups','bulkupdate','','2015-02-25 06:52:05','2015-02-25 06:52:05','Initial Version',1,0,1,NULL,1,0,NULL),(19,1,'Group Sets','group_sets','','2015-02-25 06:52:05','2015-02-25 06:52:05','Initial Version',1,0,1,NULL,1,0,NULL),(20,1,'Community Points','points',NULL,'2015-02-25 06:52:06','2015-02-25 06:52:06','Initial Version',1,0,1,NULL,1,0,NULL),(21,1,'Assign Points','assign',NULL,'2015-02-25 06:52:06','2015-02-25 06:52:06','Initial Version',1,0,1,NULL,1,0,NULL),(22,1,'Actions','actions',NULL,'2015-02-25 06:52:06','2015-02-25 06:52:06','Initial Version',1,0,1,NULL,1,0,NULL),(23,1,'Reports','reports','Get data from forms and logs.','2015-02-25 06:52:06','2015-02-25 06:52:06','Initial Version',1,0,1,NULL,1,0,NULL),(24,1,'Form Results','forms','Get submission data.','2015-02-25 06:52:06','2015-02-25 06:52:06','Initial Version',1,0,1,NULL,1,0,NULL),(25,1,'Surveys','surveys','','2015-02-25 06:52:07','2015-02-25 06:52:07','Initial Version',1,0,1,NULL,1,0,NULL),(26,1,'Logs','logs','','2015-02-25 06:52:07','2015-02-25 06:52:07','Initial Version',1,0,1,NULL,1,0,NULL),(27,1,'Pages & Themes','pages','Reskin your site.','2015-02-25 06:52:07','2015-02-25 06:52:07','Initial Version',1,0,1,NULL,1,0,NULL),(28,1,'Themes','themes','Reskin your site.','2015-02-25 06:52:07','2015-02-25 06:52:07','Initial Version',1,0,1,NULL,1,0,NULL),(29,1,'Inspect','inspect','','2015-02-25 06:52:07','2015-02-25 06:52:07','Initial Version',1,0,1,NULL,1,0,NULL),(30,1,'Page Types','types','','2015-02-25 06:52:07','2015-02-25 06:52:07','Initial Version',1,0,1,NULL,1,0,NULL),(31,1,'Organize Page Type Order','organize','','2015-02-25 06:52:08','2015-02-25 06:52:08','Initial Version',1,0,1,NULL,1,0,NULL),(32,1,'Add Page Type','add','','2015-02-25 06:52:08','2015-02-25 06:52:08','Initial Version',1,0,1,NULL,1,0,NULL),(33,1,'Compose Form','form','','2015-02-25 06:52:08','2015-02-25 06:52:08','Initial Version',1,0,1,NULL,1,0,NULL),(34,1,'Defaults and Output','output','','2015-02-25 06:52:08','2015-02-25 06:52:08','Initial Version',1,0,1,NULL,1,0,NULL),(35,1,'Page Type Attributes','attributes','','2015-02-25 06:52:08','2015-02-25 06:52:08','Initial Version',1,0,1,NULL,1,0,NULL),(36,1,'Page Type Permissions','permissions','','2015-02-25 06:52:09','2015-02-25 06:52:09','Initial Version',1,0,1,NULL,1,0,NULL),(37,1,'Page Templates','templates','Form factors for pages in your site.','2015-02-25 06:52:09','2015-02-25 06:52:09','Initial Version',1,0,1,NULL,1,0,NULL),(38,1,'Add Page Template','add','Add page templates to your site.','2015-02-25 06:52:09','2015-02-25 06:52:09','Initial Version',1,0,1,NULL,1,0,NULL),(39,1,'Attributes','attributes','','2015-02-25 06:52:09','2015-02-25 06:52:09','Initial Version',1,0,1,NULL,1,0,NULL),(40,1,'Single Pages','single','','2015-02-25 06:52:09','2015-02-25 06:52:09','Initial Version',1,0,1,NULL,1,0,NULL),(41,1,'RSS Feeds','feeds','','2015-02-25 06:52:09','2015-02-25 06:52:09','Initial Version',1,0,1,NULL,1,0,NULL),(42,1,'Conversations','conversations','','2015-02-25 06:52:10','2015-02-25 06:52:10','Initial Version',1,0,1,NULL,1,0,NULL),(43,1,'Messages','messages','','2015-02-25 06:52:10','2015-02-25 06:52:10','Initial Version',1,0,1,NULL,1,0,NULL),(44,1,'Workflow','workflow','','2015-02-25 06:52:10','2015-02-25 06:52:10','Initial Version',1,0,1,NULL,1,0,NULL),(45,1,'Workflow List','workflows','','2015-02-25 06:52:10','2015-02-25 06:52:10','Initial Version',1,0,1,NULL,1,0,NULL),(46,1,'Waiting for Me','me','','2015-02-25 06:52:10','2015-02-25 06:52:10','Initial Version',1,0,1,NULL,1,0,NULL),(47,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2015-02-25 06:52:11','2015-02-25 06:52:11','Initial Version',1,0,1,NULL,1,0,NULL),(48,1,'Stacks','stacks','Share content across your site.','2015-02-25 06:52:11','2015-02-25 06:52:11','Initial Version',1,0,1,NULL,1,0,NULL),(49,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2015-02-25 06:52:11','2015-02-25 06:52:11','Initial Version',1,0,1,NULL,1,0,NULL),(50,1,'Stack List','list','','2015-02-25 06:52:11','2015-02-25 06:52:11','Initial Version',1,0,1,NULL,1,0,NULL),(51,1,'Block Types','types','Manage the installed block types in your site.','2015-02-25 06:52:11','2015-02-25 06:52:11','Initial Version',1,0,1,NULL,1,0,NULL),(52,1,'Extend concrete5','extend','','2015-02-25 06:52:12','2015-02-25 06:52:12','Initial Version',1,0,1,NULL,1,0,NULL),(53,1,'Dashboard','news','','2015-02-25 06:52:12','2015-02-25 06:52:12','Initial Version',1,0,1,NULL,1,0,NULL),(54,1,'Add Functionality','install','Install add-ons & themes.','2015-02-25 06:52:12','2015-02-25 06:52:12','Initial Version',1,0,1,NULL,1,0,NULL),(55,1,'Update Add-Ons','update','Update your installed packages.','2015-02-25 06:52:12','2015-02-25 06:52:12','Initial Version',1,0,1,NULL,1,0,NULL),(56,1,'Connect to the Community','connect','Connect to the concrete5 community.','2015-02-25 06:52:12','2015-02-25 06:52:12','Initial Version',1,0,1,NULL,1,0,NULL),(57,1,'Get More Themes','themes','Download themes from concrete5.org.','2015-02-25 06:52:13','2015-02-25 06:52:13','Initial Version',1,0,1,NULL,1,0,NULL),(58,1,'Get More Add-Ons','addons','Download add-ons from concrete5.org.','2015-02-25 06:52:13','2015-02-25 06:52:13','Initial Version',1,0,1,NULL,1,0,NULL),(59,1,'System & Settings','system','Secure and setup your site.','2015-02-25 06:52:13','2015-02-25 06:52:13','Initial Version',1,0,1,NULL,1,0,NULL),(60,1,'Basics','basics','Basic information about your website.','2015-02-25 06:52:13','2015-02-25 06:52:13','Initial Version',1,0,1,NULL,1,0,NULL),(61,1,'Site Name','name','','2015-02-25 06:52:13','2015-02-25 06:52:13','Initial Version',1,0,1,NULL,1,0,NULL),(62,1,'Accessibility','accessibility','','2015-02-25 06:52:14','2015-02-25 06:52:14','Initial Version',1,0,1,NULL,1,0,NULL),(63,1,'Social Links','social','','2015-02-25 06:52:14','2015-02-25 06:52:14','Initial Version',1,0,1,NULL,1,0,NULL),(64,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2015-02-25 06:52:14','2015-02-25 06:52:14','Initial Version',1,0,1,NULL,1,0,NULL),(65,1,'Rich Text Editor','editor','','2015-02-25 06:52:14','2015-02-25 06:52:14','Initial Version',1,0,1,NULL,1,0,NULL),(66,1,'Languages','multilingual','','2015-02-25 06:52:14','2015-02-25 06:52:14','Initial Version',1,0,1,NULL,1,0,NULL),(67,1,'Time Zone','timezone','','2015-02-25 06:52:15','2015-02-25 06:52:15','Initial Version',1,0,1,NULL,1,0,NULL),(68,1,'Multilingual','multilingual','Run your site in multiple languages.','2015-02-25 06:52:15','2015-02-25 06:52:15','Initial Version',1,0,1,NULL,1,0,NULL),(69,1,'Multilingual Setup','setup','','2015-02-25 06:52:15','2015-02-25 06:52:15','Initial Version',1,0,1,NULL,1,0,NULL),(70,1,'Page Report','page_report','','2015-02-25 06:52:15','2015-02-25 06:52:15','Initial Version',1,0,1,NULL,1,0,NULL),(71,1,'Translate Site Interface','translate_interface','','2015-02-25 06:52:15','2015-02-25 06:52:15','Initial Version',1,0,1,NULL,1,0,NULL),(72,1,'SEO & Statistics','seo','Enable pretty URLs and tracking codes.','2015-02-25 06:52:16','2015-02-25 06:52:16','Initial Version',1,0,1,NULL,1,0,NULL),(73,1,'Pretty URLs','urls','','2015-02-25 06:52:16','2015-02-25 06:52:16','Initial Version',1,0,1,NULL,1,0,NULL),(74,1,'Bulk SEO Updater','bulk','','2015-02-25 06:52:16','2015-02-25 06:52:16','Initial Version',1,0,1,NULL,1,0,NULL),(75,1,'Tracking Codes','codes','','2015-02-25 06:52:16','2015-02-25 06:52:16','Initial Version',1,0,1,NULL,1,0,NULL),(76,1,'Excluded URL Word List','excluded','','2015-02-25 06:52:17','2015-02-25 06:52:17','Initial Version',1,0,1,NULL,1,0,NULL),(77,1,'Search Index','searchindex','','2015-02-25 06:52:17','2015-02-25 06:52:17','Initial Version',1,0,1,NULL,1,0,NULL),(78,1,'Files','files','','2015-02-25 06:52:17','2015-02-25 06:52:17','Initial Version',1,0,1,NULL,1,0,NULL),(79,1,'File Manager Permissions','permissions','','2015-02-25 06:52:17','2015-02-25 06:52:17','Initial Version',1,0,1,NULL,1,0,NULL),(80,1,'Allowed File Types','filetypes','','2015-02-25 06:52:18','2015-02-25 06:52:18','Initial Version',1,0,1,NULL,1,0,NULL),(81,1,'Thumbnails','thumbnails','','2015-02-25 06:52:18','2015-02-25 06:52:18','Initial Version',1,0,1,NULL,1,0,NULL),(82,1,'File Storage Locations','storage','','2015-02-25 06:52:18','2015-02-25 06:52:18','Initial Version',1,0,1,NULL,1,0,NULL),(83,1,'Optimization','optimization','Keep your site running well.','2015-02-25 06:52:19','2015-02-25 06:52:19','Initial Version',1,0,1,NULL,1,0,NULL),(84,1,'Cache & Speed Settings','cache','','2015-02-25 06:52:19','2015-02-25 06:52:19','Initial Version',1,0,1,NULL,1,0,NULL),(85,1,'Clear Cache','clearcache','','2015-02-25 06:52:19','2015-02-25 06:52:19','Initial Version',1,0,1,NULL,1,0,NULL),(86,1,'Automated Jobs','jobs','','2015-02-25 06:52:19','2015-02-25 06:52:19','Initial Version',1,0,1,NULL,1,0,NULL),(87,1,'Database Query Log','query_log','','2015-02-25 06:52:20','2015-02-25 06:52:20','Initial Version',1,0,1,NULL,1,0,NULL),(88,1,'Permissions & Access','permissions','Control who sees and edits your site.','2015-02-25 06:52:20','2015-02-25 06:52:20','Initial Version',1,0,1,NULL,1,0,NULL),(89,1,'Site Access','site','','2015-02-25 06:52:20','2015-02-25 06:52:20','Initial Version',1,0,1,NULL,1,0,NULL),(90,1,'Task Permissions','tasks','','2015-02-25 06:52:21','2015-02-25 06:52:21','Initial Version',1,0,1,NULL,1,0,NULL),(91,1,'User Permissions','users','','2015-02-25 06:52:21','2015-02-25 06:52:21','Initial Version',1,0,1,NULL,1,0,NULL),(92,1,'Advanced Permissions','advanced','','2015-02-25 06:52:21','2015-02-25 06:52:21','Initial Version',1,0,1,NULL,1,0,NULL),(93,1,'IP Blacklist','blacklist','','2015-02-25 06:52:21','2015-02-25 06:52:21','Initial Version',1,0,1,NULL,1,0,NULL),(94,1,'Captcha Setup','captcha','','2015-02-25 06:52:22','2015-02-25 06:52:22','Initial Version',1,0,1,NULL,1,0,NULL),(95,1,'Spam Control','antispam','','2015-02-25 06:52:23','2015-02-25 06:52:23','Initial Version',1,0,1,NULL,1,0,NULL),(96,1,'Maintenance Mode','maintenance','','2015-02-25 06:52:23','2015-02-25 06:52:23','Initial Version',1,0,1,NULL,1,0,NULL),(97,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2015-02-25 06:52:23','2015-02-25 06:52:23','Initial Version',1,0,1,NULL,1,0,NULL),(98,1,'Login Destination','postlogin','','2015-02-25 06:52:24','2015-02-25 06:52:24','Initial Version',1,0,1,NULL,1,0,NULL),(99,1,'Public Profiles','profiles','','2015-02-25 06:52:24','2015-02-25 06:52:24','Initial Version',1,0,1,NULL,1,0,NULL),(100,1,'Public Registration','open','','2015-02-25 06:52:24','2015-02-25 06:52:24','Initial Version',1,0,1,NULL,1,0,NULL),(101,1,'Authentication Types','authentication','','2015-02-25 06:52:24','2015-02-25 06:52:24','Initial Version',1,0,1,NULL,1,0,NULL),(102,1,'Email','mail','Control how your site send and processes mail.','2015-02-25 06:52:25','2015-02-25 06:52:25','Initial Version',1,0,1,NULL,1,0,NULL),(103,1,'SMTP Method','method','','2015-02-25 06:52:25','2015-02-25 06:52:25','Initial Version',1,0,1,NULL,1,0,NULL),(104,1,'Test Mail Settings','test','','2015-02-25 06:52:25','2015-02-25 06:52:25','Initial Version',1,0,1,NULL,1,0,NULL),(105,1,'Email Importers','importers','','2015-02-25 06:52:26','2015-02-25 06:52:26','Initial Version',1,0,1,NULL,1,0,NULL),(106,1,'Conversations','conversations','Manage your conversations settings','2015-02-25 06:52:26','2015-02-25 06:52:26','Initial Version',1,0,1,NULL,1,0,NULL),(107,1,'Settings','settings','','2015-02-25 06:52:26','2015-02-25 06:52:26','Initial Version',1,0,1,NULL,1,0,NULL),(108,1,'Community Points','points','','2015-02-25 06:52:27','2015-02-25 06:52:27','Initial Version',1,0,1,NULL,1,0,NULL),(109,1,'Banned Words','bannedwords','','2015-02-25 06:52:27','2015-02-25 06:52:27','Initial Version',1,0,1,NULL,1,0,NULL),(110,1,'Conversation Permissions','permissions','','2015-02-25 06:52:27','2015-02-25 06:52:27','Initial Version',1,0,1,NULL,1,0,NULL),(111,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2015-02-25 06:52:28','2015-02-25 06:52:28','Initial Version',1,0,1,NULL,1,0,NULL),(112,1,'Sets','sets','Group attributes into sets for easier organization','2015-02-25 06:52:28','2015-02-25 06:52:28','Initial Version',1,0,1,NULL,1,0,NULL),(113,1,'Types','types','Choose which attribute types are available for different items.','2015-02-25 06:52:28','2015-02-25 06:52:28','Initial Version',1,0,1,NULL,1,0,NULL),(114,1,'Topics','topics','','2015-02-25 06:52:29','2015-02-25 06:52:29','Initial Version',1,0,1,NULL,1,0,NULL),(115,1,'Add Topic Tree','add','','2015-02-25 06:52:29','2015-02-25 06:52:29','Initial Version',1,0,1,NULL,1,0,NULL),(116,1,'Environment','environment','Advanced settings for web developers.','2015-02-25 06:52:29','2015-02-25 06:52:29','Initial Version',1,0,1,NULL,1,0,NULL),(117,1,'Environment Information','info','','2015-02-25 06:52:30','2015-02-25 06:52:30','Initial Version',1,0,1,NULL,1,0,NULL),(118,1,'Debug Settings','debug','','2015-02-25 06:52:30','2015-02-25 06:52:30','Initial Version',1,0,1,NULL,1,0,NULL),(119,1,'Logging Settings','logging','','2015-02-25 06:52:31','2015-02-25 06:52:31','Initial Version',1,0,1,NULL,1,0,NULL),(120,1,'Proxy Server','proxy','','2015-02-25 06:52:31','2015-02-25 06:52:31','Initial Version',1,0,1,NULL,1,0,NULL),(121,1,'Backup & Restore','backup','Backup or restore your website.','2015-02-25 06:52:31','2015-02-25 06:52:31','Initial Version',1,0,1,NULL,1,0,NULL),(122,1,'Backup Database','backup','','2015-02-25 06:52:32','2015-02-25 06:52:32','Initial Version',1,0,1,NULL,1,0,NULL),(123,1,'Update concrete5','update','','2015-02-25 06:52:32','2015-02-25 06:52:32','Initial Version',1,0,1,NULL,1,0,NULL),(124,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2015-02-25 06:52:34','2015-02-25 06:52:34','Initial Version',1,0,1,NULL,1,4,NULL),(125,1,'Customize Dashboard Home','home','','2015-02-25 06:52:34','2015-02-25 06:52:34','Initial Version',1,0,1,NULL,1,2,NULL),(126,1,'Drafts','!drafts','','2015-02-25 06:52:56','2015-02-25 06:52:56','Initial Version',1,0,1,NULL,1,0,NULL),(127,1,'Trash','!trash','','2015-02-25 06:52:57','2015-02-25 06:52:57','Initial Version',1,0,1,NULL,1,0,NULL),(128,1,'Stacks','!stacks','','2015-02-25 06:52:57','2015-02-25 06:52:57','Initial Version',1,0,1,NULL,1,0,NULL),(129,1,'Login','login','','2015-02-25 06:52:57','2015-02-25 06:52:57','Initial Version',1,0,1,NULL,1,0,NULL),(130,1,'Register','register','','2015-02-25 06:52:57','2015-02-25 06:52:57','Initial Version',1,0,1,NULL,1,0,NULL),(131,1,'My Account','account','','2015-02-25 06:52:58','2015-02-25 06:52:58','Initial Version',1,0,1,NULL,1,0,NULL),(132,1,'Edit Profile','edit_profile','Edit your user profile and change password.','2015-02-25 06:52:58','2015-02-25 06:52:58','Initial Version',1,0,1,NULL,1,0,NULL),(133,1,'Profile Picture','avatar','Specify a new image attached to posts or edits.','2015-02-25 06:52:58','2015-02-25 06:52:58','Initial Version',1,0,1,NULL,1,0,NULL),(134,1,'Messages','messages','Inbox for site-specific messages.','2015-02-25 06:52:59','2015-02-25 06:52:59','Initial Version',1,0,1,NULL,1,0,NULL),(135,1,'Inbox','inbox','','2015-02-25 06:52:59','2015-02-25 06:52:59','Initial Version',1,0,1,NULL,1,0,NULL),(136,1,'Members','members','','2015-02-25 06:52:59','2015-02-25 06:52:59','Initial Version',1,0,1,NULL,1,0,NULL),(137,1,'View Profile','profile','','2015-02-25 06:52:59','2015-02-25 06:52:59','Initial Version',1,0,1,NULL,1,0,NULL),(138,1,'Directory','directory','','2015-02-25 06:53:00','2015-02-25 06:53:00','Initial Version',1,0,1,NULL,1,0,NULL),(139,1,'Page Not Found','page_not_found','','2015-02-25 06:53:00','2015-02-25 06:53:00','Initial Version',1,0,1,NULL,1,0,NULL),(140,1,'Page Forbidden','page_forbidden','','2015-02-25 06:53:00','2015-02-25 06:53:00','Initial Version',1,0,1,NULL,1,0,NULL),(141,1,'Download File','download_file','','2015-02-25 06:53:00','2015-02-25 06:53:00','Initial Version',1,0,1,NULL,1,0,NULL),(142,1,'Footer Contact','footer-contact',NULL,'2015-02-25 06:53:35','2015-02-25 06:53:35','Initial Version',1,0,1,NULL,1,0,NULL),(143,1,'Footer Legal','footer-legal',NULL,'2015-02-25 06:53:36','2015-02-25 06:53:36','Initial Version',1,0,1,NULL,1,0,NULL),(144,1,'Footer Navigation','footer-navigation',NULL,'2015-02-25 06:53:36','2015-02-25 06:53:36','Initial Version',1,0,1,NULL,1,0,NULL),(145,1,'Footer Site Title','footer-site-title',NULL,'2015-02-25 06:53:37','2015-02-25 06:53:37','Initial Version',1,0,1,NULL,1,0,NULL),(146,1,'Footer Social','footer-social',NULL,'2015-02-25 06:53:37','2015-02-25 06:53:37','Initial Version',1,0,1,NULL,1,0,NULL),(147,1,'Header Navigation','header-navigation',NULL,'2015-02-25 06:53:37','2015-02-25 06:53:37','Initial Version',1,0,1,NULL,1,0,NULL),(148,1,'Header Search','header-search',NULL,'2015-02-25 06:53:37','2015-02-25 06:53:37','Initial Version',1,0,1,NULL,1,0,NULL),(149,1,'Header Site Title','header-site-title',NULL,'2015-02-25 06:53:37','2015-02-25 06:53:37','Initial Version',1,0,1,NULL,1,0,NULL),(150,1,'',NULL,NULL,'2015-02-25 06:53:47','2015-02-25 06:53:47','Initial Version',1,0,NULL,NULL,0,6,NULL),(151,1,'Services','services','','2015-02-25 06:53:47','2015-02-25 06:53:47','Initial Version',1,0,1,NULL,1,6,NULL),(152,1,'',NULL,NULL,'2015-02-25 06:53:47','2015-02-25 06:53:47','Initial Version',1,0,NULL,NULL,0,6,NULL),(153,1,'Portfolio','portfolio','','2015-02-25 06:53:47','2015-02-25 06:53:47','Initial Version',1,0,1,NULL,1,6,NULL),(154,1,'Team','team','','2015-02-25 06:53:47','2015-02-25 06:53:47','Initial Version',1,0,1,NULL,1,6,NULL),(155,1,'',NULL,NULL,'2015-02-25 06:53:47','2015-02-25 06:53:47','Initial Version',1,0,NULL,NULL,0,6,NULL),(156,1,'Blog','blog','','2015-02-25 06:53:48','2015-02-25 06:53:48','Initial Version',1,0,1,NULL,1,6,NULL),(157,1,'Search','search','','2015-02-25 06:53:48','2015-02-25 06:53:48','Initial Version',1,0,1,NULL,1,6,NULL),(158,1,'Contact','contact','','2015-02-25 06:53:48','2015-02-25 06:53:48','Initial Version',1,0,1,NULL,1,6,NULL),(159,1,'Blank Page','blank-page','','2015-02-25 06:53:48','2015-02-25 06:53:48','Initial Version',1,0,1,NULL,1,5,NULL),(160,1,'',NULL,NULL,'2015-02-25 06:53:48','2015-02-25 06:53:48','Initial Version',1,0,NULL,NULL,0,7,NULL),(161,1,'Project Title','project-title','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 15:30:00','2015-02-25 06:53:48','Initial Version',1,0,1,NULL,1,7,NULL),(162,1,'Project Title 2','project-title-2','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 15:20:00','2015-02-25 06:53:48','Initial Version',1,0,1,NULL,1,7,NULL),(163,1,'Project Title 3','project-title-3','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 15:10:00','2015-02-25 06:53:49','Initial Version',1,0,1,NULL,1,7,NULL),(164,1,'Project Title 4','project-title-4','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 15:00:00','2015-02-25 06:53:49','Initial Version',1,0,1,NULL,1,7,NULL),(165,1,'Project Title 5','project-title-5','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 14:30:00','2015-02-25 06:53:50','Initial Version',1,0,1,NULL,1,7,NULL),(166,1,'Project Title 6','project-title-6','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 14:20:00','2015-02-25 06:53:50','Initial Version',1,0,1,NULL,1,7,NULL),(167,1,'',NULL,NULL,'2015-02-25 06:53:50','2015-02-25 06:53:50','Initial Version',1,0,NULL,NULL,0,8,NULL),(168,1,'Hello World!','hello-world','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum.','2014-07-01 12:00:00','2015-02-25 06:53:50','Initial Version',1,0,1,NULL,1,8,NULL),(169,1,'Another Blog Post','another-blog-post','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna.','2014-07-04 15:00:00','2015-02-25 06:53:51','Initial Version',1,0,1,NULL,1,8,NULL),(170,1,'A Beautiful Site Deserves a Beautiful Blog','a-beautiful-blog','Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat.','2014-08-01 16:30:00','2015-02-25 06:53:51','Initial Version',1,0,1,NULL,1,8,NULL),(171,1,'About','about','','2015-02-25 06:53:51','2015-02-25 06:53:51','Initial Version',0,0,1,NULL,1,6,NULL),(171,2,'About','about','','2015-02-25 06:53:51','2015-02-25 07:03:21','Version 2',1,0,1,1,1,6,NULL),(172,1,'Careers','careers','','2015-02-25 06:53:51','2015-02-25 06:53:51','Initial Version',1,0,1,NULL,1,6,NULL),(173,1,'Frequently Asked Questions','faq','','2015-02-25 06:53:51','2015-02-25 06:53:51','Initial Version',1,0,1,NULL,1,6,NULL),(174,1,'',NULL,NULL,'2015-02-25 06:53:52','2015-02-25 06:53:52','Initial Version',1,0,NULL,NULL,0,7,NULL),(175,1,'Web Developer','web-developer','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus.','2015-02-25 06:53:52','2015-02-25 06:53:52','Initial Version',1,0,1,NULL,1,7,NULL),(176,1,'Sales Associate','sales-associate','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus.','2015-02-25 06:53:52','2015-02-25 06:53:52','Initial Version',1,0,1,NULL,1,7,NULL),(177,1,'',NULL,NULL,'2015-02-25 06:53:52','2015-02-25 06:53:52','Initial Version',1,0,NULL,NULL,0,5,NULL),(178,1,'',NULL,NULL,'2015-02-25 06:53:52','2015-02-25 06:53:52','Initial Version',1,0,NULL,NULL,0,7,NULL),(179,1,'',NULL,NULL,'2015-02-25 06:53:52','2015-02-25 06:53:52','Initial Version',1,0,NULL,NULL,0,8,NULL);

UNLOCK TABLES;

/*Table structure for table `collectionversionthemecustomstyles` */

DROP TABLE IF EXISTS `collectionversionthemecustomstyles`;

CREATE TABLE `collectionversionthemecustomstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `collectionversionthemecustomstyles` */

LOCK TABLES `collectionversionthemecustomstyles` WRITE;

UNLOCK TABLES;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  KEY `configGroup` (`configGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `config` */

LOCK TABLES `config` WRITE;

insert  into `config`(`configNamespace`,`configGroup`,`configItem`,`configValue`) values ('','concrete','marketplace.token','HFXvSKB19k8tPH4Lu50IKLV9WPfS14LNFAX9xVzS7bwFwrOzZciCzy18YlXRP6W3'),('','concrete','marketplace.url_token','pxgwl26d0edbetd255ezasbg'),('','concrete','security.token.encryption','8ibT04H3fsI2AISu890EQHNO3TBo8laR8GpYGeBAChiUXsm9Bgaq4SPf9OAvgk6g'),('','concrete','security.token.jobs','6Y2QfbOJveyJBwQLSGfJVfFN4RRlhjz3eViviIMEQIz7flP9NEaTANLXmDaKKjb9'),('','concrete','security.token.validation','pXtJGPL0IYvyfRbpJK9UOYYTQ7fxnU0eeabgbmfTExEq4ozhWZnfxYTXU2fWZYTF');

UNLOCK TABLES;

/*Table structure for table `configstore` */

DROP TABLE IF EXISTS `configstore`;

CREATE TABLE `configstore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`,`cfKey`),
  KEY `pkgID` (`pkgID`,`cfKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `configstore` */

LOCK TABLES `configstore` WRITE;

insert  into `configstore`(`cfKey`,`timestamp`,`cfValue`,`uID`,`pkgID`) values ('DISABLED_HELP_NOTIFICATIONS','2015-02-25 11:35:29','a:1:{s:4:\"page\";a:5:{s:23:\"/dashboard/pages/themes\";b:1;s:23:\"/dashboard/sitemap/full\";b:1;s:26:\"/dashboard/sitemap/explore\";b:1;s:24:\"/dashboard/blocks/stacks\";b:1;s:23:\"/dashboard/blocks/types\";b:1;}}',1,0),('NEWSFLOW_LAST_VIEWED','2015-02-25 11:24:58','1424843742',1,0);

UNLOCK TABLES;

/*Table structure for table `conversationdiscussions` */

DROP TABLE IF EXISTS `conversationdiscussions`;

CREATE TABLE `conversationdiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cnvDiscussionID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `conversationdiscussions` */

LOCK TABLES `conversationdiscussions` WRITE;

UNLOCK TABLES;

/*Table structure for table `conversationeditors` */

DROP TABLE IF EXISTS `conversationeditors`;

CREATE TABLE `conversationeditors` (
  `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvEditorID`),
  KEY `pkgID` (`pkgID`,`cnvEditorHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `conversationeditors` */

LOCK TABLES `conversationeditors` WRITE;

insert  into `conversationeditors`(`cnvEditorID`,`cnvEditorHandle`,`cnvEditorName`,`cnvEditorIsActive`,`pkgID`) values (1,'plain_text','Plain Text',0,0),(2,'markdown','Markdown',0,0),(3,'redactor','Redactor',1,0);

UNLOCK TABLES;

/*Table structure for table `conversationfeaturedetailassignments` */

DROP TABLE IF EXISTS `conversationfeaturedetailassignments`;

CREATE TABLE `conversationfeaturedetailassignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`faID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `conversationfeaturedetailassignments` */

LOCK TABLES `conversationfeaturedetailassignments` WRITE;

insert  into `conversationfeaturedetailassignments`(`faID`,`cnvID`) values (1,1),(3,2),(4,3),(5,4);

UNLOCK TABLES;

/*Table structure for table `conversationflaggedmessages` */

DROP TABLE IF EXISTS `conversationflaggedmessages`;

CREATE TABLE `conversationflaggedmessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `conversationflaggedmessages` */

LOCK TABLES `conversationflaggedmessages` WRITE;

UNLOCK TABLES;

/*Table structure for table `conversationflaggedmessagetypes` */

DROP TABLE IF EXISTS `conversationflaggedmessagetypes`;

CREATE TABLE `conversationflaggedmessagetypes` (
  `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cnvMessageFlagTypeID`),
  UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `conversationflaggedmessagetypes` */

LOCK TABLES `conversationflaggedmessagetypes` WRITE;

insert  into `conversationflaggedmessagetypes`(`cnvMessageFlagTypeID`,`cnvMessageFlagTypeHandle`) values (1,'spam');

UNLOCK TABLES;

/*Table structure for table `conversationmessageattachments` */

DROP TABLE IF EXISTS `conversationmessageattachments`;

CREATE TABLE `conversationmessageattachments` (
  `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageAttachmentID`),
  KEY `cnvMessageID` (`cnvMessageID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `conversationmessageattachments` */

LOCK TABLES `conversationmessageattachments` WRITE;

UNLOCK TABLES;

/*Table structure for table `conversationmessageratings` */

DROP TABLE IF EXISTS `conversationmessageratings`;

CREATE TABLE `conversationmessageratings` (
  `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvMessageRatingID`),
  KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `conversationmessageratings` */

LOCK TABLES `conversationmessageratings` WRITE;

UNLOCK TABLES;

/*Table structure for table `conversationmessages` */

DROP TABLE IF EXISTS `conversationmessages`;

CREATE TABLE `conversationmessages` (
  `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0',
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvID` (`cnvID`),
  KEY `cnvMessageParentID` (`cnvMessageParentID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `conversationmessages` */

LOCK TABLES `conversationmessages` WRITE;

UNLOCK TABLES;

/*Table structure for table `conversationpermissionassignments` */

DROP TABLE IF EXISTS `conversationpermissionassignments`;

CREATE TABLE `conversationpermissionassignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `conversationpermissionassignments` */

LOCK TABLES `conversationpermissionassignments` WRITE;

insert  into `conversationpermissionassignments`(`cnvID`,`pkID`,`paID`) values (0,66,72),(0,67,73),(0,70,74),(0,69,75),(0,71,76),(0,68,77),(0,72,78),(0,73,79);

UNLOCK TABLES;

/*Table structure for table `conversationratingtypes` */

DROP TABLE IF EXISTS `conversationratingtypes`;

CREATE TABLE `conversationratingtypes` (
  `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvRatingTypeID`),
  UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `conversationratingtypes` */

LOCK TABLES `conversationratingtypes` WRITE;

insert  into `conversationratingtypes`(`cnvRatingTypeID`,`cnvRatingTypeHandle`,`cnvRatingTypeName`,`cnvRatingTypeCommunityPoints`,`pkgID`) values (1,'up_vote','Up Vote',1,0),(2,'down_vote','Down Vote',0,0);

UNLOCK TABLES;

/*Table structure for table `conversations` */

DROP TABLE IF EXISTS `conversations`;

CREATE TABLE `conversations` (
  `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) unsigned DEFAULT '0',
  `cnvOverrideGlobalPermissions` smallint(5) unsigned DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`cnvID`),
  KEY `cID` (`cID`),
  KEY `cnvParentMessageID` (`cnvParentMessageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `conversations` */

LOCK TABLES `conversations` WRITE;

insert  into `conversations`(`cnvID`,`cID`,`cnvDateCreated`,`cnvDateLastMessage`,`cnvParentMessageID`,`cnvAttachmentsEnabled`,`cnvMessagesTotal`,`cnvOverrideGlobalPermissions`,`cnvAttachmentOverridesEnabled`,`cnvMaxFilesGuest`,`cnvMaxFilesRegistered`,`cnvMaxFileSizeGuest`,`cnvMaxFileSizeRegistered`,`cnvFileExtensions`) values (1,167,'2015-02-25 06:53:54','2015-02-25 06:53:54',0,0,0,0,0,0,0,0,0,NULL),(2,168,'2015-02-25 06:54:32','2015-02-25 06:54:32',0,0,0,0,0,0,0,0,0,NULL),(3,169,'2015-02-25 06:54:35','2015-02-25 06:54:35',0,0,0,0,0,0,0,0,0,NULL),(4,170,'2015-02-25 06:54:36','2015-02-25 06:54:36',0,0,0,0,0,0,0,0,0,NULL);

UNLOCK TABLES;

/*Table structure for table `downloadstatistics` */

DROP TABLE IF EXISTS `downloadstatistics`;

CREATE TABLE `downloadstatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`),
  KEY `fID` (`fID`,`timestamp`),
  KEY `fvID` (`fID`,`fvID`),
  KEY `uID` (`uID`),
  KEY `rcID` (`rcID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `downloadstatistics` */

LOCK TABLES `downloadstatistics` WRITE;

UNLOCK TABLES;

/*Table structure for table `featureassignments` */

DROP TABLE IF EXISTS `featureassignments`;

CREATE TABLE `featureassignments` (
  `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`faID`),
  KEY `feID` (`feID`),
  KEY `fcID` (`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `featureassignments` */

LOCK TABLES `featureassignments` WRITE;

insert  into `featureassignments`(`faID`,`feID`,`fcID`,`fdObject`) values (1,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"1\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(2,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:53:\"/concrete/application/files/1714/2484/3589/blank2.png\";s:8:\"\0*\0width\";d:250;s:9:\"\0*\0height\";d:252;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(3,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"2\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(4,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"3\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(5,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"4\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(6,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:61:\"/concrete/application/files/4814/2484/3593/chinese_house2.jpg\";s:8:\"\0*\0width\";d:200;s:9:\"\0*\0height\";d:200;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(7,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:52:\"/concrete/application/files/8314/2484/3588/blank.png\";s:8:\"\0*\0width\";d:592;s:9:\"\0*\0height\";d:397;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(8,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:52:\"/concrete/application/files/8314/2484/3588/blank.png\";s:8:\"\0*\0width\";d:592;s:9:\"\0*\0height\";d:397;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(9,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:53:\"/concrete/application/files/1714/2484/3589/blank2.png\";s:8:\"\0*\0width\";d:250;s:9:\"\0*\0height\";d:252;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(10,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:55:\"/concrete/application/files/8614/2484/3597/masthead.png\";s:8:\"\0*\0width\";d:1100;s:9:\"\0*\0height\";d:263;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(11,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:53:\"/concrete/application/files/1714/2484/3589/blank2.png\";s:8:\"\0*\0width\";d:250;s:9:\"\0*\0height\";d:252;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(12,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:52:\"/concrete/application/files/8314/2484/3588/blank.png\";s:8:\"\0*\0width\";d:592;s:9:\"\0*\0height\";d:397;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}');

UNLOCK TABLES;

/*Table structure for table `featurecategories` */

DROP TABLE IF EXISTS `featurecategories`;

CREATE TABLE `featurecategories` (
  `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fcID`),
  UNIQUE KEY `fcHandle` (`fcHandle`),
  KEY `pkgID` (`pkgID`,`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `featurecategories` */

LOCK TABLES `featurecategories` WRITE;

insert  into `featurecategories`(`fcID`,`fcHandle`,`pkgID`) values (1,'collection_version',0),(2,'gathering_item',0);

UNLOCK TABLES;

/*Table structure for table `features` */

DROP TABLE IF EXISTS `features`;

CREATE TABLE `features` (
  `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`feID`),
  UNIQUE KEY `feHandle` (`feHandle`),
  KEY `pkgID` (`pkgID`,`feID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `features` */

LOCK TABLES `features` WRITE;

insert  into `features`(`feID`,`feHandle`,`feScore`,`feHasCustomClass`,`pkgID`) values (1,'title',1,0,0),(2,'link',1,0,0),(3,'author',1,0,0),(4,'date_time',1,0,0),(5,'image',500,1,0),(6,'conversation',10,1,0),(7,'description',1,0,0),(8,'featured',1000,0,0);

UNLOCK TABLES;

/*Table structure for table `fileattributevalues` */

DROP TABLE IF EXISTS `fileattributevalues`;

CREATE TABLE `fileattributevalues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `fileattributevalues` */

LOCK TABLES `fileattributevalues` WRITE;

insert  into `fileattributevalues`(`fID`,`fvID`,`akID`,`avID`) values (1,1,14,112),(1,1,15,113),(2,1,14,114),(2,1,15,115),(3,1,14,116),(3,1,15,117),(4,1,14,118),(4,1,15,119),(5,1,14,120),(5,1,15,121),(6,1,14,122),(6,1,15,123),(7,1,14,124),(7,1,15,125),(8,1,14,126),(8,1,15,127),(9,1,14,128),(9,1,15,129),(10,1,14,130),(10,1,15,131),(11,1,14,132),(11,1,15,133),(12,1,14,134),(12,1,15,135),(13,1,14,136),(13,1,15,137),(14,1,14,138),(14,1,15,139),(15,1,14,140),(15,1,15,141),(16,1,14,142),(16,1,15,143);

UNLOCK TABLES;

/*Table structure for table `fileimagethumbnailtypes` */

DROP TABLE IF EXISTS `fileimagethumbnailtypes`;

CREATE TABLE `fileimagethumbnailtypes` (
  `ftTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeWidth` int(11) NOT NULL DEFAULT '0',
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ftTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `fileimagethumbnailtypes` */

LOCK TABLES `fileimagethumbnailtypes` WRITE;

insert  into `fileimagethumbnailtypes`(`ftTypeID`,`ftTypeHandle`,`ftTypeName`,`ftTypeWidth`,`ftTypeHeight`,`ftTypeIsRequired`) values (1,'small','Small Image',740,NULL,0),(2,'medium','Medium Image',940,NULL,0),(3,'large','Large Image',1140,NULL,0),(4,'file_manager_listing','File Manager Thumbnails',60,60,1),(5,'file_manager_detail','File Manager Detail Thumbnails',400,NULL,1);

UNLOCK TABLES;

/*Table structure for table `filepermissionassignments` */

DROP TABLE IF EXISTS `filepermissionassignments`;

CREATE TABLE `filepermissionassignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `filepermissionassignments` */

LOCK TABLES `filepermissionassignments` WRITE;

UNLOCK TABLES;

/*Table structure for table `filepermissionfiletypes` */

DROP TABLE IF EXISTS `filepermissionfiletypes`;

CREATE TABLE `filepermissionfiletypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  KEY `gID` (`gID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `filepermissionfiletypes` */

LOCK TABLES `filepermissionfiletypes` WRITE;

UNLOCK TABLES;

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `uID` (`uID`),
  KEY `fslID` (`fslID`),
  KEY `ocID` (`ocID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `files` */

LOCK TABLES `files` WRITE;

insert  into `files`(`fID`,`fDateAdded`,`uID`,`fslID`,`ocID`,`fOverrideSetPermissions`,`fPassword`) values (1,'2015-02-25 06:53:04',1,1,0,0,NULL),(2,'2015-02-25 06:53:06',1,1,0,0,NULL),(3,'2015-02-25 06:53:07',1,1,0,0,NULL),(4,'2015-02-25 06:53:08',1,1,0,0,NULL),(5,'2015-02-25 06:53:09',1,1,0,0,NULL),(6,'2015-02-25 06:53:10',1,1,0,0,NULL),(7,'2015-02-25 06:53:13',1,1,0,0,NULL),(8,'2015-02-25 06:53:14',1,1,0,0,NULL),(9,'2015-02-25 06:53:17',1,1,0,0,NULL),(10,'2015-02-25 06:53:19',1,1,0,0,NULL),(11,'2015-02-25 06:53:21',1,1,0,0,NULL),(12,'2015-02-25 06:53:24',1,1,0,0,NULL),(13,'2015-02-25 06:53:27',1,1,0,0,NULL),(14,'2015-02-25 06:53:28',1,1,0,0,NULL),(15,'2015-02-25 06:53:29',1,1,0,0,NULL),(16,'2015-02-25 06:53:32',1,1,0,0,NULL);

UNLOCK TABLES;

/*Table structure for table `filesearchindexattributes` */

DROP TABLE IF EXISTS `filesearchindexattributes`;

CREATE TABLE `filesearchindexattributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `filesearchindexattributes` */

LOCK TABLES `filesearchindexattributes` WRITE;

insert  into `filesearchindexattributes`(`fID`,`ak_width`,`ak_height`,`ak_duration`) values (1,'200.0000','200.0000','0.0000'),(2,'500.0000','500.0000','0.0000'),(3,'460.0000','460.0000','0.0000'),(4,'592.0000','397.0000','0.0000'),(5,'250.0000','252.0000','0.0000'),(6,'1600.0000','1067.0000','0.0000'),(7,'200.0000','200.0000','0.0000'),(8,'1499.0000','1067.0000','0.0000'),(9,'1100.0000','263.0000','0.0000'),(10,'1600.0000','1067.0000','0.0000'),(11,'1600.0000','1066.0000','0.0000'),(12,'1600.0000','1067.0000','0.0000'),(13,'1100.0000','368.0000','0.0000'),(14,'1100.0000','368.0000','0.0000'),(15,'1600.0000','1067.0000','0.0000'),(16,'1600.0000','953.0000','0.0000');

UNLOCK TABLES;

/*Table structure for table `filesetfiles` */

DROP TABLE IF EXISTS `filesetfiles`;

CREATE TABLE `filesetfiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `filesetfiles` */

LOCK TABLES `filesetfiles` WRITE;

UNLOCK TABLES;

/*Table structure for table `filesetpermissionassignments` */

DROP TABLE IF EXISTS `filesetpermissionassignments`;

CREATE TABLE `filesetpermissionassignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `filesetpermissionassignments` */

LOCK TABLES `filesetpermissionassignments` WRITE;

insert  into `filesetpermissionassignments`(`fsID`,`pkID`,`paID`) values (0,39,38),(0,40,39),(0,41,40),(0,42,41),(0,43,42),(0,44,43),(0,46,44),(0,45,45),(0,47,46);

UNLOCK TABLES;

/*Table structure for table `filesetpermissionfiletypeaccesslist` */

DROP TABLE IF EXISTS `filesetpermissionfiletypeaccesslist`;

CREATE TABLE `filesetpermissionfiletypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `filesetpermissionfiletypeaccesslist` */

LOCK TABLES `filesetpermissionfiletypeaccesslist` WRITE;

UNLOCK TABLES;

/*Table structure for table `filesetpermissionfiletypeaccesslistcustom` */

DROP TABLE IF EXISTS `filesetpermissionfiletypeaccesslistcustom`;

CREATE TABLE `filesetpermissionfiletypeaccesslistcustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`extension`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `filesetpermissionfiletypeaccesslistcustom` */

LOCK TABLES `filesetpermissionfiletypeaccesslistcustom` WRITE;

UNLOCK TABLES;

/*Table structure for table `filesets` */

DROP TABLE IF EXISTS `filesets`;

CREATE TABLE `filesets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `uID` (`uID`,`fsType`,`fsName`),
  KEY `fsName` (`fsName`),
  KEY `fsType` (`fsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `filesets` */

LOCK TABLES `filesets` WRITE;

UNLOCK TABLES;

/*Table structure for table `filesetsavedsearches` */

DROP TABLE IF EXISTS `filesetsavedsearches`;

CREATE TABLE `filesetsavedsearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `filesetsavedsearches` */

LOCK TABLES `filesetsavedsearches` WRITE;

UNLOCK TABLES;

/*Table structure for table `filestoragelocations` */

DROP TABLE IF EXISTS `filestoragelocations`;

CREATE TABLE `filestoragelocations` (
  `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `filestoragelocations` */

LOCK TABLES `filestoragelocations` WRITE;

insert  into `filestoragelocations`(`fslID`,`fslName`,`fslConfiguration`,`fslIsDefault`) values (1,'Default','O:69:\"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration\":1:{s:10:\"\0*\0default\";b:1;}',1);

UNLOCK TABLES;

/*Table structure for table `filestoragelocationtypes` */

DROP TABLE IF EXISTS `filestoragelocationtypes`;

CREATE TABLE `filestoragelocationtypes` (
  `fslTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslTypeID`),
  UNIQUE KEY `fslTypeHandle` (`fslTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `filestoragelocationtypes` */

LOCK TABLES `filestoragelocationtypes` WRITE;

insert  into `filestoragelocationtypes`(`fslTypeID`,`fslTypeHandle`,`fslTypeName`,`pkgID`) values (1,'default','Default',0),(2,'local','Local',0);

UNLOCK TABLES;

/*Table structure for table `fileversionlog` */

DROP TABLE IF EXISTS `fileversionlog`;

CREATE TABLE `fileversionlog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`),
  KEY `fvID` (`fID`,`fvID`,`fvlID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `fileversionlog` */

LOCK TABLES `fileversionlog` WRITE;

insert  into `fileversionlog`(`fvlID`,`fID`,`fvID`,`fvUpdateTypeID`,`fvUpdateTypeAttributeID`) values (1,1,1,5,14),(2,1,1,5,15),(3,2,1,5,14),(4,2,1,5,15),(5,3,1,5,14),(6,3,1,5,15),(7,4,1,5,14),(8,4,1,5,15),(9,5,1,5,14),(10,5,1,5,15),(11,6,1,5,14),(12,6,1,5,15),(13,7,1,5,14),(14,7,1,5,15),(15,8,1,5,14),(16,8,1,5,15),(17,9,1,5,14),(18,9,1,5,15),(19,10,1,5,14),(20,10,1,5,15),(21,11,1,5,14),(22,11,1,5,15),(23,12,1,5,14),(24,12,1,5,15),(25,13,1,5,14),(26,13,1,5,15),(27,14,1,5,14),(28,14,1,5,15),(29,15,1,5,14),(30,15,1,5,15),(31,16,1,5,14),(32,16,1,5,15);

UNLOCK TABLES;

/*Table structure for table `fileversions` */

DROP TABLE IF EXISTS `fileversions`;

CREATE TABLE `fileversions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvGenericType` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(10) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` text COLLATE utf8_unicode_ci,
  `fvTags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvHasDetailThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvExtension`),
  KEY `fvType` (`fvType`),
  KEY `fvFilename` (`fvFilename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `fileversions` */

LOCK TABLES `fileversions` WRITE;

insert  into `fileversions`(`fID`,`fvID`,`fvFilename`,`fvPrefix`,`fvGenericType`,`fvSize`,`fvTitle`,`fvDescription`,`fvTags`,`fvIsApproved`,`fvDateAdded`,`fvApproverUID`,`fvAuthorUID`,`fvActivateDatetime`,`fvHasListingThumbnail`,`fvHasDetailThumbnail`,`fvExtension`,`fvType`) values (1,1,'avatar_none.png','541424843584',0,12769,'avatar_none.png',NULL,'',1,'2015-02-25 06:53:04',1,1,'2015-02-25 06:53:04',1,0,'png',1),(2,1,'balloon.jpg','271424843586',0,49708,'balloon.jpg',NULL,'',1,'2015-02-25 06:53:06',1,1,'2015-02-25 06:53:06',1,1,'jpg',1),(3,1,'bio.png','691424843587',0,1353,'bio.png',NULL,'',1,'2015-02-25 06:53:07',1,1,'2015-02-25 06:53:07',1,1,'png',1),(4,1,'blank.png','831424843588',0,1837,'blank.png',NULL,'',1,'2015-02-25 06:53:08',1,1,'2015-02-25 06:53:08',1,1,'png',1),(5,1,'blank2.png','171424843589',0,1210,'blank2.png',NULL,'',1,'2015-02-25 06:53:09',1,1,'2015-02-25 06:53:09',1,0,'png',1),(6,1,'bridge.jpg','621424843590',0,211901,'bridge.jpg',NULL,'',1,'2015-02-25 06:53:10',1,1,'2015-02-25 06:53:10',1,1,'jpg',1),(7,1,'chinese_house2.jpg','481424843593',0,84383,'chinese_house2.jpg',NULL,'',1,'2015-02-25 06:53:14',1,1,'2015-02-25 06:53:14',1,0,'jpg',1),(8,1,'houses.jpg','921424843594',0,293154,'houses.jpg',NULL,'',1,'2015-02-25 06:53:15',1,1,'2015-02-25 06:53:15',1,1,'jpg',1),(9,1,'masthead.png','861424843597',0,1429,'masthead.png',NULL,'',1,'2015-02-25 06:53:17',1,1,'2015-02-25 06:53:17',1,1,'png',1),(10,1,'mountains.jpg','741424843598',0,330436,'mountains.jpg',NULL,'',1,'2015-02-25 06:53:19',1,1,'2015-02-25 06:53:19',1,1,'jpg',1),(11,1,'plants.jpg','101424843601',0,373839,'plants.jpg',NULL,'',1,'2015-02-25 06:53:21',1,1,'2015-02-25 06:53:21',1,1,'jpg',1),(12,1,'shoes.jpg','451424843604',0,170179,'shoes.jpg',NULL,'',1,'2015-02-25 06:53:24',1,1,'2015-02-25 06:53:24',1,1,'jpg',1),(13,1,'slider1.png','141424843607',0,338112,'slider1.png',NULL,'',1,'2015-02-25 06:53:27',1,1,'2015-02-25 06:53:27',1,1,'png',1),(14,1,'slider2.png','851424843608',0,406839,'slider2.png',NULL,'',1,'2015-02-25 06:53:28',1,1,'2015-02-25 06:53:28',1,1,'png',1),(15,1,'subway.jpg','661424843609',0,305595,'subway.jpg',NULL,'',1,'2015-02-25 06:53:30',1,1,'2015-02-25 06:53:30',1,1,'jpg',1),(16,1,'sunset.jpg','531424843612',0,458047,'sunset.jpg',NULL,'',1,'2015-02-25 06:53:32',1,1,'2015-02-25 06:53:32',1,1,'jpg',1);

UNLOCK TABLES;

/*Table structure for table `gapage` */

DROP TABLE IF EXISTS `gapage`;

CREATE TABLE `gapage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gaiID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `gapage` */

LOCK TABLES `gapage` WRITE;

UNLOCK TABLES;

/*Table structure for table `gatheringconfigureddatasources` */

DROP TABLE IF EXISTS `gatheringconfigureddatasources`;

CREATE TABLE `gatheringconfigureddatasources` (
  `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`gcsID`),
  KEY `gaID` (`gaID`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `gatheringconfigureddatasources` */

LOCK TABLES `gatheringconfigureddatasources` WRITE;

UNLOCK TABLES;

/*Table structure for table `gatheringdatasources` */

DROP TABLE IF EXISTS `gatheringdatasources`;

CREATE TABLE `gatheringdatasources` (
  `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gasID`),
  UNIQUE KEY `gasHandle` (`gasHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `gatheringdatasources` */

LOCK TABLES `gatheringdatasources` WRITE;

insert  into `gatheringdatasources`(`gasID`,`gasName`,`gasHandle`,`pkgID`,`gasDisplayOrder`) values (1,'Site Page','page',0,0),(2,'RSS Feed','rss_feed',0,1),(3,'Flickr Feed','flickr_feed',0,2),(4,'Twitter','twitter',0,3);

UNLOCK TABLES;

/*Table structure for table `gatheringitemfeatureassignments` */

DROP TABLE IF EXISTS `gatheringitemfeatureassignments`;

CREATE TABLE `gatheringitemfeatureassignments` (
  `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gafaID`),
  KEY `gaiID` (`gaiID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `gatheringitemfeatureassignments` */

LOCK TABLES `gatheringitemfeatureassignments` WRITE;

UNLOCK TABLES;

/*Table structure for table `gatheringitems` */

DROP TABLE IF EXISTS `gatheringitems`;

CREATE TABLE `gatheringitems` (
  `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) unsigned DEFAULT '1',
  `gaiSlotHeight` int(10) unsigned DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`gaiID`),
  UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `gatheringitems` */

LOCK TABLES `gatheringitems` WRITE;

UNLOCK TABLES;

/*Table structure for table `gatheringitemselectedtemplates` */

DROP TABLE IF EXISTS `gatheringitemselectedtemplates`;

CREATE TABLE `gatheringitemselectedtemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gaiID`,`gatID`),
  UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `gatID` (`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `gatheringitemselectedtemplates` */

LOCK TABLES `gatheringitemselectedtemplates` WRITE;

UNLOCK TABLES;

/*Table structure for table `gatheringitemtemplatefeatures` */

DROP TABLE IF EXISTS `gatheringitemtemplatefeatures`;

CREATE TABLE `gatheringitemtemplatefeatures` (
  `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gfeID`),
  KEY `gatID` (`gatID`),
  KEY `feID` (`feID`,`gatID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `gatheringitemtemplatefeatures` */

LOCK TABLES `gatheringitemtemplatefeatures` WRITE;

insert  into `gatheringitemtemplatefeatures`(`gfeID`,`gatID`,`feID`) values (4,1,1),(10,2,1),(13,3,1),(16,4,1),(19,5,1),(23,7,1),(29,11,1),(33,12,1),(37,13,1),(42,14,1),(47,15,1),(53,17,1),(56,18,1),(63,21,1),(64,22,1),(3,1,2),(9,2,2),(12,3,2),(15,4,2),(18,5,2),(21,6,2),(25,8,2),(27,9,2),(41,13,3),(46,14,3),(51,16,3),(55,17,3),(62,20,3),(66,22,3),(2,1,4),(8,2,4),(14,4,4),(17,5,4),(31,11,4),(35,12,4),(39,13,4),(44,14,4),(61,20,4),(5,1,5),(22,6,5),(24,8,5),(26,9,5),(28,10,5),(32,11,5),(36,12,5),(40,13,5),(45,14,5),(49,15,5),(50,16,5),(59,19,5),(65,22,5),(20,5,6),(1,1,7),(7,2,7),(11,3,7),(30,11,7),(34,12,7),(38,13,7),(43,14,7),(48,15,7),(52,16,7),(54,17,7),(57,18,7),(58,19,7),(60,20,7),(6,1,8);

UNLOCK TABLES;

/*Table structure for table `gatheringitemtemplates` */

DROP TABLE IF EXISTS `gatheringitemtemplates`;

CREATE TABLE `gatheringitemtemplates` (
  `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) unsigned DEFAULT '0',
  `gatFixedSlotHeight` int(10) unsigned DEFAULT '0',
  `gatForceDefault` int(10) unsigned DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gatID`),
  UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `gatheringitemtemplates` */

LOCK TABLES `gatheringitemtemplates` WRITE;

insert  into `gatheringitemtemplates`(`gatID`,`gatHandle`,`gatName`,`gatHasCustomClass`,`gatFixedSlotWidth`,`gatFixedSlotHeight`,`gatForceDefault`,`pkgID`,`gatTypeID`) values (1,'featured','Featured Item',0,6,2,1,0,1),(2,'title_date_description','Title Date & Description',0,0,0,0,0,1),(3,'title_description','Title & Description',0,0,0,0,0,1),(4,'title_date','Title & Date',0,0,0,0,0,1),(5,'title_date_comments','Title, Date & Comments',1,0,0,0,0,1),(6,'thumbnail','Thumbnail',0,0,0,0,0,1),(7,'basic','Basic',0,0,0,0,0,2),(8,'image_sharing_link','Image Sharing Link',0,0,0,0,0,2),(9,'image_conversation','Image Conversation',0,0,0,0,0,2),(10,'image','Large Image',0,0,0,0,0,2),(11,'masthead_image_left','Masthead Image Left',0,0,0,0,0,1),(12,'masthead_image_right','Masthead Image Right',0,0,0,0,0,1),(13,'masthead_image_byline_right','Masthead Image Byline Right',0,0,0,0,0,1),(14,'masthead_image_byline_left','Masthead Image Byline Left',0,0,0,0,0,1),(15,'image_masthead_description_center','Image Masthead Description Center',0,0,0,0,0,1),(16,'image_byline_description_center','Image Byline Description Center',0,0,0,0,0,1),(17,'masthead_byline_description','Masthead Byline Description',0,0,0,0,0,1),(18,'masthead_description','Masthead Description',0,0,0,0,0,1),(19,'thumbnail_description_center','Thumbnail & Description Center',0,0,0,0,0,1),(20,'tweet','Tweet',0,0,0,0,0,1),(21,'vimeo','Vimeo',0,0,0,0,0,1),(22,'image_overlay_headline','Image Overlay Headline',0,0,0,0,0,1);

UNLOCK TABLES;

/*Table structure for table `gatheringitemtemplatetypes` */

DROP TABLE IF EXISTS `gatheringitemtemplatetypes`;

CREATE TABLE `gatheringitemtemplatetypes` (
  `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gatTypeID`),
  UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `gatheringitemtemplatetypes` */

LOCK TABLES `gatheringitemtemplatetypes` WRITE;

insert  into `gatheringitemtemplatetypes`(`gatTypeID`,`gatTypeHandle`,`pkgID`) values (1,'tile',0),(2,'detail',0);

UNLOCK TABLES;

/*Table structure for table `gatheringpermissionassignments` */

DROP TABLE IF EXISTS `gatheringpermissionassignments`;

CREATE TABLE `gatheringpermissionassignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gaID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `gatheringpermissionassignments` */

LOCK TABLES `gatheringpermissionassignments` WRITE;

UNLOCK TABLES;

/*Table structure for table `gatherings` */

DROP TABLE IF EXISTS `gatherings`;

CREATE TABLE `gatherings` (
  `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL,
  PRIMARY KEY (`gaID`),
  KEY `gaDateLastUpdated` (`gaDateLastUpdated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `gatherings` */

LOCK TABLES `gatherings` WRITE;

UNLOCK TABLES;

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`),
  KEY `gName` (`gName`),
  KEY `gBadgeFID` (`gBadgeFID`),
  KEY `pkgID` (`pkgID`),
  KEY `gPath` (`gPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `groups` */

LOCK TABLES `groups` WRITE;

insert  into `groups`(`gID`,`gName`,`gDescription`,`gUserExpirationIsEnabled`,`gUserExpirationMethod`,`gUserExpirationSetDateTime`,`gUserExpirationInterval`,`gUserExpirationAction`,`gIsBadge`,`gBadgeFID`,`gBadgeDescription`,`gBadgeCommunityPointValue`,`gIsAutomated`,`gCheckAutomationOnRegister`,`gCheckAutomationOnLogin`,`gCheckAutomationOnJobRun`,`gPath`,`pkgID`) values (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Guest',0),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Registered Users',0),(3,'Administrators','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Administrators',0);

UNLOCK TABLES;

/*Table structure for table `groupsetgroups` */

DROP TABLE IF EXISTS `groupsetgroups`;

CREATE TABLE `groupsetgroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `groupsetgroups` */

LOCK TABLES `groupsetgroups` WRITE;

UNLOCK TABLES;

/*Table structure for table `groupsets` */

DROP TABLE IF EXISTS `groupsets`;

CREATE TABLE `groupsets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`),
  KEY `gsName` (`gsName`),
  KEY `pkgID` (`pkgID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `groupsets` */

LOCK TABLES `groupsets` WRITE;

UNLOCK TABLES;

/*Table structure for table `jobs` */

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`),
  UNIQUE KEY `jHandle` (`jHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  KEY `jDateLastRun` (`jDateLastRun`,`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `jobs` */

LOCK TABLES `jobs` WRITE;

insert  into `jobs`(`jID`,`jName`,`jDescription`,`jDateInstalled`,`jDateLastRun`,`pkgID`,`jLastStatusText`,`jLastStatusCode`,`jStatus`,`jHandle`,`jNotUninstallable`,`isScheduled`,`scheduledInterval`,`scheduledValue`) values (1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.','2015-02-25 06:52:02',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0),(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2015-02-25 06:52:02',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0),(3,'Check Automated Groups','Automatically add users to groups and assign badges.','2015-02-25 06:52:02',NULL,0,NULL,0,'ENABLED','check_automated_groups',0,0,'days',0),(4,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2015-02-25 06:52:02',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0),(5,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2015-02-25 06:52:02',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0),(6,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2015-02-25 06:52:02',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0),(7,'Update Gatherings','Loads new items into gatherings.','2015-02-25 06:52:02',NULL,0,NULL,0,'ENABLED','update_gatherings',0,0,'days',0);

UNLOCK TABLES;

/*Table structure for table `jobsetjobs` */

DROP TABLE IF EXISTS `jobsetjobs`;

CREATE TABLE `jobsetjobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `jobsetjobs` */

LOCK TABLES `jobsetjobs` WRITE;

insert  into `jobsetjobs`(`jsID`,`jID`,`jRunOrder`) values (1,1,0),(1,4,0),(1,5,0),(1,6,0),(1,7,0);

UNLOCK TABLES;

/*Table structure for table `jobsets` */

DROP TABLE IF EXISTS `jobsets`;

CREATE TABLE `jobsets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`),
  KEY `pkgID` (`pkgID`),
  KEY `jsName` (`jsName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `jobsets` */

LOCK TABLES `jobsets` WRITE;

insert  into `jobsets`(`jsID`,`jsName`,`pkgID`,`jDateLastRun`,`isScheduled`,`scheduledInterval`,`scheduledValue`) values (1,'Default',0,NULL,0,'days',0);

UNLOCK TABLES;

/*Table structure for table `jobslog` */

DROP TABLE IF EXISTS `jobslog`;

CREATE TABLE `jobslog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `jobslog` */

LOCK TABLES `jobslog` WRITE;

UNLOCK TABLES;

/*Table structure for table `logs` */

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `channel` (`channel`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `logs` */

LOCK TABLES `logs` WRITE;

UNLOCK TABLES;

/*Table structure for table `mailimporters` */

DROP TABLE IF EXISTS `mailimporters`;

CREATE TABLE `mailimporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP',
  PRIMARY KEY (`miID`),
  UNIQUE KEY `miHandle` (`miHandle`),
  KEY `pkgID` (`pkgID`,`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `mailimporters` */

LOCK TABLES `mailimporters` WRITE;

insert  into `mailimporters`(`miID`,`miHandle`,`miServer`,`miUsername`,`miPassword`,`miEncryption`,`miIsEnabled`,`miEmail`,`miPort`,`pkgID`,`miConnectionMethod`) values (1,'private_message','',NULL,NULL,NULL,0,'',0,0,'POP');

UNLOCK TABLES;

/*Table structure for table `mailvalidationhashes` */

DROP TABLE IF EXISTS `mailvalidationhashes`;

CREATE TABLE `mailvalidationhashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mvhID`),
  UNIQUE KEY `mHash` (`mHash`),
  KEY `miID` (`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `mailvalidationhashes` */

LOCK TABLES `mailvalidationhashes` WRITE;

UNLOCK TABLES;

/*Table structure for table `multilingualpagerelations` */

DROP TABLE IF EXISTS `multilingualpagerelations`;

CREATE TABLE `multilingualpagerelations` (
  `mpRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`,`mpLocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `multilingualpagerelations` */

LOCK TABLES `multilingualpagerelations` WRITE;

UNLOCK TABLES;

/*Table structure for table `multilingualsections` */

DROP TABLE IF EXISTS `multilingualsections`;

CREATE TABLE `multilingualsections` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `multilingualsections` */

LOCK TABLES `multilingualsections` WRITE;

UNLOCK TABLES;

/*Table structure for table `multilingualtranslations` */

DROP TABLE IF EXISTS `multilingualtranslations`;

CREATE TABLE `multilingualtranslations` (
  `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgstr` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`mtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `multilingualtranslations` */

LOCK TABLES `multilingualtranslations` WRITE;

UNLOCK TABLES;

/*Table structure for table `oauthusermap` */

DROP TABLE IF EXISTS `oauthusermap`;

CREATE TABLE `oauthusermap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`namespace`),
  UNIQUE KEY `oauth_binding` (`binding`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauthusermap` */

LOCK TABLES `oauthusermap` WRITE;

UNLOCK TABLES;

/*Table structure for table `packages` */

DROP TABLE IF EXISTS `packages`;

CREATE TABLE `packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgDescription` text COLLATE utf8_unicode_ci,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `packages` */

LOCK TABLES `packages` WRITE;

UNLOCK TABLES;

/*Table structure for table `pagefeeds` */

DROP TABLE IF EXISTS `pagefeeds`;

CREATE TABLE `pagefeeds` (
  `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `pfContentToDisplay` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`pfID`),
  UNIQUE KEY `pfHandle` (`pfHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagefeeds` */

LOCK TABLES `pagefeeds` WRITE;

insert  into `pagefeeds`(`pfID`,`cParentID`,`pfTitle`,`pfHandle`,`pfDescription`,`pfIncludeAllDescendents`,`pfContentToDisplay`,`pfAreaHandleToDisplay`,`pfDisplayAliases`,`ptID`,`pfDisplayFeaturedOnly`) values (1,156,'Blog','blog','concrete5 Blog',0,'S',NULL,0,6,0);

UNLOCK TABLES;

/*Table structure for table `pagepaths` */

DROP TABLE IF EXISTS `pagepaths`;

CREATE TABLE `pagepaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text COLLATE utf8_unicode_ci NOT NULL,
  `ppIsCanonical` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`),
  KEY `cPath` (`cPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagepaths` */

LOCK TABLES `pagepaths` WRITE;

insert  into `pagepaths`(`ppID`,`cID`,`cPath`,`ppIsCanonical`) values (1,2,'/dashboard','1'),(2,3,'/dashboard/sitemap','1'),(3,4,'/dashboard/sitemap/full','1'),(4,5,'/dashboard/sitemap/explore','1'),(5,6,'/dashboard/sitemap/search','1'),(6,7,'/dashboard/files','1'),(7,8,'/dashboard/files/search','1'),(8,9,'/dashboard/files/attributes','1'),(9,10,'/dashboard/files/sets','1'),(10,11,'/dashboard/files/add_set','1'),(11,12,'/dashboard/users','1'),(12,13,'/dashboard/users/search','1'),(13,14,'/dashboard/users/groups','1'),(14,15,'/dashboard/users/attributes','1'),(15,16,'/dashboard/users/add','1'),(16,17,'/dashboard/users/add_group','1'),(17,18,'/dashboard/users/groups/bulkupdate','1'),(18,19,'/dashboard/users/group_sets','1'),(19,20,'/dashboard/users/points','1'),(20,21,'/dashboard/users/points/assign','1'),(21,22,'/dashboard/users/points/actions','1'),(22,23,'/dashboard/reports','1'),(23,24,'/dashboard/reports/forms','1'),(24,25,'/dashboard/reports/surveys','1'),(25,26,'/dashboard/reports/logs','1'),(26,27,'/dashboard/pages','1'),(27,28,'/dashboard/pages/themes','1'),(28,29,'/dashboard/pages/themes/inspect','1'),(29,30,'/dashboard/pages/types','1'),(30,31,'/dashboard/pages/types/organize','1'),(31,32,'/dashboard/pages/types/add','1'),(32,33,'/dashboard/pages/types/form','1'),(33,34,'/dashboard/pages/types/output','1'),(34,35,'/dashboard/pages/types/attributes','1'),(35,36,'/dashboard/pages/types/permissions','1'),(36,37,'/dashboard/pages/templates','1'),(37,38,'/dashboard/pages/templates/add','1'),(38,39,'/dashboard/pages/attributes','1'),(39,40,'/dashboard/pages/single','1'),(40,41,'/dashboard/pages/feeds','1'),(41,42,'/dashboard/conversations','1'),(42,43,'/dashboard/conversations/messages','1'),(43,44,'/dashboard/workflow','1'),(44,45,'/dashboard/workflow/workflows','1'),(45,46,'/dashboard/workflow/me','1'),(46,47,'/dashboard/blocks','1'),(47,48,'/dashboard/blocks/stacks','1'),(48,49,'/dashboard/blocks/permissions','1'),(49,50,'/dashboard/blocks/stacks/list','1'),(50,51,'/dashboard/blocks/types','1'),(51,52,'/dashboard/extend','1'),(52,53,'/dashboard/news','1'),(53,54,'/dashboard/extend/install','1'),(54,55,'/dashboard/extend/update','1'),(55,56,'/dashboard/extend/connect','1'),(56,57,'/dashboard/extend/themes','1'),(57,58,'/dashboard/extend/addons','1'),(58,59,'/dashboard/system','1'),(59,60,'/dashboard/system/basics','1'),(60,61,'/dashboard/system/basics/name','1'),(61,62,'/dashboard/system/basics/accessibility','1'),(62,63,'/dashboard/system/basics/social','1'),(63,64,'/dashboard/system/basics/icons','1'),(64,65,'/dashboard/system/basics/editor','1'),(65,66,'/dashboard/system/basics/multilingual','1'),(66,67,'/dashboard/system/basics/timezone','1'),(67,68,'/dashboard/system/multilingual','1'),(68,69,'/dashboard/system/multilingual/setup','1'),(69,70,'/dashboard/system/multilingual/page_report','1'),(70,71,'/dashboard/system/multilingual/translate_interface','1'),(71,72,'/dashboard/system/seo','1'),(72,73,'/dashboard/system/seo/urls','1'),(73,74,'/dashboard/system/seo/bulk','1'),(74,75,'/dashboard/system/seo/codes','1'),(75,76,'/dashboard/system/seo/excluded','1'),(76,77,'/dashboard/system/seo/searchindex','1'),(77,78,'/dashboard/system/files','1'),(78,79,'/dashboard/system/files/permissions','1'),(79,80,'/dashboard/system/files/filetypes','1'),(80,81,'/dashboard/system/files/thumbnails','1'),(81,82,'/dashboard/system/files/storage','1'),(82,83,'/dashboard/system/optimization','1'),(83,84,'/dashboard/system/optimization/cache','1'),(84,85,'/dashboard/system/optimization/clearcache','1'),(85,86,'/dashboard/system/optimization/jobs','1'),(86,87,'/dashboard/system/optimization/query_log','1'),(87,88,'/dashboard/system/permissions','1'),(88,89,'/dashboard/system/permissions/site','1'),(89,90,'/dashboard/system/permissions/tasks','1'),(90,91,'/dashboard/system/permissions/users','1'),(91,92,'/dashboard/system/permissions/advanced','1'),(92,93,'/dashboard/system/permissions/blacklist','1'),(93,94,'/dashboard/system/permissions/captcha','1'),(94,95,'/dashboard/system/permissions/antispam','1'),(95,96,'/dashboard/system/permissions/maintenance','1'),(96,97,'/dashboard/system/registration','1'),(97,98,'/dashboard/system/registration/postlogin','1'),(98,99,'/dashboard/system/registration/profiles','1'),(99,100,'/dashboard/system/registration/open','1'),(100,101,'/dashboard/system/registration/authentication','1'),(101,102,'/dashboard/system/mail','1'),(102,103,'/dashboard/system/mail/method','1'),(103,104,'/dashboard/system/mail/method/test','1'),(104,105,'/dashboard/system/mail/importers','1'),(105,106,'/dashboard/system/conversations','1'),(106,107,'/dashboard/system/conversations/settings','1'),(107,108,'/dashboard/system/conversations/points','1'),(108,109,'/dashboard/system/conversations/bannedwords','1'),(109,110,'/dashboard/system/conversations/permissions','1'),(110,111,'/dashboard/system/attributes','1'),(111,112,'/dashboard/system/attributes/sets','1'),(112,113,'/dashboard/system/attributes/types','1'),(113,114,'/dashboard/system/attributes/topics','1'),(114,115,'/dashboard/system/attributes/topics/add','1'),(115,116,'/dashboard/system/environment','1'),(116,117,'/dashboard/system/environment/info','1'),(117,118,'/dashboard/system/environment/debug','1'),(118,119,'/dashboard/system/environment/logging','1'),(119,120,'/dashboard/system/environment/proxy','1'),(120,121,'/dashboard/system/backup','1'),(121,122,'/dashboard/system/backup/backup','1'),(122,123,'/dashboard/system/backup/update','1'),(123,124,'/dashboard/welcome','1'),(124,125,'/dashboard/home','1'),(125,126,'/!drafts','1'),(126,127,'/!trash','1'),(127,128,'/!stacks','1'),(128,129,'/login','1'),(129,130,'/register','1'),(130,131,'/account','1'),(131,132,'/account/edit_profile','1'),(132,133,'/account/avatar','1'),(133,134,'/account/messages','1'),(134,135,'/account/messages/inbox','1'),(135,136,'/members','1'),(136,137,'/members/profile','1'),(137,138,'/members/directory','1'),(138,139,'/page_not_found','1'),(139,140,'/page_forbidden','1'),(140,141,'/download_file','1'),(141,142,'/!stacks/footer-contact','1'),(142,143,'/!stacks/footer-legal','1'),(143,144,'/!stacks/footer-navigation','1'),(144,145,'/!stacks/footer-site-title','1'),(145,146,'/!stacks/footer-social','1'),(146,147,'/!stacks/header-navigation','1'),(147,148,'/!stacks/header-search','1'),(148,149,'/!stacks/header-site-title','1'),(149,151,'/services','1'),(150,153,'/portfolio','1'),(151,154,'/team','1'),(152,156,'/blog','1'),(153,157,'/search','1'),(154,158,'/contact','1'),(155,159,'/blank-page','1'),(156,161,'/portfolio/project-title','1'),(157,162,'/portfolio/project-title-2','1'),(158,163,'/portfolio/project-title-3','1'),(159,164,'/portfolio/project-title-4','1'),(160,165,'/portfolio/project-title-5','1'),(161,166,'/portfolio/project-title-6','1'),(162,168,'/blog/hello-world','1'),(163,169,'/blog/another-blog-post','1'),(164,170,'/blog/a-beautiful-blog','1'),(165,171,'/team/about','1'),(166,172,'/team/careers','1'),(167,173,'/team/faq','1'),(168,175,'/team/careers/web-developer','1'),(169,176,'/team/careers/sales-associate','1');

UNLOCK TABLES;

/*Table structure for table `pagepermissionassignments` */

DROP TABLE IF EXISTS `pagepermissionassignments`;

CREATE TABLE `pagepermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`),
  KEY `paID` (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagepermissionassignments` */

LOCK TABLES `pagepermissionassignments` WRITE;

insert  into `pagepermissionassignments`(`cID`,`pkID`,`paID`) values (1,1,47),(2,1,66),(129,1,64),(130,1,65),(1,2,48),(1,3,49),(1,4,50),(1,5,51),(1,6,52),(1,7,53),(1,8,55),(1,9,56),(1,11,57),(1,12,58),(1,13,59),(1,14,60),(1,15,61),(1,16,62),(1,17,63),(1,18,54);

UNLOCK TABLES;

/*Table structure for table `pagepermissionpagetypeaccesslist` */

DROP TABLE IF EXISTS `pagepermissionpagetypeaccesslist`;

CREATE TABLE `pagepermissionpagetypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagepermissionpagetypeaccesslist` */

LOCK TABLES `pagepermissionpagetypeaccesslist` WRITE;

UNLOCK TABLES;

/*Table structure for table `pagepermissionpagetypeaccesslistcustom` */

DROP TABLE IF EXISTS `pagepermissionpagetypeaccesslistcustom`;

CREATE TABLE `pagepermissionpagetypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`),
  KEY `peID` (`peID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagepermissionpagetypeaccesslistcustom` */

LOCK TABLES `pagepermissionpagetypeaccesslistcustom` WRITE;

UNLOCK TABLES;

/*Table structure for table `pagepermissionpropertyaccesslist` */

DROP TABLE IF EXISTS `pagepermissionpropertyaccesslist`;

CREATE TABLE `pagepermissionpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagepermissionpropertyaccesslist` */

LOCK TABLES `pagepermissionpropertyaccesslist` WRITE;

UNLOCK TABLES;

/*Table structure for table `pagepermissionpropertyattributeaccesslistcustom` */

DROP TABLE IF EXISTS `pagepermissionpropertyattributeaccesslistcustom`;

CREATE TABLE `pagepermissionpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagepermissionpropertyattributeaccesslistcustom` */

LOCK TABLES `pagepermissionpropertyattributeaccesslistcustom` WRITE;

UNLOCK TABLES;

/*Table structure for table `pagepermissionthemeaccesslist` */

DROP TABLE IF EXISTS `pagepermissionthemeaccesslist`;

CREATE TABLE `pagepermissionthemeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagepermissionthemeaccesslist` */

LOCK TABLES `pagepermissionthemeaccesslist` WRITE;

UNLOCK TABLES;

/*Table structure for table `pagepermissionthemeaccesslistcustom` */

DROP TABLE IF EXISTS `pagepermissionthemeaccesslistcustom`;

CREATE TABLE `pagepermissionthemeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  KEY `peID` (`peID`),
  KEY `pThemeID` (`pThemeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagepermissionthemeaccesslistcustom` */

LOCK TABLES `pagepermissionthemeaccesslistcustom` WRITE;

UNLOCK TABLES;

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`ptID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cID`,`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`,`cPointerID`),
  KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  KEY `pkgID` (`pkgID`),
  KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pages` */

LOCK TABLES `pages` WRITE;

insert  into `pages`(`cID`,`ptID`,`cIsTemplate`,`uID`,`cIsCheckedOut`,`cCheckedOutUID`,`cCheckedOutDatetime`,`cCheckedOutDatetimeLastEdit`,`cOverrideTemplatePermissions`,`cInheritPermissionsFromCID`,`cInheritPermissionsFrom`,`cFilename`,`cPointerID`,`cPointerExternalLink`,`cPointerExternalLinkNewWindow`,`cIsActive`,`cChildren`,`cDisplayOrder`,`cParentID`,`pkgID`,`cDraftTargetParentPageID`,`cCacheFullPageContent`,`cCacheFullPageContentOverrideLifetime`,`cCacheFullPageContentLifetimeCustom`,`cIsSystemPage`) values (1,0,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,18,0,0,0,0,-1,'0',0,0),(2,0,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,0,-1,'0',0,1),(3,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,0,2,0,0,-1,'0',0,1),(4,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,3,0,0,-1,'0',0,1),(5,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,3,0,0,-1,'0',0,1),(6,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,3,0,0,-1,'0',0,1),(7,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,1,2,0,0,-1,'0',0,1),(8,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,7,0,0,-1,'0',0,1),(9,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,7,0,0,-1,'0',0,1),(10,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,7,0,0,-1,'0',0,1),(11,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,7,0,0,-1,'0',0,1),(12,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,7,2,2,0,0,-1,'0',0,1),(13,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,12,0,0,-1,'0',0,1),(14,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,1,1,12,0,0,-1,'0',0,1),(15,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,12,0,0,-1,'0',0,1),(16,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,12,0,0,-1,'0',0,1),(17,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,12,0,0,-1,'0',0,1),(18,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups/bulkupdate.php',0,NULL,0,1,0,0,14,0,0,-1,'0',0,1),(19,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,12,0,0,-1,'0',0,1),(20,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/view.php',0,NULL,0,1,2,6,12,0,0,-1,'0',0,1),(21,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/assign.php',0,NULL,0,1,0,0,20,0,0,-1,'0',0,1),(22,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/actions.php',0,NULL,0,1,0,1,20,0,0,-1,'0',0,1),(23,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,3,3,2,0,0,-1,'0',0,1),(24,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,0,23,0,0,-1,'0',0,1),(25,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,1,23,0,0,-1,'0',0,1),(26,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,2,23,0,0,-1,'0',0,1),(27,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,6,4,2,0,0,-1,'0',0,1),(28,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,1,0,27,0,0,-1,'0',0,1),(29,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,0,28,0,0,-1,'0',0,1),(30,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,6,1,27,0,0,-1,'0',0,1),(31,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/organize.php',0,NULL,0,1,0,0,30,0,0,-1,'0',0,1),(32,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,1,30,0,0,-1,'0',0,1),(33,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/form.php',0,NULL,0,1,0,2,30,0,0,-1,'0',0,1),(34,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/output.php',0,NULL,0,1,0,3,30,0,0,-1,'0',0,1),(35,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/attributes.php',0,NULL,0,1,0,4,30,0,0,-1,'0',0,1),(36,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/permissions.php',0,NULL,0,1,0,5,30,0,0,-1,'0',0,1),(37,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/templates/view.php',0,NULL,0,1,1,2,27,0,0,-1,'0',0,1),(38,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/templates/add.php',0,NULL,0,1,0,0,37,0,0,-1,'0',0,1),(39,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,3,27,0,0,-1,'0',0,1),(40,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,4,27,0,0,-1,'0',0,1),(41,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/feeds.php',0,NULL,0,1,0,5,27,0,0,-1,'0',0,1),(42,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/conversations/view.php',0,NULL,0,1,1,5,2,0,0,-1,'0',0,1),(43,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/conversations/messages.php',0,NULL,0,1,0,0,42,0,0,-1,'0',0,1),(44,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,0,-1,'0',0,1),(45,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/workflows.php',0,NULL,0,1,0,0,44,0,0,-1,'0',0,1),(46,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,1,44,0,0,-1,'0',0,1),(47,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,3,7,2,0,0,-1,'0',0,1),(48,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,47,0,0,-1,'0',0,1),(49,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,47,0,0,-1,'0',0,1),(50,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,48,0,0,-1,'0',0,1),(51,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,47,0,0,-1,'0',0,1),(52,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,0,-1,'0',0,1),(53,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,0,-1,'0',0,1),(54,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,52,0,0,-1,'0',0,1),(55,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,52,0,0,-1,'0',0,1),(56,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,52,0,0,-1,'0',0,1),(57,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,52,0,0,-1,'0',0,1),(58,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/addons.php',0,NULL,0,1,0,4,52,0,0,-1,'0',0,1),(59,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,12,10,2,0,0,-1,'0',0,1),(60,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,7,0,59,0,0,-1,'0',0,1),(61,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/name.php',0,NULL,0,1,0,0,60,0,0,-1,'0',0,1),(62,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/accessibility.php',0,NULL,0,1,0,1,60,0,0,-1,'0',0,1),(63,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/social.php',0,NULL,0,1,0,2,60,0,0,-1,'0',0,1),(64,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,3,60,0,0,-1,'0',0,1),(65,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,4,60,0,0,-1,'0',0,1),(66,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,5,60,0,0,-1,'0',0,1),(67,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,6,60,0,0,-1,'0',0,1),(68,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/view.php',0,NULL,0,1,3,1,59,0,0,-1,'0',0,1),(69,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/setup.php',0,NULL,0,1,0,0,68,0,0,-1,'0',0,1),(70,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/page_report.php',0,NULL,0,1,0,1,68,0,0,-1,'0',0,1),(71,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/translate_interface.php',0,NULL,0,1,0,2,68,0,0,-1,'0',0,1),(72,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,5,2,59,0,0,-1,'0',0,1),(73,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,72,0,0,-1,'0',0,1),(74,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk.php',0,NULL,0,1,0,1,72,0,0,-1,'0',0,1),(75,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/codes.php',0,NULL,0,1,0,2,72,0,0,-1,'0',0,1),(76,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,72,0,0,-1,'0',0,1),(77,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/searchindex.php',0,NULL,0,1,0,4,72,0,0,-1,'0',0,1),(78,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/view.php',0,NULL,0,1,4,3,59,0,0,-1,'0',0,1),(79,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/permissions.php',0,NULL,0,1,0,0,78,0,0,-1,'0',0,1),(80,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/filetypes.php',0,NULL,0,1,0,1,78,0,0,-1,'0',0,1),(81,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/thumbnails.php',0,NULL,0,1,0,2,78,0,0,-1,'0',0,1),(82,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/storage.php',0,NULL,0,1,0,3,78,0,0,-1,'0',0,1),(83,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,4,4,59,0,0,-1,'0',0,1),(84,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,83,0,0,-1,'0',0,1),(85,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clearcache.php',0,NULL,0,1,0,1,83,0,0,-1,'0',0,1),(86,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,83,0,0,-1,'0',0,1),(87,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/query_log.php',0,NULL,0,1,0,3,83,0,0,-1,'0',0,1),(88,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,8,5,59,0,0,-1,'0',0,1),(89,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,88,0,0,-1,'0',0,1),(90,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,1,88,0,0,-1,'0',0,1),(91,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,2,88,0,0,-1,'0',0,1),(92,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,3,88,0,0,-1,'0',0,1),(93,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/blacklist.php',0,NULL,0,1,0,4,88,0,0,-1,'0',0,1),(94,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,5,88,0,0,-1,'0',0,1),(95,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,6,88,0,0,-1,'0',0,1),(96,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance.php',0,NULL,0,1,0,7,88,0,0,-1,'0',0,1),(97,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,4,6,59,0,0,-1,'0',0,1),(98,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,97,0,0,-1,'0',0,1),(99,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,97,0,0,-1,'0',0,1),(100,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/open.php',0,NULL,0,1,0,2,97,0,0,-1,'0',0,1),(101,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/authentication.php',0,NULL,0,1,0,3,97,0,0,-1,'0',0,1),(102,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,7,59,0,0,-1,'0',0,1),(103,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,1,0,102,0,0,-1,'0',0,1),(104,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method/test.php',0,NULL,0,1,0,0,103,0,0,-1,'0',0,1),(105,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,102,0,0,-1,'0',0,1),(106,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/view.php',0,NULL,0,1,4,8,59,0,0,-1,'0',0,1),(107,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/settings.php',0,NULL,0,1,0,0,106,0,0,-1,'0',0,1),(108,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/points.php',0,NULL,0,1,0,1,106,0,0,-1,'0',0,1),(109,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/bannedwords.php',0,NULL,0,1,0,2,106,0,0,-1,'0',0,1),(110,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/permissions.php',0,NULL,0,1,0,3,106,0,0,-1,'0',0,1),(111,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,3,9,59,0,0,-1,'0',0,1),(112,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,111,0,0,-1,'0',0,1),(113,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,111,0,0,-1,'0',0,1),(114,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/topics/view.php',0,NULL,0,1,1,2,111,0,0,-1,'0',0,1),(115,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/topics/add.php',0,NULL,0,1,0,0,114,0,0,-1,'0',0,1),(116,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,4,10,59,0,0,-1,'0',0,1),(117,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,116,0,0,-1,'0',0,1),(118,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,116,0,0,-1,'0',0,1),(119,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,116,0,0,-1,'0',0,1),(120,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,3,116,0,0,-1,'0',0,1),(121,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup/view.php',0,NULL,0,1,2,11,59,0,0,-1,'0',0,1),(122,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup/backup.php',0,NULL,0,1,0,0,121,0,0,-1,'0',0,1),(123,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup/update.php',0,NULL,0,1,0,1,121,0,0,-1,'0',0,1),(124,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,0,-1,'0',0,1),(125,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,12,2,0,0,-1,'0',0,1),(126,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!drafts/view.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(127,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(128,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,8,0,0,0,0,-1,'0',0,1),(129,0,0,1,0,NULL,NULL,NULL,1,129,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(130,0,0,1,0,NULL,NULL,NULL,1,130,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(131,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/view.php',0,NULL,0,1,3,0,0,0,0,-1,'0',0,1),(132,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/edit_profile.php',0,NULL,0,1,0,0,131,0,0,-1,'0',0,1),(133,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/avatar.php',0,NULL,0,1,0,1,131,0,0,-1,'0',0,1),(134,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages/view.php',0,NULL,0,1,1,2,131,0,0,-1,'0',0,1),(135,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages/inbox.php',0,NULL,0,1,0,0,134,0,0,-1,'0',0,1),(136,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/view.php',0,NULL,0,1,2,0,1,0,0,-1,'0',0,1),(137,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/profile.php',0,NULL,0,1,0,0,136,0,0,-1,'0',0,1),(138,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/directory.php',0,NULL,0,1,0,1,136,0,0,-1,'0',0,1),(139,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,0,-1,'0',0,1),(140,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,0,-1,'0',0,1),(141,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,0,-1,'0',0,1),(142,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,128,0,0,-1,'0',0,1),(143,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,128,0,0,-1,'0',0,1),(144,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,128,0,0,-1,'0',0,1),(145,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,128,0,0,-1,'0',0,1),(146,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,128,0,0,-1,'0',0,1),(147,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,128,0,0,-1,'0',0,1),(148,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,128,0,0,-1,'0',0,1),(149,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,7,128,0,0,-1,'0',0,1),(150,5,1,NULL,0,NULL,NULL,NULL,1,150,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(151,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,1,0,0,-1,'0',0,0),(152,10,1,NULL,0,NULL,NULL,NULL,1,152,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(153,10,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,6,3,1,0,0,-1,'0',0,0),(154,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,4,1,0,0,-1,'0',0,0),(155,9,1,NULL,0,NULL,NULL,NULL,1,155,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(156,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,5,1,0,0,-1,'0',0,0),(157,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,1,0,0,-1,'0',0,0),(158,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,7,1,0,0,-1,'0',0,0),(159,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,8,1,0,0,-1,'0',0,0),(160,8,1,NULL,0,NULL,NULL,NULL,1,160,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(161,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,153,0,0,-1,'0',0,0),(162,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,153,0,0,-1,'0',0,0),(163,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,153,0,0,-1,'0',0,0),(164,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,153,0,0,-1,'0',0,0),(165,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,153,0,0,-1,'0',0,0),(166,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,153,0,0,-1,'0',0,0),(167,6,1,NULL,0,NULL,NULL,NULL,1,167,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(168,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,156,0,0,-1,'0',0,0),(169,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,156,0,0,-1,'0',0,0),(170,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,156,0,0,-1,'0',0,0),(171,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,154,0,0,-1,'0',0,0),(172,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,1,154,0,0,-1,'0',0,0),(173,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,154,0,0,-1,'0',0,0),(174,7,1,NULL,0,NULL,NULL,NULL,1,174,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(175,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,172,0,0,-1,'0',0,0),(176,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,172,0,0,-1,'0',0,0),(177,5,1,NULL,0,NULL,NULL,NULL,1,177,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(178,5,1,NULL,0,NULL,NULL,NULL,1,178,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(179,5,1,NULL,0,NULL,NULL,NULL,1,179,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0);

UNLOCK TABLES;

/*Table structure for table `pagesearchindex` */

DROP TABLE IF EXISTS `pagesearchindex`;

CREATE TABLE `pagesearchindex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagesearchindex` */

LOCK TABLES `pagesearchindex` WRITE;

insert  into `pagesearchindex`(`cID`,`content`,`cName`,`cDescription`,`cPath`,`cDatePublic`,`cDateLastIndexed`,`cDateLastSitemapped`,`cRequiresReindex`) values (2,'','Dashboard','','/dashboard','2015-02-25 06:52:02','2015-02-25 06:52:35',NULL,0),(3,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2015-02-25 06:52:03','2015-02-25 06:52:35',NULL,0),(4,'','Full Sitemap','','/dashboard/sitemap/full','2015-02-25 06:52:03','2015-02-25 06:52:35',NULL,0),(5,'','Flat View','','/dashboard/sitemap/explore','2015-02-25 06:52:03','2015-02-25 06:52:35',NULL,0),(6,'','Page Search','','/dashboard/sitemap/search','2015-02-25 06:52:03','2015-02-25 06:52:35',NULL,0),(8,'','File Manager','','/dashboard/files/search','2015-02-25 06:52:04','2015-02-25 06:52:35',NULL,0),(9,'','Attributes','','/dashboard/files/attributes','2015-02-25 06:52:04','2015-02-25 06:52:35',NULL,0),(10,'','File Sets','','/dashboard/files/sets','2015-02-25 06:52:04','2015-02-25 06:52:36',NULL,0),(11,'','Add File Set','','/dashboard/files/add_set','2015-02-25 06:52:04','2015-02-25 06:52:36',NULL,0),(12,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2015-02-25 06:52:04','2015-02-25 06:52:36',NULL,0),(13,'','Search Users','','/dashboard/users/search','2015-02-25 06:52:04','2015-02-25 06:52:36',NULL,0),(14,'','User Groups','','/dashboard/users/groups','2015-02-25 06:52:05','2015-02-25 06:52:36',NULL,0),(15,'','Attributes','','/dashboard/users/attributes','2015-02-25 06:52:05','2015-02-25 06:52:36',NULL,0),(16,'','Add User','','/dashboard/users/add','2015-02-25 06:52:05','2015-02-25 06:52:37',NULL,0),(17,'','Add Group','','/dashboard/users/add_group','2015-02-25 06:52:05','2015-02-25 06:52:37',NULL,0),(19,'','Group Sets','','/dashboard/users/group_sets','2015-02-25 06:52:05','2015-02-25 06:52:37',NULL,0),(20,'','Community Points',NULL,'/dashboard/users/points','2015-02-25 06:52:06','2015-02-25 06:52:38',NULL,0),(22,'','Actions',NULL,'/dashboard/users/points/actions','2015-02-25 06:52:06','2015-02-25 06:52:38',NULL,0),(23,'','Reports','Get data from forms and logs.','/dashboard/reports','2015-02-25 06:52:06','2015-02-25 06:52:38',NULL,0),(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2015-02-25 06:52:06','2015-02-25 06:52:38',NULL,0),(25,'','Surveys','','/dashboard/reports/surveys','2015-02-25 06:52:07','2015-02-25 06:52:38',NULL,0),(26,'','Logs','','/dashboard/reports/logs','2015-02-25 06:52:07','2015-02-25 06:52:38',NULL,0),(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2015-02-25 06:52:07','2015-02-25 06:52:38',NULL,0),(29,'','Inspect','','/dashboard/pages/themes/inspect','2015-02-25 06:52:07','2015-02-25 06:52:39',NULL,0),(31,'','Organize Page Type Order','','/dashboard/pages/types/organize','2015-02-25 06:52:08','2015-02-25 06:52:39',NULL,0),(32,'','Add Page Type','','/dashboard/pages/types/add','2015-02-25 06:52:08','2015-02-25 06:52:39',NULL,0),(33,'','Compose Form','','/dashboard/pages/types/form','2015-02-25 06:52:08','2015-02-25 06:52:39',NULL,0),(34,'','Defaults and Output','','/dashboard/pages/types/output','2015-02-25 06:52:08','2015-02-25 06:52:39',NULL,0),(35,'','Page Type Attributes','','/dashboard/pages/types/attributes','2015-02-25 06:52:08','2015-02-25 06:52:39',NULL,0),(36,'','Page Type Permissions','','/dashboard/pages/types/permissions','2015-02-25 06:52:09','2015-02-25 06:52:39',NULL,0),(38,'','Add Page Template','Add page templates to your site.','/dashboard/pages/templates/add','2015-02-25 06:52:09','2015-02-25 06:52:39',NULL,0),(39,'','Attributes','','/dashboard/pages/attributes','2015-02-25 06:52:09','2015-02-25 06:52:40',NULL,0),(40,'','Single Pages','','/dashboard/pages/single','2015-02-25 06:52:09','2015-02-25 06:52:40',NULL,0),(41,'','RSS Feeds','','/dashboard/pages/feeds','2015-02-25 06:52:09','2015-02-25 06:52:40',NULL,0),(43,'','Messages','','/dashboard/conversations/messages','2015-02-25 06:52:10','2015-02-25 06:52:40',NULL,0),(44,'','Workflow','','/dashboard/workflow','2015-02-25 06:52:10','2015-02-25 06:52:40',NULL,0),(48,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2015-02-25 06:52:11','2015-02-25 06:52:40',NULL,0),(50,'','Stack List','','/dashboard/blocks/stacks/list','2015-02-25 06:52:11','2015-02-25 06:52:41',NULL,0),(51,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2015-02-25 06:52:11','2015-02-25 06:52:41',NULL,0),(52,'','Extend concrete5','','/dashboard/extend','2015-02-25 06:52:12','2015-02-25 06:52:41',NULL,0),(53,'','Dashboard','','/dashboard/news','2015-02-25 06:52:12','2015-02-25 06:52:41',NULL,0),(54,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2015-02-25 06:52:12','2015-02-25 06:52:41',NULL,0),(55,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2015-02-25 06:52:12','2015-02-25 06:52:41',NULL,0),(56,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2015-02-25 06:52:12','2015-02-25 06:52:42',NULL,0),(57,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2015-02-25 06:52:13','2015-02-25 06:52:42',NULL,0),(58,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/addons','2015-02-25 06:52:13','2015-02-25 06:52:42',NULL,0),(59,'','System & Settings','Secure and setup your site.','/dashboard/system','2015-02-25 06:52:13','2015-02-25 06:52:42',NULL,0),(61,'','Site Name','','/dashboard/system/basics/name','2015-02-25 06:52:13','2015-02-25 06:52:42',NULL,0),(62,'','Accessibility','','/dashboard/system/basics/accessibility','2015-02-25 06:52:14','2015-02-25 06:52:42',NULL,0),(63,'','Social Links','','/dashboard/system/basics/social','2015-02-25 06:52:14','2015-02-25 06:52:42',NULL,0),(64,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2015-02-25 06:52:14','2015-02-25 06:52:43',NULL,0),(65,'','Rich Text Editor','','/dashboard/system/basics/editor','2015-02-25 06:52:14','2015-02-25 06:52:43',NULL,0),(66,'','Languages','','/dashboard/system/basics/multilingual','2015-02-25 06:52:14','2015-02-25 06:52:43',NULL,0),(67,'','Time Zone','','/dashboard/system/basics/timezone','2015-02-25 06:52:15','2015-02-25 06:52:43',NULL,0),(68,'','Multilingual','Run your site in multiple languages.','/dashboard/system/multilingual','2015-02-25 06:52:15','2015-02-25 06:52:43',NULL,0),(73,'','Pretty URLs','','/dashboard/system/seo/urls','2015-02-25 06:52:16','2015-02-25 06:52:43',NULL,0),(74,'','Bulk SEO Updater','','/dashboard/system/seo/bulk','2015-02-25 06:52:16','2015-02-25 06:52:44',NULL,0),(75,'','Tracking Codes','','/dashboard/system/seo/codes','2015-02-25 06:52:16','2015-02-25 06:52:45',NULL,0),(76,'','Excluded URL Word List','','/dashboard/system/seo/excluded','2015-02-25 06:52:17','2015-02-25 06:52:45',NULL,0),(77,'','Search Index','','/dashboard/system/seo/searchindex','2015-02-25 06:52:17','2015-02-25 06:52:45',NULL,0),(79,'','File Manager Permissions','','/dashboard/system/files/permissions','2015-02-25 06:52:17','2015-02-25 06:52:45',NULL,0),(80,'','Allowed File Types','','/dashboard/system/files/filetypes','2015-02-25 06:52:18','2015-02-25 06:52:46',NULL,0),(81,'','Thumbnails','','/dashboard/system/files/thumbnails','2015-02-25 06:52:18','2015-02-25 06:52:46',NULL,0),(82,'','File Storage Locations','','/dashboard/system/files/storage','2015-02-25 06:52:18','2015-02-25 06:52:47',NULL,0),(84,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2015-02-25 06:52:19','2015-02-25 06:52:47',NULL,0),(85,'','Clear Cache','','/dashboard/system/optimization/clearcache','2015-02-25 06:52:19','2015-02-25 06:52:47',NULL,0),(86,'','Automated Jobs','','/dashboard/system/optimization/jobs','2015-02-25 06:52:19','2015-02-25 06:52:47',NULL,0),(87,'','Database Query Log','','/dashboard/system/optimization/query_log','2015-02-25 06:52:20','2015-02-25 06:52:47',NULL,0),(89,'','Site Access','','/dashboard/system/permissions/site','2015-02-25 06:52:20','2015-02-25 06:52:47',NULL,0),(90,'','Task Permissions','','/dashboard/system/permissions/tasks','2015-02-25 06:52:21','2015-02-25 06:52:47',NULL,0),(93,'','IP Blacklist','','/dashboard/system/permissions/blacklist','2015-02-25 06:52:21','2015-02-25 06:52:47',NULL,0),(94,'','Captcha Setup','','/dashboard/system/permissions/captcha','2015-02-25 06:52:22','2015-02-25 06:52:48',NULL,0),(95,'','Spam Control','','/dashboard/system/permissions/antispam','2015-02-25 06:52:23','2015-02-25 06:52:48',NULL,0),(96,'','Maintenance Mode','','/dashboard/system/permissions/maintenance','2015-02-25 06:52:23','2015-02-25 06:52:48',NULL,0),(98,'','Login Destination','','/dashboard/system/registration/postlogin','2015-02-25 06:52:24','2015-02-25 06:52:48',NULL,0),(99,'','Public Profiles','','/dashboard/system/registration/profiles','2015-02-25 06:52:24','2015-02-25 06:52:48',NULL,0),(100,'','Public Registration','','/dashboard/system/registration/open','2015-02-25 06:52:24','2015-02-25 06:52:48',NULL,0),(101,'','Authentication Types','','/dashboard/system/registration/authentication','2015-02-25 06:52:24','2015-02-25 06:52:48',NULL,0),(102,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2015-02-25 06:52:25','2015-02-25 06:52:49',NULL,0),(103,'','SMTP Method','','/dashboard/system/mail/method','2015-02-25 06:52:25','2015-02-25 06:52:49',NULL,0),(104,'','Test Mail Settings','','/dashboard/system/mail/method/test','2015-02-25 06:52:25','2015-02-25 06:52:49',NULL,0),(105,'','Email Importers','','/dashboard/system/mail/importers','2015-02-25 06:52:26','2015-02-25 06:52:49',NULL,0),(106,'','Conversations','Manage your conversations settings','/dashboard/system/conversations','2015-02-25 06:52:26','2015-02-25 06:52:49',NULL,0),(107,'','Settings','','/dashboard/system/conversations/settings','2015-02-25 06:52:26','2015-02-25 06:52:49',NULL,0),(108,'','Community Points','','/dashboard/system/conversations/points','2015-02-25 06:52:27','2015-02-25 06:52:49',NULL,0),(109,'','Banned Words','','/dashboard/system/conversations/bannedwords','2015-02-25 06:52:27','2015-02-25 06:52:49',NULL,0),(111,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2015-02-25 06:52:28','2015-02-25 06:52:50',NULL,0),(112,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2015-02-25 06:52:28','2015-02-25 06:52:50',NULL,0),(113,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2015-02-25 06:52:28','2015-02-25 06:52:50',NULL,0),(114,'','Topics','','/dashboard/system/attributes/topics','2015-02-25 06:52:29','2015-02-25 06:52:50',NULL,0),(116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(117,'','Environment Information','','/dashboard/system/environment/info','2015-02-25 06:52:30','2015-02-25 06:52:51',NULL,0),(118,'','Debug Settings','','/dashboard/system/environment/debug','2015-02-25 06:52:30','2015-02-25 06:52:51',NULL,0),(119,'','Logging Settings','','/dashboard/system/environment/logging','2015-02-25 06:52:31','2015-02-25 06:52:51',NULL,0),(120,'','Proxy Server','','/dashboard/system/environment/proxy','2015-02-25 06:52:31','2015-02-25 06:52:51',NULL,0),(121,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup','2015-02-25 06:52:31','2015-02-25 06:52:52',NULL,0),(123,'','Update concrete5','','/dashboard/system/backup/update','2015-02-25 06:52:32','2015-02-25 06:52:52',NULL,0),(124,'                                        ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2015-02-25 06:52:34','2015-02-25 06:52:53',NULL,0),(125,'','Customize Dashboard Home','','/dashboard/home','2015-02-25 06:52:34','2015-02-25 06:52:55',NULL,0),(126,'','Drafts','','/!drafts','2015-02-25 06:52:56','2015-02-25 06:53:01',NULL,0),(127,'','Trash','','/!trash','2015-02-25 06:52:57','2015-02-25 06:53:01',NULL,0),(128,'','Stacks','','/!stacks','2015-02-25 06:52:57','2015-02-25 06:53:01',NULL,0),(131,'','My Account','','/account','2015-02-25 06:52:58','2015-02-25 06:53:01',NULL,0),(1,'Stand Out on the Web                                      Share your business with an impressive, yet minimal presentation. Let your customers understand your web presence through elegance and clarity.  A Simple Image Slider                                      This image slider can have any content that you want in it.   Easy to Edit                                                     Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.  Pixel Perfect                                                     Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.  Media Rich                                                     Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.  Presenting your Business has never been so easy Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.   Latest Blog Post Now Open For Business    We specialize in making your concepts a reality.          Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.          Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.            Contact Us Today    Customizable footer area with accent class.  ','Home','',NULL,'2015-02-25 06:50:46','2015-02-25 07:01:54',NULL,0),(151,'Our Expertise Quality Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet. Design Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet. Development Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet. Security Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet. Awesome Features Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed.  Guide Books Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus.  Admin Accounts Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus.   Support Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed.  Additional Options Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna.   Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.  What Clients Are Saying About Us  Franz Maruna\nconcrete5\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. John Doe\nCompanyCo\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Andrew Embler\nconcrete5\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Jane Doe\nCompanyCo\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. ','Services','','/services','2015-02-25 06:53:47','2015-02-25 06:54:11',NULL,0),(153,'','Portfolio','','/portfolio','2015-02-25 06:53:47','2015-02-25 06:54:11',NULL,0),(161,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title','2014-08-06 15:30:00','2015-02-25 06:54:14',NULL,0),(162,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 2','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-2','2014-08-06 15:20:00','2015-02-25 06:54:17',NULL,0),(163,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 3','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-3','2014-08-06 15:10:00','2015-02-25 06:54:19',NULL,0),(164,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 4','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-4','2014-08-06 15:00:00','2015-02-25 06:54:21',NULL,0),(165,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 5','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-5','2014-08-06 14:30:00','2015-02-25 06:54:23',NULL,0),(166,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 6','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-6','2014-08-06 14:20:00','2015-02-25 06:54:26',NULL,0),(154,'John Smith\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. John Smith\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. John Smith\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.                                                      Get in Touch  Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet.    Contact Us  ','Team','','/team','2015-02-25 06:53:47','2015-02-25 06:54:31',NULL,0),(156,'','Blog','','/blog','2015-02-25 06:53:48','2015-02-25 06:54:32',NULL,0),(168,'Fusce volutpat sodales mauris quis dapibus. Maecenas convallis, libero eu ultrices interdum, leo mauris commodo diam, sed cursus sapien ligula nec leo. Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.   Heading 2 Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti. Heading 3 Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor. Heading 3 Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat, adipiscing nec lobortis quis, eleifend at sem. Curabitur fringilla viverra dolor, in rutrum ipsum rutrum sit amet. Vestibulum feugiat porttitor ipsum vel condimentum. Suspendisse at tempus libero. Sed eu tempor enim. Etiam convallis eleifend rutrum. Donec porta diam quis tellus feugiat dignissim. Cras posuere, massa eget laoreet laoreet, urna libero lobortis dolor, sed consequat elit urna eget massa. Donec aliquet pellentesque consectetur.  ','Hello World!','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum.','/blog/hello-world','2014-07-01 12:00:00','2015-02-25 06:54:35',NULL,0),(169,' Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit.   CMS To the Rescue!  Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.  Learn more at concrete5.org    ','Another Blog Post','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna.','/blog/another-blog-post','2014-07-04 15:00:00','2015-02-25 06:54:36',NULL,0),(170,' Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.  Heading 3  Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.    Look at my beautiful image. Don\'t you to look more?  Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.  ','A Beautiful Site Deserves a Beautiful Blog','Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat.','/blog/a-beautiful-blog','2014-08-01 16:30:00','2015-02-25 06:54:38',NULL,0),(157,'','Search','','/search','2015-02-25 06:53:48','2015-02-25 06:54:39',NULL,0),(158,'                                                     Headquarters 1234 SE Street View Suite 301 Portland, OR 98101 HOURS  M-F:  10 AM - 7 PM Sat: Noon - Midnight Sun: Closed                                                       Choosing Us Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.  We would love to hear from you! ','Contact','','/contact','2015-02-25 06:53:48','2015-02-25 06:54:42',NULL,0),(159,' This is my empty content block on my blank page.  ','Blank Page','','/blank-page','2015-02-25 06:53:48','2015-02-25 06:54:42',NULL,0),(171,'                                                     Fusce volutpat sodales mauris quis dapibus. Maecenas convallis, libero eu ultrices interdum.                                                       Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.   Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend.                                                       Heading 1Heading 2Heading 3Heading 4Heading 5Heading 6                                                       Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.                                                             Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.                                                       Get in Touch  Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet.    Contact Us  ','About','','/team/about','2015-02-25 06:53:51','2015-02-25 07:04:22',NULL,0),(172,'Work with Us   Welcome Home \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Great Workers \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Amazing Location \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Paid Time Off \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. No Meetings \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Free Drinks \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.                                                      Open Positions  ','Careers','','/team/careers','2015-02-25 06:53:51','2015-02-25 06:54:50',NULL,0),(175,'                                                       Back to Careers  Department Location Job Information                                                                                               Quisque accumsan leo sit amet neque pretium consectetur. Sed blandit nulla at justo volutpat rhoncus. Sed risus orci, luctus sit amet fringilla faucibus, congue nec dui. Phasellus mattis lobortis magna sed dapibus. Donec sagittis nunc sed accumsan eleifend. Ut porttitor sapien eu nisl volutpat, vitae interdum est mollis. Sed laoreet sit amet elit in eleifend. Sed a tincidunt velit, nec posuere urna. In eget metus non est varius viverra. Quisque accumsan odio sem, in consequat nunc lobortis ac.  Cras dignissim nulla ut euismod adipiscing. Mauris non eros sem. Cras at lacinia nulla. Maecenas nec magna arcu. Aenean iaculis, augue sed pretium semper, odio tellus volutpat risus, quis consectetur nibh mauris ut odio. Integer convallis, augue a accumsan condimentum, sem nisl congue lorem, consectetur lacinia neque tortor eu neque. Aenean convallis arcu vitae enim dignissim vestibulum. Phasellus tincidunt dolor id enim gravida ullamcorper. Nullam ut lorem auctor, congue quam non, auctor arcu. Morbi ac aliquam ipsum, at aliquet ligula.  Cras adipiscing tellus non nulla suscipit congue. Pellentesque id neque euismod, elementum augue vel, volutpat turpis. Pellentesque sit amet tortor non lorem hendrerit pellentesque ac in nisi. Sed aliquet tincidunt arcu, eu lacinia lorem fringilla id. Integer ut ornare orci. Donec scelerisque vulputate est a condimentum. Morbi tellus sapien, vehicula vel ipsum non, luctus ullamcorper mi. Phasellus felis tortor, egestas quis felis sit amet, malesuada auctor nibh. Sed mollis mi sit amet tristique scelerisque. Cras elementum mauris urna, ullamcorper consectetur orci vehicula ut.  ','Web Developer','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus.','/team/careers/web-developer','2015-02-25 06:53:52','2015-02-25 06:54:53',NULL,0),(176,'                                                       Back to Careers  Department Location Job Information                                                                                               Quisque accumsan leo sit amet neque pretium consectetur. Sed blandit nulla at justo volutpat rhoncus. Sed risus orci, luctus sit amet fringilla faucibus, congue nec dui. Phasellus mattis lobortis magna sed dapibus. Donec sagittis nunc sed accumsan eleifend. Ut porttitor sapien eu nisl volutpat, vitae interdum est mollis. Sed laoreet sit amet elit in eleifend. Sed a tincidunt velit, nec posuere urna. In eget metus non est varius viverra. Quisque accumsan odio sem, in consequat nunc lobortis ac.  Cras dignissim nulla ut euismod adipiscing. Mauris non eros sem. Cras at lacinia nulla. Maecenas nec magna arcu. Aenean iaculis, augue sed pretium semper, odio tellus volutpat risus, quis consectetur nibh mauris ut odio. Integer convallis, augue a accumsan condimentum, sem nisl congue lorem, consectetur lacinia neque tortor eu neque. Aenean convallis arcu vitae enim dignissim vestibulum. Phasellus tincidunt dolor id enim gravida ullamcorper. Nullam ut lorem auctor, congue quam non, auctor arcu. Morbi ac aliquam ipsum, at aliquet ligula.  Cras adipiscing tellus non nulla suscipit congue. Pellentesque id neque euismod, elementum augue vel, volutpat turpis. Pellentesque sit amet tortor non lorem hendrerit pellentesque ac in nisi. Sed aliquet tincidunt arcu, eu lacinia lorem fringilla id. Integer ut ornare orci. Donec scelerisque vulputate est a condimentum. Morbi tellus sapien, vehicula vel ipsum non, luctus ullamcorper mi. Phasellus felis tortor, egestas quis felis sit amet, malesuada auctor nibh. Sed mollis mi sit amet tristique scelerisque. Cras elementum mauris urna, ullamcorper consectetur orci vehicula ut.  ','Sales Associate','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus.','/team/careers/sales-associate','2015-02-25 06:53:52','2015-02-25 06:54:56',NULL,0),(173,'What are page versions? What are page versions? \n                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. How do I add more people as editors in my website? How do I add more people as editors in my website? \n                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.  ','Frequently Asked Questions','','/team/faq','2015-02-25 06:53:51','2015-02-25 06:54:57',NULL,0);

UNLOCK TABLES;

/*Table structure for table `pagestatistics` */

DROP TABLE IF EXISTS `pagestatistics`;

CREATE TABLE `pagestatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagestatistics` */

LOCK TABLES `pagestatistics` WRITE;

UNLOCK TABLES;

/*Table structure for table `pagetemplates` */

DROP TABLE IF EXISTS `pagetemplates`;

CREATE TABLE `pagetemplates` (
  `pTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateHandle` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pTemplateName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pTemplateID`),
  UNIQUE KEY `pTemplateHandle` (`pTemplateHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagetemplates` */

LOCK TABLES `pagetemplates` WRITE;

insert  into `pagetemplates`(`pTemplateID`,`pTemplateHandle`,`pTemplateIcon`,`pTemplateName`,`pTemplateIsInternal`,`pkgID`) values (1,'core_stack','','Stack',1,0),(2,'dashboard_primary_five','','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','','Dashboard Header + Four Column',1,0),(4,'dashboard_full','','Dashboard Full',1,0),(5,'blank','blank.png','Blank',0,0),(6,'full','full.png','Full',0,0),(7,'left_sidebar','left_sidebar.png','Left Sidebar',0,0),(8,'right_sidebar','right_sidebar.png','Right Sidebar',0,0);

UNLOCK TABLES;

/*Table structure for table `pagethemecustomstyles` */

DROP TABLE IF EXISTS `pagethemecustomstyles`;

CREATE TABLE `pagethemecustomstyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagethemecustomstyles` */

LOCK TABLES `pagethemecustomstyles` WRITE;

UNLOCK TABLES;

/*Table structure for table `pagethemes` */

DROP TABLE IF EXISTS `pagethemes`;

CREATE TABLE `pagethemes` (
  `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  UNIQUE KEY `ptHandle` (`pThemeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagethemes` */

LOCK TABLES `pagethemes` WRITE;

insert  into `pagethemes`(`pThemeID`,`pThemeHandle`,`pThemeName`,`pThemeDescription`,`pkgID`,`pThemeHasCustomClass`) values (1,'elemental','Elemental','Elegant, spacious theme with support for blogs, portfolios, layouts and more.',0,1);

UNLOCK TABLES;

/*Table structure for table `pagetypecomposercontroltypes` */

DROP TABLE IF EXISTS `pagetypecomposercontroltypes`;

CREATE TABLE `pagetypecomposercontroltypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptComposerControlTypeID`),
  UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagetypecomposercontroltypes` */

LOCK TABLES `pagetypecomposercontroltypes` WRITE;

insert  into `pagetypecomposercontroltypes`(`ptComposerControlTypeID`,`ptComposerControlTypeHandle`,`ptComposerControlTypeName`,`pkgID`) values (1,'core_page_property','Built-In Properties',0),(2,'collection_attribute','Custom Attributes',0),(3,'block','Block',0);

UNLOCK TABLES;

/*Table structure for table `pagetypecomposerformlayoutsetcontrols` */

DROP TABLE IF EXISTS `pagetypecomposerformlayoutsetcontrols`;

CREATE TABLE `pagetypecomposerformlayoutsetcontrols` (
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT '0',
  `ptComposerControlTypeID` int(10) unsigned DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagetypecomposerformlayoutsetcontrols` */

LOCK TABLES `pagetypecomposerformlayoutsetcontrols` WRITE;

insert  into `pagetypecomposerformlayoutsetcontrols`(`ptComposerFormLayoutSetControlID`,`ptComposerFormLayoutSetID`,`ptComposerControlTypeID`,`ptComposerControlObject`,`ptComposerFormLayoutSetControlDisplayOrder`,`ptComposerFormLayoutSetControlCustomLabel`,`ptComposerFormLayoutSetControlCustomTemplate`,`ptComposerFormLayoutSetControlDescription`,`ptComposerFormLayoutSetControlRequired`) values (1,1,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:43:\"/concrete/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Page Name',NULL,NULL,1),(2,1,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";s:11:\"Description\";s:27:\"\0*\0ptComposerControlIconSRC\";s:47:\"/concrete/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(3,1,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";s:8:\"URL Slug\";s:27:\"\0*\0ptComposerControlIconSRC\";s:43:\"/concrete/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(4,1,1,'O:86:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:13:\"page_template\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:13:\"page_template\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Template\";s:27:\"\0*\0ptComposerControlIconSRC\";s:45:\"/concrete/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(5,1,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:49:\"/concrete/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',4,NULL,NULL,NULL,0),(6,2,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:43:\"/concrete/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Entry Name',NULL,NULL,0),(7,2,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";s:8:\"URL Slug\";s:27:\"\0*\0ptComposerControlIconSRC\";s:43:\"/concrete/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(8,2,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";s:11:\"Description\";s:27:\"\0*\0ptComposerControlIconSRC\";s:47:\"/concrete/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,'Short Description',NULL,NULL,0),(9,2,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:49:\"/concrete/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(10,2,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"22\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"22\";s:24:\"\0*\0ptComposerControlName\";s:17:\"Blog Entry Topics\";s:27:\"\0*\0ptComposerControlIconSRC\";s:45:\"/concrete/concrete/attributes/topics/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',4,'Topics',NULL,NULL,0),(11,3,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"21\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"21\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Thumbnail\";s:27:\"\0*\0ptComposerControlIconSRC\";s:49:\"/concrete/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(12,3,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":11:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:42:\"/concrete/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(13,4,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:43:\"/concrete/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Job Name',NULL,NULL,1),(14,4,1,'O:82:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DateTimeCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:9:\"date_time\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:9:\"date_time\";s:24:\"\0*\0ptComposerControlName\";s:16:\"Public Date/Time\";s:27:\"\0*\0ptComposerControlIconSRC\";s:48:\"/concrete/concrete/attributes/date_time/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,'Posting Date',NULL,NULL,0),(15,5,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"19\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"19\";s:24:\"\0*\0ptComposerControlName\";s:8:\"Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:47:\"/concrete/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(16,5,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"18\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"18\";s:24:\"\0*\0ptComposerControlName\";s:10:\"Department\";s:27:\"\0*\0ptComposerControlIconSRC\";s:45:\"/concrete/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(17,5,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";s:11:\"Description\";s:27:\"\0*\0ptComposerControlIconSRC\";s:47:\"/concrete/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,'Brief Description',NULL,NULL,0),(18,5,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":11:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:42:\"/concrete/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,'Job Details',NULL,NULL,0),(19,6,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:43:\"/concrete/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,'Give your portfolio project a name.',0),(20,6,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";s:8:\"URL Slug\";s:27:\"\0*\0ptComposerControlIconSRC\";s:43:\"/concrete/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(21,6,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:49:\"/concrete/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(22,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"23\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"23\";s:24:\"\0*\0ptComposerControlName\";s:14:\"Project Topics\";s:27:\"\0*\0ptComposerControlIconSRC\";s:45:\"/concrete/concrete/attributes/topics/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(23,7,1,'O:82:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DateTimeCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:9:\"date_time\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:9:\"date_time\";s:24:\"\0*\0ptComposerControlName\";s:16:\"Public Date/Time\";s:27:\"\0*\0ptComposerControlIconSRC\";s:48:\"/concrete/concrete/attributes/date_time/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,'Date Completed',NULL,NULL,0),(24,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"24\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"24\";s:24:\"\0*\0ptComposerControlName\";s:6:\"Client\";s:27:\"\0*\0ptComposerControlIconSRC\";s:43:\"/concrete/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(25,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"25\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"25\";s:24:\"\0*\0ptComposerControlName\";s:4:\"Task\";s:27:\"\0*\0ptComposerControlIconSRC\";s:45:\"/concrete/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(26,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"26\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"26\";s:24:\"\0*\0ptComposerControlName\";s:6:\"Skills\";s:27:\"\0*\0ptComposerControlIconSRC\";s:45:\"/concrete/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',4,NULL,NULL,NULL,0),(27,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"21\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"21\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Thumbnail\";s:27:\"\0*\0ptComposerControlIconSRC\";s:49:\"/concrete/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',5,NULL,NULL,NULL,0),(28,8,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":11:{s:7:\"\0*\0btID\";i:33;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:30:\"\0*\0ptComposerControlIdentifier\";i:33;s:24:\"\0*\0ptComposerControlName\";s:12:\"Image Slider\";s:27:\"\0*\0ptComposerControlIconSRC\";s:47:\"/concrete/concrete/blocks/image_slider/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(29,9,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":11:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:42:\"/concrete/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(30,10,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:43:\"/concrete/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(31,10,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:49:\"/concrete/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(32,11,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:43:\"/concrete/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Name',NULL,NULL,0),(33,11,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:49:\"/concrete/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0);

UNLOCK TABLES;

/*Table structure for table `pagetypecomposerformlayoutsets` */

DROP TABLE IF EXISTS `pagetypecomposerformlayoutsets`;

CREATE TABLE `pagetypecomposerformlayoutsets` (
  `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagetypecomposerformlayoutsets` */

LOCK TABLES `pagetypecomposerformlayoutsets` WRITE;

insert  into `pagetypecomposerformlayoutsets`(`ptComposerFormLayoutSetID`,`ptID`,`ptComposerFormLayoutSetName`,`ptComposerFormLayoutSetDescription`,`ptComposerFormLayoutSetDisplayOrder`) values (1,5,'Basics','',0),(2,6,'Post Details','',0),(3,6,'Content','',1),(4,7,'Basics','',0),(5,7,'About This Job','',1),(6,8,'Page','',0),(7,8,'Project Data','',1),(8,8,'Image Slider','',2),(9,8,'Body','',3),(10,9,'Details','',0),(11,10,'','',0);

UNLOCK TABLES;

/*Table structure for table `pagetypecomposeroutputblocks` */

DROP TABLE IF EXISTS `pagetypecomposeroutputblocks`;

CREATE TABLE `pagetypecomposeroutputblocks` (
  `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputBlockID`),
  KEY `cID` (`cID`),
  KEY `bID` (`bID`,`cID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagetypecomposeroutputblocks` */

LOCK TABLES `pagetypecomposeroutputblocks` WRITE;

UNLOCK TABLES;

/*Table structure for table `pagetypecomposeroutputcontrols` */

DROP TABLE IF EXISTS `pagetypecomposeroutputcontrols`;

CREATE TABLE `pagetypecomposeroutputcontrols` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputControlID`),
  KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  KEY `ptID` (`ptID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagetypecomposeroutputcontrols` */

LOCK TABLES `pagetypecomposeroutputcontrols` WRITE;

insert  into `pagetypecomposeroutputcontrols`(`ptComposerOutputControlID`,`pTemplateID`,`ptID`,`ptComposerFormLayoutSetControlID`) values (1,8,6,12),(2,7,7,18),(3,7,8,28),(4,7,8,29);

UNLOCK TABLES;

/*Table structure for table `pagetypepagetemplatedefaultpages` */

DROP TABLE IF EXISTS `pagetypepagetemplatedefaultpages`;

CREATE TABLE `pagetypepagetemplatedefaultpages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pTemplateID`,`ptID`),
  KEY `ptID` (`ptID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagetypepagetemplatedefaultpages` */

LOCK TABLES `pagetypepagetemplatedefaultpages` WRITE;

insert  into `pagetypepagetemplatedefaultpages`(`pTemplateID`,`ptID`,`cID`) values (6,5,150),(6,10,152),(6,9,155),(7,8,160),(8,6,167),(7,7,174),(5,5,177),(7,5,178),(8,5,179);

UNLOCK TABLES;

/*Table structure for table `pagetypepagetemplates` */

DROP TABLE IF EXISTS `pagetypepagetemplates`;

CREATE TABLE `pagetypepagetemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagetypepagetemplates` */

LOCK TABLES `pagetypepagetemplates` WRITE;

insert  into `pagetypepagetemplates`(`ptID`,`pTemplateID`) values (9,6),(10,6),(7,7),(8,7),(6,8);

UNLOCK TABLES;

/*Table structure for table `pagetypepermissionassignments` */

DROP TABLE IF EXISTS `pagetypepermissionassignments`;

CREATE TABLE `pagetypepermissionassignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagetypepermissionassignments` */

LOCK TABLES `pagetypepermissionassignments` WRITE;

insert  into `pagetypepermissionassignments`(`ptID`,`pkID`,`paID`) values (1,59,9),(2,59,9),(3,59,9),(4,59,9),(5,59,9),(6,59,9),(7,59,9),(8,59,9),(9,59,9),(10,59,9),(1,60,9),(2,60,9),(3,60,9),(4,60,9),(5,60,9),(6,60,9),(7,60,9),(8,60,9),(9,60,9),(10,60,9),(1,61,9),(2,61,9),(3,61,9),(4,61,9),(5,61,9),(6,61,9),(7,61,9),(8,61,9),(9,61,9),(10,61,9),(1,62,9),(2,62,9),(3,62,9),(4,62,9),(5,62,9),(6,62,9),(7,62,9),(8,62,9),(9,62,9),(10,62,9),(1,63,25),(2,63,26),(3,63,27),(4,63,28),(5,63,31),(6,63,32),(7,63,33),(8,63,34),(9,63,35),(10,63,36);

UNLOCK TABLES;

/*Table structure for table `pagetypepublishtargettypes` */

DROP TABLE IF EXISTS `pagetypepublishtargettypes`;

CREATE TABLE `pagetypepublishtargettypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptPublishTargetTypeID`),
  KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagetypepublishtargettypes` */

LOCK TABLES `pagetypepublishtargettypes` WRITE;

insert  into `pagetypepublishtargettypes`(`ptPublishTargetTypeID`,`ptPublishTargetTypeHandle`,`ptPublishTargetTypeName`,`pkgID`) values (1,'parent_page','Always publish below a certain page',0),(2,'page_type','Choose from pages of a certain type',0),(3,'all','Choose from all pages when publishing',0);

UNLOCK TABLES;

/*Table structure for table `pagetypes` */

DROP TABLE IF EXISTS `pagetypes`;

CREATE TABLE `pagetypes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`),
  KEY `pkgID` (`pkgID`,`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pagetypes` */

LOCK TABLES `pagetypes` WRITE;

insert  into `pagetypes`(`ptID`,`ptName`,`ptHandle`,`ptPublishTargetTypeID`,`ptDefaultPageTemplateID`,`ptAllowedPageTemplates`,`ptIsInternal`,`ptIsFrequentlyAdded`,`ptDisplayOrder`,`ptLaunchInComposer`,`pkgID`,`ptPublishTargetObject`) values (1,'Stack','core_stack',NULL,0,'A',1,0,0,0,0,NULL),(2,'Dashboard Primary + Five','dashboard_primary_five',NULL,0,'A',1,0,1,0,0,NULL),(3,'Dashboard Header + Four Column','dashboard_header_four_col',NULL,0,'A',1,0,2,0,0,NULL),(4,'Dashboard Full','dashboard_full',NULL,0,'A',1,0,3,0,0,NULL),(5,'Empty Page','page',3,6,'A',0,1,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":4:{s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(6,'Blog Entry','blog_entry',2,8,'C',0,1,1,1,0,'O:73:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\PageTypeConfiguration\":5:{s:7:\"\0*\0ptID\";s:1:\"9\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"2\";s:25:\"ptPublishTargetTypeHandle\";s:9:\"page_type\";s:9:\"pkgHandle\";b:0;}'),(7,'Job Posting','job_posting',1,7,'C',0,1,2,1,0,'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:3:\"172\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}'),(8,'Portfolio Project','portfolio_project',2,7,'C',0,1,3,1,0,'O:73:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\PageTypeConfiguration\":5:{s:7:\"\0*\0ptID\";s:2:\"10\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"2\";s:25:\"ptPublishTargetTypeHandle\";s:9:\"page_type\";s:9:\"pkgHandle\";b:0;}'),(9,'Blog','blog',3,6,'C',0,0,4,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":4:{s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(10,'Portfolio','portfolio',3,6,'C',0,0,5,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":4:{s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}');

UNLOCK TABLES;

/*Table structure for table `pageworkflowprogress` */

DROP TABLE IF EXISTS `pageworkflowprogress`;

CREATE TABLE `pageworkflowprogress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`),
  KEY `wpID` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pageworkflowprogress` */

LOCK TABLES `pageworkflowprogress` WRITE;

UNLOCK TABLES;

/*Table structure for table `permissionaccess` */

DROP TABLE IF EXISTS `permissionaccess`;

CREATE TABLE `permissionaccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissionaccess` */

LOCK TABLES `permissionaccess` WRITE;

insert  into `permissionaccess`(`paID`,`paIsInUse`) values (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1);

UNLOCK TABLES;

/*Table structure for table `permissionaccessentities` */

DROP TABLE IF EXISTS `permissionaccessentities`;

CREATE TABLE `permissionaccessentities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissionaccessentities` */

LOCK TABLES `permissionaccessentities` WRITE;

insert  into `permissionaccessentities`(`peID`,`petID`) values (1,1),(5,1),(6,1),(2,5),(3,6),(4,7);

UNLOCK TABLES;

/*Table structure for table `permissionaccessentitygroups` */

DROP TABLE IF EXISTS `permissionaccessentitygroups`;

CREATE TABLE `permissionaccessentitygroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `peID` (`peID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissionaccessentitygroups` */

LOCK TABLES `permissionaccessentitygroups` WRITE;

insert  into `permissionaccessentitygroups`(`pegID`,`peID`,`gID`) values (1,1,3),(2,5,1),(3,6,2);

UNLOCK TABLES;

/*Table structure for table `permissionaccessentitygroupsets` */

DROP TABLE IF EXISTS `permissionaccessentitygroupsets`;

CREATE TABLE `permissionaccessentitygroupsets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissionaccessentitygroupsets` */

LOCK TABLES `permissionaccessentitygroupsets` WRITE;

UNLOCK TABLES;

/*Table structure for table `permissionaccessentitytypecategories` */

DROP TABLE IF EXISTS `permissionaccessentitytypecategories`;

CREATE TABLE `permissionaccessentitytypecategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`),
  KEY `pkCategoryID` (`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissionaccessentitytypecategories` */

LOCK TABLES `permissionaccessentitytypecategories` WRITE;

insert  into `permissionaccessentitytypecategories`(`petID`,`pkCategoryID`) values (1,1),(2,1),(3,1),(4,1),(5,1),(1,4),(2,4),(3,4),(4,4),(1,5),(2,5),(3,5),(4,5),(6,5),(1,6),(2,6),(3,6),(4,6),(6,6),(1,7),(2,7),(3,7),(4,7),(1,8),(2,8),(3,8),(4,8),(1,9),(2,9),(3,9),(4,9),(1,10),(2,10),(3,10),(4,10),(1,11),(2,11),(3,11),(4,11),(1,12),(2,12),(3,12),(4,12),(1,13),(2,13),(3,13),(4,13),(1,14),(2,14),(3,14),(4,14),(5,14),(1,15),(2,15),(3,15),(4,15),(1,16),(2,16),(3,16),(4,16),(1,17),(2,17),(3,17),(4,17),(1,18),(2,18),(3,18),(4,18),(1,19),(2,19),(3,19),(4,19),(7,19),(1,20),(2,20),(3,20),(4,20),(7,20);

UNLOCK TABLES;

/*Table structure for table `permissionaccessentitytypes` */

DROP TABLE IF EXISTS `permissionaccessentitytypes`;

CREATE TABLE `permissionaccessentitytypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`),
  UNIQUE KEY `petHandle` (`petHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissionaccessentitytypes` */

LOCK TABLES `permissionaccessentitytypes` WRITE;

insert  into `permissionaccessentitytypes`(`petID`,`petHandle`,`petName`,`pkgID`) values (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0),(7,'conversation_message_author','Message Author',0);

UNLOCK TABLES;

/*Table structure for table `permissionaccessentityusers` */

DROP TABLE IF EXISTS `permissionaccessentityusers`;

CREATE TABLE `permissionaccessentityusers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissionaccessentityusers` */

LOCK TABLES `permissionaccessentityusers` WRITE;

UNLOCK TABLES;

/*Table structure for table `permissionaccesslist` */

DROP TABLE IF EXISTS `permissionaccesslist`;

CREATE TABLE `permissionaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`),
  KEY `pdID` (`pdID`),
  KEY `permissionAccessDuration` (`paID`,`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissionaccesslist` */

LOCK TABLES `permissionaccesslist` WRITE;

insert  into `permissionaccesslist`(`paID`,`peID`,`pdID`,`accessType`) values (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,1,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,1,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,2,0,10),(26,2,0,10),(27,2,0,10),(28,2,0,10),(29,5,0,10),(30,5,0,10),(31,2,0,10),(32,2,0,10),(33,2,0,10),(34,2,0,10),(35,2,0,10),(36,2,0,10),(37,5,0,10),(38,1,0,10),(38,5,0,10),(39,1,0,10),(40,1,0,10),(41,1,0,10),(42,1,0,10),(43,1,0,10),(44,1,0,10),(45,1,0,10),(46,1,0,10),(47,5,0,10),(48,1,0,10),(49,1,0,10),(50,1,0,10),(51,1,0,10),(52,1,0,10),(53,1,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,1,0,10),(58,1,0,10),(59,1,0,10),(60,1,0,10),(61,1,0,10),(62,1,0,10),(63,1,0,10),(64,5,0,10),(65,5,0,10),(66,1,0,10),(67,1,0,10),(68,1,0,10),(69,1,0,10),(70,1,0,10),(71,1,0,10),(72,5,0,10),(73,5,0,10),(74,1,0,10),(74,4,0,10),(75,1,0,10),(75,4,0,10),(76,1,0,10),(76,6,0,10),(77,1,0,10),(78,1,0,10),(79,1,0,10);

UNLOCK TABLES;

/*Table structure for table `permissionaccessworkflows` */

DROP TABLE IF EXISTS `permissionaccessworkflows`;

CREATE TABLE `permissionaccessworkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`),
  KEY `wfID` (`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissionaccessworkflows` */

LOCK TABLES `permissionaccessworkflows` WRITE;

UNLOCK TABLES;

/*Table structure for table `permissionassignments` */

DROP TABLE IF EXISTS `permissionassignments`;

CREATE TABLE `permissionassignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissionassignments` */

LOCK TABLES `permissionassignments` WRITE;

insert  into `permissionassignments`(`paID`,`pkID`) values (1,19),(2,20),(3,74),(4,75),(5,76),(6,78),(7,79),(8,80),(9,86),(10,87),(11,89),(12,90),(13,91),(14,92),(15,93),(16,94),(17,95),(18,96),(19,97),(20,98),(21,99),(22,100),(23,101),(24,102);

UNLOCK TABLES;

/*Table structure for table `permissiondurationobjects` */

DROP TABLE IF EXISTS `permissiondurationobjects`;

CREATE TABLE `permissiondurationobjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissiondurationobjects` */

LOCK TABLES `permissiondurationobjects` WRITE;

UNLOCK TABLES;

/*Table structure for table `permissionkeycategories` */

DROP TABLE IF EXISTS `permissionkeycategories`;

CREATE TABLE `permissionkeycategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`),
  UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissionkeycategories` */

LOCK TABLES `permissionkeycategories` WRITE;

insert  into `permissionkeycategories`(`pkCategoryID`,`pkCategoryHandle`,`pkgID`) values (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'user',NULL),(5,'file_set',NULL),(6,'file',NULL),(7,'area',NULL),(8,'block_type',NULL),(9,'block',NULL),(10,'admin',NULL),(11,'sitemap',NULL),(12,'marketplace_newsflow',NULL),(13,'basic_workflow',NULL),(14,'page_type',NULL),(15,'gathering',NULL),(16,'group_tree_node',NULL),(17,'topic_category_tree_node',NULL),(18,'topic_tree_node',NULL),(19,'conversation',NULL),(20,'conversation_message',NULL);

UNLOCK TABLES;

/*Table structure for table `permissionkeys` */

DROP TABLE IF EXISTS `permissionkeys`;

CREATE TABLE `permissionkeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`),
  KEY `pkCategoryID` (`pkCategoryID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissionkeys` */

LOCK TABLES `permissionkeys` WRITE;

insert  into `permissionkeys`(`pkID`,`pkHandle`,`pkName`,`pkCanTriggerWorkflow`,`pkHasCustomClass`,`pkDescription`,`pkCategoryID`,`pkgID`) values (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'view_page_in_sitemap','View Page in Sitemap',0,0,'Controls whether a user can see a page in the sitemap or intelligent search.',1,0),(4,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(5,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(6,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(7,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(8,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(9,'edit_page_template','Change Page Template',0,0,'Ability to change just the page template for this page.',1,0),(10,'edit_page_page_type','Edit Page Type',0,0,'Change the type of an existing page.',1,0),(11,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(12,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(13,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(14,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(15,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(16,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(17,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(18,'edit_page_multilingual_settings','Edit Multilingual Settings',0,0,'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.',1,0),(19,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',8,0),(20,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',8,0),(21,'view_area','View Area',0,0,'Can view the area and its contents.',7,0),(22,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',7,0),(23,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',7,0),(24,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',7,0),(25,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',7,0),(26,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',7,0),(27,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',7,0),(28,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',7,0),(29,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',7,0),(30,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',9,0),(31,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',9,0),(32,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',9,0),(33,'edit_block_cache_settings','Edit Cache Settings',0,0,'Controls whether users can change the block cache settings for this block instance.',9,0),(34,'edit_block_name','Edit Name',0,0,'Controls whether users can change the block\'s name (rarely used.)',9,0),(35,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',9,0),(36,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',9,0),(37,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',9,0),(38,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',9,0),(39,'view_file_set_file','View Files',0,0,'Can view and download files in the site.',5,0),(40,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',5,0),(41,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',5,0),(42,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace files in set.',5,0),(43,'copy_file_set_files','Copy File',0,0,'Can copy files in file set.',5,0),(44,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',5,0),(45,'delete_file_set','Delete File Set',0,0,'Can delete file set.',5,0),(46,'delete_file_set_files','Delete File',0,0,'Can delete files in set.',5,0),(47,'add_file','Add File',0,1,'Can add files to set.',5,0),(48,'view_file','View Files',0,0,'Can view and download files.',6,0),(49,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',6,0),(50,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(51,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',6,0),(52,'copy_file','Copy File',0,0,'Can copy file.',6,0),(53,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',6,0),(54,'delete_file','Delete File',0,0,'Can delete file.',6,0),(55,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',13,0),(56,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',13,0),(57,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',13,0),(58,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',13,0),(59,'add_page_type','Add Pages of This Type',0,0,'',14,0),(60,'edit_page_type','Edit Page Type',0,0,'',14,0),(61,'delete_page_type','Delete Page Type',0,0,'',14,0),(62,'edit_page_type_permissions','Edit Page Type Permissions',0,0,'',14,0),(63,'edit_page_type_drafts','Edit Page Type Drafts',0,0,'',14,0),(64,'view_topic_tree_node','View Topic Tree Node',0,0,'',18,0),(65,'view_topic_category_tree_node','View Topic Category Tree Node',0,0,'',17,0),(66,'add_conversation_message','Add Message to Conversation',0,0,'',19,0),(67,'add_conversation_message_attachments','Add Message Attachments',0,0,'',19,0),(68,'edit_conversation_permissions','Edit Conversation Permissions',0,0,'',19,0),(69,'delete_conversation_message','Delete Message',0,0,'',19,0),(70,'edit_conversation_message','Edit Message',0,0,'',19,0),(71,'rate_conversation_message','Rate Message',0,0,'',19,0),(72,'flag_conversation_message','Flag Message',0,0,'',19,0),(73,'approve_conversation_message','Approve Message',0,0,'',19,0),(74,'edit_user_properties','Edit User Details',0,1,NULL,4,0),(75,'view_user_attributes','View User Attributes',0,1,NULL,4,0),(76,'activate_user','Activate/Deactivate User',0,0,NULL,4,0),(77,'sudo','Sign in as User',0,0,NULL,4,0),(78,'upgrade','Upgrade concrete5',0,0,NULL,10,0),(79,'access_group_search','Access Group Search',0,0,NULL,4,0),(80,'delete_user','Delete User',0,0,NULL,4,0),(81,'search_users_in_group','Search User Group',0,0,NULL,16,0),(82,'edit_group','Edit Group',0,0,NULL,16,0),(83,'assign_group','Assign Group',0,0,NULL,16,0),(84,'add_sub_group','Add Child Group',0,0,NULL,16,0),(85,'edit_group_permissions','Edit Group Permissions',0,0,NULL,16,0),(86,'access_page_type_permissions','Access Page Type Permissions',0,0,NULL,10,0),(87,'backup','Perform Backups',0,0,NULL,10,0),(88,'access_task_permissions','Access Task Permissions',0,0,NULL,10,0),(89,'access_sitemap','Access Sitemap',0,0,NULL,11,0),(90,'access_page_defaults','Access Page Type Defaults',0,0,NULL,10,0),(91,'customize_themes','Customize Themes',0,0,NULL,10,0),(92,'manage_layout_presets','Manage Layout Presets',0,0,NULL,10,0),(93,'empty_trash','Empty Trash',0,0,NULL,10,0),(94,'add_topic_tree','Add Topic Tree',0,0,NULL,10,0),(95,'remove_topic_tree','Remove Topic Tree',0,0,NULL,10,0),(96,'uninstall_packages','Uninstall Packages',0,0,NULL,12,0),(97,'install_packages','Install Packages',0,0,NULL,12,0),(98,'view_newsflow','View Newsflow',0,0,NULL,12,0),(99,'access_user_search_export','Export Site Users',0,0,'Controls whether a user can export site users or not',4,0),(100,'access_user_search','Access User Search',0,0,'Controls whether a user can view the search user interface.',4,0),(101,'edit_gatherings','Edit Gatherings',0,0,'Can edit the footprint and items in all gatherings.',10,0),(102,'edit_gathering_items','Edit Gathering Items',0,0,'',15,0);

UNLOCK TABLES;

/*Table structure for table `pilecontents` */

DROP TABLE IF EXISTS `pilecontents`;

CREATE TABLE `pilecontents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`,`displayOrder`),
  KEY `itemID` (`itemID`),
  KEY `itemType` (`itemType`,`itemID`,`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pilecontents` */

LOCK TABLES `pilecontents` WRITE;

UNLOCK TABLES;

/*Table structure for table `piles` */

DROP TABLE IF EXISTS `piles`;

CREATE TABLE `piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`),
  KEY `uID` (`uID`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `piles` */

LOCK TABLES `piles` WRITE;

insert  into `piles`(`pID`,`uID`,`isDefault`,`timestamp`,`name`,`state`) values (1,1,1,'2015-02-25 11:28:33',NULL,'READY');

UNLOCK TABLES;

/*Table structure for table `queuemessages` */

DROP TABLE IF EXISTS `queuemessages`;

CREATE TABLE `queuemessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` varchar(8192) COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`),
  CONSTRAINT `queuemessages_ibfk_1` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `queuemessages` */

LOCK TABLES `queuemessages` WRITE;

UNLOCK TABLES;

/*Table structure for table `queuepageduplicationrelations` */

DROP TABLE IF EXISTS `queuepageduplicationrelations`;

CREATE TABLE `queuepageduplicationrelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`),
  KEY `originalCID` (`originalCID`,`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `queuepageduplicationrelations` */

LOCK TABLES `queuepageduplicationrelations` WRITE;

UNLOCK TABLES;

/*Table structure for table `queues` */

DROP TABLE IF EXISTS `queues`;

CREATE TABLE `queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`),
  KEY `queue_name` (`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `queues` */

LOCK TABLES `queues` WRITE;

UNLOCK TABLES;

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sessions` */

LOCK TABLES `sessions` WRITE;

UNLOCK TABLES;

/*Table structure for table `signuprequests` */

DROP TABLE IF EXISTS `signuprequests`;

CREATE TABLE `signuprequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ipFrom` (`ipFrom`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `signuprequests` */

LOCK TABLES `signuprequests` WRITE;

UNLOCK TABLES;

/*Table structure for table `sociallinks` */

DROP TABLE IF EXISTS `sociallinks`;

CREATE TABLE `sociallinks` (
  `slID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`slID`),
  UNIQUE KEY `ssHandle` (`ssHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sociallinks` */

LOCK TABLES `sociallinks` WRITE;

insert  into `sociallinks`(`slID`,`ssHandle`,`url`) values (1,'facebook','http://facebook.com/concrete5'),(2,'github','http://github.com/concrete5'),(3,'twitter','http://twitter.com/concrete5');

UNLOCK TABLES;

/*Table structure for table `stacks` */

DROP TABLE IF EXISTS `stacks`;

CREATE TABLE `stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `stacks` */

LOCK TABLES `stacks` WRITE;

insert  into `stacks`(`stID`,`stName`,`stType`,`cID`) values (1,'Footer Contact',20,142),(2,'Footer Legal',20,143),(3,'Footer Navigation',20,144),(4,'Footer Site Title',20,145),(5,'Footer Social',20,146),(6,'Header Navigation',20,147),(7,'Header Search',20,148),(8,'Header Site Title',20,149);

UNLOCK TABLES;

/*Table structure for table `stylecustomizercustomcssrecords` */

DROP TABLE IF EXISTS `stylecustomizercustomcssrecords`;

CREATE TABLE `stylecustomizercustomcssrecords` (
  `sccRecordID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `stylecustomizercustomcssrecords` */

LOCK TABLES `stylecustomizercustomcssrecords` WRITE;

UNLOCK TABLES;

/*Table structure for table `stylecustomizerinlinestylepresets` */

DROP TABLE IF EXISTS `stylecustomizerinlinestylepresets`;

CREATE TABLE `stylecustomizerinlinestylepresets` (
  `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pssPresetID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `stylecustomizerinlinestylepresets` */

LOCK TABLES `stylecustomizerinlinestylepresets` WRITE;

UNLOCK TABLES;

/*Table structure for table `stylecustomizerinlinestylesets` */

DROP TABLE IF EXISTS `stylecustomizerinlinestylesets`;

CREATE TABLE `stylecustomizerinlinestylesets` (
  `issID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) DEFAULT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`issID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `stylecustomizerinlinestylesets` */

LOCK TABLES `stylecustomizerinlinestylesets` WRITE;

insert  into `stylecustomizerinlinestylesets`(`issID`,`backgroundColor`,`backgroundImageFileID`,`backgroundRepeat`,`borderWidth`,`borderColor`,`borderStyle`,`borderRadius`,`baseFontSize`,`alignment`,`textColor`,`linkColor`,`paddingTop`,`paddingBottom`,`paddingLeft`,`paddingRight`,`marginTop`,`marginBottom`,`marginLeft`,`marginRight`,`rotate`,`boxShadowHorizontal`,`boxShadowVertical`,`boxShadowBlur`,`boxShadowSpread`,`boxShadowColor`,`customClass`) values (1,'',0,'','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-wrapped'),(2,'',0,'','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-wrapped'),(3,'',0,'','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-wrapped'),(4,'',0,'','','','','','','','','','','','','','','','','','','','','','','','blog-entry-list'),(5,'',0,'','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-wrapped'),(6,'',0,'','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-padded'),(7,'',0,'no-repeat','','','none','','','','','','','','','','','','','','','','','','','',''),(8,'',0,'','','','','','','','','','','','','','','','','','','','','','','','feature-home-page'),(9,'',0,'','','','','','','','','','','','','','','','','','','','','','','','feature-home-page'),(10,'',0,'','','','','','','','','','','','','','','','','','','','','','','','feature-home-page'),(11,'',0,'','','','','','','','','','','','','','','80px','','','','','','','','',''),(12,'',0,'','','','','','','','','','','','','','','','','','','','','','','','recent-blog-entry'),(13,'',0,'','','','','','','','','','','','','','','','','','','','','','','','recent-blog-entry'),(14,'',0,'','','','','','','','','','','','','','','','','','','','','','','','area-content-accent'),(15,'',0,'','','','','','','','','','','','','','','','','','','','','','','','area-content-accent'),(16,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio'),(17,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio'),(18,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio'),(19,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio'),(20,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio'),(21,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio'),(22,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio'),(23,'',0,'','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio'),(24,'',0,'','','','','','','','','','','','','','','','','','','','','','','','image-right-tilt'),(25,'',0,'','','','','','','','','','','','','','','','','','','','','','','','image-circle'),(26,'',0,'','','','','','','','','','','','','','','','','','','','','','','','image-right-tilt'),(27,'',0,'','','','','','','','','','','','','','','','','','','','','','','','page-list-with-buttons');

UNLOCK TABLES;

/*Table structure for table `stylecustomizervaluelists` */

DROP TABLE IF EXISTS `stylecustomizervaluelists`;

CREATE TABLE `stylecustomizervaluelists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `stylecustomizervaluelists` */

LOCK TABLES `stylecustomizervaluelists` WRITE;

UNLOCK TABLES;

/*Table structure for table `stylecustomizervalues` */

DROP TABLE IF EXISTS `stylecustomizervalues`;

CREATE TABLE `stylecustomizervalues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `stylecustomizervalues` */

LOCK TABLES `stylecustomizervalues` WRITE;

UNLOCK TABLES;

/*Table structure for table `systemantispamlibraries` */

DROP TABLE IF EXISTS `systemantispamlibraries`;

CREATE TABLE `systemantispamlibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `systemantispamlibraries` */

LOCK TABLES `systemantispamlibraries` WRITE;

UNLOCK TABLES;

/*Table structure for table `systemcaptchalibraries` */

DROP TABLE IF EXISTS `systemcaptchalibraries`;

CREATE TABLE `systemcaptchalibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `systemcaptchalibraries` */

LOCK TABLES `systemcaptchalibraries` WRITE;

insert  into `systemcaptchalibraries`(`sclHandle`,`sclName`,`sclIsActive`,`pkgID`) values ('securimage','SecurImage (Default)',1,0);

UNLOCK TABLES;

/*Table structure for table `systemcontenteditorsnippets` */

DROP TABLE IF EXISTS `systemcontenteditorsnippets`;

CREATE TABLE `systemcontenteditorsnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `systemcontenteditorsnippets` */

LOCK TABLES `systemcontenteditorsnippets` WRITE;

insert  into `systemcontenteditorsnippets`(`scsHandle`,`scsName`,`scsIsActive`,`pkgID`) values ('page_name','Page Name',1,0),('user_name','User Name',1,0);

UNLOCK TABLES;

/*Table structure for table `systemdatabasemigrations` */

DROP TABLE IF EXISTS `systemdatabasemigrations`;

CREATE TABLE `systemdatabasemigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `systemdatabasemigrations` */

LOCK TABLES `systemdatabasemigrations` WRITE;

insert  into `systemdatabasemigrations`(`version`) values ('20150109000000');

UNLOCK TABLES;

/*Table structure for table `systemdatabasequerylog` */

DROP TABLE IF EXISTS `systemdatabasequerylog`;

CREATE TABLE `systemdatabasequerylog` (
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `systemdatabasequerylog` */

LOCK TABLES `systemdatabasequerylog` WRITE;

UNLOCK TABLES;

/*Table structure for table `systemimageeditorcomponents` */

DROP TABLE IF EXISTS `systemimageeditorcomponents`;

CREATE TABLE `systemimageeditorcomponents` (
  `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `systemimageeditorcomponents` */

LOCK TABLES `systemimageeditorcomponents` WRITE;

UNLOCK TABLES;

/*Table structure for table `systemimageeditorcontrolsets` */

DROP TABLE IF EXISTS `systemimageeditorcontrolsets`;

CREATE TABLE `systemimageeditorcontrolsets` (
  `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `systemimageeditorcontrolsets` */

LOCK TABLES `systemimageeditorcontrolsets` WRITE;

insert  into `systemimageeditorcontrolsets`(`scsID`,`scsHandle`,`scsName`,`scsDisplayOrder`,`pkgID`) values (1,'position','Position',0,0),(2,'filter','Filter',0,0);

UNLOCK TABLES;

/*Table structure for table `systemimageeditorfilters` */

DROP TABLE IF EXISTS `systemimageeditorfilters`;

CREATE TABLE `systemimageeditorfilters` (
  `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `systemimageeditorfilters` */

LOCK TABLES `systemimageeditorfilters` WRITE;

insert  into `systemimageeditorfilters`(`scsID`,`scsHandle`,`scsName`,`scsDisplayOrder`,`pkgID`) values (1,'none','None',0,0),(2,'grayscale','Grayscale',0,0),(3,'sepia','Sepia',0,0),(4,'gaussian_blur','Blur',0,0),(5,'vignette','Vignette',0,0);

UNLOCK TABLES;

/*Table structure for table `systemimageeditorshapes` */

DROP TABLE IF EXISTS `systemimageeditorshapes`;

CREATE TABLE `systemimageeditorshapes` (
  `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `systemimageeditorshapes` */

LOCK TABLES `systemimageeditorshapes` WRITE;

UNLOCK TABLES;

/*Table structure for table `topictrees` */

DROP TABLE IF EXISTS `topictrees`;

CREATE TABLE `topictrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `topictrees` */

LOCK TABLES `topictrees` WRITE;

insert  into `topictrees`(`treeID`,`topicTreeName`) values (2,'Blog Entries'),(3,'Projects');

UNLOCK TABLES;

/*Table structure for table `treecategorynodes` */

DROP TABLE IF EXISTS `treecategorynodes`;

CREATE TABLE `treecategorynodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `treecategorynodes` */

LOCK TABLES `treecategorynodes` WRITE;

insert  into `treecategorynodes`(`treeNodeID`,`treeNodeCategoryName`) values (5,''),(6,'Reviews'),(14,'');

UNLOCK TABLES;

/*Table structure for table `treegroupnodes` */

DROP TABLE IF EXISTS `treegroupnodes`;

CREATE TABLE `treegroupnodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `treegroupnodes` */

LOCK TABLES `treegroupnodes` WRITE;

insert  into `treegroupnodes`(`treeNodeID`,`gID`) values (2,1),(3,2),(4,3);

UNLOCK TABLES;

/*Table structure for table `treenodepermissionassignments` */

DROP TABLE IF EXISTS `treenodepermissionassignments`;

CREATE TABLE `treenodepermissionassignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `treenodepermissionassignments` */

LOCK TABLES `treenodepermissionassignments` WRITE;

insert  into `treenodepermissionassignments`(`treeNodeID`,`pkID`,`paID`) values (5,65,29),(14,65,30),(1,81,67),(1,82,68),(1,83,69),(1,84,70),(1,85,71);

UNLOCK TABLES;

/*Table structure for table `treenodes` */

DROP TABLE IF EXISTS `treenodes`;

CREATE TABLE `treenodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeID` int(10) unsigned DEFAULT '0',
  `treeID` int(10) unsigned DEFAULT '0',
  `treeNodeParentID` int(10) unsigned DEFAULT '0',
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT '0',
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `treeNodeParentID` (`treeNodeParentID`),
  KEY `treeNodeTypeID` (`treeNodeTypeID`),
  KEY `treeID` (`treeID`),
  KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `treenodes` */

LOCK TABLES `treenodes` WRITE;

insert  into `treenodes`(`treeNodeID`,`treeNodeTypeID`,`treeID`,`treeNodeParentID`,`treeNodeDisplayOrder`,`treeNodeOverridePermissions`,`inheritPermissionsFromTreeNodeID`) values (1,1,1,0,0,1,1),(2,1,1,1,0,0,1),(3,1,1,1,1,0,1),(4,1,1,1,2,0,1),(5,2,2,0,0,1,5),(6,2,2,5,0,0,5),(7,3,2,6,0,0,5),(8,3,2,6,1,0,5),(9,3,2,6,2,0,5),(10,3,2,6,3,0,5),(11,3,2,5,1,0,5),(12,3,2,5,2,0,5),(13,3,2,5,3,0,5),(14,2,3,0,0,1,14),(15,3,3,14,0,0,14),(16,3,3,14,1,0,14),(17,3,3,14,2,0,14),(18,3,3,14,3,0,14);

UNLOCK TABLES;

/*Table structure for table `treenodetypes` */

DROP TABLE IF EXISTS `treenodetypes`;

CREATE TABLE `treenodetypes` (
  `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeTypeID`),
  UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `treenodetypes` */

LOCK TABLES `treenodetypes` WRITE;

insert  into `treenodetypes`(`treeNodeTypeID`,`treeNodeTypeHandle`,`pkgID`) values (1,'group',0),(2,'topic_category',0),(3,'topic',0);

UNLOCK TABLES;

/*Table structure for table `trees` */

DROP TABLE IF EXISTS `trees`;

CREATE TABLE `trees` (
  `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeID` int(10) unsigned DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeID`),
  KEY `treeTypeID` (`treeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `trees` */

LOCK TABLES `trees` WRITE;

insert  into `trees`(`treeID`,`treeTypeID`,`treeDateAdded`,`rootTreeNodeID`) values (1,1,'2015-02-25 06:50:40',1),(2,2,'2015-02-25 06:53:38',5),(3,2,'2015-02-25 06:53:38',14);

UNLOCK TABLES;

/*Table structure for table `treetopicnodes` */

DROP TABLE IF EXISTS `treetopicnodes`;

CREATE TABLE `treetopicnodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `treetopicnodes` */

LOCK TABLES `treetopicnodes` WRITE;

insert  into `treetopicnodes`(`treeNodeID`,`treeNodeTopicName`) values (7,'Gadgets'),(8,'Movies'),(9,'Books'),(10,'Music'),(11,'Projects'),(12,'Sports'),(13,'Humor'),(15,'Crafts'),(16,'Homework'),(17,'Supplies'),(18,'Activities');

UNLOCK TABLES;

/*Table structure for table `treetypes` */

DROP TABLE IF EXISTS `treetypes`;

CREATE TABLE `treetypes` (
  `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeTypeID`),
  UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `treetypes` */

LOCK TABLES `treetypes` WRITE;

insert  into `treetypes`(`treeTypeID`,`treeTypeHandle`,`pkgID`) values (1,'group',0),(2,'topic',0);

UNLOCK TABLES;

/*Table structure for table `userattributekeys` */

DROP TABLE IF EXISTS `userattributekeys`;

CREATE TABLE `userattributekeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `userattributekeys` */

LOCK TABLES `userattributekeys` WRITE;

insert  into `userattributekeys`(`akID`,`uakProfileDisplay`,`uakMemberListDisplay`,`uakProfileEdit`,`uakProfileEditRequired`,`uakRegisterEdit`,`uakRegisterEditRequired`,`displayOrder`,`uakIsActive`) values (12,0,0,1,0,1,0,1,1),(13,0,0,1,0,1,0,2,1),(16,0,0,0,0,0,0,3,1);

UNLOCK TABLES;

/*Table structure for table `userattributevalues` */

DROP TABLE IF EXISTS `userattributevalues`;

CREATE TABLE `userattributevalues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `userattributevalues` */

LOCK TABLES `userattributevalues` WRITE;

UNLOCK TABLES;

/*Table structure for table `userbannedips` */

DROP TABLE IF EXISTS `userbannedips`;

CREATE TABLE `userbannedips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `ipTo` tinyblob,
  `banCode` tinyint(1) NOT NULL DEFAULT '1',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `userbannedips` */

LOCK TABLES `userbannedips` WRITE;

UNLOCK TABLES;

/*Table structure for table `usergroups` */

DROP TABLE IF EXISTS `usergroups`;

CREATE TABLE `usergroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `usergroups` */

LOCK TABLES `usergroups` WRITE;

UNLOCK TABLES;

/*Table structure for table `userpermissioneditpropertyaccesslist` */

DROP TABLE IF EXISTS `userpermissioneditpropertyaccesslist`;

CREATE TABLE `userpermissioneditpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `userpermissioneditpropertyaccesslist` */

LOCK TABLES `userpermissioneditpropertyaccesslist` WRITE;

UNLOCK TABLES;

/*Table structure for table `userpermissioneditpropertyattributeaccesslistcustom` */

DROP TABLE IF EXISTS `userpermissioneditpropertyattributeaccesslistcustom`;

CREATE TABLE `userpermissioneditpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `userpermissioneditpropertyattributeaccesslistcustom` */

LOCK TABLES `userpermissioneditpropertyattributeaccesslistcustom` WRITE;

UNLOCK TABLES;

/*Table structure for table `userpermissionviewattributeaccesslist` */

DROP TABLE IF EXISTS `userpermissionviewattributeaccesslist`;

CREATE TABLE `userpermissionviewattributeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `userpermissionviewattributeaccesslist` */

LOCK TABLES `userpermissionviewattributeaccesslist` WRITE;

UNLOCK TABLES;

/*Table structure for table `userpermissionviewattributeaccesslistcustom` */

DROP TABLE IF EXISTS `userpermissionviewattributeaccesslistcustom`;

CREATE TABLE `userpermissionviewattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `userpermissionviewattributeaccesslistcustom` */

LOCK TABLES `userpermissionviewattributeaccesslistcustom` WRITE;

UNLOCK TABLES;

/*Table structure for table `userpointactions` */

DROP TABLE IF EXISTS `userpointactions`;

CREATE TABLE `userpointactions` (
  `upaID` int(11) NOT NULL AUTO_INCREMENT,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`upaID`),
  UNIQUE KEY `upaHandle` (`upaHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `gBBadgeID` (`gBadgeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `userpointactions` */

LOCK TABLES `userpointactions` WRITE;

insert  into `userpointactions`(`upaID`,`upaHandle`,`upaName`,`upaDefaultPoints`,`pkgID`,`upaHasCustomClass`,`upaIsActive`,`gBadgeID`) values (1,'won_badge','Won a Badge',5,0,0,1,0);

UNLOCK TABLES;

/*Table structure for table `userpointhistory` */

DROP TABLE IF EXISTS `userpointhistory`;

CREATE TABLE `userpointhistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`),
  KEY `upuID` (`upuID`),
  KEY `upaID` (`upaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `userpointhistory` */

LOCK TABLES `userpointhistory` WRITE;

UNLOCK TABLES;

/*Table structure for table `userprivatemessages` */

DROP TABLE IF EXISTS `userprivatemessages`;

CREATE TABLE `userprivatemessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`),
  KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `userprivatemessages` */

LOCK TABLES `userprivatemessages` WRITE;

UNLOCK TABLES;

/*Table structure for table `userprivatemessagesto` */

DROP TABLE IF EXISTS `userprivatemessagesto`;

CREATE TABLE `userprivatemessagesto` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `userprivatemessagesto` */

LOCK TABLES `userprivatemessagesto` WRITE;

UNLOCK TABLES;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uLastPasswordChange` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` tinyblob,
  `uPreviousLogin` int(10) unsigned DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`),
  KEY `uEmail` (`uEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

LOCK TABLES `users` WRITE;

insert  into `users`(`uID`,`uName`,`uEmail`,`uPassword`,`uIsActive`,`uIsValidated`,`uIsFullRecord`,`uDateAdded`,`uLastPasswordChange`,`uHasAvatar`,`uLastOnline`,`uLastLogin`,`uLastIP`,`uPreviousLogin`,`uNumLogins`,`uLastAuthTypeID`,`uTimezone`,`uDefaultLanguage`) values (1,'admin','yuvraj.jhala@azilen.com','$2a$12$Y2BQG1lwxz4sC/YCZaRreOcM7zcy1ePm14rq6JoTAlXToA4WFkVou','1',-1,1,'2015-02-25 06:50:40','2015-02-25 06:50:40',0,1424844371,1424843440,'7f000001',0,1,0,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `usersearchindexattributes` */

DROP TABLE IF EXISTS `usersearchindexattributes`;

CREATE TABLE `usersearchindexattributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `usersearchindexattributes` */

LOCK TABLES `usersearchindexattributes` WRITE;

UNLOCK TABLES;

/*Table structure for table `uservalidationhashes` */

DROP TABLE IF EXISTS `uservalidationhashes`;

CREATE TABLE `uservalidationhashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`),
  KEY `uID` (`uID`,`type`),
  KEY `uHash` (`uHash`,`type`),
  KEY `uDateGenerated` (`uDateGenerated`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `uservalidationhashes` */

LOCK TABLES `uservalidationhashes` WRITE;

UNLOCK TABLES;

/*Table structure for table `workflowprogress` */

DROP TABLE IF EXISTS `workflowprogress`;

CREATE TABLE `workflowprogress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wpCategoryID` (`wpCategoryID`),
  KEY `wfID` (`wfID`),
  KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `workflowprogress` */

LOCK TABLES `workflowprogress` WRITE;

UNLOCK TABLES;

/*Table structure for table `workflowprogresscategories` */

DROP TABLE IF EXISTS `workflowprogresscategories`;

CREATE TABLE `workflowprogresscategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`),
  UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `workflowprogresscategories` */

LOCK TABLES `workflowprogresscategories` WRITE;

insert  into `workflowprogresscategories`(`wpCategoryID`,`wpCategoryHandle`,`pkgID`) values (1,'page',NULL),(2,'file',NULL),(3,'user',NULL);

UNLOCK TABLES;

/*Table structure for table `workflowprogresshistory` */

DROP TABLE IF EXISTS `workflowprogresshistory`;

CREATE TABLE `workflowprogresshistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wphID`),
  KEY `wpID` (`wpID`,`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `workflowprogresshistory` */

LOCK TABLES `workflowprogresshistory` WRITE;

insert  into `workflowprogresshistory`(`wphID`,`wpID`,`timestamp`,`object`) values (1,1,'2015-02-25 11:31:52','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"1\";}'),(2,2,'2015-02-25 11:34:19','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"171\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"2\";}');

UNLOCK TABLES;

/*Table structure for table `workflowrequestobjects` */

DROP TABLE IF EXISTS `workflowrequestobjects`;

CREATE TABLE `workflowrequestobjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `workflowrequestobjects` */

LOCK TABLES `workflowrequestobjects` WRITE;

UNLOCK TABLES;

/*Table structure for table `workflows` */

DROP TABLE IF EXISTS `workflows`;

CREATE TABLE `workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`),
  KEY `wftID` (`wftID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `workflows` */

LOCK TABLES `workflows` WRITE;

UNLOCK TABLES;

/*Table structure for table `workflowtypes` */

DROP TABLE IF EXISTS `workflowtypes`;

CREATE TABLE `workflowtypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`),
  UNIQUE KEY `wftHandle` (`wftHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `workflowtypes` */

LOCK TABLES `workflowtypes` WRITE;

insert  into `workflowtypes`(`wftID`,`wftHandle`,`wftName`,`pkgID`) values (1,'basic','Basic Workflow',0);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
