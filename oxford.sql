-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: May 06, 2018 at 10:46 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oxford`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_alm`
--

CREATE TABLE `wp_alm` (
  `id` mediumint(9) NOT NULL,
  `name` text NOT NULL,
  `repeaterDefault` longtext NOT NULL,
  `repeaterType` text NOT NULL,
  `pluginVersion` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_alm`
--

INSERT INTO `wp_alm` (`id`, `name`, `repeaterDefault`, `repeaterType`, `pluginVersion`) VALUES
(1, 'default', '<li <?php if (!has_post_thumbnail()) { ?> class="no-img"<?php } ?>><?php if ( has_post_thumbnail() ) { the_post_thumbnail(''alm-thumbnail'');}?><h3><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a></h3><p class="entry-meta"><?php the_time("F d, Y"); ?></p><?php the_excerpt(); ?></li>', 'default', '3.4.1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_deliverreport`
--

CREATE TABLE `wp_es_deliverreport` (
  `es_deliver_id` int(10) unsigned NOT NULL,
  `es_deliver_sentguid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_deliver_emailid` int(10) unsigned NOT NULL,
  `es_deliver_emailmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_deliver_sentdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_deliver_viewdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_sentstatus` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sent',
  `es_deliver_senttype` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Immediately'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_emaillist`
--

CREATE TABLE `wp_es_emaillist` (
  `es_email_id` int(10) unsigned NOT NULL,
  `es_email_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_email_mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_email_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unconfirmed',
  `es_email_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_email_viewcount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_email_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public',
  `es_email_guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_es_emaillist`
--

INSERT INTO `wp_es_emaillist` (`es_email_id`, `es_email_name`, `es_email_mail`, `es_email_status`, `es_email_created`, `es_email_viewcount`, `es_email_group`, `es_email_guid`) VALUES
(1, 'Admin', 'zain.khan@msn.com', 'Confirmed', '2018-04-16 23:23:07', '0', 'Public', 'ydlkav-lvbhur-mbhuvc-jxqeoa-ofrlku'),
(2, 'Example', 'a.example@example.com', 'Confirmed', '2018-04-16 23:23:07', '0', 'Public', 'fodmuw-xcbigr-wvasyl-evsnbx-pixlov');

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_notification`
--

CREATE TABLE `wp_es_notification` (
  `es_note_id` int(10) unsigned NOT NULL,
  `es_note_cat` text COLLATE utf8mb4_unicode_ci,
  `es_note_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_note_templ` int(10) unsigned NOT NULL,
  `es_note_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_es_notification`
--

INSERT INTO `wp_es_notification` (`es_note_id`, `es_note_cat`, `es_note_group`, `es_note_templ`, `es_note_status`) VALUES
(1, ' ##Customer Experience## -- ##Global Ideas## -- ##Innovation## -- ##Leadership## -- ##Operations## -- ##Sustainability## -- ##Uncategorized## ', 'Public', 80, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_sentdetails`
--

CREATE TABLE `wp_es_sentdetails` (
  `es_sent_id` int(10) unsigned NOT NULL,
  `es_sent_guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_sent_qstring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_sent_source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_sent_starttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_count` int(10) unsigned NOT NULL,
  `es_sent_preview` text COLLATE utf8mb4_unicode_ci,
  `es_sent_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sent',
  `es_sent_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Immediately',
  `es_sent_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter`
--

CREATE TABLE `wp_newsletter` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S',
  `id` int(11) NOT NULL,
  `list` int(11) NOT NULL DEFAULT '0',
  `profile` mediumtext COLLATE utf8mb4_unicode_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` int(11) NOT NULL DEFAULT '0',
  `followup_step` tinyint(4) NOT NULL DEFAULT '0',
  `followup_time` bigint(20) NOT NULL DEFAULT '0',
  `followup` tinyint(4) NOT NULL DEFAULT '0',
  `surname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `feed_time` bigint(20) NOT NULL DEFAULT '0',
  `feed` tinyint(4) NOT NULL DEFAULT '0',
  `referrer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT '0',
  `http_referer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `region` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bounce_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bounce_time` int(11) NOT NULL DEFAULT '0',
  `unsub_email_id` int(11) NOT NULL DEFAULT '0',
  `unsub_time` int(11) NOT NULL DEFAULT '0',
  `list_1` tinyint(4) NOT NULL DEFAULT '0',
  `list_2` tinyint(4) NOT NULL DEFAULT '0',
  `list_3` tinyint(4) NOT NULL DEFAULT '0',
  `list_4` tinyint(4) NOT NULL DEFAULT '0',
  `list_5` tinyint(4) NOT NULL DEFAULT '0',
  `list_6` tinyint(4) NOT NULL DEFAULT '0',
  `list_7` tinyint(4) NOT NULL DEFAULT '0',
  `list_8` tinyint(4) NOT NULL DEFAULT '0',
  `list_9` tinyint(4) NOT NULL DEFAULT '0',
  `list_10` tinyint(4) NOT NULL DEFAULT '0',
  `list_11` tinyint(4) NOT NULL DEFAULT '0',
  `list_12` tinyint(4) NOT NULL DEFAULT '0',
  `list_13` tinyint(4) NOT NULL DEFAULT '0',
  `list_14` tinyint(4) NOT NULL DEFAULT '0',
  `list_15` tinyint(4) NOT NULL DEFAULT '0',
  `list_16` tinyint(4) NOT NULL DEFAULT '0',
  `list_17` tinyint(4) NOT NULL DEFAULT '0',
  `list_18` tinyint(4) NOT NULL DEFAULT '0',
  `list_19` tinyint(4) NOT NULL DEFAULT '0',
  `list_20` tinyint(4) NOT NULL DEFAULT '0',
  `profile_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_8` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_9` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_emails`
--

CREATE TABLE `wp_newsletter_emails` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `subject2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message2` longtext COLLATE utf8mb4_unicode_ci,
  `name2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','sending','sent','paused') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT '0',
  `last_id` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `track` int(11) NOT NULL DEFAULT '0',
  `list` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` longtext COLLATE utf8mb4_unicode_ci,
  `editor` tinyint(4) NOT NULL DEFAULT '0',
  `sex` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message_text` longtext COLLATE utf8mb4_unicode_ci,
  `preferences` longtext COLLATE utf8mb4_unicode_ci,
  `send_on` int(11) NOT NULL DEFAULT '0',
  `token` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `version` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `open_count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_sent`
--

CREATE TABLE `wp_newsletter_sent` (
  `email_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `error` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_stats`
--

CREATE TABLE `wp_newsletter_stats` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `newsletter` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `anchor` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', '', 'save', 1, 1, '2018-04-17 03:40:52', '2018-04-16 23:40:52'),
(2, '', '', 'email', 1, 1, '2018-04-17 03:40:52', '2018-04-16 23:40:52'),
(3, '', '', 'email', 1, 1, '2018-04-17 03:40:52', '2018-04-16 23:40:52'),
(4, '', '', 'successmessage', 1, 1, '2018-04-17 03:40:52', '2018-04-16 23:40:52'),
(5, NULL, NULL, 'successmessage', 1, 2, '2018-04-16 23:42:02', '2018-04-16 23:42:02'),
(6, NULL, NULL, 'email', 1, 2, '2018-04-16 23:42:02', '2018-04-16 23:42:02'),
(7, NULL, NULL, 'save', 1, 2, '2018-04-16 23:42:02', '2018-04-16 23:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'label', 'Store Submission'),
(2, 1, 'objectType', 'Action'),
(3, 1, 'objectDomain', 'actions'),
(4, 1, 'editActive', ''),
(5, 1, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(6, 1, 'payment_gateways', ''),
(7, 1, 'payment_total', ''),
(8, 1, 'tag', ''),
(9, 1, 'to', ''),
(10, 1, 'email_subject', ''),
(11, 1, 'email_message', ''),
(12, 1, 'from_name', ''),
(13, 1, 'from_address', ''),
(14, 1, 'reply_to', ''),
(15, 1, 'email_format', 'html'),
(16, 1, 'cc', ''),
(17, 1, 'bcc', ''),
(18, 1, 'attach_csv', ''),
(19, 1, 'redirect_url', ''),
(20, 1, 'email_message_plain', ''),
(21, 2, 'label', 'Email Confirmation'),
(22, 2, 'to', '{field:email}'),
(23, 2, 'subject', 'This is an email action.'),
(24, 2, 'message', 'Hello, Ninja Forms!'),
(25, 2, 'objectType', 'Action'),
(26, 2, 'objectDomain', 'actions'),
(27, 2, 'editActive', ''),
(28, 2, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(29, 2, 'payment_gateways', ''),
(30, 2, 'payment_total', ''),
(31, 2, 'tag', ''),
(32, 2, 'email_subject', 'Submission Confirmation '),
(33, 2, 'email_message', '<p>{all_fields_table}<br></p>'),
(34, 2, 'from_name', ''),
(35, 2, 'from_address', ''),
(36, 2, 'reply_to', ''),
(37, 2, 'email_format', 'html'),
(38, 2, 'cc', ''),
(39, 2, 'bcc', ''),
(40, 2, 'attach_csv', ''),
(41, 2, 'email_message_plain', ''),
(42, 3, 'objectType', 'Action'),
(43, 3, 'objectDomain', 'actions'),
(44, 3, 'editActive', ''),
(45, 3, 'label', 'Email Notification'),
(46, 3, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(47, 3, 'payment_gateways', ''),
(48, 3, 'payment_total', ''),
(49, 3, 'tag', ''),
(50, 3, 'to', '{system:admin_email}'),
(51, 3, 'email_subject', 'New message from {field:name}'),
(52, 3, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(53, 3, 'from_name', ''),
(54, 3, 'from_address', ''),
(55, 3, 'reply_to', '{field:email}'),
(56, 3, 'email_format', 'html'),
(57, 3, 'cc', ''),
(58, 3, 'bcc', ''),
(59, 3, 'attach_csv', '0'),
(60, 3, 'email_message_plain', ''),
(61, 4, 'label', 'Success Message'),
(62, 4, 'message', 'Thank you {field:name} for filling out my form!'),
(63, 4, 'objectType', 'Action'),
(64, 4, 'objectDomain', 'actions'),
(65, 4, 'editActive', ''),
(66, 4, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(67, 4, 'payment_gateways', ''),
(68, 4, 'payment_total', ''),
(69, 4, 'tag', ''),
(70, 4, 'to', ''),
(71, 4, 'email_subject', ''),
(72, 4, 'email_message', ''),
(73, 4, 'from_name', ''),
(74, 4, 'from_address', ''),
(75, 4, 'reply_to', ''),
(76, 4, 'email_format', 'html'),
(77, 4, 'cc', ''),
(78, 4, 'bcc', ''),
(79, 4, 'attach_csv', ''),
(80, 4, 'redirect_url', ''),
(81, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(82, 4, 'email_message_plain', ''),
(83, 5, 'objectType', 'Action'),
(84, 5, 'objectDomain', 'actions'),
(85, 5, 'editActive', ''),
(86, 5, 'label', 'Success Message'),
(87, 5, 'message', 'Your form has been successfully submitted.'),
(88, 5, 'order', '1'),
(89, 5, 'payment_gateways', ''),
(90, 5, 'payment_total', '0'),
(91, 5, 'tag', ''),
(92, 5, 'to', '{wp:admin_email}'),
(93, 5, 'reply_to', ''),
(94, 5, 'email_subject', 'Ninja Forms Submission'),
(95, 5, 'email_message', '{fields_table}'),
(96, 5, 'email_message_plain', ''),
(97, 5, 'from_name', ''),
(98, 5, 'from_address', ''),
(99, 5, 'email_format', 'html'),
(100, 5, 'cc', ''),
(101, 5, 'bcc', ''),
(102, 5, 'redirect_url', ''),
(103, 5, 'success_msg', 'Your form has been successfully submitted.'),
(104, 6, 'objectType', 'Action'),
(105, 6, 'objectDomain', 'actions'),
(106, 6, 'editActive', ''),
(107, 6, 'label', 'Admin Email'),
(108, 6, 'order', '2'),
(109, 6, 'payment_gateways', ''),
(110, 6, 'payment_total', '0'),
(111, 6, 'tag', ''),
(112, 6, 'to', '{wp:admin_email}'),
(113, 6, 'reply_to', ''),
(114, 6, 'email_subject', 'Ninja Forms Submission'),
(115, 6, 'email_message', '{fields_table}'),
(116, 6, 'email_message_plain', ''),
(117, 6, 'from_name', ''),
(118, 6, 'from_address', ''),
(119, 6, 'email_format', 'html'),
(120, 6, 'cc', ''),
(121, 6, 'bcc', ''),
(122, 7, 'objectType', 'Action'),
(123, 7, 'objectDomain', 'actions'),
(124, 7, 'editActive', ''),
(125, 7, 'label', 'Store Submission'),
(126, 7, 'order', '3'),
(127, 7, 'payment_gateways', ''),
(128, 7, 'payment_total', '0'),
(129, 7, 'tag', ''),
(130, 7, 'to', '{wp:admin_email}'),
(131, 7, 'reply_to', ''),
(132, 7, 'email_subject', 'Ninja Forms Submission'),
(133, 7, 'email_message', '{fields_table}'),
(134, 7, 'email_message_plain', ''),
(135, 7, 'from_name', ''),
(136, 7, 'from_address', ''),
(137, 7, 'email_format', 'html'),
(138, 7, 'cc', ''),
(139, 7, 'bcc', ''),
(140, 7, 'redirect_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 1, '2018-04-17 03:40:51', '2018-04-16 23:40:51'),
(2, NULL, NULL, NULL, 1, '2018-04-17 03:40:51', '2018-04-16 23:40:51'),
(3, NULL, NULL, NULL, 1, '2018-04-17 03:40:51', '2018-04-16 23:40:51'),
(4, NULL, NULL, NULL, 1, '2018-04-17 03:40:51', '2018-04-16 23:40:51'),
(5, 'Email', 'email_1523922075751', 'email', 2, '2018-04-16 23:42:02', NULL),
(6, 'SUBMIT', 'submit_1523922133552', 'submit', 2, '2018-04-16 23:42:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 5, 'objectType', 'Field'),
(2, 5, 'objectDomain', 'fields'),
(3, 5, 'editActive', ''),
(4, 5, 'order', '1'),
(5, 5, 'label', 'Email'),
(6, 5, 'type', 'email'),
(7, 5, 'key', 'email_1523922075751'),
(8, 5, 'label_pos', 'default'),
(9, 5, 'required', ''),
(10, 5, 'default', ''),
(11, 5, 'placeholder', ''),
(12, 5, 'container_class', ''),
(13, 5, 'element_class', ''),
(14, 5, 'admin_label', ''),
(15, 5, 'help_text', ''),
(16, 5, 'custom_name_attribute', 'email'),
(17, 6, 'objectType', 'Field'),
(18, 6, 'objectDomain', 'fields'),
(19, 6, 'editActive', ''),
(20, 6, 'order', '9999'),
(21, 6, 'type', 'submit'),
(22, 6, 'label', 'SUBMIT'),
(23, 6, 'processing_label', 'Processing'),
(24, 6, 'container_class', ''),
(25, 6, 'element_class', ''),
(26, 6, 'key', 'submit_1523922133552'),
(27, 6, 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`) VALUES
(1, 'Contact Me', '', '2018-04-17 03:40:51', '2018-04-16 23:40:51', NULL, NULL),
(2, '', '', '2018-04-16 23:42:02', '2018-04-16 23:42:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'default_label_pos', 'above'),
(2, 1, 'conditions', 'a:0:{}'),
(3, 1, 'objectType', 'Form Setting'),
(4, 1, 'editActive', ''),
(5, 1, 'show_title', '1'),
(6, 1, 'clear_complete', '1'),
(7, 1, 'hide_complete', '1'),
(8, 1, 'wrapper_class', ''),
(9, 1, 'element_class', ''),
(10, 1, 'add_submit', '1'),
(11, 1, 'logged_in', ''),
(12, 1, 'not_logged_in_msg', ''),
(13, 1, 'sub_limit_number', ''),
(14, 1, 'sub_limit_msg', ''),
(15, 1, 'calculations', 'a:0:{}'),
(16, 1, 'formContentData', 'a:4:{i:0;a:2:{s:5:"order";s:1:"0";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:4:"name";}s:5:"width";s:3:"100";}}}i:1;a:2:{s:5:"order";s:1:"1";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:5:"email";}s:5:"width";s:3:"100";}}}i:2;a:2:{s:5:"order";s:1:"2";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:7:"message";}s:5:"width";s:3:"100";}}}i:3;a:2:{s:5:"order";s:1:"3";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:6:"submit";}s:5:"width";s:3:"100";}}}}'),
(17, 1, 'container_styles_background-color', ''),
(18, 1, 'container_styles_border', ''),
(19, 1, 'container_styles_border-style', ''),
(20, 1, 'container_styles_border-color', ''),
(21, 1, 'container_styles_color', ''),
(22, 1, 'container_styles_height', ''),
(23, 1, 'container_styles_width', ''),
(24, 1, 'container_styles_font-size', ''),
(25, 1, 'container_styles_margin', ''),
(26, 1, 'container_styles_padding', ''),
(27, 1, 'container_styles_display', ''),
(28, 1, 'container_styles_float', ''),
(29, 1, 'container_styles_show_advanced_css', '0'),
(30, 1, 'container_styles_advanced', ''),
(31, 1, 'title_styles_background-color', ''),
(32, 1, 'title_styles_border', ''),
(33, 1, 'title_styles_border-style', ''),
(34, 1, 'title_styles_border-color', ''),
(35, 1, 'title_styles_color', ''),
(36, 1, 'title_styles_height', ''),
(37, 1, 'title_styles_width', ''),
(38, 1, 'title_styles_font-size', ''),
(39, 1, 'title_styles_margin', ''),
(40, 1, 'title_styles_padding', ''),
(41, 1, 'title_styles_display', ''),
(42, 1, 'title_styles_float', ''),
(43, 1, 'title_styles_show_advanced_css', '0'),
(44, 1, 'title_styles_advanced', ''),
(45, 1, 'row_styles_background-color', ''),
(46, 1, 'row_styles_border', ''),
(47, 1, 'row_styles_border-style', ''),
(48, 1, 'row_styles_border-color', ''),
(49, 1, 'row_styles_color', ''),
(50, 1, 'row_styles_height', ''),
(51, 1, 'row_styles_width', ''),
(52, 1, 'row_styles_font-size', ''),
(53, 1, 'row_styles_margin', ''),
(54, 1, 'row_styles_padding', ''),
(55, 1, 'row_styles_display', ''),
(56, 1, 'row_styles_show_advanced_css', '0'),
(57, 1, 'row_styles_advanced', ''),
(58, 1, 'row-odd_styles_background-color', ''),
(59, 1, 'row-odd_styles_border', ''),
(60, 1, 'row-odd_styles_border-style', ''),
(61, 1, 'row-odd_styles_border-color', ''),
(62, 1, 'row-odd_styles_color', ''),
(63, 1, 'row-odd_styles_height', ''),
(64, 1, 'row-odd_styles_width', ''),
(65, 1, 'row-odd_styles_font-size', ''),
(66, 1, 'row-odd_styles_margin', ''),
(67, 1, 'row-odd_styles_padding', ''),
(68, 1, 'row-odd_styles_display', ''),
(69, 1, 'row-odd_styles_show_advanced_css', '0'),
(70, 1, 'row-odd_styles_advanced', ''),
(71, 1, 'success-msg_styles_background-color', ''),
(72, 1, 'success-msg_styles_border', ''),
(73, 1, 'success-msg_styles_border-style', ''),
(74, 1, 'success-msg_styles_border-color', ''),
(75, 1, 'success-msg_styles_color', ''),
(76, 1, 'success-msg_styles_height', ''),
(77, 1, 'success-msg_styles_width', ''),
(78, 1, 'success-msg_styles_font-size', ''),
(79, 1, 'success-msg_styles_margin', ''),
(80, 1, 'success-msg_styles_padding', ''),
(81, 1, 'success-msg_styles_display', ''),
(82, 1, 'success-msg_styles_show_advanced_css', '0'),
(83, 1, 'success-msg_styles_advanced', ''),
(84, 1, 'error_msg_styles_background-color', ''),
(85, 1, 'error_msg_styles_border', ''),
(86, 1, 'error_msg_styles_border-style', ''),
(87, 1, 'error_msg_styles_border-color', ''),
(88, 1, 'error_msg_styles_color', ''),
(89, 1, 'error_msg_styles_height', ''),
(90, 1, 'error_msg_styles_width', ''),
(91, 1, 'error_msg_styles_font-size', ''),
(92, 1, 'error_msg_styles_margin', ''),
(93, 1, 'error_msg_styles_padding', ''),
(94, 1, 'error_msg_styles_display', ''),
(95, 1, 'error_msg_styles_show_advanced_css', '0'),
(96, 1, 'error_msg_styles_advanced', ''),
(97, 2, 'objectType', 'Form Setting'),
(98, 2, 'editActive', '1'),
(99, 2, 'show_title', '1'),
(100, 2, 'clear_complete', '1'),
(101, 2, 'hide_complete', '1'),
(102, 2, 'default_label_pos', 'above'),
(103, 2, 'wrapper_class', ''),
(104, 2, 'element_class', ''),
(105, 2, 'add_submit', '1'),
(106, 2, 'changeEmailErrorMsg', ''),
(107, 2, 'confirmFieldErrorMsg', ''),
(108, 2, 'fieldNumberNumMinError', ''),
(109, 2, 'fieldNumberNumMaxError', ''),
(110, 2, 'fieldNumberIncrementBy', ''),
(111, 2, 'formErrorsCorrectErrors', ''),
(112, 2, 'validateRequiredField', ''),
(113, 2, 'honeypotHoneypotError', ''),
(114, 2, 'fieldsMarkedRequired', ''),
(115, 2, 'currency', ''),
(116, 2, 'unique_field_error', 'A form with this value has already been submitted.'),
(117, 2, 'logged_in', ''),
(118, 2, 'not_logged_in_msg', ''),
(119, 2, 'sub_limit_msg', 'The form has reached its submission limit.'),
(120, 2, 'calculations', 'a:0:{}'),
(121, 2, 'formContentData', 'a:2:{i:0;s:19:"email_1523922075751";i:1;s:20:"submit_1523922133552";}'),
(122, 2, 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=897 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/oxford', 'yes'),
(2, 'home', 'http://localhost:8888/oxford', 'yes'),
(3, 'blogname', 'Oxford Properties', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'zain.khan@msn.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '3', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '3', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:33:"duplicate-post/duplicate-post.php";i:3;s:21:"flamingo/flamingo.php";i:4;s:53:"related-posts-thumbnails/related-posts-thumbnails.php";i:5;s:41:"sassy-social-share/sassy-social-share.php";i:7;s:28:"wp-extended-search/wp-es.php";i:8;s:33:"wp-user-avatar/wp-user-avatar.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:76:"/Applications/MAMP/htdocs/oxford/wp-content/themes/simplegridtheme/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'simplegridtheme', 'yes'),
(41, 'stylesheet', 'simplegridtheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:59:"ultimate-social-media-icons/ultimate_social_media_icons.php";s:20:"sfsi_Unistall_plugin";s:27:"ninja-forms/ninja-forms.php";s:21:"ninja_forms_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:1:{i:0;s:13:"sfsi-widget-4";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'nonce_key', 'JBn.V Xre%JLj{aeCa-l=J/I5JLEYP&pMJ5K?;DK.*6LWQa(okoFe?o8?Am}0lsn', 'no'),
(107, 'nonce_salt', 'D*WrEP.VXR*&|)!$C2vol[+%]E%k0R9;~wg_n#W5=3JkGz]Gt%t5><|91m@Bhn:,', 'no'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1525649887;a:1:{s:29:"newsletter_extension_versions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1525668819;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1525668874;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1525669343;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1526600581;a:1:{s:13:"nf_optin_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"nf-monthly";s:4:"args";a:0:{}s:8:"interval";i:2678400;}}}s:7:"version";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1523768277;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1525625629;s:15:"version_checked";s:5:"4.9.5";s:12:"translations";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1525620841;s:7:"checked";a:4:{s:15:"simplegridtheme";s:3:"2.0";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.5";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(122, 'auth_key', 'z{f&r9iy[jGesn:Wup-f{Z1Js485rIVQ}`BQEy6C0a`+9/M@FQ3NbqKJN?koy nB', 'no'),
(123, 'auth_salt', '$NDZm%?vL}$%:0Z{3kq+TAdPXzSFl5B?$faVgasnV.zGpPB#CL7YjTEBwIXe?,iQ', 'no'),
(124, 'logged_in_key', 'gh{]_FL7(k^I_gI1a@Jnt{q;JK/|%)@d{Uceno#,:3ph{}YRdDnLKa(BKR704].z', 'no'),
(125, 'logged_in_salt', 'jZ}{PGaM.s*@xM6UM;F>e|&-wdfsW{p>{|4qM$I6n?n1hzkAkSYMZv{(or4D8qdC', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(156, 'recently_activated', 'a:5:{s:59:"ultimate-social-media-icons/ultimate_social_media_icons.php";i:1525049096;s:41:"wp-responsive-menu/wp-responsive-menu.php";i:1525039776;s:55:"storefront-hamburger-menu/storefront-hamburger-menu.php";i:1525039498;s:35:"responsive-menu/responsive-menu.php";i:1525039395;s:21:"acf-link/acf-link.php";i:1524613685;}', 'yes'),
(159, 'current_theme', 'Simple Grid Theme Responsive', 'yes'),
(160, 'theme_mods_simplegridtheme', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(161, 'theme_switched', '', 'yes'),
(169, 'duplicate_post_copytitle', '1', 'yes'),
(170, 'duplicate_post_copydate', '0', 'yes'),
(171, 'duplicate_post_copystatus', '0', 'yes'),
(172, 'duplicate_post_copyslug', '0', 'yes'),
(173, 'duplicate_post_copyexcerpt', '1', 'yes'),
(174, 'duplicate_post_copycontent', '1', 'yes'),
(175, 'duplicate_post_copythumbnail', '1', 'yes'),
(176, 'duplicate_post_copytemplate', '1', 'yes'),
(177, 'duplicate_post_copyformat', '1', 'yes'),
(178, 'duplicate_post_copyauthor', '0', 'yes'),
(179, 'duplicate_post_copypassword', '0', 'yes'),
(180, 'duplicate_post_copyattachments', '0', 'yes'),
(181, 'duplicate_post_copychildren', '0', 'yes'),
(182, 'duplicate_post_copycomments', '0', 'yes'),
(183, 'duplicate_post_copymenuorder', '1', 'yes'),
(184, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(185, 'duplicate_post_blacklist', '', 'yes'),
(186, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:"post";i:1;s:4:"page";}', 'yes'),
(187, 'duplicate_post_show_row', '1', 'yes'),
(188, 'duplicate_post_show_adminbar', '1', 'yes'),
(189, 'duplicate_post_show_submitbox', '1', 'yes'),
(190, 'duplicate_post_show_bulkactions', '1', 'yes'),
(191, 'duplicate_post_version', '3.2.2', 'yes'),
(192, 'duplicate_post_show_notice', '0', 'no'),
(222, 'alm_version', '3.4.1', 'yes'),
(229, 'alm_settings', 'a:10:{s:19:"_alm_container_type";s:1:"1";s:14:"_alm_classname";s:0:"";s:16:"_alm_disable_css";s:1:"0";s:14:"_alm_btn_color";s:7:"default";s:18:"_alm_btn_classname";s:0:"";s:15:"_alm_inline_css";s:1:"1";s:15:"_alm_scroll_top";s:1:"1";s:20:"_alm_disable_dynamic";s:1:"0";s:13:"_alm_hide_btn";s:1:"0";s:18:"_alm_error_notices";s:1:"0";}', 'yes'),
(246, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:7;}}', 'yes'),
(269, 'widget_relatedpoststhumbnailswidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(270, 'rpt_active_time', '1523783061', 'yes'),
(271, 'relpoststh_single_only', '1', 'yes'),
(272, 'relpoststh_post_types', 'a:1:{i:0;s:4:"post";}', 'yes'),
(273, 'relpoststh_onlywiththumbs', '0', 'yes'),
(274, 'relpoststh_output_style', 'div', 'yes'),
(275, 'relpoststh_cleanhtml', '0', 'yes'),
(276, 'relpoststh_auto', '0', 'yes'),
(277, 'relpoststh_top_text', '<h3>Related Stories</h3>', 'yes'),
(278, 'relpoststh_number', '3', 'yes'),
(279, 'relpoststh_relation', 'categories', 'yes'),
(280, 'relpoststh_default_image', 'http://localhost:8888/oxford/wp-content/plugins/related-posts-thumbnails/img/default.png', 'yes'),
(281, 'relpoststh_poststhname', 'thumbnail', 'yes'),
(282, 'relpoststh_background', '#ffffff', 'yes'),
(283, 'relpoststh_hoverbackground', '#eeeeee', 'yes'),
(284, 'relpoststh_bordercolor', '#dddddd', 'yes'),
(285, 'relpoststh_fontcolor', '#333333', 'yes'),
(286, 'relpoststh_fontsize', '12', 'yes'),
(287, 'relpoststh_fontfamily', 'Arial', 'yes'),
(288, 'relpoststh_textlength', '100', 'yes'),
(289, 'relpoststh_excerptlength', '0', 'yes'),
(290, 'relpoststh_thsource', 'post-thumbnails', 'yes'),
(291, 'relpoststh_customfield', '', 'yes'),
(292, 'relpoststh_theme_resize_url', '', 'yes'),
(293, 'relpoststh_customwidth', '100', 'yes'),
(294, 'relpoststh_customheight', '100', 'yes'),
(295, 'relpoststh_textblockheight', '75', 'yes'),
(296, 'relpoststh_categories', 'a:0:{}', 'yes'),
(297, 'relpoststh_categoriesall', '1', 'yes'),
(298, 'relpoststh_show_categoriesall', '1', 'yes'),
(299, 'relpoststh_show_categories', 'a:0:{}', 'yes'),
(300, 'relpoststh_devmode', '0', 'yes'),
(301, 'relpoststh_startdate', '', 'yes'),
(302, 'relpoststh_custom_taxonomies', 'a:0:{}', 'yes'),
(317, 'widget_mc4wp_form_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(318, 'mc4wp_version', '4.2.1', 'yes'),
(319, 'mc4wp_flash_messages', 'a:0:{}', 'no'),
(320, 'mc4wp', 'a:4:{s:7:"api_key";s:37:"b8d7e6751b2434175bfd842943613e5d-us13";s:20:"allow_usage_tracking";i:0;s:15:"debug_log_level";s:7:"warning";s:18:"first_activated_on";i:1523828521;}', 'yes'),
(321, 'mc4wp_default_form_id', '74', 'yes'),
(322, 'mc4wp_form_stylesheets', 'a:0:{}', 'yes'),
(337, 'show_new_notification', 'yes', 'yes'),
(338, 'show_premium_cumulative_count_notification', 'yes', 'yes'),
(339, 'sfsi_section1_options', 's:410:"a:11:{s:16:"sfsi_rss_display";s:2:"no";s:18:"sfsi_email_display";s:3:"yes";s:21:"sfsi_facebook_display";s:3:"yes";s:20:"sfsi_twitter_display";s:3:"yes";s:19:"sfsi_google_display";s:2:"no";s:18:"sfsi_share_display";s:2:"no";s:20:"sfsi_youtube_display";s:2:"no";s:22:"sfsi_pinterest_display";s:2:"no";s:21:"sfsi_linkedin_display";s:3:"yes";s:22:"sfsi_instagram_display";s:2:"no";s:17:"sfsi_custom_files";s:0:"";}";', 'yes'),
(340, 'sfsi_section2_options', 's:1712:"a:36:{s:12:"sfsi_rss_url";s:0:"";s:17:"sfsi_rss_blogName";s:0:"";s:18:"sfsi_rss_blogEmail";s:0:"";s:14:"sfsi_rss_icons";s:5:"email";s:14:"sfsi_email_url";s:297:"http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/L3ZLeE9XSFRmTTdWZlE1RkdnTzk2UkpzMmEzMUwvNENTd3A2Ti9UYitmdHpDZ3FCVFZHK25QS3RTSXdUNTdaSUUwc2x6NXc3b1JlU2kwNVJYZ0NoemhHZnVkdllPb2g4dnlWZTFBOTZDc3BqcEJpRG13dmtJWTQ3bWZ3cFBhSXF8SXdLWHRaVnNtQzlpcmFRSUVmM1pBMndGUGFpV0NyTzgwdHE0U25TOGU0cz0=/OA==/";s:24:"sfsi_facebookPage_option";s:2:"no";s:21:"sfsi_facebookPage_url";s:0:"";s:24:"sfsi_facebookLike_option";s:2:"no";s:25:"sfsi_facebookShare_option";s:3:"yes";s:21:"sfsi_twitter_followme";s:2:"no";s:27:"sfsi_twitter_followUserName";s:0:"";s:22:"sfsi_twitter_aboutPage";s:3:"yes";s:17:"sfsi_twitter_page";s:2:"no";s:20:"sfsi_twitter_pageURL";s:0:"";s:26:"sfsi_twitter_aboutPageText";s:82:"Hey, check out this cool site I found: www.yourname.com #Topic via@my_twitter_name";s:16:"sfsi_google_page";s:0:"";s:19:"sfsi_google_pageURL";s:0:"";s:22:"sfsi_googleLike_option";s:0:"";s:23:"sfsi_googleShare_option";s:0:"";s:20:"sfsi_youtube_pageUrl";s:0:"";s:17:"sfsi_youtube_page";s:0:"";s:19:"sfsi_youtube_follow";s:0:"";s:15:"sfsi_ytube_user";s:0:"";s:19:"sfsi_pinterest_page";s:0:"";s:22:"sfsi_pinterest_pageUrl";s:0:"";s:23:"sfsi_pinterest_pingBlog";s:0:"";s:22:"sfsi_instagram_pageUrl";s:0:"";s:18:"sfsi_linkedin_page";s:2:"no";s:21:"sfsi_linkedin_pageURL";s:0:"";s:20:"sfsi_linkedin_follow";s:2:"no";s:27:"sfsi_linkedin_followCompany";i:0;s:23:"sfsi_linkedin_SharePage";s:3:"yes";s:30:"sfsi_linkedin_recommendBusines";s:2:"no";s:30:"sfsi_linkedin_recommendCompany";s:0:"";s:32:"sfsi_linkedin_recommendProductId";i:0;s:21:"sfsi_CustomIcon_links";s:0:"";}";', 'yes'),
(341, 'sfsi_section3_options', 's:589:"a:14:{s:18:"sfsi_actvite_theme";s:14:"custom_support";s:14:"sfsi_mouseOver";s:2:"no";s:21:"sfsi_mouseOver_effect";s:7:"fade_in";s:18:"sfsi_shuffle_icons";s:2:"no";s:22:"sfsi_shuffle_Firstload";s:2:"no";s:21:"sfsi_shuffle_interval";s:2:"no";s:25:"sfsi_shuffle_intervalTime";i:0;s:26:"sfsi_specialIcon_animation";s:0:"";s:26:"sfsi_specialIcon_MouseOver";s:2:"no";s:26:"sfsi_specialIcon_Firstload";s:2:"no";s:32:"sfsi_specialIcon_Firstload_Icons";s:3:"all";s:25:"sfsi_specialIcon_interval";s:2:"no";s:29:"sfsi_specialIcon_intervalTime";s:0:"";s:30:"sfsi_specialIcon_intervalIcons";s:3:"all";}";', 'yes'),
(342, 'sfsi_section4_options', 's:1709:"a:44:{s:19:"sfsi_display_counts";s:2:"no";s:24:"sfsi_email_countsDisplay";s:2:"no";s:21:"sfsi_email_countsFrom";s:6:"source";s:23:"sfsi_email_manualCounts";i:20;s:22:"sfsi_rss_countsDisplay";s:0:"";s:21:"sfsi_rss_manualCounts";i:20;s:27:"sfsi_facebook_countsDisplay";s:2:"no";s:24:"sfsi_facebook_countsFrom";s:6:"manual";s:26:"sfsi_facebook_mypageCounts";s:0:"";s:26:"sfsi_facebook_manualCounts";i:20;s:26:"sfsi_twitter_countsDisplay";s:2:"no";s:23:"sfsi_twitter_countsFrom";s:6:"manual";s:25:"sfsi_twitter_manualCounts";i:20;s:15:"tw_consumer_key";s:0:"";s:18:"tw_consumer_secret";s:0:"";s:21:"tw_oauth_access_token";s:0:"";s:28:"tw_oauth_access_token_secret";s:0:"";s:25:"sfsi_google_countsDisplay";s:0:"";s:22:"sfsi_google_countsFrom";s:0:"";s:24:"sfsi_google_manualCounts";i:20;s:19:"sfsi_google_api_key";s:0:"";s:27:"sfsi_linkedIn_countsDisplay";s:2:"no";s:24:"sfsi_linkedIn_countsFrom";s:6:"manual";s:26:"sfsi_linkedIn_manualCounts";i:20;s:26:"sfsi_youtube_countsDisplay";s:0:"";s:23:"sfsi_youtube_countsFrom";s:0:"";s:25:"sfsi_youtube_manualCounts";i:20;s:17:"sfsi_youtube_user";s:0:"";s:22:"sfsi_youtube_channelId";s:0:"";s:28:"sfsi_pinterest_countsDisplay";s:0:"";s:25:"sfsi_pinterest_countsFrom";s:0:"";s:27:"sfsi_pinterest_manualCounts";i:20;s:25:"sfsi_instagram_countsFrom";s:0:"";s:28:"sfsi_instagram_countsDisplay";s:0:"";s:27:"sfsi_instagram_manualCounts";i:20;s:19:"sfsi_instagram_User";s:0:"";s:23:"sfsi_instagram_clientid";s:0:"";s:21:"sfsi_instagram_appurl";s:0:"";s:20:"sfsi_instagram_token";s:0:"";s:25:"sfsi_shares_countsDisplay";s:0:"";s:22:"sfsi_shares_countsFrom";s:0:"";s:24:"sfsi_shares_manualCounts";i:20;s:24:"sfsi_youtubeusernameorid";s:4:"name";s:17:"sfsi_ytube_chnlid";s:0:"";}";', 'yes'),
(343, 'sfsi_section5_options', 's:1394:"a:36:{s:15:"sfsi_icons_size";i:30;s:18:"sfsi_icons_spacing";i:12;s:20:"sfsi_icons_Alignment";s:4:"left";s:17:"sfsi_icons_perRow";i:5;s:24:"sfsi_icons_ClickPageOpen";s:3:"yes";s:16:"sfsi_icons_float";s:2:"no";s:23:"sfsi_disable_floaticons";s:2:"no";s:24:"sfsi_icons_floatPosition";s:12:"center-right";s:26:"sfsi_icons_floatMargin_top";i:0;s:29:"sfsi_icons_floatMargin_bottom";i:0;s:27:"sfsi_icons_floatMargin_left";i:0;s:28:"sfsi_icons_floatMargin_right";i:0;s:16:"sfsi_icons_stick";s:2:"no";s:22:"sfsi_rss_MouseOverText";s:0:"";s:24:"sfsi_email_MouseOverText";s:15:"Follow by Email";s:26:"sfsi_twitter_MouseOverText";s:7:"Twitter";s:27:"sfsi_facebook_MouseOverText";s:8:"Facebook";s:25:"sfsi_google_MouseOverText";s:0:"";s:27:"sfsi_linkedIn_MouseOverText";s:8:"LinkedIn";s:28:"sfsi_pinterest_MouseOverText";s:0:"";s:26:"sfsi_youtube_MouseOverText";s:0:"";s:24:"sfsi_share_MouseOverText";s:0:"";s:28:"sfsi_instagram_MouseOverText";s:0:"";s:22:"sfsi_CustomIcons_order";s:0:"";s:18:"sfsi_rssIcon_order";i:1;s:20:"sfsi_emailIcon_order";i:4;s:23:"sfsi_facebookIcon_order";i:5;s:21:"sfsi_googleIcon_order";i:6;s:22:"sfsi_twitterIcon_order";i:3;s:20:"sfsi_shareIcon_order";i:7;s:22:"sfsi_youtubeIcon_order";i:8;s:24:"sfsi_pinterestIcon_order";i:9;s:24:"sfsi_instagramIcon_order";i:10;s:23:"sfsi_linkedinIcon_order";i:2;s:26:"sfsi_custom_MouseOverTexts";s:0:"";s:23:"sfsi_custom_social_hide";s:2:"no";}";', 'yes'),
(344, 'sfsi_section6_options', 's:432:"a:12:{s:17:"sfsi_show_Onposts";s:2:"no";s:22:"sfsi_icons_postPositon";s:0:"";s:20:"sfsi_icons_alignment";s:4:"left";s:20:"sfsi_textBefor_icons";s:26:"Please follow and like us:";s:24:"sfsi_icons_DisplayCounts";s:2:"no";s:12:"sfsi_rectsub";s:3:"yes";s:11:"sfsi_rectfb";s:3:"yes";s:11:"sfsi_rectgp";s:2:"no";s:12:"sfsi_rectshr";s:2:"no";s:13:"sfsi_recttwtr";s:3:"yes";s:14:"sfsi_rectpinit";s:2:"no";s:16:"sfsi_rectfbshare";s:3:"yes";}";', 'yes'),
(345, 'sfsi_section7_options', 's:570:"a:13:{s:15:"sfsi_popup_text";s:42:"Enjoy this blog? Please spread the word :)";s:27:"sfsi_popup_background_color";s:7:"#eff7f7";s:23:"sfsi_popup_border_color";s:7:"#f3faf2";s:27:"sfsi_popup_border_thickness";i:1;s:24:"sfsi_popup_border_shadow";s:3:"yes";s:15:"sfsi_popup_font";s:26:"Helvetica,Arial,sans-serif";s:19:"sfsi_popup_fontSize";i:30;s:20:"sfsi_popup_fontStyle";s:0:"";s:20:"sfsi_popup_fontColor";s:7:"#000000";s:17:"sfsi_Show_popupOn";s:4:"none";s:25:"sfsi_Show_popupOn_PageIDs";s:0:"";s:14:"sfsi_Shown_pop";s:8:"ETscroll";s:24:"sfsi_Shown_popupOnceTime";i:0;}";', 'yes'),
(346, 'sfsi_feed_id', 'L3ZLeE9XSFRmTTdWZlE1RkdnTzk2UkpzMmEzMUwvNENTd3A2Ti9UYitmdHpDZ3FCVFZHK25QS3RTSXdUNTdaSUUwc2x6NXc3b1JlU2kwNVJYZ0NoemhHZnVkdllPb2g4dnlWZTFBOTZDc3BqcEJpRG13dmtJWTQ3bWZ3cFBhSXF8SXdLWHRaVnNtQzlpcmFRSUVmM1pBMndGUGFpV0NyTzgwdHE0U25TOGU0cz0=', 'yes'),
(347, 'sfsi_redirect_url', 'http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/L3ZLeE9XSFRmTTdWZlE1RkdnTzk2UkpzMmEzMUwvNENTd3A2Ti9UYitmdHpDZ3FCVFZHK25QS3RTSXdUNTdaSUUwc2x6NXc3b1JlU2kwNVJYZ0NoemhHZnVkdllPb2g4dnlWZTFBOTZDc3BqcEJpRG13dmtJWTQ3bWZ3cFBhSXF8SXdLWHRaVnNtQzlpcmFRSUVmM1pBMndGUGFpV0NyTzgwdHE0U25TOGU0cz0=/OA==/', 'yes'),
(348, 'sfsi_installDate', '2018-04-16 03:57:33', 'yes'),
(349, 'sfsi_RatingDiv', 'no', 'yes'),
(350, 'sfsi_footer_sec', 'no', 'yes'),
(351, 'sfsi_activate', '0', 'yes'),
(352, 'sfsi_instagram_sf_count', 's:90:"a:3:{s:4:"date";i:1524873600;s:13:"sfsi_sf_count";i:0;s:20:"sfsi_instagram_count";s:0:"";}";', 'yes'),
(353, 'widget_sfsi-widget', 'a:2:{i:4;a:2:{s:5:"showf";i:1;s:5:"title";s:5:"SHARE";}s:12:"_multiwidget";i:1;}', 'yes'),
(354, 'widget_subscriber_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(355, 'sfsi_pluginVersion', '1.92', 'yes'),
(356, 'sfsi_serverphpVersionnotification', 'yes', 'yes'),
(357, 'show_premium_notification', 'no', 'yes'),
(358, 'show_notification', 'yes', 'yes'),
(359, 'show_mobile_notification', 'yes', 'yes'),
(360, 'sfsi_languageNotice', 'yes', 'yes'),
(361, 'sfsi_section8_options', 's:1186:"a:26:{s:20:"sfsi_form_adjustment";s:3:"yes";s:16:"sfsi_form_height";i:180;s:15:"sfsi_form_width";i:230;s:16:"sfsi_form_border";s:3:"yes";s:26:"sfsi_form_border_thickness";i:1;s:22:"sfsi_form_border_color";s:7:"#b5b5b5";s:20:"sfsi_form_background";s:7:"#ffffff";s:22:"sfsi_form_heading_text";s:22:"Get new posts by email";s:22:"sfsi_form_heading_font";s:26:"Helvetica,Arial,sans-serif";s:27:"sfsi_form_heading_fontstyle";s:4:"bold";s:27:"sfsi_form_heading_fontcolor";s:7:"#000000";s:26:"sfsi_form_heading_fontsize";i:16;s:27:"sfsi_form_heading_fontalign";s:6:"center";s:20:"sfsi_form_field_text";s:16:"Enter your email";s:20:"sfsi_form_field_font";s:26:"Helvetica,Arial,sans-serif";s:25:"sfsi_form_field_fontstyle";s:6:"normal";s:25:"sfsi_form_field_fontcolor";s:0:"";s:24:"sfsi_form_field_fontsize";i:14;s:25:"sfsi_form_field_fontalign";s:6:"center";s:21:"sfsi_form_button_text";s:9:"Subscribe";s:21:"sfsi_form_button_font";s:26:"Helvetica,Arial,sans-serif";s:26:"sfsi_form_button_fontstyle";s:4:"bold";s:26:"sfsi_form_button_fontcolor";s:7:"#000000";s:25:"sfsi_form_button_fontsize";i:16;s:26:"sfsi_form_button_fontalign";s:6:"center";s:27:"sfsi_form_button_background";s:7:"#dedede";}";', 'yes'),
(362, 'sfsi_verificatiom_code', 'g9TQdMcbnRjFfD09pDku', 'yes'),
(363, 'adding_tags', 'yes', 'yes'),
(364, 'email_skin', 'http://localhost:8888/oxford/wp-content/uploads/2018/04//custom_iconemail_skin.png', 'yes'),
(365, 'facebook_skin', 'http://localhost:8888/oxford/wp-content/uploads/2018/04//custom_iconfacebook_skin.png', 'yes'),
(366, 'twitter_skin', 'http://localhost:8888/oxford/wp-content/uploads/2018/04//custom_icontwitter_skin.png', 'yes'),
(367, 'linkedin_skin', 'http://localhost:8888/oxford/wp-content/uploads/2018/04//custom_iconlinkedin_skin.png', 'yes'),
(390, 'sfba_db_version', '1.0', 'yes'),
(393, 'email-subscribers', '2.9', 'yes'),
(394, 'ig_es_fromname', 'Oxford Properties', 'yes'),
(395, 'ig_es_fromemail', 'zain.khan@msn.com', 'yes'),
(396, 'ig_es_emailtype', 'WP HTML MAIL', 'yes'),
(397, 'ig_es_notifyadmin', 'YES', 'yes'),
(398, 'ig_es_adminemail', 'zain.khan@msn.com', 'yes'),
(399, 'ig_es_admin_new_sub_subject', 'Oxford Properties - New email subscription', 'yes'),
(400, 'ig_es_admin_new_sub_content', 'Hi Admin,\r\n\r\nCongratulations! You have a new subscriber.\r\n\r\nName : {{NAME}}\r\nEmail: {{EMAIL}}\r\nGroup: {{GROUP}}\r\n\r\nHave a nice day :)\r\nOxford Properties', 'yes'),
(401, 'ig_es_welcomeemail', 'YES', 'yes'),
(402, 'ig_es_welcomesubject', 'Oxford Properties - Welcome!', 'yes'),
(403, 'ig_es_welcomecontent', 'Hi {{NAME}},\r\n\r\nThank you for subscribing to Oxford Properties.\r\n\r\nWe are glad to have you onboard.\r\n\r\nBest,\r\nOxford Properties\r\n\r\nGot subscribed to Oxford Properties by mistake? Click <a href=''{{LINK}}''>here</a> to unsubscribe.', 'yes'),
(404, 'ig_es_optintype', 'Double Opt In', 'yes'),
(405, 'ig_es_confirmsubject', 'Oxford Properties - Please confirm your subscription', 'yes'),
(406, 'ig_es_confirmcontent', 'Hi {{NAME}},\r\n\r\nWe have received a subscription request from this email address. Please confirm it by <a href=''{{LINK}}''>clicking here</a>.\r\n\r\nIf you still cannot subscribe, please copy this link and paste it in your browser :\r\n{{LINK}} \r\n\r\nThank You\r\nOxford Properties', 'yes'),
(407, 'ig_es_optinlink', 'http://localhost:8888/oxford/?es=optin&db={{DBID}}&email={{EMAIL}}&guid={{GUID}}', 'yes'),
(408, 'ig_es_unsublink', 'http://localhost:8888/oxford/?es=unsubscribe&db={{DBID}}&email={{EMAIL}}&guid={{GUID}}', 'yes'),
(409, 'ig_es_unsubcontent', 'No longer interested in emails from Oxford Properties? Please <a href=''{{LINK}}''>click here</a> to unsubscribe.', 'yes'),
(410, 'ig_es_unsubtext', 'Thank You, You have been successfully unsubscribed. You will no longer hear from us.', 'yes'),
(411, 'ig_es_successmsg', 'You have been successfully subscribed.', 'yes'),
(412, 'ig_es_suberror', 'Oops.. Your request couldn''t be completed. This email address seems to be already subscribed / blocked.', 'yes'),
(413, 'ig_es_unsuberror', 'Oops.. There was some technical error. Please try again later or contact us.', 'yes'),
(414, 'ig_es_sample_data_imported', 'yes', 'yes'),
(417, 'widget_email-subscribers', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(418, 'ig_es_sync_wp_users', 's:4:"b:0;";', 'yes'),
(419, 'current_sa_email_subscribers_db_version', '3.4.0', 'yes'),
(420, 'ig_es_post_image_size', 'full', 'yes'),
(421, 'ig_es_sentreport', 'Hi Admin,\n\nEmail has been sent successfully to {{COUNT}} email(s). Please find the details below:\n\nUnique ID: {{UNIQUE}}\nStart Time: {{STARTTIME}}\nEnd Time: {{ENDTIME}}\nFor more information, login to your dashboard and go to Reports menu in Email Subscribers.\n\nThank You.', 'yes'),
(422, 'ig_es_sentreport_subject', 'Your email has been sent', 'yes'),
(423, 'ig_es_cronurl', 'http://localhost:8888/oxford/?es=cron&guid=ixkpnq-ehuwzm-bzwokt-xtsfyl-wuekjz', 'yes'),
(424, 'ig_es_cron_mailcount', '50', 'yes'),
(425, 'ig_es_cron_adminmail', 'Hi Admin,\r\n\r\nCron URL has been triggered successfully on {{DATE}} for the email ''{{SUBJECT}}''. And it sent email to {{COUNT}} recipient(s).\r\n\r\nBest,\r\nOxford Properties', 'yes'),
(428, 'newsletter_logger_secret', '6684d478', 'yes'),
(429, 'newsletter_dismissed', 'a:1:{s:6:"wpmail";i:1;}', 'yes'),
(431, 'newsletter_main_first_install_time', '1523921857', 'no'),
(432, 'newsletter_main', 'a:9:{s:11:"return_path";s:0:"";s:8:"reply_to";s:0:"";s:12:"sender_email";s:20:"newsletter@localhost";s:11:"sender_name";s:17:"Oxford Properties";s:6:"editor";i:0;s:13:"scheduler_max";i:100;s:9:"phpmailer";i:0;s:5:"debug";i:0;s:7:"api_key";s:10:"5f7cfdd04f";}', 'yes'),
(433, 'newsletter_main_smtp', 'a:7:{s:7:"enabled";i:0;s:4:"host";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"port";i:25;s:6:"secure";s:0:"";s:12:"ssl_insecure";i:0;}', 'yes'),
(434, 'newsletter_main_version', '1.3.2', 'yes'),
(435, 'newsletter_subscription_first_install_time', '1523921857', 'no'),
(436, 'newsletter', 'a:27:{s:14:"noconfirmation";i:0;s:9:"antiflood";i:10;s:12:"ip_blacklist";a:0:{}s:17:"address_blacklist";a:0:{}s:12:"domain_check";i:0;s:7:"akismet";i:0;s:7:"captcha";i:0;s:12:"notify_email";s:17:"zain.khan@msn.com";s:12:"profile_text";s:188:"{profile_form}\n    <p>If you change your email address, a confirmation email will be sent to activate it.</p>\n    <p><a href="{unsubscription_confirm_url}">Cancel your subscription</a></p>";s:21:"profile_email_changed";s:123:"Your email has been changed, an activation email has been sent. Please follow the instructions to activate the new address.";s:13:"profile_error";s:147:"Your email is not valid or already in use by another subscriber or another generic error has been found. Check your data or contact the site owner.";s:10:"error_text";s:173:"<p>This subscription can''t be completed, sorry. The email address is blocked or already subscribed. You should contact the owner to unlock that email address. Thank you.</p>";s:17:"subscription_text";s:19:"{subscription_form}";s:17:"confirmation_text";s:263:"<p>You have successfully subscribed to the newsletter. You''ll\nreceive a confirmation email in a few minutes. Please follow the\nlink to confirm your subscription. If the email takes\nmore than 15 minutes to appear in your mailbox, please check\nyour spam folder.</p>";s:20:"confirmation_subject";s:53:"Please confirm subscription - {blog_title} newsletter";s:21:"confirmation_tracking";s:0:"";s:20:"confirmation_message";s:424:"<p>Hi {name},</p>\n<p>A newsletter subscription request for this email address was\nreceived. Please confirm it by <a href="{subscription_confirm_url}"><strong>clicking here</strong></a>. If you cannot\nclick the link, please use the following link:</p>\n\n<p>{subscription_confirm_url}</p>\n\n<p>If you did not make this subscription request, just ignore this\nmessage.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>";s:14:"confirmed_text";s:62:"<p>Your subscription has been confirmed! Thank you {name}!</p>";s:17:"confirmed_subject";s:22:"Welcome aboard, {name}";s:17:"confirmed_message";s:277:"<p>This message confirms your subscription to the {blog_title} newsletter.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>\n<p>To unsubscribe, <a href=''{unsubscription_url}''>click here</a>.  To change subscriber options,\n<a href=''{profile_url}''>click here</a>.</p>";s:18:"confirmed_tracking";s:0:"";s:19:"unsubscription_text";s:111:"<p>Please confirm that you want to unsubscribe by <a href=''{unsubscription_confirm_url}''>clicking here</a>.</p>";s:25:"unsubscription_error_text";s:118:"<p>The subscriber was not found, it probably has already been removed. No further actions are required. Thank you.</p>";s:17:"unsubscribed_text";s:53:"<p>Your subscription has been deleted. Thank you.</p>";s:20:"unsubscribed_subject";s:8:"Goodbye!";s:20:"unsubscribed_message";s:195:"<p>This message confirms that you have unsubscribed from the {blog_title} newsletter.</p>\n<p>You''re welcome to sign up again anytime.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>";s:4:"page";i:82;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(437, 'newsletter_profile', 'a:203:{s:5:"email";s:5:"Email";s:11:"email_error";s:24:"The email is not correct";s:4:"name";s:4:"Name";s:10:"name_error";s:23:"The name is not correct";s:11:"name_status";i:0;s:10:"name_rules";i:0;s:7:"surname";s:9:"Last name";s:13:"surname_error";s:28:"The last name is not correct";s:14:"surname_status";i:0;s:10:"sex_status";i:0;s:3:"sex";s:3:"I''m";s:7:"privacy";s:51:"Subscribing I accept the privacy rules of this site";s:13:"privacy_error";s:37:"You must accept the privacy statement";s:14:"privacy_status";i:0;s:11:"privacy_url";s:0:"";s:9:"subscribe";s:9:"Subscribe";s:4:"save";s:4:"Save";s:12:"title_female";s:4:"Mrs.";s:10:"title_male";s:3:"Mr.";s:10:"title_none";s:4:"Dear";s:8:"sex_male";s:3:"Man";s:10:"sex_female";s:5:"Woman";s:8:"sex_none";s:4:"None";s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;s:16:"profile_1_status";i:0;s:9:"profile_1";s:0:"";s:14:"profile_1_type";s:4:"text";s:21:"profile_1_placeholder";s:0:"";s:15:"profile_1_rules";i:0;s:17:"profile_1_options";s:0:"";s:16:"profile_2_status";i:0;s:9:"profile_2";s:0:"";s:14:"profile_2_type";s:4:"text";s:21:"profile_2_placeholder";s:0:"";s:15:"profile_2_rules";i:0;s:17:"profile_2_options";s:0:"";s:16:"profile_3_status";i:0;s:9:"profile_3";s:0:"";s:14:"profile_3_type";s:4:"text";s:21:"profile_3_placeholder";s:0:"";s:15:"profile_3_rules";i:0;s:17:"profile_3_options";s:0:"";s:16:"profile_4_status";i:0;s:9:"profile_4";s:0:"";s:14:"profile_4_type";s:4:"text";s:21:"profile_4_placeholder";s:0:"";s:15:"profile_4_rules";i:0;s:17:"profile_4_options";s:0:"";s:16:"profile_5_status";i:0;s:9:"profile_5";s:0:"";s:14:"profile_5_type";s:4:"text";s:21:"profile_5_placeholder";s:0:"";s:15:"profile_5_rules";i:0;s:17:"profile_5_options";s:0:"";s:16:"profile_6_status";i:0;s:9:"profile_6";s:0:"";s:14:"profile_6_type";s:4:"text";s:21:"profile_6_placeholder";s:0:"";s:15:"profile_6_rules";i:0;s:17:"profile_6_options";s:0:"";s:16:"profile_7_status";i:0;s:9:"profile_7";s:0:"";s:14:"profile_7_type";s:4:"text";s:21:"profile_7_placeholder";s:0:"";s:15:"profile_7_rules";i:0;s:17:"profile_7_options";s:0:"";s:16:"profile_8_status";i:0;s:9:"profile_8";s:0:"";s:14:"profile_8_type";s:4:"text";s:21:"profile_8_placeholder";s:0:"";s:15:"profile_8_rules";i:0;s:17:"profile_8_options";s:0:"";s:16:"profile_9_status";i:0;s:9:"profile_9";s:0:"";s:14:"profile_9_type";s:4:"text";s:21:"profile_9_placeholder";s:0:"";s:15:"profile_9_rules";i:0;s:17:"profile_9_options";s:0:"";s:17:"profile_10_status";i:0;s:10:"profile_10";s:0:"";s:15:"profile_10_type";s:4:"text";s:22:"profile_10_placeholder";s:0:"";s:16:"profile_10_rules";i:0;s:18:"profile_10_options";s:0:"";s:17:"profile_11_status";i:0;s:10:"profile_11";s:0:"";s:15:"profile_11_type";s:4:"text";s:22:"profile_11_placeholder";s:0:"";s:16:"profile_11_rules";i:0;s:18:"profile_11_options";s:0:"";s:17:"profile_12_status";i:0;s:10:"profile_12";s:0:"";s:15:"profile_12_type";s:4:"text";s:22:"profile_12_placeholder";s:0:"";s:16:"profile_12_rules";i:0;s:18:"profile_12_options";s:0:"";s:17:"profile_13_status";i:0;s:10:"profile_13";s:0:"";s:15:"profile_13_type";s:4:"text";s:22:"profile_13_placeholder";s:0:"";s:16:"profile_13_rules";i:0;s:18:"profile_13_options";s:0:"";s:17:"profile_14_status";i:0;s:10:"profile_14";s:0:"";s:15:"profile_14_type";s:4:"text";s:22:"profile_14_placeholder";s:0:"";s:16:"profile_14_rules";i:0;s:18:"profile_14_options";s:0:"";s:17:"profile_15_status";i:0;s:10:"profile_15";s:0:"";s:15:"profile_15_type";s:4:"text";s:22:"profile_15_placeholder";s:0:"";s:16:"profile_15_rules";i:0;s:18:"profile_15_options";s:0:"";s:17:"profile_16_status";i:0;s:10:"profile_16";s:0:"";s:15:"profile_16_type";s:4:"text";s:22:"profile_16_placeholder";s:0:"";s:16:"profile_16_rules";i:0;s:18:"profile_16_options";s:0:"";s:17:"profile_17_status";i:0;s:10:"profile_17";s:0:"";s:15:"profile_17_type";s:4:"text";s:22:"profile_17_placeholder";s:0:"";s:16:"profile_17_rules";i:0;s:18:"profile_17_options";s:0:"";s:17:"profile_18_status";i:0;s:10:"profile_18";s:0:"";s:15:"profile_18_type";s:4:"text";s:22:"profile_18_placeholder";s:0:"";s:16:"profile_18_rules";i:0;s:18:"profile_18_options";s:0:"";s:17:"profile_19_status";i:0;s:10:"profile_19";s:0:"";s:15:"profile_19_type";s:4:"text";s:22:"profile_19_placeholder";s:0:"";s:16:"profile_19_rules";i:0;s:18:"profile_19_options";s:0:"";s:17:"profile_20_status";i:0;s:10:"profile_20";s:0:"";s:15:"profile_20_type";s:4:"text";s:22:"profile_20_placeholder";s:0:"";s:16:"profile_20_rules";i:0;s:18:"profile_20_options";s:0:"";}', 'yes'),
(438, 'newsletter_subscription_lists', 'a:60:{s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;}', 'yes'),
(439, 'newsletter_subscription_template', 'a:2:{s:7:"enabled";i:0;s:8:"template";s:1846:"<!DOCTYPE html>\n<html>\n    <head>\n        <!-- General styles, not used by all email clients -->\n        <style type="text/css" media="all">\n            a {\n                text-decoration: none;\n                color: #0088cc;\n            }\n        </style>\n    </head>\n    \n    <!-- KEEP THE TAMPLE SIMPLE: THOSE ARE SERVICE MESSAGES. -->\n    <body style="margin: 0;">\n        <!-- Top title with dark background #333, font color #fff, font size 32px -->\n        <table style="background-color: #333; width: 100%; color: #fff; font-size: 32px">\n            <tr>\n                <td style="padding: 25px; text-align: center">\n                    {blog_title}\n                </td>\n            </tr>\n        </table>\n\n        <!-- Main table 100% wide with background color #eee -->    \n        <table style="background-color: #eee; width: 100%;">\n            <tr>\n                <td align="center"  style="padding: 15px;">\n\n                    <!-- Content table with backgdound color #fff, width 500px -->\n                    <table style="background-color: #fff; max-width: 600px; width: 100%; border: 1px solid #ddd;">\n                        <tr>\n                            <td style="padding: 15px; font-size: 16px; font-family: sans-serif">\n                                <!-- The {message} tag is replaced with one of confirmation, welcome or goodbye messages -->\n                                <!-- Messages content can be configured on Newsletter List Building panels --> \n\n                                {message}\n                                \n                                <!-- Signature if not already added to single messages (surround with <p>) -->\n\n                            </td>\n                        </tr>\n                    </table>\n\n                </td>\n            </tr>\n        </table>\n\n    </body>\n</html>";}', 'no'),
(440, 'newsletter_subscription_version', '2.0.4', 'yes'),
(441, 'newsletter_emails_first_install_time', '1523921857', 'no'),
(442, 'newsletter_emails', 'a:1:{s:5:"theme";s:7:"default";}', 'yes'),
(443, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(444, 'newsletter_emails_version', '1.1.5', 'yes'),
(445, 'newsletter_users_first_install_time', '1523921857', 'no'),
(446, 'newsletter_users', 'a:0:{}', 'yes'),
(447, 'newsletter_users_version', '1.1.4', 'yes'),
(448, 'newsletter_statistics_first_install_time', '1523921857', 'no'),
(449, 'newsletter_statistics', 'a:1:{s:3:"key";s:32:"ed6d7380dcf2c90ea9c61351b1d147db";}', 'yes'),
(450, 'newsletter_statistics_version', '1.1.8', 'yes'),
(451, 'newsletter_install_time', '1523921857', 'no'),
(452, 'widget_newsletterwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(453, 'widget_newsletterwidgetminimal', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(455, 'newsletter_diagnostic_cron_calls', 'a:1:{i:0;i:1523921906;}', 'no'),
(462, 'ninja_forms_version', '3.2.21', 'yes'),
(463, 'ninja_forms_settings', 'a:7:{s:11:"date_format";s:5:"m/d/Y";s:8:"currency";s:3:"USD";s:18:"recaptcha_site_key";s:0:"";s:20:"recaptcha_secret_key";s:0:"";s:14:"recaptcha_lang";s:0:"";s:19:"delete_on_uninstall";i:0;s:21:"disable_admin_notices";i:0;}', 'yes'),
(464, 'wp_nf_update_fields_batch_a3c80a3dcaea930ea172989a0593b16d', 'a:4:{i:0;a:2:{s:2:"id";i:1;s:8:"settings";a:70:{s:5:"label";s:4:"Name";s:3:"key";s:4:"name";s:9:"parent_id";i:1;s:4:"type";s:7:"textbox";s:10:"created_at";s:19:"2018-04-16 23:40:51";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";s:1:"1";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:4:"mask";s:0:"";s:11:"custom_mask";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3277";}}i:1;a:2:{s:2:"id";i:2;s:8:"settings";a:62:{s:5:"label";s:5:"Email";s:3:"key";s:5:"email";s:9:"parent_id";i:1;s:4:"type";s:5:"email";s:10:"created_at";s:19:"2018-04-16 23:40:51";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";s:1:"2";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3281";}}i:2;a:2:{s:2:"id";i:3;s:8:"settings";a:71:{s:5:"label";s:7:"Message";s:3:"key";s:7:"message";s:9:"parent_id";i:1;s:4:"type";s:8:"textarea";s:10:"created_at";s:19:"2018-04-16 23:40:51";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";s:1:"3";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:12:"textarea_rte";s:0:"";s:18:"disable_rte_mobile";s:0:"";s:14:"textarea_media";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3284";}}i:3;a:2:{s:2:"id";i:4;s:8:"settings";a:69:{s:5:"label";s:6:"Submit";s:3:"key";s:6:"submit";s:9:"parent_id";i:1;s:4:"type";s:6:"submit";s:10:"created_at";s:19:"2018-04-16 23:40:51";s:16:"processing_label";s:10:"Processing";s:5:"order";s:1:"5";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:44:"submit_element_hover_styles_background-color";s:0:"";s:34:"submit_element_hover_styles_border";s:0:"";s:40:"submit_element_hover_styles_border-style";s:0:"";s:40:"submit_element_hover_styles_border-color";s:0:"";s:33:"submit_element_hover_styles_color";s:0:"";s:34:"submit_element_hover_styles_height";s:0:"";s:33:"submit_element_hover_styles_width";s:0:"";s:37:"submit_element_hover_styles_font-size";s:0:"";s:34:"submit_element_hover_styles_margin";s:0:"";s:35:"submit_element_hover_styles_padding";s:0:"";s:35:"submit_element_hover_styles_display";s:0:"";s:33:"submit_element_hover_styles_float";s:0:"";s:45:"submit_element_hover_styles_show_advanced_css";s:1:"0";s:36:"submit_element_hover_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3287";}}}', 'no'),
(466, 'nf_form_1', 'a:4:{s:2:"id";i:1;s:6:"fields";a:4:{i:0;a:2:{s:2:"id";i:1;s:8:"settings";a:70:{s:5:"label";s:4:"Name";s:3:"key";s:4:"name";s:9:"parent_id";i:1;s:4:"type";s:7:"textbox";s:10:"created_at";s:19:"2018-04-16 23:40:51";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";s:1:"1";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:4:"mask";s:0:"";s:11:"custom_mask";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3277";}}i:1;a:2:{s:2:"id";i:2;s:8:"settings";a:62:{s:5:"label";s:5:"Email";s:3:"key";s:5:"email";s:9:"parent_id";i:1;s:4:"type";s:5:"email";s:10:"created_at";s:19:"2018-04-16 23:40:51";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";s:1:"2";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3281";}}i:2;a:2:{s:2:"id";i:3;s:8:"settings";a:71:{s:5:"label";s:7:"Message";s:3:"key";s:7:"message";s:9:"parent_id";i:1;s:4:"type";s:8:"textarea";s:10:"created_at";s:19:"2018-04-16 23:40:51";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";s:1:"3";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:12:"textarea_rte";s:0:"";s:18:"disable_rte_mobile";s:0:"";s:14:"textarea_media";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3284";}}i:3;a:2:{s:2:"id";i:4;s:8:"settings";a:69:{s:5:"label";s:6:"Submit";s:3:"key";s:6:"submit";s:9:"parent_id";i:1;s:4:"type";s:6:"submit";s:10:"created_at";s:19:"2018-04-16 23:40:51";s:16:"processing_label";s:10:"Processing";s:5:"order";s:1:"5";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:44:"submit_element_hover_styles_background-color";s:0:"";s:34:"submit_element_hover_styles_border";s:0:"";s:40:"submit_element_hover_styles_border-style";s:0:"";s:40:"submit_element_hover_styles_border-color";s:0:"";s:33:"submit_element_hover_styles_color";s:0:"";s:34:"submit_element_hover_styles_height";s:0:"";s:33:"submit_element_hover_styles_width";s:0:"";s:37:"submit_element_hover_styles_font-size";s:0:"";s:34:"submit_element_hover_styles_margin";s:0:"";s:35:"submit_element_hover_styles_padding";s:0:"";s:35:"submit_element_hover_styles_display";s:0:"";s:33:"submit_element_hover_styles_float";s:0:"";s:45:"submit_element_hover_styles_show_advanced_css";s:1:"0";s:36:"submit_element_hover_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3287";}}}s:7:"actions";a:4:{i:0;a:2:{s:2:"id";i:1;s:8:"settings";a:25:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:4:"save";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2018-04-16 23:40:52";s:5:"label";s:16:"Store Submission";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:0:"";s:13:"email_subject";s:0:"";s:13:"email_message";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:12:"redirect_url";s:0:"";s:19:"email_message_plain";s:0:"";}}i:1;a:2:{s:2:"id";i:2;s:8:"settings";a:26:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2018-04-16 23:40:52";s:5:"label";s:18:"Email Confirmation";s:2:"to";s:13:"{field:email}";s:7:"subject";s:24:"This is an email action.";s:7:"message";s:19:"Hello, Ninja Forms!";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:13:"email_subject";s:24:"Submission Confirmation ";s:13:"email_message";s:29:"<p>{all_fields_table}<br></p>";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:19:"email_message_plain";s:0:"";}}i:2;a:2:{s:2:"id";i:3;s:8:"settings";a:24:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2018-04-16 23:40:52";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:5:"label";s:18:"Email Notification";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:20:"{system:admin_email}";s:13:"email_subject";s:29:"New message from {field:name}";s:13:"email_message";s:60:"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:13:"{field:email}";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:1:"0";s:19:"email_message_plain";s:0:"";}}i:3;a:2:{s:2:"id";i:4;s:8:"settings";a:27:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:14:"successmessage";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2018-04-16 23:40:52";s:5:"label";s:15:"Success Message";s:7:"message";s:47:"Thank you {field:name} for filling out my form!";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:0:"";s:13:"email_subject";s:0:"";s:13:"email_message";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:12:"redirect_url";s:0:"";s:11:"success_msg";s:89:"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>";s:19:"email_message_plain";s:0:"";}}}s:8:"settings";a:99:{s:5:"title";s:10:"Contact Me";s:3:"key";s:0:"";s:10:"created_at";s:19:"2018-04-16 23:40:51";s:17:"default_label_pos";s:5:"above";s:10:"conditions";a:0:{}s:10:"objectType";s:12:"Form Setting";s:10:"editActive";s:0:"";s:10:"show_title";s:1:"1";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"add_submit";s:1:"1";s:9:"logged_in";s:0:"";s:17:"not_logged_in_msg";s:0:"";s:16:"sub_limit_number";s:0:"";s:13:"sub_limit_msg";s:0:"";s:12:"calculations";a:0:{}s:15:"formContentData";a:4:{i:0;a:2:{s:5:"order";s:1:"0";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:4:"name";}s:5:"width";s:3:"100";}}}i:1;a:2:{s:5:"order";s:1:"1";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:5:"email";}s:5:"width";s:3:"100";}}}i:2;a:2:{s:5:"order";s:1:"2";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:7:"message";}s:5:"width";s:3:"100";}}}i:3;a:2:{s:5:"order";s:1:"3";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:6:"submit";}s:5:"width";s:3:"100";}}}}s:33:"container_styles_background-color";s:0:"";s:23:"container_styles_border";s:0:"";s:29:"container_styles_border-style";s:0:"";s:29:"container_styles_border-color";s:0:"";s:22:"container_styles_color";s:0:"";s:23:"container_styles_height";s:0:"";s:22:"container_styles_width";s:0:"";s:26:"container_styles_font-size";s:0:"";s:23:"container_styles_margin";s:0:"";s:24:"container_styles_padding";s:0:"";s:24:"container_styles_display";s:0:"";s:22:"container_styles_float";s:0:"";s:34:"container_styles_show_advanced_css";s:1:"0";s:25:"container_styles_advanced";s:0:"";s:29:"title_styles_background-color";s:0:"";s:19:"title_styles_border";s:0:"";s:25:"title_styles_border-style";s:0:"";s:25:"title_styles_border-color";s:0:"";s:18:"title_styles_color";s:0:"";s:19:"title_styles_height";s:0:"";s:18:"title_styles_width";s:0:"";s:22:"title_styles_font-size";s:0:"";s:19:"title_styles_margin";s:0:"";s:20:"title_styles_padding";s:0:"";s:20:"title_styles_display";s:0:"";s:18:"title_styles_float";s:0:"";s:30:"title_styles_show_advanced_css";s:1:"0";s:21:"title_styles_advanced";s:0:"";s:27:"row_styles_background-color";s:0:"";s:17:"row_styles_border";s:0:"";s:23:"row_styles_border-style";s:0:"";s:23:"row_styles_border-color";s:0:"";s:16:"row_styles_color";s:0:"";s:17:"row_styles_height";s:0:"";s:16:"row_styles_width";s:0:"";s:20:"row_styles_font-size";s:0:"";s:17:"row_styles_margin";s:0:"";s:18:"row_styles_padding";s:0:"";s:18:"row_styles_display";s:0:"";s:28:"row_styles_show_advanced_css";s:1:"0";s:19:"row_styles_advanced";s:0:"";s:31:"row-odd_styles_background-color";s:0:"";s:21:"row-odd_styles_border";s:0:"";s:27:"row-odd_styles_border-style";s:0:"";s:27:"row-odd_styles_border-color";s:0:"";s:20:"row-odd_styles_color";s:0:"";s:21:"row-odd_styles_height";s:0:"";s:20:"row-odd_styles_width";s:0:"";s:24:"row-odd_styles_font-size";s:0:"";s:21:"row-odd_styles_margin";s:0:"";s:22:"row-odd_styles_padding";s:0:"";s:22:"row-odd_styles_display";s:0:"";s:32:"row-odd_styles_show_advanced_css";s:1:"0";s:23:"row-odd_styles_advanced";s:0:"";s:35:"success-msg_styles_background-color";s:0:"";s:25:"success-msg_styles_border";s:0:"";s:31:"success-msg_styles_border-style";s:0:"";s:31:"success-msg_styles_border-color";s:0:"";s:24:"success-msg_styles_color";s:0:"";s:25:"success-msg_styles_height";s:0:"";s:24:"success-msg_styles_width";s:0:"";s:28:"success-msg_styles_font-size";s:0:"";s:25:"success-msg_styles_margin";s:0:"";s:26:"success-msg_styles_padding";s:0:"";s:26:"success-msg_styles_display";s:0:"";s:36:"success-msg_styles_show_advanced_css";s:1:"0";s:27:"success-msg_styles_advanced";s:0:"";s:33:"error_msg_styles_background-color";s:0:"";s:23:"error_msg_styles_border";s:0:"";s:29:"error_msg_styles_border-style";s:0:"";s:29:"error_msg_styles_border-color";s:0:"";s:22:"error_msg_styles_color";s:0:"";s:23:"error_msg_styles_height";s:0:"";s:22:"error_msg_styles_width";s:0:"";s:26:"error_msg_styles_font-size";s:0:"";s:23:"error_msg_styles_margin";s:0:"";s:24:"error_msg_styles_padding";s:0:"";s:24:"error_msg_styles_display";s:0:"";s:34:"error_msg_styles_show_advanced_css";s:1:"0";s:25:"error_msg_styles_advanced";s:0:"";}}', 'yes'),
(467, 'widget_ninja_forms_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(468, 'ninja_forms_optin_reported', '1', 'yes'),
(469, 'nf_admin_notice', 'a:2:{s:16:"one_week_support";a:2:{s:5:"start";s:9:"4/23/2018";s:3:"int";i:7;}s:14:"allow_tracking";a:2:{s:5:"start";s:9:"4/16/2018";s:3:"int";i:0;}}', 'yes'),
(470, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(471, 'nf_form_tel_data', '1,2', 'no'),
(472, 'nf_form_2', 'a:7:{s:2:"id";i:2;s:20:"show_publish_options";b:0;s:6:"fields";a:2:{i:0;a:2:{s:8:"settings";a:16:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:1;s:5:"label";s:5:"Email";s:4:"type";s:5:"email";s:3:"key";s:19:"email_1523922075751";s:9:"label_pos";s:7:"default";s:8:"required";b:0;s:7:"default";s:0:"";s:11:"placeholder";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:21:"custom_name_attribute";s:5:"email";}s:2:"id";s:1:"5";}i:1;a:2:{s:8:"settings";a:11:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:9999;s:4:"type";s:6:"submit";s:5:"label";s:6:"SUBMIT";s:16:"processing_label";s:10:"Processing";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:3:"key";s:20:"submit_1523922133552";s:14:"drawerDisabled";b:0;}s:2:"id";s:1:"6";}}s:7:"actions";a:3:{i:0;a:2:{s:8:"settings";a:23:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"label";s:15:"Success Message";s:4:"type";s:14:"successmessage";s:7:"message";s:42:"Your form has been successfully submitted.";s:5:"order";i:1;s:6:"active";b:1;s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:1:"0";s:3:"tag";s:0:"";s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:12:"redirect_url";s:0:"";s:11:"success_msg";s:42:"Your form has been successfully submitted.";}s:2:"id";i:5;}i:1;a:2:{s:8:"settings";a:20:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"label";s:11:"Admin Email";s:4:"type";s:5:"email";s:5:"order";i:2;s:6:"active";b:1;s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:1:"0";s:3:"tag";s:0:"";s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";}s:2:"id";i:6;}i:2;a:2:{s:8:"settings";a:21:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"label";s:16:"Store Submission";s:4:"type";s:4:"save";s:5:"order";i:3;s:6:"active";b:1;s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:1:"0";s:3:"tag";s:0:"";s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:12:"redirect_url";s:0:"";}s:2:"id";i:7;}}s:8:"settings";a:28:{s:10:"objectType";s:12:"Form Setting";s:10:"editActive";b:1;s:5:"title";s:0:"";s:10:"show_title";i:1;s:14:"clear_complete";i:1;s:13:"hide_complete";i:1;s:17:"default_label_pos";s:5:"above";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:3:"key";s:0:"";s:10:"add_submit";i:1;s:19:"changeEmailErrorMsg";s:0:"";s:20:"confirmFieldErrorMsg";s:0:"";s:22:"fieldNumberNumMinError";s:0:"";s:22:"fieldNumberNumMaxError";s:0:"";s:22:"fieldNumberIncrementBy";s:0:"";s:23:"formErrorsCorrectErrors";s:0:"";s:21:"validateRequiredField";s:0:"";s:21:"honeypotHoneypotError";s:0:"";s:20:"fieldsMarkedRequired";s:0:"";s:8:"currency";s:0:"";s:18:"unique_field_error";s:50:"A form with this value has already been submitted.";s:9:"logged_in";b:0;s:17:"not_logged_in_msg";s:0:"";s:13:"sub_limit_msg";s:42:"The form has reached its submission limit.";s:12:"calculations";a:0:{}s:15:"formContentData";a:2:{i:0;s:19:"email_1523922075751";i:1;s:20:"submit_1523922133552";}s:14:"drawerDisabled";b:0;}s:14:"deleted_fields";a:0:{}s:15:"deleted_actions";a:0:{}}', 'yes'),
(474, 'nf_form_tel_sent', 'true', 'no'),
(479, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1523922693;s:7:"version";s:5:"5.0.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(483, 'flamingo_inbound_channel_children', 'a:1:{i:11;a:1:{i:0;i:12;}}', 'yes'),
(492, 'wp_about_author_settings', 'a:13:{s:19:"wp_author_installed";s:2:"on";s:17:"wp_author_version";s:2:"17";s:18:"wp_author_alert_bg";s:7:"#FFEAA8";s:23:"wp_author_display_front";s:2:"on";s:26:"wp_author_display_archives";s:2:"on";s:24:"wp_author_display_search";s:0:"";s:23:"wp_author_display_posts";s:2:"on";s:23:"wp_author_display_pages";s:2:"on";s:22:"wp_author_display_feed";s:0:"";s:22:"wp_author_alert_border";s:3:"top";s:23:"wp_author_social_images";s:2:"on";s:21:"wp_author_avatar_size";s:3:"100";s:22:"wp_author_avatar_shape";s:0:"";}', 'yes'),
(518, 'widget_sub_categories_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(522, 'category_children', 'a:0:{}', 'yes'),
(541, 'searchandfilter_version', '1.2.9', 'yes'),
(563, 'acf_version', '4.4.12', 'yes'),
(570, 'wp_es_options', 'a:8:{s:5:"title";s:1:"1";s:7:"content";s:1:"1";s:10:"taxonomies";a:2:{i:0;s:8:"category";i:1;s:8:"post_tag";}s:7:"authors";s:1:"1";s:10:"post_types";a:1:{i:0;s:4:"post";}s:14:"terms_relation";s:1:"1";s:12:"exclude_date";s:0:"";s:14:"posts_per_page";s:0:"";}', 'yes'),
(595, 'simple_load_more_version', '1.0.0', 'yes'),
(596, 'elm_wrapper_selector', '#load_posts_container', 'yes'),
(597, 'elm_button_text', 'Load More', 'yes'),
(598, 'elm_loading_text', 'Loading...', 'yes'),
(599, 'elm_animation_open', '', 'yes'),
(600, 'elm_animation_icon', 'option_a', 'yes'),
(601, 'elm_button_color', '#FFBA00', 'yes'),
(602, 'elm_text_color', '#FFFFFF', 'yes'),
(624, 'rt_the_post_grid_current_version', '2.2.3', 'yes'),
(625, 'rt_the_post_grid_settings', 'a:1:{s:10:"custom_css";N;}', 'yes'),
(626, 'widget_widget_tpg_post_grid', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(661, 'widget_wp_user_avatar_profile', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(662, 'avatar_default_wp_user_avatar', '', 'yes'),
(663, 'wp_user_avatar_allow_upload', '0', 'yes'),
(664, 'wp_user_avatar_disable_gravatar', '0', 'yes'),
(665, 'wp_user_avatar_edit_avatar', '1', 'yes'),
(666, 'wp_user_avatar_resize_crop', '0', 'yes'),
(667, 'wp_user_avatar_resize_h', '96', 'yes'),
(668, 'wp_user_avatar_resize_upload', '0', 'yes'),
(669, 'wp_user_avatar_resize_w', '96', 'yes'),
(670, 'wp_user_avatar_tinymce', '1', 'yes'),
(671, 'wp_user_avatar_upload_size_limit', '0', 'yes'),
(672, 'wp_user_avatar_default_avatar_updated', '1', 'yes'),
(673, 'wp_user_avatar_users_updated', '1', 'yes'),
(674, 'wp_user_avatar_media_updated', '1', 'yes'),
(785, 'responsive_menu_version', '3.1.14', 'yes'),
(786, 'responsive_menu_current_page', 'initial-setup', 'yes'),
(787, 'hide_pro_options', 'no', 'yes'),
(790, 'storefront-hamburger-menu-version', '1.2.1', 'yes'),
(793, 'wpr_optionsframework', 'a:1:{s:2:"id";s:15:"wprmenu_options";}', 'yes'),
(794, 'wprmenu_options', 'a:70:{s:7:"enabled";s:1:"1";s:16:"wpr_live_preview";s:1:"1";s:21:"search_box_menu_block";s:1:"1";s:18:"search_box_menubar";b:0;s:7:"rtlview";b:0;s:14:"submenu_opened";b:0;s:4:"menu";s:1:"8";s:4:"hide";s:0:"";s:15:"search_box_text";s:9:"Search...";s:9:"bar_title";s:4:"MENU";s:8:"bar_logo";s:0:"";s:12:"bar_logo_pos";s:4:"left";s:9:"logo_link";s:28:"http://localhost:8888/oxford";s:5:"swipe";s:3:"yes";s:7:"zooming";s:2:"no";s:12:"parent_click";s:3:"yes";s:9:"menu_type";s:7:"default";s:15:"custom_menu_top";s:1:"0";s:15:"menu_symbol_pos";s:4:"left";s:16:"custom_menu_left";s:1:"0";s:20:"custom_menu_bg_color";s:7:"#CCCCCC";s:19:"menu_icon_animation";s:17:"hamburger--slider";s:10:"slide_type";s:9:"bodyslide";s:8:"position";s:4:"left";s:10:"from_width";s:3:"768";s:8:"how_wide";s:2:"80";s:14:"menu_max_width";s:3:"400";s:15:"menu_title_size";s:2:"20";s:17:"menu_title_weight";s:6:"normal";s:14:"menu_font_size";s:2:"15";s:16:"menu_font_weight";s:6:"normal";s:19:"menu_font_text_type";s:9:"uppercase";s:17:"submenu_alignment";s:4:"left";s:18:"sub_menu_font_size";s:2:"15";s:20:"sub_menu_font_weight";s:6:"normal";s:23:"sub_menu_font_text_type";s:9:"uppercase";s:30:"cart_contents_bubble_text_size";s:2:"12";s:23:"menu_border_bottom_show";s:3:"yes";s:23:"menu_border_top_opacity";s:4:"0.05";s:26:"menu_border_bottom_opacity";s:4:"0.05";s:7:"menu_bg";s:0:"";s:12:"menu_bg_size";s:5:"cover";s:11:"menu_bg_rep";s:6:"repeat";s:11:"menu_bar_bg";s:0:"";s:16:"menu_bar_bg_size";s:5:"cover";s:15:"menu_bar_bg_rep";s:6:"repeat";s:16:"order_menu_items";s:0:"";s:7:"bar_bgd";s:7:"#C92C2C";s:9:"bar_color";s:7:"#FFFFFF";s:8:"menu_bgd";s:7:"#c82d2d";s:10:"menu_color";s:7:"#FFFFFF";s:16:"menu_color_hover";s:7:"#FFFFFF";s:15:"menu_textovrbgd";s:7:"#d53f3f";s:17:"active_menu_color";s:7:"#FFFFFF";s:20:"active_menu_bg_color";s:7:"#d53f3f";s:15:"menu_icon_color";s:7:"#FFFFFF";s:21:"menu_icon_hover_color";s:7:"#FFFFFF";s:15:"menu_border_top";s:7:"#FFFFFF";s:18:"menu_border_bottom";s:7:"#FFFFFF";s:17:"social_icon_color";s:7:"#FFFFFF";s:23:"social_icon_hover_color";s:7:"#FFFFFF";s:17:"search_icon_color";s:7:"#FFFFFF";s:23:"search_icon_hover_color";s:7:"#FFFFFF";s:16:"google_font_type";s:8:"standard";s:18:"google_font_family";s:28:"Arial, Helvetica, sans-serif";s:22:"google_web_font_family";s:7:"ABeeZee";s:14:"menu_icon_type";s:7:"default";s:21:"custom_menu_font_size";s:2:"40";s:20:"custom_menu_icon_top";s:2:"-7";s:21:"social_icon_font_size";s:2:"16";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(804, 'heateor_sss', 'a:72:{s:24:"horizontal_sharing_shape";s:6:"square";s:23:"horizontal_sharing_size";s:2:"30";s:24:"horizontal_sharing_width";s:2:"70";s:25:"horizontal_sharing_height";s:2:"35";s:24:"horizontal_border_radius";s:1:"3";s:29:"horizontal_font_color_default";s:0:"";s:32:"horizontal_sharing_replace_color";s:4:"#fff";s:27:"horizontal_font_color_hover";s:0:"";s:38:"horizontal_sharing_replace_color_hover";s:4:"#fff";s:27:"horizontal_bg_color_default";s:7:"#3b4a56";s:25:"horizontal_bg_color_hover";s:0:"";s:31:"horizontal_border_width_default";s:0:"";s:31:"horizontal_border_color_default";s:0:"";s:29:"horizontal_border_width_hover";s:0:"";s:29:"horizontal_border_color_hover";s:0:"";s:22:"vertical_sharing_shape";s:6:"square";s:21:"vertical_sharing_size";s:2:"30";s:22:"vertical_sharing_width";s:2:"80";s:23:"vertical_sharing_height";s:2:"40";s:22:"vertical_border_radius";s:0:"";s:27:"vertical_font_color_default";s:0:"";s:30:"vertical_sharing_replace_color";s:4:"#fff";s:25:"vertical_font_color_hover";s:0:"";s:36:"vertical_sharing_replace_color_hover";s:4:"#fff";s:25:"vertical_bg_color_default";s:0:"";s:23:"vertical_bg_color_hover";s:0:"";s:29:"vertical_border_width_default";s:0:"";s:29:"vertical_border_color_default";s:0:"";s:27:"vertical_border_width_hover";s:0:"";s:27:"vertical_border_color_hover";s:0:"";s:10:"hor_enable";s:1:"1";s:21:"horizontal_target_url";s:7:"default";s:28:"horizontal_target_url_custom";s:0:"";s:5:"title";s:5:"SHARE";s:18:"instagram_username";s:0:"";s:20:"comment_container_id";s:7:"respond";s:23:"horizontal_re_providers";a:4:{i:0;s:8:"linkedin";i:1;s:7:"twitter";i:2;s:5:"email";i:3;s:8:"facebook";}s:21:"hor_sharing_alignment";s:5:"right";s:19:"tweet_count_service";s:14:"newsharecounts";s:19:"vertical_target_url";s:7:"default";s:26:"vertical_target_url_custom";s:0:"";s:27:"vertical_instagram_username";s:0:"";s:29:"vertical_comment_container_id";s:7:"respond";s:21:"vertical_re_providers";a:9:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:11:"google_plus";i:3;s:8:"linkedin";i:4;s:9:"pinterest";i:5;s:6:"reddit";i:6;s:9:"delicious";i:7;s:11:"stumbleupon";i:8;s:8:"whatsapp";}s:11:"vertical_bg";s:0:"";s:9:"alignment";s:4:"left";s:11:"left_offset";s:3:"-10";s:12:"right_offset";s:3:"-10";s:10:"top_offset";s:3:"100";s:13:"vertical_home";s:1:"1";s:13:"vertical_post";s:1:"1";s:13:"vertical_page";s:1:"1";s:28:"vertical_tweet_count_service";s:14:"newsharecounts";s:13:"vertical_more";s:1:"1";s:19:"hide_mobile_sharing";s:1:"1";s:21:"vertical_screen_width";s:3:"783";s:21:"bottom_mobile_sharing";s:1:"1";s:23:"horizontal_screen_width";s:3:"783";s:23:"bottom_sharing_position";s:1:"0";s:24:"bottom_sharing_alignment";s:4:"left";s:29:"bottom_sharing_position_radio";s:10:"responsive";s:13:"footer_script";s:1:"1";s:14:"delete_options";s:1:"1";s:31:"share_count_cache_refresh_count";s:2:"10";s:30:"share_count_cache_refresh_unit";s:7:"minutes";s:14:"bitly_username";s:0:"";s:9:"bitly_key";s:0:"";s:8:"language";s:5:"en_US";s:16:"twitter_username";s:0:"";s:15:"buffer_username";s:0:"";s:10:"amp_enable";s:1:"1";s:10:"custom_css";s:0:"";}', 'yes'),
(805, 'heateor_sss_version', '3.2', 'yes'),
(806, 'widget_heateor_sss_sharing', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(807, 'widget_heateor_sss_floating_sharing', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(808, 'widget_heateor_sss_follow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(811, '_site_transient_timeout_browser_2611170487ec14f87dc3b42e3503185b', '1525655803', 'no'),
(812, '_site_transient_browser_2611170487ec14f87dc3b42e3503185b', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"65.0.3325.181";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(894, '_site_transient_timeout_theme_roots', '1525627429', 'no'),
(895, '_site_transient_theme_roots', 'a:4:{s:15:"simplegridtheme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(896, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1525625629;s:7:"checked";a:12:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.12";s:33:"ajax-load-more/ajax-load-more.php";s:5:"3.4.1";s:19:"akismet/akismet.php";s:5:"4.0.3";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.0.1";s:33:"duplicate-post/duplicate-post.php";s:5:"3.2.2";s:21:"flamingo/flamingo.php";s:3:"1.8";s:9:"hello.php";s:3:"1.7";s:41:"sassy-social-share/sassy-social-share.php";s:3:"3.2";s:59:"ultimate-social-media-icons/ultimate_social_media_icons.php";s:5:"1.9.2";s:53:"related-posts-thumbnails/related-posts-thumbnails.php";s:5:"1.6.3";s:28:"wp-extended-search/wp-es.php";s:5:"1.1.2";s:33:"wp-user-avatar/wp-user-avatar.php";s:5:"2.0.9";}s:8:"response";a:2:{s:33:"ajax-load-more/ajax-load-more.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/ajax-load-more";s:4:"slug";s:14:"ajax-load-more";s:6:"plugin";s:33:"ajax-load-more/ajax-load-more.php";s:11:"new_version";s:5:"3.5.0";s:3:"url";s:45:"https://wordpress.org/plugins/ajax-load-more/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/ajax-load-more.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/ajax-load-more/assets/icon-256x256.png?rev=1631559";s:2:"1x";s:67:"https://ps.w.org/ajax-load-more/assets/icon-128x128.png?rev=1667395";}s:7:"banners";a:1:{s:2:"1x";s:69:"https://ps.w.org/ajax-load-more/assets/banner-772x250.jpg?rev=1667398";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.5";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}s:59:"ultimate-social-media-icons/ultimate_social_media_icons.php";O:8:"stdClass":13:{s:2:"id";s:41:"w.org/plugins/ultimate-social-media-icons";s:4:"slug";s:27:"ultimate-social-media-icons";s:6:"plugin";s:59:"ultimate-social-media-icons/ultimate_social_media_icons.php";s:11:"new_version";s:5:"1.9.6";s:3:"url";s:58:"https://wordpress.org/plugins/ultimate-social-media-icons/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/ultimate-social-media-icons.1.9.6.zip";s:5:"icons";a:1:{s:2:"1x";s:80:"https://ps.w.org/ultimate-social-media-icons/assets/icon-128x128.png?rev=1598977";}s:7:"banners";a:1:{s:2:"1x";s:82:"https://ps.w.org/ultimate-social-media-icons/assets/banner-772x250.png?rev=1032920";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:21:"<p>Please upgrade</p>";s:6:"tested";s:5:"4.9.5";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:10:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:33:"duplicate-post/duplicate-post.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/duplicate-post";s:4:"slug";s:14:"duplicate-post";s:6:"plugin";s:33:"duplicate-post/duplicate-post.php";s:11:"new_version";s:5:"3.2.2";s:3:"url";s:45:"https://wordpress.org/plugins/duplicate-post/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/duplicate-post.3.2.2.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753";s:2:"1x";s:67:"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753";}s:7:"banners";a:1:{s:2:"1x";s:69:"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986";}s:11:"banners_rtl";a:0:{}}s:21:"flamingo/flamingo.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/flamingo";s:4:"slug";s:8:"flamingo";s:6:"plugin";s:21:"flamingo/flamingo.php";s:11:"new_version";s:3:"1.8";s:3:"url";s:39:"https://wordpress.org/plugins/flamingo/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/flamingo.1.8.zip";s:5:"icons";a:1:{s:2:"1x";s:61:"https://ps.w.org/flamingo/assets/icon-128x128.png?rev=1540977";}s:7:"banners";a:1:{s:2:"1x";s:62:"https://ps.w.org/flamingo/assets/banner-772x250.png?rev=544829";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:41:"sassy-social-share/sassy-social-share.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/sassy-social-share";s:4:"slug";s:18:"sassy-social-share";s:6:"plugin";s:41:"sassy-social-share/sassy-social-share.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:49:"https://wordpress.org/plugins/sassy-social-share/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/sassy-social-share.zip";s:5:"icons";a:1:{s:2:"1x";s:71:"https://ps.w.org/sassy-social-share/assets/icon-128x128.png?rev=1300723";}s:7:"banners";a:1:{s:2:"1x";s:73:"https://ps.w.org/sassy-social-share/assets/banner-772x250.png?rev=1866721";}s:11:"banners_rtl";a:0:{}}s:53:"related-posts-thumbnails/related-posts-thumbnails.php";O:8:"stdClass":9:{s:2:"id";s:38:"w.org/plugins/related-posts-thumbnails";s:4:"slug";s:24:"related-posts-thumbnails";s:6:"plugin";s:53:"related-posts-thumbnails/related-posts-thumbnails.php";s:11:"new_version";s:5:"1.6.3";s:3:"url";s:55:"https://wordpress.org/plugins/related-posts-thumbnails/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/related-posts-thumbnails.1.6.3.zip";s:5:"icons";a:2:{s:2:"2x";s:77:"https://ps.w.org/related-posts-thumbnails/assets/icon-256x256.png?rev=1602092";s:2:"1x";s:77:"https://ps.w.org/related-posts-thumbnails/assets/icon-128x128.png?rev=1602092";}s:7:"banners";a:1:{s:2:"1x";s:79:"https://ps.w.org/related-posts-thumbnails/assets/banner-772x250.png?rev=1460690";}s:11:"banners_rtl";a:0:{}}s:28:"wp-extended-search/wp-es.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/wp-extended-search";s:4:"slug";s:18:"wp-extended-search";s:6:"plugin";s:28:"wp-extended-search/wp-es.php";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:49:"https://wordpress.org/plugins/wp-extended-search/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wp-extended-search.1.1.2.zip";s:5:"icons";a:2:{s:2:"2x";s:71:"https://ps.w.org/wp-extended-search/assets/icon-256x256.png?rev=1029553";s:2:"1x";s:71:"https://ps.w.org/wp-extended-search/assets/icon-128x128.png?rev=1029553";}s:7:"banners";a:1:{s:2:"1x";s:72:"https://ps.w.org/wp-extended-search/assets/banner-772x250.png?rev=989653";}s:11:"banners_rtl";a:0:{}}s:33:"wp-user-avatar/wp-user-avatar.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-user-avatar";s:4:"slug";s:14:"wp-user-avatar";s:6:"plugin";s:33:"wp-user-avatar/wp-user-avatar.php";s:11:"new_version";s:5:"2.0.9";s:3:"url";s:45:"https://wordpress.org/plugins/wp-user-avatar/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-user-avatar.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/wp-user-avatar/assets/icon-256x256.png?rev=1755722";s:2:"1x";s:67:"https://ps.w.org/wp-user-avatar/assets/icon-128x128.png?rev=1755722";}s:7:"banners";a:1:{s:2:"1x";s:68:"https://ps.w.org/wp-user-avatar/assets/banner-772x250.png?rev=882713";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=821 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(55, 22, '_wp_attached_file', '2018/04/IJM_3085_WEB1-321x209.jpg'),
(56, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:321;s:6:"height";i:209;s:4:"file";s:33:"2018/04/IJM_3085_WEB1-321x209.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"IJM_3085_WEB1-321x209-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"IJM_3085_WEB1-321x209-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:18:"featured-slideshow";a:4:{s:4:"file";s:33:"IJM_3085_WEB1-321x209-309x209.jpg";s:5:"width";i:309;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:33:"IJM_3085_WEB1-321x209-321x196.jpg";s:5:"width";i:321;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:31:"IJM_3085_WEB1-321x209-60x58.jpg";s:5:"width";i:60;s:6:"height";i:58;s:9:"mime-type";s:10:"image/jpeg";}s:16:"home-post-iphone";a:4:{s:4:"file";s:33:"IJM_3085_WEB1-321x209-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:11:"home-medium";a:4:{s:4:"file";s:33:"IJM_3085_WEB1-321x209-299x165.jpg";s:5:"width";i:299;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"home-small";a:4:{s:4:"file";s:33:"IJM_3085_WEB1-321x209-224x124.jpg";s:5:"width";i:224;s:6:"height";i:124;s:9:"mime-type";s:10:"image/jpeg";}s:9:"blog-post";a:4:{s:4:"file";s:33:"IJM_3085_WEB1-321x209-321x203.jpg";s:5:"width";i:321;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(57, 23, '_edit_last', '1'),
(58, 23, '_edit_lock', '1525384249:1'),
(59, 23, '_thumbnail_id', '22'),
(63, 26, '_thumbnail_id', '22'),
(64, 26, '_dp_original', '23'),
(65, 27, '_thumbnail_id', '22'),
(67, 27, '_dp_original', '26'),
(68, 28, '_thumbnail_id', '22'),
(70, 28, '_dp_original', '26'),
(71, 29, '_thumbnail_id', '65'),
(73, 29, '_dp_original', '26'),
(74, 26, '_edit_lock', '1523774480:1'),
(75, 26, '_edit_last', '1'),
(77, 27, '_edit_last', '1'),
(78, 27, '_edit_lock', '1523774442:1'),
(80, 28, '_edit_lock', '1524436656:1'),
(81, 28, '_edit_last', '1'),
(83, 29, '_edit_lock', '1523774995:1'),
(84, 29, '_edit_last', '1'),
(88, 35, '_thumbnail_id', '22'),
(89, 35, '_dp_original', '23'),
(90, 35, '_edit_lock', '1524436650:1'),
(91, 35, '_edit_last', '1'),
(94, 37, '_thumbnail_id', '22'),
(96, 37, '_dp_original', '35'),
(97, 37, '_edit_lock', '1523834972:1'),
(98, 37, '_edit_last', '1'),
(100, 39, '_thumbnail_id', '22'),
(102, 39, '_dp_original', '29'),
(103, 39, '_edit_lock', '1523770148:1'),
(104, 39, '_edit_last', '1'),
(109, 42, '_thumbnail_id', '99'),
(111, 42, '_dp_original', '39'),
(122, 42, '_edit_lock', '1524436643:1'),
(126, 42, '_edit_last', '1'),
(130, 49, '_thumbnail_id', '100'),
(132, 49, '_dp_original', '28'),
(133, 49, '_edit_lock', '1524278071:1'),
(134, 49, '_edit_last', '1'),
(136, 2, '_edit_lock', '1523775817:1'),
(137, 2, '_edit_last', '1'),
(138, 52, '_wp_page_template', 'default'),
(139, 52, '_dp_original', '2'),
(140, 52, '_edit_lock', '1524933444:1'),
(141, 52, '_edit_last', '1'),
(142, 54, '_wp_page_template', 'tpl-contributors.php'),
(144, 54, '_dp_original', '52'),
(145, 55, '_wp_page_template', 'default'),
(147, 55, '_dp_original', '54'),
(148, 54, '_edit_lock', '1524609033:1'),
(149, 54, '_edit_last', '1'),
(150, 55, '_edit_lock', '1524440337:1'),
(151, 55, '_edit_last', '1'),
(152, 58, '_wp_page_template', 'default'),
(154, 58, '_dp_original', '52'),
(155, 58, '_edit_lock', '1523773005:1'),
(156, 58, '_edit_last', '1'),
(157, 58, '_wp_trash_meta_status', 'publish'),
(158, 58, '_wp_trash_meta_time', '1523773150'),
(159, 58, '_wp_desired_post_slug', 'home'),
(160, 60, '_menu_item_type', 'post_type'),
(161, 60, '_menu_item_menu_item_parent', '0'),
(162, 60, '_menu_item_object_id', '55'),
(163, 60, '_menu_item_object', 'page'),
(164, 60, '_menu_item_target', ''),
(165, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(166, 60, '_menu_item_xfn', ''),
(167, 60, '_menu_item_url', ''),
(169, 61, '_menu_item_type', 'post_type'),
(170, 61, '_menu_item_menu_item_parent', '0'),
(171, 61, '_menu_item_object_id', '54'),
(172, 61, '_menu_item_object', 'page'),
(173, 61, '_menu_item_target', ''),
(174, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(175, 61, '_menu_item_xfn', ''),
(176, 61, '_menu_item_url', ''),
(178, 62, '_menu_item_type', 'post_type'),
(179, 62, '_menu_item_menu_item_parent', '0'),
(180, 62, '_menu_item_object_id', '52'),
(181, 62, '_menu_item_object', 'page'),
(182, 62, '_menu_item_target', ''),
(183, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(184, 62, '_menu_item_xfn', ''),
(185, 62, '_menu_item_url', ''),
(204, 65, '_wp_attached_file', '2018/04/michael-turner.jpg'),
(205, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:384;s:6:"height";i:500;s:4:"file";s:26:"2018/04/michael-turner.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"michael-turner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"michael-turner-230x300.jpg";s:5:"width";i:230;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"featured-slideshow";a:4:{s:4:"file";s:26:"michael-turner-309x500.jpg";s:5:"width";i:309;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:12:"featured-big";a:4:{s:4:"file";s:26:"michael-turner-369x408.jpg";s:5:"width";i:369;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:26:"michael-turner-369x196.jpg";s:5:"width";i:369;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:24:"michael-turner-60x58.jpg";s:5:"width";i:60;s:6:"height";i:58;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-blog";a:4:{s:4:"file";s:26:"michael-turner-384x291.jpg";s:5:"width";i:384;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home-post";a:4:{s:4:"file";s:26:"michael-turner-321x209.jpg";s:5:"width";i:321;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:16:"home-post-iphone";a:4:{s:4:"file";s:26:"michael-turner-300x331.jpg";s:5:"width";i:300;s:6:"height";i:331;s:9:"mime-type";s:10:"image/jpeg";}s:11:"home-medium";a:4:{s:4:"file";s:26:"michael-turner-299x165.jpg";s:5:"width";i:299;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"home-small";a:4:{s:4:"file";s:26:"michael-turner-224x124.jpg";s:5:"width";i:224;s:6:"height";i:124;s:9:"mime-type";s:10:"image/jpeg";}s:9:"blog-post";a:4:{s:4:"file";s:26:"michael-turner-368x203.jpg";s:5:"width";i:368;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:29:"Â© Steve Carty Photographer";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(207, 66, '_menu_item_type', 'taxonomy'),
(208, 66, '_menu_item_menu_item_parent', '0'),
(209, 66, '_menu_item_object_id', '6'),
(210, 66, '_menu_item_object', 'category'),
(211, 66, '_menu_item_target', ''),
(212, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(213, 66, '_menu_item_xfn', ''),
(214, 66, '_menu_item_url', ''),
(216, 67, '_menu_item_type', 'taxonomy'),
(217, 67, '_menu_item_menu_item_parent', '0'),
(218, 67, '_menu_item_object_id', '3'),
(219, 67, '_menu_item_object', 'category'),
(220, 67, '_menu_item_target', ''),
(221, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(222, 67, '_menu_item_xfn', ''),
(223, 67, '_menu_item_url', ''),
(225, 68, '_menu_item_type', 'taxonomy'),
(226, 68, '_menu_item_menu_item_parent', '0'),
(227, 68, '_menu_item_object_id', '4'),
(228, 68, '_menu_item_object', 'category'),
(229, 68, '_menu_item_target', ''),
(230, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(231, 68, '_menu_item_xfn', ''),
(232, 68, '_menu_item_url', ''),
(234, 69, '_menu_item_type', 'taxonomy'),
(235, 69, '_menu_item_menu_item_parent', '0'),
(236, 69, '_menu_item_object_id', '5'),
(237, 69, '_menu_item_object', 'category'),
(238, 69, '_menu_item_target', ''),
(239, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(240, 69, '_menu_item_xfn', ''),
(241, 69, '_menu_item_url', ''),
(253, 71, '_menu_item_type', 'taxonomy'),
(254, 71, '_menu_item_menu_item_parent', '0'),
(255, 71, '_menu_item_object_id', '10'),
(256, 71, '_menu_item_object', 'category'),
(257, 71, '_menu_item_target', ''),
(258, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(259, 71, '_menu_item_xfn', ''),
(260, 71, '_menu_item_url', ''),
(262, 2, '_wp_trash_meta_status', 'publish'),
(263, 2, '_wp_trash_meta_time', '1523776058'),
(264, 2, '_wp_desired_post_slug', 'sample-page'),
(265, 72, '_menu_item_type', 'custom'),
(266, 72, '_menu_item_menu_item_parent', '0'),
(267, 72, '_menu_item_object_id', '72'),
(268, 72, '_menu_item_object', 'custom'),
(269, 72, '_menu_item_target', ''),
(270, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(271, 72, '_menu_item_xfn', ''),
(272, 72, '_menu_item_url', 'http://localhost:8888/oxford/'),
(274, 73, '_menu_item_type', 'taxonomy'),
(275, 73, '_menu_item_menu_item_parent', '0'),
(276, 73, '_menu_item_object_id', '9'),
(277, 73, '_menu_item_object', 'category'),
(278, 73, '_menu_item_target', ''),
(279, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(280, 73, '_menu_item_xfn', ''),
(281, 73, '_menu_item_url', ''),
(283, 74, '_mc4wp_settings', 'a:8:{s:15:"required_fields";s:5:"EMAIL";s:12:"double_optin";s:1:"1";s:15:"update_existing";s:1:"0";s:17:"replace_interests";s:1:"1";s:18:"hide_after_success";s:1:"0";s:8:"redirect";s:0:"";s:3:"css";s:1:"0";s:5:"lists";a:1:{i:0;s:10:"511126b38f";}}'),
(284, 74, 'text_subscribed', 'Thank you, your sign-up request was successful! Please check your email inbox to confirm.'),
(285, 74, 'text_invalid_email', 'Please provide a valid email address.'),
(286, 74, 'text_required_field_missing', 'Please fill in the required fields.'),
(287, 74, 'text_already_subscribed', 'Given email address is already subscribed, thank you!'),
(288, 74, 'text_error', 'Oops. Something went wrong. Please try again later.'),
(289, 74, 'text_unsubscribed', 'You were successfully unsubscribed.'),
(290, 74, 'text_not_subscribed', 'Given email address is not subscribed.'),
(291, 74, 'text_no_lists_selected', 'Please select at least one list.'),
(292, 74, 'text_updated', 'Thank you, your records have been updated!'),
(305, 74, '_wp_old_date', '2018-04-15'),
(306, 75, '_wp_attached_file', '2018/04/email-logo-black.png'),
(307, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:36;s:6:"height";i:36;s:4:"file";s:28:"2018/04/email-logo-black.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(308, 76, '_wp_attached_file', '2018/04/facebook-logo-black.png'),
(309, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:35;s:6:"height";i:35;s:4:"file";s:31:"2018/04/facebook-logo-black.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(310, 77, '_wp_attached_file', '2018/04/twitter-logo-black.png'),
(311, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:35;s:6:"height";i:35;s:4:"file";s:30:"2018/04/twitter-logo-black.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(312, 78, '_wp_attached_file', '2018/04/linkedin-logo-black.png'),
(313, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:35;s:6:"height";i:35;s:4:"file";s:31:"2018/04/linkedin-logo-black.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(314, 79, '_edit_lock', '1523920772:1'),
(315, 79, '_edit_last', '1'),
(319, 80, 'es_template_type', 'Post Notification'),
(320, 81, 'es_template_type', 'Newsletter'),
(321, 81, '_edit_lock', '1523920875:1'),
(322, 80, '_edit_lock', '1523920893:1'),
(331, 84, '_form', '<p>\n    [email* your-email placeholder "Enter your email"] </p>\n\n[submit "SUBMIT"]'),
(332, 84, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:34:"Oxford Properties "[your-subject]"";s:6:"sender";s:29:"[your-name] <noreply@test.ca>";s:9:"recipient";s:15:"noreply@test.ca";s:4:"body";s:159:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Oxford Properties (URL)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(333, 84, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:34:"Oxford Properties "[your-subject]"";s:6:"sender";s:37:"Oxford Properties <zain.khan@msn.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:126:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Oxford Properties (http://localhost:8888/oxford)";s:18:"additional_headers";s:27:"Reply-To: zain.khan@msn.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(334, 84, '_messages', 'a:23:{s:12:"mail_sent_ok";s:44:"Thank you for subscribing to our newsletter.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(335, 84, '_additional_settings', 'skip_mail: on'),
(336, 84, '_locale', 'en_US'),
(337, 85, '_email', 'bwhite@test.ca'),
(338, 85, '_name', 'Barry White'),
(339, 85, '_props', 'a:2:{s:10:"first_name";s:5:"Barry";s:9:"last_name";s:5:"White";}'),
(340, 85, '_last_contacted', '2018-04-25 03:04:22'),
(341, 86, '_email', 'jjohnson@test.ca'),
(342, 86, '_name', 'John Johnson'),
(343, 86, '_props', 'a:2:{s:10:"first_name";s:4:"John";s:9:"last_name";s:7:"Johnson";}'),
(344, 86, '_last_contacted', '2018-04-25 23:48:12'),
(345, 87, '_email', 'zain.khan@msn.com'),
(346, 87, '_name', 'Austin Alan'),
(347, 87, '_props', 'a:2:{s:10:"first_name";s:4:"Zain";s:9:"last_name";s:1:"K";}'),
(348, 87, '_last_contacted', '2018-05-02 00:04:25'),
(349, 88, '_email', 'mturner@test.ca'),
(350, 88, '_name', 'Micheal Turner'),
(351, 88, '_props', 'a:2:{s:10:"first_name";s:7:"Micheal";s:9:"last_name";s:6:"Turner";}'),
(352, 88, '_last_contacted', '2018-04-24 23:25:56'),
(353, 89, '_email', 'zain@test.ca'),
(354, 89, '_name', '[your-name]'),
(355, 89, '_props', 'a:0:{}'),
(356, 89, '_last_contacted', '2018-05-06 17:07:59'),
(357, 84, '_flamingo', 'a:1:{s:7:"channel";i:12;}'),
(358, 90, '_subject', '[your-subject]'),
(359, 90, '_from', '[your-name] <zain@test.ca>'),
(360, 90, '_from_name', '[your-name]'),
(361, 90, '_from_email', 'zain@test.ca'),
(362, 90, '_field_your-email', 'zain@test.ca'),
(363, 90, '_fields', 'a:1:{s:10:"your-email";N;}'),
(364, 90, '_meta', 'a:19:{s:13:"serial_number";i:1;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 17, 2018";s:4:"time";s:8:"12:03 am";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:8:"mangobug";s:10:"user_email";s:17:"zain.khan@msn.com";s:17:"user_display_name";s:11:"Austin Alan";}'),
(365, 90, '_akismet', NULL),
(366, 90, '_consent', 'a:0:{}'),
(367, 91, '_subject', '[your-subject]'),
(368, 91, '_from', '[your-name] <zain.khan@msn.com>'),
(369, 91, '_from_name', '[your-name]'),
(370, 91, '_from_email', 'zain.khan@msn.com'),
(371, 91, '_field_your-email', 'zain.khan@msn.com'),
(372, 91, '_fields', 'a:1:{s:10:"your-email";N;}'),
(373, 91, '_meta', 'a:19:{s:13:"serial_number";i:2;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 17, 2018";s:4:"time";s:8:"12:17 am";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:8:"mangobug";s:10:"user_email";s:17:"zain.khan@msn.com";s:17:"user_display_name";s:11:"Austin Alan";}'),
(374, 91, '_akismet', NULL),
(375, 91, '_consent', 'a:0:{}'),
(376, 92, '_email', 'z@te.ca'),
(377, 92, '_name', '[your-name]'),
(378, 92, '_props', 'a:0:{}'),
(379, 92, '_last_contacted', '2018-05-04 23:28:03'),
(380, 93, '_subject', '[your-subject]'),
(381, 93, '_from', '[your-name] <z@te.ca>'),
(382, 93, '_from_name', '[your-name]'),
(383, 93, '_from_email', 'z@te.ca'),
(384, 93, '_field_your-email', 'z@te.ca'),
(385, 93, '_fields', 'a:1:{s:10:"your-email";N;}'),
(386, 93, '_meta', 'a:19:{s:13:"serial_number";i:3;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:135:"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Mobile Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 17, 2018";s:4:"time";s:8:"12:29 am";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:8:"mangobug";s:10:"user_email";s:17:"zain.khan@msn.com";s:17:"user_display_name";s:11:"Austin Alan";}'),
(387, 93, '_akismet', NULL),
(388, 93, '_consent', 'a:0:{}'),
(389, 94, '_subject', '[your-subject]'),
(390, 94, '_from', '[your-name] <z@te.ca>'),
(391, 94, '_from_name', '[your-name]'),
(392, 94, '_from_email', 'z@te.ca'),
(393, 94, '_field_your-email', 'z@te.ca'),
(394, 94, '_fields', 'a:1:{s:10:"your-email";N;}'),
(395, 94, '_meta', 'a:19:{s:13:"serial_number";i:4;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:135:"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Mobile Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 17, 2018";s:4:"time";s:8:"12:29 am";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:8:"mangobug";s:10:"user_email";s:17:"zain.khan@msn.com";s:17:"user_display_name";s:11:"Austin Alan";}'),
(396, 94, '_akismet', NULL),
(397, 94, '_consent', 'a:0:{}'),
(398, 95, '_email', 'hel@jl.ca'),
(399, 95, '_name', '[your-name]'),
(400, 95, '_props', 'a:0:{}'),
(401, 95, '_last_contacted', '2018-04-25 21:44:28'),
(402, 96, '_subject', '[your-subject]'),
(403, 96, '_from', '[your-name] <hel@jl.ca>'),
(404, 96, '_from_name', '[your-name]'),
(405, 96, '_from_email', 'hel@jl.ca'),
(406, 96, '_field_your-email', 'hel@jl.ca'),
(407, 96, '_fields', 'a:1:{s:10:"your-email";N;}'),
(408, 96, '_meta', 'a:19:{s:13:"serial_number";i:5;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 17, 2018";s:4:"time";s:8:"12:32 am";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:8:"mangobug";s:10:"user_email";s:17:"zain.khan@msn.com";s:17:"user_display_name";s:11:"Austin Alan";}'),
(409, 96, '_akismet', NULL),
(410, 96, '_consent', 'a:0:{}'),
(411, 97, '_subject', '[your-subject]'),
(412, 97, '_from', '[your-name] <z@te.ca>'),
(413, 97, '_from_name', '[your-name]'),
(414, 97, '_from_email', 'z@te.ca'),
(415, 97, '_field_your-email', 'z@te.ca'),
(416, 97, '_fields', 'a:1:{s:10:"your-email";N;}'),
(417, 97, '_meta', 'a:19:{s:13:"serial_number";i:6;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 17, 2018";s:4:"time";s:8:"12:33 am";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:8:"mangobug";s:10:"user_email";s:17:"zain.khan@msn.com";s:17:"user_display_name";s:11:"Austin Alan";}'),
(418, 97, '_akismet', NULL),
(419, 97, '_consent', 'a:0:{}'),
(420, 98, '_subject', '[your-subject]'),
(421, 98, '_from', '[your-name] <z@te.ca>'),
(422, 98, '_from_name', '[your-name]'),
(423, 98, '_from_email', 'z@te.ca'),
(424, 98, '_field_your-email', 'z@te.ca'),
(425, 98, '_fields', 'a:1:{s:10:"your-email";N;}'),
(426, 98, '_meta', 'a:19:{s:13:"serial_number";i:7;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 17, 2018";s:4:"time";s:8:"12:35 am";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:8:"mangobug";s:10:"user_email";s:17:"zain.khan@msn.com";s:17:"user_display_name";s:11:"Austin Alan";}'),
(427, 98, '_akismet', NULL),
(428, 98, '_consent', 'a:0:{}'),
(429, 99, '_wp_attached_file', '2018/04/Aerial-View.jpg'),
(430, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4000;s:6:"height";i:3000;s:4:"file";s:23:"2018/04/Aerial-View.jpg";s:5:"sizes";a:14:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Aerial-View-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"Aerial-View-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"Aerial-View-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"Aerial-View-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"featured-slideshow";a:4:{s:4:"file";s:23:"Aerial-View-309x514.jpg";s:5:"width";i:309;s:6:"height";i:514;s:9:"mime-type";s:10:"image/jpeg";}s:12:"featured-big";a:4:{s:4:"file";s:23:"Aerial-View-369x408.jpg";s:5:"width";i:369;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:23:"Aerial-View-369x196.jpg";s:5:"width";i:369;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:21:"Aerial-View-60x58.jpg";s:5:"width";i:60;s:6:"height";i:58;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-blog";a:4:{s:4:"file";s:23:"Aerial-View-760x291.jpg";s:5:"width";i:760;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home-post";a:4:{s:4:"file";s:23:"Aerial-View-321x209.jpg";s:5:"width";i:321;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:16:"home-post-iphone";a:4:{s:4:"file";s:23:"Aerial-View-300x331.jpg";s:5:"width";i:300;s:6:"height";i:331;s:9:"mime-type";s:10:"image/jpeg";}s:11:"home-medium";a:4:{s:4:"file";s:23:"Aerial-View-299x165.jpg";s:5:"width";i:299;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"home-small";a:4:{s:4:"file";s:23:"Aerial-View-224x124.jpg";s:5:"width";i:224;s:6:"height";i:124;s:9:"mime-type";s:10:"image/jpeg";}s:9:"blog-post";a:4:{s:4:"file";s:23:"Aerial-View-368x203.jpg";s:5:"width";i:368;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:5:"FC350";s:7:"caption";s:24:"DCIM100MEDIADJI_0027.JPG";s:17:"created_timestamp";s:10:"1459250759";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.61";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.001";s:5:"title";s:24:"DCIM100MEDIADJI_0027.JPG";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(431, 100, '_wp_attached_file', '2018/04/Post-Image.jpg'),
(432, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1915;s:6:"height";i:1183;s:4:"file";s:22:"2018/04/Post-Image.jpg";s:5:"sizes";a:14:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Post-Image-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Post-Image-300x185.jpg";s:5:"width";i:300;s:6:"height";i:185;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Post-Image-768x474.jpg";s:5:"width";i:768;s:6:"height";i:474;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Post-Image-1024x633.jpg";s:5:"width";i:1024;s:6:"height";i:633;s:9:"mime-type";s:10:"image/jpeg";}s:18:"featured-slideshow";a:4:{s:4:"file";s:22:"Post-Image-309x514.jpg";s:5:"width";i:309;s:6:"height";i:514;s:9:"mime-type";s:10:"image/jpeg";}s:12:"featured-big";a:4:{s:4:"file";s:22:"Post-Image-369x408.jpg";s:5:"width";i:369;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:22:"Post-Image-369x196.jpg";s:5:"width";i:369;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:20:"Post-Image-60x58.jpg";s:5:"width";i:60;s:6:"height";i:58;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-blog";a:4:{s:4:"file";s:22:"Post-Image-760x291.jpg";s:5:"width";i:760;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home-post";a:4:{s:4:"file";s:22:"Post-Image-321x209.jpg";s:5:"width";i:321;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:16:"home-post-iphone";a:4:{s:4:"file";s:22:"Post-Image-300x331.jpg";s:5:"width";i:300;s:6:"height";i:331;s:9:"mime-type";s:10:"image/jpeg";}s:11:"home-medium";a:4:{s:4:"file";s:22:"Post-Image-299x165.jpg";s:5:"width";i:299;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"home-small";a:4:{s:4:"file";s:22:"Post-Image-224x124.jpg";s:5:"width";i:224;s:6:"height";i:124;s:9:"mime-type";s:10:"image/jpeg";}s:9:"blog-post";a:4:{s:4:"file";s:22:"Post-Image-368x203.jpg";s:5:"width";i:368;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(436, 101, '_thumbnail_id', '22'),
(437, 101, '_dp_original', '23'),
(438, 101, '_edit_lock', '1524278077:1'),
(439, 101, '_edit_last', '1'),
(441, 103, '_thumbnail_id', '137'),
(443, 103, '_dp_original', '101'),
(444, 103, '_edit_lock', '1524627778:1'),
(445, 103, '_edit_last', '1'),
(446, 105, '_thumbnail_id', '106'),
(448, 105, '_dp_original', '103'),
(449, 105, '_edit_lock', '1524928273:1'),
(450, 106, '_wp_attached_file', '2018/04/BWLogan.jpg'),
(451, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:768;s:6:"height";i:433;s:4:"file";s:19:"2018/04/BWLogan.jpg";s:5:"sizes";a:13:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"BWLogan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"BWLogan-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"BWLogan-768x433.jpg";s:5:"width";i:768;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";}s:18:"featured-slideshow";a:4:{s:4:"file";s:19:"BWLogan-309x433.jpg";s:5:"width";i:309;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";}s:12:"featured-big";a:4:{s:4:"file";s:19:"BWLogan-369x408.jpg";s:5:"width";i:369;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:19:"BWLogan-369x196.jpg";s:5:"width";i:369;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:17:"BWLogan-60x58.jpg";s:5:"width";i:60;s:6:"height";i:58;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-blog";a:4:{s:4:"file";s:19:"BWLogan-760x291.jpg";s:5:"width";i:760;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home-post";a:4:{s:4:"file";s:19:"BWLogan-321x209.jpg";s:5:"width";i:321;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:16:"home-post-iphone";a:4:{s:4:"file";s:19:"BWLogan-300x331.jpg";s:5:"width";i:300;s:6:"height";i:331;s:9:"mime-type";s:10:"image/jpeg";}s:11:"home-medium";a:4:{s:4:"file";s:19:"BWLogan-299x165.jpg";s:5:"width";i:299;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"home-small";a:4:{s:4:"file";s:19:"BWLogan-224x124.jpg";s:5:"width";i:224;s:6:"height";i:124;s:9:"mime-type";s:10:"image/jpeg";}s:9:"blog-post";a:4:{s:4:"file";s:19:"BWLogan-368x203.jpg";s:5:"width";i:368;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(452, 105, '_edit_last', '1'),
(458, 108, '_email', 'test@ca.ca'),
(459, 108, '_name', '[your-name]'),
(460, 108, '_props', 'a:0:{}'),
(461, 108, '_last_contacted', '2018-04-29 01:51:28'),
(462, 109, '_subject', '[your-subject]'),
(463, 109, '_from', '[your-name] <test@ca.ca>'),
(464, 109, '_from_name', '[your-name]'),
(465, 109, '_from_email', 'test@ca.ca'),
(466, 109, '_field_your-email', 'test@ca.ca'),
(467, 109, '_fields', 'a:1:{s:10:"your-email";N;}'),
(468, 109, '_meta', 'a:19:{s:13:"serial_number";i:8;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 21, 2018";s:4:"time";s:7:"3:27 am";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:8:"mangobug";s:10:"user_email";s:17:"zain.khan@msn.com";s:17:"user_display_name";s:11:"Austin Alan";}'),
(469, 109, '_akismet', NULL),
(470, 109, '_consent', 'a:0:{}'),
(471, 92, '_wp_old_date', '2018-04-17'),
(472, 110, '_subject', '[your-subject]'),
(473, 110, '_from', '[your-name] <z@te.ca>'),
(474, 110, '_from_name', '[your-name]'),
(475, 110, '_from_email', 'z@te.ca'),
(476, 110, '_field_your-email', 'z@te.ca'),
(477, 110, '_fields', 'a:1:{s:10:"your-email";N;}'),
(478, 110, '_meta', 'a:19:{s:13:"serial_number";i:9;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:42:"http://localhost:8888/oxford/?s=leadership";s:4:"date";s:14:"April 21, 2018";s:4:"time";s:7:"8:45 pm";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:0:"";s:10:"user_email";s:0:"";s:17:"user_display_name";s:0:"";}'),
(479, 110, '_akismet', NULL),
(480, 110, '_consent', 'a:0:{}'),
(481, 89, '_wp_old_date', '2018-04-17'),
(482, 111, '_subject', '[your-subject]'),
(483, 111, '_from', '[your-name] <zain@test.ca>'),
(484, 111, '_from_name', '[your-name]'),
(485, 111, '_from_email', 'zain@test.ca'),
(486, 111, '_field_your-email', 'zain@test.ca'),
(487, 111, '_fields', 'a:1:{s:10:"your-email";N;}'),
(488, 111, '_meta', 'a:19:{s:13:"serial_number";i:10;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 21, 2018";s:4:"time";s:7:"8:45 pm";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:0:"";s:10:"user_email";s:0:"";s:17:"user_display_name";s:0:"";}'),
(489, 111, '_akismet', NULL),
(490, 111, '_consent', 'a:0:{}'),
(491, 113, '_edit_lock', '1524931638:1'),
(492, 113, '_edit_last', '1'),
(493, 113, 'field_5adbd15f8629d', 'a:11:{s:3:"key";s:19:"field_5adbd15f8629d";s:5:"label";s:14:"Featured Image";s:4:"name";s:14:"featured_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(496, 113, 'position', 'normal'),
(497, 113, 'layout', 'no_box'),
(498, 113, 'hide_on_screen', ''),
(500, 87, '_wp_old_date', '2018-04-17'),
(501, 87, 'featured_image', '99'),
(502, 87, '_featured_image', 'field_5adbd15f8629d'),
(503, 87, '_', 'field_5adbd1a08629e'),
(505, 82, '_edit_lock', '1524608521:1'),
(510, 118, '_edit_lock', '1524440455:1'),
(511, 118, '_edit_last', '1'),
(512, 118, 'post__in', ''),
(513, 118, 'post__not_in', ''),
(514, 118, 'limit', ''),
(515, 118, 'layout', 'isotope1'),
(516, 118, 'isotope_filter', 'category'),
(517, 118, 'tgp_layout2_image_column', '4'),
(518, 118, 'column', '3'),
(519, 118, 'pagination', '1'),
(520, 118, 'posts_per_page', '6'),
(521, 118, 'featured_image', NULL),
(522, 118, 'featured_image_size', 'thumbnail'),
(523, 118, 'media_source', 'feature_image'),
(524, 118, 'tgp_excerpt_type', 'character'),
(525, 118, 'excerpt_limit', ''),
(526, 118, 'tgp_excerpt_more_text', '...'),
(527, 118, 'tgp_read_more_text', ''),
(528, 118, 'tpg_overlay', NULL),
(529, 118, 'primary_color', '#0367bf'),
(530, 118, 'button_bg_color', ''),
(531, 118, 'button_hover_bg_color', ''),
(532, 118, 'button_active_bg_color', ''),
(533, 118, 'button_text_color', ''),
(534, 118, 'title_color', ''),
(535, 118, 'tpg_post_type', 'post'),
(549, 118, 'order', 'DESC'),
(550, 118, 'order_by', 'ID'),
(552, 118, 'post_filter', 'tpg_taxonomy'),
(553, 118, 'post_filter', 'order'),
(554, 118, 'post_filter', 'author'),
(555, 118, 'post_filter', 'tpg_post_status'),
(556, 118, 'post_filter', 's'),
(557, 118, 'item_fields', 'title'),
(558, 118, 'item_fields', 'excerpt'),
(559, 118, 'item_fields', 'read_more'),
(560, 118, 'item_fields', 'post_date'),
(561, 118, 'item_fields', 'author'),
(562, 118, 'item_fields', 'categories'),
(563, 118, 'item_fields', 'tags'),
(564, 118, 'item_fields', 'comment_count'),
(565, 118, 'tpg_post_status', 'publish'),
(583, 113, 'field_5adfb0fa07522', 'a:14:{s:3:"key";s:19:"field_5adfb0fa07522";s:5:"label";s:9:"Job Title";s:4:"name";s:9:"job_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(585, 87, '_wp_old_date', '2018-04-22'),
(586, 87, 'job_title', 'Writer'),
(587, 87, '_job_title', 'field_5adfb0fa07522'),
(588, 136, '_wp_attached_file', '2018/04/F1-1.jpg'),
(589, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2872;s:6:"height";i:3590;s:4:"file";s:16:"2018/04/F1-1.jpg";s:5:"sizes";a:14:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"F1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"F1-1-240x300.jpg";s:5:"width";i:240;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"F1-1-768x960.jpg";s:5:"width";i:768;s:6:"height";i:960;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"F1-1-819x1024.jpg";s:5:"width";i:819;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:18:"featured-slideshow";a:4:{s:4:"file";s:16:"F1-1-309x514.jpg";s:5:"width";i:309;s:6:"height";i:514;s:9:"mime-type";s:10:"image/jpeg";}s:12:"featured-big";a:4:{s:4:"file";s:16:"F1-1-369x408.jpg";s:5:"width";i:369;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:16:"F1-1-369x196.jpg";s:5:"width";i:369;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:14:"F1-1-60x58.jpg";s:5:"width";i:60;s:6:"height";i:58;s:9:"mime-type";s:10:"image/jpeg";}s:13:"featured-blog";a:4:{s:4:"file";s:16:"F1-1-760x291.jpg";s:5:"width";i:760;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home-post";a:4:{s:4:"file";s:16:"F1-1-321x209.jpg";s:5:"width";i:321;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:16:"home-post-iphone";a:4:{s:4:"file";s:16:"F1-1-300x331.jpg";s:5:"width";i:300;s:6:"height";i:331;s:9:"mime-type";s:10:"image/jpeg";}s:11:"home-medium";a:4:{s:4:"file";s:16:"F1-1-299x165.jpg";s:5:"width";i:299;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:10:"home-small";a:4:{s:4:"file";s:16:"F1-1-224x124.jpg";s:5:"width";i:224;s:6:"height";i:124;s:9:"mime-type";s:10:"image/jpeg";}s:9:"blog-post";a:4:{s:4:"file";s:16:"F1-1-368x203.jpg";s:5:"width";i:368;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"9";s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1363587319";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"75";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(591, 85, '_wp_old_date', '2018-04-17'),
(592, 85, 'featured_image', ''),
(593, 85, '_featured_image', 'field_5adbd15f8629d'),
(594, 85, 'job_title', 'Professional Writer'),
(595, 85, '_job_title', 'field_5adfb0fa07522'),
(597, 86, '_wp_old_date', '2018-04-17'),
(598, 86, 'featured_image', '99'),
(599, 86, '_featured_image', 'field_5adbd15f8629d'),
(600, 86, 'job_title', 'Content Creator'),
(601, 86, '_job_title', 'field_5adfb0fa07522'),
(603, 88, '_wp_old_date', '2018-04-17'),
(604, 88, 'featured_image', ''),
(605, 88, '_featured_image', 'field_5adbd15f8629d'),
(606, 88, 'job_title', 'Freelance Writer'),
(607, 88, '_job_title', 'field_5adfb0fa07522'),
(608, 65, '_wp_attachment_wp_user_avatar', '2'),
(612, 113, 'field_5adfef8fcd021', 'a:14:{s:3:"key";s:19:"field_5adfef8fcd021";s:5:"label";s:8:"Facebook";s:4:"name";s:8:"facebook";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(613, 113, 'field_5adfefeecd023', 'a:14:{s:3:"key";s:19:"field_5adfefeecd023";s:5:"label";s:7:"Twitter";s:4:"name";s:7:"twitter";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(614, 113, 'field_5adfeffbcd024', 'a:14:{s:3:"key";s:19:"field_5adfeffbcd024";s:5:"label";s:8:"LinkedIn";s:4:"name";s:8:"linkedin";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(617, 85, '_wp_old_date', '2018-04-24'),
(618, 85, 'facebook', 'http://facebook.com/something'),
(619, 85, '_facebook', 'field_5adfef8fcd021'),
(620, 85, 'twitter', 'http://twitter.com/something'),
(621, 85, '_twitter', 'field_5adfefeecd023'),
(622, 85, 'linkedin', 'http://linkedin.com/something'),
(623, 85, '_linkedin', 'field_5adfeffbcd024'),
(624, 137, '_wp_attached_file', '2018/04/Layer-6.png'),
(625, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:369;s:6:"height";i:341;s:4:"file";s:19:"2018/04/Layer-6.png";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Layer-6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"Layer-6-300x277.png";s:5:"width";i:300;s:6:"height";i:277;s:9:"mime-type";s:9:"image/png";}s:18:"featured-slideshow";a:4:{s:4:"file";s:19:"Layer-6-309x341.png";s:5:"width";i:309;s:6:"height";i:341;s:9:"mime-type";s:9:"image/png";}s:12:"featured-big";a:4:{s:4:"file";s:19:"Layer-6-369x341.png";s:5:"width";i:369;s:6:"height";i:341;s:9:"mime-type";s:9:"image/png";}s:15:"featured-medium";a:4:{s:4:"file";s:19:"Layer-6-369x196.png";s:5:"width";i:369;s:6:"height";i:196;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:17:"Layer-6-60x58.png";s:5:"width";i:60;s:6:"height";i:58;s:9:"mime-type";s:9:"image/png";}s:13:"featured-blog";a:4:{s:4:"file";s:19:"Layer-6-369x291.png";s:5:"width";i:369;s:6:"height";i:291;s:9:"mime-type";s:9:"image/png";}s:9:"home-post";a:4:{s:4:"file";s:19:"Layer-6-321x209.png";s:5:"width";i:321;s:6:"height";i:209;s:9:"mime-type";s:9:"image/png";}s:16:"home-post-iphone";a:4:{s:4:"file";s:19:"Layer-6-300x331.png";s:5:"width";i:300;s:6:"height";i:331;s:9:"mime-type";s:9:"image/png";}s:11:"home-medium";a:4:{s:4:"file";s:19:"Layer-6-299x165.png";s:5:"width";i:299;s:6:"height";i:165;s:9:"mime-type";s:9:"image/png";}s:10:"home-small";a:4:{s:4:"file";s:19:"Layer-6-224x124.png";s:5:"width";i:224;s:6:"height";i:124;s:9:"mime-type";s:9:"image/png";}s:9:"blog-post";a:4:{s:4:"file";s:19:"Layer-6-368x203.png";s:5:"width";i:368;s:6:"height";i:203;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(627, 92, '_wp_old_date', '2018-04-21'),
(628, 138, '_subject', '[your-subject]'),
(629, 138, '_from', '[your-name] <z@te.ca>'),
(630, 138, '_from_name', '[your-name]'),
(631, 138, '_from_email', 'z@te.ca'),
(632, 138, '_field_your-email', 'z@te.ca'),
(633, 138, '_fields', 'a:1:{s:10:"your-email";N;}'),
(634, 138, '_meta', 'a:19:{s:13:"serial_number";i:11;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 25, 2018";s:4:"time";s:7:"9:42 pm";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:0:"";s:10:"user_email";s:0:"";s:17:"user_display_name";s:0:"";}'),
(635, 138, '_akismet', NULL),
(636, 138, '_consent', 'a:0:{}'),
(637, 89, '_wp_old_date', '2018-04-21'),
(638, 139, '_subject', '[your-subject]'),
(639, 139, '_from', '[your-name] <zain@test.ca>'),
(640, 139, '_from_name', '[your-name]'),
(641, 139, '_from_email', 'zain@test.ca'),
(642, 139, '_field_your-email', 'zain@test.ca'),
(643, 139, '_fields', 'a:1:{s:10:"your-email";N;}'),
(644, 139, '_meta', 'a:19:{s:13:"serial_number";i:12;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 25, 2018";s:4:"time";s:7:"9:43 pm";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:0:"";s:10:"user_email";s:0:"";s:17:"user_display_name";s:0:"";}'),
(645, 139, '_akismet', NULL),
(646, 139, '_consent', 'a:0:{}'),
(647, 95, '_wp_old_date', '2018-04-17'),
(648, 140, '_subject', '[your-subject]'),
(649, 140, '_from', '[your-name] <hel@jl.ca>'),
(650, 140, '_from_name', '[your-name]'),
(651, 140, '_from_email', 'hel@jl.ca'),
(652, 140, '_field_your-email', 'hel@jl.ca'),
(653, 140, '_fields', 'a:1:{s:10:"your-email";N;}'),
(654, 140, '_meta', 'a:19:{s:13:"serial_number";i:13;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 25, 2018";s:4:"time";s:7:"9:44 pm";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:0:"";s:10:"user_email";s:0:"";s:17:"user_display_name";s:0:"";}'),
(655, 140, '_akismet', NULL),
(656, 140, '_consent', 'a:0:{}'),
(658, 141, 'featured_image', ''),
(659, 141, '_featured_image', 'field_5adbd15f8629d'),
(660, 141, 'job_title', 'Professional Writer'),
(661, 141, '_job_title', 'field_5adfb0fa07522'),
(662, 141, 'facebook', 'http://facebook.com/something'),
(663, 141, '_facebook', 'field_5adfef8fcd021'),
(664, 141, 'twitter', 'http://twitter.com/something'),
(665, 141, '_twitter', 'field_5adfefeecd023'),
(666, 141, 'linkedin', 'http://linkedin.com/something'),
(667, 141, '_linkedin', 'field_5adfeffbcd024');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(668, 141, '_email', 'bwhile@test.ca'),
(669, 141, '_name', 'Barry'),
(670, 141, '_props', 'a:2:{s:10:"first_name";s:5:"Barry";s:9:"last_name";s:5:"While";}'),
(671, 141, '_last_contacted', '2018-04-25 22:06:59'),
(673, 86, '_wp_old_date', '2018-04-24'),
(674, 86, 'facebook', 'http://facebook.com/something'),
(675, 86, '_facebook', 'field_5adfef8fcd021'),
(676, 86, 'twitter', 'http://twitter.com/something'),
(677, 86, '_twitter', 'field_5adfefeecd023'),
(678, 86, 'linkedin', 'http://linkedin.com/something'),
(679, 86, '_linkedin', 'field_5adfeffbcd024'),
(683, 106, '_wp_attachment_wp_user_avatar', '3'),
(685, 142, 'featured_image', '99'),
(686, 142, '_featured_image', 'field_5adbd15f8629d'),
(687, 142, 'job_title', 'Professional Writer'),
(688, 142, '_job_title', 'field_5adfb0fa07522'),
(689, 142, 'facebook', 'http://facebook.com/something'),
(690, 142, '_facebook', 'field_5adfef8fcd021'),
(691, 142, 'twitter', 'http://twitter.com/something'),
(692, 142, '_twitter', 'field_5adfefeecd023'),
(693, 142, 'linkedin', 'http://linkedin.com/something'),
(694, 142, '_linkedin', 'field_5adfeffbcd024'),
(695, 142, '_email', 'banderson@test.ca'),
(696, 142, '_name', 'Barry'),
(697, 142, '_props', 'a:2:{s:10:"first_name";s:5:"Barry";s:9:"last_name";s:8:"Anderson";}'),
(698, 142, '_last_contacted', '2018-04-28 16:10:16'),
(703, 143, '_email', 'steve@test.ca'),
(704, 143, '_name', '[your-name]'),
(705, 143, '_props', 'a:0:{}'),
(706, 143, '_last_contacted', '2018-04-27 19:54:10'),
(707, 144, '_subject', '[your-subject]'),
(708, 144, '_from', '[your-name] <steve@test.ca>'),
(709, 144, '_from_name', '[your-name]'),
(710, 144, '_from_email', 'steve@test.ca'),
(711, 144, '_field_your-email', 'steve@test.ca'),
(712, 144, '_fields', 'a:1:{s:10:"your-email";N;}'),
(713, 144, '_meta', 'a:19:{s:13:"serial_number";i:14;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 27, 2018";s:4:"time";s:7:"7:54 pm";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:0:"";s:10:"user_email";s:0:"";s:17:"user_display_name";s:0:"";}'),
(714, 144, '_akismet', NULL),
(715, 144, '_consent', 'a:0:{}'),
(717, 113, 'field_5ae49c8a5ecb2', 'a:13:{s:3:"key";s:19:"field_5ae49c8a5ecb2";s:5:"label";s:9:"Biography";s:4:"name";s:9:"biography";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(718, 113, 'field_5ae49ca85ecb3', 'a:13:{s:3:"key";s:19:"field_5ae49ca85ecb3";s:5:"label";s:17:"Biography Summary";s:4:"name";s:17:"biography_summary";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:3:"150";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(719, 113, 'rule', 'a:5:{s:5:"param";s:7:"ef_user";s:8:"operator";s:2:"==";s:5:"value";s:3:"all";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(720, 136, '_wp_attachment_wp_user_avatar', '4'),
(721, 142, '_wp_old_date', '2018-04-26'),
(722, 142, 'biography', 'Barry While writes books, which, considering where you’re reading this, makes perfect sense. He’s best known for writing science fiction, including the New York Times bestseller Redshirts, which won the Hugo Award for Best Novel. He also writes non-fiction, on subjects ranging from personal finance to astronomy to film, was the Creative Consultant for the Stargate: Universe television series. He enjoys pie, as should all right thinking people. You can get to his blog by typing the word “Whatever” into Google. No, seriously, try it. Barry While writes books, which, considering where you’re reading this, makes perfect sense. \r\nHe’s best known for writing science fiction, including the New York Times bestseller Redshirts, which won the Hugo Award for Best Novel. He also writes non-fiction, on subjects ranging from personal finance to astronomy to film, was the Creative Consultant for the Stargate: Universe television series. He enjoys pie, as should all right thinking people. You can get to his blog by typing the word “Whatever” into Google. No, seriously, try it.'),
(723, 142, '_biography', 'field_5ae49c8a5ecb2'),
(724, 142, 'biography_summary', 'Barry While writes books, which, considering where you’re reading this, makes perfect sense. He’s best known for writing science fiction.'),
(725, 142, '_biography_summary', 'field_5ae49ca85ecb3'),
(726, 108, '_wp_old_date', '2018-04-21'),
(727, 145, '_subject', '[your-subject]'),
(728, 145, '_from', '[your-name] <test@ca.ca>'),
(729, 145, '_from_name', '[your-name]'),
(730, 145, '_from_email', 'test@ca.ca'),
(731, 145, '_field_your-email', 'test@ca.ca'),
(732, 145, '_fields', 'a:1:{s:10:"your-email";N;}'),
(733, 145, '_meta', 'a:19:{s:13:"serial_number";i:15;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 28, 2018";s:4:"time";s:7:"8:51 pm";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:0:"";s:10:"user_email";s:0:"";s:17:"user_display_name";s:0:"";}'),
(734, 145, '_akismet', NULL),
(735, 145, '_consent', 'a:0:{}'),
(736, 92, '_wp_old_date', '2018-04-25'),
(737, 146, '_subject', '[your-subject]'),
(738, 146, '_from', '[your-name] <z@te.ca>'),
(739, 146, '_from_name', '[your-name]'),
(740, 146, '_from_email', 'z@te.ca'),
(741, 146, '_field_your-email', 'z@te.ca'),
(742, 146, '_fields', 'a:1:{s:10:"your-email";N;}'),
(743, 146, '_meta', 'a:19:{s:13:"serial_number";i:16;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 29, 2018";s:4:"time";s:7:"1:47 am";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:0:"";s:10:"user_email";s:0:"";s:17:"user_display_name";s:0:"";}'),
(744, 146, '_akismet', NULL),
(745, 146, '_consent', 'a:0:{}'),
(746, 108, '_wp_old_date', '2018-04-28'),
(747, 147, '_subject', '[your-subject]'),
(748, 147, '_from', '[your-name] <test@ca.ca>'),
(749, 147, '_from_name', '[your-name]'),
(750, 147, '_from_email', 'test@ca.ca'),
(751, 147, '_field_your-email', 'test@ca.ca'),
(752, 147, '_fields', 'a:1:{s:10:"your-email";N;}'),
(753, 147, '_meta', 'a:19:{s:13:"serial_number";i:17;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 29, 2018";s:4:"time";s:7:"1:51 am";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:0:"";s:10:"user_email";s:0:"";s:17:"user_display_name";s:0:"";}'),
(754, 147, '_akismet', NULL),
(755, 147, '_consent', 'a:0:{}'),
(756, 148, '_email', '1test@ca.ca'),
(757, 148, '_name', '[your-name]'),
(758, 148, '_props', 'a:0:{}'),
(759, 148, '_last_contacted', '2018-04-29 01:54:20'),
(760, 149, '_subject', '[your-subject]'),
(761, 149, '_from', '[your-name] <1test@ca.ca>'),
(762, 149, '_from_name', '[your-name]'),
(763, 149, '_from_email', '1test@ca.ca'),
(764, 149, '_field_your-email', '1test@ca.ca'),
(765, 149, '_fields', 'a:1:{s:10:"your-email";N;}'),
(766, 149, '_meta', 'a:19:{s:13:"serial_number";i:18;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:14:"April 29, 2018";s:4:"time";s:7:"1:54 am";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:0:"";s:10:"user_email";s:0:"";s:17:"user_display_name";s:0:"";}'),
(767, 149, '_akismet', NULL),
(768, 149, '_consent', 'a:0:{}'),
(769, 87, '_wp_old_date', '2018-04-24'),
(770, 87, 'facebook', ''),
(771, 87, '_facebook', 'field_5adfef8fcd021'),
(772, 87, 'twitter', ''),
(773, 87, '_twitter', 'field_5adfefeecd023'),
(774, 87, 'linkedin', ''),
(775, 87, '_linkedin', 'field_5adfeffbcd024'),
(776, 87, 'biography', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.'),
(777, 87, '_biography', 'field_5ae49c8a5ecb2'),
(778, 87, 'biography_summary', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500'),
(779, 87, '_biography_summary', 'field_5ae49ca85ecb3'),
(780, 151, '_thumbnail_id', '106'),
(782, 151, '_dp_original', '105'),
(783, 152, '_thumbnail_id', '106'),
(785, 152, '_dp_original', '151'),
(786, 153, '_thumbnail_id', '106'),
(788, 153, '_dp_original', '152'),
(789, 151, '_edit_lock', '1525384258:1'),
(790, 151, '_edit_last', '1'),
(792, 151, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(793, 153, '_edit_lock', '1525384265:1'),
(794, 152, '_edit_lock', '1525384268:1'),
(795, 153, '_edit_last', '1'),
(797, 153, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(798, 152, '_edit_last', '1'),
(800, 152, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(801, 92, '_wp_old_date', '2018-04-29'),
(802, 157, '_subject', '[your-subject]'),
(803, 157, '_from', '[your-name] <z@te.ca>'),
(804, 157, '_from_name', '[your-name]'),
(805, 157, '_from_email', 'z@te.ca'),
(806, 157, '_field_your-email', 'z@te.ca'),
(807, 157, '_fields', 'a:1:{s:10:"your-email";N;}'),
(808, 157, '_meta', 'a:19:{s:13:"serial_number";i:19;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:11:"May 4, 2018";s:4:"time";s:8:"11:28 pm";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:0:"";s:10:"user_email";s:0:"";s:17:"user_display_name";s:0:"";}'),
(809, 157, '_akismet', NULL),
(810, 157, '_consent', 'a:0:{}'),
(811, 89, '_wp_old_date', '2018-04-25'),
(812, 158, '_subject', '[your-subject]'),
(813, 158, '_from', '[your-name] <zain@test.ca>'),
(814, 158, '_from_name', '[your-name]'),
(815, 158, '_from_email', 'zain@test.ca'),
(816, 158, '_field_your-email', 'zain@test.ca'),
(817, 158, '_fields', 'a:1:{s:10:"your-email";N;}'),
(818, 158, '_meta', 'a:19:{s:13:"serial_number";i:20;s:9:"remote_ip";s:3:"::1";s:10:"user_agent";s:135:"Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1";s:3:"url";s:29:"http://localhost:8888/oxford/";s:4:"date";s:11:"May 6, 2018";s:4:"time";s:7:"5:07 pm";s:7:"post_id";s:0:"";s:9:"post_name";s:0:"";s:10:"post_title";s:0:"";s:8:"post_url";s:0:"";s:11:"post_author";s:0:"";s:17:"post_author_email";s:0:"";s:10:"site_title";s:17:"Oxford Properties";s:16:"site_description";s:27:"Just another WordPress site";s:8:"site_url";s:28:"http://localhost:8888/oxford";s:16:"site_admin_email";s:17:"zain.khan@msn.com";s:10:"user_login";s:0:"";s:10:"user_email";s:0:"";s:17:"user_display_name";s:0:"";}'),
(819, 158, '_akismet', NULL),
(820, 158, '_consent', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2018-04-15 04:53:39', '2018-04-15 04:53:39', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost:8888/oxford/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-04-15 07:07:38', '2018-04-15 07:07:38', '', 0, 'http://localhost:8888/oxford/?page_id=2', 0, 'page', '', 0),
(22, 1, '2018-04-15 05:02:15', '2018-04-15 05:02:15', '', 'IJM_3085_WEB1-321x209', '', 'inherit', 'open', 'closed', '', 'ijm_3085_web1-321x209', '', '', '2018-04-15 05:02:15', '2018-04-15 05:02:15', '', 0, 'http://localhost:8888/oxford/wp-content/uploads/2018/04/IJM_3085_WEB1-321x209.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 2, '2018-04-15 05:03:30', '2018-04-15 05:03:30', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'A vision statement for Vancouver', '', 'publish', 'open', 'open', '', 'a-vision-statement-for-vancouver', '', '', '2018-04-15 06:42:49', '2018-04-15 06:42:49', '', 0, 'http://localhost:8888/oxford/?p=23', 0, 'post', '', 0),
(24, 1, '2018-04-15 05:03:30', '2018-04-15 05:03:30', '', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-04-15 05:03:30', '2018-04-15 05:03:30', '', 23, 'http://localhost:8888/oxford/2018/04/15/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-04-15 05:05:48', '2018-04-15 05:05:48', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-04-15 05:05:48', '2018-04-15 05:05:48', '', 23, 'http://localhost:8888/oxford/2018/04/15/23-revision-v1/', 0, 'revision', '', 0),
(26, 4, '2018-04-15 05:08:55', '2018-04-15 05:08:55', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'Designed with the customer first in mind', '', 'publish', 'open', 'open', '', 'designed-with-the-customer-first-in-mind', '', '', '2018-04-15 06:43:16', '2018-04-15 06:43:16', '', 0, 'http://localhost:8888/oxford/?p=26', 0, 'post', '', 0),
(27, 3, '2018-04-15 05:08:12', '2018-04-15 05:08:12', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'Smart cities, smart buildings', '', 'publish', 'open', 'open', '', 'smart-cities-smart-buildings', '', '', '2018-04-15 06:43:01', '2018-04-15 06:43:01', '', 0, 'http://localhost:8888/oxford/?p=27', 0, 'post', '', 0),
(28, 4, '2018-04-15 05:10:22', '2018-04-15 05:10:22', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'Promises made, promises kept', '', 'publish', 'open', 'open', '', 'promises-made-promises-kept', '', '', '2018-04-22 22:39:59', '2018-04-22 22:39:59', '', 0, 'http://localhost:8888/oxford/?p=28', 0, 'post', '', 0),
(29, 1, '2018-04-15 05:10:39', '2018-04-15 05:10:39', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'MNP Tower wins the 2017 BOMA Vancouver Pinnacle Award', '', 'publish', 'open', 'open', '', 'the-automation-threat', '', '', '2018-04-15 06:49:11', '2018-04-15 06:49:11', '', 0, 'http://localhost:8888/oxford/?p=29', 0, 'post', '', 0),
(30, 1, '2018-04-15 05:08:55', '2018-04-15 05:08:55', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'Designed with the customer first in mind', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-04-15 05:08:55', '2018-04-15 05:08:55', '', 26, 'http://localhost:8888/oxford/2018/04/15/26-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-04-15 05:09:34', '2018-04-15 05:09:34', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'Smart cities, smart buildings', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-04-15 05:09:34', '2018-04-15 05:09:34', '', 27, 'http://localhost:8888/oxford/2018/04/15/27-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-04-15 05:10:22', '2018-04-15 05:10:22', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'Promises made, promises kept', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-04-15 05:10:22', '2018-04-15 05:10:22', '', 28, 'http://localhost:8888/oxford/2018/04/15/28-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-04-15 05:10:39', '2018-04-15 05:10:39', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'The automation threat', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-04-15 05:10:39', '2018-04-15 05:10:39', '', 29, 'http://localhost:8888/oxford/2018/04/15/29-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-04-15 05:11:37', '2018-04-15 05:11:37', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'MNP Tower wins the 2017 BOMA Vancouver Pinnacle Award', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-04-15 05:11:37', '2018-04-15 05:11:37', '', 29, 'http://localhost:8888/oxford/2018/04/15/29-revision-v1/', 0, 'revision', '', 0),
(35, 4, '2018-04-15 05:12:20', '2018-04-15 05:12:20', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'A vision statement for Vancouver', '', 'publish', 'open', 'open', '', 'a-vision-statement-for-vancouver-2', '', '', '2018-04-22 22:39:53', '2018-04-22 22:39:53', '', 0, 'http://localhost:8888/oxford/?p=35', 0, 'post', '', 0),
(36, 1, '2018-04-15 05:12:20', '2018-04-15 05:12:20', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-04-15 05:12:20', '2018-04-15 05:12:20', '', 35, 'http://localhost:8888/oxford/2018/04/15/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-04-15 05:15:01', '2018-04-15 05:15:01', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'A vision statement for Vancouver', '', 'publish', 'open', 'open', '', 'a-vision-statement-for-vancouver-3', '', '', '2018-04-15 23:29:32', '2018-04-15 23:29:32', '', 0, 'http://localhost:8888/oxford/?p=37', 0, 'post', '', 0),
(38, 1, '2018-04-15 05:15:01', '2018-04-15 05:15:01', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-04-15 05:15:01', '2018-04-15 05:15:01', '', 37, 'http://localhost:8888/oxford/2018/04/15/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-04-15 05:31:15', '2018-04-15 05:31:15', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'MNP Tower wins the 2017 BOMA Vancouver Pinnacle Award', '', 'publish', 'open', 'open', '', 'mnp-tower-wins-the-2017-boma-vancouver-pinnacle-award', '', '', '2018-04-15 05:31:15', '2018-04-15 05:31:15', '', 0, 'http://localhost:8888/oxford/?p=39', 0, 'post', '', 0),
(40, 1, '2018-04-15 05:31:15', '2018-04-15 05:31:15', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'MNP Tower wins the 2017 BOMA Vancouver Pinnacle Award', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-04-15 05:31:15', '2018-04-15 05:31:15', '', 39, 'http://localhost:8888/oxford/2018/04/15/39-revision-v1/', 0, 'revision', '', 0),
(42, 4, '2018-04-15 05:32:04', '2018-04-15 05:32:04', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'MNP Tower wins the 2017 BOMA Vancouver Pinnacle Award', '', 'publish', 'open', 'open', '', 'mnp-tower-wins-the-2017-boma-vancouver-pinnacle-award-4', '', '', '2018-04-22 22:39:45', '2018-04-22 22:39:45', '', 0, 'http://localhost:8888/oxford/?p=42', 0, 'post', '', 0),
(47, 1, '2018-04-15 05:32:04', '2018-04-15 05:32:04', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'MNP Tower wins the 2017 BOMA Vancouver Pinnacle Award', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-04-15 05:32:04', '2018-04-15 05:32:04', '', 42, 'http://localhost:8888/oxford/2018/04/15/42-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-04-15 05:32:21', '2018-04-15 05:32:21', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'Promises made, promises kept', '', 'publish', 'open', 'open', '', 'promises-made-promises-kept-2', '', '', '2018-04-21 02:36:53', '2018-04-21 02:36:53', '', 0, 'http://localhost:8888/oxford/?p=49', 0, 'post', '', 0),
(50, 1, '2018-04-15 05:32:21', '2018-04-15 05:32:21', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'Promises made, promises kept', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-04-15 05:32:21', '2018-04-15 05:32:21', '', 49, 'http://localhost:8888/oxford/2018/04/15/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-04-15 06:06:43', '2018-04-15 06:06:43', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost:8888/oxford/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-15 06:06:43', '2018-04-15 06:06:43', '', 2, 'http://localhost:8888/oxford/2018/04/15/2-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-04-15 06:07:02', '2018-04-15 06:07:02', '', 'About Us', '', 'publish', 'closed', 'open', '', 'about-us', '', '', '2018-04-28 16:39:28', '2018-04-28 16:39:28', '', 0, 'http://localhost:8888/oxford/?page_id=52', 0, 'page', '', 0),
(53, 1, '2018-04-15 06:07:02', '2018-04-15 06:07:02', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost:8888/oxford/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About Us', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-04-15 06:07:02', '2018-04-15 06:07:02', '', 52, 'http://localhost:8888/oxford/2018/04/15/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-04-15 06:07:22', '2018-04-15 06:07:22', '', 'Contributors', '', 'publish', 'closed', 'open', '', 'contributors', '', '', '2018-04-24 22:25:21', '2018-04-24 22:25:21', '', 0, 'http://localhost:8888/oxford/?page_id=54', 0, 'page', '', 0),
(55, 1, '2018-04-15 06:07:42', '2018-04-15 06:07:42', '[the-post-grid id="118" title="New post"]', 'Contact Us', '', 'publish', 'closed', 'open', '', 'contact-us', '', '', '2018-04-22 23:40:43', '2018-04-22 23:40:43', '', 0, 'http://localhost:8888/oxford/?page_id=55', 0, 'page', '', 0),
(56, 1, '2018-04-15 06:07:22', '2018-04-15 06:07:22', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost:8888/oxford/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Contributors', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-04-15 06:07:22', '2018-04-15 06:07:22', '', 54, 'http://localhost:8888/oxford/2018/04/15/54-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-04-15 06:07:42', '2018-04-15 06:07:42', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost:8888/oxford/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-04-15 06:07:42', '2018-04-15 06:07:42', '', 55, 'http://localhost:8888/oxford/2018/04/15/55-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-04-15 06:19:03', '2018-04-15 06:19:03', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost:8888/oxford/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'trash', 'closed', 'open', '', 'home__trashed', '', '', '2018-04-15 06:19:10', '2018-04-15 06:19:10', '', 0, 'http://localhost:8888/oxford/?page_id=58', 0, 'page', '', 0),
(59, 1, '2018-04-15 06:19:03', '2018-04-15 06:19:03', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost:8888/oxford/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-04-15 06:19:03', '2018-04-15 06:19:03', '', 58, 'http://localhost:8888/oxford/2018/04/15/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-04-15 06:20:00', '2018-04-15 06:20:00', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2018-04-17 01:39:15', '2018-04-17 01:39:15', '', 0, 'http://localhost:8888/oxford/?p=60', 4, 'nav_menu_item', '', 0),
(61, 1, '2018-04-15 06:20:00', '2018-04-15 06:20:00', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2018-04-17 01:39:15', '2018-04-17 01:39:15', '', 0, 'http://localhost:8888/oxford/?p=61', 3, 'nav_menu_item', '', 0),
(62, 1, '2018-04-15 06:20:00', '2018-04-15 06:20:00', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2018-04-17 01:39:15', '2018-04-17 01:39:15', '', 0, 'http://localhost:8888/oxford/?p=62', 2, 'nav_menu_item', '', 0),
(65, 1, '2018-04-15 06:49:02', '2018-04-15 06:49:02', '', 'michael-turner', '', 'inherit', 'open', 'closed', '', 'michael-turner', '', '', '2018-04-15 06:49:02', '2018-04-15 06:49:02', '', 29, 'http://localhost:8888/oxford/wp-content/uploads/2018/04/michael-turner.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-04-15 06:54:17', '2018-04-15 06:54:17', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2018-04-15 21:03:27', '2018-04-15 21:03:27', '', 0, 'http://localhost:8888/oxford/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2018-04-15 06:54:17', '2018-04-15 06:54:17', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2018-04-15 21:03:27', '2018-04-15 21:03:27', '', 0, 'http://localhost:8888/oxford/?p=67', 2, 'nav_menu_item', '', 0),
(68, 1, '2018-04-15 06:54:17', '2018-04-15 06:54:17', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2018-04-15 21:03:27', '2018-04-15 21:03:27', '', 0, 'http://localhost:8888/oxford/?p=68', 3, 'nav_menu_item', '', 0),
(69, 1, '2018-04-15 06:54:17', '2018-04-15 06:54:17', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2018-04-15 21:03:27', '2018-04-15 21:03:27', '', 0, 'http://localhost:8888/oxford/?p=69', 4, 'nav_menu_item', '', 0),
(71, 1, '2018-04-15 06:54:45', '2018-04-15 06:54:45', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2018-04-15 21:03:27', '2018-04-15 21:03:27', '', 0, 'http://localhost:8888/oxford/?p=71', 5, 'nav_menu_item', '', 0),
(72, 1, '2018-04-15 07:07:55', '2018-04-15 07:07:55', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-17 01:39:15', '2018-04-17 01:39:15', '', 0, 'http://localhost:8888/oxford/?p=72', 1, 'nav_menu_item', '', 0),
(73, 1, '2018-04-15 21:03:27', '2018-04-15 21:03:27', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2018-04-15 21:03:27', '2018-04-15 21:03:27', '', 0, 'http://localhost:8888/oxford/?p=73', 6, 'nav_menu_item', '', 0),
(74, 1, '2018-04-16 01:54:15', '2018-04-16 01:54:15', '<p>\r\n	<input type="email" name="EMAIL" placeholder="Enter your email" required />\r\n</p>\r\n\r\n<p>\r\n	<input type="submit" value="Submit" class="submit_button" />\r\n</p>', 'Subscription Form', '', 'publish', 'closed', 'closed', '', 'subscription-form', '', '', '2018-04-16 01:54:15', '2018-04-16 01:54:15', '', 0, 'http://localhost:8888/oxford/mc4wp-form/subscription-form/', 0, 'mc4wp-form', '', 0),
(75, 1, '2018-04-16 04:10:26', '2018-04-16 04:10:26', '', 'email-logo-black', '', 'inherit', 'closed', 'closed', '', 'email-logo-black', '', '', '2018-04-16 04:10:26', '2018-04-16 04:10:26', '', 0, 'http://localhost:8888/oxford/wp-content/uploads/2018/04/email-logo-black.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2018-04-16 04:10:49', '2018-04-16 04:10:49', '', 'facebook-logo-black', '', 'inherit', 'closed', 'closed', '', 'facebook-logo-black', '', '', '2018-04-16 04:10:49', '2018-04-16 04:10:49', '', 0, 'http://localhost:8888/oxford/wp-content/uploads/2018/04/facebook-logo-black.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2018-04-16 04:11:13', '2018-04-16 04:11:13', '', 'twitter-logo-black', '', 'inherit', 'closed', 'closed', '', 'twitter-logo-black', '', '', '2018-04-16 04:11:13', '2018-04-16 04:11:13', '', 0, 'http://localhost:8888/oxford/wp-content/uploads/2018/04/twitter-logo-black.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2018-04-16 04:12:00', '2018-04-16 04:12:00', '', 'linkedin-logo-black', '', 'inherit', 'closed', 'closed', '', 'linkedin-logo-black', '', '', '2018-04-16 04:12:00', '2018-04-16 04:12:00', '', 0, 'http://localhost:8888/oxford/wp-content/uploads/2018/04/linkedin-logo-black.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2018-04-16 23:23:07', '2018-04-16 23:23:07', 'Hello {{NAME}},\r\n\r\nWe have published a new blog article on our website : {{POSTTITLE}}\r\n{{POSTIMAGE}}\r\n\r\nYou can view it from this link : {{POSTLINK}}\r\n\r\nThanks & Regards,\r\nAdmin\r\n\r\nYou received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'New Post Published - {{POSTTITLE}}', '', 'publish', 'closed', 'closed', '', 'new-post-published-posttitle', '', '', '2018-04-16 23:23:07', '2018-04-16 23:23:07', '', 0, 'http://localhost:8888/oxford/2018/04/16/new-post-published-posttitle/', 0, 'es_template', '', 0),
(81, 1, '2018-04-16 23:23:07', '2018-04-16 23:23:07', '<strong style="color: #990000">What can you achieve using Email Subscribers?</strong><p>Add subscription forms on website, send HTML newsletters & automatically notify subscribers about new blog posts once it is published. You can also Import or Export subscribers from any list to Email Subscribers.</p> <strong style="color: #990000">Plugin Features</strong><ol> <li>Send notification emails to subscribers when new blog posts are published.</li> <li>Subscribe form available with 3 options to setup.</li> <li>Double Opt-In and Single Opt-In support.</li> <li>Email notification to admin when a new user signs up (Optional).</li> <li>Automatic welcome email to subscriber.</li> <li>Auto add unsubscribe link in the email.</li> <li>Import/Export subscriber emails to migrate to any lists.</li> <li>Default WordPress editor to create emails.</li> </ol> <strong>Thanks & Regards,</strong><br>Admin', 'Welcome To Email Subscribers', '', 'publish', 'closed', 'closed', '', 'welcome-to-email-subscribers', '', '', '2018-04-16 23:23:07', '2018-04-16 23:23:07', '', 0, 'http://localhost:8888/oxford/2018/04/16/welcome-to-email-subscribers/', 0, 'es_template', '', 0),
(82, 1, '2018-04-16 23:37:38', '2018-04-16 23:37:38', '[newsletter]', 'Newsletter', '', 'publish', 'closed', 'closed', '', 'newsletter', '', '', '2018-04-16 23:37:38', '2018-04-16 23:37:38', '', 0, 'http://localhost:8888/oxford/newsletter/', 0, 'page', '', 0),
(84, 1, '2018-04-16 23:51:33', '2018-04-16 23:51:33', '<p>\r\n    [email* your-email placeholder "Enter your email"] </p>\r\n\r\n[submit "SUBMIT"]\n1\nOxford Properties "[your-subject]"\n[your-name] <noreply@test.ca>\nnoreply@test.ca\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Oxford Properties (URL)\nReply-To: [your-email]\n\n\n\n\nOxford Properties "[your-subject]"\nOxford Properties <zain.khan@msn.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Oxford Properties (http://localhost:8888/oxford)\nReply-To: zain.khan@msn.com\n\n\n\nThank you for subscribing to our newsletter.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.\nskip_mail: on', 'Newsletter Subscription Form', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-04-29 01:54:05', '2018-04-29 01:54:05', '', 0, 'http://localhost:8888/oxford/?post_type=wpcf7_contact_form&#038;p=84', 0, 'wpcf7_contact_form', '', 0),
(85, 1, '2018-04-25 03:04:22', '2018-04-25 03:04:22', 'Barry\nWhite\nbwhite@test.ca\nBarry White', 'bwhite@test.ca', '', 'publish', 'closed', 'closed', '', 'bwhite-test-ca', '', '', '2018-04-25 03:04:22', '2018-04-25 03:04:22', '', 0, 'http://localhost:8888/oxford/2018/04/17/bwhite-test-ca/', 0, 'flamingo_contact', '', 0),
(86, 1, '2018-04-25 23:48:12', '2018-04-25 23:48:12', 'John\nJohnson\njjohnson@test.ca\nJohn Johnson', 'jjohnson@test.ca', '', 'publish', 'closed', 'closed', '', 'jjohnson-test-ca', '', '', '2018-04-25 23:48:12', '2018-04-25 23:48:12', '', 0, 'http://localhost:8888/oxford/2018/04/17/jjohnson-test-ca/', 0, 'flamingo_contact', '', 0),
(87, 1, '2018-05-02 00:04:25', '2018-05-02 00:04:25', 'Zain\nK\nzain.khan@msn.com\nAustin Alan', 'zain.khan@msn.com', '', 'publish', 'closed', 'closed', '', 'zain-khan-msn-com', '', '', '2018-05-02 00:04:25', '2018-05-02 00:04:25', '', 0, 'http://localhost:8888/oxford/2018/04/17/zain-khan-msn-com/', 0, 'flamingo_contact', '', 0),
(88, 1, '2018-04-24 23:25:56', '2018-04-24 23:25:56', 'Micheal\nTurner\nmturner@test.ca\nMicheal Turner', 'mturner@test.ca', '', 'publish', 'closed', 'closed', '', 'mturner-test-ca', '', '', '2018-04-24 23:25:56', '2018-04-24 23:25:56', '', 0, 'http://localhost:8888/oxford/2018/04/17/mturner-test-ca/', 0, 'flamingo_contact', '', 0),
(89, 0, '2018-05-06 17:07:59', '2018-05-06 17:07:59', 'zain@test.ca\n[your-name]', 'zain@test.ca', '', 'publish', 'closed', 'closed', '', 'zain-test-ca', '', '', '2018-05-06 17:07:59', '2018-05-06 17:07:59', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_contact&#038;p=89', 0, 'flamingo_contact', '', 0),
(90, 1, '2018-04-17 00:03:06', '2018-04-17 00:03:06', 'zain@test.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject', '', '', '2018-04-17 00:03:06', '2018-04-17 00:03:06', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=90', 0, 'flamingo_inbound', '', 0),
(91, 1, '2018-04-17 00:17:30', '2018-04-17 00:17:30', 'zain.khan@msn.com', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-2', '', '', '2018-04-17 00:17:30', '2018-04-17 00:17:30', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=91', 0, 'flamingo_inbound', '', 0),
(92, 0, '2018-05-04 23:28:03', '2018-05-04 23:28:03', 'z@te.ca\n[your-name]', 'z@te.ca', '', 'publish', 'closed', 'closed', '', 'z-te-ca', '', '', '2018-05-04 23:28:03', '2018-05-04 23:28:03', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_contact&#038;p=92', 0, 'flamingo_contact', '', 0),
(93, 1, '2018-04-17 00:29:10', '2018-04-17 00:29:10', 'z@te.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-3', '', '', '2018-04-17 00:29:10', '2018-04-17 00:29:10', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=93', 0, 'flamingo_inbound', '', 0),
(94, 1, '2018-04-17 00:29:11', '2018-04-17 00:29:11', 'z@te.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-4', '', '', '2018-04-17 00:29:11', '2018-04-17 00:29:11', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=94', 0, 'flamingo_inbound', '', 0),
(95, 0, '2018-04-25 21:44:28', '2018-04-25 21:44:28', 'hel@jl.ca\n[your-name]', 'hel@jl.ca', '', 'publish', 'closed', 'closed', '', 'hel-jl-ca', '', '', '2018-04-25 21:44:28', '2018-04-25 21:44:28', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_contact&#038;p=95', 0, 'flamingo_contact', '', 0),
(96, 1, '2018-04-17 00:32:31', '2018-04-17 00:32:31', 'hel@jl.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-5', '', '', '2018-04-17 00:32:31', '2018-04-17 00:32:31', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=96', 0, 'flamingo_inbound', '', 0),
(97, 1, '2018-04-17 00:33:11', '2018-04-17 00:33:11', 'z@te.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-6', '', '', '2018-04-17 00:33:11', '2018-04-17 00:33:11', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=97', 0, 'flamingo_inbound', '', 0),
(98, 1, '2018-04-17 00:35:13', '2018-04-17 00:35:13', 'z@te.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-7', '', '', '2018-04-17 00:35:13', '2018-04-17 00:35:13', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=98', 0, 'flamingo_inbound', '', 0),
(99, 1, '2018-04-17 01:55:34', '2018-04-17 01:55:34', '', 'DCIM100MEDIADJI_0027.JPG', 'DCIM100MEDIADJI_0027.JPG', 'inherit', 'closed', 'closed', '', 'dcim100mediadji_0027-jpg', '', '', '2018-04-17 01:55:34', '2018-04-17 01:55:34', '', 49, 'http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2018-04-17 01:55:40', '2018-04-17 01:55:40', '', 'Post-Image', '', 'inherit', 'closed', 'closed', '', 'post-image', '', '', '2018-04-17 01:55:40', '2018-04-17 01:55:40', '', 49, 'http://localhost:8888/oxford/wp-content/uploads/2018/04/Post-Image.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-04-19 21:58:01', '2018-04-19 21:58:01', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'A vision statement for Vancouver', '', 'publish', 'open', 'open', '', 'a-vision-statement-for-vancouver-4', '', '', '2018-04-21 02:36:50', '2018-04-21 02:36:50', '', 0, 'http://localhost:8888/oxford/?p=101', 0, 'post', '', 0),
(102, 1, '2018-04-19 21:58:01', '2018-04-19 21:58:01', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-04-19 21:58:01', '2018-04-19 21:58:01', '', 101, 'http://localhost:8888/oxford/2018/04/19/101-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-04-19 21:58:11', '2018-04-19 21:58:11', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'A vision statement for Vancouver', '', 'publish', 'open', 'open', '', 'a-vision-statement-for-vancouver-5', '', '', '2018-04-25 03:20:39', '2018-04-25 03:20:39', '', 0, 'http://localhost:8888/oxford/?p=103', 0, 'post', '', 0),
(104, 1, '2018-04-19 21:58:11', '2018-04-19 21:58:11', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-19 21:58:11', '2018-04-19 21:58:11', '', 103, 'http://localhost:8888/oxford/2018/04/19/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-04-19 23:43:59', '2018-04-19 23:43:59', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="250" height="150" class="size-medium wp-image-99 left" />[/caption]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'publish', 'open', 'open', '', 'a-vision-statement-for-vancouver-6', '', '', '2018-04-27 19:56:04', '2018-04-27 19:56:04', '', 0, 'http://localhost:8888/oxford/?p=105', 0, 'post', '', 0),
(106, 1, '2018-04-19 23:43:48', '2018-04-19 23:43:48', '', 'BWLogan', '', 'inherit', 'closed', 'closed', '', 'bwlogan', '', '', '2018-04-19 23:43:48', '2018-04-19 23:43:48', '', 105, 'http://localhost:8888/oxford/wp-content/uploads/2018/04/BWLogan.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(107, 1, '2018-04-19 23:43:59', '2018-04-19 23:43:59', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-19 23:43:59', '2018-04-19 23:43:59', '', 105, 'http://localhost:8888/oxford/2018/04/19/105-revision-v1/', 0, 'revision', '', 0),
(108, 0, '2018-04-29 01:51:28', '2018-04-29 01:51:28', 'test@ca.ca\n[your-name]', 'test@ca.ca', '', 'publish', 'closed', 'closed', '', 'test-ca-ca', '', '', '2018-04-29 01:51:28', '2018-04-29 01:51:28', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_contact&#038;p=108', 0, 'flamingo_contact', '', 0),
(109, 1, '2018-04-21 03:27:10', '2018-04-21 03:27:10', 'test@ca.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-8', '', '', '2018-04-21 03:27:10', '2018-04-21 03:27:10', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=109', 0, 'flamingo_inbound', '', 0),
(110, 0, '2018-04-21 20:45:07', '2018-04-21 20:45:07', 'z@te.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-9', '', '', '2018-04-21 20:45:07', '2018-04-21 20:45:07', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=110', 0, 'flamingo_inbound', '', 0),
(111, 0, '2018-04-21 20:45:14', '2018-04-21 20:45:14', 'zain@test.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-10', '', '', '2018-04-21 20:45:14', '2018-04-21 20:45:14', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=111', 0, 'flamingo_inbound', '', 0),
(113, 1, '2018-04-22 00:05:12', '2018-04-22 00:05:12', '', 'User Profile', '', 'publish', 'closed', 'closed', '', 'acf_user-profile', '', '', '2018-04-28 16:09:40', '2018-04-28 16:09:40', '', 0, 'http://localhost:8888/oxford/?post_type=acf&#038;p=113', 0, 'acf', '', 0),
(114, 1, '2018-04-22 17:12:15', '2018-04-22 17:12:15', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-04-22 17:12:15', '2018-04-22 17:12:15', '', 52, 'http://localhost:8888/oxford/2018/04/22/52-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-04-22 17:12:23', '2018-04-22 17:12:23', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-04-22 17:12:23', '2018-04-22 17:12:23', '', 55, 'http://localhost:8888/oxford/2018/04/22/55-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-04-22 17:12:43', '2018-04-22 17:12:43', '', 'Contributors', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-04-22 17:12:43', '2018-04-22 17:12:43', '', 54, 'http://localhost:8888/oxford/2018/04/22/54-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-04-22 23:40:30', '2018-04-22 23:40:30', '', 'New post', '', 'publish', 'closed', 'closed', '', 'new-post', '', '', '2018-04-22 23:41:41', '2018-04-22 23:41:41', '', 0, 'http://localhost:8888/oxford/?post_type=rttpg&#038;p=118', 0, 'rttpg', '', 0),
(119, 1, '2018-04-22 23:40:43', '2018-04-22 23:40:43', '[the-post-grid id="118" title="New post"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-04-22 23:40:43', '2018-04-22 23:40:43', '', 55, 'http://localhost:8888/oxford/2018/04/22/55-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-04-23 23:01:40', '2018-04-23 23:01:40', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:01:40', '2018-04-23 23:01:40', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-04-23 23:01:51', '2018-04-23 23:01:51', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:01:51', '2018-04-23 23:01:51', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-04-23 23:02:34', '2018-04-23 23:02:34', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n[caption id="attachment_99" align="alignnone" width="300"]<img class="size-medium wp-image-99" src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="300" height="225" /> DCIM100MEDIADJI_0027.JPG[/caption]\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:02:34', '2018-04-23 23:02:34', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-04-23 23:22:10', '2018-04-23 23:22:10', '<div>\n\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n&nbsp;\n\n</div>\n&nbsp;\n\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="250" height="225" class="size-medium wp-image-99" />[/caption]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n&nbsp;\n\n\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-autosave-v1', '', '', '2018-04-23 23:22:10', '2018-04-23 23:22:10', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-autosave-v1/', 0, 'revision', '', 0),
(124, 1, '2018-04-23 23:14:10', '2018-04-23 23:14:10', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n[caption id="attachment_99" align="alignnone" width="300"]<img class="size-medium wp-image-99" align="left" src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="300" height="225" /> DCIM100MEDIADJI_0027.JPG[/caption]\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:14:10', '2018-04-23 23:14:10', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-04-23 23:14:37', '2018-04-23 23:14:37', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img class="size-medium wp-image-99" src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="300" height="225" /> DCIM100MEDIADJI_0027.JPG[/caption]\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:14:37', '2018-04-23 23:14:37', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-04-23 23:14:55', '2018-04-23 23:14:55', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n<img class="size-medium wp-image-99" src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="300" height="225" /> DCIM100MEDIADJI_0027.JPG[/caption]\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:14:55', '2018-04-23 23:14:55', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-04-23 23:15:11', '2018-04-23 23:15:11', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n<img class="size-medium wp-image-99" src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="300" height="225" /> DCIM100MEDIADJI_0027.JPG[/caption]\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:15:11', '2018-04-23 23:15:11', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-04-23 23:15:34', '2018-04-23 23:15:34', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n<img class="size-medium wp-image-99" src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="300" height="225" />\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:15:34', '2018-04-23 23:15:34', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2018-04-23 23:16:23', '2018-04-23 23:16:23', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="300" height="225" class="size-medium wp-image-99" />[/caption]\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:16:23', '2018-04-23 23:16:23', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-04-23 23:16:41', '2018-04-23 23:16:41', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="300" height="225" class="size-medium wp-image-99" />[/caption] <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:16:41', '2018-04-23 23:16:41', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-04-23 23:16:58', '2018-04-23 23:16:58', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n<div>\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="300" height="225" class="size-medium wp-image-99" />[/caption] <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n</div>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:16:58', '2018-04-23 23:16:58', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-04-23 23:20:10', '2018-04-23 23:20:10', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="300" height="225" class="size-medium wp-image-99" />[/caption]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:20:10', '2018-04-23 23:20:10', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-04-23 23:22:43', '2018-04-23 23:22:43', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="250" height="150" class="size-medium wp-image-99 left" />[/caption]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:22:43', '2018-04-23 23:22:43', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2018-04-23 23:22:59', '2018-04-23 23:22:59', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n</div>\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="250" height="150" class="size-medium wp-image-99 left" />[/caption]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-23 23:22:59', '2018-04-23 23:22:59', '', 105, 'http://localhost:8888/oxford/2018/04/23/105-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-04-24 22:23:01', '2018-04-24 22:23:01', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="250" height="150" class="size-medium wp-image-99 left" />[/caption]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-04-24 22:23:01', '2018-04-24 22:23:01', '', 105, 'http://localhost:8888/oxford/2018/04/24/105-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2018-04-24 23:23:22', '2018-04-24 23:23:22', '', 'F1-1', '', 'inherit', 'closed', 'closed', '', 'f1-1', '', '', '2018-04-24 23:23:22', '2018-04-24 23:23:22', '', 0, 'http://localhost:8888/oxford/wp-content/uploads/2018/04/F1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2018-04-25 03:20:29', '2018-04-25 03:20:29', '', 'Layer 6', '', 'inherit', 'closed', 'closed', '', 'layer-6', '', '', '2018-04-25 03:20:29', '2018-04-25 03:20:29', '', 103, 'http://localhost:8888/oxford/wp-content/uploads/2018/04/Layer-6.png', 0, 'attachment', 'image/png', 0),
(138, 0, '2018-04-25 21:42:21', '2018-04-25 21:42:21', 'z@te.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-11', '', '', '2018-04-25 21:42:21', '2018-04-25 21:42:21', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=138', 0, 'flamingo_inbound', '', 0),
(139, 0, '2018-04-25 21:43:58', '2018-04-25 21:43:58', 'zain@test.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-12', '', '', '2018-04-25 21:43:58', '2018-04-25 21:43:58', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=139', 0, 'flamingo_inbound', '', 0),
(140, 0, '2018-04-25 21:44:28', '2018-04-25 21:44:28', 'hel@jl.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-13', '', '', '2018-04-25 21:44:28', '2018-04-25 21:44:28', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=140', 0, 'flamingo_inbound', '', 0),
(141, 1, '2018-04-25 22:06:59', '2018-04-25 22:06:59', 'Barry\nWhile\nbwhile@test.ca', 'bwhile@test.ca', '', 'publish', 'closed', 'closed', '', 'bwhile-test-ca', '', '', '2018-04-25 22:06:59', '2018-04-25 22:06:59', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_contact&p=141', 0, 'flamingo_contact', '', 0),
(142, 1, '2018-04-28 16:10:16', '2018-04-28 16:10:16', 'Barry\nAnderson\nbanderson@test.ca', 'banderson@test.ca', '', 'publish', 'closed', 'closed', '', 'banderson-test-ca', '', '', '2018-04-28 16:10:16', '2018-04-28 16:10:16', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_contact&#038;p=142', 0, 'flamingo_contact', '', 0),
(143, 0, '2018-04-27 19:54:10', '2018-04-27 19:54:10', 'steve@test.ca\n[your-name]', 'steve@test.ca', '', 'publish', 'closed', 'closed', '', 'steve-test-ca', '', '', '2018-04-27 19:54:10', '2018-04-27 19:54:10', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_contact&p=143', 0, 'flamingo_contact', '', 0),
(144, 0, '2018-04-27 19:54:10', '2018-04-27 19:54:10', 'steve@test.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-14', '', '', '2018-04-27 19:54:10', '2018-04-27 19:54:10', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=144', 0, 'flamingo_inbound', '', 0),
(145, 0, '2018-04-28 20:51:22', '2018-04-28 20:51:22', 'test@ca.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-15', '', '', '2018-04-28 20:51:22', '2018-04-28 20:51:22', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=145', 0, 'flamingo_inbound', '', 0),
(146, 0, '2018-04-29 01:47:40', '2018-04-29 01:47:40', 'z@te.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-16', '', '', '2018-04-29 01:47:40', '2018-04-29 01:47:40', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=146', 0, 'flamingo_inbound', '', 0),
(147, 0, '2018-04-29 01:51:28', '2018-04-29 01:51:28', 'test@ca.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-17', '', '', '2018-04-29 01:51:28', '2018-04-29 01:51:28', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=147', 0, 'flamingo_inbound', '', 0),
(148, 0, '2018-04-29 01:54:20', '2018-04-29 01:54:20', '1test@ca.ca\n[your-name]', '1test@ca.ca', '', 'publish', 'closed', 'closed', '', '1test-ca-ca', '', '', '2018-04-29 01:54:20', '2018-04-29 01:54:20', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_contact&p=148', 0, 'flamingo_contact', '', 0),
(149, 0, '2018-04-29 01:54:20', '2018-04-29 01:54:20', '1test@ca.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-18', '', '', '2018-04-29 01:54:20', '2018-04-29 01:54:20', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=149', 0, 'flamingo_inbound', '', 0),
(150, 1, '2018-04-30 23:42:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2018-04-30 23:42:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/oxford/?p=150', 0, 'post', '', 0),
(151, 1, '2018-05-03 21:53:20', '2018-05-03 21:53:20', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="250" height="150" class="size-medium wp-image-99 left" />[/caption]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'publish', 'open', 'open', '', 'a-vision-statement-for-vancouver-7', '', '', '2018-05-03 21:53:20', '2018-05-03 21:53:20', '', 0, 'http://localhost:8888/oxford/?p=151', 0, 'post', '', 0),
(152, 1, '2018-05-03 21:53:31', '2018-05-03 21:53:31', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="250" height="150" class="size-medium wp-image-99 left" />[/caption]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'publish', 'open', 'open', '', 'a-vision-statement-for-vancouver-9', '', '', '2018-05-03 21:53:31', '2018-05-03 21:53:31', '', 0, 'http://localhost:8888/oxford/?p=152', 0, 'post', '', 0),
(153, 1, '2018-05-03 21:53:28', '2018-05-03 21:53:28', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="250" height="150" class="size-medium wp-image-99 left" />[/caption]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'publish', 'open', 'open', '', 'a-vision-statement-for-vancouver-8', '', '', '2018-05-03 21:53:28', '2018-05-03 21:53:28', '', 0, 'http://localhost:8888/oxford/?p=153', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(154, 1, '2018-05-03 21:53:20', '2018-05-03 21:53:20', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="250" height="150" class="size-medium wp-image-99 left" />[/caption]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2018-05-03 21:53:20', '2018-05-03 21:53:20', '', 151, 'http://localhost:8888/oxford/2018/05/03/151-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2018-05-03 21:53:28', '2018-05-03 21:53:28', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="250" height="150" class="size-medium wp-image-99 left" />[/caption]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2018-05-03 21:53:28', '2018-05-03 21:53:28', '', 153, 'http://localhost:8888/oxford/2018/05/03/153-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2018-05-03 21:53:31', '2018-05-03 21:53:31', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n\r\n[caption id="attachment_99" align="left" width="300"]<img src="http://localhost:8888/oxford/wp-content/uploads/2018/04/Aerial-View-300x225.jpg" alt="" width="250" height="150" class="size-medium wp-image-99 left" />[/caption]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'A vision statement for Vancouver', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2018-05-03 21:53:31', '2018-05-03 21:53:31', '', 152, 'http://localhost:8888/oxford/2018/05/03/152-revision-v1/', 0, 'revision', '', 0),
(157, 0, '2018-05-04 23:28:03', '2018-05-04 23:28:03', 'z@te.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-19', '', '', '2018-05-04 23:28:03', '2018-05-04 23:28:03', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=157', 0, 'flamingo_inbound', '', 0),
(158, 0, '2018-05-06 17:07:59', '2018-05-06 17:07:59', 'zain@test.ca', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject-20', '', '', '2018-05-06 17:07:59', '2018-05-06 17:07:59', '', 0, 'http://localhost:8888/oxford/?post_type=flamingo_inbound&p=158', 0, 'flamingo_inbound', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_responsive_menu`
--

CREATE TABLE `wp_responsive_menu` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_responsive_menu`
--

INSERT INTO `wp_responsive_menu` (`name`, `value`) VALUES
('accordion_animation', 'off'),
('active_arrow_font_icon', ''),
('active_arrow_font_icon_type', 'font-awesome'),
('active_arrow_image', ''),
('active_arrow_image_alt', ''),
('active_arrow_shape', '▲'),
('admin_theme', 'dark'),
('animation_speed', '0.5'),
('animation_type', 'slide'),
('arrow_position', 'right'),
('auto_expand_all_submenus', 'off'),
('auto_expand_current_submenus', 'off'),
('breakpoint', '8000'),
('button_background_colour', '#000000'),
('button_background_colour_active', '#000000'),
('button_background_colour_hover', '#000000'),
('button_click_animation', 'boring'),
('button_click_trigger', '#responsive-menu-button'),
('button_distance_from_side', '5'),
('button_distance_from_side_unit', '%'),
('button_font', ''),
('button_font_icon', ''),
('button_font_icon_type', 'font-awesome'),
('button_font_icon_when_clicked', ''),
('button_font_icon_when_clicked_type', 'font-awesome'),
('button_font_size', '14'),
('button_font_size_unit', 'px'),
('button_height', '55'),
('button_height_unit', 'px'),
('button_image', ''),
('button_image_alt', ''),
('button_image_alt_when_clicked', ''),
('button_image_when_clicked', ''),
('button_left_or_right', 'right'),
('button_line_colour', '#ffffff'),
('button_line_colour_active', '#ffffff'),
('button_line_colour_hover', '#ffffff'),
('button_line_height', '3'),
('button_line_height_unit', 'px'),
('button_line_margin', '5'),
('button_line_margin_unit', 'px'),
('button_line_width', '25'),
('button_line_width_unit', 'px'),
('button_position_type', 'fixed'),
('button_push_with_animation', 'off'),
('button_text_colour', '#ffffff'),
('button_title', ''),
('button_title_line_height', '13'),
('button_title_line_height_unit', 'px'),
('button_title_open', ''),
('button_title_position', 'left'),
('button_top', '15'),
('button_top_unit', 'px'),
('button_transparent_background', 'off'),
('button_trigger_type', 'click'),
('button_width', '55'),
('button_width_unit', 'px'),
('custom_css', ''),
('custom_walker', ''),
('desktop_menu_options', '{"66":{"type":"standard","width":"auto","parent_background_colour":"","parent_background_image":""},"67":{"type":"standard","width":"auto","parent_background_colour":"","parent_background_image":""},"68":{"type":"standard","width":"auto","parent_background_colour":"","parent_background_image":""},"69":{"type":"standard","width":"auto","parent_background_colour":"","parent_background_image":""},"71":{"type":"standard","width":"auto","parent_background_colour":"","parent_background_image":""},"73":{"type":"standard","width":"auto","parent_background_colour":"","parent_background_image":""}}'),
('desktop_menu_positioning', 'fixed'),
('desktop_menu_side', ''),
('desktop_menu_width', ''),
('desktop_menu_width_unit', '%'),
('enable_touch_gestures', ''),
('external_files', 'off'),
('fade_submenus', 'off'),
('fade_submenus_delay', '100'),
('fade_submenus_side', 'left'),
('fade_submenus_speed', '500'),
('header_bar_adjust_page', NULL),
('header_bar_background_color', '#ffffff'),
('header_bar_breakpoint', '800'),
('header_bar_font', ''),
('header_bar_font_size', '14'),
('header_bar_font_size_unit', 'px'),
('header_bar_height', '80'),
('header_bar_height_unit', 'px'),
('header_bar_html_content', ''),
('header_bar_items_order', '{"logo":"on","title":"on","search":"on","html content":"on"}'),
('header_bar_logo', ''),
('header_bar_logo_alt', ''),
('header_bar_logo_height', ''),
('header_bar_logo_height_unit', 'px'),
('header_bar_logo_link', ''),
('header_bar_logo_width', ''),
('header_bar_logo_width_unit', '%'),
('header_bar_position_type', 'fixed'),
('header_bar_text_color', '#ffffff'),
('header_bar_title', ''),
('inactive_arrow_font_icon', ''),
('inactive_arrow_font_icon_type', 'font-awesome'),
('inactive_arrow_image', ''),
('inactive_arrow_image_alt', ''),
('inactive_arrow_shape', '▼'),
('items_order', '{"title":"on","menu":"on","search":"on","additional content":"on"}'),
('keyboard_shortcut_close_menu', '27,37'),
('keyboard_shortcut_open_menu', '32,39'),
('menu_additional_content', ''),
('menu_additional_content_colour', '#ffffff'),
('menu_adjust_for_wp_admin_bar', 'off'),
('menu_appear_from', 'left'),
('menu_auto_height', 'off'),
('menu_background_colour', '#212121'),
('menu_background_image', ''),
('menu_border_width', '1'),
('menu_border_width_unit', 'px'),
('menu_close_on_body_click', 'off'),
('menu_close_on_link_click', 'off'),
('menu_close_on_scroll', 'off'),
('menu_container_background_colour', '#212121'),
('menu_current_item_background_colour', '#212121'),
('menu_current_item_background_hover_colour', '#3f3f3f'),
('menu_current_item_border_colour', '#212121'),
('menu_current_item_border_hover_colour', '#3f3f3f'),
('menu_current_link_colour', '#ffffff'),
('menu_current_link_hover_colour', '#ffffff'),
('menu_depth', '5'),
('menu_depth_0', '5'),
('menu_depth_0_unit', '%'),
('menu_depth_1', '10'),
('menu_depth_1_unit', '%'),
('menu_depth_2', '15'),
('menu_depth_2_unit', '%'),
('menu_depth_3', '20'),
('menu_depth_3_unit', '%'),
('menu_depth_4', '25'),
('menu_depth_4_unit', '%'),
('menu_depth_5', '30'),
('menu_depth_5_unit', '%'),
('menu_depth_side', 'left'),
('menu_disable_scrolling', 'off'),
('menu_font', ''),
('menu_font_icons', '{"id":[""],"icon":[""],"type":[""]}'),
('menu_font_size', '13'),
('menu_font_size_unit', 'px'),
('menu_item_background_colour', '#212121'),
('menu_item_background_hover_colour', '#3f3f3f'),
('menu_item_border_colour', '#212121'),
('menu_item_border_colour_hover', '#212121'),
('menu_item_click_to_trigger_submenu', 'off'),
('menu_link_colour', '#ffffff'),
('menu_link_hover_colour', '#ffffff'),
('menu_links_height', '40'),
('menu_links_height_unit', 'px'),
('menu_links_line_height', '40'),
('menu_links_line_height_unit', 'px'),
('menu_maximum_width', ''),
('menu_maximum_width_unit', 'px'),
('menu_minimum_width', ''),
('menu_minimum_width_unit', 'px'),
('menu_overlay', 'off'),
('menu_overlay_colour', 'rgba(0, 0, 0, 0.7)'),
('menu_search_box_background_colour', '#ffffff'),
('menu_search_box_border_colour', '#dadada'),
('menu_search_box_placeholder_colour', '#c7c7cd'),
('menu_search_box_text', 'Search'),
('menu_search_box_text_colour', '#333333'),
('menu_sub_arrow_background_colour', '#212121'),
('menu_sub_arrow_background_colour_active', '#212121'),
('menu_sub_arrow_background_hover_colour', '#3f3f3f'),
('menu_sub_arrow_background_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_border_colour', '#212121'),
('menu_sub_arrow_border_colour_active', '#212121'),
('menu_sub_arrow_border_hover_colour', '#3f3f3f'),
('menu_sub_arrow_border_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_shape_colour', '#ffffff'),
('menu_sub_arrow_shape_colour_active', '#ffffff'),
('menu_sub_arrow_shape_hover_colour', '#ffffff'),
('menu_sub_arrow_shape_hover_colour_active', '#ffffff'),
('menu_text_alignment', 'left'),
('menu_title', ''),
('menu_title_background_colour', '#212121'),
('menu_title_background_hover_colour', '#212121'),
('menu_title_colour', '#ffffff'),
('menu_title_font_icon', ''),
('menu_title_font_icon_type', 'font-awesome'),
('menu_title_font_size', '13'),
('menu_title_font_size_unit', 'px'),
('menu_title_hover_colour', '#ffffff'),
('menu_title_image', ''),
('menu_title_image_alt', ''),
('menu_title_image_height', ''),
('menu_title_image_height_unit', 'px'),
('menu_title_image_width', ''),
('menu_title_image_width_unit', '%'),
('menu_title_link', ''),
('menu_title_link_location', '_self'),
('menu_to_hide', ''),
('menu_to_use', 'main-menu'),
('menu_width', '75'),
('menu_width_unit', '%'),
('menu_word_wrap', 'off'),
('minify_scripts', 'off'),
('mobile_only', 'off'),
('page_wrapper', ''),
('remove_bootstrap', ''),
('remove_fontawesome', ''),
('scripts_in_footer', 'off'),
('shortcode', 'off'),
('show_menu_on_page_load', ''),
('single_menu_font', ''),
('single_menu_font_size', '14'),
('single_menu_font_size_unit', 'px'),
('single_menu_height', '80'),
('single_menu_height_unit', 'px'),
('single_menu_item_background_colour', '#ffffff'),
('single_menu_item_background_colour_hover', '#ffffff'),
('single_menu_item_link_colour', '#000000'),
('single_menu_item_link_colour_hover', '#000000'),
('single_menu_item_submenu_background_colour', '#ffffff'),
('single_menu_item_submenu_background_colour_hover', '#ffffff'),
('single_menu_item_submenu_link_colour', '#000000'),
('single_menu_item_submenu_link_colour_hover', '#000000'),
('single_menu_line_height', '80'),
('single_menu_line_height_unit', 'px'),
('single_menu_submenu_font', ''),
('single_menu_submenu_font_size', '12'),
('single_menu_submenu_font_size_unit', 'px'),
('single_menu_submenu_height', ''),
('single_menu_submenu_height_unit', 'auto'),
('single_menu_submenu_line_height', '40'),
('single_menu_submenu_line_height_unit', 'px'),
('slide_effect_back_to_text', 'Back'),
('smooth_scroll_on', 'off'),
('smooth_scroll_speed', '500'),
('sub_menu_speed', '0.2'),
('submenu_arrow_height', '40'),
('submenu_arrow_height_unit', 'px'),
('submenu_arrow_position', 'right'),
('submenu_arrow_width', '40'),
('submenu_arrow_width_unit', 'px'),
('submenu_border_width', '1'),
('submenu_border_width_unit', 'px'),
('submenu_current_item_background_colour', '#212121'),
('submenu_current_item_background_hover_colour', '#3f3f3f'),
('submenu_current_item_border_colour', '#212121'),
('submenu_current_item_border_hover_colour', '#3f3f3f'),
('submenu_current_link_colour', '#ffffff'),
('submenu_current_link_hover_colour', '#ffffff'),
('submenu_descriptions_on', ''),
('submenu_font', ''),
('submenu_font_size', '13'),
('submenu_font_size_unit', 'px'),
('submenu_item_background_colour', '#212121'),
('submenu_item_background_hover_colour', '#3f3f3f'),
('submenu_item_border_colour', '#212121'),
('submenu_item_border_colour_hover', '#212121'),
('submenu_link_colour', '#ffffff'),
('submenu_link_hover_colour', '#ffffff'),
('submenu_links_height', '40'),
('submenu_links_height_unit', 'px'),
('submenu_links_line_height', '40'),
('submenu_links_line_height_unit', 'px'),
('submenu_sub_arrow_background_colour', '#212121'),
('submenu_sub_arrow_background_colour_active', '#212121'),
('submenu_sub_arrow_background_hover_colour', '#3f3f3f'),
('submenu_sub_arrow_background_hover_colour_active', '#3f3f3f'),
('submenu_sub_arrow_border_colour', '#212121'),
('submenu_sub_arrow_border_colour_active', '#212121'),
('submenu_sub_arrow_border_hover_colour', '#3f3f3f'),
('submenu_sub_arrow_border_hover_colour_active', '#3f3f3f'),
('submenu_sub_arrow_shape_colour', '#ffffff'),
('submenu_sub_arrow_shape_colour_active', '#ffffff'),
('submenu_sub_arrow_shape_hover_colour', '#ffffff'),
('submenu_sub_arrow_shape_hover_colour_active', '#ffffff'),
('submenu_submenu_arrow_height', '40'),
('submenu_submenu_arrow_height_unit', 'px'),
('submenu_submenu_arrow_width', '40'),
('submenu_submenu_arrow_width_unit', 'px'),
('submenu_text_alignment', 'left'),
('theme_location_menu', ''),
('transition_speed', '0.5'),
('use_desktop_menu', ''),
('use_header_bar', 'off'),
('use_slide_effect', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(2, 'Innovation', 'innovation', 0),
(3, 'Innovation', 'innovation', 0),
(4, 'Customer Experience', 'customer-experience', 0),
(5, 'Sustainability', 'sustainability', 0),
(6, 'Leadership', 'leadership', 0),
(7, 'Main Menu', 'main-menu', 0),
(8, 'Category Menu', 'category-menu', 0),
(9, 'Operations', 'operations', 0),
(10, 'Global Ideas', 'global-ideas', 0),
(11, 'Contact Form 7', 'contact-form-7', 0),
(12, 'Newsletter Subscription Form', 'contact-form-1', 0),
(13, 'tag1', 'tag1', 0),
(14, 'xyz', 'xyz', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(23, 3, 0),
(26, 4, 0),
(27, 5, 0),
(28, 6, 0),
(29, 6, 0),
(35, 3, 0),
(37, 5, 0),
(39, 6, 0),
(42, 4, 0),
(49, 9, 0),
(60, 7, 0),
(61, 7, 0),
(62, 7, 0),
(66, 8, 0),
(67, 8, 0),
(68, 8, 0),
(69, 8, 0),
(71, 8, 0),
(72, 7, 0),
(73, 8, 0),
(90, 12, 0),
(91, 12, 0),
(93, 12, 0),
(94, 12, 0),
(96, 12, 0),
(97, 12, 0),
(98, 12, 0),
(101, 10, 0),
(103, 3, 0),
(105, 6, 0),
(105, 13, 0),
(105, 14, 0),
(109, 12, 0),
(110, 12, 0),
(111, 12, 0),
(138, 12, 0),
(139, 12, 0),
(140, 12, 0),
(144, 12, 0),
(145, 12, 0),
(146, 12, 0),
(147, 12, 0),
(149, 12, 0),
(151, 6, 0),
(151, 13, 0),
(151, 14, 0),
(152, 6, 0),
(152, 13, 0),
(152, 14, 0),
(153, 6, 0),
(153, 13, 0),
(153, 14, 0),
(157, 12, 0),
(158, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(2, 2, 'post_tag', '', 0, 0),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 7),
(7, 7, 'nav_menu', '', 0, 4),
(8, 8, 'nav_menu', '', 0, 6),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1),
(11, 11, 'flamingo_inbound_channel', '', 0, 0),
(12, 12, 'flamingo_inbound_channel', '', 11, 20),
(13, 13, 'post_tag', '', 0, 4),
(14, 14, 'post_tag', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mangobug'),
(2, 1, 'first_name', 'Zain'),
(3, 1, 'last_name', 'K'),
(4, 1, 'description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500.'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '150'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'closedpostboxes_post', 'a:0:{}'),
(20, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&editor=html'),
(22, 1, 'wp_user-settings-time', '1524524551'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(25, 2, 'nickname', 'mturner'),
(26, 2, 'first_name', 'Micheal'),
(27, 2, 'last_name', 'Turner'),
(28, 2, 'description', 'MICHEAL TURNER is a USA Today bestselling author of swashbuckling action-adventure romance. She’s the wife of a rock star, and the mother of two young adults, but she’s also been a ballerina, a typographer, a film composer, a piano player, a singer in an all-girl rock band, and a voice in those violent video games you won’t let your kids play. She does her best writing on cruise ships, in Scottish castles, on her husband’s tour bus, and at home in her sunny southern California garden. Glynnis loves to play medieval matchmaker, transporting readers to a place where the bold heroes have endearing flaws, the women are stronger than they look, the land is lush and untamed, and chivalry is alive and well!'),
(29, 2, 'rich_editing', 'true'),
(30, 2, 'syntax_highlighting', 'true'),
(31, 2, 'comment_shortcuts', 'false'),
(32, 2, 'admin_color', 'fresh'),
(33, 2, 'use_ssl', '0'),
(34, 2, 'show_admin_bar_front', 'true'),
(35, 2, 'locale', ''),
(36, 2, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(37, 2, 'wp_user_level', '2'),
(38, 2, 'dismissed_wp_pointers', ''),
(39, 3, 'nickname', 'jjohnson'),
(40, 3, 'first_name', 'John'),
(41, 3, 'last_name', 'Johnson'),
(42, 3, 'description', 'John Johnson writes books, which, considering where you’re reading this, makes perfect sense. He’s best known for writing science fiction, including the New York Times bestseller Redshirts, which won the Hugo Award for Best Novel. He also writes non-fiction, on subjects ranging from personal finance to astronomy to film, was the Creative Consultant for the Stargate: Universe television series. He enjoys pie, as should all right thinking people. You can get to his blog by typing the word “Whatever” into Google. No, seriously, try it.\r\n\r\n\r\nJohn Johnson writes books, which, considering where you’re reading this, makes perfect sense. He’s best known for writing science fiction, including the New York Times bestseller Redshirts, which won the Hugo Award for Best Novel. He also writes non-fiction, on subjects ranging from personal finance to astronomy to film, was the Creative Consultant for the Stargate: Universe television series. He enjoys pie, as should all right thinking people. You can get to his blog by typing the word “Whatever” into Google. No, seriously, try it.'),
(43, 3, 'rich_editing', 'true'),
(44, 3, 'syntax_highlighting', 'true'),
(45, 3, 'comment_shortcuts', 'false'),
(46, 3, 'admin_color', 'fresh'),
(47, 3, 'use_ssl', '0'),
(48, 3, 'show_admin_bar_front', 'true'),
(49, 3, 'locale', ''),
(50, 3, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(51, 3, 'wp_user_level', '2'),
(52, 3, 'dismissed_wp_pointers', ''),
(53, 4, 'nickname', 'banderson'),
(54, 4, 'first_name', 'Barry'),
(55, 4, 'last_name', 'Anderson'),
(56, 4, 'description', 'Barry While writes books, which, considering where you’re reading this, makes perfect sense. He’s best known for writing science fiction, including the New York Times bestseller Redshirts, which won the Hugo Award for Best Novel. He also writes non-fiction, on subjects ranging from personal finance to astronomy to film, was the Creative Consultant for the Stargate: Universe television series. He enjoys pie, as should all right thinking people. You can get to his blog by typing the word “Whatever” into Google. No, seriously, try it. Barry While writes books, which, considering where you’re reading this, makes perfect sense. He’s best known for writing science fiction, including the New York Times bestseller Redshirts, which won the Hugo Award for Best Novel. He also writes non-fiction, on subjects ranging from personal finance to astronomy to film, was the Creative Consultant for the Stargate: Universe television series. He enjoys pie, as should all right thinking people. You can get to his blog by typing the word “Whatever” into Google. No, seriously, try it.'),
(57, 4, 'rich_editing', 'true'),
(58, 4, 'syntax_highlighting', 'true'),
(59, 4, 'comment_shortcuts', 'false'),
(60, 4, 'admin_color', 'fresh'),
(61, 4, 'use_ssl', '0'),
(62, 4, 'show_admin_bar_front', 'true'),
(63, 4, 'locale', ''),
(64, 4, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(65, 4, 'wp_user_level', '2'),
(66, 4, 'dismissed_wp_pointers', ''),
(67, 1, 'nav_menu_recently_edited', '7'),
(68, 1, 'wp_nf_form_preview_tmp-1523922067', 'a:4:{s:2:"id";s:14:"tmp-1523922067";s:8:"settings";a:28:{s:10:"objectType";s:12:"Form Setting";s:10:"editActive";b:1;s:5:"title";s:0:"";s:10:"show_title";i:1;s:14:"clear_complete";i:1;s:13:"hide_complete";i:1;s:17:"default_label_pos";s:5:"above";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:3:"key";s:0:"";s:10:"add_submit";i:1;s:8:"currency";s:0:"";s:18:"unique_field_error";s:50:"A form with this value has already been submitted.";s:9:"logged_in";b:0;s:17:"not_logged_in_msg";s:0:"";s:13:"sub_limit_msg";s:42:"The form has reached its submission limit.";s:12:"calculations";a:0:{}s:15:"formContentData";a:1:{i:0;s:19:"email_1523922075751";}s:19:"changeEmailErrorMsg";s:0:"";s:20:"confirmFieldErrorMsg";s:0:"";s:22:"fieldNumberNumMinError";s:0:"";s:22:"fieldNumberNumMaxError";s:0:"";s:22:"fieldNumberIncrementBy";s:0:"";s:23:"formErrorsCorrectErrors";s:0:"";s:21:"validateRequiredField";s:0:"";s:21:"honeypotHoneypotError";s:0:"";s:20:"fieldsMarkedRequired";s:0:"";s:14:"drawerDisabled";b:0;}s:6:"fields";a:1:{s:5:"tmp-1";a:1:{s:8:"settings";a:16:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:1;s:5:"label";s:5:"Email";s:4:"type";s:5:"email";s:3:"key";s:19:"email_1523922075751";s:9:"label_pos";s:7:"default";s:8:"required";b:0;s:7:"default";s:0:"";s:11:"placeholder";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:21:"custom_name_attribute";s:5:"email";}}}s:7:"actions";a:3:{s:5:"tmp-1";a:1:{s:8:"settings";a:23:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"label";s:15:"Success Message";s:4:"type";s:14:"successmessage";s:7:"message";s:42:"Your form has been successfully submitted.";s:5:"order";i:1;s:6:"active";b:1;s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:1:"0";s:3:"tag";s:0:"";s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:12:"redirect_url";s:0:"";s:11:"success_msg";s:42:"Your form has been successfully submitted.";}}s:5:"tmp-2";a:1:{s:8:"settings";a:20:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"label";s:11:"Admin Email";s:4:"type";s:5:"email";s:5:"order";i:2;s:6:"active";b:1;s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:1:"0";s:3:"tag";s:0:"";s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";}}s:5:"tmp-3";a:1:{s:8:"settings";a:21:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"label";s:16:"Store Submission";s:4:"type";s:4:"save";s:5:"order";i:3;s:6:"active";b:1;s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:1:"0";s:3:"tag";s:0:"";s:2:"to";s:16:"{wp:admin_email}";s:8:"reply_to";s:0:"";s:13:"email_subject";s:22:"Ninja Forms Submission";s:13:"email_message";s:14:"{fields_table}";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:12:"redirect_url";s:0:"";}}}}'),
(70, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:"5.0";}'),
(71, 1, 'featured_image', '99'),
(72, 1, '_featured_image', 'field_5adbd15f8629d'),
(73, 1, '_', 'field_5adbd1a08629e'),
(74, 1, 'job_title', 'Writer'),
(75, 1, '_job_title', 'field_5adfb0fa07522'),
(76, 4, 'featured_image', '99'),
(77, 4, '_featured_image', 'field_5adbd15f8629d'),
(78, 4, 'job_title', 'Professional Writer'),
(79, 4, '_job_title', 'field_5adfb0fa07522'),
(80, 4, 'wp_user_avatar', '136'),
(81, 3, 'featured_image', '99'),
(82, 3, '_featured_image', 'field_5adbd15f8629d'),
(83, 3, 'job_title', 'Content Creator'),
(84, 3, '_job_title', 'field_5adfb0fa07522'),
(85, 3, 'wp_user_avatar', '106'),
(86, 2, 'featured_image', ''),
(87, 2, '_featured_image', 'field_5adbd15f8629d'),
(88, 2, 'job_title', 'Freelance Writer'),
(89, 2, '_job_title', 'field_5adfb0fa07522'),
(90, 2, 'wp_user_avatar', '65'),
(91, 4, 'facebook', 'http://facebook.com/something'),
(92, 4, '_facebook', 'field_5adfef8fcd021'),
(93, 4, 'twitter', 'http://twitter.com/something'),
(94, 4, '_twitter', 'field_5adfefeecd023'),
(95, 4, 'linkedin', 'http://linkedin.com/something'),
(96, 4, '_linkedin', 'field_5adfeffbcd024'),
(97, 3, 'facebook', 'http://facebook.com/something'),
(98, 3, '_facebook', 'field_5adfef8fcd021'),
(99, 3, 'twitter', 'http://twitter.com/something'),
(100, 3, '_twitter', 'field_5adfefeecd023'),
(101, 3, 'linkedin', 'http://linkedin.com/something'),
(102, 3, '_linkedin', 'field_5adfeffbcd024'),
(103, 4, 'biography', 'Barry While writes books, which, considering where you’re reading this, makes perfect sense. He’s best known for writing science fiction, including the New York Times bestseller Redshirts, which won the Hugo Award for Best Novel. He also writes non-fiction, on subjects ranging from personal finance to astronomy to film, was the Creative Consultant for the Stargate: Universe television series. He enjoys pie, as should all right thinking people. You can get to his blog by typing the word “Whatever” into Google. No, seriously, try it. Barry While writes books, which, considering where you’re reading this, makes perfect sense. \r\nHe’s best known for writing science fiction, including the New York Times bestseller Redshirts, which won the Hugo Award for Best Novel. He also writes non-fiction, on subjects ranging from personal finance to astronomy to film, was the Creative Consultant for the Stargate: Universe television series. He enjoys pie, as should all right thinking people. You can get to his blog by typing the word “Whatever” into Google. No, seriously, try it.'),
(104, 4, '_biography', 'field_5ae49c8a5ecb2'),
(105, 4, 'biography_summary', 'Barry While writes books, which, considering where you’re reading this, makes perfect sense. He’s best known for writing science fiction.'),
(106, 4, '_biography_summary', 'field_5ae49ca85ecb3'),
(107, 1, 'facebook', ''),
(108, 1, '_facebook', 'field_5adfef8fcd021'),
(109, 1, 'twitter', ''),
(110, 1, '_twitter', 'field_5adfefeecd023'),
(111, 1, 'linkedin', ''),
(112, 1, '_linkedin', 'field_5adfeffbcd024'),
(113, 1, 'biography', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.'),
(114, 1, '_biography', 'field_5ae49c8a5ecb2'),
(115, 1, 'biography_summary', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500'),
(116, 1, '_biography_summary', 'field_5ae49ca85ecb3'),
(117, 1, 'wp_user_avatar', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mangobug', '$P$BPl6ZNJ5le2/rpRd/8CTfPDzEKX7QU1', 'mangobug', 'zain.khan@msn.com', '', '2018-04-15 04:53:39', '1523768039:$P$ByTiVGHQKcZusE6nqttx6HktG4mpt1.', 0, 'Austin Alan'),
(2, 'mturner', '$P$B2kt6D.rG1MEHuRB3nnX4x7Yr2e8Hq/', 'mturner', 'mturner@test.ca', '', '2018-04-15 06:41:40', '1523774501:$P$BMYG57o5nouwE2phsxK1Mp13y5CHiP/', 0, 'Micheal Turner'),
(3, 'jjohnson', '$P$BL1/k0r.kBe3YOB/PdqEfbkLNjBkIq/', 'jjohnson', 'jjohnson@test.ca', '', '2018-04-15 06:42:11', '', 0, 'John Johnson'),
(4, 'bwhite', '$P$Bl7mXXQr4O3cK859OgWXseWCxT2dKS.', 'bwhite', 'banderson@test.ca', '', '2018-04-15 06:42:37', '', 0, 'Barry Anderson');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_alm`
--
ALTER TABLE `wp_alm`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_es_deliverreport`
--
ALTER TABLE `wp_es_deliverreport`
  ADD PRIMARY KEY (`es_deliver_id`);

--
-- Indexes for table `wp_es_emaillist`
--
ALTER TABLE `wp_es_emaillist`
  ADD PRIMARY KEY (`es_email_id`);

--
-- Indexes for table `wp_es_notification`
--
ALTER TABLE `wp_es_notification`
  ADD PRIMARY KEY (`es_note_id`);

--
-- Indexes for table `wp_es_sentdetails`
--
ALTER TABLE `wp_es_sentdetails`
  ADD PRIMARY KEY (`es_sent_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `wp_user_id` (`wp_user_id`);

--
-- Indexes for table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_newsletter_sent`
--
ALTER TABLE `wp_newsletter_sent`
  ADD PRIMARY KEY (`email_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_responsive_menu`
--
ALTER TABLE `wp_responsive_menu`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_alm`
--
ALTER TABLE `wp_alm`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_es_deliverreport`
--
ALTER TABLE `wp_es_deliverreport`
  MODIFY `es_deliver_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_es_emaillist`
--
ALTER TABLE `wp_es_emaillist`
  MODIFY `es_email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_es_notification`
--
ALTER TABLE `wp_es_notification`
  MODIFY `es_note_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_es_sentdetails`
--
ALTER TABLE `wp_es_sentdetails`
  MODIFY `es_sent_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=897;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=821;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
