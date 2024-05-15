-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jun 14, 2013 at 09:17 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `test1`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_banner`
-- 

CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(30) NOT NULL default 'banner',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_banner`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_bannerclient`
-- 

CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_bannerclient`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_bannertrack`
-- 

CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_bannertrack`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_categories`
-- 

CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `jos_categories`
-- 

INSERT INTO `jos_categories` VALUES (1, 0, 'Tin Tức', '', 'tin-tc', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (2, 0, 'Hướng Dẫn Mua hàng', '', 'hng-dn-mua-hang', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (3, 0, 'Khuyến Mãi', '', 'khuyn-mai', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` VALUES (4, 0, 'Liên Hệ', '', 'lien-h', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');
INSERT INTO `jos_categories` VALUES (5, 0, 'Thông Báo', '', 'thong-bao', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, '');
INSERT INTO `jos_categories` VALUES (6, 0, 'Chiến Thành', '', 'chin-thanh', '', 'com_contact_details', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (7, 0, 'Bảo Hành', '', 'bo-hanh', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_components`
-- 

CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

-- 
-- Dumping data for table `jos_components`
-- 

INSERT INTO `jos_components` VALUES (1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1);
INSERT INTO `jos_components` VALUES (2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1);
INSERT INTO `jos_components` VALUES (5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` VALUES (8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1);
INSERT INTO `jos_components` VALUES (9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` VALUES (10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1);
INSERT INTO `jos_components` VALUES (13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1);
INSERT INTO `jos_components` VALUES (16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html', 1);
INSERT INTO `jos_components` VALUES (20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1);
INSERT INTO `jos_components` VALUES (21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'administrator=vi-VN\nsite=vi-VN\n\n', 1);
INSERT INTO `jos_components` VALUES (24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1);
INSERT INTO `jos_components` VALUES (25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1);
INSERT INTO `jos_components` VALUES (32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (34, 'VirtueMart', 'option=com_virtuemart', 0, 0, 'option=com_virtuemart', 'VirtueMart', 'com_virtuemart', 0, '../components/com_virtuemart/shop_image/ps_image/menu_icon.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (35, 'virtuemart_version', '', 0, 9999, '', '', '', 0, '', 0, 'RELEASE=1.1.4\r\nDEV_STATUS=stable', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_contact_details`
-- 

CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_contact_details`
-- 

INSERT INTO `jos_contact_details` VALUES (1, 'Phạm Quang Chiến', 'phm-quang-chin', 'Web bán hàng', '08 Thanh Bình Ninh Bình', '', '', 'Việt Nam', '', '0916810148', '', '', '', NULL, 'quangchien91nb@gmail.com', 0, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\nshow_position=1\nshow_email=0\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 62, 6, 0, '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content`
-- 

CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `jos_content`
-- 

INSERT INTO `jos_content` VALUES (1, 'Giới Thiệu Đồng Hồ Thành An', 'gii-thiu-ng-h-thanh-an', '', '<p>Chào mừng bạn đến với Đồng Hồ Thành An</p>', '', 1, 0, 0, 0, '2013-06-05 07:07:39', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-06-05 07:07:39', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 7, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (2, 'Bảo Hành', 'bo-hanh', '', '<p style="text-align: justify;"> </p>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #b22222; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 24px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">Thời gian bảo hành của riêng mỗi hãng:</strong></span></span><br /><br />CASIO: Bảo hành chính hãng máy 1 n</span>ăm, pin 1,5 năm<br /><br />CITIZEN: Bảo hành chính hãng toàn cầu máy 1 năm, pin 1 năm</span></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #b22222; padding: 0px; margin: 0px; border: 0px initial initial;">SEIKO: Bảo hành chính hãng toàn cầu máy 1 năm, pin 1 năm<br /></span></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #b22222; padding: 0px; margin: 0px; border: 0px initial initial;">TITAN: Bảo hành chính hãng toàn cầu máy 2 năm, pin 1 năm</span></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="color: #b22222;"><br /></span></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="background-color: transparent; font-size: 24px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">Những nguyên tắc khi đi mua hàng tại</strong></span></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="background-color: transparent; font-size: 24px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><br /></strong></span></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="background-color: transparent; font-size: 24px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">Đồng Hồ Thành An :</strong></span></div>\r\n<p><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Các bạn vui lòng </span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">không tự ý mở tủ</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> , cần xem mẫu nào các bạn cứ yêu cầu nhân viên bán hàng sẽ lấy ra cho các bạn xem.</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Các bạn vui lòng </span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">không tự ý chỉnh đồng hồ</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> khi chưa quyết định mua , nếu cần hỏi chức năng nào xin các bạn cứ yêu cầu nhân viên bán hàng sẽ được hướng dẫn tận tình chu đáo.</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Các bạn vui lòng </span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">không hút thuốc trong cửa hàng</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">.</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Giá niêm yết tại cửa hàng là giá bán và SHOPDONGHO </span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">không bớt</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">.</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Đối với các bạn tay nhỏ , khi các bạn mua đồng hồ dây da thì phải </span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">chọn thật kĩ trước khi yêu cầu đục thêm lỗ</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> vì khi mình đã đục lỗ dây da thì bạn kô được đổi ý nữa.</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Đối với đồnghồ dây inox , các bạn phải </span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">lấy lại mắc dây thừa sau khi shopdongho cắt dây</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> xong để sau này mập ốm còn bỏ vào. </span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Nếu là </span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">đồng hồ cặp thì đồng hồ nữ bằng giá đồng hồ nam</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> . Các bạn đừng hiểu lầm đồng hồ nữ nhỏ hơn là rẻ hơn , đúng ra đồng hồ nữ mắc hơn vì nhỏ hơn khó sản xuất hơn .</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">-SHOPDONGHO có thể <strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">kô bán đồng hồ tự động ( automatic ) cho những ai chưa hiểu về đồng hồ tự động hoặc chưa từng xài qua đồng hồ tự động.</strong></span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> (đồng hồ tự động theo tiêu chuẩn quốc tế cho phép sai số 1 ngày 20 giây , theo tiêu chuẩn C.O.S.C dành cho đồng hồ tự động siêu cao cấp của Thụy Sĩ là cho phép sai số 1 ngày 6 giây)</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /></p>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 24px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">Quy định bảo hành :</strong></span></span><br /><br />\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">-Thời gian bảo hành : <br /><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">.</strong>Từ 9h sáng - 6h tối : lấy ngay đối với các trường hợp không mất thời gian như thay pin , thay dây , gắn kim , đóng dây , ... . Hẹn lại với các trường hợp như bể kiếng , vẽ lại mặt số , đánh bóng , ...</div>\r\n</div>\r\n<p><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; margin: 0px; border: 0px initial initial;">.</strong><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">Từ 6h tối - 8h30 tối : hẹn lại đối với tất cả các trường hợp vì khi này thợ bảo hành đã về</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Khi đi bảo hành vui lòng </span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">mang theo phiếu bảo hành</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> . Nếu không còn phiếu và đồng hồ đã hết hạn bảo hành, chúng tôi cũng sẽ cố gắng sửa chữa cho các bạn nhưng nếu không được do hỏng hóc nặng quá xin đừng khó chịu</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Thời hạn bảo hành được tính kể từ ngày mua , được ghi trên phiếu bảo hành</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 18px; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: x-small; padding: 0px; margin: 0px;">-</span></span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 18px; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: x-small; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; background-color: transparent; padding: 0px; margin: 0px;">Chỉ bảo hành thay thế mới cho những linh kiện, phụ tùng bị hỏng, <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;">không thay thế bằng một chiếc đồng hồ khác</span></span></span></span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> (trong </span><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;">3 ngày đầu</span></strong><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> trục trặc gì do phía SHOPDONGHO sẽ đổi ngay cái mới cho khách)</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Bảo hành miễn phí cho các hư hỏng về máy móc do lỗi của nhà sản xuất , pin , nước (chỉ bảo hành nước đối với những đồng hồ SHOPDONG cho phép khách xài nước, còn những đồng hồ không cho phép khách xài nước mà khách vẫn cố ý xài bị vô nước, SHOPDONGHO sẽ cố gắng bảo hành trong khả năng có thể cao nhất nhưng nếu không được xin quý khách vui lòng không đòi hỏi)</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 18px; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: x-small; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; background-color: transparent; padding: 0px; margin: 0px;">-Không bảo hành cho phần bên ngoài như: vỏ, kính, dây bị hỏng hóc do sử dụng không đúng, thiếu chú ý, tai nạn, lão hoá tự nhiên . Cụ thể :</span></span></span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">---Không bảo hành đối với các trường hợp đồng hồ bị rơi , va đập , v.v.. do lỗi của người sử dụng (tuy nhiên SHOPDONGHO sẽ cố gắng sửa giúp quý khách trong khả năng cao nhất có thể chứ không phải là thấy là từ chối ngay)</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">---Quy định bảo hành về dây , vỏ inox : SHOPDONGHO chỉ bán đồng hồ bằng inox , nên chỉ bảo hành dây , vỏ là chất liệu inox suốt đời máy . Không bảo hành dây vỏ với tình trạng đứt , xướt , va đập , móp méo , ... Tuy nhiên dây inox bị xướt thì có thể đánh bóng thoải mái với phí từ 5 ngàn tới 25 ngàn . Nếu các bạn sợ dây , vỏ inox bị xướt thì có thể mua đồng hồ dây , vỏ đá chống trầy . </span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">---Quy định bảo hành về dây , vỏ đá : SHOPDONGHO kô bảo hành với trường hợp dây , vỏ đá bị rớt , va đập làm vỡ . Khi bị bể mắc dây hoặc khoá , SHOPDONGHO sẽ cố gắng kiếm giúp khách nhưng nếu kiếm không ra xin quý khách vui lòng không đòi hỏi ( đã xảy ra 1 trường hợp khách đòi phải tìm cho ra cái khoá bằng đá dù lỗi do khách té xe làm bể , sợ luôn ) </span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">---Không bảo hành kiếng đồng hồ : khi bán nhân viên SHOPDONGHO sẽ tư vấn rõ là kiếng sarphie chống trầy hay kiếng thường cho quý khách cân nhắc , chúng tôi có thể thử bằng cách cà thử bằng sắt thép . Tuy nhiên SHOPDONGHO kô bảo hành trầy , vỡ cho kiếng sarphie vì chỉ cần lấy vật gì cứng hơn sarphie rồi cà vào kiếng sarphie sẽ làm kiếng sarphie trầy ngay . Còn nếu các bạn muốn kô bao giờ trầy thì có thể đặt các cửa hàng Kim Cương làm kiếng Kim Cương </span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 18px; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: x-small; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: blue; background-color: transparent; padding: 0px; margin: 0px;">-Không bảo hành cho những hậu quả gián tiếp của việc sử dụng không đúng cách của người sử dụng</span></span></span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Những đồng hồ đã bị sửa chữa ở nơi khác SHOPDONGHO sẽ kô còn trách nhiệm bảo hành (tuy nhiên SHOPDONGHO sẽ cố gắng sửa lại giúp quý khách)</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Đối với các đồng hồ có chức năng ngày thì tuyệt đối </span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">không chỉnh ngày vào khoảng thời gian từ 8h đêm tới 1h sáng</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> . Đối với các đồng hồ có chức năng thứ và ngày thì </span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">không chỉnh ngày , thứ trong khoảng thời gian từ 8h đêm tới 5h sáng</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> . Đó là quy định chung đối với cả đồng hồ Thuỵ Sĩ . Những </span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">hỏng hóc gãy bánh xe lịch do quý khách tự ý chỉnh trong giờ cấm</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> , SHOPDONGHO sẽ sửa giúp với mức phí thấp nhất , nếu kô sửa được xin vui lòng không đòi hỏi (tuy nhiên rất ít trường hợp nào không sửa được)</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /></p>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 24px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">Sử dụng và bảo quản</strong> <strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">:</strong></span></span><br /><br />\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">-Không nên để va chạm mạnh xảy ra, sử dụng thô bạo, và tiếp xúc với chất ăn mòn, nhiệt độ cao hoặc từ trường mạnh.<br /><br />-Đồng hồ dễ bị nhiễm bẩn vì tiếp xúc với mồ hôi, bụi bặm và các chất khác. Làm sạch đồng hồ theo định kỳ bằng cách sử dụng một miếng vải mềm hơi ẩm. Điều này sẽ gia tăng tuổi thọ của đồng hồ. Không sử dụng bất kì dung môi, chất làm sạch, chất tẩy công nghiệp, chất dính, sơn hoặc các chất xịt mỹ phẩm.<br /><br />-Không đeo đồng hồ cùng các vòng đeo tay (dễ tạo vết xước/ làm hỏng mặt đồng hồ).<br /><br />-Không kéo nút chỉnh giờ khi đồng hồ bị ướt.<br /><br />-Nếu nước hoặc hơi nước ngưng tụ xuất hiện bên trong đồng hồ, cần mang đồng hồ đến shopdongho để lau chùi càng nhanh càng tốt để giảm thiểu hỏng hóc bên trong.<br /><br />- Khi đồng hồ bắt đầu sai giờ hoặc chuyển động của kim giây không đều, hãy thay pin càng sớm càng tốt tại shopdongho. Rò rỉ điện do pin chết có thể gây ra hỏng hóc nghiêm trọng cho đồng hồ.<br /><br />-Để duy trì khả năng chống thấm nước qua thời gian, hãy làm theo hướng dẫn sau:<br /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;">Nên:</span><br />• Bảo đảm tính năng chống thấm nước sau mỗi lần mở đồng hồ.<br />• Sau khi chỉnh thời gian cho đồng hồ hãy đẩy nút điều chỉnh trở lại vị trí bình thường.<br /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;">Không nên:</span><br />• Tránh để đồng hồ thay đổi nhiệt độ đột ngột<br />• Tránh làm rơi hoặc va chạm (kiểm tra tính năng chống thấm nước sau mỗi va chạm mạnh),<br />• Tránh sử dụng các bộ phận đang hoạt động, nhấn các nút hoặc cài đặt nút điều chỉnh dưới nước.</div>\r\n</div>\r\n<p><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Khi cốt dây đồng hồ bị lỏng và tụt ra, các bạn hãy tháo ngay hoặc đánh dấu ngay vị trí chốt đó để thay ngay chốt khác , tuyệt đối không được dùng tay đẩy vào vì các bạn đẩy vào được thì chốt đó sẽ tiếp tục xúc ra và có thể rơi mất đồng hồ khi nào không biết</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><em style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; margin: 0px; border: 0px initial initial;"><br />-</em><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> Các kĩ thuật viên có tay nghề, trong môi trường không bụi bẩn sẽ cẩn thận lắp ráp đồng hồ của bạn. Không mở hoặc không cho phép bất kì ai không có quyền mở đồng hồ, vì việc này có thể gây hỏng đồng hồ và làm mất hiệu lực các điều kiện bảo hành.</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /></p>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 24px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">Cách chỉnh giờ một số đồng hồ thông dụng :</strong></span></span></div>\r\n<p><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Đồng hồ 2 kim (giờ và phút) và đồng hồ 3 kim (giờ, phút và giây): dựt ra 1 nấc để chỉnh giờ phút</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Đồng hồ 2 kim 1 lịch (giờ, phút và ngày) và 3 kim 1 lịch (giờ, phút, giây và ngày): có 2 nấc chỉnh , dựt nút ra nấc đầu tiên để chỉnh ngày (chỉ có thể chỉnh được 1 chiều, nếu cố vặn chiều còn lại có thể bị gãy lịch) và dựt ra nấc thứ 2 để chỉnh giờ phút </span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">-Đồng hồ 6 kim 1 lịch 3 nút chỉnh</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">+Chạy pin</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;">: Nút giữa có 2 nấc chỉnh , nấc đầu tiên để chỉnh ngày , nấc thứ 2 để chỉnh giờ và phút . Nút trên để cho chạy/đứng (on/off) chức năng thể thao (chronograph: dùng để đo 1 sự kiện diễn ra trong bao lâu) . Khi nút trên đang off (chức năng chronograph đang đứng) thì nút dưới ấn để đưa 2 kim về vị trí cũ số 12 (reset)</span><br style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;" /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-decoration: underline; padding: 0px; margin: 0px;">+Tự động:</span><span style="color: #333333; font-family: Tahoma, Arial, Verdana; font-size: 12px; line-height: 18px;"> Thông thường nút giữa chỉnh ngày và giờ , các nút bên hông chỉnh thứ tháng năm</span></p>\r\n<p> </p>', '', 1, 1, 0, 7, '2013-06-05 18:46:07', 62, '', '2013-06-05 18:49:16', 62, 0, '0000-00-00 00:00:00', '2013-06-05 18:46:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 1, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (3, 'Khuyến Mãi Shock', 'khuyn-mai-shock', '', '<p> </p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 36px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">Chương trình hiện tại:</strong></span></span></p>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px; margin: 0px;">\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">Không có</div>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-align: center; padding: 0px; border: 0px initial initial;"> </p>\r\n</div>\r\n</div>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px;">----------------------------------------------------------------------------------------------------------------------------</p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px;"> </p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 22px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">Những chương trình cũ đã qua:<br /></strong></span></span></p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px;"> </p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: justify; padding: 0px;"><img src="http://i16.photobucket.com/albums/b3/vozmember/shopdongho/linhtinh/7-17-20116-16-12PM.jpg" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: large; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: olive; background-color: transparent; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; background-color: transparent; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: x-small; padding: 0px; margin: 0px;"><br />Giá ở dưới là giá chưa giảm, các bạn chỉ cần lấy <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #8b0000; background-color: transparent; padding: 0px; margin: 0px;">giá ở dưới nhân với 0.8 là ra giá giảm</span></span>. Ví dụ <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #8b0000; background-color: transparent; padding: 0px; margin: 0px;">đồng hồ ở dưới để giá 2 triệu thì giá bán sẽ là 2.000.000 x 0.8 = 1.600.000 (giảm được 400.000 ngàn)</span></span> <br /><img class="inlineimg" src="http://shopdongho.vn/images/smilies/32_002.gif" border="0" title="32_002" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /><br /><br /></span></span></strong></span></span></p>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px; margin: 0px;">\r\n<div class="bbcode_container" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">\r\n<div class="bbcode_quote" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">\r\n<div class="quote_container" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-align: center; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Verdana; background-color: transparent; padding: 0px; margin: 0px;">Nội dung của chương trình:</span></strong></span><br /><br /><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Symbol; background-color: transparent; padding: 0px; margin: 0px;">· </span></strong><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Verdana; background-color: transparent; padding: 0px; margin: 0px;">Chương trình sẽ có hiệu lực trên toàn Việt Nam và bắt đầu <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">từ ngày 15 tháng 07 đến ngày 31 tháng 08 năm 2011</strong></span></span><br /><br /><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Symbol; background-color: transparent; padding: 0px; margin: 0px;">· </span></strong><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Verdana; background-color: transparent; padding: 0px; margin: 0px;">Khách mua hàng có thể mang đến <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">bất kì đồng hồ cũ nào để đổi và được giảm giá 20% khi mua bất kì đồng hồ Titan mới.</strong></span></span><br /><br /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Symbol; background-color: transparent; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">· </strong></span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Verdana; background-color: transparent; padding: 0px; margin: 0px;">Các đồng hồ người tiêu dùng đổi, sẽ được Quý Khách Hàng gửi về công ty Tân Thịnh để được <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">chọn lọc, làm mới và trao tặng cho Hội Bảo Trợ Người Tàn Tật Và Trẻ Em Mồ Côi TP. Hồ Chí Minh</strong></span>.</span><br /><br /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Verdana; background-color: transparent; padding: 0px; margin: 0px;">Với sự ủng hộ nhiệt tình của Quý Khách Hàng và người tiêu dùng, chúng tôi tin rằng năm nay 2011 chương trình sẽ thành công vượt bậc.</span><br /><br />\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-align: center; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Verdana; background-color: transparent; padding: 0px; margin: 0px;">Trân trọng cám ơn</span><br /><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">SHOPDONGHO.VN</strong></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-align: center; padding: 0px; margin: 0px; border: 0px initial initial;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"> </p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"> </p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /><br /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: xx-small; padding: 0px; margin: 0px;"><img src="http://i16.photobucket.com/albums/b3/vozmember/shopdongho/linhtinh/chuongtrinhkhuyenmai.jpg" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></span><br /><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"> </p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"><br /><br /><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /><br /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: x-large; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #ff4500; background-color: transparent; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: small; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; background-color: transparent; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: large; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: xx-small; padding: 0px; margin: 0px;"><img src="http://i16.photobucket.com/albums/b3/vozmember/shopdongho/linhtinh/chuongtrinhkhuyenmaititan.jpg" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></span><br /></span></span></span></span></strong></span><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"> </p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"> </p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: large; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: red; background-color: transparent; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: x-small; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; background-color: transparent; padding: 0px; margin: 0px;"><br />Tưng bừng đón Giáng Sinh - Năm Mới cùng Casio.Từ <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;">hôm nay đến hết ngày 2-1-2012</span>, khi mua đồng hồ CASIO tại SHOPDONGHO, khách hàng sẽ sở hữu những chiếc đồng hồ Casio với mức <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;">giảm giá lên đến</span></span></span><br /><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 16px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: red; background-color: transparent; padding: 0px; margin: 0px;">10%</span></span></strong></span></span><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">-<span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 22px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #9932cc; background-color: transparent; padding: 0px; margin: 0px;">30%</span></span>-<span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 28px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #9acd32; background-color: transparent; padding: 0px; margin: 0px;">50%</span></span></strong> <br /><img src="http://i16.photobucket.com/albums/b3/vozmember/shopdongho/linhtinh/casio.jpg" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></strong><br /><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"> </p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></p>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px; margin: 0px;">\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 26px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Tahoma; background-color: transparent; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">CHƯƠNG TRÌNH KHUYẾN MÃI GIẢM GIÁ ĐẶC BIỆT MỪNG NGÀY LỄ 30/04 VÀ 01/05</strong><br /><br /></span></span></div>\r\n</div>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 16px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Tahoma; background-color: transparent; padding: 0px; margin: 0px;">Bắt đầu từ ngày hôm nay <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: red; background-color: transparent; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">22-03-2012 đến 01-05-2012</strong></span></span> tại Shop Đồng Hồ sẽ có chương trình<span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: red; background-color: transparent; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">giảm giá đặc biệt lên đến 25%</strong></span></span> dành cho các nhãn hiệu đồng hồ chính hãng: <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: gray; background-color: transparent; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">KENNETH COLE</strong></span>,<span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #8b0000; background-color: transparent; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">TOMMY HILFIGER</strong></span>, <strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #2e8b57; background-color: transparent; padding: 0px; margin: 0px;">LACOSTE</span></strong>, <strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: olive; background-color: transparent; padding: 0px; margin: 0px;">BCBGMAXAZRIA</span></strong>. Tất cả đều được <strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">bảo hành chính hãng máy 2 năm và pin 1 năm</strong>.</span><br /><br /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Tahoma; background-color: transparent; padding: 0px; margin: 0px;">Thời gian chương trình: kéo dài từ 22-03-2012 đến hết ngày 01-05-2012 (hoặc có thể kết thúc sớm hơn vì số lượng đồng hồ giảm giá có hạn)</span></span></p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"> </p>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px; margin: 0px;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px; margin: 0px;"><img src="http://i16.photobucket.com/albums/b3/vozmember/khuyenmaititan2012.jpg" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: large; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: olive; background-color: transparent; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; background-color: transparent; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; font-size: x-small; padding: 0px; margin: 0px;"><br />Giá trong web và giá niêm yết ở cửa hàng là giá chưa giảm, các bạn chỉ cần lấy <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #8b0000; background-color: transparent; padding: 0px; margin: 0px;">giá trong web, cửa hàng nhân với 0.8 là ra giá giảm</span></span>. Ví dụ <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #8b0000; background-color: transparent; padding: 0px; margin: 0px;">đồng hồ ở dưới để giá 2 triệu thì giá bán sẽ là 2.000.000 x 0.8 = 1.600.000 (giảm được 400.000 ngàn)</span></span> <br /><br /><br /></span></span></strong></span></span></div>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Verdana; background-color: transparent; padding: 0px; margin: 0px;">Nội dung của chương trình:</span></strong></span><br /><br /><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Symbol; background-color: transparent; padding: 0px; margin: 0px;">· </span></strong><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Verdana; background-color: transparent; padding: 0px; margin: 0px;">Chương trình sẽ có hiệu lực trên toàn Việt Nam và bắt đầu <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">từ ngày 15 tháng 08 đến ngày 31 tháng 09 năm 2012</strong></span></span><br /><br /><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Symbol; background-color: transparent; padding: 0px; margin: 0px;">· </span></strong><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Verdana; background-color: transparent; padding: 0px; margin: 0px;">Khách mua hàng có thể mang đến <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">bất kì đồng hồ cũ nào để đổi và được giảm giá 20% khi mua bất kì đồng hồ Titan mới.</strong></span></span><br /><br /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Symbol; background-color: transparent; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">· </strong></span><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Verdana; background-color: transparent; padding: 0px; margin: 0px;">Các đồng hồ khách hàng đổi, sẽ được gửi về công ty Nguyên Vạn Lộc để được <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-decoration: underline; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">chọn lọc, làm mới và trao tặng cho Hội Bảo Trợ Người Tàn Tật Và Trẻ Em Mồ Côi TP. Hồ Chí Minh</strong></span>.</span><br /><br /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Verdana; background-color: transparent; padding: 0px; margin: 0px;">Với sự ủng hộ nhiệt tình của Quý Khách Hàng, chúng tôi tin rằng năm nay 2012 chương trình sẽ thành công vượt bậc.</span></p>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px; margin: 0px;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Verdana; background-color: transparent; padding: 0px; margin: 0px;">Trân trọng cám ơn</span><br /><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">SHOPDONGHO.VN</strong></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px; margin: 0px;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; text-align: center; padding: 0px; margin: 0px;">\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></div>\r\n</div>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; border: 0px initial initial;"><img src="http://i16.photobucket.com/albums/b3/vozmember/thevip-1.jpg" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; border: 0px initial initial;"> </p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; border: 0px initial initial;"><img src="http://i16.photobucket.com/albums/b3/vozmember/giaohangvabaohanh.jpg" border="0" width="657" height="830" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></p>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></div>\r\n</div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">Chương trình khuyến mãi đặc biệt nhân dịp Giáng sinh và năm mới 2013, <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 28px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">hệ thống<span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: red; background-color: transparent; padding: 0px; margin: 0px;">ShopDongHo.Vn</span> trên toàn quốc sẽ <span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: red; background-color: transparent; padding: 0px; margin: 0px;">giảm giá 10% cho tất cả đồng hồ CASIO từ 22/12/2012 đến 2/1/2013</span></strong></span>. Có thể nói đây là chương trình giảm giá với quy mô lớn nhất trong năm về số lượng cũng như chủng loại sản phẩm. Khách hàng sẽ thỏa sức chọn lựa, mua sắm tại hệ thống ShopDongHo.Vn và tham gia chương trình ưu đãi cuối năm cực hấp dẫn</div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <a href="http://shopdongho.vn/danh-sach-dong-ho-tai-shop-dong-ho/3513-hcm-toan-quoc-hon-400-mau-dong-ho-dep-gia-phai-chang.html" target="_blank" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></a></div>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></div>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; border: 0px initial initial;"><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 28px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">Tặng ngay nón bảo hiểm cao cấp khi mua đồng hồ Titan</strong></span><br /><br /><em style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">(Chương trình áp dụng từ ngày 20/12/2012 đến ngày 09/02/2012)</em><br />Tiếp nối thành công của những chương trình trước, chương trình “ Tết Quý Tỵ, Bắt Đầu Hành Trình Mới Cùng Titan” tặng nón bảo hiểm cao cấp nhằm gia tăng tối đa lợi ích cho người tiêu dùng và đặc biệt vô cùng ý nghĩa đối với công tác xã hội : bảo vệ an toàn cho mọi người khi tham gia giao thông.<br /><br /><span style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: red; background-color: transparent; padding: 0px; margin: 0px;"><strong style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px; border: 0px initial initial;">Khi mua bất kỳ đồng hồ nào của TiTan, người tiêu dùng sẽ được tặng 1 chiếc nón bảo hiểm cao cấp đạt tiêu chuẩn an toàn QCVN: 02/2008/BKHCN</strong></span>.</p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; border: 0px initial initial;">Như vậy, khách hàng không những có thể sở hữu những chiếc đồng hồ Titan sành điệu mà còn được bảo vệ an toàn khi tham gia giao thông</p>\r\n<div style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; text-align: justify; padding: 0px; margin: 0px;"><img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /> <img src="http://i16.photobucket.com/albums/b3/vozmember/emotion/hot.gif" border="0" style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; padding: 0px; margin: 0px;" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<p style="text-align: center;"> </p>', '', 1, 1, 0, 3, '2013-06-05 18:49:22', 62, '', '2013-06-05 18:53:29', 62, 0, '0000-00-00 00:00:00', '2013-06-05 18:49:22', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (4, 'Tin Tức', 'tin-tc', '', '<p> </p>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/19/huong-dan-su-dung-rieng-cho-dong-ho-casio.html" title="Hướng dẫn sử dụng riêng cho đồng hồ CASIO" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: red; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/Logo-Casio_thumb.jpg" border="0" alt="Hướng dẫn sử dụng riêng cho đồng hồ CASIO" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/19/huong-dan-su-dung-rieng-cho-dong-ho-casio.html" title="Hướng dẫn sử dụng riêng cho đồng hồ CASIO" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Hướng dẫn sử dụng riêng cho đồng hồ CASIO</a></h2>\r\nTheo từng dòng máy CASIO</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/17/huong-dan-chinh-dong-ho-citizen-bl1-e764.html" title="Hướng dẫn chỉnh đồng hồ Citizen BL1-E764" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/BL1-E76_thumb.jpg" border="0" alt="Hướng dẫn chỉnh đồng hồ Citizen BL1-E764" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/17/huong-dan-chinh-dong-ho-citizen-bl1-e764.html" title="Hướng dẫn chỉnh đồng hồ Citizen BL1-E764" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Hướng dẫn chỉnh đồng hồ Citizen BL1-E764</a></h2>\r\n.</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/18/nhung-luu-y-can-thiet-khi-su-dung-dong-ho.html" title="Những lưu ý cần thiết khi sử dụng đồng hồ" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/cach-bao-quan-dong-ho_thumb.jpg" border="0" alt="Những lưu ý cần thiết khi sử dụng đồng hồ" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/18/nhung-luu-y-can-thiet-khi-su-dung-dong-ho.html" title="Những lưu ý cần thiết khi sử dụng đồng hồ" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Những lưu ý cần thiết khi sử dụng đồng hồ</a></h2>\r\n.</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/12/bo-suu-tap-super-titanium-moi-cua-citizen.html" title="Bộ sưu tập Super Titanium mới của Citizen" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/A4_banner_thumb.jpg" border="0" alt="Bộ sưu tập Super Titanium mới của Citizen" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/12/bo-suu-tap-super-titanium-moi-cua-citizen.html" title="Bộ sưu tập Super Titanium mới của Citizen" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Bộ sưu tập Super Titanium mới của Citizen</a></h2>\r\n.</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/16/huong-dan-chinh-dong-ho-citizen-bl5-e820.html" title="Hướng dẫn chỉnh đồng hồ Citizen BL5-E820" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/BL5-E820_thumb.jpg" border="0" alt="Hướng dẫn chỉnh đồng hồ Citizen BL5-E820" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/16/huong-dan-chinh-dong-ho-citizen-bl5-e820.html" title="Hướng dẫn chỉnh đồng hồ Citizen BL5-E820" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Hướng dẫn chỉnh đồng hồ Citizen BL5-E820</a></h2>\r\n.</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/14/huong-dan-chinh-dong-ho-citizen-bl8-e870.html" title="Hướng dẫn chỉnh đồng hồ Citizen BL8-E870" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/BL8-E870_thumb.jpg" border="0" alt="Hướng dẫn chỉnh đồng hồ Citizen BL8-E870" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/14/huong-dan-chinh-dong-ho-citizen-bl8-e870.html" title="Hướng dẫn chỉnh đồng hồ Citizen BL8-E870" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Hướng dẫn chỉnh đồng hồ Citizen BL8-E870</a></h2>\r\n.</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/15/huong-dan-chinh-dong-ho-citizen-bl9-g900.html" title="Hướng dẫn chỉnh đồng hồ Citizen BL9-G900" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/BL9-G900_thumb.jpg" border="0" alt="Hướng dẫn chỉnh đồng hồ Citizen BL9-G900" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/15/huong-dan-chinh-dong-ho-citizen-bl9-g900.html" title="Hướng dẫn chỉnh đồng hồ Citizen BL9-G900" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Hướng dẫn chỉnh đồng hồ Citizen BL9-G900</a></h2>\r\n.</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/13/huong-dan-chinh-dong-ho-citizen-bto-e310.html" title="Hướng dẫn chỉnh đồng hồ Citizen BTO-E310" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/BT0-E31_thumb.jpg" border="0" alt="Hướng dẫn chỉnh đồng hồ Citizen BTO-E310" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/13/huong-dan-chinh-dong-ho-citizen-bto-e310.html" title="Hướng dẫn chỉnh đồng hồ Citizen BTO-E310" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Hướng dẫn chỉnh đồng hồ Citizen BTO-E310</a></h2>\r\n.</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/9/girls-generation-chinh-thuc-la-dai-dien-quang-cao-cua-nhan-hieu-dong-ho-baby-g.html" title="Girls’ Generation chính thức là đại diện quảng cáo của nhãn hiệu đồng hồ Baby-G" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/1_thumb.jpg" border="0" alt="Girls’ Generation chính thức là đại diện quảng cáo của nhãn hiệu đồng hồ Baby-G" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/9/girls-generation-chinh-thuc-la-dai-dien-quang-cao-cua-nhan-hieu-dong-ho-baby-g.html" title="Girls’ Generation chính thức là đại diện quảng cáo của nhãn hiệu đồng hồ Baby-G" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Girls’ Generation chính thức là đại diện quảng cáo của nhãn hiệu đồng hồ Baby-G</a></h2>\r\n.</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/11/lich-su-hang-dong-ho-skagen.html" title="Lịch sử hãng đồng hồ SKAGEN" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/Logo_Skagen_thumb.jpg" border="0" alt="Lịch sử hãng đồng hồ SKAGEN" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/11/lich-su-hang-dong-ho-skagen.html" title="Lịch sử hãng đồng hồ SKAGEN" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Lịch sử hãng đồng hồ SKAGEN</a></h2>\r\n.</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/3/quan-doi-my-us-army-chon-dung-g-shock-cua-casio.html" title="Quân đội Mỹ US ARMY chọn dùng G-SHOCK của CASIO" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/3-8-2012_6-33-10_PM1_thumb.jpg" border="0" alt="Quân đội Mỹ US ARMY chọn dùng G-SHOCK của CASIO" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/3/quan-doi-my-us-army-chon-dung-g-shock-cua-casio.html" title="Quân đội Mỹ US ARMY chọn dùng G-SHOCK của CASIO" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Quân đội Mỹ US ARMY chọn dùng G-SHOCK của CASIO</a></h2>\r\nSiêu bền</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/10/khoi-my-ca-tinh-cung-dong-ho-baby-g.html" title="Khởi My cá tính cùng đồng hồ Baby-G" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/8-12-2012_5-12-06_PM_thumb.jpg" border="0" alt="Khởi My cá tính cùng đồng hồ Baby-G" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/10/khoi-my-ca-tinh-cung-dong-ho-baby-g.html" title="Khởi My cá tính cùng đồng hồ Baby-G" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Khởi My cá tính cùng đồng hồ Baby-G</a></h2>\r\n.</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/7/lich-su-hang-dong-ho-citizen.html" title="Lịch sử hãng đồng hồ CITIZEN" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/233809_thumb.jpg" border="0" alt="Lịch sử hãng đồng hồ CITIZEN" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/7/lich-su-hang-dong-ho-citizen.html" title="Lịch sử hãng đồng hồ CITIZEN" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Lịch sử hãng đồng hồ CITIZEN</a></h2>\r\n.</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/8/lich-su-hang-dong-ho-ingersoll.html" title="Lịch sử hãng đồng hồ INGERSOLL" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/ingersoll_thumb.gif" border="0" alt="Lịch sử hãng đồng hồ INGERSOLL" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/8/lich-su-hang-dong-ho-ingersoll.html" title="Lịch sử hãng đồng hồ INGERSOLL" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Lịch sử hãng đồng hồ INGERSOLL</a></h2>\r\n.</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/6/cach-chinh-chung-cho-dong-ho-casio.html" title="Cách chỉnh chung cho đồng hồ CASIO" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/dongho_thumb.jpg" border="0" alt="Cách chỉnh chung cho đồng hồ CASIO" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/6/cach-chinh-chung-cho-dong-ho-casio.html" title="Cách chỉnh chung cho đồng hồ CASIO" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Cách chỉnh chung cho đồng hồ CASIO</a></h2>\r\nCách chung cơ bản nhất</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/5/muc-do-kha-nang-chiu-nuoc-cua-dong-ho-casio.html" title="Mức độ khả năng chịu nước của đồng hồ CASIO" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/208042_thumb.jpg" border="0" alt="Mức độ khả năng chịu nước của đồng hồ CASIO" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/5/muc-do-kha-nang-chiu-nuoc-cua-dong-ho-casio.html" title="Mức độ khả năng chịu nước của đồng hồ CASIO" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Mức độ khả năng chịu nước của đồng hồ CASIO</a></h2>\r\nCác bạn nên đọc để xài cho tốt nhé</div>\r\n<div class="newsItem" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; clear: both; color: #333333; font-family: Tahoma, Arial, Verdana; line-height: 18px; padding: 0px; border: 0px initial initial;"><a class="toggleborder newsPic" href="http://shopdongho.com.vn/tin-tuc/4/thuat-ngu-ki-thuat-ve-dong-ho.html" title="Thuật ngữ kĩ thuật về đồng hồ" style="margin-top: 0px; margin-right: 10px; margin-bottom: 10px; margin-left: 0px; border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; color: #a3171e; text-decoration: none; padding: 0px; border: 0px initial initial;"><img src="http://shopdongho.com.vn/uploads/A_to_Z_thumb.jpg" border="0" alt="Thuật ngữ kĩ thuật về đồng hồ" style="margin-top: 2px; margin-right: 5px; margin-bottom: 2px; margin-left: 2px; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; float: left; padding: 1px; border: 1px initial initial;" /></a>\r\n<h2 style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 12px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;"><a href="http://shopdongho.com.vn/tin-tuc/4/thuat-ngu-ki-thuat-ve-dong-ho.html" title="Thuật ngữ kĩ thuật về đồng hồ" style="border-image: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; color: #a3171e; text-decoration: none; padding: 0px; margin: 0px; border: 0px initial initial;">Thuật ngữ kĩ thuật về đồng hồ</a></h2>\r\nNhững thuật ngữ kĩ thuật chuyên môn về đồng hồ</div>\r\n<p> </p>', '', -2, 1, 0, 1, '2013-06-06 06:47:07', 62, '', '2013-06-06 06:48:34', 62, 0, '0000-00-00 00:00:00', '2013-06-06 06:47:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 0, 'robots=\nauthor=');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content_frontpage`
-- 

CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_content_frontpage`
-- 

INSERT INTO `jos_content_frontpage` VALUES (1, 3);
INSERT INTO `jos_content_frontpage` VALUES (2, 2);
INSERT INTO `jos_content_frontpage` VALUES (3, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content_rating`
-- 

CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_content_rating`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro`
-- 

CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `jos_core_acl_aro`
-- 

INSERT INTO `jos_core_acl_aro` VALUES (10, 'users', '62', 0, 'Administrator', 0);
INSERT INTO `jos_core_acl_aro` VALUES (11, 'users', '63', 0, 'quangchien', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_groups`
-- 

CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `jos_core_acl_aro_groups`
-- 

INSERT INTO `jos_core_acl_aro_groups` VALUES (17, 0, 'ROOT', 1, 22, 'ROOT');
INSERT INTO `jos_core_acl_aro_groups` VALUES (28, 17, 'USERS', 2, 21, 'USERS');
INSERT INTO `jos_core_acl_aro_groups` VALUES (29, 28, 'Public Frontend', 3, 12, 'Public Frontend');
INSERT INTO `jos_core_acl_aro_groups` VALUES (18, 29, 'Registered', 4, 11, 'Registered');
INSERT INTO `jos_core_acl_aro_groups` VALUES (19, 18, 'Author', 5, 10, 'Author');
INSERT INTO `jos_core_acl_aro_groups` VALUES (20, 19, 'Editor', 6, 9, 'Editor');
INSERT INTO `jos_core_acl_aro_groups` VALUES (21, 20, 'Publisher', 7, 8, 'Publisher');
INSERT INTO `jos_core_acl_aro_groups` VALUES (30, 28, 'Public Backend', 13, 20, 'Public Backend');
INSERT INTO `jos_core_acl_aro_groups` VALUES (23, 30, 'Manager', 14, 19, 'Manager');
INSERT INTO `jos_core_acl_aro_groups` VALUES (24, 23, 'Administrator', 15, 18, 'Administrator');
INSERT INTO `jos_core_acl_aro_groups` VALUES (25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_map`
-- 

CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_acl_aro_map`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_sections`
-- 

CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `jos_core_acl_aro_sections`
-- 

INSERT INTO `jos_core_acl_aro_sections` VALUES (10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_groups_aro_map`
-- 

CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_acl_groups_aro_map`
-- 

INSERT INTO `jos_core_acl_groups_aro_map` VALUES (18, '', 11);
INSERT INTO `jos_core_acl_groups_aro_map` VALUES (25, '', 10);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_log_items`
-- 

CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_log_items`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_log_searches`
-- 

CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_log_searches`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_groups`
-- 

CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_groups`
-- 

INSERT INTO `jos_groups` VALUES (0, 'Public');
INSERT INTO `jos_groups` VALUES (1, 'Registered');
INSERT INTO `jos_groups` VALUES (2, 'Special');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_menu`
-- 

CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(75) default NULL,
  `name` varchar(255) default NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `jos_menu`
-- 

INSERT INTO `jos_menu` VALUES (1, 'mainmenu', 'Trang Chủ', 'trang-ch', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1);
INSERT INTO `jos_menu` VALUES (2, 'mainmenu', 'Tin Tức', 'tin-tc', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (3, 'mainmenu', 'Hướng Dẫn Mua hàng', 'hng-dn-mua-hang', 'index.php?option=com_content&view=category&layout=blog&id=2', 'component', 0, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (4, 'mainmenu', 'Khuyến Mãi', 'khuyn-mai', 'index.php?option=com_content&view=category&layout=blog&id=3', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (5, 'mainmenu', 'Liên Hệ', 'lien-h', 'index.php?option=com_content&view=category&layout=blog&id=4', 'component', 1, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (6, 'mainmenu', 'Thông Báo', 'thong-bao', 'index.php?option=com_content&view=category&layout=blog&id=5', 'component', 1, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (7, 'sub_menu', 'Webside Đồng Hồ', 'webside-ng-h', '', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (8, 'sub_menu', 'Giới Thiệu', 'gii-thiu', 'index.php?option=com_content&view=article&id=1', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (9, 'sub_menu', 'Liên Hệ', 'lien-h', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 0, 7, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (10, 'mainmenu', 'Bảo Hành', 'bo-hanh', 'index.php?option=com_content&view=category&layout=blog&id=7', 'component', 1, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_menu_types`
-- 

CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `jos_menu_types`
-- 

INSERT INTO `jos_menu_types` VALUES (1, 'mainmenu', 'Main Menu', 'The main menu for the site');
INSERT INTO `jos_menu_types` VALUES (2, 'sub_menu', 'sub_menu', 'sub_menu');
INSERT INTO `jos_menu_types` VALUES (3, 'menu-1', 'menu-1', 'menu-1');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_messages`
-- 

CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_messages_cfg`
-- 

CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_messages_cfg`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_migration_backlinks`
-- 

CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_migration_backlinks`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_modules`
-- 

CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

-- 
-- Dumping data for table `jos_modules`
-- 

INSERT INTO `jos_modules` VALUES (1, 'Main Menu', '', 3, 'left', 62, '2013-06-05 23:58:15', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmoduleclass_sfx=_menu\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, '');
INSERT INTO `jos_modules` VALUES (5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (16, 'VirtueMart Product Categories', '', 4, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_product_categories', 0, 0, 1, 'menutype=jscook\njscook_type=menu\njscookMenu_style=ThemeOffice\nmenu_orientation=hbr\njscookTree_style=ThemeXP\nroot_label=Shop\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (30, 'S5 Horizontal Login', '', 0, 'under_menu_left', 0, '0000-00-00 00:00:00', 1, 'mod_s5_horizontal_login', 0, 0, 1, 'cache=0\nmoduleclass_sfx=\nlogin=\nlogout=\ngreeting=1\nmessageyn=1\nremember=0\nmessage=Chào mừng bạn đến với Thành An\nname=0\nforgotp=Quên mật khẩu\nforgotu=Username?\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (31, 'Trang Chủ', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 0, 'showHome=1\nhomeText=Trang Chủ\nshowLast=1\nseparator=\nmoduleclass_sfx=\ncache=0\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (18, 'VirtueMart Module', '', 5, 'left', 62, '2013-06-05 18:28:26', 0, 'mod_virtuemart', 0, 0, 1, 'show_login_form=no\nremember_me_default=1\nshow_categories=yes\nshow_listall=yes\nshow_adminlink=yes\nshow_accountlink=yes\nshow_minicart=yes\nshow_productsearch=yes\nshow_product_parameter_search=no\nmenutype=links\njscook_type=menu\njscookMenu_style=ThemeOffice\nmenu_orientation=hbr\njscookTree_style=ThemeXP\nroot_label=Shop\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (19, 'VirtueMart Shopping Cart', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_cart', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` VALUES (20, 'VirtueMart Currency Selector', '', 7, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_currencies', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` VALUES (28, 'sub_menu', '', 2, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=sub_menu', 0, 0, '');
INSERT INTO `jos_modules` VALUES (29, 'Sub menu', '', 0, 'sub_menu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=sub_menu\nmenu_style=horiz_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (23, 'VirtueMart Login', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_login', 0, 0, 1, 'login=home\nlogout=home\ngreeting=1\naccountlink=1\nremember_me_default=1\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (24, 'VirtueMart Manufacturers', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_manufacturers', 0, 0, 1, 'show_linklist=1\nshow_dropdown=1\nauto=1\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (25, 'Sản Phẩm Nổi Bật', '', 0, 'below_body_1', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_randomprod', 0, 0, 1, 'max_items=12\nshow_price=1\nshow_addtocart=1\ndisplay_style=table\nproducts_per_row=4\ncategory_id=\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (26, 'Tìm Sản Phẩm', '', 10, 'search', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_search', 0, 0, 1, 'moduleclass_sfx=\nclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (27, 'VirtueMart Top Ten Products', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_topten', 0, 0, 1, 'num_topsellers=10\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (32, 'menu-1', '', 1, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=menu-1', 0, 0, '');
INSERT INTO `jos_modules` VALUES (33, 'Giỏ hàng', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_s5_dropdown_cart', 0, 0, 1, 'moduleclass_sfx=\nwidth=225\nheight=66\nlmargin=0\nbmargin=0\nrmargin=0\ntmargin=0\nbackcolor=FFFFFF\nbordercolor=CCCCCC\nbackfontcolor=000000\nfontcolor=000000\nfontsize=12\nintrotext=Giỏ Hàng Của bạn\nbutton1text=Xem Giá Hàng\nbutton2text=Mở Rộng\nbutton2textclicked=Đóng\nindividual_price=Giá\norder_total=Tổng Tiền\nitems=Món\nopenclose=yes\nscroll=yes\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (34, 'Danh Mục Sản Phẩm', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_s5_vm_accordion', 0, 0, 1, 'moduleclass_sfx=-none\npretext=\nmaint_show=no\nlistall_show=no\nsearch_show=no\ncart_show=no\nbackground=none\nfontsize1=12px\nfontcolor1=#FFFFFF\nfontweight1=bold\nfontcolorhover1=#FFFFFF\nfontdecoration1=underline\nlineheight1=230%\npaddingl1=13px\nmarginl1=0px\nmarginr1=0px\nfontsize2=12px\nfontcolor2=#666666\nfontweight2=normal\nfontcolorhover2=#666666\nfontdecoration2=underline\nlineheight2=160%\npaddingl2=5px\nmarginl2=0px\nmarginr2=0px\nfontsize3=12px\nfontcolor3=#666666\nfontweight3=normal\nfontcolorhover3=#666666\nfontdecoration3=underline\nlineheight3=160%\npaddingl3=18px\nmarginl3=0px\nmarginr3=0px\nmarginb=0px\nmargint=0px\nmarginl=0px\nmarginr=0px\nspeed1=1\nspeed2=1\nie7speed1=19\nfadespeed=1.1\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (35, 'Sản Phẩm Nổi Bật', '', 0, 'above_body_1', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_featureprod', 0, 0, 1, 'max_items=8\nshow_price=1\nshow_addtocart=1\ndisplay_style=table\nproducts_per_row=4\ncategory_id=\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_modules_menu`
-- 

CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_modules_menu`
-- 

INSERT INTO `jos_modules_menu` VALUES (1, 0);
INSERT INTO `jos_modules_menu` VALUES (16, 0);
INSERT INTO `jos_modules_menu` VALUES (18, 0);
INSERT INTO `jos_modules_menu` VALUES (19, 0);
INSERT INTO `jos_modules_menu` VALUES (20, 0);
INSERT INTO `jos_modules_menu` VALUES (23, 0);
INSERT INTO `jos_modules_menu` VALUES (24, 0);
INSERT INTO `jos_modules_menu` VALUES (25, 1);
INSERT INTO `jos_modules_menu` VALUES (26, 0);
INSERT INTO `jos_modules_menu` VALUES (27, 0);
INSERT INTO `jos_modules_menu` VALUES (28, 0);
INSERT INTO `jos_modules_menu` VALUES (29, 0);
INSERT INTO `jos_modules_menu` VALUES (30, 0);
INSERT INTO `jos_modules_menu` VALUES (31, 0);
INSERT INTO `jos_modules_menu` VALUES (32, 0);
INSERT INTO `jos_modules_menu` VALUES (33, 0);
INSERT INTO `jos_modules_menu` VALUES (34, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_newsfeeds`
-- 

CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_newsfeeds`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_plugins`
-- 

CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

-- 
-- Dumping data for table `jos_plugins`
-- 

INSERT INTO `jos_plugins` VALUES (1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n');
INSERT INTO `jos_plugins` VALUES (3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n');
INSERT INTO `jos_plugins` VALUES (6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n');
INSERT INTO `jos_plugins` VALUES (7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n');
INSERT INTO `jos_plugins` VALUES (13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n');
INSERT INTO `jos_plugins` VALUES (15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n');
INSERT INTO `jos_plugins` VALUES (17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n');
INSERT INTO `jos_plugins` VALUES (18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (19, 'Editor - TinyMCE', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n');
INSERT INTO `jos_plugins` VALUES (20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n');
INSERT INTO `jos_plugins` VALUES (27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n');
INSERT INTO `jos_plugins` VALUES (29, 'System - Legacy', 'legacy', 'system', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n');
INSERT INTO `jos_plugins` VALUES (30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n');
INSERT INTO `jos_plugins` VALUES (31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_polls`
-- 

CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_polls`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_data`
-- 

CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_poll_data`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_date`
-- 

CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_poll_date`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_menu`
-- 

CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_poll_menu`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_sections`
-- 

CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_sections`
-- 

INSERT INTO `jos_sections` VALUES (1, 'Chiến Thành', '', 'chin-thanh', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 1, 0, 6, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_session`
-- 

CREATE TABLE `jos_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_session`
-- 

INSERT INTO `jos_session` VALUES ('', '1370501438', '4ae6c837576312b61a3cf3c7459b9549', 1, 0, '', 0, 0, '__default|a:8:{s:22:"session.client.browser";s:100:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.46 Safari/535.11";s:15:"session.counter";i:28;s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:61:"C:\\AppServ\\www\\joomla\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:19:"session.timer.start";i:1370500711;s:18:"session.timer.last";i:1370501435;s:17:"session.timer.now";i:1370501438;s:13:"session.token";s:32:"c56771ce017fbebdf953645a02ce6468";}VMCHECK|s:2:"OK";auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:5:{s:3:"idx";i:4;i:0;a:2:{s:10:"product_id";i:43;s:11:"category_id";s:2:"13";}i:1;a:2:{s:10:"product_id";i:45;s:11:"category_id";s:2:"13";}i:2;a:2:{s:10:"product_id";i:4;s:11:"category_id";s:1:"2";}i:3;a:2:{s:10:"product_id";i:48;s:11:"category_id";s:2:"13";}}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"VND";userstate|a:1:{s:10:"product_id";s:2:"48";}last_page|s:20:"shop.product_details";last_browse_parameters|a:7:{s:11:"category_id";s:1:"2";s:15:"manufacturer_id";i:0;s:7:"keyword";b:0;s:8:"keyword1";s:0:"";s:8:"keyword2";s:0:"";s:8:"featured";s:1:"N";s:10:"discounted";s:1:"N";}product_sess|a:47:{i:4;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501435;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:3;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501101;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:1;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501435;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:2;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501435;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:48;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501435;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:44;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501107;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:50;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501050;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:16;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501435;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:6;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501195;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:15;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501195;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501195;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501435;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:29;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501055;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501195;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:43;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501050;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:11;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501170;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:12;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501170;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501107;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:39;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501014;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:5;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501435;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:7;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501175;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:8;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501055;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:46;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370500995;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:10;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501170;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:9;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501053;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:45;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501050;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:40;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501195;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:49;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501053;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501435;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:19;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501435;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:27;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501014;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501170;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501055;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501170;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:47;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501170;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:42;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501435;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:41;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501435;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:22;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501195;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501170;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:14;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501195;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:24;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501175;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:31;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501016;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:35;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501175;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:38;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501195;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:13;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501107;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501107;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1370501435;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;i:0;}s5_style|s:6:"style1";introtext|s:23:"Giỏ Hàng Của bạn";width|s:3:"225";height|s:2:"66";openclose|s:3:"yes";backcolor|s:6:"FFFFFF";button1text|s:14:"Xem Giá Hàng";button2text|s:11:"Mở Rộng";button2textclicked|s:6:"Đóng";fontcolor|s:6:"000000";backfontcolor|s:6:"000000";individual_pricee|s:4:"Giá";order_totall|s:13:"Tổng Tiền";items|s:4:"Món";bordercolor|s:6:"CCCCCC";fontsize|s:2:"12";openclose_display|s:5:"block";vmUseGreyBox|s:0:"";vmCartDirection|s:0:"";vmMiniCart|b:0;');
INSERT INTO `jos_session` VALUES ('admin', '1370501470', 'fc2e138d905e0efbaa315ffb6d56f500', 0, 62, 'Super Administrator', 25, 1, '__default|a:8:{s:15:"session.counter";i:56;s:19:"session.timer.start";i:1370500730;s:18:"session.timer.last";i:1370501470;s:17:"session.timer.now";i:1370501470;s:22:"session.client.browser";s:100:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.46 Safari/535.11";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:4:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":7:{s:23:"com_modulesfilter_order";s:10:"m.position";s:27:"com_modulesfilter_order_Dir";s:0:"";s:23:"com_modulesfilter_state";s:0:"";s:26:"com_modulesfilter_position";s:1:"0";s:22:"com_modulesfilter_type";s:1:"0";s:26:"com_modulesfilter_assigned";s:1:"0";s:17:"com_modulessearch";s:0:"";}}s:11:"application";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"lang";s:0:"";}}s:6:"global";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:0;}}}s:11:"com_modules";a:1:{s:4:"data";O:8:"stdClass":1:{s:10:"limitstart";i:0;}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";s:2:"62";s:4:"name";s:13:"Administrator";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@gmail.com";s:8:"password";s:65:"ca95138e793db5c9518fd8beafee8a2d:nYDOPlmSZEmADG5adFfDm5Hq7gJMWpWI";s:14:"password_clear";s:0:"";s:8:"usertype";s:19:"Super Administrator";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:3:"gid";s:2:"25";s:12:"registerDate";s:19:"2013-06-05 06:40:52";s:13:"lastvisitDate";s:19:"2013-06-06 00:29:45";s:10:"activation";s:0:"";s:6:"params";s:0:"";s:3:"aid";i:2;s:5:"guest";i:0;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:61:"C:\\AppServ\\www\\joomla\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"167dbf712df67d533e17e01592a8e9bc";}');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_stats_agents`
-- 

CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_stats_agents`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_templates_menu`
-- 

CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_templates_menu`
-- 

INSERT INTO `jos_templates_menu` VALUES ('shopper_frenzy', 0, 0);
INSERT INTO `jos_templates_menu` VALUES ('khepri', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_users`
-- 

CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

-- 
-- Dumping data for table `jos_users`
-- 

INSERT INTO `jos_users` VALUES (62, 'Administrator', 'admin', 'admin@gmail.com', 'ca95138e793db5c9518fd8beafee8a2d:nYDOPlmSZEmADG5adFfDm5Hq7gJMWpWI', 'Super Administrator', 0, 1, 25, '2013-06-05 06:40:52', '2013-06-06 06:38:51', '', '');
INSERT INTO `jos_users` VALUES (63, 'quangchien', 'quangchien', 'quangchien91nb@gmail.com', 'c074797b95a0669d62801b47f9151240:ahediroCzwWytQko6MSBFY0hq3ie7w1R', 'Registered', 0, 0, 18, '2013-06-05 18:19:37', '2013-06-05 18:20:06', '7d3f3cad007ab17827c0199e9b66ed3d', '\n');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_auth_group`
-- 

CREATE TABLE `jos_vm_auth_group` (
  `group_id` int(11) NOT NULL auto_increment,
  `group_name` varchar(128) default NULL,
  `group_level` int(11) default NULL,
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds all the user groups' AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `jos_vm_auth_group`
-- 

INSERT INTO `jos_vm_auth_group` VALUES (1, 'admin', 0);
INSERT INTO `jos_vm_auth_group` VALUES (2, 'storeadmin', 250);
INSERT INTO `jos_vm_auth_group` VALUES (3, 'shopper', 500);
INSERT INTO `jos_vm_auth_group` VALUES (4, 'demo', 750);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_auth_user_group`
-- 

CREATE TABLE `jos_vm_auth_user_group` (
  `user_id` int(11) NOT NULL default '0',
  `group_id` int(11) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps the user to user groups';

-- 
-- Dumping data for table `jos_vm_auth_user_group`
-- 

INSERT INTO `jos_vm_auth_user_group` VALUES (62, 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_auth_user_vendor`
-- 

CREATE TABLE `jos_vm_auth_user_vendor` (
  `user_id` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  KEY `idx_auth_user_vendor_user_id` (`user_id`),
  KEY `idx_auth_user_vendor_vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a user to a vendor';

-- 
-- Dumping data for table `jos_vm_auth_user_vendor`
-- 

INSERT INTO `jos_vm_auth_user_vendor` VALUES (62, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_cart`
-- 

CREATE TABLE `jos_vm_cart` (
  `user_id` int(11) NOT NULL,
  `cart_content` text NOT NULL,
  `last_updated` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores the cart contents of a user';

-- 
-- Dumping data for table `jos_vm_cart`
-- 

INSERT INTO `jos_vm_cart` VALUES (62, 'a:3:{s:3:"idx";i:2;i:0;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:1:"3";s:9:"parent_id";s:1:"3";s:11:"category_id";i:0;s:11:"description";s:0:"";}i:1;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"11";s:9:"parent_id";s:2:"11";s:11:"category_id";i:0;s:11:"description";s:0:"";}}', '2013-06-06 08:37:18');
INSERT INTO `jos_vm_cart` VALUES (63, 'a:2:{s:3:"idx";i:1;i:0;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"43";s:9:"parent_id";s:2:"43";s:11:"category_id";i:0;s:11:"description";s:0:"";}}', '2013-06-06 02:20:38');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_category`
-- 

CREATE TABLE `jos_vm_category` (
  `category_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `category_name` varchar(128) NOT NULL default '',
  `category_description` text,
  `category_thumb_image` varchar(255) default NULL,
  `category_full_image` varchar(255) default NULL,
  `category_publish` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `category_browsepage` varchar(255) NOT NULL default 'browse_1',
  `products_per_row` tinyint(2) NOT NULL default '1',
  `category_flypage` varchar(255) default NULL,
  `list_order` int(11) default NULL,
  PRIMARY KEY  (`category_id`),
  KEY `idx_category_vendor_id` (`vendor_id`),
  KEY `idx_category_name` (`category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here' AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `jos_vm_category`
-- 

INSERT INTO `jos_vm_category` VALUES (1, 1, 'CITIZEN -  Chính Hãng', '', '', '', 'Y', 1370418558, 1370418874, 'browse_1', 1, 'flypage.tpl', 1);
INSERT INTO `jos_vm_category` VALUES (2, 1, 'Promaster-Chuyên Dụng', '', '', '', 'Y', 1370418619, 1370418619, 'managed', 1, 'flypage.tpl', 1);
INSERT INTO `jos_vm_category` VALUES (3, 1, 'Quartz - chạy pin', '', '', '', 'Y', 1370418671, 1370418671, 'managed', 1, 'flypage.tpl', 2);
INSERT INTO `jos_vm_category` VALUES (4, 1, 'Eco-Drive - năng lượng ánh sáng', '', '', '', 'Y', 1370418701, 1370418701, 'managed', 1, 'flypage.tpl', 3);
INSERT INTO `jos_vm_category` VALUES (5, 1, 'CASIO - Chính Hãng', '', '', '', 'Y', 1370418835, 1370418835, 'browse_1', 1, 'flypage.tpl', 2);
INSERT INTO `jos_vm_category` VALUES (6, 1, 'G-Shock - siêu bền, cá tính', '', '', '', 'Y', 1370418861, 1370418861, 'managed', 1, 'flypage.tpl', 1);
INSERT INTO `jos_vm_category` VALUES (7, 1, 'Beside - sang trọng, thanh lịch', '', '', '', 'Y', 1370418897, 1370418897, 'managed', 1, 'flypage.tpl', 2);
INSERT INTO `jos_vm_category` VALUES (8, 1, 'Baby-G - siêu bền, dễ thương', '', '', '', 'Y', 1370418926, 1370418926, 'managed', 1, 'flypage.tpl', 3);
INSERT INTO `jos_vm_category` VALUES (9, 1, 'TITAN - Chính Hãng', '', '', '', 'Y', 1370418978, 1370418978, 'browse_1', 1, 'flypage.tpl', 3);
INSERT INTO `jos_vm_category` VALUES (10, 1, 'Automatic - tự động', '', '', '', 'Y', 1370419001, 1370419001, 'managed', 1, 'flypage.tpl', 1);
INSERT INTO `jos_vm_category` VALUES (11, 1, 'Classic - đơn giản cổ điển', '', '', '', 'Y', 1370419023, 1370419023, 'managed', 1, 'flypage.tpl', 2);
INSERT INTO `jos_vm_category` VALUES (12, 1, 'Edge - siêu mỏng', '', '', '', 'Y', 1370419044, 1370419044, 'managed', 1, 'flypage.tpl', 3);
INSERT INTO `jos_vm_category` VALUES (13, 1, 'SEIKO - Chính Hãng', '', '', '', 'Y', 1370419115, 1370419161, 'browse_1', 1, 'flypage.tpl', 4);
INSERT INTO `jos_vm_category` VALUES (14, 1, 'Premier - cao cấp', '', '', '', 'Y', 1370419186, 1370419186, 'managed', 1, 'flypage.tpl', 1);
INSERT INTO `jos_vm_category` VALUES (15, 1, 'Presage - tự động cao cấp', '', '', '', 'Y', 1370419201, 1370419201, 'managed', 1, 'flypage.tpl', 2);
INSERT INTO `jos_vm_category` VALUES (16, 1, 'Solar - năng lượng ánh sáng', '', '', '', 'Y', 1370419219, 1370419219, 'managed', 1, 'flypage.tpl', 3);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_category_xref`
-- 

CREATE TABLE `jos_vm_category_xref` (
  `category_parent_id` int(11) NOT NULL default '0',
  `category_child_id` int(11) NOT NULL default '0',
  `category_list` int(11) default NULL,
  PRIMARY KEY  (`category_child_id`),
  KEY `category_xref_category_parent_id` (`category_parent_id`),
  KEY `idx_category_xref_category_list` (`category_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';

-- 
-- Dumping data for table `jos_vm_category_xref`
-- 

INSERT INTO `jos_vm_category_xref` VALUES (0, 1, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (1, 2, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (1, 3, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (1, 4, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 5, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (5, 6, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (5, 7, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (5, 8, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 9, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (9, 10, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (9, 11, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (9, 12, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 13, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (13, 14, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (13, 15, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (13, 16, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_country`
-- 

CREATE TABLE `jos_vm_country` (
  `country_id` int(11) NOT NULL auto_increment,
  `zone_id` int(11) NOT NULL default '1',
  `country_name` varchar(64) default NULL,
  `country_3_code` char(3) default NULL,
  `country_2_code` char(2) default NULL,
  PRIMARY KEY  (`country_id`),
  KEY `idx_country_name` (`country_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Country records' AUTO_INCREMENT=246 ;

-- 
-- Dumping data for table `jos_vm_country`
-- 

INSERT INTO `jos_vm_country` VALUES (1, 1, 'Afghanistan', 'AFG', 'AF');
INSERT INTO `jos_vm_country` VALUES (2, 1, 'Albania', 'ALB', 'AL');
INSERT INTO `jos_vm_country` VALUES (3, 1, 'Algeria', 'DZA', 'DZ');
INSERT INTO `jos_vm_country` VALUES (4, 1, 'American Samoa', 'ASM', 'AS');
INSERT INTO `jos_vm_country` VALUES (5, 1, 'Andorra', 'AND', 'AD');
INSERT INTO `jos_vm_country` VALUES (6, 1, 'Angola', 'AGO', 'AO');
INSERT INTO `jos_vm_country` VALUES (7, 1, 'Anguilla', 'AIA', 'AI');
INSERT INTO `jos_vm_country` VALUES (8, 1, 'Antarctica', 'ATA', 'AQ');
INSERT INTO `jos_vm_country` VALUES (9, 1, 'Antigua and Barbuda', 'ATG', 'AG');
INSERT INTO `jos_vm_country` VALUES (10, 1, 'Argentina', 'ARG', 'AR');
INSERT INTO `jos_vm_country` VALUES (11, 1, 'Armenia', 'ARM', 'AM');
INSERT INTO `jos_vm_country` VALUES (12, 1, 'Aruba', 'ABW', 'AW');
INSERT INTO `jos_vm_country` VALUES (13, 1, 'Australia', 'AUS', 'AU');
INSERT INTO `jos_vm_country` VALUES (14, 1, 'Austria', 'AUT', 'AT');
INSERT INTO `jos_vm_country` VALUES (15, 1, 'Azerbaijan', 'AZE', 'AZ');
INSERT INTO `jos_vm_country` VALUES (16, 1, 'Bahamas', 'BHS', 'BS');
INSERT INTO `jos_vm_country` VALUES (17, 1, 'Bahrain', 'BHR', 'BH');
INSERT INTO `jos_vm_country` VALUES (18, 1, 'Bangladesh', 'BGD', 'BD');
INSERT INTO `jos_vm_country` VALUES (19, 1, 'Barbados', 'BRB', 'BB');
INSERT INTO `jos_vm_country` VALUES (20, 1, 'Belarus', 'BLR', 'BY');
INSERT INTO `jos_vm_country` VALUES (21, 1, 'Belgium', 'BEL', 'BE');
INSERT INTO `jos_vm_country` VALUES (22, 1, 'Belize', 'BLZ', 'BZ');
INSERT INTO `jos_vm_country` VALUES (23, 1, 'Benin', 'BEN', 'BJ');
INSERT INTO `jos_vm_country` VALUES (24, 1, 'Bermuda', 'BMU', 'BM');
INSERT INTO `jos_vm_country` VALUES (25, 1, 'Bhutan', 'BTN', 'BT');
INSERT INTO `jos_vm_country` VALUES (26, 1, 'Bolivia', 'BOL', 'BO');
INSERT INTO `jos_vm_country` VALUES (27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA');
INSERT INTO `jos_vm_country` VALUES (28, 1, 'Botswana', 'BWA', 'BW');
INSERT INTO `jos_vm_country` VALUES (29, 1, 'Bouvet Island', 'BVT', 'BV');
INSERT INTO `jos_vm_country` VALUES (30, 1, 'Brazil', 'BRA', 'BR');
INSERT INTO `jos_vm_country` VALUES (31, 1, 'British Indian Ocean Territory', 'IOT', 'IO');
INSERT INTO `jos_vm_country` VALUES (32, 1, 'Brunei Darussalam', 'BRN', 'BN');
INSERT INTO `jos_vm_country` VALUES (33, 1, 'Bulgaria', 'BGR', 'BG');
INSERT INTO `jos_vm_country` VALUES (34, 1, 'Burkina Faso', 'BFA', 'BF');
INSERT INTO `jos_vm_country` VALUES (35, 1, 'Burundi', 'BDI', 'BI');
INSERT INTO `jos_vm_country` VALUES (36, 1, 'Cambodia', 'KHM', 'KH');
INSERT INTO `jos_vm_country` VALUES (37, 1, 'Cameroon', 'CMR', 'CM');
INSERT INTO `jos_vm_country` VALUES (38, 1, 'Canada', 'CAN', 'CA');
INSERT INTO `jos_vm_country` VALUES (39, 1, 'Cape Verde', 'CPV', 'CV');
INSERT INTO `jos_vm_country` VALUES (40, 1, 'Cayman Islands', 'CYM', 'KY');
INSERT INTO `jos_vm_country` VALUES (41, 1, 'Central African Republic', 'CAF', 'CF');
INSERT INTO `jos_vm_country` VALUES (42, 1, 'Chad', 'TCD', 'TD');
INSERT INTO `jos_vm_country` VALUES (43, 1, 'Chile', 'CHL', 'CL');
INSERT INTO `jos_vm_country` VALUES (44, 1, 'China', 'CHN', 'CN');
INSERT INTO `jos_vm_country` VALUES (45, 1, 'Christmas Island', 'CXR', 'CX');
INSERT INTO `jos_vm_country` VALUES (46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC');
INSERT INTO `jos_vm_country` VALUES (47, 1, 'Colombia', 'COL', 'CO');
INSERT INTO `jos_vm_country` VALUES (48, 1, 'Comoros', 'COM', 'KM');
INSERT INTO `jos_vm_country` VALUES (49, 1, 'Congo', 'COG', 'CG');
INSERT INTO `jos_vm_country` VALUES (50, 1, 'Cook Islands', 'COK', 'CK');
INSERT INTO `jos_vm_country` VALUES (51, 1, 'Costa Rica', 'CRI', 'CR');
INSERT INTO `jos_vm_country` VALUES (52, 1, 'Cote D''Ivoire', 'CIV', 'CI');
INSERT INTO `jos_vm_country` VALUES (53, 1, 'Croatia', 'HRV', 'HR');
INSERT INTO `jos_vm_country` VALUES (54, 1, 'Cuba', 'CUB', 'CU');
INSERT INTO `jos_vm_country` VALUES (55, 1, 'Cyprus', 'CYP', 'CY');
INSERT INTO `jos_vm_country` VALUES (56, 1, 'Czech Republic', 'CZE', 'CZ');
INSERT INTO `jos_vm_country` VALUES (57, 1, 'Denmark', 'DNK', 'DK');
INSERT INTO `jos_vm_country` VALUES (58, 1, 'Djibouti', 'DJI', 'DJ');
INSERT INTO `jos_vm_country` VALUES (59, 1, 'Dominica', 'DMA', 'DM');
INSERT INTO `jos_vm_country` VALUES (60, 1, 'Dominican Republic', 'DOM', 'DO');
INSERT INTO `jos_vm_country` VALUES (61, 1, 'East Timor', 'TMP', 'TP');
INSERT INTO `jos_vm_country` VALUES (62, 1, 'Ecuador', 'ECU', 'EC');
INSERT INTO `jos_vm_country` VALUES (63, 1, 'Egypt', 'EGY', 'EG');
INSERT INTO `jos_vm_country` VALUES (64, 1, 'El Salvador', 'SLV', 'SV');
INSERT INTO `jos_vm_country` VALUES (65, 1, 'Equatorial Guinea', 'GNQ', 'GQ');
INSERT INTO `jos_vm_country` VALUES (66, 1, 'Eritrea', 'ERI', 'ER');
INSERT INTO `jos_vm_country` VALUES (67, 1, 'Estonia', 'EST', 'EE');
INSERT INTO `jos_vm_country` VALUES (68, 1, 'Ethiopia', 'ETH', 'ET');
INSERT INTO `jos_vm_country` VALUES (69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK');
INSERT INTO `jos_vm_country` VALUES (70, 1, 'Faroe Islands', 'FRO', 'FO');
INSERT INTO `jos_vm_country` VALUES (71, 1, 'Fiji', 'FJI', 'FJ');
INSERT INTO `jos_vm_country` VALUES (72, 1, 'Finland', 'FIN', 'FI');
INSERT INTO `jos_vm_country` VALUES (73, 1, 'France', 'FRA', 'FR');
INSERT INTO `jos_vm_country` VALUES (74, 1, 'France, Metropolitan', 'FXX', 'FX');
INSERT INTO `jos_vm_country` VALUES (75, 1, 'French Guiana', 'GUF', 'GF');
INSERT INTO `jos_vm_country` VALUES (76, 1, 'French Polynesia', 'PYF', 'PF');
INSERT INTO `jos_vm_country` VALUES (77, 1, 'French Southern Territories', 'ATF', 'TF');
INSERT INTO `jos_vm_country` VALUES (78, 1, 'Gabon', 'GAB', 'GA');
INSERT INTO `jos_vm_country` VALUES (79, 1, 'Gambia', 'GMB', 'GM');
INSERT INTO `jos_vm_country` VALUES (80, 1, 'Georgia', 'GEO', 'GE');
INSERT INTO `jos_vm_country` VALUES (81, 1, 'Germany', 'DEU', 'DE');
INSERT INTO `jos_vm_country` VALUES (82, 1, 'Ghana', 'GHA', 'GH');
INSERT INTO `jos_vm_country` VALUES (83, 1, 'Gibraltar', 'GIB', 'GI');
INSERT INTO `jos_vm_country` VALUES (84, 1, 'Greece', 'GRC', 'GR');
INSERT INTO `jos_vm_country` VALUES (85, 1, 'Greenland', 'GRL', 'GL');
INSERT INTO `jos_vm_country` VALUES (86, 1, 'Grenada', 'GRD', 'GD');
INSERT INTO `jos_vm_country` VALUES (87, 1, 'Guadeloupe', 'GLP', 'GP');
INSERT INTO `jos_vm_country` VALUES (88, 1, 'Guam', 'GUM', 'GU');
INSERT INTO `jos_vm_country` VALUES (89, 1, 'Guatemala', 'GTM', 'GT');
INSERT INTO `jos_vm_country` VALUES (90, 1, 'Guinea', 'GIN', 'GN');
INSERT INTO `jos_vm_country` VALUES (91, 1, 'Guinea-bissau', 'GNB', 'GW');
INSERT INTO `jos_vm_country` VALUES (92, 1, 'Guyana', 'GUY', 'GY');
INSERT INTO `jos_vm_country` VALUES (93, 1, 'Haiti', 'HTI', 'HT');
INSERT INTO `jos_vm_country` VALUES (94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM');
INSERT INTO `jos_vm_country` VALUES (95, 1, 'Honduras', 'HND', 'HN');
INSERT INTO `jos_vm_country` VALUES (96, 1, 'Hong Kong', 'HKG', 'HK');
INSERT INTO `jos_vm_country` VALUES (97, 1, 'Hungary', 'HUN', 'HU');
INSERT INTO `jos_vm_country` VALUES (98, 1, 'Iceland', 'ISL', 'IS');
INSERT INTO `jos_vm_country` VALUES (99, 1, 'India', 'IND', 'IN');
INSERT INTO `jos_vm_country` VALUES (100, 1, 'Indonesia', 'IDN', 'ID');
INSERT INTO `jos_vm_country` VALUES (101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR');
INSERT INTO `jos_vm_country` VALUES (102, 1, 'Iraq', 'IRQ', 'IQ');
INSERT INTO `jos_vm_country` VALUES (103, 1, 'Ireland', 'IRL', 'IE');
INSERT INTO `jos_vm_country` VALUES (104, 1, 'Israel', 'ISR', 'IL');
INSERT INTO `jos_vm_country` VALUES (105, 1, 'Italy', 'ITA', 'IT');
INSERT INTO `jos_vm_country` VALUES (106, 1, 'Jamaica', 'JAM', 'JM');
INSERT INTO `jos_vm_country` VALUES (107, 1, 'Japan', 'JPN', 'JP');
INSERT INTO `jos_vm_country` VALUES (108, 1, 'Jordan', 'JOR', 'JO');
INSERT INTO `jos_vm_country` VALUES (109, 1, 'Kazakhstan', 'KAZ', 'KZ');
INSERT INTO `jos_vm_country` VALUES (110, 1, 'Kenya', 'KEN', 'KE');
INSERT INTO `jos_vm_country` VALUES (111, 1, 'Kiribati', 'KIR', 'KI');
INSERT INTO `jos_vm_country` VALUES (112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP');
INSERT INTO `jos_vm_country` VALUES (113, 1, 'Korea, Republic of', 'KOR', 'KR');
INSERT INTO `jos_vm_country` VALUES (114, 1, 'Kuwait', 'KWT', 'KW');
INSERT INTO `jos_vm_country` VALUES (115, 1, 'Kyrgyzstan', 'KGZ', 'KG');
INSERT INTO `jos_vm_country` VALUES (116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA');
INSERT INTO `jos_vm_country` VALUES (117, 1, 'Latvia', 'LVA', 'LV');
INSERT INTO `jos_vm_country` VALUES (118, 1, 'Lebanon', 'LBN', 'LB');
INSERT INTO `jos_vm_country` VALUES (119, 1, 'Lesotho', 'LSO', 'LS');
INSERT INTO `jos_vm_country` VALUES (120, 1, 'Liberia', 'LBR', 'LR');
INSERT INTO `jos_vm_country` VALUES (121, 1, 'Libyan Arab Jamahiriya', 'LBY', 'LY');
INSERT INTO `jos_vm_country` VALUES (122, 1, 'Liechtenstein', 'LIE', 'LI');
INSERT INTO `jos_vm_country` VALUES (123, 1, 'Lithuania', 'LTU', 'LT');
INSERT INTO `jos_vm_country` VALUES (124, 1, 'Luxembourg', 'LUX', 'LU');
INSERT INTO `jos_vm_country` VALUES (125, 1, 'Macau', 'MAC', 'MO');
INSERT INTO `jos_vm_country` VALUES (126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK');
INSERT INTO `jos_vm_country` VALUES (127, 1, 'Madagascar', 'MDG', 'MG');
INSERT INTO `jos_vm_country` VALUES (128, 1, 'Malawi', 'MWI', 'MW');
INSERT INTO `jos_vm_country` VALUES (129, 1, 'Malaysia', 'MYS', 'MY');
INSERT INTO `jos_vm_country` VALUES (130, 1, 'Maldives', 'MDV', 'MV');
INSERT INTO `jos_vm_country` VALUES (131, 1, 'Mali', 'MLI', 'ML');
INSERT INTO `jos_vm_country` VALUES (132, 1, 'Malta', 'MLT', 'MT');
INSERT INTO `jos_vm_country` VALUES (133, 1, 'Marshall Islands', 'MHL', 'MH');
INSERT INTO `jos_vm_country` VALUES (134, 1, 'Martinique', 'MTQ', 'MQ');
INSERT INTO `jos_vm_country` VALUES (135, 1, 'Mauritania', 'MRT', 'MR');
INSERT INTO `jos_vm_country` VALUES (136, 1, 'Mauritius', 'MUS', 'MU');
INSERT INTO `jos_vm_country` VALUES (137, 1, 'Mayotte', 'MYT', 'YT');
INSERT INTO `jos_vm_country` VALUES (138, 1, 'Mexico', 'MEX', 'MX');
INSERT INTO `jos_vm_country` VALUES (139, 1, 'Micronesia, Federated States of', 'FSM', 'FM');
INSERT INTO `jos_vm_country` VALUES (140, 1, 'Moldova, Republic of', 'MDA', 'MD');
INSERT INTO `jos_vm_country` VALUES (141, 1, 'Monaco', 'MCO', 'MC');
INSERT INTO `jos_vm_country` VALUES (142, 1, 'Mongolia', 'MNG', 'MN');
INSERT INTO `jos_vm_country` VALUES (143, 1, 'Montserrat', 'MSR', 'MS');
INSERT INTO `jos_vm_country` VALUES (144, 1, 'Morocco', 'MAR', 'MA');
INSERT INTO `jos_vm_country` VALUES (145, 1, 'Mozambique', 'MOZ', 'MZ');
INSERT INTO `jos_vm_country` VALUES (146, 1, 'Myanmar', 'MMR', 'MM');
INSERT INTO `jos_vm_country` VALUES (147, 1, 'Namibia', 'NAM', 'NA');
INSERT INTO `jos_vm_country` VALUES (148, 1, 'Nauru', 'NRU', 'NR');
INSERT INTO `jos_vm_country` VALUES (149, 1, 'Nepal', 'NPL', 'NP');
INSERT INTO `jos_vm_country` VALUES (150, 1, 'Netherlands', 'NLD', 'NL');
INSERT INTO `jos_vm_country` VALUES (151, 1, 'Netherlands Antilles', 'ANT', 'AN');
INSERT INTO `jos_vm_country` VALUES (152, 1, 'New Caledonia', 'NCL', 'NC');
INSERT INTO `jos_vm_country` VALUES (153, 1, 'New Zealand', 'NZL', 'NZ');
INSERT INTO `jos_vm_country` VALUES (154, 1, 'Nicaragua', 'NIC', 'NI');
INSERT INTO `jos_vm_country` VALUES (155, 1, 'Niger', 'NER', 'NE');
INSERT INTO `jos_vm_country` VALUES (156, 1, 'Nigeria', 'NGA', 'NG');
INSERT INTO `jos_vm_country` VALUES (157, 1, 'Niue', 'NIU', 'NU');
INSERT INTO `jos_vm_country` VALUES (158, 1, 'Norfolk Island', 'NFK', 'NF');
INSERT INTO `jos_vm_country` VALUES (159, 1, 'Northern Mariana Islands', 'MNP', 'MP');
INSERT INTO `jos_vm_country` VALUES (160, 1, 'Norway', 'NOR', 'NO');
INSERT INTO `jos_vm_country` VALUES (161, 1, 'Oman', 'OMN', 'OM');
INSERT INTO `jos_vm_country` VALUES (162, 1, 'Pakistan', 'PAK', 'PK');
INSERT INTO `jos_vm_country` VALUES (163, 1, 'Palau', 'PLW', 'PW');
INSERT INTO `jos_vm_country` VALUES (164, 1, 'Panama', 'PAN', 'PA');
INSERT INTO `jos_vm_country` VALUES (165, 1, 'Papua New Guinea', 'PNG', 'PG');
INSERT INTO `jos_vm_country` VALUES (166, 1, 'Paraguay', 'PRY', 'PY');
INSERT INTO `jos_vm_country` VALUES (167, 1, 'Peru', 'PER', 'PE');
INSERT INTO `jos_vm_country` VALUES (168, 1, 'Philippines', 'PHL', 'PH');
INSERT INTO `jos_vm_country` VALUES (169, 1, 'Pitcairn', 'PCN', 'PN');
INSERT INTO `jos_vm_country` VALUES (170, 1, 'Poland', 'POL', 'PL');
INSERT INTO `jos_vm_country` VALUES (171, 1, 'Portugal', 'PRT', 'PT');
INSERT INTO `jos_vm_country` VALUES (172, 1, 'Puerto Rico', 'PRI', 'PR');
INSERT INTO `jos_vm_country` VALUES (173, 1, 'Qatar', 'QAT', 'QA');
INSERT INTO `jos_vm_country` VALUES (174, 1, 'Reunion', 'REU', 'RE');
INSERT INTO `jos_vm_country` VALUES (175, 1, 'Romania', 'ROM', 'RO');
INSERT INTO `jos_vm_country` VALUES (176, 1, 'Russian Federation', 'RUS', 'RU');
INSERT INTO `jos_vm_country` VALUES (177, 1, 'Rwanda', 'RWA', 'RW');
INSERT INTO `jos_vm_country` VALUES (178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN');
INSERT INTO `jos_vm_country` VALUES (179, 1, 'Saint Lucia', 'LCA', 'LC');
INSERT INTO `jos_vm_country` VALUES (180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC');
INSERT INTO `jos_vm_country` VALUES (181, 1, 'Samoa', 'WSM', 'WS');
INSERT INTO `jos_vm_country` VALUES (182, 1, 'San Marino', 'SMR', 'SM');
INSERT INTO `jos_vm_country` VALUES (183, 1, 'Sao Tome and Principe', 'STP', 'ST');
INSERT INTO `jos_vm_country` VALUES (184, 1, 'Saudi Arabia', 'SAU', 'SA');
INSERT INTO `jos_vm_country` VALUES (185, 1, 'Senegal', 'SEN', 'SN');
INSERT INTO `jos_vm_country` VALUES (186, 1, 'Seychelles', 'SYC', 'SC');
INSERT INTO `jos_vm_country` VALUES (187, 1, 'Sierra Leone', 'SLE', 'SL');
INSERT INTO `jos_vm_country` VALUES (188, 1, 'Singapore', 'SGP', 'SG');
INSERT INTO `jos_vm_country` VALUES (189, 1, 'Slovakia (Slovak Republic)', 'SVK', 'SK');
INSERT INTO `jos_vm_country` VALUES (190, 1, 'Slovenia', 'SVN', 'SI');
INSERT INTO `jos_vm_country` VALUES (191, 1, 'Solomon Islands', 'SLB', 'SB');
INSERT INTO `jos_vm_country` VALUES (192, 1, 'Somalia', 'SOM', 'SO');
INSERT INTO `jos_vm_country` VALUES (193, 1, 'South Africa', 'ZAF', 'ZA');
INSERT INTO `jos_vm_country` VALUES (194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS');
INSERT INTO `jos_vm_country` VALUES (195, 1, 'Spain', 'ESP', 'ES');
INSERT INTO `jos_vm_country` VALUES (196, 1, 'Sri Lanka', 'LKA', 'LK');
INSERT INTO `jos_vm_country` VALUES (197, 1, 'St. Helena', 'SHN', 'SH');
INSERT INTO `jos_vm_country` VALUES (198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM');
INSERT INTO `jos_vm_country` VALUES (199, 1, 'Sudan', 'SDN', 'SD');
INSERT INTO `jos_vm_country` VALUES (200, 1, 'Suriname', 'SUR', 'SR');
INSERT INTO `jos_vm_country` VALUES (201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ');
INSERT INTO `jos_vm_country` VALUES (202, 1, 'Swaziland', 'SWZ', 'SZ');
INSERT INTO `jos_vm_country` VALUES (203, 1, 'Sweden', 'SWE', 'SE');
INSERT INTO `jos_vm_country` VALUES (204, 1, 'Switzerland', 'CHE', 'CH');
INSERT INTO `jos_vm_country` VALUES (205, 1, 'Syrian Arab Republic', 'SYR', 'SY');
INSERT INTO `jos_vm_country` VALUES (206, 1, 'Taiwan', 'TWN', 'TW');
INSERT INTO `jos_vm_country` VALUES (207, 1, 'Tajikistan', 'TJK', 'TJ');
INSERT INTO `jos_vm_country` VALUES (208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ');
INSERT INTO `jos_vm_country` VALUES (209, 1, 'Thailand', 'THA', 'TH');
INSERT INTO `jos_vm_country` VALUES (210, 1, 'Togo', 'TGO', 'TG');
INSERT INTO `jos_vm_country` VALUES (211, 1, 'Tokelau', 'TKL', 'TK');
INSERT INTO `jos_vm_country` VALUES (212, 1, 'Tonga', 'TON', 'TO');
INSERT INTO `jos_vm_country` VALUES (213, 1, 'Trinidad and Tobago', 'TTO', 'TT');
INSERT INTO `jos_vm_country` VALUES (214, 1, 'Tunisia', 'TUN', 'TN');
INSERT INTO `jos_vm_country` VALUES (215, 1, 'Turkey', 'TUR', 'TR');
INSERT INTO `jos_vm_country` VALUES (216, 1, 'Turkmenistan', 'TKM', 'TM');
INSERT INTO `jos_vm_country` VALUES (217, 1, 'Turks and Caicos Islands', 'TCA', 'TC');
INSERT INTO `jos_vm_country` VALUES (218, 1, 'Tuvalu', 'TUV', 'TV');
INSERT INTO `jos_vm_country` VALUES (219, 1, 'Uganda', 'UGA', 'UG');
INSERT INTO `jos_vm_country` VALUES (220, 1, 'Ukraine', 'UKR', 'UA');
INSERT INTO `jos_vm_country` VALUES (221, 1, 'United Arab Emirates', 'ARE', 'AE');
INSERT INTO `jos_vm_country` VALUES (222, 1, 'United Kingdom', 'GBR', 'GB');
INSERT INTO `jos_vm_country` VALUES (223, 1, 'United States', 'USA', 'US');
INSERT INTO `jos_vm_country` VALUES (224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM');
INSERT INTO `jos_vm_country` VALUES (225, 1, 'Uruguay', 'URY', 'UY');
INSERT INTO `jos_vm_country` VALUES (226, 1, 'Uzbekistan', 'UZB', 'UZ');
INSERT INTO `jos_vm_country` VALUES (227, 1, 'Vanuatu', 'VUT', 'VU');
INSERT INTO `jos_vm_country` VALUES (228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA');
INSERT INTO `jos_vm_country` VALUES (229, 1, 'Venezuela', 'VEN', 'VE');
INSERT INTO `jos_vm_country` VALUES (230, 1, 'Viet Nam', 'VNM', 'VN');
INSERT INTO `jos_vm_country` VALUES (231, 1, 'Virgin Islands (British)', 'VGB', 'VG');
INSERT INTO `jos_vm_country` VALUES (232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI');
INSERT INTO `jos_vm_country` VALUES (233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF');
INSERT INTO `jos_vm_country` VALUES (234, 1, 'Western Sahara', 'ESH', 'EH');
INSERT INTO `jos_vm_country` VALUES (235, 1, 'Yemen', 'YEM', 'YE');
INSERT INTO `jos_vm_country` VALUES (236, 1, 'Serbia', 'SRB', 'RS');
INSERT INTO `jos_vm_country` VALUES (237, 1, 'The Democratic Republic of Congo', 'DRC', 'DC');
INSERT INTO `jos_vm_country` VALUES (238, 1, 'Zambia', 'ZMB', 'ZM');
INSERT INTO `jos_vm_country` VALUES (239, 1, 'Zimbabwe', 'ZWE', 'ZW');
INSERT INTO `jos_vm_country` VALUES (240, 1, 'East Timor', 'XET', 'XE');
INSERT INTO `jos_vm_country` VALUES (241, 1, 'Jersey', 'XJE', 'XJ');
INSERT INTO `jos_vm_country` VALUES (242, 1, 'St. Barthelemy', 'XSB', 'XB');
INSERT INTO `jos_vm_country` VALUES (243, 1, 'St. Eustatius', 'XSE', 'XU');
INSERT INTO `jos_vm_country` VALUES (244, 1, 'Canary Islands', 'XCA', 'XC');
INSERT INTO `jos_vm_country` VALUES (245, 1, 'Montenegro', 'MNE', 'ME');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_coupons`
-- 

CREATE TABLE `jos_vm_coupons` (
  `coupon_id` int(16) NOT NULL auto_increment,
  `coupon_code` varchar(32) NOT NULL default '',
  `percent_or_total` enum('percent','total') NOT NULL default 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL default 'gift',
  `coupon_value` decimal(12,2) NOT NULL default '0.00',
  PRIMARY KEY  (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_coupons`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_creditcard`
-- 

CREATE TABLE `jos_vm_creditcard` (
  `creditcard_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `creditcard_name` varchar(70) NOT NULL default '',
  `creditcard_code` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`creditcard_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store credit card types' AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `jos_vm_creditcard`
-- 

INSERT INTO `jos_vm_creditcard` VALUES (1, 1, 'Visa', 'VISA');
INSERT INTO `jos_vm_creditcard` VALUES (2, 1, 'MasterCard', 'MC');
INSERT INTO `jos_vm_creditcard` VALUES (3, 1, 'American Express', 'amex');
INSERT INTO `jos_vm_creditcard` VALUES (4, 1, 'Discover Card', 'discover');
INSERT INTO `jos_vm_creditcard` VALUES (5, 1, 'Diners Club', 'diners');
INSERT INTO `jos_vm_creditcard` VALUES (6, 1, 'JCB', 'jcb');
INSERT INTO `jos_vm_creditcard` VALUES (7, 1, 'Australian Bankcard', 'australian_bc');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_csv`
-- 

CREATE TABLE `jos_vm_csv` (
  `field_id` int(11) NOT NULL auto_increment,
  `field_name` varchar(128) NOT NULL default '',
  `field_default_value` text,
  `field_ordering` int(3) NOT NULL default '0',
  `field_required` char(1) default 'N',
  PRIMARY KEY  (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds all fields which are used on CVS Ex-/Import' AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `jos_vm_csv`
-- 

INSERT INTO `jos_vm_csv` VALUES (1, 'product_sku', '', 1, 'Y');
INSERT INTO `jos_vm_csv` VALUES (2, 'product_s_desc', '', 5, 'N');
INSERT INTO `jos_vm_csv` VALUES (3, 'product_desc', '', 6, 'N');
INSERT INTO `jos_vm_csv` VALUES (4, 'product_thumb_image', '', 7, 'N');
INSERT INTO `jos_vm_csv` VALUES (5, 'product_full_image', '', 8, 'N');
INSERT INTO `jos_vm_csv` VALUES (6, 'product_weight', '', 9, 'N');
INSERT INTO `jos_vm_csv` VALUES (7, 'product_weight_uom', 'KG', 10, 'N');
INSERT INTO `jos_vm_csv` VALUES (8, 'product_length', '', 11, 'N');
INSERT INTO `jos_vm_csv` VALUES (9, 'product_width', '', 12, 'N');
INSERT INTO `jos_vm_csv` VALUES (10, 'product_height', '', 13, 'N');
INSERT INTO `jos_vm_csv` VALUES (11, 'product_lwh_uom', '', 14, 'N');
INSERT INTO `jos_vm_csv` VALUES (12, 'product_in_stock', '0', 15, 'N');
INSERT INTO `jos_vm_csv` VALUES (13, 'product_available_date', '', 16, 'N');
INSERT INTO `jos_vm_csv` VALUES (14, 'product_discount_id', '', 17, 'N');
INSERT INTO `jos_vm_csv` VALUES (15, 'product_name', '', 2, 'Y');
INSERT INTO `jos_vm_csv` VALUES (16, 'product_price', '', 4, 'N');
INSERT INTO `jos_vm_csv` VALUES (17, 'category_path', '', 3, 'Y');
INSERT INTO `jos_vm_csv` VALUES (18, 'manufacturer_id', '', 18, 'N');
INSERT INTO `jos_vm_csv` VALUES (19, 'product_tax_id', '', 19, 'N');
INSERT INTO `jos_vm_csv` VALUES (20, 'product_sales', '', 20, 'N');
INSERT INTO `jos_vm_csv` VALUES (21, 'product_parent_id', '0', 21, 'N');
INSERT INTO `jos_vm_csv` VALUES (22, 'attribute', '', 22, 'N');
INSERT INTO `jos_vm_csv` VALUES (23, 'custom_attribute', '', 23, 'N');
INSERT INTO `jos_vm_csv` VALUES (24, 'attributes', '', 24, 'N');
INSERT INTO `jos_vm_csv` VALUES (25, 'attribute_values', '', 25, 'N');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_currency`
-- 

CREATE TABLE `jos_vm_currency` (
  `currency_id` int(11) NOT NULL auto_increment,
  `currency_name` varchar(64) default NULL,
  `currency_code` char(3) default NULL,
  PRIMARY KEY  (`currency_id`),
  KEY `idx_currency_name` (`currency_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store currencies' AUTO_INCREMENT=159 ;

-- 
-- Dumping data for table `jos_vm_currency`
-- 

INSERT INTO `jos_vm_currency` VALUES (1, 'Andorran Peseta', 'ADP');
INSERT INTO `jos_vm_currency` VALUES (2, 'United Arab Emirates Dirham', 'AED');
INSERT INTO `jos_vm_currency` VALUES (3, 'Afghanistan Afghani', 'AFA');
INSERT INTO `jos_vm_currency` VALUES (4, 'Albanian Lek', 'ALL');
INSERT INTO `jos_vm_currency` VALUES (5, 'Netherlands Antillian Guilder', 'ANG');
INSERT INTO `jos_vm_currency` VALUES (6, 'Angolan Kwanza', 'AOK');
INSERT INTO `jos_vm_currency` VALUES (7, 'Argentine Peso', 'ARS');
INSERT INTO `jos_vm_currency` VALUES (9, 'Australian Dollar', 'AUD');
INSERT INTO `jos_vm_currency` VALUES (10, 'Aruban Florin', 'AWG');
INSERT INTO `jos_vm_currency` VALUES (11, 'Barbados Dollar', 'BBD');
INSERT INTO `jos_vm_currency` VALUES (12, 'Bangladeshi Taka', 'BDT');
INSERT INTO `jos_vm_currency` VALUES (14, 'Bulgarian Lev', 'BGL');
INSERT INTO `jos_vm_currency` VALUES (15, 'Bahraini Dinar', 'BHD');
INSERT INTO `jos_vm_currency` VALUES (16, 'Burundi Franc', 'BIF');
INSERT INTO `jos_vm_currency` VALUES (17, 'Bermudian Dollar', 'BMD');
INSERT INTO `jos_vm_currency` VALUES (18, 'Brunei Dollar', 'BND');
INSERT INTO `jos_vm_currency` VALUES (19, 'Bolivian Boliviano', 'BOB');
INSERT INTO `jos_vm_currency` VALUES (20, 'Brazilian Real', 'BRL');
INSERT INTO `jos_vm_currency` VALUES (21, 'Bahamian Dollar', 'BSD');
INSERT INTO `jos_vm_currency` VALUES (22, 'Bhutan Ngultrum', 'BTN');
INSERT INTO `jos_vm_currency` VALUES (23, 'Burma Kyat', 'BUK');
INSERT INTO `jos_vm_currency` VALUES (24, 'Botswanian Pula', 'BWP');
INSERT INTO `jos_vm_currency` VALUES (25, 'Belize Dollar', 'BZD');
INSERT INTO `jos_vm_currency` VALUES (26, 'Canadian Dollar', 'CAD');
INSERT INTO `jos_vm_currency` VALUES (27, 'Swiss Franc', 'CHF');
INSERT INTO `jos_vm_currency` VALUES (28, 'Chilean Unidades de Fomento', 'CLF');
INSERT INTO `jos_vm_currency` VALUES (29, 'Chilean Peso', 'CLP');
INSERT INTO `jos_vm_currency` VALUES (30, 'Yuan (Chinese) Renminbi', 'CNY');
INSERT INTO `jos_vm_currency` VALUES (31, 'Colombian Peso', 'COP');
INSERT INTO `jos_vm_currency` VALUES (32, 'Costa Rican Colon', 'CRC');
INSERT INTO `jos_vm_currency` VALUES (33, 'Czech Koruna', 'CZK');
INSERT INTO `jos_vm_currency` VALUES (34, 'Cuban Peso', 'CUP');
INSERT INTO `jos_vm_currency` VALUES (35, 'Cape Verde Escudo', 'CVE');
INSERT INTO `jos_vm_currency` VALUES (36, 'Cyprus Pound', 'CYP');
INSERT INTO `jos_vm_currency` VALUES (40, 'Danish Krone', 'DKK');
INSERT INTO `jos_vm_currency` VALUES (41, 'Dominican Peso', 'DOP');
INSERT INTO `jos_vm_currency` VALUES (42, 'Algerian Dinar', 'DZD');
INSERT INTO `jos_vm_currency` VALUES (43, 'Ecuador Sucre', 'ECS');
INSERT INTO `jos_vm_currency` VALUES (44, 'Egyptian Pound', 'EGP');
INSERT INTO `jos_vm_currency` VALUES (46, 'Ethiopian Birr', 'ETB');
INSERT INTO `jos_vm_currency` VALUES (47, 'Euro', 'EUR');
INSERT INTO `jos_vm_currency` VALUES (49, 'Fiji Dollar', 'FJD');
INSERT INTO `jos_vm_currency` VALUES (50, 'Falkland Islands Pound', 'FKP');
INSERT INTO `jos_vm_currency` VALUES (52, 'British Pound', 'GBP');
INSERT INTO `jos_vm_currency` VALUES (53, 'Ghanaian Cedi', 'GHC');
INSERT INTO `jos_vm_currency` VALUES (54, 'Gibraltar Pound', 'GIP');
INSERT INTO `jos_vm_currency` VALUES (55, 'Gambian Dalasi', 'GMD');
INSERT INTO `jos_vm_currency` VALUES (56, 'Guinea Franc', 'GNF');
INSERT INTO `jos_vm_currency` VALUES (58, 'Guatemalan Quetzal', 'GTQ');
INSERT INTO `jos_vm_currency` VALUES (59, 'Guinea-Bissau Peso', 'GWP');
INSERT INTO `jos_vm_currency` VALUES (60, 'Guyanan Dollar', 'GYD');
INSERT INTO `jos_vm_currency` VALUES (61, 'Hong Kong Dollar', 'HKD');
INSERT INTO `jos_vm_currency` VALUES (62, 'Honduran Lempira', 'HNL');
INSERT INTO `jos_vm_currency` VALUES (63, 'Haitian Gourde', 'HTG');
INSERT INTO `jos_vm_currency` VALUES (64, 'Hungarian Forint', 'HUF');
INSERT INTO `jos_vm_currency` VALUES (65, 'Indonesian Rupiah', 'IDR');
INSERT INTO `jos_vm_currency` VALUES (66, 'Irish Punt', 'IEP');
INSERT INTO `jos_vm_currency` VALUES (67, 'Israeli Shekel', 'ILS');
INSERT INTO `jos_vm_currency` VALUES (68, 'Indian Rupee', 'INR');
INSERT INTO `jos_vm_currency` VALUES (69, 'Iraqi Dinar', 'IQD');
INSERT INTO `jos_vm_currency` VALUES (70, 'Iranian Rial', 'IRR');
INSERT INTO `jos_vm_currency` VALUES (73, 'Jamaican Dollar', 'JMD');
INSERT INTO `jos_vm_currency` VALUES (74, 'Jordanian Dinar', 'JOD');
INSERT INTO `jos_vm_currency` VALUES (75, 'Japanese Yen', 'JPY');
INSERT INTO `jos_vm_currency` VALUES (76, 'Kenyan Shilling', 'KES');
INSERT INTO `jos_vm_currency` VALUES (77, 'Kampuchean (Cambodian) Riel', 'KHR');
INSERT INTO `jos_vm_currency` VALUES (78, 'Comoros Franc', 'KMF');
INSERT INTO `jos_vm_currency` VALUES (79, 'North Korean Won', 'KPW');
INSERT INTO `jos_vm_currency` VALUES (80, '(South) Korean Won', 'KRW');
INSERT INTO `jos_vm_currency` VALUES (81, 'Kuwaiti Dinar', 'KWD');
INSERT INTO `jos_vm_currency` VALUES (82, 'Cayman Islands Dollar', 'KYD');
INSERT INTO `jos_vm_currency` VALUES (83, 'Lao Kip', 'LAK');
INSERT INTO `jos_vm_currency` VALUES (84, 'Lebanese Pound', 'LBP');
INSERT INTO `jos_vm_currency` VALUES (85, 'Sri Lanka Rupee', 'LKR');
INSERT INTO `jos_vm_currency` VALUES (86, 'Liberian Dollar', 'LRD');
INSERT INTO `jos_vm_currency` VALUES (87, 'Lesotho Loti', 'LSL');
INSERT INTO `jos_vm_currency` VALUES (89, 'Libyan Dinar', 'LYD');
INSERT INTO `jos_vm_currency` VALUES (90, 'Moroccan Dirham', 'MAD');
INSERT INTO `jos_vm_currency` VALUES (91, 'Malagasy Franc', 'MGF');
INSERT INTO `jos_vm_currency` VALUES (92, 'Mongolian Tugrik', 'MNT');
INSERT INTO `jos_vm_currency` VALUES (93, 'Macau Pataca', 'MOP');
INSERT INTO `jos_vm_currency` VALUES (94, 'Mauritanian Ouguiya', 'MRO');
INSERT INTO `jos_vm_currency` VALUES (95, 'Maltese Lira', 'MTL');
INSERT INTO `jos_vm_currency` VALUES (96, 'Mauritius Rupee', 'MUR');
INSERT INTO `jos_vm_currency` VALUES (97, 'Maldive Rufiyaa', 'MVR');
INSERT INTO `jos_vm_currency` VALUES (98, 'Malawi Kwacha', 'MWK');
INSERT INTO `jos_vm_currency` VALUES (99, 'Mexican Peso', 'MXP');
INSERT INTO `jos_vm_currency` VALUES (100, 'Malaysian Ringgit', 'MYR');
INSERT INTO `jos_vm_currency` VALUES (101, 'Mozambique Metical', 'MZM');
INSERT INTO `jos_vm_currency` VALUES (102, 'Nigerian Naira', 'NGN');
INSERT INTO `jos_vm_currency` VALUES (103, 'Nicaraguan Cordoba', 'NIC');
INSERT INTO `jos_vm_currency` VALUES (105, 'Norwegian Kroner', 'NOK');
INSERT INTO `jos_vm_currency` VALUES (106, 'Nepalese Rupee', 'NPR');
INSERT INTO `jos_vm_currency` VALUES (107, 'New Zealand Dollar', 'NZD');
INSERT INTO `jos_vm_currency` VALUES (108, 'Omani Rial', 'OMR');
INSERT INTO `jos_vm_currency` VALUES (109, 'Panamanian Balboa', 'PAB');
INSERT INTO `jos_vm_currency` VALUES (110, 'Peruvian Nuevo Sol', 'PEN');
INSERT INTO `jos_vm_currency` VALUES (111, 'Papua New Guinea Kina', 'PGK');
INSERT INTO `jos_vm_currency` VALUES (112, 'Philippine Peso', 'PHP');
INSERT INTO `jos_vm_currency` VALUES (113, 'Pakistan Rupee', 'PKR');
INSERT INTO `jos_vm_currency` VALUES (114, 'Polish Złoty', 'PLN');
INSERT INTO `jos_vm_currency` VALUES (116, 'Paraguay Guarani', 'PYG');
INSERT INTO `jos_vm_currency` VALUES (117, 'Qatari Rial', 'QAR');
INSERT INTO `jos_vm_currency` VALUES (118, 'Romanian Leu', 'RON');
INSERT INTO `jos_vm_currency` VALUES (119, 'Rwanda Franc', 'RWF');
INSERT INTO `jos_vm_currency` VALUES (120, 'Saudi Arabian Riyal', 'SAR');
INSERT INTO `jos_vm_currency` VALUES (121, 'Solomon Islands Dollar', 'SBD');
INSERT INTO `jos_vm_currency` VALUES (122, 'Seychelles Rupee', 'SCR');
INSERT INTO `jos_vm_currency` VALUES (123, 'Sudanese Pound', 'SDP');
INSERT INTO `jos_vm_currency` VALUES (124, 'Swedish Krona', 'SEK');
INSERT INTO `jos_vm_currency` VALUES (125, 'Singapore Dollar', 'SGD');
INSERT INTO `jos_vm_currency` VALUES (126, 'St. Helena Pound', 'SHP');
INSERT INTO `jos_vm_currency` VALUES (127, 'Sierra Leone Leone', 'SLL');
INSERT INTO `jos_vm_currency` VALUES (128, 'Somali Shilling', 'SOS');
INSERT INTO `jos_vm_currency` VALUES (129, 'Suriname Guilder', 'SRG');
INSERT INTO `jos_vm_currency` VALUES (130, 'Sao Tome and Principe Dobra', 'STD');
INSERT INTO `jos_vm_currency` VALUES (131, 'Russian Ruble', 'RUB');
INSERT INTO `jos_vm_currency` VALUES (132, 'El Salvador Colon', 'SVC');
INSERT INTO `jos_vm_currency` VALUES (133, 'Syrian Potmd', 'SYP');
INSERT INTO `jos_vm_currency` VALUES (134, 'Swaziland Lilangeni', 'SZL');
INSERT INTO `jos_vm_currency` VALUES (135, 'Thai Bath', 'THB');
INSERT INTO `jos_vm_currency` VALUES (136, 'Tunisian Dinar', 'TND');
INSERT INTO `jos_vm_currency` VALUES (137, 'Tongan Pa''anga', 'TOP');
INSERT INTO `jos_vm_currency` VALUES (138, 'East Timor Escudo', 'TPE');
INSERT INTO `jos_vm_currency` VALUES (139, 'Turkish Lira', 'TRY');
INSERT INTO `jos_vm_currency` VALUES (140, 'Trinidad and Tobago Dollar', 'TTD');
INSERT INTO `jos_vm_currency` VALUES (141, 'Taiwan Dollar', 'TWD');
INSERT INTO `jos_vm_currency` VALUES (142, 'Tanzanian Shilling', 'TZS');
INSERT INTO `jos_vm_currency` VALUES (143, 'Uganda Shilling', 'UGS');
INSERT INTO `jos_vm_currency` VALUES (144, 'US Dollar', 'USD');
INSERT INTO `jos_vm_currency` VALUES (145, 'Uruguayan Peso', 'UYP');
INSERT INTO `jos_vm_currency` VALUES (146, 'Venezualan Bolivar', 'VEB');
INSERT INTO `jos_vm_currency` VALUES (147, 'Vietnamese Dong', 'VND');
INSERT INTO `jos_vm_currency` VALUES (148, 'Vanuatu Vatu', 'VUV');
INSERT INTO `jos_vm_currency` VALUES (149, 'Samoan Tala', 'WST');
INSERT INTO `jos_vm_currency` VALUES (150, 'Democratic Yemeni Dinar', 'YDD');
INSERT INTO `jos_vm_currency` VALUES (151, 'Yemeni Rial', 'YER');
INSERT INTO `jos_vm_currency` VALUES (152, 'Dinar', 'RSD');
INSERT INTO `jos_vm_currency` VALUES (153, 'South African Rand', 'ZAR');
INSERT INTO `jos_vm_currency` VALUES (154, 'Zambian Kwacha', 'ZMK');
INSERT INTO `jos_vm_currency` VALUES (155, 'Zaire Zaire', 'ZRZ');
INSERT INTO `jos_vm_currency` VALUES (156, 'Zimbabwe Dollar', 'ZWD');
INSERT INTO `jos_vm_currency` VALUES (157, 'Slovak Koruna', 'SKK');
INSERT INTO `jos_vm_currency` VALUES (158, 'Armenian Dram', 'AMD');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_export`
-- 

CREATE TABLE `jos_vm_export` (
  `export_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `export_name` varchar(255) default NULL,
  `export_desc` text NOT NULL,
  `export_class` varchar(50) NOT NULL,
  `export_enabled` char(1) NOT NULL default 'N',
  `export_config` text NOT NULL,
  `iscore` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`export_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Export Modules' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_export`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_function`
-- 

CREATE TABLE `jos_vm_function` (
  `function_id` int(11) NOT NULL auto_increment,
  `module_id` int(11) default NULL,
  `function_name` varchar(32) default NULL,
  `function_class` varchar(32) default NULL,
  `function_method` varchar(32) default NULL,
  `function_description` text,
  `function_perms` varchar(255) default NULL,
  PRIMARY KEY  (`function_id`),
  KEY `idx_function_module_id` (`module_id`),
  KEY `idx_function_name` (`function_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to map a function alias to a ''real'' class::function' AUTO_INCREMENT=195 ;

-- 
-- Dumping data for table `jos_vm_function`
-- 

INSERT INTO `jos_vm_function` VALUES (1, 1, 'userAdd', 'ps_user', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (2, 1, 'userDelete', 'ps_user', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (3, 1, 'userUpdate', 'ps_user', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (31, 2, 'productAdd', 'ps_product', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (6, 1, 'functionAdd', 'ps_function', 'add', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (7, 1, 'functionUpdate', 'ps_function', 'update', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (8, 1, 'functionDelete', 'ps_function', 'delete', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (9, 1, 'userLogout', 'ps_user', 'logout', '', 'none');
INSERT INTO `jos_vm_function` VALUES (10, 1, 'userAddressAdd', 'ps_user_address', 'add', '', 'admin,storeadmin,shopper,demo');
INSERT INTO `jos_vm_function` VALUES (11, 1, 'userAddressUpdate', 'ps_user_address', 'update', '', 'admin,storeadmin,shopper');
INSERT INTO `jos_vm_function` VALUES (12, 1, 'userAddressDelete', 'ps_user_address', 'delete', '', 'admin,storeadmin,shopper');
INSERT INTO `jos_vm_function` VALUES (13, 1, 'moduleAdd', 'ps_module', 'add', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (14, 1, 'moduleUpdate', 'ps_module', 'update', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (15, 1, 'moduleDelete', 'ps_module', 'delete', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (16, 1, 'userLogin', 'ps_user', 'login', '', 'none');
INSERT INTO `jos_vm_function` VALUES (17, 3, 'vendorAdd', 'ps_vendor', 'add', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (18, 3, 'vendorUpdate', 'ps_vendor', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (19, 3, 'vendorDelete', 'ps_vendor', 'delete', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (20, 3, 'vendorCategoryAdd', 'ps_vendor_category', 'add', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (21, 3, 'vendorCategoryUpdate', 'ps_vendor_category', 'update', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (22, 3, 'vendorCategoryDelete', 'ps_vendor_category', 'delete', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (23, 4, 'shopperAdd', 'ps_shopper', 'add', '', 'none');
INSERT INTO `jos_vm_function` VALUES (24, 4, 'shopperDelete', 'ps_shopper', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (25, 4, 'shopperUpdate', 'ps_shopper', 'update', '', 'admin,storeadmin,shopper');
INSERT INTO `jos_vm_function` VALUES (26, 4, 'shopperGroupAdd', 'ps_shopper_group', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (27, 4, 'shopperGroupUpdate', 'ps_shopper_group', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (28, 4, 'shopperGroupDelete', 'ps_shopper_group', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (30, 5, 'orderStatusSet', 'ps_order', 'order_status_update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (32, 2, 'productDelete', 'ps_product', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (33, 2, 'productUpdate', 'ps_product', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (34, 2, 'productCategoryAdd', 'ps_product_category', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (35, 2, 'productCategoryUpdate', 'ps_product_category', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (36, 2, 'productCategoryDelete', 'ps_product_category', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (37, 2, 'productPriceAdd', 'ps_product_price', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (38, 2, 'productPriceUpdate', 'ps_product_price', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (39, 2, 'productPriceDelete', 'ps_product_price', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (40, 2, 'productAttributeAdd', 'ps_product_attribute', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (41, 2, 'productAttributeUpdate', 'ps_product_attribute', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (42, 2, 'productAttributeDelete', 'ps_product_attribute', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (43, 7, 'cartAdd', 'ps_cart', 'add', '', 'none');
INSERT INTO `jos_vm_function` VALUES (44, 7, 'cartUpdate', 'ps_cart', 'update', '', 'none');
INSERT INTO `jos_vm_function` VALUES (45, 7, 'cartDelete', 'ps_cart', 'delete', '', 'none');
INSERT INTO `jos_vm_function` VALUES (46, 10, 'checkoutComplete', 'ps_checkout', 'add', '', 'shopper,storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (48, 8, 'paymentMethodUpdate', 'ps_payment_method', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (49, 8, 'paymentMethodAdd', 'ps_payment_method', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (50, 8, 'paymentMethodDelete', 'ps_payment_method', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (51, 5, 'orderDelete', 'ps_order', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (52, 11, 'addTaxRate', 'ps_tax', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (53, 11, 'updateTaxRate', 'ps_tax', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (54, 11, 'deleteTaxRate', 'ps_tax', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (55, 10, 'checkoutValidateST', 'ps_checkout', 'validate_shipto', '', 'none');
INSERT INTO `jos_vm_function` VALUES (59, 5, 'orderStatusUpdate', 'ps_order_status', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (60, 5, 'orderStatusAdd', 'ps_order_status', 'add', '', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (61, 5, 'orderStatusDelete', 'ps_order_status', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (62, 1, 'currencyAdd', 'ps_currency', 'add', 'add a currency', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (63, 1, 'currencyUpdate', 'ps_currency', 'update', '        update a currency', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (64, 1, 'currencyDelete', 'ps_currency', 'delete', 'delete a currency', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (65, 1, 'countryAdd', 'ps_country', 'add', 'Add a country ', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (66, 1, 'countryUpdate', 'ps_country', 'update', 'Update a country record', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (67, 1, 'countryDelete', 'ps_country', 'delete', 'Delete a country record', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (68, 2, 'product_csv', 'ps_csv', 'upload_csv', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (110, 7, 'waitingListAdd', 'zw_waiting_list', 'add', '', 'none');
INSERT INTO `jos_vm_function` VALUES (111, 13, 'addzone', 'ps_zone', 'add', 'This will add a zone', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (112, 13, 'updatezone', 'ps_zone', 'update', 'This will update a zone', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (113, 13, 'deletezone', 'ps_zone', 'delete', 'This will delete a zone', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (114, 13, 'zoneassign', 'ps_zone', 'assign', 'This will assign a country to a zone', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (115, 1, 'writeConfig', 'ps_config', 'writeconfig', 'This will write the configuration details to virtuemart.cfg.php', 'admin');
INSERT INTO `jos_vm_function` VALUES (116, 12839, 'carrierAdd', 'ps_shipping', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (117, 12839, 'carrierDelete', 'ps_shipping', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (118, 12839, 'carrierUpdate', 'ps_shipping', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (119, 12839, 'rateAdd', 'ps_shipping', 'rate_add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (120, 12839, 'rateUpdate', 'ps_shipping', 'rate_update', '', 'admin,shopadmin');
INSERT INTO `jos_vm_function` VALUES (121, 12839, 'rateDelete', 'ps_shipping', 'rate_delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (122, 10, 'checkoutProcess', 'ps_checkout', 'process', '', 'none');
INSERT INTO `jos_vm_function` VALUES (123, 5, 'downloadRequest', 'ps_order', 'download_request', 'This checks if the download request is valid and sends the file to the browser as file download if the request was successful, otherwise echoes an error', 'none');
INSERT INTO `jos_vm_function` VALUES (128, 99, 'manufacturerAdd', 'ps_manufacturer', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (129, 99, 'manufacturerUpdate', 'ps_manufacturer', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (130, 99, 'manufacturerDelete', 'ps_manufacturer', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (131, 99, 'manufacturercategoryAdd', 'ps_manufacturer_category', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (132, 99, 'manufacturercategoryUpdate', 'ps_manufacturer_category', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (133, 99, 'manufacturercategoryDelete', 'ps_manufacturer_category', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (134, 7, 'addReview', 'ps_reviews', 'process_review', 'This lets the user add a review and rating to a product.', 'admin,storeadmin,shopper,demo');
INSERT INTO `jos_vm_function` VALUES (135, 7, 'productReviewDelete', 'ps_reviews', 'delete_review', 'This deletes a review and from a product.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (136, 8, 'creditcardAdd', 'ps_creditcard', 'add', 'Adds a Credit Card entry.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (137, 8, 'creditcardUpdate', 'ps_creditcard', 'update', 'Updates a Credit Card entry.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (138, 8, 'creditcardDelete', 'ps_creditcard', 'delete', 'Deletes a Credit Card entry.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (139, 2, 'changePublishState', 'vmAbstractObject.class', 'handlePublishState', 'Changes the publish field of an item, so that it can be published or unpublished easily.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (140, 2, 'export_csv', 'ps_csv', 'export_csv', 'This function exports all relevant product data to CSV.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (141, 2, 'reorder', 'ps_product_category', 'reorder', 'Changes the list order of a category.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (142, 2, 'discountAdd', 'ps_product_discount', 'add', 'Adds a discount.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (143, 2, 'discountUpdate', 'ps_product_discount', 'update', 'Updates a discount.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (144, 2, 'discountDelete', 'ps_product_discount', 'delete', 'Deletes a discount.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (145, 8, 'shippingmethodSave', 'ps_shipping_method', 'save', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (146, 2, 'uploadProductFile', 'ps_product_files', 'add', 'Uploads and Adds a Product Image/File.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (147, 2, 'updateProductFile', 'ps_product_files', 'update', 'Updates a Product Image/File.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (148, 2, 'deleteProductFile', 'ps_product_files', 'delete', 'Deletes a Product Image/File.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (149, 12843, 'couponAdd', 'ps_coupon', 'add_coupon_code', 'Adds a Coupon.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (150, 12843, 'couponUpdate', 'ps_coupon', 'update_coupon', 'Updates a Coupon.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (151, 12843, 'couponDelete', 'ps_coupon', 'remove_coupon_code', 'Deletes a Coupon.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (152, 12843, 'couponProcess', 'ps_coupon', 'process_coupon_code', 'Processes a Coupon.', 'admin,storeadmin,shopper,demo');
INSERT INTO `jos_vm_function` VALUES (153, 2, 'ProductTypeAdd', 'ps_product_type', 'add', 'Function add a Product Type and create new table product_type_<id>.', 'admin');
INSERT INTO `jos_vm_function` VALUES (154, 2, 'ProductTypeUpdate', 'ps_product_type', 'update', 'Update a Product Type.', 'admin');
INSERT INTO `jos_vm_function` VALUES (155, 2, 'ProductTypeDelete', 'ps_product_type', 'delete', 'Delete a Product Type and drop table product_type_<id>.', 'admin');
INSERT INTO `jos_vm_function` VALUES (156, 2, 'ProductTypeReorder', 'ps_product_type', 'reorder', 'Changes the list order of a Product Type.', 'admin');
INSERT INTO `jos_vm_function` VALUES (157, 2, 'ProductTypeAddParam', 'ps_product_type_parameter', 'add_parameter', 'Function add a Parameter into a Product Type and create new column in table product_type_<id>.', 'admin');
INSERT INTO `jos_vm_function` VALUES (158, 2, 'ProductTypeUpdateParam', 'ps_product_type_parameter', 'update_parameter', 'Function update a Parameter in a Product Type and a column in table product_type_<id>.', 'admin');
INSERT INTO `jos_vm_function` VALUES (159, 2, 'ProductTypeDeleteParam', 'ps_product_type_parameter', 'delete_parameter', 'Function delete a Parameter from a Product Type and drop a column in table product_type_<id>.', 'admin');
INSERT INTO `jos_vm_function` VALUES (160, 2, 'ProductTypeReorderParam', 'ps_product_type_parameter', 'reorder_parameter', 'Changes the list order of a Parameter.', 'admin');
INSERT INTO `jos_vm_function` VALUES (161, 2, 'productProductTypeAdd', 'ps_product_product_type', 'add', 'Add a Product into a Product Type.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (162, 2, 'productProductTypeDelete', 'ps_product_product_type', 'delete', 'Delete a Product from a Product Type.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (163, 1, 'stateAdd', 'ps_country', 'addState', 'Add a State ', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (164, 1, 'stateUpdate', 'ps_country', 'updateState', 'Update a state record', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (165, 1, 'stateDelete', 'ps_country', 'deleteState', 'Delete a state record', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (166, 2, 'csvFieldAdd', 'ps_csv', 'add', 'Add a CSV Field ', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (167, 2, 'csvFieldUpdate', 'ps_csv', 'update', 'Update a CSV Field', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (168, 2, 'csvFieldDelete', 'ps_csv', 'delete', 'Delete a CSV Field', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (169, 1, 'userfieldSave', 'ps_userfield', 'savefield', 'add or edit a user field', 'admin');
INSERT INTO `jos_vm_function` VALUES (170, 1, 'userfieldDelete', 'ps_userfield', 'deletefield', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (171, 1, 'changeordering', 'vmAbstractObject.class', 'handleordering', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (172, 2, 'moveProduct', 'ps_product', 'move', 'Move products from one category to another.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (173, 7, 'productAsk', 'ps_communication', 'mail_question', 'Lets the customer send a question about a specific product.', 'none');
INSERT INTO `jos_vm_function` VALUES (174, 7, 'recommendProduct', 'ps_communication', 'sendRecommendation', 'Lets the customer send a recommendation about a specific product to a friend.', 'none');
INSERT INTO `jos_vm_function` VALUES (175, 2, 'reviewUpdate', 'ps_reviews', 'update', 'Modify a review about a specific product.', 'admin');
INSERT INTO `jos_vm_function` VALUES (176, 8, 'ExportUpdate', 'ps_export', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (177, 8, 'ExportAdd', 'ps_export', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (178, 8, 'ExportDelete', 'ps_export', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (179, 1, 'writeThemeConfig', 'ps_config', 'writeThemeConfig', 'Writes a theme configuration file.', 'admin');
INSERT INTO `jos_vm_function` VALUES (180, 1, 'usergroupAdd', 'usergroup.class', 'add', 'Add a new user group', 'admin');
INSERT INTO `jos_vm_function` VALUES (181, 1, 'usergroupUpdate', 'usergroup.class', 'update', 'Update an user group', 'admin');
INSERT INTO `jos_vm_function` VALUES (182, 1, 'usergroupDelete', 'usergroup.class', 'delete', 'Delete an user group', 'admin');
INSERT INTO `jos_vm_function` VALUES (183, 1, 'setModulePermissions', 'ps_module', 'update_permissions', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (184, 1, 'setFunctionPermissions', 'ps_function', 'update_permissions', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (185, 2, 'insertDownloadsForProduct', 'ps_order', 'insert_downloads_for_product', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (186, 5, 'mailDownloadId', 'ps_order', 'mail_download_id', '', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (187, 7, 'replaceSavedCart', 'ps_cart', 'replaceCart', 'Replace cart with saved cart', 'none');
INSERT INTO `jos_vm_function` VALUES (188, 7, 'mergeSavedCart', 'ps_cart', 'mergeSaved', 'Merge saved cart with cart', 'none');
INSERT INTO `jos_vm_function` VALUES (189, 7, 'deleteSavedCart', 'ps_cart', 'deleteCart', 'Delete saved cart', 'none');
INSERT INTO `jos_vm_function` VALUES (190, 7, 'savedCartDelete', 'ps_cart', 'deleteSaved', 'Delete items from saved cart', 'none');
INSERT INTO `jos_vm_function` VALUES (191, 7, 'savedCartUpdate', 'ps_cart', 'updateSaved', 'Update saved cart items', 'none');
INSERT INTO `jos_vm_function` VALUES (192, 1, 'getupdatepackage', 'update.class', 'getPatchPackage', 'Retrieves the Patch Package from the virtuemart.net Servers.', 'admin');
INSERT INTO `jos_vm_function` VALUES (193, 1, 'applypatchpackage', 'update.class', 'applyPatch', 'Applies the Patch using the instructions from the update.xml file in the downloaded patch.', 'admin');
INSERT INTO `jos_vm_function` VALUES (194, 1, 'removePatchPackage', 'update.class', 'removePackageFile', 'Removes  a Patch Package File and its extracted contents.', 'admin');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_manufacturer`
-- 

CREATE TABLE `jos_vm_manufacturer` (
  `manufacturer_id` int(11) NOT NULL auto_increment,
  `mf_name` varchar(64) default NULL,
  `mf_email` varchar(255) default NULL,
  `mf_desc` text,
  `mf_category_id` int(11) default NULL,
  `mf_url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who create products' AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_vm_manufacturer`
-- 

INSERT INTO `jos_vm_manufacturer` VALUES (1, 'Manufacturer', 'info@manufacturer.com', 'An example for a manufacturer', 1, 'http://www.a-url.com');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_manufacturer_category`
-- 

CREATE TABLE `jos_vm_manufacturer_category` (
  `mf_category_id` int(11) NOT NULL auto_increment,
  `mf_category_name` varchar(64) default NULL,
  `mf_category_desc` text,
  PRIMARY KEY  (`mf_category_id`),
  KEY `idx_manufacturer_category_category_name` (`mf_category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Manufacturers are assigned to these categories' AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_vm_manufacturer_category`
-- 

INSERT INTO `jos_vm_manufacturer_category` VALUES (1, '-default-', 'This is the default manufacturer category');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_module`
-- 

CREATE TABLE `jos_vm_module` (
  `module_id` int(11) NOT NULL auto_increment,
  `module_name` varchar(255) default NULL,
  `module_description` text,
  `module_perms` varchar(255) default NULL,
  `module_publish` char(1) default NULL,
  `list_order` int(11) default NULL,
  PRIMARY KEY  (`module_id`),
  KEY `idx_module_name` (`module_name`),
  KEY `idx_module_list_order` (`list_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules' AUTO_INCREMENT=12844 ;

-- 
-- Dumping data for table `jos_vm_module`
-- 

INSERT INTO `jos_vm_module` VALUES (1, 'admin', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n\r\n<p>Only used for the following:</p>\r\n<OL>\r\n\r\n<LI>User Maintenance</LI>\r\n<LI>Module Maintenance</LI>\r\n<LI>Function Maintenance</LI>\r\n</OL>\r\n', 'admin', 'Y', 1);
INSERT INTO `jos_vm_module` VALUES (2, 'product', '<p>Here you can adminster your online catalog of products.  The Product Administrator allows you to create product categories, create new products, edit product attributes, and add product items for each attribute value.</p>', 'storeadmin,admin', 'Y', 4);
INSERT INTO `jos_vm_module` VALUES (3, 'vendor', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n<p>Here you can manage the vendors on the phpShop system.</p>', 'admin', 'Y', 6);
INSERT INTO `jos_vm_module` VALUES (4, 'shopper', '<p>Manage shoppers in your store.  Allows you to create shopper groups.  Shopper groups can be used when setting the price for a product.  This allows you to create different prices for different types of users.  An example of this would be to have a ''wholesale'' group and a ''retail'' group. </p>', 'admin,storeadmin', 'Y', 4);
INSERT INTO `jos_vm_module` VALUES (5, 'order', '<p>View Order and Update Order Status.</p>', 'admin,storeadmin', 'Y', 5);
INSERT INTO `jos_vm_module` VALUES (6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 'N', 99);
INSERT INTO `jos_vm_module` VALUES (7, 'shop', 'This is the Washupito store module.  This is the demo store included with the phpShop distribution.', 'none', 'Y', 99);
INSERT INTO `jos_vm_module` VALUES (8, 'store', '', 'storeadmin,admin', 'Y', 2);
INSERT INTO `jos_vm_module` VALUES (9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 'N', 99);
INSERT INTO `jos_vm_module` VALUES (10, 'checkout', '', 'none', 'N', 99);
INSERT INTO `jos_vm_module` VALUES (11, 'tax', 'The tax module allows you to set tax rates for states or regions within a country.  The rate is set as a decimal figure.  For example, 2 percent tax would be 0.02.', 'admin,storeadmin', 'Y', 8);
INSERT INTO `jos_vm_module` VALUES (12, 'reportbasic', 'The report basic module allows you to do queries on all orders.', 'admin,storeadmin', 'Y', 7);
INSERT INTO `jos_vm_module` VALUES (13, 'zone', 'This is the zone-shipping module. Here you can manage your shipping costs according to Zones.', 'admin,storeadmin', 'N', 9);
INSERT INTO `jos_vm_module` VALUES (12839, 'shipping', '<h4>Shipping</h4><p>Let this module calculate the shipping fees for your customers.<br>Create carriers for shipping areas and weight groups.</p>', 'admin,storeadmin', 'Y', 10);
INSERT INTO `jos_vm_module` VALUES (99, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 'Y', 12);
INSERT INTO `jos_vm_module` VALUES (12842, 'help', 'Help Module', 'admin,storeadmin', 'Y', 13);
INSERT INTO `jos_vm_module` VALUES (12843, 'coupon', 'Coupon Management', 'admin,storeadmin', 'Y', 11);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_orders`
-- 

CREATE TABLE `jos_vm_orders` (
  `order_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `vendor_id` int(11) NOT NULL default '0',
  `order_number` varchar(32) default NULL,
  `user_info_id` varchar(32) default NULL,
  `order_total` decimal(15,5) NOT NULL default '0.00000',
  `order_subtotal` decimal(15,5) default NULL,
  `order_tax` decimal(10,2) default NULL,
  `order_tax_details` text NOT NULL,
  `order_shipping` decimal(10,2) default NULL,
  `order_shipping_tax` decimal(10,2) default NULL,
  `coupon_discount` decimal(12,2) NOT NULL default '0.00',
  `coupon_code` varchar(32) default NULL,
  `order_discount` decimal(12,2) NOT NULL default '0.00',
  `order_currency` varchar(16) default NULL,
  `order_status` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `ship_method_id` varchar(255) default NULL,
  `customer_note` text NOT NULL,
  `ip_address` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`order_id`),
  KEY `idx_orders_user_id` (`user_id`),
  KEY `idx_orders_vendor_id` (`vendor_id`),
  KEY `idx_orders_order_number` (`order_number`),
  KEY `idx_orders_user_info_id` (`user_info_id`),
  KEY `idx_orders_ship_method_id` (`ship_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store all orders' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_orders`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_order_history`
-- 

CREATE TABLE `jos_vm_order_history` (
  `order_status_history_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `order_status_code` char(1) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `customer_notified` int(1) default '0',
  `comments` text,
  PRIMARY KEY  (`order_status_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_order_history`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_order_item`
-- 

CREATE TABLE `jos_vm_order_item` (
  `order_item_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `user_info_id` varchar(32) default NULL,
  `vendor_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `order_item_sku` varchar(64) NOT NULL default '',
  `order_item_name` varchar(64) NOT NULL default '',
  `product_quantity` int(11) default NULL,
  `product_item_price` decimal(15,5) default NULL,
  `product_final_price` decimal(12,2) NOT NULL default '0.00',
  `order_item_currency` varchar(16) default NULL,
  `order_status` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `product_attribute` text,
  PRIMARY KEY  (`order_item_id`),
  KEY `idx_order_item_order_id` (`order_id`),
  KEY `idx_order_item_user_info_id` (`user_info_id`),
  KEY `idx_order_item_vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_order_item`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_order_payment`
-- 

CREATE TABLE `jos_vm_order_payment` (
  `order_id` int(11) NOT NULL default '0',
  `payment_method_id` int(11) default NULL,
  `order_payment_code` varchar(30) NOT NULL default '',
  `order_payment_number` blob,
  `order_payment_expire` int(11) default NULL,
  `order_payment_name` varchar(255) default NULL,
  `order_payment_log` text,
  `order_payment_trans_id` text NOT NULL,
  KEY `idx_order_payment_order_id` (`order_id`),
  KEY `idx_order_payment_method_id` (`payment_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The payment method that was chosen for a specific order';

-- 
-- Dumping data for table `jos_vm_order_payment`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_order_status`
-- 

CREATE TABLE `jos_vm_order_status` (
  `order_status_id` int(11) NOT NULL auto_increment,
  `order_status_code` char(1) NOT NULL default '',
  `order_status_name` varchar(64) default NULL,
  `order_status_description` text NOT NULL,
  `list_order` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  PRIMARY KEY  (`order_status_id`),
  KEY `idx_order_status_list_order` (`list_order`),
  KEY `idx_order_status_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='All available order statuses' AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `jos_vm_order_status`
-- 

INSERT INTO `jos_vm_order_status` VALUES (1, 'P', 'Pending', '', 1, 1);
INSERT INTO `jos_vm_order_status` VALUES (2, 'C', 'Confirmed', '', 2, 1);
INSERT INTO `jos_vm_order_status` VALUES (3, 'X', 'Cancelled', '', 3, 1);
INSERT INTO `jos_vm_order_status` VALUES (4, 'R', 'Refunded', '', 4, 1);
INSERT INTO `jos_vm_order_status` VALUES (5, 'S', 'Shipped', '', 5, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_order_user_info`
-- 

CREATE TABLE `jos_vm_order_user_info` (
  `order_info_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `address_type` char(2) default NULL,
  `address_type_name` varchar(32) default NULL,
  `company` varchar(64) default NULL,
  `title` varchar(32) default NULL,
  `last_name` varchar(32) default NULL,
  `first_name` varchar(32) default NULL,
  `middle_name` varchar(32) default NULL,
  `phone_1` varchar(32) default NULL,
  `phone_2` varchar(32) default NULL,
  `fax` varchar(32) default NULL,
  `address_1` varchar(64) NOT NULL default '',
  `address_2` varchar(64) default NULL,
  `city` varchar(32) NOT NULL default '',
  `state` varchar(32) NOT NULL default '',
  `country` varchar(32) NOT NULL default 'US',
  `zip` varchar(32) NOT NULL default '',
  `user_email` varchar(255) default NULL,
  `extra_field_1` varchar(255) default NULL,
  `extra_field_2` varchar(255) default NULL,
  `extra_field_3` varchar(255) default NULL,
  `extra_field_4` char(1) default NULL,
  `extra_field_5` char(1) default NULL,
  `bank_account_nr` varchar(32) NOT NULL default '',
  `bank_name` varchar(32) NOT NULL default '',
  `bank_sort_code` varchar(16) NOT NULL default '',
  `bank_iban` varchar(64) NOT NULL default '',
  `bank_account_holder` varchar(48) NOT NULL default '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL default 'Checking',
  PRIMARY KEY  (`order_info_id`),
  KEY `idx_order_info_order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_order_user_info`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_payment_method`
-- 

CREATE TABLE `jos_vm_payment_method` (
  `payment_method_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `payment_method_name` varchar(255) default NULL,
  `payment_class` varchar(50) NOT NULL default '',
  `shopper_group_id` int(11) default NULL,
  `payment_method_discount` decimal(12,2) default NULL,
  `payment_method_discount_is_percent` tinyint(1) NOT NULL,
  `payment_method_discount_max_amount` decimal(10,2) NOT NULL,
  `payment_method_discount_min_amount` decimal(10,2) NOT NULL,
  `list_order` int(11) default NULL,
  `payment_method_code` varchar(8) default NULL,
  `enable_processor` char(1) default NULL,
  `is_creditcard` tinyint(1) NOT NULL default '0',
  `payment_enabled` char(1) NOT NULL default 'N',
  `accepted_creditcards` varchar(128) NOT NULL default '',
  `payment_extrainfo` text NOT NULL,
  `payment_passkey` blob NOT NULL,
  PRIMARY KEY  (`payment_method_id`),
  KEY `idx_payment_method_vendor_id` (`vendor_id`),
  KEY `idx_payment_method_name` (`payment_method_name`),
  KEY `idx_payment_method_list_order` (`list_order`),
  KEY `idx_payment_method_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store' AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `jos_vm_payment_method`
-- 

INSERT INTO `jos_vm_payment_method` VALUES (1, 1, 'Purchase Order', '', 6, 0.00, 0, 0.00, 0.00, 4, 'PO', 'N', 0, 'Y', '', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (2, 1, 'Cash On Delivery', '', 5, -2.00, 0, 0.00, 0.00, 5, 'COD', 'N', 0, 'Y', '', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (3, 1, 'Credit Card', 'ps_authorize', 5, 0.00, 0, 0.00, 0.00, 0, 'AN', 'Y', 0, 'N', '1,2,6,7,', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (4, 1, 'PayPal', 'ps_paypal', 5, 0.00, 0, 0.00, 0.00, 0, 'PP', 'P', 0, 'N', '', '<?php\r\n$db1 = new ps_DB();\r\n$q = "SELECT country_2_code FROM #__vm_country WHERE country_3_code=''".$user->country."'' ORDER BY country_2_code ASC";\r\n$db1->query($q);\r\n\r\n$url = "https://www.paypal.com/cgi-bin/webscr";\r\n$tax_total = $db->f("order_tax") + $db->f("order_shipping_tax");\r\n$discount_total = $db->f("coupon_discount") + $db->f("order_discount");\r\n$post_variables = Array(\r\n"cmd" => "_ext-enter",\r\n"redirect_cmd" => "_xclick",\r\n"upload" => "1",\r\n"business" => PAYPAL_EMAIL,\r\n"receiver_email" => PAYPAL_EMAIL,\r\n"item_name" => $VM_LANG->_(''PHPSHOP_ORDER_PRINT_PO_NUMBER'').": ". $db->f("order_id"),\r\n"order_id" => $db->f("order_id"),\r\n"invoice" => $db->f("order_number"),\r\n"amount" => round( $db->f("order_subtotal")+$tax_total-$discount_total, 2),\r\n"shipping" => sprintf("%.2f", $db->f("order_shipping")),\r\n"currency_code" => $_SESSION[''vendor_currency''],\r\n\r\n"address_override" => "1",\r\n"first_name" => $dbbt->f(''first_name''),\r\n"last_name" => $dbbt->f(''last_name''),\r\n"address1" => $dbbt->f(''address_1''),\r\n"address2" => $dbbt->f(''address_2''),\r\n"zip" => $dbbt->f(''zip''),\r\n"city" => $dbbt->f(''city''),\r\n"state" => $dbbt->f(''state''),\r\n"country" => $db1->f(''country_2_code''),\r\n"email" => $dbbt->f(''user_email''),\r\n"night_phone_b" => $dbbt->f(''phone_1''),\r\n"cpp_header_image" => $vendor_image_url,\r\n\r\n"return" => SECUREURL ."index.php?option=com_virtuemart&page=checkout.result&order_id=".$db->f("order_id"),\r\n"notify_url" => SECUREURL ."administrator/components/com_virtuemart/notify.php",\r\n"cancel_return" => SECUREURL ."index.php",\r\n"undefined_quantity" => "0",\r\n\r\n"test_ipn" => PAYPAL_DEBUG,\r\n"pal" => "NRUBJXESJTY24",\r\n"no_shipping" => "1",\r\n"no_note" => "1"\r\n);\r\nif( $page == "checkout.thankyou" ) {\r\n$query_string = "?";\r\nforeach( $post_variables as $name => $value ) {\r\n$query_string .= $name. "=" . urlencode($value) ."&";\r\n}\r\nvmRedirect( $url . $query_string );\r\n} else {\r\necho ''<form action="''.$url.''" method="post" target="_blank">'';\r\necho ''<input type="image" name="submit" src="https://www.paypal.com/en_US/i/btn/x-click-but6.gif" alt="Click to pay with PayPal - it is fast, free and secure!" />'';\r\n\r\nforeach( $post_variables as $name => $value ) {\r\necho ''<input type="hidden" name="''.$name.''" value="''.htmlspecialchars($value).''" />'';\r\n}\r\necho ''</form>'';\r\n\r\n}\r\n?>', '');
INSERT INTO `jos_vm_payment_method` VALUES (5, 1, 'PayMate', 'ps_paymate', 5, 0.00, 0, 0.00, 0.00, 0, 'PM', 'P', 0, 'N', '', '<script type="text/javascript" language="javascript">\n  function openExpress(){\n      var url = ''https://www.paymate.com/PayMate/ExpressPayment?mid=<?php echo PAYMATE_USERNAME.\n          "&amt=".$db->f("order_total").\n   "&currency=".$_SESSION[''vendor_currency''].\n       "&ref=".$db->f("order_id").\n      "&pmt_sender_email=".$user->email.\n         "&pmt_contact_firstname=".$user->first_name.\n       "&pmt_contact_surname=".$user->last_name.\n          "&regindi_address1=".$user->address_1.\n     "&regindi_address2=".$user->address_2.\n     "&regindi_sub=".$user->city.\n       "&regindi_pcode=".$user->zip;?>''\n        var newWin = window.open(url, ''wizard'', ''height=640,width=500,scrollbars=0,toolbar=no'');\n  self.name = ''parent'';\n       newWin.focus();\n  }\n  </script>\n  <div align="center">\n  <p>\n  <a href="javascript:openExpress();">\n  <img src="https://www.paymate.com/homepage/images/butt_PayNow.gif" border="0" alt="Pay with Paymate Express">\n  <br />click here to pay your account</a>\n  </p>\n  </div>', '');
INSERT INTO `jos_vm_payment_method` VALUES (6, 1, 'WorldPay', 'ps_worldpay', 5, 0.00, 0, 0.00, 0.00, 0, 'WP', 'P', 0, 'N', '', '<form action="https://select.worldpay.com/wcc/purchase" method="post">\n                                                <input type=hidden name="testMode" value="100"> \n                                                  <input type="hidden" name="instId" value="<?php echo WORLDPAY_INST_ID ?>" />\n                                            <input type="hidden" name="cartId" value="<?php echo $db->f("order_id") ?>" />\n                                               <input type="hidden" name="amount" value="<?php echo $db->f("order_total") ?>" />\n                                            <input type="hidden" name="currency" value="<?php echo $_SESSION[''vendor_currency''] ?>" />\n                                           <input type="hidden" name="desc" value="Products" />\n                                            <input type="hidden" name="email" value="<?php echo $user->email?>" />\n                                                 <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>&#10<?php echo\n                                                $user->city?>&#10<?php echo $user->state?>" />\n                                             <input type="hidden" name="name" value="<?php echo $user->title?><?php echo $user->first_name?>. <?php echo $user->middle_name?><?php echo $user->last_name?>" />\n                                           <input type="hidden" name="country" value="<?php echo $user->country?>"/>\n                                              <input type="hidden" name="postcode" value="<?php echo $user->zip?>" />\n                                                <input type="hidden" name="tel"  value="<?php echo $user->phone_1?>">\n                                                  <input type="hidden" name="withDelivery"  value="true">\n                                                 <br />\n                                                <input type="submit" value ="PROCEED TO PAYMENT PAGE" />\n                                                  </form>', '');
INSERT INTO `jos_vm_payment_method` VALUES (7, 1, '2Checkout', 'ps_twocheckout', 5, 0.00, 0, 0.00, 0.00, 0, '2CO', 'P', 0, 'N', '', '<?php\n      $q  = "SELECT * FROM #__users WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbbt = new ps_DB;\n   $dbbt->setQuery($q);\n        $dbbt->query();\n      $dbbt->next_record(); \n       // Get ship_to information\n    if( $db->f("user_info_id") != $dbbt->f("user_info_id")) {\n         $q2  = "SELECT * FROM #__vm_user_info WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbst = new ps_DB;\n   $dbst->setQuery($q2);\n       $dbst->query();\n      $dbst->next_record();\n      }\n     else  {\n         $dbst = $dbbt;\n    }\n                     \n      //Authnet vars to send\n        $formdata = array (\n   ''x_login'' => TWOCO_LOGIN,\n   ''x_email_merchant'' => ((TWOCO_MERCHANT_EMAIL == ''True'') ? ''TRUE'' : ''FALSE''),\n                  \n      // Customer Name and Billing Address\n  ''x_first_name'' => $dbbt->f("first_name"),\n        ''x_last_name'' => $dbbt->f("last_name"),\n  ''x_company'' => $dbbt->f("company"),\n      ''x_address'' => $dbbt->f("address_1"),\n    ''x_city'' => $dbbt->f("city"),\n    ''x_state'' => $dbbt->f("state"),\n  ''x_zip'' => $dbbt->f("zip"),\n      ''x_country'' => $dbbt->f("country"),\n      ''x_phone'' => $dbbt->f("phone_1"),\n        ''x_fax'' => $dbbt->f("fax"),\n      ''x_email'' => $dbbt->f("email"),\n \n       // Customer Shipping Address\n  ''x_ship_to_first_name'' => $dbst->f("first_name"),\n        ''x_ship_to_last_name'' => $dbst->f("last_name"),\n  ''x_ship_to_company'' => $dbst->f("company"),\n      ''x_ship_to_address'' => $dbst->f("address_1"),\n    ''x_ship_to_city'' => $dbst->f("city"),\n    ''x_ship_to_state'' => $dbst->f("state"),\n  ''x_ship_to_zip'' => $dbst->f("zip"),\n      ''x_ship_to_country'' => $dbst->f("country"),\n     \n       ''x_invoice_num'' => $db->f("order_number"),\n       ''x_receipt_link_url'' => SECUREURL."2checkout_notify.php"\n  );\n    \n     if( TWOCO_TESTMODE == "Y" )\n   $formdata[''demo''] = "Y";\n       \n       $version = "2";\n    $url = "https://www2.2checkout.com/2co/buyer/purchase";\n    $formdata[''x_amount''] = number_format($db->f("order_total"), 2, ''.'', '''');\n \n       //build the post string\n       $poststring = '''';\n  foreach($formdata AS $key => $val){\n          $poststring .= "<input type=''hidden'' name=''$key'' value=''$val'' />\n ";\n    }\n    \n      ?>\n    <form action="<?php echo $url ?>" method="post" target="_blank">\n       <?php echo $poststring ?>\n    <p>Click on the Image below to pay...</p>\n     <input type="image" name="submit" src="https://www.2checkout.com/images/buy_logo.gif" border="0" alt="Make payments with 2Checkout, it''s fast and secure!" title="Pay your Order with 2Checkout, it''s fast and secure!" />\n      </form>', '');
INSERT INTO `jos_vm_payment_method` VALUES (8, 1, 'NoChex', 'ps_nochex', 5, 0.00, 0, 0.00, 0.00, 0, 'NOCHEX', 'P', 0, 'N', '', '<form action="https://www.nochex.com/nochex.dll/checkout" method=post target="_blank"> \n                                                                                     <input type="hidden" name="email" value="<?php echo NOCHEX_EMAIL ?>" />\n                                                                                 <input type="hidden" name="amount" value="<?php printf("%.2f", $db->f("order_total"))?>" />\n                                                                                        <input type="hidden" name="ordernumber" value="<?php $db->p("order_id") ?>" />\n                                                                                       <input type="hidden" name="logo" value="<?php echo $vendor_image_url ?>" />\n                                                                                    <input type="hidden" name="returnurl" value="<?php echo SECUREURL ."index.php?option=com_virtuemart&amp;page=checkout.result&amp;order_id=".$db->f("order_id") ?>" />\n                                                                                      <input type="image" name="submit" src="http://www.nochex.com/web/images/paymeanimated.gif"> \n                                                                                    </form>', '');
INSERT INTO `jos_vm_payment_method` VALUES (9, 1, 'Credit Card (PayMeNow)', 'ps_paymenow', 5, 0.00, 0, 0.00, 0.00, 0, 'PN', 'Y', 0, 'N', '1,2,3,', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (10, 1, 'eWay', 'ps_eway', 5, 0.00, 0, 0.00, 0.00, 0, 'EWAY', 'Y', 0, 'N', '', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (11, 1, 'eCheck.net', 'ps_echeck', 5, 0.00, 0, 0.00, 0.00, 0, 'ECK', 'B', 0, 'N', '', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (12, 1, 'Credit Card (eProcessingNetwork)', 'ps_epn', 5, 0.00, 0, 0.00, 0.00, 0, 'EPN', 'Y', 0, 'N', '1,2,3,', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (13, 1, 'iKobo', '', 5, 0.00, 0, 0.00, 0.00, 0, 'IK', 'P', 0, 'N', '', '<form action="https://www.iKobo.com/store/index.php" method="post"> \n  <input type="hidden" name="cmd" value="cart" />Click on the image below to Pay with iKobo\n  <input type="image" src="https://www.ikobo.com/merchant/buttons/ikobo_pay1.gif" name="submit" alt="Pay with iKobo" /> \n  <input type="hidden" name="poid" value="USER_ID" /> \n  <input type="hidden" name="item" value="Order: <?php $db->p("order_id") ?>" /> \n  <input type="hidden" name="price" value="<?php printf("%.2f", $db->f("order_total"))?>" /> \n  <input type="hidden" name="firstname" value="<?php echo $user->first_name?>" /> \n  <input type="hidden" name="lastname" value="<?php echo $user->last_name?>" /> \n  <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>" /> \n  <input type="hidden" name="city" value="<?php echo $user->city?>" /> \n  <input type="hidden" name="state" value="<?php echo $user->state?>" /> \n  <input type="hidden" name="zip" value="<?php echo $user->zip?>" /> \n  <input type="hidden" name="phone" value="<?php echo $user->phone_1?>" /> \n  <input type="hidden" name="email" value="<?php echo $user->email?>" /> \n  </form> >', '');
INSERT INTO `jos_vm_payment_method` VALUES (14, 1, 'iTransact', '', 5, 0.00, 0, 0.00, 0.00, 0, 'ITR', 'P', 0, 'N', '', '<?php\n  //your iTransact account details\n  $vendorID = "XXXXX";\n  global $vendor_name;\n  $mername = $vendor_name;\n  \n  //order details\n  $total = $db->f("order_total");$first_name = $user->first_name;$last_name = $user->last_name;$address = $user->address_1;$city = $user->city;$state = $user->state;$zip = $user->zip;$country = $user->country;$email = $user->email;$phone = $user->phone_1;$home_page = $mosConfig_live_site."/index.php";$ret_addr = $mosConfig_live_site."/index.php";$cc_payment_image = $mosConfig_live_site."/components/com_virtuemart/shop_image/ps_image/cc_payment.jpg";\n  ?>\n  <form action="https://secure.paymentclearing.com/cgi-bin/mas/split.cgi" method="POST"> \n                <input type="hidden" name="vendor_id" value="<?php echo $vendorID; ?>" />\n              <input type="hidden" name="home_page" value="<?php echo $home_page; ?>" />\n             <input type="hidden" name="ret_addr" value="<?php echo $ret_addr; ?>" />\n               <input type="hidden" name="mername" value="<?php echo $mername; ?>" />\n         <!--Enter text in the next value that should appear on the bottom of the order form.-->\n               <INPUT type="hidden" name="mertext" value="" />\n         <!--If you are accepting checks, enter the number 1 in the next value.  Enter the number 0 if you are not accepting checks.-->\n                <INPUT type="hidden" name="acceptchecks" value="0" />\n           <!--Enter the number 1 in the next value if you want to allow pre-registered customers to pay with a check.  Enter the number 0 if not.-->\n            <INPUT type="hidden" name="allowreg" value="0" />\n               <!--If you are set up with Check Guarantee, enter the number 1 in the next value.  Enter the number 0 if not.-->\n              <INPUT type="hidden" name="checkguar" value="0" />\n              <!--Enter the number 1 in the next value if you are accepting credit card payments.  Enter the number zero if not.-->\n         <INPUT type="hidden" name="acceptcards" value="1">\n              <!--Enter the number 1 in the next value if you want to allow a separate mailing address for credit card orders.  Enter the number 0 if not.-->\n               <INPUT type="hidden" name="altaddr" value="0" />\n                <!--Enter the number 1 in the next value if you want the customer to enter the CVV number for card orders.  Enter the number 0 if not.-->\n             <INPUT type="hidden" name="showcvv" value="1" />\n                \n              <input type="hidden" name="1-desc" value="Order Total" />\n               <input type="hidden" name="1-cost" value="<?php echo $total; ?>" />\n            <input type="hidden" name="1-qty" value="1" />\n          <input type="hidden" name="total" value="<?php echo $total; ?>" />\n             <input type="hidden" name="first_name" value="<?php echo $first_name; ?>" />\n           <input type="hidden" name="last_name" value="<?php echo $last_name; ?>" />\n             <input type="hidden" name="address" value="<?php echo $address; ?>" />\n         <input type="hidden" name="city" value="<?php echo $city; ?>" />\n               <input type="hidden" name="state" value="<?php echo $state; ?>" />\n             <input type="hidden" name="zip" value="<?php echo $zip; ?>" />\n         <input type="hidden" name="country" value="<?php echo $country; ?>" />\n         <input type="hidden" name="phone" value="<?php echo $phone; ?>" />\n             <input type="hidden" name="email" value="<?php echo $email; ?>" />\n             <p><input type="image" alt="Process Secure Credit Card Transaction using iTransact" border="0" height="60" width="210" src="<?php echo $cc_payment_image; ?>" /> </p>\n            </form>', '');
INSERT INTO `jos_vm_payment_method` VALUES (15, 1, 'Verisign PayFlow Pro', 'payflow_pro', 5, 0.00, 0, 0.00, 0.00, 0, 'PFP', 'Y', 0, 'Y', '1,2,6,7,', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (16, 1, 'Dankort/PBS via ePay', 'ps_epay', 5, 0.00, 0, 0.00, 0.00, 0, 'EPAY', 'P', 0, 'N', '', '<?php\r\nrequire_once(CLASSPATH ."payment/ps_epay.cfg.php");\r\n$url=basename($mosConfig_live_site);\r\nfunction get_iso_code($code) {\r\nswitch ($code) {\r\ncase "ADP": return "020"; break;\r\ncase "AED": return "784"; break;\r\ncase "AFA": return "004"; break;\r\ncase "ALL": return "008"; break;\r\ncase "AMD": return "051"; break;\r\ncase "ANG": return "532"; break;\r\ncase "AOA": return "973"; break;\r\ncase "ARS": return "032"; break;\r\ncase "AUD": return "036"; break;\r\ncase "AWG": return "533"; break;\r\ncase "AZM": return "031"; break;\r\ncase "BAM": return "977"; break;\r\ncase "BBD": return "052"; break;\r\ncase "BDT": return "050"; break;\r\ncase "BGL": return "100"; break;\r\ncase "BGN": return "975"; break;\r\ncase "BHD": return "048"; break;\r\ncase "BIF": return "108"; break;\r\ncase "BMD": return "060"; break;\r\ncase "BND": return "096"; break;\r\ncase "BOB": return "068"; break;\r\ncase "BOV": return "984"; break;\r\ncase "BRL": return "986"; break;\r\ncase "BSD": return "044"; break;\r\ncase "BTN": return "064"; break;\r\ncase "BWP": return "072"; break;\r\ncase "BYR": return "974"; break;\r\ncase "BZD": return "084"; break;\r\ncase "CAD": return "124"; break;\r\ncase "CDF": return "976"; break;\r\ncase "CHF": return "756"; break;\r\ncase "CLF": return "990"; break;\r\ncase "CLP": return "152"; break;\r\ncase "CNY": return "156"; break;\r\ncase "COP": return "170"; break;\r\ncase "CRC": return "188"; break;\r\ncase "CUP": return "192"; break;\r\ncase "CVE": return "132"; break;\r\ncase "CYP": return "196"; break;\r\ncase "CZK": return "203"; break;\r\ncase "DJF": return "262"; break;\r\ncase "DKK": return "208"; break;\r\ncase "DOP": return "214"; break;\r\ncase "DZD": return "012"; break;\r\ncase "ECS": return "218"; break;\r\ncase "ECV": return "983"; break;\r\ncase "EEK": return "233"; break;\r\ncase "EGP": return "818"; break;\r\ncase "ERN": return "232"; break;\r\ncase "ETB": return "230"; break;\r\ncase "EUR": return "978"; break;\r\ncase "FJD": return "242"; break;\r\ncase "FKP": return "238"; break;\r\ncase "GBP": return "826"; break;\r\ncase "GEL": return "981"; break;\r\ncase "GHC": return "288"; break;\r\ncase "GIP": return "292"; break;\r\ncase "GMD": return "270"; break;\r\ncase "GNF": return "324"; break;\r\ncase "GTQ": return "320"; break;\r\ncase "GWP": return "624"; break;\r\ncase "GYD": return "328"; break;\r\ncase "HKD": return "344"; break;\r\ncase "HNL": return "340"; break;\r\ncase "HRK": return "191"; break;\r\ncase "HTG": return "332"; break;\r\ncase "HUF": return "348"; break;\r\ncase "IDR": return "360"; break;\r\ncase "ILS": return "376"; break;\r\ncase "INR": return "356"; break;\r\ncase "IQD": return "368"; break;\r\ncase "IRR": return "364"; break;\r\ncase "ISK": return "352"; break;\r\ncase "JMD": return "388"; break;\r\ncase "JOD": return "400"; break;\r\ncase "JPY": return "392"; break;\r\ncase "KES": return "404"; break;\r\ncase "KGS": return "417"; break;\r\ncase "KHR": return "116"; break;\r\ncase "KMF": return "174"; break;\r\ncase "KPW": return "408"; break;\r\ncase "KRW": return "410"; break;\r\ncase "KWD": return "414"; break;\r\ncase "KYD": return "136"; break;\r\ncase "KZT": return "398"; break;\r\ncase "LAK": return "418"; break;\r\ncase "LBP": return "422"; break;\r\ncase "LKR": return "144"; break;\r\ncase "LRD": return "430"; break;\r\ncase "LSL": return "426"; break;\r\ncase "LTL": return "440"; break;\r\ncase "LVL": return "428"; break;\r\ncase "LYD": return "434"; break;\r\ncase "MAD": return "504"; break;\r\ncase "MDL": return "498"; break;\r\ncase "MGF": return "450"; break;\r\ncase "MKD": return "807"; break;\r\ncase "MMK": return "104"; break;\r\ncase "MNT": return "496"; break;\r\ncase "MOP": return "446"; break;\r\ncase "MRO": return "478"; break;\r\ncase "MTL": return "470"; break;\r\ncase "MUR": return "480"; break;\r\ncase "MVR": return "462"; break;\r\ncase "MWK": return "454"; break;\r\ncase "MXN": return "484"; break;\r\ncase "MXV": return "979"; break;\r\ncase "MYR": return "458"; break;\r\ncase "MZM": return "508"; break;\r\ncase "NAD": return "516"; break;\r\ncase "NGN": return "566"; break;\r\ncase "NIO": return "558"; break;\r\ncase "NOK": return "578"; break;\r\ncase "NPR": return "524"; break;\r\ncase "NZD": return "554"; break;\r\ncase "OMR": return "512"; break;\r\ncase "PAB": return "590"; break;\r\ncase "PEN": return "604"; break;\r\ncase "PGK": return "598"; break;\r\ncase "PHP": return "608"; break;\r\ncase "PKR": return "586"; break;\r\ncase "PLN": return "985"; break;\r\ncase "PYG": return "600"; break;\r\ncase "QAR": return "634"; break;\r\ncase "ROL": return "642"; break;\r\ncase "RUB": return "643"; break;\r\ncase "RUR": return "810"; break;\r\ncase "RWF": return "646"; break;\r\ncase "SAR": return "682"; break;\r\ncase "SBD": return "090"; break;\r\ncase "SCR": return "690"; break;\r\ncase "SDD": return "736"; break;\r\ncase "SEK": return "752"; break;\r\ncase "SGD": return "702"; break;\r\ncase "SHP": return "654"; break;\r\ncase "SIT": return "705"; break;\r\ncase "SKK": return "703"; break;\r\ncase "SLL": return "694"; break;\r\ncase "SOS": return "706"; break;\r\ncase "SRG": return "740"; break;\r\ncase "STD": return "678"; break;\r\ncase "SVC": return "222"; break;\r\ncase "SYP": return "760"; break;\r\ncase "SZL": return "748"; break;\r\ncase "THB": return "764"; break;\r\ncase "TJS": return "972"; break;\r\ncase "TMM": return "795"; break;\r\ncase "TND": return "788"; break;\r\ncase "TOP": return "776"; break;\r\ncase "TPE": return "626"; break;\r\ncase "TRL": return "792"; break;\r\ncase "TRY": return "949"; break;\r\ncase "TTD": return "780"; break;\r\ncase "TWD": return "901"; break;\r\ncase "TZS": return "834"; break;\r\ncase "UAH": return "980"; break;\r\ncase "UGX": return "800"; break;\r\ncase "USD": return "840"; break;\r\ncase "UYU": return "858"; break;\r\ncase "UZS": return "860"; break;\r\ncase "VEB": return "862"; break;\r\ncase "VND": return "704"; break;\r\ncase "VUV": return "548"; break;\r\ncase "XAF": return "950"; break;\r\ncase "XCD": return "951"; break;\r\ncase "XOF": return "952"; break;\r\ncase "XPF": return "953"; break;\r\ncase "YER": return "886"; break;\r\ncase "YUM": return "891"; break;\r\ncase "ZAR": return "710"; break;\r\ncase "ZMK": return "894"; break;\r\ncase "ZWD": return "716"; break;\r\n}\r\nreturn "XXX"; // return invalid code if the currency is not found \r\n}\r\n\r\nfunction calculateePayCurrency($order_id)\r\n{\r\n$db = new ps_DB;\r\n$currency_code = "208";\r\n$q = "SELECT order_currency FROM #__vm_orders where order_id = " . $order_id;\r\n$db->query($q);\r\nif ($db->next_record()) {\r\n	$currency_code = get_iso_code($db->f("order_currency"));\r\n}\r\nreturn $currency_code;\r\n}\r\n echo $VM_LANG->_(''VM_CHECKOUT_EPAY_PAYMENT_CHECKOUT_HEADER'');\r\n?>\r\n<script type="text/javascript" src="http://www.epay.dk/js/standardwindow.js"></script>\r\n<script type="text/javascript">\r\nfunction printCard(cardId)\r\n{\r\ndocument.write ("<table border=0 cellspacing=10 cellpadding=10>");\r\nswitch (cardId) {\r\ncase 1: document.write ("<input type=hidden name=cardtype value=1>"); break;\r\ncase 2: document.write ("<input type=hidden name=cardtype value=2>"); break;\r\ncase 3: document.write ("<input type=hidden name=cardtype value=3>"); break;\r\ncase 4: document.write ("<input type=hidden name=cardtype value=4>"); break;\r\ncase 5: document.write ("<input type=hidden name=cardtype value=5>"); break;\r\ncase 6: document.write ("<input type=hidden name=cardtype value=6>"); break;\r\ncase 7: document.write ("<input type=hidden name=cardtype value=7>"); break;\r\ncase 8: document.write ("<input type=hidden name=cardtype value=8>"); break;\r\ncase 9: document.write ("<input type=hidden name=cardtype value=9>"); break;\r\ncase 10: document.write ("<input type=hidden name=cardtype value=10>"); break;\r\ncase 12: document.write ("<input type=hidden name=cardtype value=12>"); break;\r\ncase 13: document.write ("<input type=hidden name=cardtype value=13>"); break;\r\ncase 14: document.write ("<input type=hidden name=cardtype value=14>"); break;\r\ncase 15: document.write ("<input type=hidden name=cardtype value=15>"); break;\r\ncase 16: document.write ("<input type=hidden name=cardtype value=16>"); break;\r\ncase 17: document.write ("<input type=hidden name=cardtype value=17>"); break;\r\ncase 18: document.write ("<input type=hidden name=cardtype value=18>"); break;\r\ncase 19: document.write ("<input type=hidden name=cardtype value=19>"); break;\r\ncase 21: document.write ("<input type=hidden name=cardtype value=21>"); break;\r\ncase 22: document.write ("<input type=hidden name=cardtype value=22>"); break;\r\n}\r\ndocument.write ("</table>");\r\n}\r\n</script>\r\n<form action="https://ssl.ditonlinebetalingssystem.dk/popup/default.asp" method="post" name="ePay" target="ePay_window" id="ePay">\r\n<input type="hidden" name="merchantnumber" value="<?php echo EPAY_MERCHANTNUMBER ?>">\r\n<input type="hidden" name="amount" value="<?php echo round($db->f("order_total")*100, 2 ) ?>">\r\n<input type="hidden" name="currency" value="<?php echo calculateePayCurrency($order_id)?>">\r\n<input type="hidden" name="orderid" value="<?php echo $order_id ?>">\r\n<input type="hidden" name="ordretext" value="">\r\n<?php \r\nif (EPAY_CALLBACK == "1")\r\n{\r\n	echo ''<input type="hidden" name="callbackurl" value="'' . $mosConfig_live_site . ''/index.php?page=checkout.epay_result&accept=1&sessionid='' . $sessionid . ''&option=com_virtuemart&Itemid=1">'';\r\n}\r\n?>\r\n<input type="hidden" name="accepturl" value="<?php echo $mosConfig_live_site ?>/index.php?page=checkout.epay_result&accept=1&sessionid=<?php echo $sessionid ?>&option=com_virtuemart&Itemid=1">\r\n<input type="hidden" name="declineurl" value="<?php echo $mosConfig_live_site ?>/index.php?page=checkout.epay_result&accept=0&sessionid=<?php echo $sessionid ?>&option=com_virtuemart&Itemid=1">\r\n<input type="hidden" name="group" value="<?php echo EPAY_GROUP ?>">\r\n<input type="hidden" name="instant" value="<?php echo EPAY_INSTANT_CAPTURE ?>">\r\n<input type="hidden" name="language" value="<?php echo EPAY_LANGUAGE ?>">\r\n<input type="hidden" name="authsms" value="<?php echo EPAY_AUTH_SMS ?>">\r\n<input type="hidden" name="authmail" value="<?php echo EPAY_AUTH_MAIL . (strlen(EPAY_AUTH_MAIL) > 0 && EPAY_AUTHEMAILCUSTOMER == 1 ? ";" : "") . (EPAY_AUTHEMAILCUSTOMER == 1 ? $user->user_email : ""); ?>">\r\n<input type="hidden" name="windowstate" value="<?php echo EPAY_WINDOW_STATE ?>">\r\n<input type="hidden" name="use3D" value="<?php echo EPAY_3DSECURE ?>">\r\n<input type="hidden" name="addfee" value="<?php echo EPAY_ADDFEE ?>">\r\n<input type="hidden" name="subscription" value="<?php echo EPAY_SUBSCRIPTION ?>">\r\n<input type="hidden" name="MD5Key" value="<?php if (EPAY_MD5_TYPE == 2) echo md5( calculateePayCurrency($order_id) . round($db->f("order_total")*100, 2 ) . $order_id  . EPAY_MD5_KEY)?>">\r\n<?php\r\nif (EPAY_CARDTYPES_1 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(1)</script>";\r\nif (EPAY_CARDTYPES_2 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(2)</script>";\r\nif (EPAY_CARDTYPES_3 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(3)</script>";\r\nif (EPAY_CARDTYPES_4 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(4)</script>";\r\nif (EPAY_CARDTYPES_5 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(5)</script>";\r\nif (EPAY_CARDTYPES_6 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(6)</script>";\r\nif (EPAY_CARDTYPES_7 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(7)</script>";\r\nif (EPAY_CARDTYPES_8 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(8)</script>";\r\nif (EPAY_CARDTYPES_9 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(9)</script>";\r\nif (EPAY_CARDTYPES_10 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(10)</script>";\r\nif (EPAY_CARDTYPES_11 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(11)</script>";\r\nif (EPAY_CARDTYPES_12 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(12)</script>";\r\nif (EPAY_CARDTYPES_14 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(14)</script>";\r\nif (EPAY_CARDTYPES_15 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(15)</script>";\r\nif (EPAY_CARDTYPES_16 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(16)</script>";\r\nif (EPAY_CARDTYPES_17 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(17)</script>";\r\nif (EPAY_CARDTYPES_18 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(18)</script>";\r\nif (EPAY_CARDTYPES_19 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(19)</script>";\r\nif (EPAY_CARDTYPES_21 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(21)</script>";\r\nif (EPAY_CARDTYPES_22 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(22)</script>";;\r\n?>\r\n</form>\r\n<script>open_ePay_window();</script>\r\n<br>\r\n<table border="0" width="100%"><tr><td><input type="button" onClick="open_ePay_window()" value="<?php echo $VM_LANG->_(''VM_CHECKOUT_EPAY_BUTTON_OPEN_WINDOW'') ?>"></td><td width="100%" id="flashLoader"></td></tr></table><br><br><br>\r\n<?php echo $VM_LANG->_(''VM_CHECKOUT_EPAY_PAYMENT_CHECKOUT_FOOTER'') ?>\r\n<br><br>\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/epay_logo.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/mastercard_securecode.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/pci.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/verisign_secure.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/visa_secure.gif" border="0">&nbsp;&nbsp;&nbsp;;', '');
INSERT INTO `jos_vm_payment_method` VALUES (17, 1, 'PaySbuy', 'ps_paysbuy', 5, 0.00, 0, 0.00, 0.00, 0, 'PSB', 'P', 0, 'N', '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product`
-- 

CREATE TABLE `jos_vm_product` (
  `product_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `product_parent_id` int(11) NOT NULL default '0',
  `product_sku` varchar(64) NOT NULL default '',
  `product_s_desc` varchar(255) default NULL,
  `product_desc` text,
  `product_thumb_image` varchar(255) default NULL,
  `product_full_image` varchar(255) default NULL,
  `product_publish` char(1) default NULL,
  `product_weight` decimal(10,4) default NULL,
  `product_weight_uom` varchar(32) default 'pounds.',
  `product_length` decimal(10,4) default NULL,
  `product_width` decimal(10,4) default NULL,
  `product_height` decimal(10,4) default NULL,
  `product_lwh_uom` varchar(32) default 'inches',
  `product_url` varchar(255) default NULL,
  `product_in_stock` int(11) NOT NULL default '0',
  `product_available_date` int(11) default NULL,
  `product_availability` varchar(56) NOT NULL default '',
  `product_special` char(1) default NULL,
  `product_discount_id` int(11) default NULL,
  `ship_code_id` int(11) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `product_name` varchar(64) default NULL,
  `product_sales` int(11) NOT NULL default '0',
  `attribute` text,
  `custom_attribute` text NOT NULL,
  `product_tax_id` int(11) default NULL,
  `product_unit` varchar(32) default NULL,
  `product_packaging` int(11) default NULL,
  `child_options` varchar(45) default NULL,
  `quantity_options` varchar(45) default NULL,
  `child_option_ids` varchar(45) default NULL,
  `product_order_levels` varchar(45) default NULL,
  PRIMARY KEY  (`product_id`),
  KEY `idx_product_vendor_id` (`vendor_id`),
  KEY `idx_product_product_parent_id` (`product_parent_id`),
  KEY `idx_product_sku` (`product_sku`),
  KEY `idx_product_ship_code_id` (`ship_code_id`),
  KEY `idx_product_name` (`product_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='All products are stored here.' AUTO_INCREMENT=51 ;

-- 
-- Dumping data for table `jos_vm_product`
-- 

INSERT INTO `jos_vm_product` VALUES (1, 1, 0, 'cd1', '', '<p>Mã sản phẩm: NY0040-09E  Model: Mechanical  Kiểu dáng: Nam  Máy: Tự động Calibre 8203 (Automatic)(sai số -15 đến +40giây 1 ngày)  Chất liệu vỏ: Thép không gỉ (All Stainless Steel)  Chất liệu dây: Dây cao su  Mặt kính: (Mineral Glass)  Bảo hành: Quốc Tế: Máy: 1 năm, Pin: 1 năm  Chống nước: 20 bar (Water Resistant 200m)  Chức năng: lịch ngày, thứ, tự động, dạ quang cực mạnh</p>', 'resized/NY0040_09E_51aef689cb7f9_90x90.jpg', 'NY0040_09E_51aef689d4d02.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 30, 1370390400, '', 'N', 0, NULL, 1370420873, 1370422206, 'NY0040-09E', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (2, 1, 0, 'cd2', '', 'Mã sản phẩm: NY0040-09W\r\n\r\nModel: Mechanical\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Tự động Calibre 8203 (Automatic)(sai số -15 đến +40giây 1 ngày)\r\n\r\nChất liệu vỏ: Thép không gỉ (All Stainless Steel)\r\n\r\nChất liệu dây: Dây cao su\r\n\r\nMặt kính: (Mineral Glass)\r\n\r\nBảo hành: Quốc Tế: Máy: 1 năm, Pin: 1 năm\r\n\r\nChống nước: 20 bar (Water Resistant 200m)\r\n\r\nChức năng: lịch ngày, thứ, tự động, dạ quang cực mạnh, mặt số dạ quang cực mạnh', 'resized/NY0040_09W_51aef8383db58_90x90.jpg', 'NY0040_09W_51aef83846de3.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 20, 1370390400, '', 'N', 0, NULL, 1370421291, 1370422228, 'NY0040-09W', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (3, 1, 0, 'cd3', '', '<p>Mã sản phẩm: JZ1000-51L  Model: Promaster, Eco-Drive  Kiểu dáng: Nam  Máy: Pin dùng năng lượng ánh sáng (Eco-Drive)  Chất liệu vỏ: Thép không gỉ (All Stainless Steel)  Chất liệu dây: Thép không gỉ (All Stainless Steel)  Mặt kính: Mineral Glass  Bảo hành: Quốc Tế: Máy: 1 năm, Pin: 1 năm  Chống nước: 10 bar (Water Resistant 100m)  Chức năng: nhiều lắm</p>', 'resized/JZ1000_51L_51aef9be3acf2_90x90.jpg', 'JZ1000_51L_51aef9be440a8.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 15, 1370390400, '', 'Y', 0, NULL, 1370421694, 1370449419, 'JZ1000-51L', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,3');
INSERT INTO `jos_vm_product` VALUES (4, 1, 0, 'cd4', '', 'Mã sản phẩm: BJ7010-24W\r\n\r\nModel: Promaster, Eco-Drive\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin dùng năng lượng ánh sáng (Eco-Drive)\r\n\r\nChất liệu vỏ: Thép không gỉ (All Stainless Steel)\r\n\r\nChất liệu dây: Dây da\r\n\r\nMặt kính: (Mineral Glass)\r\n\r\nBảo hành: Quốc Tế: Máy: 1 năm, Pin: 1 năm\r\n\r\nChống nước: 20 bar (Water Resistant 200m)\r\n\r\nChức năng: lịch ngày, đồng hồ phi công, nhiều lắm, năng lượng ánh sáng\r\n\r\n(Đồng hồ sẽ ngưng hoạt động khi để trong bóng tối 6 tháng)', 'resized/_BJ7010_24W_51aefa29184cb_90x90.jpg', '_BJ7010_24W_51aefa2921b21.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 20, 1370390400, '', 'Y', 0, NULL, 1370421801, 1370423267, 'BJ7010-24W', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (5, 1, 0, 'cp1', '', 'Mã sản phẩm: BK4050-71E\r\n\r\nModel:\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Quartz\r\n\r\nChất liệu vỏ: Thép không gỉ (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ (All Stainless Steel)\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Quốc Tế: Máy: 1 năm, Pin: 1 năm\r\n\r\nChống nước: 5 bar (Water Resistant 50m)\r\n\r\nChức năng: Lịch ngày, thứ', 'resized/BK4050_71E_51aefadeeb6d0_90x90.jpg', 'BK4050_71E_51aefadf009d0.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 20, 1370390400, '', 'N', 0, NULL, 1370421983, 1370422135, 'BK4050-71E', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (11, 1, 0, 'nl3', '', 'Mã sản phẩm: BM6650-53E\r\n\r\nModel: Eco-Drive\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin dùng năng lượng ánh sáng (Eco-Drive)\r\n\r\nChất liệu vỏ: Thép không gỉ (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ (All Stainless Steel)\r\n\r\nMặt kính: Kính chống trầy (Sapphire Glass)\r\n\r\nBảo hành: Quốc Tế: Máy: 1 năm, Pin: 1 năm\r\n\r\nChống nước: 5 bar (Water Resistant 50m)\r\n\r\nChức năng: lịch ngày, năng lượng ánh sáng\r\n\r\n(Đồng hồ sẽ ngưng hoạt động khi để trong bóng tối 6 tháng)', 'resized/BM6650_53E_51af670a79b3b_90x90.jpg', 'BM6650_53E_51af670a82f40.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 20, 1370390400, '', 'Y', 0, NULL, 1370449674, 1370449706, 'BM6650-53E', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,3');
INSERT INTO `jos_vm_product` VALUES (6, 1, 0, 'cp2', '', 'Mã sản phẩm: EJ6050-58A\r\n\r\nModel:\r\n\r\nKiểu dáng: Nữ\r\n\r\nMáy: Quartz\r\n\r\nChất liệu vỏ: Thép không gỉ (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ (All Stainless Steel)\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Quốc Tế: Máy: 1 năm, Pin: 1 năm\r\n\r\nChống nước: Được rửa tay, đi mưa (Water Resist)\r\n\r\nChức năng:', 'resized/EJ6050_58A_51aefc204dc07_90x90.jpg', 'EJ6050_58A_51aefc2056ed1.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 15, 1370390400, '', 'N', 0, NULL, 1370422304, 1370422304, 'EJ6050-58A', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,3');
INSERT INTO `jos_vm_product` VALUES (7, 1, 0, 'cp3', '', 'Mã sản phẩm: ER0190-00A\r\n\r\nModel:\r\n\r\nKiểu dáng: Nữ\r\n\r\nMáy: Quartz\r\n\r\nChất liệu vỏ: Thép không gỉ (All Stainless Steel)\r\n\r\nChất liệu dây: Dây da\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Quốc Tế: Máy: 1 năm, Pin: 1 năm\r\n\r\nChống nước: Được rửa tay, đi mưa (Water Resist)\r\n\r\nChức năng:', 'resized/ER0190_00A_51aefc69e9de5_90x90.jpg', 'ER0190_00A_51aefc69f2eb5.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 10, 1370390400, '', 'N', 0, NULL, 1370422378, 1370422378, 'ER0190-00A', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (8, 1, 0, 'cp4', '', 'Mã sản phẩm: EZ6312-52E\r\n\r\nModel:\r\n\r\nKiểu dáng: Nữ\r\n\r\nMáy: Quartz\r\n\r\nChất liệu vỏ: Thép không gỉ (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ (All Stainless Steel)\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Quốc Tế: Máy: 1 năm, Pin: 1 năm\r\n\r\nChống nước: Được rửa tay, đi mưa (Water Resist)\r\n\r\nChức năng:', 'resized/EZ6312_52E_51aefcb559744_90x90.jpg', 'EZ6312_52E_51aefcb56259a.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 30, 1370390400, '', 'N', 0, NULL, 1370422453, 1370422466, 'EZ6312-52E', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (9, 1, 0, 'nl1', '', 'Mã sản phẩm: BM6745-08E\r\n\r\nModel: Eco-Drive\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin dùng năng lượng ánh sáng (Eco-Drive)\r\n\r\nChất liệu vỏ: Thép không gỉ (All Stainless Steel)\r\n\r\nChất liệu dây: Dây nylon 22mm\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Quốc Tế: Máy: 1 năm, Pin: 1 năm\r\n\r\nChống nước: 10 bar (Water Resistant 100m)\r\n\r\nChức năng: lịch ngày, năng lượng ánh sáng\r\n\r\n(Đồng hồ sẽ ngưng hoạt động khi để trong bóng tối 6 tháng)', 'resized/BM6745_08E_51aefd5085db8_90x90.jpg', 'BM6745_08E_51aefd508f5f4.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 20, 1370390400, '', 'N', 0, NULL, 1370422608, 1370422608, 'BM6745-08E', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,3');
INSERT INTO `jos_vm_product` VALUES (10, 1, 0, 'nl2', '', 'Mã sản phẩm: AW1184-13E\r\n\r\nModel: Eco-Drive\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin dùng năng lượng ánh sáng (Eco-Drive)\r\n\r\nChất liệu vỏ: Thép không gỉ (All Stainless Steel), viền mạ đen (Black Ion Plating)\r\n\r\nChất liệu dây: Dây da\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Quốc Tế: Máy: 1 năm, Pin: 1 năm\r\n\r\nChống nước: 10 bar (Water Resistant 100m)\r\n\r\nChức năng: lịch ngày, năng lượng ánh sáng\r\n\r\n(Đồng hồ sẽ ngưng hoạt động khi để trong bóng tối 8 tháng)', 'resized/AW1184_13E_51aefdff7d764_90x90.jpg', 'AW1184_13E_51aefdff86a99.jpg', 'Y', 0.0000, 'pounds', 20.0000, 1.0000, 3.0000, 'inches', '', 0, 1370390400, '', 'N', 0, NULL, 1370422783, 1370449470, 'AW1184-13E', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (12, 1, 0, 'nl4', '', 'Mã sản phẩm: AW1030-50B\r\n\r\nModel: Eco-Drive\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin dùng năng lượng ánh sáng (Eco-Drive)\r\n\r\nChất liệu vỏ: Thép không gỉ (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ (All Stainless Steel)\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Quốc Tế: Máy: 1 năm, Pin: 1 năm\r\n\r\nChống nước: 5 bar (Water Resistant 50m)\r\n\r\nChức năng: lịch ngày, năng lượng ánh sáng\r\n\r\n(Đồng hồ sẽ ngưng hoạt động khi để trong bóng tối 8 tháng)', 'resized/AW1030_50B_51af68ae75649_90x90.jpg', 'AW1030_50B_51af68ae7e4c4.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 20, 1370390400, '', 'Y', 0, NULL, 1370450094, 1370450121, 'AW1030-50B', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (13, 1, 0, 'gs1', '', '<p>Mã sản phẩm: DW-5600E-1VDF  Kiểu dáng: Nam  Máy: Pin  Loại dây: Dây cao su  Mặt kính: Mineral Glass  Bảo hành: Máy: 1 năm - Pin: 1,5 năm  Chống nước: 200 mét  Chức năng: nhiều lắm  Xuất xứ: Nhật Bản</p>', 'resized/_DW_5600E_1VDF_51af6a277aad0_90x90.jpg', '_DW_5600E_1VDF_51af6a2781899.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 10, 1370390400, '', 'N', 0, NULL, 1370450471, 1370450490, 'DW-5600E-1VDF', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,10');
INSERT INTO `jos_vm_product` VALUES (14, 1, 0, 'gs2', '', 'Mã sản phẩm: AW-590-1ADR\r\nKiểu dáng: Nam \r\nMáy: Pin \r\nLoại dây: Dây cao su\r\nMặt kính: Mineral Glass\r\nBảo hành: Máy: 1 năm - Pin: 1,5 năm \r\nChống nước: 200 mét \r\nChức năng: nhiều lắm\r\nXuất xứ: Nhật Bản', 'resized/AW_590_1ADR_51af6a814917a_90x90.jpg', 'AW_590_1ADR_51af6a81501e7.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 20, 1370390400, '', 'N', 0, NULL, 1370450561, 1370450606, 'AW-590-1ADR', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,20');
INSERT INTO `jos_vm_product` VALUES (15, 1, 0, 'gs3', '', '<p>Mã sản phẩm: DW-6900NB-1DR  Kiểu dáng: Nam  Máy: Pin  Loại dây: Dây cao su  Mặt kính: Mineral Glass  Bảo hành: Máy: 1 năm - Pin: 1,5 năm  Chống nước: 200 mét  Chức năng: nhiều lắm  Xuất xứ: Nhật Bản</p>', 'resized/DW_6900NB_1DR_51af6af3b679d_90x90.jpg', 'DW_6900NB_1DR_51af6af3bd954.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 20, 1370390400, '', 'N', 0, NULL, 1370450660, 1370450698, 'DW-6900NB-1DR', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,20');
INSERT INTO `jos_vm_product` VALUES (16, 1, 0, 'gs4', '', 'Mã sản phẩm: GD-110-2DR\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây cao su\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Máy: 1 năm - Pin: 1,5 năm\r\n\r\nChống nước: 200 mét\r\n\r\nChức năng: nhiều lắm\r\n\r\nXuất xứ: Nhật Bản', 'resized/GD_110_2DR_51af6b6134860_90x90.jpg', 'GD_110_2DR_51af6b613baae.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 30, 1370390400, '', 'N', 0, NULL, 1370450785, 1370450841, 'GD-110-2DR', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (17, 1, 0, 'bs1', '', 'Mã sản phẩm: BEM-100D-1AVDF\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây inox (stainless steel)\r\n\r\nBảo hành: Máy: 1 năm - Pin: 1,5 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng: lịch ngày\r\n\r\nXuất xứ: Nhật Bản', 'resized/BEM_100D_1AVDF_51af6bebcabf2_90x90.jpg', 'BEM_100D_1AVDF_51af6bebd1cbf.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 20, 1370390400, '', 'N', 0, NULL, 1370450923, 1370450944, 'BEM-100D-1AVDF', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,20');
INSERT INTO `jos_vm_product` VALUES (18, 1, 0, 'bs1', '', '', 'resized/BEM_100D_1AVDF_51af6bebd46ca_90x90.jpg', 'BEM_100D_1AVDF_51af6bebdc3f5.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 20, 1370390400, '', 'N', 0, NULL, 1370450923, 1370450923, 'BEM-100D-1AVDF', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,20');
INSERT INTO `jos_vm_product` VALUES (19, 1, 0, 'bs2', '', 'Mã sản phẩm: BEM-506CD-1AVDF\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin\r\n\r\nLoại dây:Dây inox (stainless steel)\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Máy: 1 năm - Pin: 1,5 năm\r\n\r\nChống nước: 50 mét\r\n\r\nChức năng: lịch ngày, thứ, thể thao chronograph\r\n\r\nXuất xứ: Nhật Bản', 'resized/BEM_506CD_1AVDF_51af6c4108060_90x90.jpg', 'BEM_506CD_1AVDF_51af6c410ec75.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 5, 1370390400, '', 'N', 0, NULL, 1370451009, 1370451026, 'BEM-506CD-1AVDF', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (20, 1, 0, 'bs3', '', 'Mã sản phẩm: BEM-506L-7AVDF\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây da\r\n\r\nBảo hành: Máy: 1 năm - Pin: 1 năm\r\n\r\nChống nước: 50 mét\r\n\r\nChức năng: lịch ngày, thứ, thể thao chronograph\r\n\r\nXuất xứ: Nhật Bản', 'resized/BEM_506L_7AVDF_51af6c90b01c8_90x90.jpg', 'BEM_506L_7AVDF_51af6c90b72a8.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 5, 1370390400, '', 'N', 0, NULL, 1370451088, 1370451098, 'BEM-506L-7AVDF', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (21, 1, 0, 'bs4', '', 'Mã sản phẩm: BEL-100SG-7AVDF\r\n\r\nKiểu dáng: Nữ\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây inox (stainless steel)\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Máy: 1 năm - Pin: 1,5 năm\r\n\r\nChống nước: 50 mét\r\n\r\nChức năng: lịch ngày\r\n\r\nXuất xứ: Nhật Bản', 'resized/BEL_100SG_7AVDF_51af6ccfafb08_90x90.jpg', 'BEL_100SG_7AVDF_51af6ccfb6861.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 10, 1370390400, '', 'N', 0, NULL, 1370451151, 1370451160, 'BEL-100SG-7AVDF', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,10');
INSERT INTO `jos_vm_product` VALUES (22, 1, 0, 'bg1', '', 'Mã sản phẩm: BG-6903-7DR\r\n\r\nKiểu dáng: Nữ\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây cao su\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Máy: 1 năm - Pin: 1,5 năm\r\n\r\nChống nước: 200 mét\r\n\r\nChức năng: nhiều lắm\r\n\r\nXuất xứ: Nhật Bản', 'resized/BG_6903_7DR_51af6d398e950_90x90.jpg', 'BG_6903_7DR_51af6d3995608.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 10, 1370390400, '', 'N', 0, NULL, 1370451257, 1370451265, 'BG-6903-7DR', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,10');
INSERT INTO `jos_vm_product` VALUES (23, 1, 0, 'bg2', '', 'Mã sản phẩm: BG-6900-2DR\r\n\r\nKiểu dáng: Nữ\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây cao su\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Máy: 1 năm - Pin: 1,5 năm\r\n\r\nChống nước: 200 mét\r\n\r\nChức năng: nhiều lắm\r\n\r\nXuất xứ: Nhật Bản', 'resized/BG_6900_2DR_51af6d777bd25_90x90.jpg', 'BG_6900_2DR_51af6d7782e14.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 15, 1370390400, '', 'N', 0, NULL, 1370451319, 1370451326, 'BG-6900-2DR', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,15');
INSERT INTO `jos_vm_product` VALUES (24, 1, 0, 'bg3', '', 'Mã sản phẩm: BGA-200PD-1BDR\r\n\r\nKiểu dáng: Nữ\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây cao su\r\n\r\nMặt kính: Mineral Glass\r\n\r\nBảo hành: Máy: 1 năm - Pin: 1,5 năm\r\n\r\nChống nước: 100 mét\r\n\r\nChức năng: nhiều lắm\r\n\r\nXuất xứ: Nhật Bản', 'resized/BGA_200PD_1BDR_51af6dc8965ce_90x90.jpg', 'BGA_200PD_1BDR_51af6dc89d6a0.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 15, 1370390400, '', 'N', 0, NULL, 1370451400, 1370451409, 'BGA-200PD-1BDR', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,15');
INSERT INTO `jos_vm_product` VALUES (25, 1, 0, 'bg4', '', '<p>Mã sản phẩm: BGD-102-4DR  Kiểu dáng: Nữ  Máy: Pin  Loại dây: Dây cao su  Mặt kính: Mineral Glass  Bảo hành: Máy: 1 năm - Pin: 1,5 năm  Chống nước: 100 mét  Chức năng: nhiều lắm  Xuất xứ: Nhật Bản</p>', 'resized/BGD_102_4DR_51af6e12942e8_90x90.jpg', 'BGD_102_4DR_51af6e129b27d.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 15, 1370390400, '', 'N', 0, NULL, 1370451474, 1370451482, 'BGD-102-4DR', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,15');
INSERT INTO `jos_vm_product` VALUES (26, 1, 0, 'td1', '', 'Mã sản phẩm: 9365SL01\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Tự động (Automatic)\r\n\r\nLoại dây: Dây da\r\n\r\nBảo hành: Máy: 2 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng:\r\n\r\nXuất xứ: Ấn Độ', 'resized/9365SL01_51af6eeef3af8_90x90.jpg', '9365SL01_51af6eef0a2c4.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 5, 1370390400, '', 'N', 0, NULL, 1370451695, 1370451706, '9365SL01', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (27, 1, 0, 'td2', '', 'Mã sản phẩm: 9365YL01\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Tự động (Automatic)\r\n\r\nLoại dây: Dây da\r\n\r\nBảo hành: Máy: 2 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng:\r\n\r\nXuất xứ: Ấn Độ', 'resized/9365YL01_51af6f3492f3e_90x90.jpg', '9365YL01_51af6f349da0f.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 5, 1370390400, '', 'N', 0, NULL, 1370451764, 1370451774, '9365YL01', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (28, 1, 0, 'td3', '', 'Mã sản phẩm: 9365SM01\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Tự động (Automatic)\r\n\r\nLoại dây: Thép không gỉ\r\n\r\nBảo hành: Máy: 2 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng:\r\n\r\nXuất xứ: Ấn Độ', 'resized/9365SM01_51af6f6a4c1a4_90x90.jpg', '9365SM01_51af6f6a56ac4.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 5, 1370390400, '', 'Y', 0, NULL, 1370451818, 1370451833, '9365SM01', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (29, 1, 0, 'td4', '', 'Mã sản phẩm: 9277SL01\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Lên dây\r\n\r\nLoại dây: Dây da\r\n\r\nBảo hành: Máy: 2 năm - Pin: 1 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng: Lên dây thấy máy\r\n\r\nXuất xứ: Ấn Độ', 'resized/9277SL01_51af6fc61f065_90x90.jpg', '9277SL01_51af6fc629b54.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 5, 1370390400, '', 'Y', 0, NULL, 1370451910, 1370451926, '9277SL01', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (30, 1, 0, 'td5', '', 'Mã sản phẩm: 9277WL01\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Lên dây\r\n\r\nLoại dây: Dây da\r\n\r\nBảo hành: Máy: 2 năm - Pin: 1 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng: Lên dây thấy máy\r\n\r\nXuất xứ: Ấn Độ', 'resized/9277WL01_51af700dce618_90x90.jpg', '9277WL01_51af700dd92ff.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 5, 1370390400, '', 'N', 0, NULL, 1370451981, 1370451992, '9277WL01', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (31, 1, 0, 'dg1', '', 'Mã sản phẩm: 1445YL04\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây da\r\n\r\nBảo hành: Máy: 2 năm - Pin: 1 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng: Lịch ngày, thứ\r\n\r\nXuất xứ: Ấn Độ', 'resized/1445YL04_51af7069b3acd_90x90.jpg', '1445YL04_51af7069be1bb.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 10, 1370390400, '', 'N', 0, NULL, 1370452073, 1370452084, '1445YL04', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,10');
INSERT INTO `jos_vm_product` VALUES (32, 1, 0, 'dg2', '', 'Mã sản phẩm: 1559YL01\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây da\r\n\r\nBảo hành: Máy: 2 năm - Pin: 1 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng: Lịch ngày\r\n\r\nXuất xứ: Ấn Độ', 'resized/1559YL01_51af70bb6b07b_90x90.jpg', '1559YL01_51af70bb75903.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 20, 1370390400, '', 'N', 0, NULL, 1370452155, 1370452162, '1559YL01', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,20');
INSERT INTO `jos_vm_product` VALUES (33, 1, 0, 'dg3', '', 'Mã sản phẩm: 1927BM02\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây kim loại\r\n\r\nBảo hành: Máy: 2 năm - Pin: 1 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng: Lịch ngày\r\n\r\nXuất xứ: Ấn Độ', 'resized/1927BM02_51af7106ddc2b_90x90.jpg', '1927BM02_51af7106e8578.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 15, 1370390400, '', 'N', 0, NULL, 1370452230, 1370452239, '1927BM02', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,15');
INSERT INTO `jos_vm_product` VALUES (34, 1, 0, 'dg4', '', 'Mã sản phẩm: 1523BM01\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây kim loại\r\n\r\nBảo hành: Máy: 2 năm - Pin: 1 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng: hai kim rưỡi, lịch ngày vị trí 12h độc đáo\r\n\r\nXuất xứ: Ấn Độ', 'resized/1523BM01_51af715b904cb_90x90.jpg', '1523BM01_51af715b9aea6.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 15, 1370390400, '', 'N', 0, NULL, 1370452315, 1370452321, '1523BM01', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,15');
INSERT INTO `jos_vm_product` VALUES (35, 1, 0, 'sm1', '', 'Mã sản phẩm: 9175SL01\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin\r\n\r\nPhong cách: Cá tính, trẻ trung, độc đáo, thời trang\r\n\r\nLoại dây: Dây da\r\n\r\nBảo hành: Máy: 2 năm - Pin: 1 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng: rất mỏng, kiếng sarphie chống trầy\r\n\r\nXuất xứ: Ấn Độ', 'resized/9175SL01_51af71acbb6a4_90x90.jpg', '9175SL01_51af71acc6164.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 15, 1370390400, '', 'N', 0, NULL, 1370452396, 1370452408, '9175SL01', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,15');
INSERT INTO `jos_vm_product` VALUES (36, 1, 0, 'sm2', '', 'Mã sản phẩm: 679YL01\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây da\r\n\r\nBảo hành: Máy: 2 năm - Pin: 1 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng: Siêu mỏng nhất thế giới, kiếng sarphie chống trầy\r\n\r\nXuất xứ: Ấn Độ', 'resized/679YL01_51af72844d785_90x90.jpg', '679YL01_51af72845850a.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 10, 1370390400, '', 'N', 0, NULL, 1370452612, 1370452644, '679YL01', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,10');
INSERT INTO `jos_vm_product` VALUES (37, 1, 0, 'sm3', '', 'Mã sản phẩm: 1517NL01\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin\r\n\r\nLoại dây: Dây da\r\n\r\nBảo hành: Máy: 2 năm - Pin: 1 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng: Siêu mỏng nhất thế giới, kiếng sarphie chống trầy\r\n\r\nXuất xứ: Ấn Độ', 'resized/_1517NL01_51af72d772128_90x90.jpg', '_1517NL01_51af72d77ca24.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 10, 1370390400, '', 'N', 0, NULL, 1370452695, 1370452706, '1517NL01', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,10');
INSERT INTO `jos_vm_product` VALUES (38, 1, 0, 'sm4', '', 'Mã sản phẩm: 679TL01\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Pin\r\n\r\nLoại dây:Dây da\r\n\r\nBảo hành:Máy: 2 năm - Pin: 1 năm\r\n\r\nChống nước: 30 mét\r\n\r\nChức năng: Siêu mỏng nhất thế giới, kiếng sarphie chống trầy, vỏ titanium siêu nhẹ\r\n\r\nXuất xứ: Ấn Độ', 'resized/679TL01_51af7317b8844_90x90.jpg', '679TL01_51af7317c309a.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 10, 1370390400, '', 'N', 0, NULL, 1370452759, 1370452786, '679TL01', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,10');
INSERT INTO `jos_vm_product` VALUES (39, 1, 0, 'cc1', '', 'Mã sản phẩm: SNQ117P1\r\n\r\nModel: Premier\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Perpetual Calendar\r\n\r\nChất liệu vỏ: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nMặt kính: Kính chống trầy (Sapphire Glass)\r\n\r\nBảo hành: Quốc Tế 1 năm\r\n\r\nChống nước: 100m\r\n\r\nChức năng: lịch ngày, lịch vạn viên đúng ngày tới năm 2100 (Perpetual Calendar)', 'resized/SNQ117P1_51af76a04f2f7_90x90.jpg', 'SNQ117P1_51af76a057bc3.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 5, 1370390400, '', 'Y', 0, NULL, 1370453664, 1370453681, 'SNQ117P1', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (40, 1, 0, 'cc2', '', '<p>Mã sản phẩm: SPC067P1  Model: Premier  Kiểu dáng: Nam  Máy: Quartz Chronograph  Chất liệu vỏ: Thép không gỉ 316L (All Stainless Steel)  Chất liệu dây: Thép không gỉ 316L (All Stainless Steel)  Mặt kính: Kính chống trầy (Sapphire Glass)  Bảo hành: Quốc Tế 1 năm  Chống nước: 100m  Chức năng: Lịch ngày, thể thao chronograph, Double Retrograde Chronograph  Xuất xứ: Nhật Bản</p>', 'resized/SPC067P1_51af79bfdc161_90x90.jpg', 'SPC067P1_51af79bfe4583.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 5, 1370390400, '', 'N', 0, NULL, 1370454463, 1370454472, 'SPC067P1', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (41, 1, 0, 'cc3', '', 'Mã sản phẩm: SSA021J2\r\n\r\nModel: Premier\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Automatic 24 chân kính\r\n\r\nChất liệu vỏ: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nChất liệu dây: Dây da\r\n\r\nMặt kính: Kính chống trầy (Sapphire Glass)\r\n\r\nBảo hành: Quốc Tế 1 năm\r\n\r\nChống nước: 100m\r\n\r\nChức năng: Giờ 24, thời gian tích trữ 41 giờ\r\n\r\nXuất xứ: Nhật Bản', 'resized/SSA021J2_51af7a093e895_90x90.jpg', 'SSA021J2_51af7a0947e32.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 5, 1370390400, '', 'N', 0, NULL, 1370454537, 1370454537, 'SSA021J2', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (42, 1, 0, 'cc4', '', 'Mã sản phẩm: SNP039P1\r\n\r\nModel: Premier\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Kinetic\r\n\r\nChất liệu vỏ: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nMặt kính: Kính chống trầy (Sapphire Glass)\r\n\r\nBảo hành: Quốc Tế 1 năm\r\n\r\nChống nước: 100m\r\n\r\nChức năng: lịch ngày, lịch tháng, giờ 24, lịch vạn viên đúng ngày tới năm 2100 (Perpetual Calendar), 2 ô lịch to (Double Big Date)\r\n\r\nXuất xứ: Nhật Bản', 'resized/SNP039P1_51af7a43f2f8d_90x90.jpg', 'SNP039P1_51af7a44076ee.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 5, 1370390400, '', 'N', 0, NULL, 1370454596, 1370454596, 'SNP039P1', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,5');
INSERT INTO `jos_vm_product` VALUES (43, 1, 0, 'pg1', '', 'Mã sản phẩm: SRP262J1\r\n\r\nModel: Presage\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Automatic\r\n\r\nChất liệu vỏ: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nChất liệu dây: Dây da\r\n\r\nMặt kính: Kính chống trầy (Sapphire Glass)\r\n\r\nBảo hành: Quốc Tế 1 năm\r\n\r\nChống nước: 100m\r\n\r\nChức năng: Lịch ngày, thứ\r\n\r\nXuất xứ: Nhật Bản', 'resized/SRP262J1_51af7a9ac5920_90x90.jpg', 'SRP262J1_51af7a9ace12f.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 10, 1370390400, '', 'Y', 0, NULL, 1370454682, 1370454682, 'SRP262J1', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,10');
INSERT INTO `jos_vm_product` VALUES (44, 1, 0, 'pg2', '', 'Mã sản phẩm: SRP103J1\r\n\r\nModel: Presage\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Automatic\r\n\r\nChất liệu vỏ: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nMặt kính: Kính chống trầy (Sapphire Glass)\r\n\r\nBảo hành: Quốc Tế 1 năm\r\n\r\nChống nước: 100m\r\n\r\nChức năng: Lịch ngày\r\n\r\nXuất xứ: Nhật Bản', 'resized/SRP103J1_51af7aef63781_90x90.jpg', 'SRP103J1_51af7aef6bef7.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 20, 1370390400, '', 'N', 0, NULL, 1370454767, 1370454767, 'SRP103J1', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,20');
INSERT INTO `jos_vm_product` VALUES (45, 1, 0, 'pg3', '', 'Mã sản phẩm: SSA013J1\r\n\r\nModel: Presage\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Automatic\r\n\r\nChất liệu vỏ: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nMặt kính: Kính chống trầy (Sapphire Glass)\r\n\r\nBảo hành: Quốc Tế 1 năm\r\n\r\nChống nước: 100m\r\n\r\nChức năng:\r\n\r\nXuất xứ: Nhật Bản', 'resized/SSA013J1_51af7b3781932_90x90.jpg', 'SSA013J1_51af7b378a192.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 25, 1370390400, '', 'N', 0, NULL, 1370454839, 1370454839, 'SSA013J1', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,15');
INSERT INTO `jos_vm_product` VALUES (46, 1, 0, 'pg4', '', 'Mã sản phẩm: SRP184J1\r\n\r\nModel: Presage\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Automatic\r\n\r\nChất liệu vỏ: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nMặt kính: Kính chống trầy (Sapphire Glass)\r\n\r\nBảo hành: Quốc Tế 1 năm\r\n\r\nChống nước: 100m\r\n\r\nChức năng: Lịch ngày, thứ\r\n\r\nXuất xứ: Nhật Bản', 'resized/SRP184J1_51af7bb1dbca7_90x90.jpg', 'SRP184J1_51af7bb1e4771.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 15, 1370390400, '', 'N', 0, NULL, 1370454961, 1370454961, 'SRP184J1', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,10');
INSERT INTO `jos_vm_product` VALUES (47, 1, 0, 'sl1', '', 'Mã sản phẩm: SNE088P1\r\n\r\nModel: Quartz Solar\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Quartz Solar\r\n\r\nChất liệu vỏ: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nMặt kính: (Mineral Glass)\r\n\r\nBảo hành: Quốc Tế 1 năm\r\n\r\nChống nước: 100m\r\n\r\nChức năng: Lịch ngày, năng lượng ánh sáng\r\n\r\nXuất xứ: Nhật Bản', 'resized/SNE088P1_51af7c2d1b1f2_90x90.jpg', 'SNE088P1_51af7c2d239e1.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 10, 1370390400, '', 'N', 0, NULL, 1370455085, 1370455085, 'SNE088P1', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,10');
INSERT INTO `jos_vm_product` VALUES (48, 1, 0, 'sl2', '', 'Mã sản phẩm: SUP084P1\r\n\r\nModel: Quartz Reg\r\n\r\nKiểu dáng: Nữ\r\n\r\nMáy: Pin (Quartz)\r\n\r\nChất liệu vỏ: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nMặt kính: (Mineral Glass)\r\n\r\nBảo hành: Quốc Tế 1 năm\r\n\r\nChống nước: 30m\r\n\r\nChức năng: 22 viên pha lê, năng lượng ánh sáng\r\n\r\nXuất xứ: Nhật Bản', 'resized/SUP084P1_51af7c6d1c65f_90x90.jpg', 'SUP084P1_51af7c6d24958.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 10, 1370390400, '', 'N', 0, NULL, 1370455149, 1370455149, 'SUP084P1', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,10');
INSERT INTO `jos_vm_product` VALUES (49, 1, 0, 'sl3', '', 'Mã sản phẩm: SNE084P1\r\n\r\nModel: Quartz Solar\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Quartz Solar\r\n\r\nChất liệu vỏ: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nMặt kính: (Mineral Glass)\r\n\r\nBảo hành: Quốc Tế 1 năm\r\n\r\nChống nước: 100m\r\n\r\nChức năng: Lịch ngày, năng lượng ánh sáng\r\n\r\nXuất xứ: Nhật Bản', 'resized/SNE084P1_51af7cd064138_90x90.jpg', 'SNE084P1_51af7cd06c995.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 10, 1370390400, '', 'N', 0, NULL, 1370455248, 1370455248, 'SNE084P1', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,10');
INSERT INTO `jos_vm_product` VALUES (50, 1, 0, 'sl4', '', 'Mã sản phẩm: SNE213P1\r\n\r\nModel: Quartz Solar\r\n\r\nKiểu dáng: Nam\r\n\r\nMáy: Quartz Solar\r\n\r\nChất liệu vỏ: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ 316L (All Stainless Steel)\r\n\r\nMặt kính: (Mineral Glass)\r\n\r\nBảo hành: Quốc Tế 1 năm\r\n\r\nChống nước: 100m\r\n\r\nChức năng: Lịch ngày, năng lượng ánh sáng\r\n\r\nXuất xứ: Nhật Bản', 'resized/SNE213P1_51af7d32a65d1_90x90.jpg', 'SNE213P1_51af7d32aebd9.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 15, 1370390400, '', 'N', 0, NULL, 1370455346, 1370455346, 'SNE213P1', 0, '', '', 0, 'cái', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '1,10');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_attribute`
-- 

CREATE TABLE `jos_vm_product_attribute` (
  `attribute_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `attribute_name` char(255) NOT NULL default '',
  `attribute_value` char(255) NOT NULL default '',
  PRIMARY KEY  (`attribute_id`),
  KEY `idx_product_attribute_product_id` (`product_id`),
  KEY `idx_product_attribute_name` (`attribute_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores attributes + their specific values for Child Products' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_product_attribute`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_attribute_sku`
-- 

CREATE TABLE `jos_vm_product_attribute_sku` (
  `product_id` int(11) NOT NULL default '0',
  `attribute_name` char(255) NOT NULL default '',
  `attribute_list` int(11) NOT NULL default '0',
  KEY `idx_product_attribute_sku_product_id` (`product_id`),
  KEY `idx_product_attribute_sku_attribute_name` (`attribute_name`),
  KEY `idx_product_attribute_list` (`attribute_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Attributes for a Parent Product used by its Child Products';

-- 
-- Dumping data for table `jos_vm_product_attribute_sku`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_category_xref`
-- 

CREATE TABLE `jos_vm_product_category_xref` (
  `category_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `product_list` int(11) default NULL,
  KEY `idx_product_category_xref_category_id` (`category_id`),
  KEY `idx_product_category_xref_product_id` (`product_id`),
  KEY `idx_product_category_xref_product_list` (`product_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

-- 
-- Dumping data for table `jos_vm_product_category_xref`
-- 

INSERT INTO `jos_vm_product_category_xref` VALUES (2, 1, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (1, 1, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (1, 2, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (2, 2, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (1, 4, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (1, 3, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (2, 3, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (2, 4, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (1, 5, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (3, 5, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (1, 6, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (3, 6, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (1, 7, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (3, 7, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (1, 8, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (3, 8, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (1, 9, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (4, 9, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (1, 10, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (4, 10, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (1, 11, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (4, 11, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (1, 12, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (4, 12, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (5, 13, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (6, 13, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (5, 14, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (6, 14, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (5, 15, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (6, 15, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (5, 16, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (5, 17, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (6, 16, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (7, 17, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (5, 18, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (7, 18, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (5, 20, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (5, 19, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (7, 19, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (7, 20, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (5, 21, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (7, 21, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (5, 22, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (8, 22, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (8, 24, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (5, 24, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (5, 25, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (8, 25, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 26, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (10, 26, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 27, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (10, 27, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 28, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (10, 28, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 29, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (10, 29, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 30, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (10, 30, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 31, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (11, 31, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 32, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (11, 32, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 33, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (11, 33, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 34, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (11, 34, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 35, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (12, 35, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 36, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (12, 36, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 37, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (12, 37, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (9, 38, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (12, 38, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 39, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (14, 39, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 40, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (14, 40, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 41, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (14, 41, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 42, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (14, 42, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 43, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (15, 43, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 44, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (15, 44, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 45, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (15, 45, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (3, 46, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 46, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (15, 46, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 47, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (16, 47, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 48, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (16, 48, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 49, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (16, 49, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 50, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (16, 50, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_discount`
-- 

CREATE TABLE `jos_vm_product_discount` (
  `discount_id` int(11) NOT NULL auto_increment,
  `amount` decimal(12,2) NOT NULL default '0.00',
  `is_percent` tinyint(1) NOT NULL default '0',
  `start_date` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  PRIMARY KEY  (`discount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Discounts that can be assigned to products' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_product_discount`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_download`
-- 

CREATE TABLE `jos_vm_product_download` (
  `product_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `order_id` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  `download_max` int(11) NOT NULL default '0',
  `download_id` varchar(32) NOT NULL default '',
  `file_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Active downloads for selling downloadable goods';

-- 
-- Dumping data for table `jos_vm_product_download`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_files`
-- 

CREATE TABLE `jos_vm_product_files` (
  `file_id` int(19) NOT NULL auto_increment,
  `file_product_id` int(11) NOT NULL default '0',
  `file_name` varchar(128) NOT NULL default '',
  `file_title` varchar(128) NOT NULL default '',
  `file_description` mediumtext NOT NULL,
  `file_extension` varchar(128) NOT NULL default '',
  `file_mimetype` varchar(64) NOT NULL default '',
  `file_url` varchar(254) NOT NULL default '',
  `file_published` tinyint(1) NOT NULL default '0',
  `file_is_image` tinyint(1) NOT NULL default '0',
  `file_image_height` int(11) NOT NULL default '0',
  `file_image_width` int(11) NOT NULL default '0',
  `file_image_thumb_height` int(11) NOT NULL default '50',
  `file_image_thumb_width` int(11) NOT NULL default '0',
  PRIMARY KEY  (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_product_files`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_mf_xref`
-- 

CREATE TABLE `jos_vm_product_mf_xref` (
  `product_id` int(11) default NULL,
  `manufacturer_id` int(11) default NULL,
  KEY `idx_product_mf_xref_product_id` (`product_id`),
  KEY `idx_product_mf_xref_manufacturer_id` (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';

-- 
-- Dumping data for table `jos_vm_product_mf_xref`
-- 

INSERT INTO `jos_vm_product_mf_xref` VALUES (1, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (2, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (3, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (4, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (5, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (6, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (7, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (8, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (9, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (10, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (11, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (12, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (13, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (14, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (15, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (16, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (17, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (18, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (19, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (20, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (21, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (22, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (23, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (24, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (25, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (26, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (27, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (28, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (29, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (30, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (31, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (32, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (33, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (34, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (35, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (36, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (37, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (38, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (39, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (40, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (41, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (42, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (43, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (44, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (45, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (46, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (47, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (48, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (49, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (50, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_price`
-- 

CREATE TABLE `jos_vm_product_price` (
  `product_price_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `product_price` decimal(15,5) default NULL,
  `product_currency` char(16) default NULL,
  `product_price_vdate` int(11) default NULL,
  `product_price_edate` int(11) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `shopper_group_id` int(11) default NULL,
  `price_quantity_start` int(11) unsigned NOT NULL default '0',
  `price_quantity_end` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`product_price_id`),
  KEY `idx_product_price_product_id` (`product_id`),
  KEY `idx_product_price_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product' AUTO_INCREMENT=51 ;

-- 
-- Dumping data for table `jos_vm_product_price`
-- 

INSERT INTO `jos_vm_product_price` VALUES (1, 1, 5700000.00000, 'USD', 0, 0, 1370420873, 1370422206, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (2, 2, 5700000.00000, 'VND', 0, 0, 1370421291, 1370422228, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (3, 3, 7070000.00000, 'VND', 0, 0, 1370421694, 1370449419, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (4, 4, 8170000.00000, 'VND', 0, 0, 1370421801, 1370423267, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (5, 5, 2170000.00000, 'VND', 0, 0, 1370421983, 1370422135, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (6, 6, 2520000.00000, 'USD', 0, 0, 1370422304, 1370422304, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (7, 7, 2250000.00000, 'USD', 0, 0, 1370422378, 1370422378, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (8, 8, 3360000.00000, 'VND', 0, 0, 1370422453, 1370422466, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (9, 9, 4540000.00000, 'VND', 0, 0, 1370422608, 1370422608, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (10, 10, 4950000.00000, 'VND', 0, 0, 1370422783, 1370449470, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (11, 11, 4940000.00000, 'VND', 0, 0, 1370449674, 1370449706, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (12, 12, 5050000.00000, 'VND', 0, 0, 1370450094, 1370450121, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (13, 13, 1269000.00000, 'VND', 0, 0, 1370450471, 1370450490, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (14, 14, 1914000.00000, 'VND', 0, 0, 1370450561, 1370450606, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (15, 15, 1914000.00000, 'VND', 0, 0, 1370450660, 1370450698, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (16, 16, 2129000.00000, 'VND', 0, 0, 1370450785, 1370450841, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (17, 17, 1505000.00000, 'VND', 0, 0, 1370450923, 1370450944, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (18, 18, 1505000.00000, 'VND', 0, 0, 1370450923, 1370450923, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (19, 19, 3827000.00000, 'VND', 0, 0, 1370451009, 1370451026, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (20, 20, 3268000.00000, 'VND', 0, 0, 1370451088, 1370451098, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (21, 21, 1677000.00000, 'VND', 0, 0, 1370451151, 1370451160, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (22, 22, 1914000.00000, 'VND', 0, 0, 1370451257, 1370451265, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (23, 23, 2129000.00000, 'VND', 0, 0, 1370451319, 1370451326, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (24, 24, 2129000.00000, 'VND', 0, 0, 1370451400, 1370451410, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (25, 25, 2344000.00000, 'VND', 0, 0, 1370451474, 1370451482, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (26, 26, 6000000.00000, 'VND', 0, 0, 1370451695, 1370451706, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (27, 27, 6180000.00000, 'VND', 0, 0, 1370451764, 1370451774, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (28, 28, 6210000.00000, 'VND', 0, 0, 1370451818, 1370451833, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (29, 29, 7238000.00000, 'VND', 0, 0, 1370451910, 1370451926, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (30, 30, 7424000.00000, 'VND', 0, 0, 1370451981, 1370451992, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (31, 31, 1317000.00000, 'VND', 0, 0, 1370452073, 1370452084, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (32, 32, 1450000.00000, 'VND', 0, 0, 1370452155, 1370452162, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (33, 33, 1836000.00000, 'VND', 0, 0, 1370452230, 1370452239, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (34, 34, 2270000.00000, 'VND', 0, 0, 1370452315, 1370452321, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (35, 35, 2375000.00000, 'VND', 0, 0, 1370452396, 1370452408, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (36, 36, 4507000.00000, 'VND', 0, 0, 1370452612, 1370452644, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (37, 37, 4989000.00000, 'VND', 0, 0, 1370452695, 1370452706, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (38, 38, 5627000.00000, 'VND', 0, 0, 1370452759, 1370452786, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (39, 39, 8944000.00000, 'VND', 0, 0, 1370453664, 1370453681, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (40, 40, 13416000.00000, 'VND', 0, 0, 1370454463, 1370454472, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (41, 41, 13674000.00000, 'VND', 0, 0, 1370454537, 1370454537, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (42, 42, 18490000.00000, 'VND', 0, 0, 1370454596, 1370454596, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (43, 43, 7654000.00000, 'VND', 0, 0, 1370454682, 1370454682, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (44, 44, 7964000.00000, 'VND', 0, 0, 1370454767, 1370454767, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (45, 45, 8643000.00000, 'VND', 0, 0, 1370454839, 1370454839, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (46, 46, 10342000.00000, 'VND', 0, 0, 1370454961, 1370454961, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (47, 47, 5289000.00000, 'VND', 0, 0, 1370455085, 1370455085, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (48, 48, 5569000.00000, 'VND', 0, 0, 1370455149, 1370455149, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (49, 49, 7095000.00000, 'VND', 0, 0, 1370455248, 1370455248, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (50, 50, 4881000.00000, 'VND', 0, 0, 1370455346, 1370455346, 5, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_product_type_xref`
-- 

CREATE TABLE `jos_vm_product_product_type_xref` (
  `product_id` int(11) NOT NULL default '0',
  `product_type_id` int(11) NOT NULL default '0',
  KEY `idx_product_product_type_xref_product_id` (`product_id`),
  KEY `idx_product_product_type_xref_product_type_id` (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps products to a product type';

-- 
-- Dumping data for table `jos_vm_product_product_type_xref`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_relations`
-- 

CREATE TABLE `jos_vm_product_relations` (
  `product_id` int(11) NOT NULL default '0',
  `related_products` text,
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_vm_product_relations`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_reviews`
-- 

CREATE TABLE `jos_vm_product_reviews` (
  `review_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `comment` text NOT NULL,
  `userid` int(11) NOT NULL default '0',
  `time` int(11) NOT NULL default '0',
  `user_rating` tinyint(1) NOT NULL default '0',
  `review_ok` int(11) NOT NULL default '0',
  `review_votes` int(11) NOT NULL default '0',
  `published` char(1) NOT NULL default 'Y',
  PRIMARY KEY  (`review_id`),
  UNIQUE KEY `product_id` (`product_id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_product_reviews`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_type`
-- 

CREATE TABLE `jos_vm_product_type` (
  `product_type_id` int(11) NOT NULL auto_increment,
  `product_type_name` varchar(255) NOT NULL default '',
  `product_type_description` text,
  `product_type_publish` char(1) default NULL,
  `product_type_browsepage` varchar(255) default NULL,
  `product_type_flypage` varchar(255) default NULL,
  `product_type_list_order` int(11) default NULL,
  PRIMARY KEY  (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_product_type`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_type_parameter`
-- 

CREATE TABLE `jos_vm_product_type_parameter` (
  `product_type_id` int(11) NOT NULL default '0',
  `parameter_name` varchar(255) NOT NULL default '',
  `parameter_label` varchar(255) NOT NULL default '',
  `parameter_description` text,
  `parameter_list_order` int(11) NOT NULL default '0',
  `parameter_type` char(1) NOT NULL default 'T',
  `parameter_values` varchar(255) default NULL,
  `parameter_multiselect` char(1) default NULL,
  `parameter_default` varchar(255) default NULL,
  `parameter_unit` varchar(32) default NULL,
  PRIMARY KEY  (`product_type_id`,`parameter_name`),
  KEY `idx_product_type_parameter_product_type_id` (`product_type_id`),
  KEY `idx_product_type_parameter_parameter_order` (`parameter_list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameters which are part of a product type';

-- 
-- Dumping data for table `jos_vm_product_type_parameter`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_votes`
-- 

CREATE TABLE `jos_vm_product_votes` (
  `product_id` int(255) NOT NULL default '0',
  `votes` text NOT NULL,
  `allvotes` int(11) NOT NULL default '0',
  `rating` tinyint(1) NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all votes for a product';

-- 
-- Dumping data for table `jos_vm_product_votes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_shipping_carrier`
-- 

CREATE TABLE `jos_vm_shipping_carrier` (
  `shipping_carrier_id` int(11) NOT NULL auto_increment,
  `shipping_carrier_name` char(80) NOT NULL default '',
  `shipping_carrier_list_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`shipping_carrier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shipping Carriers as used by the Standard Shipping Module' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_shipping_carrier`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_shipping_label`
-- 

CREATE TABLE `jos_vm_shipping_label` (
  `order_id` int(11) NOT NULL default '0',
  `shipper_class` varchar(32) default NULL,
  `ship_date` varchar(32) default NULL,
  `service_code` varchar(32) default NULL,
  `special_service` varchar(32) default NULL,
  `package_type` varchar(16) default NULL,
  `order_weight` decimal(10,2) default NULL,
  `is_international` tinyint(1) default NULL,
  `additional_protection_type` varchar(16) default NULL,
  `additional_protection_value` decimal(10,2) default NULL,
  `duty_value` decimal(10,2) default NULL,
  `content_desc` varchar(255) default NULL,
  `label_is_generated` tinyint(1) NOT NULL default '0',
  `tracking_number` varchar(32) default NULL,
  `label_image` blob,
  `have_signature` tinyint(1) NOT NULL default '0',
  `signature_image` blob,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores information used in generating shipping labels';

-- 
-- Dumping data for table `jos_vm_shipping_label`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_shipping_rate`
-- 

CREATE TABLE `jos_vm_shipping_rate` (
  `shipping_rate_id` int(11) NOT NULL auto_increment,
  `shipping_rate_name` varchar(255) NOT NULL default '',
  `shipping_rate_carrier_id` int(11) NOT NULL default '0',
  `shipping_rate_country` text NOT NULL,
  `shipping_rate_zip_start` varchar(32) NOT NULL default '',
  `shipping_rate_zip_end` varchar(32) NOT NULL default '',
  `shipping_rate_weight_start` decimal(10,3) NOT NULL default '0.000',
  `shipping_rate_weight_end` decimal(10,3) NOT NULL default '0.000',
  `shipping_rate_value` decimal(10,2) NOT NULL default '0.00',
  `shipping_rate_package_fee` decimal(10,2) NOT NULL default '0.00',
  `shipping_rate_currency_id` int(11) NOT NULL default '0',
  `shipping_rate_vat_id` int(11) NOT NULL default '0',
  `shipping_rate_list_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`shipping_rate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shipping Rates, used by the Standard Shipping Module' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_shipping_rate`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_shopper_group`
-- 

CREATE TABLE `jos_vm_shopper_group` (
  `shopper_group_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `shopper_group_name` varchar(32) default NULL,
  `shopper_group_desc` text,
  `shopper_group_discount` decimal(5,2) NOT NULL default '0.00',
  `show_price_including_tax` tinyint(1) NOT NULL default '1',
  `default` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`shopper_group_id`),
  KEY `idx_shopper_group_vendor_id` (`vendor_id`),
  KEY `idx_shopper_group_name` (`shopper_group_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to' AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `jos_vm_shopper_group`
-- 

INSERT INTO `jos_vm_shopper_group` VALUES (5, 1, '-default-', 'This is the default shopper group.', 0.00, 1, 1);
INSERT INTO `jos_vm_shopper_group` VALUES (6, 1, 'Gold Level', 'Gold Level Shoppers.', 0.00, 1, 0);
INSERT INTO `jos_vm_shopper_group` VALUES (7, 1, 'Wholesale', 'Shoppers that can buy at wholesale.', 0.00, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_shopper_vendor_xref`
-- 

CREATE TABLE `jos_vm_shopper_vendor_xref` (
  `user_id` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  `shopper_group_id` int(11) default NULL,
  `customer_number` varchar(32) default NULL,
  KEY `idx_shopper_vendor_xref_user_id` (`user_id`),
  KEY `idx_shopper_vendor_xref_vendor_id` (`vendor_id`),
  KEY `idx_shopper_vendor_xref_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a user to a Shopper Group of a Vendor';

-- 
-- Dumping data for table `jos_vm_shopper_vendor_xref`
-- 

INSERT INTO `jos_vm_shopper_vendor_xref` VALUES (62, 1, 5, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_state`
-- 

CREATE TABLE `jos_vm_state` (
  `state_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL default '1',
  `state_name` varchar(64) default NULL,
  `state_3_code` char(3) default NULL,
  `state_2_code` char(2) default NULL,
  PRIMARY KEY  (`state_id`),
  UNIQUE KEY `state_3_code` (`country_id`,`state_3_code`),
  UNIQUE KEY `state_2_code` (`country_id`,`state_2_code`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country' AUTO_INCREMENT=449 ;

-- 
-- Dumping data for table `jos_vm_state`
-- 

INSERT INTO `jos_vm_state` VALUES (1, 223, 'Alabama', 'ALA', 'AL');
INSERT INTO `jos_vm_state` VALUES (2, 223, 'Alaska', 'ALK', 'AK');
INSERT INTO `jos_vm_state` VALUES (3, 223, 'Arizona', 'ARZ', 'AZ');
INSERT INTO `jos_vm_state` VALUES (4, 223, 'Arkansas', 'ARK', 'AR');
INSERT INTO `jos_vm_state` VALUES (5, 223, 'California', 'CAL', 'CA');
INSERT INTO `jos_vm_state` VALUES (6, 223, 'Colorado', 'COL', 'CO');
INSERT INTO `jos_vm_state` VALUES (7, 223, 'Connecticut', 'CCT', 'CT');
INSERT INTO `jos_vm_state` VALUES (8, 223, 'Delaware', 'DEL', 'DE');
INSERT INTO `jos_vm_state` VALUES (9, 223, 'District Of Columbia', 'DOC', 'DC');
INSERT INTO `jos_vm_state` VALUES (10, 223, 'Florida', 'FLO', 'FL');
INSERT INTO `jos_vm_state` VALUES (11, 223, 'Georgia', 'GEA', 'GA');
INSERT INTO `jos_vm_state` VALUES (12, 223, 'Hawaii', 'HWI', 'HI');
INSERT INTO `jos_vm_state` VALUES (13, 223, 'Idaho', 'IDA', 'ID');
INSERT INTO `jos_vm_state` VALUES (14, 223, 'Illinois', 'ILL', 'IL');
INSERT INTO `jos_vm_state` VALUES (15, 223, 'Indiana', 'IND', 'IN');
INSERT INTO `jos_vm_state` VALUES (16, 223, 'Iowa', 'IOA', 'IA');
INSERT INTO `jos_vm_state` VALUES (17, 223, 'Kansas', 'KAS', 'KS');
INSERT INTO `jos_vm_state` VALUES (18, 223, 'Kentucky', 'KTY', 'KY');
INSERT INTO `jos_vm_state` VALUES (19, 223, 'Louisiana', 'LOA', 'LA');
INSERT INTO `jos_vm_state` VALUES (20, 223, 'Maine', 'MAI', 'ME');
INSERT INTO `jos_vm_state` VALUES (21, 223, 'Maryland', 'MLD', 'MD');
INSERT INTO `jos_vm_state` VALUES (22, 223, 'Massachusetts', 'MSA', 'MA');
INSERT INTO `jos_vm_state` VALUES (23, 223, 'Michigan', 'MIC', 'MI');
INSERT INTO `jos_vm_state` VALUES (24, 223, 'Minnesota', 'MIN', 'MN');
INSERT INTO `jos_vm_state` VALUES (25, 223, 'Mississippi', 'MIS', 'MS');
INSERT INTO `jos_vm_state` VALUES (26, 223, 'Missouri', 'MIO', 'MO');
INSERT INTO `jos_vm_state` VALUES (27, 223, 'Montana', 'MOT', 'MT');
INSERT INTO `jos_vm_state` VALUES (28, 223, 'Nebraska', 'NEB', 'NE');
INSERT INTO `jos_vm_state` VALUES (29, 223, 'Nevada', 'NEV', 'NV');
INSERT INTO `jos_vm_state` VALUES (30, 223, 'New Hampshire', 'NEH', 'NH');
INSERT INTO `jos_vm_state` VALUES (31, 223, 'New Jersey', 'NEJ', 'NJ');
INSERT INTO `jos_vm_state` VALUES (32, 223, 'New Mexico', 'NEM', 'NM');
INSERT INTO `jos_vm_state` VALUES (33, 223, 'New York', 'NEY', 'NY');
INSERT INTO `jos_vm_state` VALUES (34, 223, 'North Carolina', 'NOC', 'NC');
INSERT INTO `jos_vm_state` VALUES (35, 223, 'North Dakota', 'NOD', 'ND');
INSERT INTO `jos_vm_state` VALUES (36, 223, 'Ohio', 'OHI', 'OH');
INSERT INTO `jos_vm_state` VALUES (37, 223, 'Oklahoma', 'OKL', 'OK');
INSERT INTO `jos_vm_state` VALUES (38, 223, 'Oregon', 'ORN', 'OR');
INSERT INTO `jos_vm_state` VALUES (39, 223, 'Pennsylvania', 'PEA', 'PA');
INSERT INTO `jos_vm_state` VALUES (40, 223, 'Rhode Island', 'RHI', 'RI');
INSERT INTO `jos_vm_state` VALUES (41, 223, 'South Carolina', 'SOC', 'SC');
INSERT INTO `jos_vm_state` VALUES (42, 223, 'South Dakota', 'SOD', 'SD');
INSERT INTO `jos_vm_state` VALUES (43, 223, 'Tennessee', 'TEN', 'TN');
INSERT INTO `jos_vm_state` VALUES (44, 223, 'Texas', 'TXS', 'TX');
INSERT INTO `jos_vm_state` VALUES (45, 223, 'Utah', 'UTA', 'UT');
INSERT INTO `jos_vm_state` VALUES (46, 223, 'Vermont', 'VMT', 'VT');
INSERT INTO `jos_vm_state` VALUES (47, 223, 'Virginia', 'VIA', 'VA');
INSERT INTO `jos_vm_state` VALUES (48, 223, 'Washington', 'WAS', 'WA');
INSERT INTO `jos_vm_state` VALUES (49, 223, 'West Virginia', 'WEV', 'WV');
INSERT INTO `jos_vm_state` VALUES (50, 223, 'Wisconsin', 'WIS', 'WI');
INSERT INTO `jos_vm_state` VALUES (51, 223, 'Wyoming', 'WYO', 'WY');
INSERT INTO `jos_vm_state` VALUES (52, 38, 'Alberta', 'ALB', 'AB');
INSERT INTO `jos_vm_state` VALUES (53, 38, 'British Columbia', 'BRC', 'BC');
INSERT INTO `jos_vm_state` VALUES (54, 38, 'Manitoba', 'MAB', 'MB');
INSERT INTO `jos_vm_state` VALUES (55, 38, 'New Brunswick', 'NEB', 'NB');
INSERT INTO `jos_vm_state` VALUES (56, 38, 'Newfoundland and Labrador', 'NFL', 'NL');
INSERT INTO `jos_vm_state` VALUES (57, 38, 'Northwest Territories', 'NWT', 'NT');
INSERT INTO `jos_vm_state` VALUES (58, 38, 'Nova Scotia', 'NOS', 'NS');
INSERT INTO `jos_vm_state` VALUES (59, 38, 'Nunavut', 'NUT', 'NU');
INSERT INTO `jos_vm_state` VALUES (60, 38, 'Ontario', 'ONT', 'ON');
INSERT INTO `jos_vm_state` VALUES (61, 38, 'Prince Edward Island', 'PEI', 'PE');
INSERT INTO `jos_vm_state` VALUES (62, 38, 'Quebec', 'QEC', 'QC');
INSERT INTO `jos_vm_state` VALUES (63, 38, 'Saskatchewan', 'SAK', 'SK');
INSERT INTO `jos_vm_state` VALUES (64, 38, 'Yukon', 'YUT', 'YT');
INSERT INTO `jos_vm_state` VALUES (65, 222, 'England', 'ENG', 'EN');
INSERT INTO `jos_vm_state` VALUES (66, 222, 'Northern Ireland', 'NOI', 'NI');
INSERT INTO `jos_vm_state` VALUES (67, 222, 'Scotland', 'SCO', 'SD');
INSERT INTO `jos_vm_state` VALUES (68, 222, 'Wales', 'WLS', 'WS');
INSERT INTO `jos_vm_state` VALUES (69, 13, 'Australian Capital Territory', 'ACT', 'AC');
INSERT INTO `jos_vm_state` VALUES (70, 13, 'New South Wales', 'NSW', 'NS');
INSERT INTO `jos_vm_state` VALUES (71, 13, 'Northern Territory', 'NOT', 'NT');
INSERT INTO `jos_vm_state` VALUES (72, 13, 'Queensland', 'QLD', 'QL');
INSERT INTO `jos_vm_state` VALUES (73, 13, 'South Australia', 'SOA', 'SA');
INSERT INTO `jos_vm_state` VALUES (74, 13, 'Tasmania', 'TAS', 'TS');
INSERT INTO `jos_vm_state` VALUES (75, 13, 'Victoria', 'VIC', 'VI');
INSERT INTO `jos_vm_state` VALUES (76, 13, 'Western Australia', 'WEA', 'WA');
INSERT INTO `jos_vm_state` VALUES (77, 138, 'Aguascalientes', 'AGS', 'AG');
INSERT INTO `jos_vm_state` VALUES (78, 138, 'Baja California Norte', 'BCN', 'BN');
INSERT INTO `jos_vm_state` VALUES (79, 138, 'Baja California Sur', 'BCS', 'BS');
INSERT INTO `jos_vm_state` VALUES (80, 138, 'Campeche', 'CAM', 'CA');
INSERT INTO `jos_vm_state` VALUES (81, 138, 'Chiapas', 'CHI', 'CS');
INSERT INTO `jos_vm_state` VALUES (82, 138, 'Chihuahua', 'CHA', 'CH');
INSERT INTO `jos_vm_state` VALUES (83, 138, 'Coahuila', 'COA', 'CO');
INSERT INTO `jos_vm_state` VALUES (84, 138, 'Colima', 'COL', 'CM');
INSERT INTO `jos_vm_state` VALUES (85, 138, 'Distrito Federal', 'DFM', 'DF');
INSERT INTO `jos_vm_state` VALUES (86, 138, 'Durango', 'DGO', 'DO');
INSERT INTO `jos_vm_state` VALUES (87, 138, 'Guanajuato', 'GTO', 'GO');
INSERT INTO `jos_vm_state` VALUES (88, 138, 'Guerrero', 'GRO', 'GU');
INSERT INTO `jos_vm_state` VALUES (89, 138, 'Hidalgo', 'HGO', 'HI');
INSERT INTO `jos_vm_state` VALUES (90, 138, 'Jalisco', 'JAL', 'JA');
INSERT INTO `jos_vm_state` VALUES (91, 138, 'México (Estado de)', 'EDM', 'EM');
INSERT INTO `jos_vm_state` VALUES (92, 138, 'Michoacán', 'MCN', 'MI');
INSERT INTO `jos_vm_state` VALUES (93, 138, 'Morelos', 'MOR', 'MO');
INSERT INTO `jos_vm_state` VALUES (94, 138, 'Nayarit', 'NAY', 'NY');
INSERT INTO `jos_vm_state` VALUES (95, 138, 'Nuevo León', 'NUL', 'NL');
INSERT INTO `jos_vm_state` VALUES (96, 138, 'Oaxaca', 'OAX', 'OA');
INSERT INTO `jos_vm_state` VALUES (97, 138, 'Puebla', 'PUE', 'PU');
INSERT INTO `jos_vm_state` VALUES (98, 138, 'Querétaro', 'QRO', 'QU');
INSERT INTO `jos_vm_state` VALUES (99, 138, 'Quintana Roo', 'QUR', 'QR');
INSERT INTO `jos_vm_state` VALUES (100, 138, 'San Luis Potosí', 'SLP', 'SP');
INSERT INTO `jos_vm_state` VALUES (101, 138, 'Sinaloa', 'SIN', 'SI');
INSERT INTO `jos_vm_state` VALUES (102, 138, 'Sonora', 'SON', 'SO');
INSERT INTO `jos_vm_state` VALUES (103, 138, 'Tabasco', 'TAB', 'TA');
INSERT INTO `jos_vm_state` VALUES (104, 138, 'Tamaulipas', 'TAM', 'TM');
INSERT INTO `jos_vm_state` VALUES (105, 138, 'Tlaxcala', 'TLX', 'TX');
INSERT INTO `jos_vm_state` VALUES (106, 138, 'Veracruz', 'VER', 'VZ');
INSERT INTO `jos_vm_state` VALUES (107, 138, 'Yucatán', 'YUC', 'YU');
INSERT INTO `jos_vm_state` VALUES (108, 138, 'Zacatecas', 'ZAC', 'ZA');
INSERT INTO `jos_vm_state` VALUES (109, 30, 'Acre', 'ACR', 'AC');
INSERT INTO `jos_vm_state` VALUES (110, 30, 'Alagoas', 'ALG', 'AL');
INSERT INTO `jos_vm_state` VALUES (111, 30, 'Amapá', 'AMP', 'AP');
INSERT INTO `jos_vm_state` VALUES (112, 30, 'Amazonas', 'AMZ', 'AM');
INSERT INTO `jos_vm_state` VALUES (113, 30, 'Bahía', 'BAH', 'BA');
INSERT INTO `jos_vm_state` VALUES (114, 30, 'Ceará', 'CEA', 'CE');
INSERT INTO `jos_vm_state` VALUES (115, 30, 'Distrito Federal', 'DFB', 'DF');
INSERT INTO `jos_vm_state` VALUES (116, 30, 'Espirito Santo', 'ESS', 'ES');
INSERT INTO `jos_vm_state` VALUES (117, 30, 'Goiás', 'GOI', 'GO');
INSERT INTO `jos_vm_state` VALUES (118, 30, 'Maranhão', 'MAR', 'MA');
INSERT INTO `jos_vm_state` VALUES (119, 30, 'Mato Grosso', 'MAT', 'MT');
INSERT INTO `jos_vm_state` VALUES (120, 30, 'Mato Grosso do Sul', 'MGS', 'MS');
INSERT INTO `jos_vm_state` VALUES (121, 30, 'Minas Geraís', 'MIG', 'MG');
INSERT INTO `jos_vm_state` VALUES (122, 30, 'Paraná', 'PAR', 'PR');
INSERT INTO `jos_vm_state` VALUES (123, 30, 'Paraíba', 'PRB', 'PB');
INSERT INTO `jos_vm_state` VALUES (124, 30, 'Pará', 'PAB', 'PA');
INSERT INTO `jos_vm_state` VALUES (125, 30, 'Pernambuco', 'PER', 'PE');
INSERT INTO `jos_vm_state` VALUES (126, 30, 'Piauí', 'PIA', 'PI');
INSERT INTO `jos_vm_state` VALUES (127, 30, 'Rio Grande do Norte', 'RGN', 'RN');
INSERT INTO `jos_vm_state` VALUES (128, 30, 'Rio Grande do Sul', 'RGS', 'RS');
INSERT INTO `jos_vm_state` VALUES (129, 30, 'Rio de Janeiro', 'RDJ', 'RJ');
INSERT INTO `jos_vm_state` VALUES (130, 30, 'Rondônia', 'RON', 'RO');
INSERT INTO `jos_vm_state` VALUES (131, 30, 'Roraima', 'ROR', 'RR');
INSERT INTO `jos_vm_state` VALUES (132, 30, 'Santa Catarina', 'SAC', 'SC');
INSERT INTO `jos_vm_state` VALUES (133, 30, 'Sergipe', 'SER', 'SE');
INSERT INTO `jos_vm_state` VALUES (134, 30, 'São Paulo', 'SAP', 'SP');
INSERT INTO `jos_vm_state` VALUES (135, 30, 'Tocantins', 'TOC', 'TO');
INSERT INTO `jos_vm_state` VALUES (136, 44, 'Anhui', 'ANH', '34');
INSERT INTO `jos_vm_state` VALUES (137, 44, 'Beijing', 'BEI', '11');
INSERT INTO `jos_vm_state` VALUES (138, 44, 'Chongqing', 'CHO', '50');
INSERT INTO `jos_vm_state` VALUES (139, 44, 'Fujian', 'FUJ', '35');
INSERT INTO `jos_vm_state` VALUES (140, 44, 'Gansu', 'GAN', '62');
INSERT INTO `jos_vm_state` VALUES (141, 44, 'Guangdong', 'GUA', '44');
INSERT INTO `jos_vm_state` VALUES (142, 44, 'Guangxi Zhuang', 'GUZ', '45');
INSERT INTO `jos_vm_state` VALUES (143, 44, 'Guizhou', 'GUI', '52');
INSERT INTO `jos_vm_state` VALUES (144, 44, 'Hainan', 'HAI', '46');
INSERT INTO `jos_vm_state` VALUES (145, 44, 'Hebei', 'HEB', '13');
INSERT INTO `jos_vm_state` VALUES (146, 44, 'Heilongjiang', 'HEI', '23');
INSERT INTO `jos_vm_state` VALUES (147, 44, 'Henan', 'HEN', '41');
INSERT INTO `jos_vm_state` VALUES (148, 44, 'Hubei', 'HUB', '42');
INSERT INTO `jos_vm_state` VALUES (149, 44, 'Hunan', 'HUN', '43');
INSERT INTO `jos_vm_state` VALUES (150, 44, 'Jiangsu', 'JIA', '32');
INSERT INTO `jos_vm_state` VALUES (151, 44, 'Jiangxi', 'JIX', '36');
INSERT INTO `jos_vm_state` VALUES (152, 44, 'Jilin', 'JIL', '22');
INSERT INTO `jos_vm_state` VALUES (153, 44, 'Liaoning', 'LIA', '21');
INSERT INTO `jos_vm_state` VALUES (154, 44, 'Nei Mongol', 'NML', '15');
INSERT INTO `jos_vm_state` VALUES (155, 44, 'Ningxia Hui', 'NIH', '64');
INSERT INTO `jos_vm_state` VALUES (156, 44, 'Qinghai', 'QIN', '63');
INSERT INTO `jos_vm_state` VALUES (157, 44, 'Shandong', 'SNG', '37');
INSERT INTO `jos_vm_state` VALUES (158, 44, 'Shanghai', 'SHH', '31');
INSERT INTO `jos_vm_state` VALUES (159, 44, 'Shaanxi', 'SHX', '61');
INSERT INTO `jos_vm_state` VALUES (160, 44, 'Sichuan', 'SIC', '51');
INSERT INTO `jos_vm_state` VALUES (161, 44, 'Tianjin', 'TIA', '12');
INSERT INTO `jos_vm_state` VALUES (162, 44, 'Xinjiang Uygur', 'XIU', '65');
INSERT INTO `jos_vm_state` VALUES (163, 44, 'Xizang', 'XIZ', '54');
INSERT INTO `jos_vm_state` VALUES (164, 44, 'Yunnan', 'YUN', '53');
INSERT INTO `jos_vm_state` VALUES (165, 44, 'Zhejiang', 'ZHE', '33');
INSERT INTO `jos_vm_state` VALUES (166, 104, 'Israel', 'ISL', 'IL');
INSERT INTO `jos_vm_state` VALUES (167, 104, 'Gaza Strip', 'GZS', 'GZ');
INSERT INTO `jos_vm_state` VALUES (168, 104, 'West Bank', 'WBK', 'WB');
INSERT INTO `jos_vm_state` VALUES (169, 151, 'St. Maarten', 'STM', 'SM');
INSERT INTO `jos_vm_state` VALUES (170, 151, 'Bonaire', 'BNR', 'BN');
INSERT INTO `jos_vm_state` VALUES (171, 151, 'Curacao', 'CUR', 'CR');
INSERT INTO `jos_vm_state` VALUES (172, 175, 'Alba', 'ABA', 'AB');
INSERT INTO `jos_vm_state` VALUES (173, 175, 'Arad', 'ARD', 'AR');
INSERT INTO `jos_vm_state` VALUES (174, 175, 'Arges', 'ARG', 'AG');
INSERT INTO `jos_vm_state` VALUES (175, 175, 'Bacau', 'BAC', 'BC');
INSERT INTO `jos_vm_state` VALUES (176, 175, 'Bihor', 'BIH', 'BH');
INSERT INTO `jos_vm_state` VALUES (177, 175, 'Bistrita-Nasaud', 'BIS', 'BN');
INSERT INTO `jos_vm_state` VALUES (178, 175, 'Botosani', 'BOT', 'BT');
INSERT INTO `jos_vm_state` VALUES (179, 175, 'Braila', 'BRL', 'BR');
INSERT INTO `jos_vm_state` VALUES (180, 175, 'Brasov', 'BRA', 'BV');
INSERT INTO `jos_vm_state` VALUES (181, 175, 'Bucuresti', 'BUC', 'B');
INSERT INTO `jos_vm_state` VALUES (182, 175, 'Buzau', 'BUZ', 'BZ');
INSERT INTO `jos_vm_state` VALUES (183, 175, 'Calarasi', 'CAL', 'CL');
INSERT INTO `jos_vm_state` VALUES (184, 175, 'Caras Severin', 'CRS', 'CS');
INSERT INTO `jos_vm_state` VALUES (185, 175, 'Cluj', 'CLJ', 'CJ');
INSERT INTO `jos_vm_state` VALUES (186, 175, 'Constanta', 'CST', 'CT');
INSERT INTO `jos_vm_state` VALUES (187, 175, 'Covasna', 'COV', 'CV');
INSERT INTO `jos_vm_state` VALUES (188, 175, 'Dambovita', 'DAM', 'DB');
INSERT INTO `jos_vm_state` VALUES (189, 175, 'Dolj', 'DLJ', 'DJ');
INSERT INTO `jos_vm_state` VALUES (190, 175, 'Galati', 'GAL', 'GL');
INSERT INTO `jos_vm_state` VALUES (191, 175, 'Giurgiu', 'GIU', 'GR');
INSERT INTO `jos_vm_state` VALUES (192, 175, 'Gorj', 'GOR', 'GJ');
INSERT INTO `jos_vm_state` VALUES (193, 175, 'Hargita', 'HRG', 'HR');
INSERT INTO `jos_vm_state` VALUES (194, 175, 'Hunedoara', 'HUN', 'HD');
INSERT INTO `jos_vm_state` VALUES (195, 175, 'Ialomita', 'IAL', 'IL');
INSERT INTO `jos_vm_state` VALUES (196, 175, 'Iasi', 'IAS', 'IS');
INSERT INTO `jos_vm_state` VALUES (197, 175, 'Ilfov', 'ILF', 'IF');
INSERT INTO `jos_vm_state` VALUES (198, 175, 'Maramures', 'MAR', 'MM');
INSERT INTO `jos_vm_state` VALUES (199, 175, 'Mehedinti', 'MEH', 'MH');
INSERT INTO `jos_vm_state` VALUES (200, 175, 'Mures', 'MUR', 'MS');
INSERT INTO `jos_vm_state` VALUES (201, 175, 'Neamt', 'NEM', 'NT');
INSERT INTO `jos_vm_state` VALUES (202, 175, 'Olt', 'OLT', 'OT');
INSERT INTO `jos_vm_state` VALUES (203, 175, 'Prahova', 'PRA', 'PH');
INSERT INTO `jos_vm_state` VALUES (204, 175, 'Salaj', 'SAL', 'SJ');
INSERT INTO `jos_vm_state` VALUES (205, 175, 'Satu Mare', 'SAT', 'SM');
INSERT INTO `jos_vm_state` VALUES (206, 175, 'Sibiu', 'SIB', 'SB');
INSERT INTO `jos_vm_state` VALUES (207, 175, 'Suceava', 'SUC', 'SV');
INSERT INTO `jos_vm_state` VALUES (208, 175, 'Teleorman', 'TEL', 'TR');
INSERT INTO `jos_vm_state` VALUES (209, 175, 'Timis', 'TIM', 'TM');
INSERT INTO `jos_vm_state` VALUES (210, 175, 'Tulcea', 'TUL', 'TL');
INSERT INTO `jos_vm_state` VALUES (211, 175, 'Valcea', 'VAL', 'VL');
INSERT INTO `jos_vm_state` VALUES (212, 175, 'Vaslui', 'VAS', 'VS');
INSERT INTO `jos_vm_state` VALUES (213, 175, 'Vrancea', 'VRA', 'VN');
INSERT INTO `jos_vm_state` VALUES (214, 105, 'Agrigento', 'AGR', 'AG');
INSERT INTO `jos_vm_state` VALUES (215, 105, 'Alessandria', 'ALE', 'AL');
INSERT INTO `jos_vm_state` VALUES (216, 105, 'Ancona', 'ANC', 'AN');
INSERT INTO `jos_vm_state` VALUES (217, 105, 'Aosta', 'AOS', 'AO');
INSERT INTO `jos_vm_state` VALUES (218, 105, 'Arezzo', 'ARE', 'AR');
INSERT INTO `jos_vm_state` VALUES (219, 105, 'Ascoli Piceno', 'API', 'AP');
INSERT INTO `jos_vm_state` VALUES (220, 105, 'Asti', 'AST', 'AT');
INSERT INTO `jos_vm_state` VALUES (221, 105, 'Avellino', 'AVE', 'AV');
INSERT INTO `jos_vm_state` VALUES (222, 105, 'Bari', 'BAR', 'BA');
INSERT INTO `jos_vm_state` VALUES (223, 105, 'Belluno', 'BEL', 'BL');
INSERT INTO `jos_vm_state` VALUES (224, 105, 'Benevento', 'BEN', 'BN');
INSERT INTO `jos_vm_state` VALUES (225, 105, 'Bergamo', 'BEG', 'BG');
INSERT INTO `jos_vm_state` VALUES (226, 105, 'Biella', 'BIE', 'BI');
INSERT INTO `jos_vm_state` VALUES (227, 105, 'Bologna', 'BOL', 'BO');
INSERT INTO `jos_vm_state` VALUES (228, 105, 'Bolzano', 'BOZ', 'BZ');
INSERT INTO `jos_vm_state` VALUES (229, 105, 'Brescia', 'BRE', 'BS');
INSERT INTO `jos_vm_state` VALUES (230, 105, 'Brindisi', 'BRI', 'BR');
INSERT INTO `jos_vm_state` VALUES (231, 105, 'Cagliari', 'CAG', 'CA');
INSERT INTO `jos_vm_state` VALUES (232, 105, 'Caltanissetta', 'CAL', 'CL');
INSERT INTO `jos_vm_state` VALUES (233, 105, 'Campobasso', 'CBO', 'CB');
INSERT INTO `jos_vm_state` VALUES (234, 105, 'Carbonia-Iglesias', 'CAR', 'CI');
INSERT INTO `jos_vm_state` VALUES (235, 105, 'Caserta', 'CAS', 'CE');
INSERT INTO `jos_vm_state` VALUES (236, 105, 'Catania', 'CAT', 'CT');
INSERT INTO `jos_vm_state` VALUES (237, 105, 'Catanzaro', 'CTZ', 'CZ');
INSERT INTO `jos_vm_state` VALUES (238, 105, 'Chieti', 'CHI', 'CH');
INSERT INTO `jos_vm_state` VALUES (239, 105, 'Como', 'COM', 'CO');
INSERT INTO `jos_vm_state` VALUES (240, 105, 'Cosenza', 'COS', 'CS');
INSERT INTO `jos_vm_state` VALUES (241, 105, 'Cremona', 'CRE', 'CR');
INSERT INTO `jos_vm_state` VALUES (242, 105, 'Crotone', 'CRO', 'KR');
INSERT INTO `jos_vm_state` VALUES (243, 105, 'Cuneo', 'CUN', 'CN');
INSERT INTO `jos_vm_state` VALUES (244, 105, 'Enna', 'ENN', 'EN');
INSERT INTO `jos_vm_state` VALUES (245, 105, 'Ferrara', 'FER', 'FE');
INSERT INTO `jos_vm_state` VALUES (246, 105, 'Firenze', 'FIR', 'FI');
INSERT INTO `jos_vm_state` VALUES (247, 105, 'Foggia', 'FOG', 'FG');
INSERT INTO `jos_vm_state` VALUES (248, 105, 'Forli-Cesena', 'FOC', 'FC');
INSERT INTO `jos_vm_state` VALUES (249, 105, 'Frosinone', 'FRO', 'FR');
INSERT INTO `jos_vm_state` VALUES (250, 105, 'Genova', 'GEN', 'GE');
INSERT INTO `jos_vm_state` VALUES (251, 105, 'Gorizia', 'GOR', 'GO');
INSERT INTO `jos_vm_state` VALUES (252, 105, 'Grosseto', 'GRO', 'GR');
INSERT INTO `jos_vm_state` VALUES (253, 105, 'Imperia', 'IMP', 'IM');
INSERT INTO `jos_vm_state` VALUES (254, 105, 'Isernia', 'ISE', 'IS');
INSERT INTO `jos_vm_state` VALUES (255, 105, 'L''Aquila', 'AQU', 'AQ');
INSERT INTO `jos_vm_state` VALUES (256, 105, 'La Spezia', 'LAS', 'SP');
INSERT INTO `jos_vm_state` VALUES (257, 105, 'Latina', 'LAT', 'LT');
INSERT INTO `jos_vm_state` VALUES (258, 105, 'Lecce', 'LEC', 'LE');
INSERT INTO `jos_vm_state` VALUES (259, 105, 'Lecco', 'LCC', 'LC');
INSERT INTO `jos_vm_state` VALUES (260, 105, 'Livorno', 'LIV', 'LI');
INSERT INTO `jos_vm_state` VALUES (261, 105, 'Lodi', 'LOD', 'LO');
INSERT INTO `jos_vm_state` VALUES (262, 105, 'Lucca', 'LUC', 'LU');
INSERT INTO `jos_vm_state` VALUES (263, 105, 'Macerata', 'MAC', 'MC');
INSERT INTO `jos_vm_state` VALUES (264, 105, 'Mantova', 'MAN', 'MN');
INSERT INTO `jos_vm_state` VALUES (265, 105, 'Massa-Carrara', 'MAS', 'MS');
INSERT INTO `jos_vm_state` VALUES (266, 105, 'Matera', 'MAA', 'MT');
INSERT INTO `jos_vm_state` VALUES (267, 105, 'Medio Campidano', 'MED', 'VS');
INSERT INTO `jos_vm_state` VALUES (268, 105, 'Messina', 'MES', 'ME');
INSERT INTO `jos_vm_state` VALUES (269, 105, 'Milano', 'MIL', 'MI');
INSERT INTO `jos_vm_state` VALUES (270, 105, 'Modena', 'MOD', 'MO');
INSERT INTO `jos_vm_state` VALUES (271, 105, 'Napoli', 'NAP', 'NA');
INSERT INTO `jos_vm_state` VALUES (272, 105, 'Novara', 'NOV', 'NO');
INSERT INTO `jos_vm_state` VALUES (273, 105, 'Nuoro', 'NUR', 'NU');
INSERT INTO `jos_vm_state` VALUES (274, 105, 'Ogliastra', 'OGL', 'OG');
INSERT INTO `jos_vm_state` VALUES (275, 105, 'Olbia-Tempio', 'OLB', 'OT');
INSERT INTO `jos_vm_state` VALUES (276, 105, 'Oristano', 'ORI', 'OR');
INSERT INTO `jos_vm_state` VALUES (277, 105, 'Padova', 'PDA', 'PD');
INSERT INTO `jos_vm_state` VALUES (278, 105, 'Palermo', 'PAL', 'PA');
INSERT INTO `jos_vm_state` VALUES (279, 105, 'Parma', 'PAA', 'PR');
INSERT INTO `jos_vm_state` VALUES (280, 105, 'Pavia', 'PAV', 'PV');
INSERT INTO `jos_vm_state` VALUES (281, 105, 'Perugia', 'PER', 'PG');
INSERT INTO `jos_vm_state` VALUES (282, 105, 'Pesaro e Urbino', 'PES', 'PU');
INSERT INTO `jos_vm_state` VALUES (283, 105, 'Pescara', 'PSC', 'PE');
INSERT INTO `jos_vm_state` VALUES (284, 105, 'Piacenza', 'PIA', 'PC');
INSERT INTO `jos_vm_state` VALUES (285, 105, 'Pisa', 'PIS', 'PI');
INSERT INTO `jos_vm_state` VALUES (286, 105, 'Pistoia', 'PIT', 'PT');
INSERT INTO `jos_vm_state` VALUES (287, 105, 'Pordenone', 'POR', 'PN');
INSERT INTO `jos_vm_state` VALUES (288, 105, 'Potenza', 'PTZ', 'PZ');
INSERT INTO `jos_vm_state` VALUES (289, 105, 'Prato', 'PRA', 'PO');
INSERT INTO `jos_vm_state` VALUES (290, 105, 'Ragusa', 'RAG', 'RG');
INSERT INTO `jos_vm_state` VALUES (291, 105, 'Ravenna', 'RAV', 'RA');
INSERT INTO `jos_vm_state` VALUES (292, 105, 'Reggio Calabria', 'REG', 'RC');
INSERT INTO `jos_vm_state` VALUES (293, 105, 'Reggio Emilia', 'REE', 'RE');
INSERT INTO `jos_vm_state` VALUES (294, 105, 'Rieti', 'RIE', 'RI');
INSERT INTO `jos_vm_state` VALUES (295, 105, 'Rimini', 'RIM', 'RN');
INSERT INTO `jos_vm_state` VALUES (296, 105, 'Roma', 'ROM', 'RM');
INSERT INTO `jos_vm_state` VALUES (297, 105, 'Rovigo', 'ROV', 'RO');
INSERT INTO `jos_vm_state` VALUES (298, 105, 'Salerno', 'SAL', 'SA');
INSERT INTO `jos_vm_state` VALUES (299, 105, 'Sassari', 'SAS', 'SS');
INSERT INTO `jos_vm_state` VALUES (300, 105, 'Savona', 'SAV', 'SV');
INSERT INTO `jos_vm_state` VALUES (301, 105, 'Siena', 'SIE', 'SI');
INSERT INTO `jos_vm_state` VALUES (302, 105, 'Siracusa', 'SIR', 'SR');
INSERT INTO `jos_vm_state` VALUES (303, 105, 'Sondrio', 'SOO', 'SO');
INSERT INTO `jos_vm_state` VALUES (304, 105, 'Taranto', 'TAR', 'TA');
INSERT INTO `jos_vm_state` VALUES (305, 105, 'Teramo', 'TER', 'TE');
INSERT INTO `jos_vm_state` VALUES (306, 105, 'Terni', 'TRN', 'TR');
INSERT INTO `jos_vm_state` VALUES (307, 105, 'Torino', 'TOR', 'TO');
INSERT INTO `jos_vm_state` VALUES (308, 105, 'Trapani', 'TRA', 'TP');
INSERT INTO `jos_vm_state` VALUES (309, 105, 'Trento', 'TRE', 'TN');
INSERT INTO `jos_vm_state` VALUES (310, 105, 'Treviso', 'TRV', 'TV');
INSERT INTO `jos_vm_state` VALUES (311, 105, 'Trieste', 'TRI', 'TS');
INSERT INTO `jos_vm_state` VALUES (312, 105, 'Udine', 'UDI', 'UD');
INSERT INTO `jos_vm_state` VALUES (313, 105, 'Varese', 'VAR', 'VA');
INSERT INTO `jos_vm_state` VALUES (314, 105, 'Venezia', 'VEN', 'VE');
INSERT INTO `jos_vm_state` VALUES (315, 105, 'Verbano Cusio Ossola', 'VCO', 'VB');
INSERT INTO `jos_vm_state` VALUES (316, 105, 'Vercelli', 'VER', 'VC');
INSERT INTO `jos_vm_state` VALUES (317, 105, 'Verona', 'VRN', 'VR');
INSERT INTO `jos_vm_state` VALUES (318, 105, 'Vibo Valenzia', 'VIV', 'VV');
INSERT INTO `jos_vm_state` VALUES (319, 105, 'Vicenza', 'VII', 'VI');
INSERT INTO `jos_vm_state` VALUES (320, 105, 'Viterbo', 'VIT', 'VT');
INSERT INTO `jos_vm_state` VALUES (321, 195, 'A Coruña', 'ACO', '15');
INSERT INTO `jos_vm_state` VALUES (322, 195, 'Alava', 'ALA', '01');
INSERT INTO `jos_vm_state` VALUES (323, 195, 'Albacete', 'ALB', '02');
INSERT INTO `jos_vm_state` VALUES (324, 195, 'Alicante', 'ALI', '03');
INSERT INTO `jos_vm_state` VALUES (325, 195, 'Almeria', 'ALM', '04');
INSERT INTO `jos_vm_state` VALUES (326, 195, 'Asturias', 'AST', '33');
INSERT INTO `jos_vm_state` VALUES (327, 195, 'Avila', 'AVI', '05');
INSERT INTO `jos_vm_state` VALUES (328, 195, 'Badajoz', 'BAD', '06');
INSERT INTO `jos_vm_state` VALUES (329, 195, 'Baleares', 'BAL', '07');
INSERT INTO `jos_vm_state` VALUES (330, 195, 'Barcelona', 'BAR', '08');
INSERT INTO `jos_vm_state` VALUES (331, 195, 'Burgos', 'BUR', '09');
INSERT INTO `jos_vm_state` VALUES (332, 195, 'Caceres', 'CAC', '10');
INSERT INTO `jos_vm_state` VALUES (333, 195, 'Cadiz', 'CAD', '11');
INSERT INTO `jos_vm_state` VALUES (334, 195, 'Cantabria', 'CAN', '39');
INSERT INTO `jos_vm_state` VALUES (335, 195, 'Castellon', 'CAS', '12');
INSERT INTO `jos_vm_state` VALUES (336, 195, 'Ceuta', 'CEU', '51');
INSERT INTO `jos_vm_state` VALUES (337, 195, 'Ciudad Real', 'CIU', '13');
INSERT INTO `jos_vm_state` VALUES (338, 195, 'Cordoba', 'COR', '14');
INSERT INTO `jos_vm_state` VALUES (339, 195, 'Cuenca', 'CUE', '16');
INSERT INTO `jos_vm_state` VALUES (340, 195, 'Girona', 'GIR', '17');
INSERT INTO `jos_vm_state` VALUES (341, 195, 'Granada', 'GRA', '18');
INSERT INTO `jos_vm_state` VALUES (342, 195, 'Guadalajara', 'GUA', '19');
INSERT INTO `jos_vm_state` VALUES (343, 195, 'Guipuzcoa', 'GUI', '20');
INSERT INTO `jos_vm_state` VALUES (344, 195, 'Huelva', 'HUL', '21');
INSERT INTO `jos_vm_state` VALUES (345, 195, 'Huesca', 'HUS', '22');
INSERT INTO `jos_vm_state` VALUES (346, 195, 'Jaen', 'JAE', '23');
INSERT INTO `jos_vm_state` VALUES (347, 195, 'La Rioja', 'LRI', '26');
INSERT INTO `jos_vm_state` VALUES (348, 195, 'Las Palmas', 'LPA', '35');
INSERT INTO `jos_vm_state` VALUES (349, 195, 'Leon', 'LEO', '24');
INSERT INTO `jos_vm_state` VALUES (350, 195, 'Lleida', 'LLE', '25');
INSERT INTO `jos_vm_state` VALUES (351, 195, 'Lugo', 'LUG', '27');
INSERT INTO `jos_vm_state` VALUES (352, 195, 'Madrid', 'MAD', '28');
INSERT INTO `jos_vm_state` VALUES (353, 195, 'Malaga', 'MAL', '29');
INSERT INTO `jos_vm_state` VALUES (354, 195, 'Melilla', 'MEL', '52');
INSERT INTO `jos_vm_state` VALUES (355, 195, 'Murcia', 'MUR', '30');
INSERT INTO `jos_vm_state` VALUES (356, 195, 'Navarra', 'NAV', '31');
INSERT INTO `jos_vm_state` VALUES (357, 195, 'Ourense', 'OUR', '32');
INSERT INTO `jos_vm_state` VALUES (358, 195, 'Palencia', 'PAL', '34');
INSERT INTO `jos_vm_state` VALUES (359, 195, 'Pontevedra', 'PON', '36');
INSERT INTO `jos_vm_state` VALUES (360, 195, 'Salamanca', 'SAL', '37');
INSERT INTO `jos_vm_state` VALUES (361, 195, 'Santa Cruz de Tenerife', 'SCT', '38');
INSERT INTO `jos_vm_state` VALUES (362, 195, 'Segovia', 'SEG', '40');
INSERT INTO `jos_vm_state` VALUES (363, 195, 'Sevilla', 'SEV', '41');
INSERT INTO `jos_vm_state` VALUES (364, 195, 'Soria', 'SOR', '42');
INSERT INTO `jos_vm_state` VALUES (365, 195, 'Tarragona', 'TAR', '43');
INSERT INTO `jos_vm_state` VALUES (366, 195, 'Teruel', 'TER', '44');
INSERT INTO `jos_vm_state` VALUES (367, 195, 'Toledo', 'TOL', '45');
INSERT INTO `jos_vm_state` VALUES (368, 195, 'Valencia', 'VAL', '46');
INSERT INTO `jos_vm_state` VALUES (369, 195, 'Valladolid', 'VLL', '47');
INSERT INTO `jos_vm_state` VALUES (370, 195, 'Vizcaya', 'VIZ', '48');
INSERT INTO `jos_vm_state` VALUES (371, 195, 'Zamora', 'ZAM', '49');
INSERT INTO `jos_vm_state` VALUES (372, 195, 'Zaragoza', 'ZAR', '50');
INSERT INTO `jos_vm_state` VALUES (373, 11, 'Aragatsotn', 'ARG', 'AG');
INSERT INTO `jos_vm_state` VALUES (374, 11, 'Ararat', 'ARR', 'AR');
INSERT INTO `jos_vm_state` VALUES (375, 11, 'Armavir', 'ARM', 'AV');
INSERT INTO `jos_vm_state` VALUES (376, 11, 'Gegharkunik', 'GEG', 'GR');
INSERT INTO `jos_vm_state` VALUES (377, 11, 'Kotayk', 'KOT', 'KT');
INSERT INTO `jos_vm_state` VALUES (378, 11, 'Lori', 'LOR', 'LO');
INSERT INTO `jos_vm_state` VALUES (379, 11, 'Shirak', 'SHI', 'SH');
INSERT INTO `jos_vm_state` VALUES (380, 11, 'Syunik', 'SYU', 'SU');
INSERT INTO `jos_vm_state` VALUES (381, 11, 'Tavush', 'TAV', 'TV');
INSERT INTO `jos_vm_state` VALUES (382, 11, 'Vayots-Dzor', 'VAD', 'VD');
INSERT INTO `jos_vm_state` VALUES (383, 11, 'Yerevan', 'YER', 'ER');
INSERT INTO `jos_vm_state` VALUES (384, 99, 'Andaman & Nicobar Islands', 'ANI', 'AI');
INSERT INTO `jos_vm_state` VALUES (385, 99, 'Andhra Pradesh', 'AND', 'AN');
INSERT INTO `jos_vm_state` VALUES (386, 99, 'Arunachal Pradesh', 'ARU', 'AR');
INSERT INTO `jos_vm_state` VALUES (387, 99, 'Assam', 'ASS', 'AS');
INSERT INTO `jos_vm_state` VALUES (388, 99, 'Bihar', 'BIH', 'BI');
INSERT INTO `jos_vm_state` VALUES (389, 99, 'Chandigarh', 'CHA', 'CA');
INSERT INTO `jos_vm_state` VALUES (390, 99, 'Chhatisgarh', 'CHH', 'CH');
INSERT INTO `jos_vm_state` VALUES (391, 99, 'Dadra & Nagar Haveli', 'DAD', 'DD');
INSERT INTO `jos_vm_state` VALUES (392, 99, 'Daman & Diu', 'DAM', 'DA');
INSERT INTO `jos_vm_state` VALUES (393, 99, 'Delhi', 'DEL', 'DE');
INSERT INTO `jos_vm_state` VALUES (394, 99, 'Goa', 'GOA', 'GO');
INSERT INTO `jos_vm_state` VALUES (395, 99, 'Gujarat', 'GUJ', 'GU');
INSERT INTO `jos_vm_state` VALUES (396, 99, 'Haryana', 'HAR', 'HA');
INSERT INTO `jos_vm_state` VALUES (397, 99, 'Himachal Pradesh', 'HIM', 'HI');
INSERT INTO `jos_vm_state` VALUES (398, 99, 'Jammu & Kashmir', 'JAM', 'JA');
INSERT INTO `jos_vm_state` VALUES (399, 99, 'Jharkhand', 'JHA', 'JH');
INSERT INTO `jos_vm_state` VALUES (400, 99, 'Karnataka', 'KAR', 'KA');
INSERT INTO `jos_vm_state` VALUES (401, 99, 'Kerala', 'KER', 'KE');
INSERT INTO `jos_vm_state` VALUES (402, 99, 'Lakshadweep', 'LAK', 'LA');
INSERT INTO `jos_vm_state` VALUES (403, 99, 'Madhya Pradesh', 'MAD', 'MD');
INSERT INTO `jos_vm_state` VALUES (404, 99, 'Maharashtra', 'MAH', 'MH');
INSERT INTO `jos_vm_state` VALUES (405, 99, 'Manipur', 'MAN', 'MN');
INSERT INTO `jos_vm_state` VALUES (406, 99, 'Meghalaya', 'MEG', 'ME');
INSERT INTO `jos_vm_state` VALUES (407, 99, 'Mizoram', 'MIZ', 'MI');
INSERT INTO `jos_vm_state` VALUES (408, 99, 'Nagaland', 'NAG', 'NA');
INSERT INTO `jos_vm_state` VALUES (409, 99, 'Orissa', 'ORI', 'OR');
INSERT INTO `jos_vm_state` VALUES (410, 99, 'Pondicherry', 'PON', 'PO');
INSERT INTO `jos_vm_state` VALUES (411, 99, 'Punjab', 'PUN', 'PU');
INSERT INTO `jos_vm_state` VALUES (412, 99, 'Rajasthan', 'RAJ', 'RA');
INSERT INTO `jos_vm_state` VALUES (413, 99, 'Sikkim', 'SIK', 'SI');
INSERT INTO `jos_vm_state` VALUES (414, 99, 'Tamil Nadu', 'TAM', 'TA');
INSERT INTO `jos_vm_state` VALUES (415, 99, 'Tripura', 'TRI', 'TR');
INSERT INTO `jos_vm_state` VALUES (416, 99, 'Uttaranchal', 'UAR', 'UA');
INSERT INTO `jos_vm_state` VALUES (417, 99, 'Uttar Pradesh', 'UTT', 'UT');
INSERT INTO `jos_vm_state` VALUES (418, 99, 'West Bengal', 'WES', 'WE');
INSERT INTO `jos_vm_state` VALUES (419, 101, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO');
INSERT INTO `jos_vm_state` VALUES (420, 101, 'Ardabil', 'ARD', 'AR');
INSERT INTO `jos_vm_state` VALUES (421, 101, 'Azarbayjan-e Gharbi', 'AZG', 'AG');
INSERT INTO `jos_vm_state` VALUES (422, 101, 'Azarbayjan-e Sharqi', 'AZS', 'AS');
INSERT INTO `jos_vm_state` VALUES (423, 101, 'Bushehr', 'BUS', 'BU');
INSERT INTO `jos_vm_state` VALUES (424, 101, 'Chaharmahal va Bakhtiari', 'CMB', 'CM');
INSERT INTO `jos_vm_state` VALUES (425, 101, 'Esfahan', 'ESF', 'ES');
INSERT INTO `jos_vm_state` VALUES (426, 101, 'Fars', 'FAR', 'FA');
INSERT INTO `jos_vm_state` VALUES (427, 101, 'Gilan', 'GIL', 'GI');
INSERT INTO `jos_vm_state` VALUES (428, 101, 'Gorgan', 'GOR', 'GO');
INSERT INTO `jos_vm_state` VALUES (429, 101, 'Hamadan', 'HAM', 'HA');
INSERT INTO `jos_vm_state` VALUES (430, 101, 'Hormozgan', 'HOR', 'HO');
INSERT INTO `jos_vm_state` VALUES (431, 101, 'Ilam', 'ILA', 'IL');
INSERT INTO `jos_vm_state` VALUES (432, 101, 'Kerman', 'KER', 'KE');
INSERT INTO `jos_vm_state` VALUES (433, 101, 'Kermanshah', 'BAK', 'BA');
INSERT INTO `jos_vm_state` VALUES (434, 101, 'Khorasan-e Junoubi', 'KHJ', 'KJ');
INSERT INTO `jos_vm_state` VALUES (435, 101, 'Khorasan-e Razavi', 'KHR', 'KR');
INSERT INTO `jos_vm_state` VALUES (436, 101, 'Khorasan-e Shomali', 'KHS', 'KS');
INSERT INTO `jos_vm_state` VALUES (437, 101, 'Khuzestan', 'KHU', 'KH');
INSERT INTO `jos_vm_state` VALUES (438, 101, 'Kordestan', 'KOR', 'KO');
INSERT INTO `jos_vm_state` VALUES (439, 101, 'Lorestan', 'LOR', 'LO');
INSERT INTO `jos_vm_state` VALUES (440, 101, 'Markazi', 'MAR', 'MR');
INSERT INTO `jos_vm_state` VALUES (441, 101, 'Mazandaran', 'MAZ', 'MZ');
INSERT INTO `jos_vm_state` VALUES (442, 101, 'Qazvin', 'QAS', 'QA');
INSERT INTO `jos_vm_state` VALUES (443, 101, 'Qom', 'QOM', 'QO');
INSERT INTO `jos_vm_state` VALUES (444, 101, 'Semnan', 'SEM', 'SE');
INSERT INTO `jos_vm_state` VALUES (445, 101, 'Sistan va Baluchestan', 'SBA', 'SB');
INSERT INTO `jos_vm_state` VALUES (446, 101, 'Tehran', 'TEH', 'TE');
INSERT INTO `jos_vm_state` VALUES (447, 101, 'Yazd', 'YAZ', 'YA');
INSERT INTO `jos_vm_state` VALUES (448, 101, 'Zanjan', 'ZAN', 'ZA');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_tax_rate`
-- 

CREATE TABLE `jos_vm_tax_rate` (
  `tax_rate_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `tax_state` varchar(64) default NULL,
  `tax_country` varchar(64) default NULL,
  `mdate` int(11) default NULL,
  `tax_rate` decimal(10,5) default NULL,
  PRIMARY KEY  (`tax_rate_id`),
  KEY `idx_tax_rate_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The tax rates for your store' AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `jos_vm_tax_rate`
-- 

INSERT INTO `jos_vm_tax_rate` VALUES (2, 1, 'CA', 'USA', 964565926, 0.09750);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_userfield`
-- 

CREATE TABLE `jos_vm_userfield` (
  `fieldid` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `type` varchar(50) NOT NULL default '',
  `maxlength` int(11) default NULL,
  `size` int(11) default NULL,
  `required` tinyint(4) default '0',
  `ordering` int(11) default NULL,
  `cols` int(11) default NULL,
  `rows` int(11) default NULL,
  `value` varchar(50) default NULL,
  `default` int(11) default NULL,
  `published` tinyint(1) NOT NULL default '1',
  `registration` tinyint(1) NOT NULL default '0',
  `shipping` tinyint(1) NOT NULL default '0',
  `account` tinyint(1) NOT NULL default '1',
  `readonly` tinyint(1) NOT NULL default '0',
  `calculated` tinyint(1) NOT NULL default '0',
  `sys` tinyint(4) NOT NULL default '0',
  `vendor_id` int(11) default NULL,
  `params` mediumtext,
  PRIMARY KEY  (`fieldid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information' AUTO_INCREMENT=36 ;

-- 
-- Dumping data for table `jos_vm_userfield`
-- 

INSERT INTO `jos_vm_userfield` VALUES (1, 'email', 'REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, 2, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (7, 'title', 'PHPSHOP_SHOPPER_FORM_TITLE', '', 'select', 0, 0, 0, 8, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (3, 'password', 'PHPSHOP_SHOPPER_FORM_PASSWORD_1', '', 'password', 25, 30, 1, 4, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (4, 'password2', 'PHPSHOP_SHOPPER_FORM_PASSWORD_2', '', 'password', 25, 30, 1, 5, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (6, 'company', 'PHPSHOP_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, 7, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (5, 'delimiter_billto', 'PHPSHOP_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, 6, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (2, 'username', 'REGISTER_UNAME', '', 'text', 25, 30, 1, 3, 0, 0, '', 0, 1, 1, 0, 1, 0, 0, 1, 1, '');
INSERT INTO `jos_vm_userfield` VALUES (35, 'address_type_name', 'PHPSHOP_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, 6, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (8, 'first_name', 'PHPSHOP_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, 9, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (9, 'last_name', 'PHPSHOP_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, 10, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (10, 'middle_name', 'PHPSHOP_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, 11, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (11, 'address_1', 'PHPSHOP_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, 12, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (12, 'address_2', 'PHPSHOP_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, 13, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (13, 'city', 'PHPSHOP_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, 14, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (14, 'zip', 'PHPSHOP_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, 15, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (15, 'country', 'PHPSHOP_SHOPPER_FORM_COUNTRY', '', 'select', 0, 0, 1, 16, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (16, 'state', 'PHPSHOP_SHOPPER_FORM_STATE', '', 'select', 0, 0, 1, 17, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (17, 'phone_1', 'PHPSHOP_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 1, 18, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (18, 'phone_2', 'PHPSHOP_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, 19, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (19, 'fax', 'PHPSHOP_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, 20, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (20, 'delimiter_bankaccount', 'PHPSHOP_ACCOUNT_BANK_TITLE', '', 'delimiter', 25, 30, 0, 21, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (21, 'bank_account_holder', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_HOLDER', '', 'text', 48, 30, 0, 22, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (22, 'bank_account_nr', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_NR', '', 'text', 32, 30, 0, 23, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (23, 'bank_sort_code', 'PHPSHOP_ACCOUNT_LBL_BANK_SORT_CODE', '', 'text', 16, 30, 0, 24, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (24, 'bank_name', 'PHPSHOP_ACCOUNT_LBL_BANK_NAME', '', 'text', 32, 30, 0, 25, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (25, 'bank_account_type', 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE', '', 'select', 0, 0, 0, 26, 0, 0, '', 0, 1, 0, 0, 1, 1, 0, 1, 1, '');
INSERT INTO `jos_vm_userfield` VALUES (26, 'bank_iban', 'PHPSHOP_ACCOUNT_LBL_BANK_IBAN', '', 'text', 64, 30, 0, 27, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (27, 'delimiter_sendregistration', 'BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, 28, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (28, 'agreed', 'PHPSHOP_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 1, 29, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (29, 'delimiter_userinfo', 'PHPSHOP_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (30, 'extra_field_1', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_1', '', 'text', 255, 30, 0, 31, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (31, 'extra_field_2', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_2', '', 'text', 255, 30, 0, 32, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (32, 'extra_field_3', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_3', '', 'text', 255, 30, 0, 33, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (33, 'extra_field_4', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_4', '', 'select', 1, 1, 0, 34, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (34, 'extra_field_5', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_5', '', 'select', 1, 1, 0, 35, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_userfield_values`
-- 

CREATE TABLE `jos_vm_userfield_values` (
  `fieldvalueid` int(11) NOT NULL auto_increment,
  `fieldid` int(11) NOT NULL default '0',
  `fieldtitle` varchar(255) NOT NULL default '',
  `fieldvalue` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `sys` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`fieldvalueid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists' AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `jos_vm_userfield_values`
-- 

INSERT INTO `jos_vm_userfield_values` VALUES (1, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_BUSINESSCHECKING', 'Checking', 1, 1);
INSERT INTO `jos_vm_userfield_values` VALUES (2, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_CHECKING', 'Business Checking', 2, 1);
INSERT INTO `jos_vm_userfield_values` VALUES (3, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_SAVINGS', 'Savings', 3, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_user_info`
-- 

CREATE TABLE `jos_vm_user_info` (
  `user_info_id` varchar(32) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  `address_type` char(2) default NULL,
  `address_type_name` varchar(32) default NULL,
  `company` varchar(64) default NULL,
  `title` varchar(32) default NULL,
  `last_name` varchar(32) default NULL,
  `first_name` varchar(32) default NULL,
  `middle_name` varchar(32) default NULL,
  `phone_1` varchar(32) default NULL,
  `phone_2` varchar(32) default NULL,
  `fax` varchar(32) default NULL,
  `address_1` varchar(64) NOT NULL default '',
  `address_2` varchar(64) default NULL,
  `city` varchar(32) NOT NULL default '',
  `state` varchar(32) NOT NULL default '',
  `country` varchar(32) NOT NULL default 'US',
  `zip` varchar(32) NOT NULL default '',
  `user_email` varchar(255) default NULL,
  `extra_field_1` varchar(255) default NULL,
  `extra_field_2` varchar(255) default NULL,
  `extra_field_3` varchar(255) default NULL,
  `extra_field_4` char(1) default NULL,
  `extra_field_5` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `perms` varchar(40) NOT NULL default 'shopper',
  `bank_account_nr` varchar(32) NOT NULL default '',
  `bank_name` varchar(32) NOT NULL default '',
  `bank_sort_code` varchar(16) NOT NULL default '',
  `bank_iban` varchar(64) NOT NULL default '',
  `bank_account_holder` varchar(48) NOT NULL default '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL default 'Checking',
  PRIMARY KEY  (`user_info_id`),
  KEY `idx_user_info_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

-- 
-- Dumping data for table `jos_vm_user_info`
-- 

INSERT INTO `jos_vm_user_info` VALUES ('bcd2dfe5568375d431e76e4d6040303b', 62, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, 1370385652, 1370385682, 'shopper', '', '', '', '', '', 'Checking');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_vendor`
-- 

CREATE TABLE `jos_vm_vendor` (
  `vendor_id` int(11) NOT NULL auto_increment,
  `vendor_name` varchar(64) default NULL,
  `contact_last_name` varchar(32) NOT NULL default '',
  `contact_first_name` varchar(32) NOT NULL default '',
  `contact_middle_name` varchar(32) default NULL,
  `contact_title` varchar(32) default NULL,
  `contact_phone_1` varchar(32) NOT NULL default '',
  `contact_phone_2` varchar(32) default NULL,
  `contact_fax` varchar(32) default NULL,
  `contact_email` varchar(255) default NULL,
  `vendor_phone` varchar(32) default NULL,
  `vendor_address_1` varchar(64) NOT NULL default '',
  `vendor_address_2` varchar(64) default NULL,
  `vendor_city` varchar(32) NOT NULL default '',
  `vendor_state` varchar(32) NOT NULL default '',
  `vendor_country` varchar(32) NOT NULL default 'US',
  `vendor_zip` varchar(32) NOT NULL default '',
  `vendor_store_name` varchar(128) NOT NULL default '',
  `vendor_store_desc` text,
  `vendor_category_id` int(11) default NULL,
  `vendor_thumb_image` varchar(255) default NULL,
  `vendor_full_image` varchar(255) default NULL,
  `vendor_currency` varchar(16) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `vendor_image_path` varchar(255) default NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_url` varchar(255) NOT NULL default '',
  `vendor_min_pov` decimal(10,2) default NULL,
  `vendor_freeshipping` decimal(10,2) NOT NULL default '0.00',
  `vendor_currency_display_style` varchar(64) NOT NULL default '',
  `vendor_accepted_currencies` text NOT NULL,
  `vendor_address_format` text NOT NULL,
  `vendor_date_format` varchar(255) NOT NULL,
  PRIMARY KEY  (`vendor_id`),
  KEY `idx_vendor_name` (`vendor_name`),
  KEY `idx_vendor_category_id` (`vendor_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store' AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_vm_vendor`
-- 

INSERT INTO `jos_vm_vendor` VALUES (1, 'Thành An', 'Chiến', 'Phạm', 'Quang ', 'Mr.Chien', '0916810148', '', '', 'admin@gmail.com', '0916810148', 'Khoái Châu-Hưng Yên', '', 'Hưng Yên', ' - ', 'VNM', '', 'Đồng Hồ Thành An', '<p>We have the best tools for do-it-yourselfers.  Check us out!</p>\r\n<p>We were established in 1969 in a time when getting good tools was expensive, but the quality was good.  Now that only a select few of those authentic tools survive, we have dedicated this store to bringing the experience alive for collectors and master mechanics everywhere.</p>\r\n<p>You can easily find products selecting the category you would like to browse above.</p>', 0, '', 'c19970d6f2970cb0d1b13bea3af3144a.gif', 'VND', 950302468, 1370453475, '', '<h5>You haven\\''t configured any terms of service yet. Click <a href=\\"administrator/index2.php?page=store.store_form&amp;option=com_virtuemart\\">here</a> to change this text.</h5>', 'http://localhost:8080/joomla', 0.00, 0.00, '1|VND||| |1|8', 'VND', '{storename}\r\n{address_1}\r\n{address_2}\r\n{city}, {zip}', '%A, %d %B %Y %H:%M');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_vendor_category`
-- 

CREATE TABLE `jos_vm_vendor_category` (
  `vendor_category_id` int(11) NOT NULL auto_increment,
  `vendor_category_name` varchar(64) default NULL,
  `vendor_category_desc` text,
  PRIMARY KEY  (`vendor_category_id`),
  KEY `idx_vendor_category_category_name` (`vendor_category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The categories that vendors are assigned to' AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `jos_vm_vendor_category`
-- 

INSERT INTO `jos_vm_vendor_category` VALUES (6, '-default-', 'Default');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_waiting_list`
-- 

CREATE TABLE `jos_vm_waiting_list` (
  `waiting_list_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `notify_email` varchar(150) NOT NULL default '',
  `notified` enum('0','1') default '0',
  `notify_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`waiting_list_id`),
  KEY `product_id` (`product_id`),
  KEY `notify_email` (`notify_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_waiting_list`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_zone_shipping`
-- 

CREATE TABLE `jos_vm_zone_shipping` (
  `zone_id` int(11) NOT NULL auto_increment,
  `zone_name` varchar(255) default NULL,
  `zone_cost` decimal(10,2) default NULL,
  `zone_limit` decimal(10,2) default NULL,
  `zone_description` text NOT NULL,
  `zone_tax_rate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipping Module' AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `jos_vm_zone_shipping`
-- 

INSERT INTO `jos_vm_zone_shipping` VALUES (1, 'Default', 6.00, 35.00, 'This is the default Shipping Zone. This is the zone information that all countries will use until you assign each individual country to a Zone.', 2);
INSERT INTO `jos_vm_zone_shipping` VALUES (2, 'Zone 1', 1000.00, 10000.00, 'This is a zone example', 2);
INSERT INTO `jos_vm_zone_shipping` VALUES (3, 'Zone 2', 2.00, 22.00, 'This is the second zone. You can use this for notes about this zone', 2);
INSERT INTO `jos_vm_zone_shipping` VALUES (4, 'Zone 3', 11.00, 64.00, 'Another usefull thing might be details about this zone or special instructions.', 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_weblinks`
-- 

CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_weblinks`
-- 

