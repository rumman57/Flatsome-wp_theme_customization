-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2016 at 11:12 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `woocommerce1`
--

-- --------------------------------------------------------

--
-- Table structure for table `woo1commentmeta`
--

CREATE TABLE `woo1commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `woo1comments`
--

CREATE TABLE `woo1comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1comments`
--

INSERT INTO `woo1comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 248, 'WooCommerce', '', '', '', '2016-06-13 22:31:19', '2016-06-13 22:31:19', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 248, 'rumman', 'rummanyt@gmail.com', '', '', '2016-06-13 22:32:19', '2016-06-13 22:32:19', 'Order status changed from On Hold to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `woo1links`
--

CREATE TABLE `woo1links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `woo1nf_objectmeta`
--

CREATE TABLE `woo1nf_objectmeta` (
  `id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `woo1nf_objectmeta`
--

INSERT INTO `woo1nf_objectmeta` (`id`, `object_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'date_updated', '2016-06-11'),
(2, 1, 'form_title', 'Contact Form'),
(3, 1, 'show_title', '0'),
(4, 1, 'save_subs', '1'),
(5, 1, 'logged_in', '0'),
(6, 1, 'append_page', ''),
(7, 1, 'ajax', '0'),
(8, 1, 'clear_complete', '1'),
(9, 1, 'hide_complete', '1'),
(10, 1, 'success_msg', 'Your form has been successfully submitted.'),
(11, 1, 'email_from', ''),
(12, 1, 'email_type', 'html'),
(13, 1, 'user_email_msg', 'Thank you so much for contacting us. We will get back to you shortly.'),
(14, 1, 'user_email_fields', '0'),
(15, 1, 'admin_email_msg', ''),
(16, 1, 'admin_email_fields', '1'),
(17, 1, 'admin_attach_csv', '0'),
(18, 1, 'email_from_name', ''),
(19, 2, 'date_updated', '2014-09-09'),
(20, 2, 'active', '1'),
(21, 2, 'name', 'Email User'),
(22, 2, 'type', 'email'),
(23, 2, 'email_format', 'html'),
(24, 2, 'attach_csv', '1'),
(25, 2, 'from_name', ''),
(26, 2, 'from_address', ''),
(27, 2, 'reply_to', ''),
(28, 2, 'to', 'field_2'),
(29, 2, 'cc', ''),
(30, 2, 'bcc', ''),
(31, 2, 'email_subject', 'Thank you for contacting us!'),
(32, 2, 'email_message', 'Thank you so much for contacting us. We will get back to you shortly.'),
(33, 2, 'redirect_url', ''),
(34, 2, 'success_message_loc', 'ninja_forms_display_before_fields'),
(35, 2, 'success_msg', ''),
(36, 3, 'date_updated', '2014-09-09'),
(37, 3, 'active', '1'),
(38, 3, 'name', 'Success Message'),
(39, 3, 'type', 'success_message'),
(40, 3, 'email_format', 'html'),
(41, 3, 'attach_csv', '0'),
(42, 3, 'from_name', ''),
(43, 3, 'from_address', ''),
(44, 3, 'reply_to', ''),
(45, 3, 'to', ''),
(46, 3, 'cc', ''),
(47, 3, 'bcc', ''),
(48, 3, 'email_subject', ''),
(49, 3, 'email_message', ''),
(50, 3, 'redirect_url', ''),
(51, 3, 'success_message_loc', 'ninja_forms_display_after_fields'),
(52, 3, 'success_msg', 'Your form has been successfully submitted.'),
(53, 3, 'text_message_number', ''),
(54, 3, 'text_message_carrier', '0'),
(55, 3, 'text_message_message', ''),
(56, 4, 'date_updated', '2014-09-09'),
(57, 4, 'active', '1'),
(58, 4, 'name', 'Email Admin'),
(59, 4, 'type', 'email'),
(60, 4, 'email_format', 'html'),
(61, 4, 'attach_csv', '1'),
(62, 4, 'from_name', ''),
(63, 4, 'from_address', ''),
(64, 4, 'reply_to', 'field_2'),
(65, 4, 'to', ''),
(66, 4, 'cc', ''),
(67, 4, 'bcc', ''),
(68, 4, 'email_subject', 'Ninja Form Submission'),
(69, 4, 'email_message', '[ninja_forms_all_fields]'),
(70, 4, 'redirect_url', ''),
(71, 4, 'success_message_loc', 'ninja_forms_display_before_fields'),
(72, 4, 'success_msg', ''),
(73, 4, 'text_message_number', ''),
(74, 4, 'text_message_carrier', '0'),
(75, 4, 'text_message_message', ''),
(81, 6, 'date_updated', '2016-06-13 22:55:05'),
(82, 6, 'clear_complete', '1'),
(83, 6, 'hide_complete', '1'),
(84, 6, 'show_title', '0'),
(85, 6, 'status', ''),
(86, 6, 'form_title', 'newsletter'),
(87, 6, 'last_sub', '2');

-- --------------------------------------------------------

--
-- Table structure for table `woo1nf_objects`
--

CREATE TABLE `woo1nf_objects` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `woo1nf_objects`
--

INSERT INTO `woo1nf_objects` (`id`, `type`) VALUES
(1, 'form'),
(2, 'notification'),
(3, 'notification'),
(4, 'notification'),
(6, 'form');

-- --------------------------------------------------------

--
-- Table structure for table `woo1nf_relationships`
--

CREATE TABLE `woo1nf_relationships` (
  `id` bigint(20) NOT NULL,
  `child_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `child_type` varchar(255) NOT NULL,
  `parent_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `woo1nf_relationships`
--

INSERT INTO `woo1nf_relationships` (`id`, `child_id`, `parent_id`, `child_type`, `parent_type`) VALUES
(1, 2, 1, 'notification', 'form'),
(2, 3, 1, 'notification', 'form'),
(3, 4, 1, 'notification', 'form');

-- --------------------------------------------------------

--
-- Table structure for table `woo1ninja_forms_fav_fields`
--

CREATE TABLE `woo1ninja_forms_fav_fields` (
  `id` int(11) NOT NULL,
  `row_type` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `woo1ninja_forms_fav_fields`
--

INSERT INTO `woo1ninja_forms_fav_fields` (`id`, `row_type`, `type`, `order`, `data`, `name`) VALUES
(2, 0, '_list', 0, 'a:10:{s:5:"label";s:14:"State Dropdown";s:9:"label_pos";s:4:"left";s:9:"list_type";s:8:"dropdown";s:10:"multi_size";s:1:"5";s:15:"list_show_value";s:1:"1";s:4:"list";a:1:{s:7:"options";a:51:{i:0;a:3:{s:5:"label";s:7:"Alabama";s:5:"value";s:2:"AL";s:8:"selected";s:1:"0";}i:1;a:3:{s:5:"label";s:6:"Alaska";s:5:"value";s:2:"AK";s:8:"selected";s:1:"0";}i:2;a:3:{s:5:"label";s:7:"Arizona";s:5:"value";s:2:"AZ";s:8:"selected";s:1:"0";}i:3;a:3:{s:5:"label";s:8:"Arkansas";s:5:"value";s:2:"AR";s:8:"selected";s:1:"0";}i:4;a:3:{s:5:"label";s:10:"California";s:5:"value";s:2:"CA";s:8:"selected";s:1:"0";}i:5;a:3:{s:5:"label";s:8:"Colorado";s:5:"value";s:2:"CO";s:8:"selected";s:1:"0";}i:6;a:3:{s:5:"label";s:11:"Connecticut";s:5:"value";s:2:"CT";s:8:"selected";s:1:"0";}i:7;a:3:{s:5:"label";s:8:"Delaware";s:5:"value";s:2:"DE";s:8:"selected";s:1:"0";}i:8;a:3:{s:5:"label";s:20:"District of Columbia";s:5:"value";s:2:"DC";s:8:"selected";s:1:"0";}i:9;a:3:{s:5:"label";s:7:"Florida";s:5:"value";s:2:"FL";s:8:"selected";s:1:"0";}i:10;a:3:{s:5:"label";s:7:"Georgia";s:5:"value";s:2:"GA";s:8:"selected";s:1:"0";}i:11;a:3:{s:5:"label";s:6:"Hawaii";s:5:"value";s:2:"HI";s:8:"selected";s:1:"0";}i:12;a:3:{s:5:"label";s:5:"Idaho";s:5:"value";s:2:"ID";s:8:"selected";s:1:"0";}i:13;a:3:{s:5:"label";s:8:"Illinois";s:5:"value";s:2:"IL";s:8:"selected";s:1:"0";}i:14;a:3:{s:5:"label";s:7:"Indiana";s:5:"value";s:2:"IN";s:8:"selected";s:1:"0";}i:15;a:3:{s:5:"label";s:4:"Iowa";s:5:"value";s:2:"IA";s:8:"selected";s:1:"0";}i:16;a:3:{s:5:"label";s:6:"Kansas";s:5:"value";s:2:"KS";s:8:"selected";s:1:"0";}i:17;a:3:{s:5:"label";s:8:"Kentucky";s:5:"value";s:2:"KY";s:8:"selected";s:1:"0";}i:18;a:3:{s:5:"label";s:9:"Louisiana";s:5:"value";s:2:"LA";s:8:"selected";s:1:"0";}i:19;a:3:{s:5:"label";s:5:"Maine";s:5:"value";s:2:"ME";s:8:"selected";s:1:"0";}i:20;a:3:{s:5:"label";s:8:"Maryland";s:5:"value";s:2:"MD";s:8:"selected";s:1:"0";}i:21;a:3:{s:5:"label";s:13:"Massachusetts";s:5:"value";s:2:"MA";s:8:"selected";s:1:"0";}i:22;a:3:{s:5:"label";s:8:"Michigan";s:5:"value";s:2:"MI";s:8:"selected";s:1:"0";}i:23;a:3:{s:5:"label";s:9:"Minnesota";s:5:"value";s:2:"MN";s:8:"selected";s:1:"0";}i:24;a:3:{s:5:"label";s:11:"Mississippi";s:5:"value";s:2:"MS";s:8:"selected";s:1:"0";}i:25;a:3:{s:5:"label";s:8:"Missouri";s:5:"value";s:2:"MO";s:8:"selected";s:1:"0";}i:26;a:3:{s:5:"label";s:7:"Montana";s:5:"value";s:2:"MT";s:8:"selected";s:1:"0";}i:27;a:3:{s:5:"label";s:8:"Nebraska";s:5:"value";s:2:"NE";s:8:"selected";s:1:"0";}i:28;a:3:{s:5:"label";s:6:"Nevada";s:5:"value";s:2:"NV";s:8:"selected";s:1:"0";}i:29;a:3:{s:5:"label"3s:13:"New Hampshire";s:5:"value";s:2:"NH";s:8:"selected";s:1:"0";}i:30;a:3:{s:5:"label";s:10:"New Jersey";s:5:"value";s:2:"NJ";s:8:"selected";s:1:"0";}i:31;a:3:{s:5:"label";s:10:"New Mexico";s:5:"value";s:2:"NM";s:8:"selected";s:1:"0";}i:32;a:3:{s:5:"label";s:8:"New York";s:5:"value";s:2:"NY";s:8:"selected";s:1:"0";}i:33;a:3:{s:5:"label";s:14:"North Carolina";s:5:"value";s:2:"NC";s:8:"selected";s:1:"0";}i:34;a:3:{s:5:"label";s:12:"North Dakota";s:5:"value";s:2:"ND";s:8:"selected";s:1:"0";}i:35;a:3:{s:5:"label";s:4:"Ohio";s:5:"value";s:2:"OH";s:8:"selected";s:1:"0";}i:36;a:3:{s:5:"label";s:8:"Oklahoma";s:5:"value";s:2:"OK";s:8:"selected";s:1:"0";}i:37;a:3:{s:5:"label";s:6:"Oregon";s:5:"value";s:2:"OR";s:8:"selected";s:1:"0";}i:38;a:3:{s:5:"label";s:12:"Pennsylvania";s:5:"value";s:2:"PA";s:8:"selected";s:1:"0";}i:39;a:3:{s:5:"label";s:12:"Rhode Island";s:5:"value";s:2:"RI";s:8:"selected";s:1:"0";}i:40;a:3:{s:5:"label";s:14:"South Carolina";s:5:"value";s:2:"SC";s:8:"selected";s:1:"0";}i:41;a:3:{s:5:"label";s:12:"South Dakota";s:5:"value";s:2:"SD";s:8:"selected";s:1:"0";}i:42;a:3:{s:5:"label";s:9:"Tennessee";s:5:"value";s:2:"TN";s:8:"selected";s:1:"0";}i:43;a:3:{s:5:"label";s:5:"Texas";s:5:"value";s:2:"TX";s:8:"selected";s:1:"0";}i:44;a:3:{s:5:"label";s:4:"Utah";s:5:"value";s:2:"UT";s:8:"selected";s:1:"0";}i:45;a:3:{s:5:"label";s:7:"Vermont";s:5:"value";s:2:"VT";s:8:"selected";s:1:"0";}i:46;a:3:{s:5:"label";s:8:"Virginia";s:5:"value";s:2:"VA";s:8:"selected";s:1:"0";}i:47;a:3:{s:5:"label";s:10:"Washington";s:5:"value";s:2:"WA";s:8:"selected";s:1:"0";}i:48;a:3:{s:5:"label";s:13:"West Virginia";s:5:"value";s:2:"WV";s:8:"selected";s:1:"0";}i:49;a:3:{s:5:"label";s:9:"Wisconsin";s:5:"value";s:2:"WI";s:8:"selected";s:1:"0";}i:50;a:3:{s:5:"label";s:7:"Wyoming";s:5:"value";s:2:"WY";s:8:"selected";s:1:"0";}}}s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'State Dropdown'),
(3, 0, '_spam', 0, 'a:6:{s:9:"label_pos";s:4:"left";s:5:"label";s:18:"Anti-Spam Question";s:6:"answer";s:16:"Anti-Spam Answer";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'Anti-Spam'),
(4, 0, '_submit', 0, 'a:4:{s:5:"label";s:6:"Submit";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'Submit'),
(5, 0, '_tax', 0, 'a:11:{s:5:"label";s:3:"Tax";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:19:"payment_field_group";s:1:"1";s:11:"payment_tax";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"conditional";s:0:"";s:11:"calc_option";s:1:"0";s:4:"calc";s:0:"";}', 'Tax'),
(6, 0, '_text', 0, 'a:19:{s:5:"label";s:10:"First Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"1";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'First Name'),
(7, 0, '_text', 0, 'a:19:{s:5:"label";s:9:"Last Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"1";s:9:"from_name";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Last Name'),
(8, 0, '_text', 0, 'a:23:{s:5:"label";s:9:"Address 1";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"1";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Address 1'),
(9, 0, '_text', 0, 'a:23:{s:5:"label";s:9:"Address 2";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"1";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Address 2'),
(10, 0, '_text', 0, 'a:23:{s:5:"label";s:4:"City";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"1";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'City'),
(11, 0, '_list', 0, 'a:16:{s:5:"label";s:5:"State";s:9:"label_pos";s:5:"above";s:10:"multi_size";s:1:"5";s:15:"list_show_value";s:1:"1";s:4:"list";a:1:{s:7:"options";a:51:{i:0;a:4:{s:5:"label";s:7:"Alabama";s:5:"value";s:2:"AL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:1;a:4:{s:5:"label";s:6:"Alaska";s:5:"value";s:2:"AK";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:2;a:4:{s:5:"label";s:7:"Arizona";s:5:"value";s:2:"AZ";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:3;a:4:{s:5:"label";s:8:"Arkansas";s:5:"value";s:2:"AR";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:4;a:4:{s:5:"label";s:10:"California";s:5:"value";s:2:"CA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:5;a:4:{s:5:"label";s:8:"Colorado";s:5:"value";s:2:"CO";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:6;a:4:{s:5:"label";s:11:"Connecticut";s:5:"value";s:2:"CT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:7;a:4:{s:5:"label";s:8:"Delaware";s:5:"value";s:2:"DE";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:8;a:4:{s:5:"label";s:20:"District of Columbia";s:5:"value";s:2:"DC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:9;a:4:{s:5:"label";s:7:"Florida";s:5:"value";s:2:"FL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:10;a:4:{s:5:"label";s:7:"Georgia";s:5:"value";s:2:"GA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:11;a:4:{s:5:"label";s:6:"Hawaii";s:5:"value";s:2:"HI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:12;a:4:{s:5:"label";s:5:"Idaho";s:5:"value";s:2:"ID";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:13;a:4:{s:5:"label";s:8:"Illinois";s:5:"value";s:2:"IL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:14;a:4:{s:5:"label";s:7:"Indiana";s:5:"value";s:2:"IN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:15;a:4:{s:5:"label";s:4:"Iowa";s:5:"value";s:2:"IA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:16;a:4:{s:5:"label";s:6:"Kansas";s:5:"value";s:2:"KS";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:17;a:4:{s:5:"label";s:8:"Kentucky";s:5:"value";s:2:"KY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:18;a:4:{s:5:"label";s:9:"Louisiana";s:5:"value";s:2:"LA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:19;a:4:{s:5:"label";s:5:"Maine";s:5:"value";s:2:"ME";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:20;a:4:{s:5:"label";s:8:"Maryland";s:5:"value";s:2:"MD";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:21;a:4:{s:5:"label";s:13:"Massachusetts";s:5:"value";s:2:"MA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:22;a:4:{s:5:"label";s:8:"Michigan";s:5:"value";s:2:"MI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:23;a:4:{s:5:"label";s:9:"Minnesota";s:5:"value";s:2:"MN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:24;a:4:{s:5:"label";s:11:"Mississippi";s:5:"value";s:2:"MS";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:25;a:4:{s:5:"label";s:8:"Missouri";s:5:"value";s:2:"MO";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:26;a:4:{s:5:"label";s:7:"Montana";s:5:"value";s:2:"MT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:27;a:4:{s:5:"label";s:8:"Nebraska";s:5:"value";s:2:"NE";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:28;a:4:{s:5:"label";s:6:"Nevada";s:5:"value";s:2:"NV";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:29;a:4:{s:5:"label";s:13:"New Hampshire";s:5:"value";s:2:"NH";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:30;a:4:{s:5:"label";s:10:"New Jersey";s:5:"value";s:2:"NJ";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:31;a:4:{s:5:"label";s:10:"New Mexico";s:5:"value";s:2:"NM";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:32;a:4:{s:5:"label";s:8:"New York";s:5:"value";s:2:"NY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:33;a:4:{s:5:"label";s:14:"North Carolina";s:5:"value";s:2:"NC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:34;a:4:{s:5:"label";s:12:"North Dakota";s:5:"value";s:2:"ND";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:35;a:4:{s:5:"label";s:4:"Ohio";s:5:"value";s:2:"OH";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:36;a:4:{s:5:"label";s:8:"Oklahoma";s:5:"value";s:2:"OK";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:37;a:4:{s:5:"label";s:6:"Oregon";s:5:"value";s:2:"OR";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:38;a:4:{s:5:"label";s:12:"Pennsylvania";s:5:"value";s:2:"PA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:39;a:4:{s:5:"label";s:12:"Rhode Island";s:5:"value";s:2:"RI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:40;a:4:{s:5:"label";s:14:"South Carolina";s:5:"value";s:2:"SC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:41;a:4:{s:5:"label";s:12:"South Dakota";s:5:"value";s:2:"SD";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:42;a:4:{s:5:"label";s:9:"Tennessee";s:5:"value";s:2:"TN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:43;a:4:{s:5:"label";s:5:"Texas";s:5:"value";s:2:"TX";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:44;a:4:{s:5:"label";s:4:"Utah";s:5:"value";s:2:"UT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:45;a:4:{s:5:"label";s:7:"Vermont";s:5:"value";s:2:"VT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:46;a:4:{s:5:"label";s:8:"Virginia";s:5:"value";s:2:"VA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:47;a:4:{s:5:"label";s:10:"Washington";s:5:"value";s:2:"WA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:48;a:4:{s:5:"label";s:13:"West Virginia";s:5:"value";s:2:"WV";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:49;a:4:{s:5:"label";s:9:"Wisconsin";s:5:"value";s:2:"WI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:50;a:4:{s:5:"label";s:7:"Wyoming";s:5:"value";s:2:"WY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}}}s:9:"list_type";s:8:"dropdown";s:10:"user_state";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:13:"populate_term";s:0:"";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'State'),
(12, 0, '_text', 0, 'a:23:{s:5:"label";s:15:"Zip / Post Code";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Zip / Post Code'),
(13, 0, '_country', 0, 'a:10:{s:5:"label";s:7:"Country";s:9:"label_pos";s:5:"above";s:13:"default_value";s:2:"US";s:21:"user_info_field_group";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Country'),
(14, 0, '_text', 0, 'a:25:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Email'),
(15, 0, '_text', 0, 'a:25:{s:5:"label";s:5:"Phone";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:14:"(999) 999-9999";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"1";s:10:"user_email";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Phone'),
(16, 0, '_calc', 0, 'a:20:{s:9:"calc_name";s:9:"sub_total";s:13:"default_value";s:0:"";s:17:"calc_display_type";s:4:"text";s:5:"label";s:9:"Sub Total";s:9:"label_pos";s:5:"above";s:26:"calc_display_text_disabled";s:1:"1";s:17:"calc_display_html";s:26:"<p>[ninja_forms_calc]</p>\n";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"calc_method";s:4:"auto";s:4:"calc";s:0:"";s:7:"calc_eq";s:0:"";s:19:"payment_field_group";s:1:"1";s:13:"payment_total";s:1:"0";s:17:"payment_sub_total";s:1:"1";s:11:"calc_places";s:1:"2";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Sub Total'),
(17, 0, '_calc', 0, 'a:20:{s:9:"calc_name";s:5:"total";s:13:"default_value";s:0:"";s:17:"calc_display_type";s:4:"text";s:5:"label";s:5:"Total";s:9:"label_pos";s:5:"above";s:26:"calc_display_text_disabled";s:1:"1";s:17:"calc_display_html";s:26:"<p>[ninja_forms_calc]</p>\n";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"calc_method";s:4:"auto";s:4:"calc";a:5:{i:0;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"70";}i:1;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"69";}i:2;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"15";}i:3;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"61";}i:4;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"70";}}s:7:"calc_eq";s:5:"5 + 5";s:19:"payment_field_group";s:1:"1";s:13:"payment_total";s:1:"1";s:17:"payment_sub_total";s:1:"0";s:11:"calc_places";s:1:"2";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Total'),
(92, 0, '_credit_card', 0, 'a:6:{s:5:"label";s:11:"Credit Card";s:19:"payment_field_group";s:1:"1";s:3:"req";s:1:"0";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"conditional";s:0:"";}', 'Credit Card');

-- --------------------------------------------------------

--
-- Table structure for table `woo1ninja_forms_fields`
--

CREATE TABLE `woo1ninja_forms_fields` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `fav_id` int(11) DEFAULT NULL,
  `def_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `woo1ninja_forms_fields`
--

INSERT INTO `woo1ninja_forms_fields` (`id`, `form_id`, `type`, `order`, `data`, `fav_id`, `def_id`) VALUES
(1, 1, '_text', 0, 'a:24:{s:5:"label";s:4:"Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:0:"";s:14:"user_address_2";s:0:"";s:9:"user_city";s:0:"";s:8:"user_zip";s:0:"";s:10:"user_phone";s:0:"";s:10:"user_email";s:0:"";s:21:"user_info_field_group";s:0:"";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}', 0, 0),
(2, 1, '_text', 1, 'a:28:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 14),
(3, 1, '_textarea', 2, 'a:14:{s:5:"label";s:7:"Message";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:12:"textarea_rte";s:1:"0";s:14:"textarea_media";s:1:"0";s:18:"disable_rte_mobile";s:1:"0";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}', 0, 0),
(4, 1, '_submit', 4, 'a:7:{s:5:"label";s:4:"Send";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 0),
(5, 6, '_text', 0, 'a:40:{s:5:"label";s:5:"Email";s:9:"label_pos";s:6:"inside";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:11:"placeholder";s:13:"abc@gmail.com";s:13:"disable_input";s:1:"0";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:4:"char";s:15:"input_limit_msg";s:0:"";s:10:"user_state";s:1:"0";s:16:"autocomplete_off";s:1:"0";s:8:"num_sort";s:1:"0";s:18:"default_value_type";s:0:"";s:11:"admin_label";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', NULL, 14),
(6, 6, '_submit', 1, 'a:8:{s:5:"label";s:7:"Sign Up";s:15:"input_limit_msg";s:17:"character(s) left";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `woo1options`
--

CREATE TABLE `woo1options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1options`
--

INSERT INTO `woo1options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wptestsite', 'yes'),
(2, 'home', 'http://localhost/wptestsite', 'yes'),
(3, 'blogname', 'woocommerce Once', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rummanyt@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:301:{s:9:"blocks/?$";s:26:"index.php?post_type=blocks";s:39:"blocks/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=blocks&feed=$matches[1]";s:34:"blocks/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=blocks&feed=$matches[1]";s:26:"blocks/page/([0-9]{1,})/?$";s:44:"index.php?post_type=blocks&paged=$matches[1]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:47:"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$";s:76:"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]";s:30:"(([^/]+/)*wishlist)(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&wishlist-action=$matches[4]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:16:"featured_item/?$";s:33:"index.php?post_type=featured_item";s:46:"featured_item/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_type=featured_item&feed=$matches[1]";s:41:"featured_item/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_type=featured_item&feed=$matches[1]";s:33:"featured_item/page/([0-9]{1,})/?$";s:51:"index.php?post_type=featured_item&paged=$matches[1]";s:11:"sidebars/?$";s:27:"index.php?post_type=sidebar";s:41:"sidebars/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=sidebar&feed=$matches[1]";s:36:"sidebars/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=sidebar&feed=$matches[1]";s:28:"sidebars/page/([0-9]{1,})/?$";s:45:"index.php?post_type=sidebar&paged=$matches[1]";s:32:"blocks/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"blocks/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"blocks/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"blocks/(.+?)/embed/?$";s:39:"index.php?blocks=$matches[1]&embed=true";s:25:"blocks/(.+?)/trackback/?$";s:33:"index.php?blocks=$matches[1]&tb=1";s:45:"blocks/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?blocks=$matches[1]&feed=$matches[2]";s:40:"blocks/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?blocks=$matches[1]&feed=$matches[2]";s:33:"blocks/(.+?)/page/?([0-9]{1,})/?$";s:46:"index.php?blocks=$matches[1]&paged=$matches[2]";s:40:"blocks/(.+?)/comment-page-([0-9]{1,})/?$";s:46:"index.php?blocks=$matches[1]&cpage=$matches[2]";s:30:"blocks/(.+?)/wc-api(/(.*))?/?$";s:47:"index.php?blocks=$matches[1]&wc-api=$matches[3]";s:36:"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:47:"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:29:"blocks/(.+?)(?:/([0-9]+))?/?$";s:45:"index.php?blocks=$matches[1]&page=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:57:"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?block_categories=$matches[1]&feed=$matches[2]";s:52:"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?block_categories=$matches[1]&feed=$matches[2]";s:33:"block_categories/([^/]+)/embed/?$";s:49:"index.php?block_categories=$matches[1]&embed=true";s:45:"block_categories/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?block_categories=$matches[1]&paged=$matches[2]";s:27:"block_categories/([^/]+)/?$";s:38:"index.php?block_categories=$matches[1]";s:34:"nf_sub/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"nf_sub/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"nf_sub/([^/]+)/embed/?$";s:39:"index.php?nf_sub=$matches[1]&embed=true";s:27:"nf_sub/([^/]+)/trackback/?$";s:33:"index.php?nf_sub=$matches[1]&tb=1";s:35:"nf_sub/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?nf_sub=$matches[1]&paged=$matches[2]";s:42:"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?nf_sub=$matches[1]&cpage=$matches[2]";s:32:"nf_sub/([^/]+)/wc-api(/(.*))?/?$";s:47:"index.php?nf_sub=$matches[1]&wc-api=$matches[3]";s:38:"nf_sub/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:49:"nf_sub/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:31:"nf_sub/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?nf_sub=$matches[1]&page=$matches[2]";s:23:"nf_sub/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"nf_sub/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"nf_sub/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"featured_item/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"featured_item/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"featured_item/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"featured_item/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"featured_item/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"featured_item/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"featured_item/(.+?)/embed/?$";s:46:"index.php?featured_item=$matches[1]&embed=true";s:32:"featured_item/(.+?)/trackback/?$";s:40:"index.php?featured_item=$matches[1]&tb=1";s:52:"featured_item/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?featured_item=$matches[1]&feed=$matches[2]";s:47:"featured_item/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?featured_item=$matches[1]&feed=$matches[2]";s:40:"featured_item/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?featured_item=$matches[1]&paged=$matches[2]";s:47:"featured_item/(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?featured_item=$matches[1]&cpage=$matches[2]";s:37:"featured_item/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?featured_item=$matches[1]&wc-api=$matches[3]";s:43:"featured_item/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:54:"featured_item/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:36:"featured_item/(.+?)(?:/([0-9]+))?/?$";s:52:"index.php?featured_item=$matches[1]&page=$matches[2]";s:63:"featured_item_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:61:"index.php?featured_item_category=$matches[1]&feed=$matches[2]";s:58:"featured_item_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:61:"index.php?featured_item_category=$matches[1]&feed=$matches[2]";s:39:"featured_item_category/([^/]+)/embed/?$";s:55:"index.php?featured_item_category=$matches[1]&embed=true";s:51:"featured_item_category/([^/]+)/page/?([0-9]{1,})/?$";s:62:"index.php?featured_item_category=$matches[1]&paged=$matches[2]";s:33:"featured_item_category/([^/]+)/?$";s:44:"index.php?featured_item_category=$matches[1]";s:58:"featured_item_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?featured_item_tag=$matches[1]&feed=$matches[2]";s:53:"featured_item_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?featured_item_tag=$matches[1]&feed=$matches[2]";s:34:"featured_item_tag/([^/]+)/embed/?$";s:50:"index.php?featured_item_tag=$matches[1]&embed=true";s:46:"featured_item_tag/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?featured_item_tag=$matches[1]&paged=$matches[2]";s:28:"featured_item_tag/([^/]+)/?$";s:39:"index.php?featured_item_tag=$matches[1]";s:36:"sidebars/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"sidebars/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"sidebars/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"sidebars/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"sidebars/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"sidebars/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"sidebars/([^/]+)/embed/?$";s:40:"index.php?sidebar=$matches[1]&embed=true";s:29:"sidebars/([^/]+)/trackback/?$";s:34:"index.php?sidebar=$matches[1]&tb=1";s:49:"sidebars/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?sidebar=$matches[1]&feed=$matches[2]";s:44:"sidebars/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?sidebar=$matches[1]&feed=$matches[2]";s:37:"sidebars/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?sidebar=$matches[1]&paged=$matches[2]";s:44:"sidebars/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?sidebar=$matches[1]&cpage=$matches[2]";s:34:"sidebars/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?sidebar=$matches[1]&wc-api=$matches[3]";s:40:"sidebars/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"sidebars/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"sidebars/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?sidebar=$matches[1]&page=$matches[2]";s:25:"sidebars/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"sidebars/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"sidebars/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"sidebars/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"sidebars/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"sidebars/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=11&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:53:"nextend-facebook-connect/nextend-facebook-connect.php";i:1;s:27:"ninja-forms/ninja-forms.php";i:2;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:3;s:39:"taxonomy-metadata/taxonomy-metadata.php";i:4;s:27:"woocommerce/woocommerce.php";i:5;s:27:"woosidebars/woosidebars.php";i:6;s:33:"wp-user-avatar/wp-user-avatar.php";i:7;s:37:"yith-woocommerce-ajax-search/init.php";i:8;s:34:"yith-woocommerce-wishlist/init.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:65:"C:\\xampp\\htdocs\\woocommerce1/wp-content/themes/flatsome/style.css";i:2;s:0:"";}', 'no'),
(40, 'template', 'flatsome', 'yes'),
(41, 'stylesheet', 'flatsome', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:1;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:38:"ninja-forms/deprecated/ninja-forms.php";s:21:"ninja_forms_uninstall";s:27:"ninja-forms/ninja-forms.php";a:2:{i:0;s:8:"Freemius";i:1;s:22:"_uninstall_plugin_hook";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '13', 'yes'),
(84, 'page_on_front', '11', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'woo1user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:12:"sidebar-main";a:4:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";}s:12:"shop-sidebar";a:1:{i:0;s:32:"woocommerce_product_categories-3";}s:15:"product-sidebar";a:1:{i:0;s:32:"woocommerce_product_categories-2";}s:16:"sidebar-footer-1";a:0:{}s:16:"sidebar-footer-2";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:10:{i:1470607806;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1470614400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1470635041;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1470635057;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1470639059;a:1:{s:24:"ninja_forms_daily_action";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1470639117;a:2:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1470639231;a:1:{s:29:"wp_session_garbage_collection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1470658233;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1472947200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(111, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1470604246;s:7:"checked";a:4:{s:8:"flatsome";s:5:"2.5.3";s:13:"twentyfifteen";s:3:"1.5";s:14:"twentyfourteen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(118, '_transient_twentysixteen_categories', '1', 'yes'),
(119, 'can_compress_scripts', '1', 'yes'),
(122, '_site_transient_timeout_wporg_theme_feature_list', '1465638435', 'yes'),
(123, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1465627682;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(125, 'current_theme', 'Flatsome (shared on wplocker.com)', 'yes');
INSERT INTO `woo1options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(126, 'theme_mods_flatsome', 'a:145:{i:0;b:0;s:12:"social_icons";a:6:{s:8:"facebook";s:1:"1";s:7:"twitter";s:1:"1";s:5:"email";s:1:"1";s:9:"pinterest";s:1:"1";s:10:"googleplus";s:1:"1";s:2:"vk";s:1:"0";}s:7:"backups";a:142:{i:0;b:0;s:12:"social_icons";a:6:{s:8:"facebook";s:1:"1";s:7:"twitter";s:1:"1";s:5:"email";s:1:"1";s:9:"pinterest";s:1:"1";s:10:"googleplus";s:1:"1";s:2:"vk";s:1:"0";}s:7:"backups";N;s:17:"minified_flatsome";i:0;s:16:"flatsome_builder";i:1;s:16:"maintenance_mode";i:0;s:21:"maintenance_mode_text";s:24:"Please check back soon..";s:19:"html_scripts_header";s:0:"";s:19:"html_scripts_footer";s:0:"";s:15:"html_custom_css";s:6:"div {}";s:22:"html_custom_css_mobile";s:0:"";s:9:"site_logo";s:70:"http://localhost/wptestsite/wp-content/uploads/2016/06/Drawing-4.png";s:12:"site_favicon";s:0:"";s:18:"site_favicon_large";s:0:"";s:16:"custom_cart_icon";s:0:"";s:14:"site_logo_dark";s:0:"";s:16:"site_logo_sticky";s:0:"";s:11:"body_layout";s:10:"full-width";s:10:"box_shadow";i:0;s:7:"body_bg";s:0:"";s:13:"body_bg_image";s:0:"";s:12:"body_bg_type";s:12:"bg-full-size";s:13:"content_color";s:5:"light";s:10:"content_bg";s:4:"#FFF";s:13:"header_preset";s:0:"";s:13:"header_height";s:3:"120";s:10:"logo_width";s:3:"210";s:13:"logo_position";s:4:"left";s:10:"search_pos";s:4:"left";s:12:"nav_position";s:3:"top";s:8:"nav_size";s:3:"80%";s:18:"myaccount_dropdown";i:1;s:9:"show_cart";i:1;s:14:"top_right_text";s:0:"";s:13:"header_sticky";i:1;s:20:"header_height_sticky";s:2:"70";s:12:"header_color";s:5:"light";s:9:"header_bg";s:4:"#fff";s:13:"header_bg_img";s:0:"";s:17:"header_bg_img_pos";s:8:"repeat-x";s:11:"topbar_show";i:1;s:9:"topbar_bg";s:0:"";s:11:"topbar_left";s:42:"Add anything here here or just remove it..";s:12:"topbar_right";s:0:"";s:15:"nav_position_bg";s:4:"#eee";s:18:"nav_position_color";s:5:"light";s:17:"nav_position_text";s:26:"Add shortcode or text here";s:21:"nav_position_text_top";s:26:"Add shortcode or text here";s:17:"html_after_header";s:0:"";s:10:"html_intro";s:0:"";s:16:"footer_left_text";s:32:"Copyright 2016 © GivenByRumman ";s:17:"footer_right_text";s:0:"";s:14:"footer_1_color";s:5:"light";s:17:"footer_1_bg_color";s:4:"#fff";s:17:"footer_1_bg_image";s:0:"";s:16:"footer_1_columns";s:7:"large-3";s:14:"footer_2_color";s:4:"dark";s:17:"footer_2_bg_color";s:4:"#777";s:17:"footer_2_bg_image";s:0:"";s:16:"footer_2_columns";s:7:"large-3";s:19:"footer_bottom_style";s:4:"dark";s:19:"footer_bottom_color";s:4:"#333";s:18:"html_before_footer";s:0:"";s:17:"html_after_footer";s:0:"";s:13:"disable_fonts";i:0;s:13:"type_headings";s:4:"Lato";s:10:"type_texts";s:4:"Lato";s:8:"type_nav";s:4:"Lato";s:8:"type_alt";s:14:"Dancing Script";s:11:"type_subset";a:7:{s:5:"latin";s:1:"1";s:12:"cyrillic-ext";s:1:"0";s:9:"greek-ext";s:1:"0";s:5:"greek";s:1:"0";s:10:"vietnamese";s:1:"0";s:9:"latin-ext";s:1:"0";s:8:"cyrillic";s:1:"0";}s:13:"color_primary";s:7:"#627f9a";s:15:"color_secondary";s:7:"#d26e4b";s:13:"color_success";s:7:"#7a9c59";s:11:"color_links";s:0:"";s:13:"button_radius";s:3:"0px";s:15:"dropdown_border";s:0:"";s:11:"dropdown_bg";s:0:"";s:13:"dropdown_text";s:5:"light";s:11:"blog_layout";s:13:"right-sidebar";s:10:"blog_style";s:11:"blog-normal";s:11:"blog_header";s:1:" ";s:15:"blog_after_post";s:1:" ";s:16:"blog_post_layout";s:13:"right-sidebar";s:15:"blog_post_style";s:7:"default";s:15:"blog_author_box";i:1;s:10:"blog_share";i:0;s:13:"blog_parallax";i:0;s:19:"featured_items_page";i:0;s:22:"featured_items_pr_page";s:2:"12";s:22:"featured_items_related";s:7:"default";s:29:"featured_items_related_height";s:5:"250px";s:14:"facebook_login";i:0;s:17:"facebook_login_bg";s:0:"";s:14:"color_checkout";s:0:"";s:10:"color_sale";s:0:"";s:16:"color_new_bubble";s:7:"#7a9c59";s:12:"color_review";s:0:"";s:15:"product_sidebar";s:12:"left_sidebar";s:15:"product_display";s:4:"tabs";s:18:"cart_dropdown_show";s:1:"1";s:13:"show_in_stock";s:1:"0";s:16:"shop_aside_title";s:17:"complete the look";s:12:"product_zoom";s:1:"1";s:16:"related_products";s:6:"slider";s:23:"related_products_pr_row";s:1:"4";s:20:"max_related_products";s:2:"12";s:9:"tab_title";s:0:"";s:11:"tab_content";s:0:"";s:25:"disable_product_scrollbar";s:1:"0";s:23:"html_before_add_to_cart";s:1:" ";s:22:"html_after_add_to_cart";s:0:"";s:14:"html_shop_page";s:0:"";s:16:"category_sidebar";s:12:"left-sidebar";s:10:"grid_style";s:5:"grid1";s:10:"grid_frame";s:6:"normal";s:12:"masonry_grid";s:1:"0";s:16:"add_to_cart_icon";s:7:"disable";s:25:"short_description_in_grid";s:1:"0";s:9:"cat_style";s:10:"text-badge";s:15:"breadcrumb_size";s:17:"breadcrumb-normal";s:15:"breadcrumb_home";s:1:"1";s:18:"category_row_count";s:1:"3";s:25:"category_row_count_mobile";s:1:"2";s:16:"products_pr_page";s:2:"12";s:13:"search_result";s:1:"0";s:13:"product_hover";s:12:"fade_in_back";s:12:"bubble_style";s:6:"style1";s:22:"sale_bubble_percentage";s:1:"0";s:18:"disable_quick_view";s:1:"0";s:15:"coupon_checkout";s:1:"0";s:17:"continue_shopping";s:1:"0";s:16:"html_cart_footer";s:0:"";s:14:"html_thank_you";s:0:"";s:12:"catalog_mode";s:1:"0";s:19:"catalog_mode_prices";s:1:"0";s:19:"catalog_mode_header";s:0:"";s:20:"catalog_mode_product";s:0:"";s:21:"catalog_mode_lightbox";s:0:"";s:19:"facebook_login_text";s:0:"";s:23:"facebook_login_checkout";s:1:"0";s:18:"custom_share_icons";s:0:"";s:10:"backup_log";s:31:"Mon, 13 Jun 2016 03:25:13 +0000";}s:9:"smof_init";s:31:"Sat, 11 Jun 2016 06:48:10 +0000";s:17:"minified_flatsome";i:0;s:16:"flatsome_builder";i:1;s:16:"maintenance_mode";i:0;s:21:"maintenance_mode_text";s:24:"Please check back soon..";s:19:"html_scripts_header";s:0:"";s:19:"html_scripts_footer";s:0:"";s:15:"html_custom_css";s:46:".featured-box.pos-center{\r\ntext-align:left;\r\n}";s:22:"html_custom_css_mobile";s:0:"";s:9:"site_logo";s:51:"[site_url]/wp-content/uploads/2016/06/Drawing-4.png";s:12:"site_favicon";s:0:"";s:18:"site_favicon_large";s:0:"";s:16:"custom_cart_icon";s:0:"";s:14:"site_logo_dark";s:0:"";s:16:"site_logo_sticky";s:0:"";s:11:"body_layout";s:10:"full-width";s:10:"box_shadow";i:0;s:7:"body_bg";s:0:"";s:13:"body_bg_image";s:0:"";s:12:"body_bg_type";s:12:"bg-full-size";s:13:"content_color";s:5:"light";s:10:"content_bg";s:4:"#FFF";s:13:"header_preset";s:0:"";s:13:"header_height";s:3:"120";s:10:"logo_width";s:3:"210";s:13:"logo_position";s:4:"left";s:10:"search_pos";s:4:"left";s:12:"nav_position";s:3:"top";s:8:"nav_size";s:3:"80%";s:18:"myaccount_dropdown";i:1;s:9:"show_cart";i:1;s:14:"top_right_text";s:0:"";s:13:"header_sticky";s:1:"0";s:20:"header_height_sticky";s:2:"70";s:12:"header_color";s:5:"light";s:9:"header_bg";s:4:"#fff";s:13:"header_bg_img";s:0:"";s:17:"header_bg_img_pos";s:8:"repeat-x";s:11:"topbar_show";i:1;s:9:"topbar_bg";s:0:"";s:11:"topbar_left";s:128:"[follow twitter=''http://'' facebook=''http://'' email=''email@post.com''  googleplus=''http://'' linkedin=''http://'' youtube=''http://'' ]";s:12:"topbar_right";s:0:"";s:15:"nav_position_bg";s:4:"#eee";s:18:"nav_position_color";s:5:"light";s:17:"nav_position_text";s:26:"Add shortcode or text here";s:21:"nav_position_text_top";s:26:"Add shortcode or text here";s:17:"html_after_header";s:382:"[lightbox id="newsletter-signup" padding="0px" width="600px"]\r\n[ux_banner bg="[site_url]/wp-content/uploads/2016/06/Blue-Bird-Flying-Picture.jpg" height="400px" text_color="dark" text_align="left" text_pos="left center" text_width="50%" text_bg="" parallax_text="0" parallax="0" effect=""]\r\n<h3>Signup for our Newsletter!</h3>\r\n ____\r\n\r\n[ninja_forms id=6]\r\n[/ux_banner]\r\n[/lightbox]";s:10:"html_intro";s:0:"";s:16:"footer_left_text";s:32:"Copyright 2016 © GivenByRumman ";s:17:"footer_right_text";s:197:"[follow twitter="http://" facebook="http://" email="email@post.com" pinterest="http://" rss="http://" instagram="http://" googleplus="http://" linkedin="http://" youtube="http://" flickr="http://"]";s:14:"footer_1_color";s:5:"light";s:17:"footer_1_bg_color";s:4:"#fff";s:17:"footer_1_bg_image";s:0:"";s:16:"footer_1_columns";s:7:"large-3";s:14:"footer_2_color";s:4:"dark";s:17:"footer_2_bg_color";s:4:"#777";s:17:"footer_2_bg_image";s:0:"";s:16:"footer_2_columns";s:7:"large-3";s:19:"footer_bottom_style";s:4:"dark";s:19:"footer_bottom_color";s:4:"#333";s:18:"html_before_footer";s:0:"";s:17:"html_after_footer";s:0:"";s:13:"disable_fonts";i:0;s:13:"type_headings";s:4:"Lato";s:10:"type_texts";s:4:"Lato";s:8:"type_nav";s:4:"Lato";s:8:"type_alt";s:14:"Dancing Script";s:11:"type_subset";a:7:{s:5:"latin";s:1:"1";s:12:"cyrillic-ext";s:1:"0";s:9:"greek-ext";s:1:"0";s:5:"greek";s:1:"0";s:10:"vietnamese";s:1:"0";s:9:"latin-ext";s:1:"0";s:8:"cyrillic";s:1:"0";}s:13:"color_primary";s:7:"#627f9a";s:15:"color_secondary";s:7:"#d26e4b";s:13:"color_success";s:7:"#7a9c59";s:11:"color_links";s:0:"";s:13:"button_radius";s:3:"0px";s:15:"dropdown_border";s:0:"";s:11:"dropdown_bg";s:0:"";s:13:"dropdown_text";s:5:"light";s:11:"blog_layout";s:13:"right-sidebar";s:10:"blog_style";s:9:"blog-list";s:11:"blog_header";s:1:" ";s:15:"blog_after_post";s:1:" ";s:16:"blog_post_layout";s:10:"no-sidebar";s:15:"blog_post_style";s:7:"default";s:15:"blog_author_box";i:1;s:10:"blog_share";s:1:"1";s:13:"blog_parallax";i:0;s:19:"featured_items_page";i:0;s:22:"featured_items_pr_page";s:2:"12";s:22:"featured_items_related";s:7:"default";s:29:"featured_items_related_height";s:5:"250px";s:14:"facebook_login";i:0;s:17:"facebook_login_bg";s:0:"";s:14:"color_checkout";s:0:"";s:10:"color_sale";s:0:"";s:16:"color_new_bubble";s:7:"#7a9c59";s:12:"color_review";s:0:"";s:15:"product_sidebar";s:12:"left_sidebar";s:15:"product_display";s:4:"tabs";s:18:"cart_dropdown_show";s:1:"1";s:13:"show_in_stock";s:1:"0";s:16:"shop_aside_title";s:17:"complete the look";s:12:"product_zoom";s:1:"1";s:16:"related_products";s:6:"slider";s:23:"related_products_pr_row";s:1:"4";s:20:"max_related_products";s:2:"12";s:9:"tab_title";s:0:"";s:11:"tab_content";s:0:"";s:25:"disable_product_scrollbar";s:1:"0";s:23:"html_before_add_to_cart";s:1:" ";s:22:"html_after_add_to_cart";s:0:"";s:14:"html_shop_page";s:0:"";s:16:"category_sidebar";s:12:"left-sidebar";s:10:"grid_style";s:5:"grid1";s:10:"grid_frame";s:6:"normal";s:12:"masonry_grid";s:1:"0";s:16:"add_to_cart_icon";s:7:"disable";s:25:"short_description_in_grid";s:1:"0";s:9:"cat_style";s:10:"text-badge";s:15:"breadcrumb_size";s:17:"breadcrumb-normal";s:15:"breadcrumb_home";s:1:"1";s:18:"category_row_count";s:1:"3";s:25:"category_row_count_mobile";s:1:"2";s:16:"products_pr_page";s:2:"12";s:13:"search_result";s:1:"0";s:13:"product_hover";s:12:"fade_in_back";s:12:"bubble_style";s:6:"style1";s:22:"sale_bubble_percentage";s:1:"0";s:18:"disable_quick_view";s:1:"0";s:15:"coupon_checkout";s:1:"0";s:17:"continue_shopping";s:1:"0";s:16:"html_cart_footer";s:0:"";s:14:"html_thank_you";s:0:"";s:12:"catalog_mode";s:1:"0";s:19:"catalog_mode_prices";s:1:"0";s:19:"catalog_mode_header";s:0:"";s:20:"catalog_mode_product";s:0:"";s:21:"catalog_mode_lightbox";s:0:"";s:19:"facebook_login_text";s:0:"";s:23:"facebook_login_checkout";s:1:"0";s:18:"custom_share_icons";s:0:"";s:9:"of_backup";s:0:"";s:11:"of_transfer";s:0:"";s:18:"nav_menu_locations";a:5:{s:7:"primary";i:46;s:14:"primary_mobile";i:46;s:11:"top_bar_nav";i:48;s:6:"footer";i:49;s:10:"my_account";i:50;}}', 'yes'),
(127, 'theme_switched', '', 'yes'),
(128, 'widget_flatsome_recent_posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(129, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"247";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(130, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"510";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(131, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"114";s:6:"height";s:3:"130";s:4:"crop";i:1;}', 'yes'),
(134, 'recently_activated', 'a:0:{}', 'yes'),
(135, 'ninja_forms_load_deprecated', '1', 'yes'),
(136, 'ninja_forms_freemius', '1', 'yes'),
(137, 'nf_convert_notifications_complete', '1', 'yes'),
(138, 'nf_convert_subs_step', 'complete', 'yes'),
(139, 'nf_upgrade_notice', 'closed', 'yes'),
(140, 'nf_update_email_settings_complete', '1', 'yes'),
(141, 'nf_email_fav_updated', '1', 'yes'),
(142, 'nf_convert_forms_complete', '1', 'yes'),
(143, 'nf_database_migrations', '1', 'yes'),
(144, 'ninja_forms_settings', 'a:19:{s:11:"date_format";s:5:"d/m/Y";s:15:"currency_symbol";s:1:"$";s:14:"recaptcha_lang";s:2:"en";s:13:"req_div_label";s:80:"Fields marked with an <span class="ninja-forms-req-symbol">*</span> are required";s:16:"req_field_symbol";s:18:"<strong>*</strong>";s:15:"req_error_label";s:48:"Please ensure all required fields are completed.";s:15:"req_field_error";s:24:"This is a required field";s:10:"spam_error";s:47:"Please answer the anti-spam question correctly.";s:14:"honeypot_error";s:34:"Please leave the spam field blank.";s:18:"timed_submit_error";s:31:"Please wait to submit the form.";s:16:"javascript_error";s:54:"You cannot submit the form without Javascript enabled.";s:13:"invalid_email";s:35:"Please enter a valid email address.";s:13:"process_label";s:10:"Processing";s:17:"password_mismatch";s:36:"The passwords provided do not match.";s:10:"preview_id";i:4;s:7:"version";s:6:"2.9.47";s:19:"fix_form_email_from";i:1;s:18:"fix_field_reply_to";i:1;s:22:"version_2_2_25_rte_fix";i:1;}', 'yes'),
(145, 'ninja_forms_version', '2.9.47', 'yes'),
(150, 'woocommerce_default_country', 'BD:DHA', 'yes'),
(151, 'woocommerce_allowed_countries', 'all', 'yes'),
(152, 'woocommerce_specific_allowed_countries', '', 'yes'),
(153, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(154, 'woocommerce_demo_store', 'no', 'yes'),
(155, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(156, 'woocommerce_currency', 'BDT', 'yes'),
(157, 'woocommerce_currency_pos', 'left', 'yes'),
(158, 'woocommerce_price_thousand_sep', ',', 'yes'),
(159, 'woocommerce_price_decimal_sep', '.', 'yes'),
(160, 'woocommerce_price_num_decimals', '2', 'yes'),
(161, 'woocommerce_weight_unit', 'kg', 'yes'),
(162, 'woocommerce_dimension_unit', 'in', 'yes'),
(163, 'woocommerce_enable_review_rating', 'yes', 'no'),
(164, 'woocommerce_review_rating_required', 'yes', 'no'),
(165, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(166, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(167, 'woocommerce_shop_page_id', '93', 'yes'),
(168, 'woocommerce_shop_page_display', '', 'yes'),
(169, 'woocommerce_category_archive_display', '', 'yes'),
(170, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(171, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(172, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(173, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(174, 'woocommerce_manage_stock', 'yes', 'yes'),
(175, 'woocommerce_hold_stock_minutes', '60', 'no'),
(176, 'woocommerce_notify_low_stock', 'yes', 'no'),
(177, 'woocommerce_notify_no_stock', 'yes', 'no'),
(178, 'woocommerce_stock_email_recipient', 'rummanyt@gmail.com', 'no'),
(179, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(180, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(181, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(182, 'woocommerce_stock_format', '', 'yes'),
(183, 'woocommerce_file_download_method', 'force', 'no'),
(184, 'woocommerce_downloads_require_login', 'no', 'no'),
(185, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(186, 'woocommerce_calc_taxes', 'no', 'yes'),
(187, 'woocommerce_prices_include_tax', 'no', 'yes'),
(188, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(189, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(190, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(191, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(192, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(193, 'woocommerce_tax_display_cart', 'excl', 'no'),
(194, 'woocommerce_price_display_suffix', '', 'yes'),
(195, 'woocommerce_tax_total_display', 'itemized', 'no'),
(196, 'woocommerce_enable_coupons', 'yes', 'no'),
(197, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(198, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(199, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(200, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(201, 'woocommerce_cart_page_id', '94', 'yes'),
(202, 'woocommerce_checkout_page_id', '95', 'yes'),
(203, 'woocommerce_terms_page_id', '216', 'no'),
(204, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(205, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(206, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(207, 'woocommerce_calc_shipping', 'no', 'yes'),
(208, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(209, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(210, 'woocommerce_ship_to_destination', 'billing', 'no'),
(211, 'woocommerce_ship_to_countries', '', 'yes'),
(212, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(213, 'woocommerce_myaccount_page_id', '96', 'yes'),
(214, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(215, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(216, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(217, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(218, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(219, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(220, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(221, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(222, 'woocommerce_registration_generate_username', 'yes', 'no'),
(223, 'woocommerce_registration_generate_password', 'no', 'no'),
(224, 'woocommerce_email_from_name', 'woocommerce Once', 'no'),
(225, 'woocommerce_email_from_address', 'rummanyt@gmail.com', 'no'),
(226, 'woocommerce_email_header_image', '', 'no'),
(227, 'woocommerce_email_footer_text', 'woocommerce Once - Powered by WooCommerce', 'no'),
(228, 'woocommerce_email_base_color', '#557da1', 'no'),
(229, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(230, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(231, 'woocommerce_email_text_color', '#505050', 'no'),
(232, 'woocommerce_api_enabled', 'yes', 'yes'),
(233, 'fs_active_plugins', 'O:8:"stdClass":2:{s:7:"plugins";a:1:{s:24:"ninja-forms/lib/Freemius";O:8:"stdClass":3:{s:7:"version";s:7:"1.1.7.4";s:9:"timestamp";i:1465627888;s:11:"plugin_path";s:9:"hello.php";}}s:6:"newest";O:8:"stdClass":5:{s:11:"plugin_path";s:9:"hello.php";s:8:"sdk_path";s:24:"ninja-forms/lib/Freemius";s:7:"version";s:7:"1.1.7.4";s:13:"in_activation";b:1;s:9:"timestamp";i:1465627888;}}', 'yes'),
(234, 'fs_accounts', 'a:4:{s:11:"plugin_data";a:1:{s:11:"ninja-forms";a:11:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:75:"C:/xampp/htdocs/woocommerce1/wp-content/plugins/ninja-forms/ninja-forms.php";}s:17:"install_timestamp";i:1465627888;s:16:"sdk_last_version";N;s:11:"sdk_version";s:7:"1.1.7.4";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:6:"2.9.47";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:0;s:4:"host";s:9:"localhost";s:9:"server_ip";s:3:"::1";s:9:"is_active";b:0;s:9:"timestamp";i:1465627888;s:7:"version";s:6:"2.9.47";}}}s:13:"file_slug_map";a:1:{s:27:"ninja-forms/ninja-forms.php";s:11:"ninja-forms";}s:7:"plugins";a:1:{s:11:"ninja-forms";O:9:"FS_Plugin":15:{s:16:"parent_plugin_id";N;s:5:"title";s:11:"Ninja Forms";s:4:"slug";s:11:"ninja-forms";s:4:"file";s:27:"ninja-forms/ninja-forms.php";s:7:"version";s:6:"2.9.47";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_f2f84038951d45fc8e4ff9747da6d";s:10:"secret_key";N;s:2:"id";s:3:"209";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:1;}}s:9:"unique_id";s:32:"14e28fba1d7f1d5588aae57cb987b6e7";}', 'yes'),
(235, 'fs_options', 'a:1:{s:14:"api_force_http";b:0;}', 'yes'),
(236, 'widget_ninja_forms_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(240, 'nf_admin_notice', 'a:2:{s:10:"three_info";a:3:{s:5:"start";s:9:"6/11/2016";s:3:"int";i:0;s:9:"dismissed";i:1;}s:16:"one_week_support";a:2:{s:5:"start";s:9:"6/18/2016";s:3:"int";i:7;}}', 'yes'),
(253, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(254, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(257, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(258, 'widget_woocommerce_product_categories', 'a:3:{i:2;a:7:{s:5:"title";s:13:"P. Categories";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";i:1;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;}i:3;a:7:{s:5:"title";s:13:"P. Categories";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";i:1;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(259, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(260, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(261, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(262, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(263, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(264, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(265, 'widget_upsell_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(267, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(268, 'woocommerce_db_version', '2.5.5', 'yes'),
(269, 'woocommerce_version', '2.5.5', 'yes'),
(271, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(279, 'woosidebars-version', '1.4.3', 'yes'),
(280, 'yit_recently_activated', 'a:0:{}', 'yes'),
(281, '_transient_timeout_yit_panel_sidebar_remote_widgets', '1466278983', 'no'),
(282, '_transient_yit_panel_sidebar_remote_widgets', 'a:0:{}', 'no'),
(283, '_transient_timeout_yit_panel_sidebar_remote_widgets_update', '1466278983', 'no'),
(284, '_transient_yit_panel_sidebar_remote_widgets_update', '1', 'no'),
(285, 'widget_yith_woocommerce_ajax_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(286, 'yith_wcas_general_videobox', 'a:7:{s:11:"plugin_name";s:28:"YITH WooCommerce Ajax Search";s:18:"title_first_column";s:30:"Discover the Advanced Features";s:24:"description_first_column";s:93:"Upgrade to the PREMIUM VERSION\r\nof YITH WOOCOMMERCE AJAX SEARCH to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"118917627";s:15:"video_image_url";s:115:"http://localhost/wptestsite/wp-content/plugins/yith-woocommerce-ajax-search/assets/images/ajax-search-premium.jpg";s:17:"video_description";s:28:"YITH WooCommerce Ajax Search";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:205:"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:64:"http://yithemes.com/themes/plugins/yith-woocommerce-ajax-search/";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(287, 'yith_wcas_search_input_label', 'Search for products', 'yes'),
(288, 'yith_wcas_search_submit_label', 'Search', 'yes'),
(289, 'yith_wcas_min_chars', '3', 'yes'),
(290, 'yith_wcas_posts_per_page', '3', 'yes'),
(291, 'yith_wcwl_frontend_css_colors', 's:1159:"a:10:{s:15:"add_to_wishlist";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:21:"add_to_wishlist_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:11:"add_to_cart";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:17:"add_to_cart_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_1";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:20:"button_style_1_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_2";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#858484";s:12:"border_color";s:7:"#c6c6c6";}s:20:"button_style_2_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"wishlist_table";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#6d6c6c";s:12:"border_color";s:7:"#FFFFFF";}s:7:"headers";a:1:{s:10:"background";s:7:"#F4F4F4";}}";', 'yes'),
(292, 'yith_wcwl_enabled', 'yes', 'yes'),
(293, 'yith_wcwl_wishlist_title', 'My wishlist on woocommerce Once', 'yes'),
(294, 'yith_wcwl_wishlist_page_id', '5', 'yes'),
(295, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(296, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(297, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(298, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(299, 'yith_wcwl_already_in_wishlist_text', 'The product is already in the wishlist!', 'yes'),
(300, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(301, 'yith_wcwl_add_to_cart_text', 'Add to Cart', 'yes'),
(302, 'yith_wcwl_price_show', 'yes', 'yes'),
(303, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(304, 'yith_wcwl_stock_show', 'yes', 'yes'),
(305, 'yith_wcwl_show_dateadded', 'no', 'yes'),
(306, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(307, 'yith_wcwl_use_button', 'no', 'yes'),
(308, 'yith_wcwl_custom_css', '', 'yes'),
(309, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(310, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(311, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(312, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(313, 'yith_wcwl_share_fb', 'yes', 'yes'),
(314, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(315, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(316, 'yith_wcwl_share_googleplus', 'yes', 'yes'),
(317, 'yith_wcwl_share_email', 'yes', 'yes'),
(319, 'yith_wcwl_socials_title', 'My wishlist on woocommerce Once', 'yes'),
(321, 'yith_wcwl_socials_text', '', 'yes'),
(322, 'yith_wcwl_socials_image_url', '', 'yes'),
(323, 'yith_wfbt_enable_integration', 'no', 'yes'),
(326, '_transient_timeout_geoip_0.0.0.0', '1466232751', 'no'),
(327, '_transient_geoip_0.0.0.0', '', 'no'),
(328, 'yith-wcwl-page-id', '5', 'yes'),
(329, 'yith_wcwl_version', '2.0.15', 'yes'),
(330, 'yith_wcwl_db_version', '2.0.0', 'yes'),
(331, 'yith_wcwl_general_videobox', '', 'yes'),
(337, '_site_transient_timeout_browser_97deb1ae03b93071724464acbc86cc87', '1466249370', 'yes'),
(338, '_site_transient_browser_97deb1ae03b93071724464acbc86cc87', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"51.0.2704.84";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(375, '_transient_product_query-transient-version', '1465786615', 'yes'),
(376, '_transient_product-transient-version', '1470604252', 'yes'),
(407, '_transient_timeout_wc_related_76', '1465797092', 'no'),
(408, '_transient_wc_related_76', 'a:0:{}', 'no'),
(426, '_transient_timeout_wc_related_82', '1465804221', 'no'),
(427, '_transient_wc_related_82', 'a:6:{i:0;s:2:"86";i:1;s:2:"89";i:2;s:2:"99";i:3;s:3:"103";i:4;s:3:"107";i:5;s:3:"112";}', 'no'),
(435, '_transient_timeout_wc_related_86', '1465802728', 'no'),
(436, '_transient_wc_related_86', 'a:2:{i:0;s:2:"76";i:1;s:2:"82";}', 'no'),
(441, '_transient_timeout_wc_related_89', '1465803148', 'no'),
(442, '_transient_wc_related_89', 'a:3:{i:0;s:2:"76";i:1;s:2:"82";i:2;s:2:"86";}', 'no'),
(444, 'woocommerce_paypal_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(445, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(446, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(447, 'woocommerce_bacs_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:5:"title";s:20:"Direct Bank Transfer";s:11:"description";s:173:"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won''t be shipped until the funds have cleared in our account.";s:12:"instructions";s:173:"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won''t be shipped until the funds have cleared in our account.";s:15:"account_details";s:0:"";}', 'yes'),
(453, '_transient_timeout_wc_related_99', '1465803354', 'no'),
(454, '_transient_wc_related_99', 'a:4:{i:0;s:2:"76";i:1;s:2:"82";i:2;s:2:"86";i:3;s:2:"89";}', 'no'),
(459, '_transient_timeout_wc_related_103', '1465803593', 'no'),
(460, '_transient_wc_related_103', 'a:5:{i:0;s:2:"76";i:1;s:2:"86";i:2;s:2:"89";i:3;s:2:"99";i:4;s:2:"82";}', 'no'),
(465, '_transient_timeout_wc_related_107', '1465803792', 'no'),
(466, '_transient_wc_related_107', 'a:6:{i:0;s:2:"76";i:1;s:2:"86";i:2;s:2:"89";i:3;s:2:"99";i:4;s:3:"103";i:5;s:2:"82";}', 'no'),
(510, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(550, '_transient_timeout_wc_related_140', '1465867040', 'no'),
(551, '_transient_wc_related_140', 'a:0:{}', 'no'),
(556, '_transient_timeout_wc_related_141', '1465867439', 'no'),
(557, '_transient_wc_related_141', 'a:1:{i:0;s:3:"117";}', 'no'),
(563, '_transient_timeout_wc_related_143', '1465868094', 'no'),
(564, '_transient_wc_related_143', 'a:2:{i:0;s:3:"117";i:1;s:3:"141";}', 'no'),
(573, '_transient_timeout_wc_related_145', '1465871567', 'no'),
(574, '_transient_wc_related_145', 'a:3:{i:0;s:3:"117";i:1;s:3:"141";i:2;s:3:"143";}', 'no'),
(578, '_transient_timeout_wc_related_147', '1465871747', 'no'),
(579, '_transient_wc_related_147', 'a:4:{i:0;s:3:"117";i:1;s:3:"141";i:2;s:3:"143";i:3;s:3:"145";}', 'no'),
(598, '_transient_timeout_wc_related_154', '1465873021', 'no'),
(599, '_transient_wc_related_154', 'a:0:{}', 'no'),
(616, 'product_cat_children', 'a:2:{i:8;a:8:{i:0;i:9;i:1;i:13;i:2;i:18;i:3;i:20;i:4;i:22;i:5;i:23;i:6;i:24;i:7;i:25;}i:26;a:5:{i:0;i:31;i:1;i:32;i:2;i:34;i:3;i:36;i:4;i:40;}}', 'yes'),
(617, '_transient_timeout_wc_low_stock_count', '1468378896', 'no'),
(618, '_transient_wc_low_stock_count', '0', 'no'),
(619, '_transient_timeout_wc_outofstock_count', '1468378897', 'no'),
(620, '_transient_wc_outofstock_count', '0', 'no'),
(623, '_transient_timeout_wc_uf_pid_da26da0ffb3a064f966ab4f7d00e344b', '1468379556', 'no'),
(624, '_transient_wc_uf_pid_da26da0ffb3a064f966ab4f7d00e344b', 'a:1:{i:0;i:149;}', 'no'),
(626, '_transient_timeout_wc_uf_pid_923930c293ccf97822e71b48e3cb0d76', '1468379560', 'no'),
(627, '_transient_wc_uf_pid_923930c293ccf97822e71b48e3cb0d76', 'a:1:{i:0;i:117;}', 'no'),
(628, '_transient_timeout_wc_uf_pid_9816c3aa814d3289a171c633d99b6624', '1468379565', 'no'),
(629, '_transient_wc_uf_pid_9816c3aa814d3289a171c633d99b6624', 'a:4:{i:0;i:147;i:1;i:145;i:2;i:143;i:3;i:141;}', 'no'),
(634, '_transient_timeout_wc_uf_pid_235765490bcff6e971ba0d87f6f357fd', '1468380417', 'no'),
(635, '_transient_wc_uf_pid_235765490bcff6e971ba0d87f6f357fd', 'a:16:{i:0;i:154;i:1;i:151;i:2;i:149;i:3;i:147;i:4;i:145;i:5;i:143;i:6;i:141;i:7;i:117;i:8;i:112;i:9;i:107;i:10;i:103;i:11;i:99;i:12;i:89;i:13;i:86;i:14;i:82;i:15;i:76;}', 'no'),
(651, 'category_children', 'a:0:{}', 'yes'),
(702, 'yith_wcwl_general_settings', '', 'yes'),
(703, 'yith_wcwl_button_position', 'shortcode', 'yes'),
(704, 'yith_wcwl_socials_share', '', 'yes'),
(705, 'yith_wcwl_styles', '', 'yes'),
(706, 'yith_wcwl_yith_wfbt', '', 'yes'),
(707, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(709, '_transient_timeout_wc_uf_pid_9a490a9fec8f21461268b4a098c388b5', '1468445647', 'no'),
(710, '_transient_wc_uf_pid_9a490a9fec8f21461268b4a098c388b5', 'a:8:{i:0;i:112;i:1;i:107;i:2;i:103;i:3;i:99;i:4;i:89;i:5;i:86;i:6;i:82;i:7;i:76;}', 'no'),
(718, '_transient_timeout_wc_uf_pid_5a26b19f8490fc4c6f116e4e3c541b7a', '1468445734', 'no'),
(719, '_transient_wc_uf_pid_5a26b19f8490fc4c6f116e4e3c541b7a', 'a:1:{i:0;i:103;}', 'no'),
(724, '_transient_timeout_wc_uf_pid_c684b25fd14988d6dd2941dcae2598e2', '1468445771', 'no'),
(725, '_transient_wc_uf_pid_c684b25fd14988d6dd2941dcae2598e2', 'a:1:{i:0;i:82;}', 'no'),
(727, '_transient_timeout_wc_uf_pid_15270e9e6f73c612a828946705d8577b', '1468445788', 'no'),
(728, '_transient_wc_uf_pid_15270e9e6f73c612a828946705d8577b', 'a:1:{i:0;i:112;}', 'no'),
(730, '_transient_timeout_wc_uf_pid_75d1da5b282835aba35a433b6f168a71', '1468445806', 'no'),
(731, '_transient_wc_uf_pid_75d1da5b282835aba35a433b6f168a71', 'a:1:{i:0;i:76;}', 'no'),
(733, '_transient_timeout_wc_uf_pid_a459a930ecbd6e6caaa6f9b66cf8251f', '1468445863', 'no'),
(734, '_transient_wc_uf_pid_a459a930ecbd6e6caaa6f9b66cf8251f', 'a:8:{i:0;i:154;i:1;i:151;i:2;i:149;i:3;i:147;i:4;i:145;i:5;i:143;i:6;i:141;i:7;i:117;}', 'no'),
(736, '_transient_timeout_wc_uf_pid_cf8d0c46e601a029f573ca95571efd2c', '1468445889', 'no'),
(737, '_transient_wc_uf_pid_cf8d0c46e601a029f573ca95571efd2c', 'a:1:{i:0;i:154;}', 'no'),
(739, '_transient_timeout_wc_uf_pid_ddd2e6fac6529b2e1f337791edbc5e82', '1468445909', 'no'),
(740, '_transient_wc_uf_pid_ddd2e6fac6529b2e1f337791edbc5e82', 'a:1:{i:0;i:151;}', 'no'),
(746, '_transient_timeout_yith_wcwl_user_default_count_1', '1466458931', 'no'),
(747, '_transient_yith_wcwl_user_default_count_1', '2', 'no'),
(750, 'account_page_options', '', 'yes'),
(751, 'account_endpoint_options', '', 'yes'),
(752, 'account_registration_options', '', 'yes'),
(757, 'checkout_process_options', '', 'yes'),
(758, 'checkout_page_options', '', 'yes'),
(759, 'checkout_endpoint_options', '', 'yes'),
(760, 'payment_gateways_options', '', 'yes'),
(761, 'woocommerce_gateway_order', 'a:4:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;}', 'yes'),
(763, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:"account_name";s:0:"";s:14:"account_number";s:0:"";s:9:"bank_name";s:0:"";s:9:"sort_code";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}}', 'yes'),
(764, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:4:"p=94";i:1;s:6:"/cart/";i:2;s:4:"p=95";i:3;s:10:"/checkout/";i:4;s:4:"p=96";i:5;s:12:"/my-account/";}', 'yes'),
(765, '_transient_orders-transient-version', '1465857140', 'yes'),
(768, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1465868208', 'yes'),
(769, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5909";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3658";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3607";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3126";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2793";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2375";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2220";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2100";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2049";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2028";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1992";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1936";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1870";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1728";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1690";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1589";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1544";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1397";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1318";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1291";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1221";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1113";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1091";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1006";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"992";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"981";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"924";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"915";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"912";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"909";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"908";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"839";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"830";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"796";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"776";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"770";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"761";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"760";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"753";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"753";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"750";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"743";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"711";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"701";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"696";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"691";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"690";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"690";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"668";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"661";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"652";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"645";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"615";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"612";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"605";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"600";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"598";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"597";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"590";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"580";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"574";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"569";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"566";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"554";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"553";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"542";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"533";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"523";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"519";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"518";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"514";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"512";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"509";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"506";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"484";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"465";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"462";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"462";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"461";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"455";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"444";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"443";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"430";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"427";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"422";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"422";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"421";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"413";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"412";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"411";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"407";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"406";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"403";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"402";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"401";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"400";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"395";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"394";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"392";}}', 'yes'),
(776, 'widget_wp_user_avatar_profile', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(777, 'avatar_default_wp_user_avatar', '', 'yes'),
(778, 'wp_user_avatar_allow_upload', '0', 'yes'),
(779, 'wp_user_avatar_disable_gravatar', '0', 'yes'),
(780, 'wp_user_avatar_edit_avatar', '1', 'yes'),
(781, 'wp_user_avatar_resize_crop', '0', 'yes'),
(782, 'wp_user_avatar_resize_h', '96', 'yes'),
(783, 'wp_user_avatar_resize_upload', '0', 'yes'),
(784, 'wp_user_avatar_resize_w', '96', 'yes'),
(785, 'wp_user_avatar_tinymce', '1', 'yes'),
(786, 'wp_user_avatar_upload_size_limit', '0', 'yes'),
(787, 'wp_user_avatar_default_avatar_updated', '1', 'yes'),
(788, 'wp_user_avatar_users_updated', '1', 'yes'),
(789, 'wp_user_avatar_media_updated', '1', 'yes'),
(791, '_transient_timeout_nf_form_0', '1465944615', 'no'),
(792, '_transient_nf_form_0', 'O:7:"NF_Form":5:{s:7:"form_id";N;s:8:"settings";a:0:{}s:6:"fields";a:0:{}s:10:"field_keys";a:0:{}s:6:"errors";a:0:{}}', 'no'),
(793, '_transient_timeout_nf_form_', '1465944616', 'no'),
(794, '_transient_nf_form_', 'O:7:"NF_Form":5:{s:7:"form_id";N;s:8:"settings";a:0:{}s:6:"fields";a:0:{}s:10:"field_keys";a:0:{}s:6:"errors";a:0:{}}', 'no'),
(815, '_transient_is_multi_author', '0', 'yes'),
(821, '_transient_timeout_nf_form_5', '1466123738', 'no'),
(822, '_transient_nf_form_5', 'O:7:"NF_Form":5:{s:7:"form_id";s:1:"5";s:8:"settings";a:5:{s:12:"date_updated";s:10:"2016-06-13";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:10:"show_title";s:1:"0";s:6:"status";s:3:"new";}s:6:"fields";a:0:{}s:10:"field_keys";a:0:{}s:6:"errors";a:0:{}}', 'no'),
(827, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(828, '_transient_timeout_wc_related_151', '1466207699', 'no'),
(829, '_transient_wc_related_151', 'a:0:{}', 'no'),
(833, '_transient_timeout_wc_related_149', '1466207697', 'no'),
(834, '_transient_wc_related_149', 'a:0:{}', 'no'),
(836, '_transient_timeout_wc_admin_report', '1466222753', 'no'),
(837, '_transient_wc_admin_report', 'a:2:{s:32:"ea9af1678a525d645add03480ed8e6fa";a:1:{i:0;O:8:"stdClass":2:{s:15:"sparkline_value";s:5:"11.98";s:9:"post_date";s:19:"2016-06-13 22:31:19";}}s:32:"98a117ae0c1dadf801011777a4e0f201";a:1:{i:0;O:8:"stdClass":3:{s:10:"product_id";s:2:"76";s:15:"sparkline_value";s:1:"2";s:9:"post_date";s:19:"2016-06-13 22:31:19";}}}', 'no'),
(838, '_transient_timeout_plugin_slugs', '1466222759', 'no'),
(839, '_transient_plugin_slugs', 'a:11:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:53:"nextend-facebook-connect/nextend-facebook-connect.php";i:3;s:27:"ninja-forms/ninja-forms.php";i:4;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:5;s:39:"taxonomy-metadata/taxonomy-metadata.php";i:6;s:27:"woocommerce/woocommerce.php";i:7;s:27:"woosidebars/woosidebars.php";i:8;s:33:"wp-user-avatar/wp-user-avatar.php";i:9;s:37:"yith-woocommerce-ajax-search/init.php";i:10;s:34:"yith-woocommerce-wishlist/init.php";}', 'no'),
(840, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1466179558', 'no'),
(841, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(842, '_transient_timeout_geoip_::1', '1471209002', 'no'),
(843, '_transient_geoip_::1', '', 'no'),
(844, '_transient_timeout_external_ip_address_::1', '1471209003', 'no'),
(845, '_transient_external_ip_address_::1', '180.210.175.146', 'no'),
(846, '_transient_timeout_geoip_180.210.175.146', '1471209005', 'no'),
(847, '_transient_geoip_180.210.175.146', 'BD', 'no'),
(849, '_transient_timeout_nf_form_1', '1470690607', 'no');
INSERT INTO `woo1options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(850, '_transient_nf_form_1', 'O:7:"NF_Form":5:{s:7:"form_id";s:1:"1";s:8:"settings";a:18:{s:12:"date_updated";s:10:"2016-06-11";s:10:"form_title";s:12:"Contact Form";s:10:"show_title";s:1:"0";s:9:"save_subs";s:1:"1";s:9:"logged_in";s:1:"0";s:11:"append_page";s:0:"";s:4:"ajax";s:1:"0";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:11:"success_msg";s:42:"Your form has been successfully submitted.";s:10:"email_from";s:0:"";s:10:"email_type";s:4:"html";s:14:"user_email_msg";s:69:"Thank you so much for contacting us. We will get back to you shortly.";s:17:"user_email_fields";s:1:"0";s:15:"admin_email_msg";s:0:"";s:18:"admin_email_fields";s:1:"1";s:16:"admin_attach_csv";s:1:"0";s:15:"email_from_name";s:0:"";}s:6:"fields";a:4:{i:1;a:7:{s:2:"id";s:1:"1";s:7:"form_id";s:1:"1";s:4:"type";s:5:"_text";s:5:"order";s:1:"0";s:4:"data";a:24:{s:5:"label";s:4:"Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:0:"";s:14:"user_address_2";s:0:"";s:9:"user_city";s:0:"";s:8:"user_zip";s:0:"";s:10:"user_phone";s:0:"";s:10:"user_email";s:0:"";s:21:"user_info_field_group";s:0:"";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:1:"0";}i:2;a:7:{s:2:"id";s:1:"2";s:7:"form_id";s:1:"1";s:4:"type";s:5:"_text";s:5:"order";s:1:"1";s:4:"data";a:28:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:2:"14";}i:3;a:7:{s:2:"id";s:1:"3";s:7:"form_id";s:1:"1";s:4:"type";s:9:"_textarea";s:5:"order";s:1:"2";s:4:"data";a:14:{s:5:"label";s:7:"Message";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:12:"textarea_rte";s:1:"0";s:14:"textarea_media";s:1:"0";s:18:"disable_rte_mobile";s:1:"0";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:1:"0";}i:4;a:7:{s:2:"id";s:1:"4";s:7:"form_id";s:1:"1";s:4:"type";s:7:"_submit";s:5:"order";s:1:"4";s:4:"data";a:7:{s:5:"label";s:4:"Send";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:1:"0";}}s:10:"field_keys";a:0:{}s:6:"errors";a:0:{}}', 'no'),
(851, '_transient_timeout_nf_form_6', '1470690607', 'no'),
(852, '_transient_nf_form_6', 'O:7:"NF_Form":5:{s:7:"form_id";s:1:"6";s:8:"settings";a:7:{s:12:"date_updated";s:19:"2016-06-13 22:55:05";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:10:"show_title";s:1:"0";s:6:"status";s:0:"";s:10:"form_title";s:10:"newsletter";s:8:"last_sub";s:1:"2";}s:6:"fields";a:2:{i:5;a:7:{s:2:"id";s:1:"5";s:7:"form_id";s:1:"6";s:4:"type";s:5:"_text";s:5:"order";s:1:"0";s:4:"data";a:40:{s:5:"label";s:5:"Email";s:9:"label_pos";s:6:"inside";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:11:"placeholder";s:13:"abc@gmail.com";s:13:"disable_input";s:1:"0";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:4:"char";s:15:"input_limit_msg";s:0:"";s:10:"user_state";s:1:"0";s:16:"autocomplete_off";s:1:"0";s:8:"num_sort";s:1:"0";s:18:"default_value_type";s:0:"";s:11:"admin_label";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";N;s:6:"def_id";s:2:"14";}i:6;a:7:{s:2:"id";s:1:"6";s:7:"form_id";s:1:"6";s:4:"type";s:7:"_submit";s:5:"order";s:1:"1";s:4:"data";a:8:{s:5:"label";s:7:"Sign Up";s:15:"input_limit_msg";s:17:"character(s) left";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";N;s:6:"def_id";N;}}s:10:"field_keys";a:0:{}s:6:"errors";a:0:{}}', 'no'),
(854, '_site_transient_timeout_theme_roots', '1470606013', 'yes'),
(855, '_site_transient_theme_roots', 'a:4:{s:8:"flatsome";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(857, '_transient_timeout_wc_term_counts', '1473196224', 'no'),
(858, '_transient_wc_term_counts', 'a:15:{i:22;s:1:"1";i:40;s:1:"1";i:8;s:1:"8";i:24;s:1:"1";i:20;s:1:"1";i:23;s:1:"1";i:18;s:1:"1";i:13;s:1:"1";i:36;s:1:"1";i:34;s:1:"1";i:26;s:1:"8";i:25;s:1:"1";i:31;s:1:"1";i:9;s:1:"1";i:32;s:1:"4";}', 'no'),
(859, '_transient_timeout_wc_related_117', '1470690624', 'no'),
(860, '_transient_wc_related_117', 'a:4:{i:0;s:3:"141";i:1;s:3:"143";i:2;s:3:"145";i:3;s:3:"147";}', 'no'),
(861, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1470604237;s:15:"version_checked";s:5:"4.5.3";s:12:"translations";a:0:{}}', 'yes'),
(862, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1470604242;s:8:"response";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";s:6:"tested";s:5:"4.5.3";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:27:"ninja-forms/ninja-forms.php";O:8:"stdClass":8:{s:2:"id";s:5:"27901";s:4:"slug";s:11:"ninja-forms";s:6:"plugin";s:27:"ninja-forms/ninja-forms.php";s:11:"new_version";s:8:"2.9.55.1";s:3:"url";s:42:"https://wordpress.org/plugins/ninja-forms/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/ninja-forms.2.9.55.1.zip";s:6:"tested";s:5:"4.5.3";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":8:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.6.4";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.6.4.zip";s:6:"tested";s:5:"4.5.3";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:34:"yith-woocommerce-wishlist/init.php";O:8:"stdClass":8:{s:2:"id";s:5:"41084";s:4:"slug";s:25:"yith-woocommerce-wishlist";s:6:"plugin";s:34:"yith-woocommerce-wishlist/init.php";s:11:"new_version";s:6:"2.0.16";s:3:"url";s:56:"https://wordpress.org/plugins/yith-woocommerce-wishlist/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.0.16.zip";s:6:"tested";s:5:"4.5.3";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:53:"nextend-facebook-connect/nextend-facebook-connect.php";O:8:"stdClass":6:{s:2:"id";s:5:"34949";s:4:"slug";s:24:"nextend-facebook-connect";s:6:"plugin";s:53:"nextend-facebook-connect/nextend-facebook-connect.php";s:11:"new_version";s:5:"1.5.9";s:3:"url";s:55:"https://wordpress.org/plugins/nextend-facebook-connect/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/nextend-facebook-connect.1.5.9.zip";}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":6:{s:2:"id";s:4:"4437";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"2.2.6";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";}s:39:"taxonomy-metadata/taxonomy-metadata.php";O:8:"stdClass":6:{s:2:"id";s:5:"13513";s:4:"slug";s:17:"taxonomy-metadata";s:6:"plugin";s:39:"taxonomy-metadata/taxonomy-metadata.php";s:11:"new_version";s:3:"0.5";s:3:"url";s:48:"https://wordpress.org/plugins/taxonomy-metadata/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/taxonomy-metadata.zip";}s:27:"woosidebars/woosidebars.php";O:8:"stdClass":7:{s:2:"id";s:5:"30668";s:4:"slug";s:11:"woosidebars";s:6:"plugin";s:27:"woosidebars/woosidebars.php";s:11:"new_version";s:5:"1.4.3";s:3:"url";s:42:"https://wordpress.org/plugins/woosidebars/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woosidebars.1.4.3.zip";s:14:"upgrade_notice";s:32:"Bug fix and maintenance release.";}s:33:"wp-user-avatar/wp-user-avatar.php";O:8:"stdClass":6:{s:2:"id";s:5:"37680";s:4:"slug";s:14:"wp-user-avatar";s:6:"plugin";s:33:"wp-user-avatar/wp-user-avatar.php";s:11:"new_version";s:5:"2.0.7";s:3:"url";s:45:"https://wordpress.org/plugins/wp-user-avatar/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-user-avatar.zip";}s:37:"yith-woocommerce-ajax-search/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"42851";s:4:"slug";s:28:"yith-woocommerce-ajax-search";s:6:"plugin";s:37:"yith-woocommerce-ajax-search/init.php";s:11:"new_version";s:5:"1.4.0";s:3:"url";s:59:"https://wordpress.org/plugins/yith-woocommerce-ajax-search/";s:7:"package";s:77:"https://downloads.wordpress.org/plugin/yith-woocommerce-ajax-search.1.4.0.zip";}}}', 'yes'),
(863, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:18:"rummanyt@gmail.com";s:7:"version";s:5:"4.5.3";s:9:"timestamp";i:1470604241;}', 'yes'),
(864, '_transient_timeout_wc_uf_pid_207cf4d67ab2702299de0a51d7cea4c1', '1473196306', 'no'),
(865, '_transient_wc_uf_pid_207cf4d67ab2702299de0a51d7cea4c1', 'a:1:{i:0;i:99;}', 'no'),
(866, '_transient_timeout_wc_uf_pid_b7de5998b639cd7780774d903dc8c010', '1473196312', 'no'),
(867, '_transient_wc_uf_pid_b7de5998b639cd7780774d903dc8c010', 'a:1:{i:0;i:107;}', 'no'),
(868, '_transient_timeout_wc_uf_pid_ffc141ad5744c0a083b2e71401ea84f8', '1473196318', 'no'),
(869, '_transient_wc_uf_pid_ffc141ad5744c0a083b2e71401ea84f8', 'a:1:{i:0;i:89;}', 'no'),
(870, '_transient_timeout_wc_uf_pid_01deb054acc8bc9e7372d764fe4cbaed', '1473196322', 'no'),
(871, '_transient_wc_uf_pid_01deb054acc8bc9e7372d764fe4cbaed', 'a:1:{i:0;i:86;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `woo1postmeta`
--

CREATE TABLE `woo1postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1postmeta`
--

INSERT INTO `woo1postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(10, 10, '_wp_attached_file', '2016/06/Drawing-4.png'),
(11, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:731;s:6:"height";i:97;s:4:"file";s:21:"2016/06/Drawing-4.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Drawing-4-150x97.png";s:5:"width";i:150;s:6:"height";i:97;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"Drawing-4-300x40.png";s:5:"width";i:300;s:6:"height";i:40;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"Drawing-4-114x97.png";s:5:"width";i:114;s:6:"height";i:97;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"Drawing-4-247x97.png";s:5:"width";i:247;s:6:"height";i:97;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"Drawing-4-510x97.png";s:5:"width";i:510;s:6:"height";i:97;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 11, '_edit_last', '1'),
(13, 11, '_edit_lock', '1465703229:1'),
(14, 11, '_wp_page_template', 'page-blank.php'),
(15, 13, '_edit_last', '1'),
(16, 13, '_wp_page_template', 'default'),
(17, 13, '_edit_lock', '1465646957:1'),
(18, 16, '_edit_last', '1'),
(19, 16, '_edit_lock', '1465858833:1'),
(22, 16, 'preview_url', 'http://localhost/wptestsite/'),
(23, 16, 'preview_title', 'Home'),
(24, 24, '_wp_attached_file', '2016/06/field-with-big-tree.jpg'),
(25, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:31:"2016/06/field-with-big-tree.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"field-with-big-tree-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"field-with-big-tree-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"field-with-big-tree-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"field-with-big-tree-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"field-with-big-tree-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"field-with-big-tree-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"field-with-big-tree-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(26, 25, '_wp_attached_file', '2016/06/flower-field.jpg'),
(27, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:24:"2016/06/flower-field.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"flower-field-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"flower-field-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"flower-field-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"flower-field-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"flower-field-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"flower-field-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:24:"flower-field-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(28, 26, '_wp_attached_file', '2016/06/Hewlett.jpg'),
(29, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:19:"2016/06/Hewlett.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Hewlett-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"Hewlett-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"Hewlett-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"Hewlett-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"Hewlett-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"Hewlett-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"Hewlett-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(30, 27, '_wp_attached_file', '2016/06/img18.jpg'),
(31, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1440;s:4:"file";s:17:"2016/06/img18.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img18-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"img18-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"img18-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"img18-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"img18-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"img18-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"img18-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(32, 28, '_wp_attached_file', '2016/06/Second.jpg'),
(33, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:18:"2016/06/Second.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Second-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Second-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"Second-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"Second-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"Second-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"Second-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"Second-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(34, 29, '_wp_attached_file', '2016/06/Third.jpg'),
(35, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:17:"2016/06/Third.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"Third-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"Third-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"Third-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"Third-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"Third-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"Third-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"Third-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(36, 30, '_wp_attached_file', '2016/06/Woman_In_Black.jpg'),
(37, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:26:"2016/06/Woman_In_Black.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"Woman_In_Black-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"Woman_In_Black-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"Woman_In_Black-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"Woman_In_Black-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"Woman_In_Black-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"Woman_In_Black-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"Woman_In_Black-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(38, 31, '_wp_attached_file', '2016/06/9413639d-e993-4843-9a1a-18896d9217b6.jpg'),
(39, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:1542;s:4:"file";s:48:"2016/06/9413639d-e993-4843-9a1a-18896d9217b6.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"9413639d-e993-4843-9a1a-18896d9217b6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"9413639d-e993-4843-9a1a-18896d9217b6-300x193.jpg";s:5:"width";i:300;s:6:"height";i:193;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"9413639d-e993-4843-9a1a-18896d9217b6-768x493.jpg";s:5:"width";i:768;s:6:"height";i:493;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"9413639d-e993-4843-9a1a-18896d9217b6-1024x658.jpg";s:5:"width";i:1024;s:6:"height";i:658;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:48:"9413639d-e993-4843-9a1a-18896d9217b6-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:48:"9413639d-e993-4843-9a1a-18896d9217b6-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:48:"9413639d-e993-4843-9a1a-18896d9217b6-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 5D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1225389728";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"16";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:3:"0.1";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(40, 32, '_wp_attached_file', '2016/06/romantic-wallpaper-stock-pictures-vj80pvrl.jpg'),
(41, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2152;s:6:"height";i:1435;s:4:"file";s:54:"2016/06/romantic-wallpaper-stock-pictures-vj80pvrl.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:54:"romantic-wallpaper-stock-pictures-vj80pvrl-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:54:"romantic-wallpaper-stock-pictures-vj80pvrl-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:54:"romantic-wallpaper-stock-pictures-vj80pvrl-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:55:"romantic-wallpaper-stock-pictures-vj80pvrl-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:54:"romantic-wallpaper-stock-pictures-vj80pvrl-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:54:"romantic-wallpaper-stock-pictures-vj80pvrl-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:54:"romantic-wallpaper-stock-pictures-vj80pvrl-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(42, 44, '_edit_last', '1'),
(43, 44, '_edit_lock', '1465859434:1'),
(44, 46, '_wp_attached_file', '2016/06/Beautiful-Birds-Happy-Family-HD-Wallpapers.jpg'),
(45, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:900;s:4:"file";s:54:"2016/06/Beautiful-Birds-Happy-Family-HD-Wallpapers.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:54:"Beautiful-Birds-Happy-Family-HD-Wallpapers-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:54:"Beautiful-Birds-Happy-Family-HD-Wallpapers-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:54:"Beautiful-Birds-Happy-Family-HD-Wallpapers-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:55:"Beautiful-Birds-Happy-Family-HD-Wallpapers-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:54:"Beautiful-Birds-Happy-Family-HD-Wallpapers-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:54:"Beautiful-Birds-Happy-Family-HD-Wallpapers-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:54:"Beautiful-Birds-Happy-Family-HD-Wallpapers-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(46, 47, '_wp_attached_file', '2016/06/Blue-Bird-Flying-Picture.jpg'),
(47, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:504;s:6:"height";i:334;s:4:"file";s:36:"2016/06/Blue-Bird-Flying-Picture.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"Blue-Bird-Flying-Picture-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"Blue-Bird-Flying-Picture-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"Blue-Bird-Flying-Picture-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:36:"Blue-Bird-Flying-Picture-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(48, 48, '_wp_attached_file', '2016/06/chicken-skewers-hd-widescreen-wallpapers-.jpg'),
(49, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:53:"2016/06/chicken-skewers-hd-widescreen-wallpapers-.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:53:"chicken-skewers-hd-widescreen-wallpapers--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:53:"chicken-skewers-hd-widescreen-wallpapers--300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:53:"chicken-skewers-hd-widescreen-wallpapers--768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:54:"chicken-skewers-hd-widescreen-wallpapers--1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:53:"chicken-skewers-hd-widescreen-wallpapers--114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:53:"chicken-skewers-hd-widescreen-wallpapers--247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:53:"chicken-skewers-hd-widescreen-wallpapers--510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(50, 49, '_wp_attached_file', '2016/06/cool-fish-iphone-wallpapers-1.jpg'),
(51, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:41:"2016/06/cool-fish-iphone-wallpapers-1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"cool-fish-iphone-wallpapers-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"cool-fish-iphone-wallpapers-1-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:41:"cool-fish-iphone-wallpapers-1-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:42:"cool-fish-iphone-wallpapers-1-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:41:"cool-fish-iphone-wallpapers-1-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:41:"cool-fish-iphone-wallpapers-1-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:41:"cool-fish-iphone-wallpapers-1-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(52, 50, '_wp_attached_file', '2016/06/food-christmas-christmas-cookies-1600x1200-wallpaper_www.wallpaperfo.com_77.jpg'),
(53, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:728;s:6:"height";i:546;s:4:"file";s:87:"2016/06/food-christmas-christmas-cookies-1600x1200-wallpaper_www.wallpaperfo.com_77.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:87:"food-christmas-christmas-cookies-1600x1200-wallpaper_www.wallpaperfo.com_77-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:87:"food-christmas-christmas-cookies-1600x1200-wallpaper_www.wallpaperfo.com_77-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:87:"food-christmas-christmas-cookies-1600x1200-wallpaper_www.wallpaperfo.com_77-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:87:"food-christmas-christmas-cookies-1600x1200-wallpaper_www.wallpaperfo.com_77-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:87:"food-christmas-christmas-cookies-1600x1200-wallpaper_www.wallpaperfo.com_77-510x546.jpg";s:5:"width";i:510;s:6:"height";i:546;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(54, 51, '_wp_attached_file', '2016/06/food-wallpaper-download-5-high-resolution-wallpaper.jpg'),
(55, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:63:"2016/06/food-wallpaper-download-5-high-resolution-wallpaper.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:63:"food-wallpaper-download-5-high-resolution-wallpaper-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:63:"food-wallpaper-download-5-high-resolution-wallpaper-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:63:"food-wallpaper-download-5-high-resolution-wallpaper-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:64:"food-wallpaper-download-5-high-resolution-wallpaper-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:63:"food-wallpaper-download-5-high-resolution-wallpaper-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:63:"food-wallpaper-download-5-high-resolution-wallpaper-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:63:"food-wallpaper-download-5-high-resolution-wallpaper-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(56, 52, '_wp_attached_file', '2016/06/Free_Wood_Background_Set_Preview_Small.jpg'),
(57, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:594;s:6:"height";i:274;s:4:"file";s:50:"2016/06/Free_Wood_Background_Set_Preview_Small.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"Free_Wood_Background_Set_Preview_Small-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:50:"Free_Wood_Background_Set_Preview_Small-300x138.jpg";s:5:"width";i:300;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:50:"Free_Wood_Background_Set_Preview_Small-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:50:"Free_Wood_Background_Set_Preview_Small-247x274.jpg";s:5:"width";i:247;s:6:"height";i:274;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:50:"Free_Wood_Background_Set_Preview_Small-510x274.jpg";s:5:"width";i:510;s:6:"height";i:274;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(58, 53, '_wp_attached_file', '2016/06/french-food-image-hd.jpg'),
(59, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:32:"2016/06/french-food-image-hd.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"french-food-image-hd-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"french-food-image-hd-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"french-food-image-hd-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"french-food-image-hd-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"french-food-image-hd-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:32:"french-food-image-hd-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:32:"french-food-image-hd-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(60, 54, '_wp_attached_file', '2016/06/hd-nature-images-22.jpg'),
(61, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:31:"2016/06/hd-nature-images-22.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"hd-nature-images-22-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"hd-nature-images-22-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"hd-nature-images-22-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"hd-nature-images-22-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"hd-nature-images-22-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"hd-nature-images-22-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"hd-nature-images-22-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(62, 55, '_wp_attached_file', '2016/06/Jungle_Forest_HD_Wallpaper_5.jpg'),
(63, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1000;s:4:"file";s:40:"2016/06/Jungle_Forest_HD_Wallpaper_5.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"Jungle_Forest_HD_Wallpaper_5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"Jungle_Forest_HD_Wallpaper_5-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"Jungle_Forest_HD_Wallpaper_5-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"Jungle_Forest_HD_Wallpaper_5-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:40:"Jungle_Forest_HD_Wallpaper_5-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:40:"Jungle_Forest_HD_Wallpaper_5-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:40:"Jungle_Forest_HD_Wallpaper_5-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(64, 56, '_wp_attached_file', '2016/06/nature-forest-1680x1050-wallpaper_www.wallpaperfo.com_96.jpg'),
(65, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:728;s:6:"height";i:455;s:4:"file";s:68:"2016/06/nature-forest-1680x1050-wallpaper_www.wallpaperfo.com_96.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:68:"nature-forest-1680x1050-wallpaper_www.wallpaperfo.com_96-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:68:"nature-forest-1680x1050-wallpaper_www.wallpaperfo.com_96-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:68:"nature-forest-1680x1050-wallpaper_www.wallpaperfo.com_96-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:68:"nature-forest-1680x1050-wallpaper_www.wallpaperfo.com_96-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:68:"nature-forest-1680x1050-wallpaper_www.wallpaperfo.com_96-510x455.jpg";s:5:"width";i:510;s:6:"height";i:455;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(66, 57, '_wp_attached_file', '2016/06/nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631.jpg'),
(67, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:500;s:4:"file";s:93:"2016/06/nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:93:"nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:93:"nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:93:"nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:93:"nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:93:"nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:93:"nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631-510x500.jpg";s:5:"width";i:510;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(68, 58, '_wp_attached_file', '2016/06/sandwiches-food-image.jpg'),
(69, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3200;s:6:"height";i:2000;s:4:"file";s:33:"2016/06/sandwiches-food-image.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"sandwiches-food-image-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"sandwiches-food-image-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"sandwiches-food-image-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"sandwiches-food-image-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"sandwiches-food-image-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"sandwiches-food-image-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:33:"sandwiches-food-image-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(70, 59, '_wp_attached_file', '2016/06/trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34.jpg'),
(71, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:728;s:6:"height";i:409;s:4:"file";s:74:"2016/06/trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:74:"trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:74:"trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:74:"trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:74:"trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:74:"trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34-510x409.jpg";s:5:"width";i:510;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(72, 68, '_edit_last', '1'),
(73, 68, '_edit_lock', '1465702952:1'),
(74, 73, '_edit_last', '1'),
(75, 73, '_edit_lock', '1465710353:1'),
(76, 76, '_edit_last', '1'),
(77, 76, '_edit_lock', '1465710460:1'),
(78, 77, '_wp_attached_file', '2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png'),
(79, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:130;s:6:"height";i:130;s:4:"file";s:62:"2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png";s:5:"sizes";a:1:{s:14:"shop_thumbnail";a:4:{s:4:"file";s:62:"250px-United_Nations_Human_Rights_Council_Logo.svg-114x130.png";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(80, 78, '_wp_attached_file', '2016/06/764230371best-red-velvet-cupcake.jpg'),
(81, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:44:"2016/06/764230371best-red-velvet-cupcake.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"764230371best-red-velvet-cupcake-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"764230371best-red-velvet-cupcake-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:44:"764230371best-red-velvet-cupcake-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:44:"764230371best-red-velvet-cupcake-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(82, 76, '_thumbnail_id', '78'),
(83, 79, '_wp_attached_file', '2016/06/redvelvet05.jpg'),
(84, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:23:"2016/06/redvelvet05.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"redvelvet05-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"redvelvet05-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"redvelvet05-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"redvelvet05-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"6.3";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D5000";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1276344028";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"200";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:17:"0.033333333333333";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(85, 80, '_wp_attached_file', '2016/06/images.jpg'),
(86, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:18:"2016/06/images.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"images-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"images-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"images-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"images-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(87, 76, '_visibility', 'visible'),
(88, 76, '_stock_status', 'instock'),
(89, 76, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(90, 76, 'total_sales', '2'),
(91, 76, '_downloadable', 'no'),
(92, 76, '_virtual', 'no'),
(93, 76, '_purchase_note', ''),
(94, 76, '_featured', 'yes'),
(95, 76, '_weight', ''),
(96, 76, '_length', ''),
(97, 76, '_width', ''),
(98, 76, '_height', ''),
(99, 76, '_sku', ''),
(100, 76, '_product_attributes', 'a:0:{}'),
(101, 76, '_regular_price', '7.99'),
(102, 76, '_sale_price', ''),
(103, 76, '_sale_price_dates_from', ''),
(104, 76, '_sale_price_dates_to', ''),
(105, 76, '_price', '7.99'),
(106, 76, '_sold_individually', ''),
(107, 76, '_manage_stock', 'no'),
(108, 76, '_backorders', 'no'),
(109, 76, '_stock', ''),
(110, 76, '_upsell_ids', 'a:0:{}'),
(111, 76, '_crosssell_ids', 'a:0:{}'),
(112, 76, '_product_version', '2.5.5'),
(113, 76, '_product_image_gallery', '79,80'),
(114, 76, '_wc_review_count', '0'),
(115, 76, '_wc_rating_count', 'a:0:{}'),
(116, 76, '_wc_average_rating', '0'),
(117, 82, '_edit_last', '1'),
(118, 82, '_edit_lock', '1465715985:1'),
(119, 83, '_wp_attached_file', '2016/06/71442673435mangoes.jpg'),
(120, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:450;s:4:"file";s:30:"2016/06/71442673435mangoes.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"71442673435mangoes-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"71442673435mangoes-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"71442673435mangoes-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"71442673435mangoes-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"71442673435mangoes-510x450.jpg";s:5:"width";i:510;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(121, 82, '_thumbnail_id', '83'),
(122, 84, '_wp_attached_file', '2016/06/Mangiferaindica-MangoTree12.jpg'),
(123, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:655;s:6:"height";i:494;s:4:"file";s:39:"2016/06/Mangiferaindica-MangoTree12.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"Mangiferaindica-MangoTree12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"Mangiferaindica-MangoTree12-300x226.jpg";s:5:"width";i:300;s:6:"height";i:226;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:39:"Mangiferaindica-MangoTree12-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"Mangiferaindica-MangoTree12-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:39:"Mangiferaindica-MangoTree12-510x494.jpg";s:5:"width";i:510;s:6:"height";i:494;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(124, 85, '_wp_attached_file', '2016/06/mango-09.jpg'),
(125, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:662;s:4:"file";s:20:"2016/06/mango-09.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"mango-09-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"mango-09-300x248.jpg";s:5:"width";i:300;s:6:"height";i:248;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"mango-09-768x636.jpg";s:5:"width";i:768;s:6:"height";i:636;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"mango-09-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"mango-09-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"mango-09-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(126, 82, '_visibility', 'visible'),
(127, 82, '_stock_status', 'instock'),
(128, 82, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(129, 82, 'total_sales', '0'),
(130, 82, '_downloadable', 'no'),
(131, 82, '_virtual', 'no'),
(132, 82, '_purchase_note', ''),
(133, 82, '_featured', 'yes'),
(134, 82, '_weight', ''),
(135, 82, '_length', ''),
(136, 82, '_width', ''),
(137, 82, '_height', ''),
(138, 82, '_sku', ''),
(139, 82, '_product_attributes', 'a:0:{}'),
(140, 82, '_regular_price', '8.23'),
(141, 82, '_sale_price', ''),
(142, 82, '_sale_price_dates_from', ''),
(143, 82, '_sale_price_dates_to', ''),
(144, 82, '_price', '8.23'),
(145, 82, '_sold_individually', ''),
(146, 82, '_manage_stock', 'no'),
(147, 82, '_backorders', 'no'),
(148, 82, '_stock', ''),
(149, 82, '_upsell_ids', 'a:0:{}'),
(150, 82, '_crosssell_ids', 'a:0:{}'),
(151, 82, '_product_version', '2.5.5'),
(152, 82, '_product_image_gallery', '84,85'),
(153, 82, '_wc_review_count', '0'),
(154, 82, '_wc_rating_count', 'a:0:{}'),
(155, 82, '_wc_average_rating', '0'),
(156, 86, '_edit_last', '1'),
(157, 86, '_edit_lock', '1465716215:1'),
(158, 87, '_wp_attached_file', '2016/06/shutterstock_133493618-litchis-with-leaves-panorama.jpg'),
(159, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:652;s:6:"height";i:491;s:4:"file";s:63:"2016/06/shutterstock_133493618-litchis-with-leaves-panorama.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:63:"shutterstock_133493618-litchis-with-leaves-panorama-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:63:"shutterstock_133493618-litchis-with-leaves-panorama-300x226.jpg";s:5:"width";i:300;s:6:"height";i:226;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:63:"shutterstock_133493618-litchis-with-leaves-panorama-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:63:"shutterstock_133493618-litchis-with-leaves-panorama-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:63:"shutterstock_133493618-litchis-with-leaves-panorama-510x491.jpg";s:5:"width";i:510;s:6:"height";i:491;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(160, 86, '_thumbnail_id', '87'),
(161, 88, '_wp_attached_file', '2016/06/Litchi.jpg');
INSERT INTO `woo1postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(162, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:480;s:4:"file";s:18:"2016/06/Litchi.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Litchi-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Litchi-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"Litchi-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"Litchi-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"Litchi-510x480.jpg";s:5:"width";i:510;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(163, 86, '_visibility', 'visible'),
(164, 86, '_stock_status', 'instock'),
(165, 86, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(166, 86, 'total_sales', '0'),
(167, 86, '_downloadable', 'no'),
(168, 86, '_virtual', 'no'),
(169, 86, '_purchase_note', ''),
(170, 86, '_featured', 'yes'),
(171, 86, '_weight', ''),
(172, 86, '_length', ''),
(173, 86, '_width', ''),
(174, 86, '_height', ''),
(175, 86, '_sku', ''),
(176, 86, '_product_attributes', 'a:0:{}'),
(177, 86, '_regular_price', '5.42'),
(178, 86, '_sale_price', ''),
(179, 86, '_sale_price_dates_from', ''),
(180, 86, '_sale_price_dates_to', ''),
(181, 86, '_price', '5.42'),
(182, 86, '_sold_individually', ''),
(183, 86, '_manage_stock', 'no'),
(184, 86, '_backorders', 'no'),
(185, 86, '_stock', ''),
(186, 86, '_upsell_ids', 'a:0:{}'),
(187, 86, '_crosssell_ids', 'a:0:{}'),
(188, 86, '_product_version', '2.5.5'),
(189, 86, '_product_image_gallery', '88'),
(190, 86, '_wc_review_count', '0'),
(191, 89, '_edit_last', '1'),
(192, 89, '_edit_lock', '1465716459:1'),
(193, 90, '_wp_attached_file', '2016/06/guava1.jpg'),
(194, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2508;s:6:"height";i:1672;s:4:"file";s:18:"2016/06/guava1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"guava1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"guava1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"guava1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"guava1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"guava1-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"guava1-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"guava1-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(195, 89, '_thumbnail_id', '90'),
(196, 91, '_wp_attached_file', '2016/06/Guava2.jpg'),
(197, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:329;s:4:"file";s:18:"2016/06/Guava2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Guava2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Guava2-300x179.jpg";s:5:"width";i:300;s:6:"height";i:179;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"Guava2-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"Guava2-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"Guava2-510x329.jpg";s:5:"width";i:510;s:6:"height";i:329;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(198, 92, '_wp_attached_file', '2016/06/71442854747guavas.jpg'),
(199, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:310;s:4:"file";s:29:"2016/06/71442854747guavas.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"71442854747guavas-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"71442854747guavas-300x266.jpg";s:5:"width";i:300;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"71442854747guavas-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"71442854747guavas-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 89, '_visibility', 'visible'),
(201, 89, '_stock_status', 'instock'),
(202, 89, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(203, 89, 'total_sales', '0'),
(204, 89, '_downloadable', 'no'),
(205, 89, '_virtual', 'no'),
(206, 89, '_purchase_note', ''),
(207, 89, '_featured', 'yes'),
(208, 89, '_weight', ''),
(209, 89, '_length', ''),
(210, 89, '_width', ''),
(211, 89, '_height', ''),
(212, 89, '_sku', ''),
(213, 89, '_product_attributes', 'a:0:{}'),
(214, 89, '_regular_price', '6.00'),
(215, 89, '_sale_price', ''),
(216, 89, '_sale_price_dates_from', ''),
(217, 89, '_sale_price_dates_to', ''),
(218, 89, '_price', '6.00'),
(219, 89, '_sold_individually', ''),
(220, 89, '_manage_stock', 'no'),
(221, 89, '_backorders', 'no'),
(222, 89, '_stock', ''),
(223, 89, '_upsell_ids', 'a:0:{}'),
(224, 89, '_crosssell_ids', 'a:0:{}'),
(225, 89, '_product_version', '2.5.5'),
(226, 89, '_product_image_gallery', '91,92'),
(227, 89, '_wc_review_count', '0'),
(228, 86, '_wc_rating_count', 'a:0:{}'),
(229, 86, '_wc_average_rating', '0'),
(230, 99, '_edit_last', '1'),
(231, 99, '_edit_lock', '1465716885:1'),
(232, 100, '_wp_attached_file', '2016/06/apple.jpg'),
(233, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:2656;s:4:"file";s:17:"2016/06/apple.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"apple-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"apple-282x300.jpg";s:5:"width";i:282;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"apple-768x816.jpg";s:5:"width";i:768;s:6:"height";i:816;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"apple-964x1024.jpg";s:5:"width";i:964;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"apple-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"apple-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"apple-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(234, 99, '_thumbnail_id', '100'),
(235, 101, '_wp_attached_file', '2016/06/apple-08.jpg'),
(236, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1595;s:6:"height";i:1204;s:4:"file";s:20:"2016/06/apple-08.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"apple-08-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"apple-08-300x226.jpg";s:5:"width";i:300;s:6:"height";i:226;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"apple-08-768x580.jpg";s:5:"width";i:768;s:6:"height";i:580;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"apple-08-1024x773.jpg";s:5:"width";i:1024;s:6:"height";i:773;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"apple-08-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"apple-08-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"apple-08-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(237, 102, '_wp_attached_file', '2016/06/download.jpg'),
(238, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:225;s:6:"height";i:224;s:4:"file";s:20:"2016/06/download.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"download-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"download-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(239, 99, '_visibility', 'visible'),
(240, 99, '_stock_status', 'instock'),
(241, 99, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(242, 99, 'total_sales', '0'),
(243, 99, '_downloadable', 'no'),
(244, 99, '_virtual', 'no'),
(245, 99, '_purchase_note', ''),
(246, 99, '_featured', 'yes'),
(247, 99, '_weight', ''),
(248, 99, '_length', ''),
(249, 99, '_width', ''),
(250, 99, '_height', ''),
(251, 99, '_sku', ''),
(252, 99, '_product_attributes', 'a:0:{}'),
(253, 99, '_regular_price', '10.6'),
(254, 99, '_sale_price', ''),
(255, 99, '_sale_price_dates_from', ''),
(256, 99, '_sale_price_dates_to', ''),
(257, 99, '_price', '10.6'),
(258, 99, '_sold_individually', ''),
(259, 99, '_manage_stock', 'no'),
(260, 99, '_backorders', 'no'),
(261, 99, '_stock', ''),
(262, 99, '_upsell_ids', 'a:0:{}'),
(263, 99, '_crosssell_ids', 'a:0:{}'),
(264, 99, '_product_version', '2.5.5'),
(265, 99, '_product_image_gallery', '101,102'),
(266, 99, '_wc_review_count', '0'),
(267, 89, '_wc_rating_count', 'a:0:{}'),
(268, 89, '_wc_average_rating', '0'),
(269, 103, '_edit_last', '1'),
(270, 103, '_edit_lock', '1465717089:1'),
(271, 104, '_wp_attached_file', '2016/06/20130310limes.jpg'),
(272, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:651;s:4:"file";s:25:"2016/06/20130310limes.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"20130310limes-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"20130310limes-300x244.jpg";s:5:"width";i:300;s:6:"height";i:244;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"20130310limes-768x625.jpg";s:5:"width";i:768;s:6:"height";i:625;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"20130310limes-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"20130310limes-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"20130310limes-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(274, 105, '_wp_attached_file', '2016/06/giant-lime-1323144.jpg'),
(275, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:669;s:6:"height";i:440;s:4:"file";s:30:"2016/06/giant-lime-1323144.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"giant-lime-1323144-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"giant-lime-1323144-300x197.jpg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"giant-lime-1323144-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"giant-lime-1323144-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"giant-lime-1323144-510x440.jpg";s:5:"width";i:510;s:6:"height";i:440;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(276, 106, '_wp_attached_file', '2016/06/homeLime.jpg'),
(277, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:428;s:6:"height";i:282;s:4:"file";s:20:"2016/06/homeLime.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"homeLime-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"homeLime-300x198.jpg";s:5:"width";i:300;s:6:"height";i:198;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"homeLime-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"homeLime-247x282.jpg";s:5:"width";i:247;s:6:"height";i:282;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(278, 103, '_thumbnail_id', '105'),
(279, 103, '_visibility', 'visible'),
(280, 103, '_stock_status', 'instock'),
(281, 103, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(282, 103, 'total_sales', '0'),
(283, 103, '_downloadable', 'no'),
(284, 103, '_virtual', 'no'),
(285, 103, '_purchase_note', ''),
(286, 103, '_featured', 'yes'),
(287, 103, '_weight', ''),
(288, 103, '_length', ''),
(289, 103, '_width', ''),
(290, 103, '_height', ''),
(291, 103, '_sku', ''),
(292, 103, '_product_attributes', 'a:0:{}'),
(293, 103, '_regular_price', '6.2'),
(294, 103, '_sale_price', '4.2'),
(295, 103, '_sale_price_dates_from', ''),
(296, 103, '_sale_price_dates_to', ''),
(297, 103, '_price', '4.2'),
(298, 103, '_sold_individually', ''),
(299, 103, '_manage_stock', 'no'),
(300, 103, '_backorders', 'no'),
(301, 103, '_stock', ''),
(302, 103, '_upsell_ids', 'a:0:{}'),
(303, 103, '_crosssell_ids', 'a:0:{}'),
(304, 103, '_product_version', '2.5.5'),
(305, 103, '_product_image_gallery', '106,104'),
(306, 103, '_wc_review_count', '0'),
(307, 99, '_wc_rating_count', 'a:0:{}'),
(308, 99, '_wc_average_rating', '0'),
(309, 107, '_edit_last', '1'),
(310, 107, '_edit_lock', '1465717281:1'),
(311, 108, '_wp_attached_file', '2016/06/grape-tree.jpg'),
(312, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:22:"2016/06/grape-tree.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"grape-tree-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"grape-tree-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"grape-tree-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"grape-tree-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"grape-tree-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"grape-tree-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"grape-tree-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(313, 107, '_thumbnail_id', '108'),
(314, 109, '_wp_attached_file', '2016/06/20130310limes-1.jpg'),
(315, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:651;s:4:"file";s:27:"2016/06/20130310limes-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"20130310limes-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"20130310limes-1-300x244.jpg";s:5:"width";i:300;s:6:"height";i:244;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"20130310limes-1-768x625.jpg";s:5:"width";i:768;s:6:"height";i:625;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"20130310limes-1-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"20130310limes-1-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:27:"20130310limes-1-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(316, 110, '_wp_attached_file', '2016/06/grapes-images-14.jpg'),
(317, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:1600;s:4:"file";s:28:"2016/06/grapes-images-14.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"grapes-images-14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"grapes-images-14-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"grapes-images-14-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"grapes-images-14-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"grapes-images-14-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"grapes-images-14-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"grapes-images-14-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(318, 111, '_wp_attached_file', '2016/06/Table_grapes_on_white.jpg'),
(319, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1067;s:4:"file";s:33:"2016/06/Table_grapes_on_white.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Table_grapes_on_white-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Table_grapes_on_white-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"Table_grapes_on_white-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"Table_grapes_on_white-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"Table_grapes_on_white-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"Table_grapes_on_white-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:33:"Table_grapes_on_white-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(320, 107, '_visibility', 'visible'),
(321, 107, '_stock_status', 'instock'),
(322, 107, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(323, 107, 'total_sales', '0'),
(324, 107, '_downloadable', 'no'),
(325, 107, '_virtual', 'no'),
(326, 107, '_purchase_note', ''),
(327, 107, '_featured', 'yes'),
(328, 107, '_weight', ''),
(329, 107, '_length', ''),
(330, 107, '_width', ''),
(331, 107, '_height', ''),
(332, 107, '_sku', ''),
(333, 107, '_product_attributes', 'a:0:{}'),
(334, 107, '_regular_price', '10.00'),
(335, 107, '_sale_price', ''),
(336, 107, '_sale_price_dates_from', ''),
(337, 107, '_sale_price_dates_to', ''),
(338, 107, '_price', '10.00'),
(339, 107, '_sold_individually', ''),
(340, 107, '_manage_stock', 'no'),
(341, 107, '_backorders', 'no'),
(342, 107, '_stock', ''),
(343, 107, '_upsell_ids', 'a:0:{}'),
(344, 107, '_crosssell_ids', 'a:0:{}'),
(345, 107, '_product_version', '2.5.5'),
(346, 107, '_product_image_gallery', '110,111'),
(347, 107, '_wc_review_count', '0'),
(348, 103, '_wc_rating_count', 'a:0:{}'),
(349, 103, '_wc_average_rating', '0'),
(350, 112, '_edit_last', '1'),
(351, 112, '_edit_lock', '1465718865:1'),
(352, 113, '_wp_attached_file', '2016/06/images-1.jpg'),
(353, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:279;s:6:"height";i:181;s:4:"file";s:20:"2016/06/images-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"images-1-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"images-1-247x181.jpg";s:5:"width";i:247;s:6:"height";i:181;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(356, 114, '_wp_attached_file', '2016/06/apple-1.jpg'),
(357, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:2656;s:4:"file";s:19:"2016/06/apple-1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"apple-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"apple-1-282x300.jpg";s:5:"width";i:282;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"apple-1-768x816.jpg";s:5:"width";i:768;s:6:"height";i:816;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"apple-1-964x1024.jpg";s:5:"width";i:964;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"apple-1-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"apple-1-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"apple-1-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(358, 115, '_wp_attached_file', '2016/06/strawberry_PNG89.png'),
(359, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:28:"2016/06/strawberry_PNG89.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"strawberry_PNG89-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"strawberry_PNG89-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:28:"strawberry_PNG89-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"strawberry_PNG89-114x130.png";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"strawberry_PNG89-247x300.png";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:28:"strawberry_PNG89-510x600.png";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(360, 116, '_wp_attached_file', '2016/06/Strawberry1.jpg'),
(361, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:424;s:4:"file";s:23:"2016/06/Strawberry1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Strawberry1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"Strawberry1-300x231.jpg";s:5:"width";i:300;s:6:"height";i:231;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Strawberry1-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"Strawberry1-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"Strawberry1-510x424.jpg";s:5:"width";i:510;s:6:"height";i:424;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(362, 112, '_visibility', 'visible'),
(363, 112, '_stock_status', 'instock'),
(364, 112, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(365, 112, 'total_sales', '0'),
(366, 112, '_downloadable', 'no'),
(367, 112, '_virtual', 'no'),
(368, 112, '_purchase_note', ''),
(369, 112, '_featured', 'yes'),
(370, 112, '_weight', ''),
(371, 112, '_length', ''),
(372, 112, '_width', ''),
(373, 112, '_height', ''),
(374, 112, '_sku', ''),
(375, 112, '_product_attributes', 'a:0:{}'),
(376, 112, '_regular_price', '10.00'),
(377, 112, '_sale_price', '8.00'),
(378, 112, '_sale_price_dates_from', ''),
(379, 112, '_sale_price_dates_to', ''),
(380, 112, '_price', '8.00'),
(381, 112, '_sold_individually', ''),
(382, 112, '_manage_stock', 'no'),
(383, 112, '_backorders', 'no'),
(384, 112, '_stock', ''),
(385, 112, '_upsell_ids', 'a:0:{}'),
(386, 112, '_crosssell_ids', 'a:0:{}'),
(387, 112, '_product_version', '2.5.5'),
(388, 112, '_product_image_gallery', '115,113'),
(389, 112, '_wc_review_count', '0'),
(390, 107, '_wc_rating_count', 'a:0:{}'),
(391, 107, '_wc_average_rating', '0'),
(392, 112, '_wc_rating_count', 'a:0:{}'),
(393, 112, '_wc_average_rating', '0'),
(394, 112, '_thumbnail_id', '116'),
(395, 117, '_edit_last', '1'),
(396, 117, '_edit_lock', '1465737081:1'),
(397, 117, '_product_attributes', 'a:1:{s:5:"sizes";a:6:{s:4:"name";s:5:"Sizes";s:5:"value";s:10:"M | L | xL";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:0;}}'),
(408, 117, '_stock_status', 'instock'),
(431, 119, '_sale_price_dates_from', ''),
(432, 119, '_sale_price_dates_to', ''),
(433, 119, '_price', ''),
(434, 119, '_download_limit', ''),
(435, 119, '_download_expiry', ''),
(436, 119, '_downloadable_files', ''),
(437, 119, '_variation_description', ''),
(438, 119, 'attribute_various-shape', ''),
(439, 117, '_downloadable', 'no'),
(440, 117, '_virtual', 'no'),
(441, 117, '_min_variation_price', '250'),
(442, 117, '_max_variation_price', '350'),
(443, 117, '_min_price_variation_id', '139'),
(444, 117, '_max_price_variation_id', '137'),
(445, 117, '_min_variation_regular_price', '250'),
(446, 117, '_max_variation_regular_price', '350'),
(447, 117, '_min_regular_price_variation_id', '139'),
(448, 117, '_max_regular_price_variation_id', '137'),
(449, 117, '_min_variation_sale_price', NULL),
(450, 117, '_max_variation_sale_price', NULL),
(451, 117, '_min_sale_price_variation_id', NULL),
(452, 117, '_max_sale_price_variation_id', NULL),
(453, 117, '_price', '300'),
(454, 117, '_default_attributes', 'a:0:{}'),
(455, 119, '_sku', ''),
(456, 119, '_thumbnail_id', '0'),
(457, 119, '_virtual', 'no'),
(458, 119, '_downloadable', 'no'),
(459, 119, '_weight', ''),
(460, 119, '_length', ''),
(461, 119, '_width', ''),
(462, 119, '_height', ''),
(463, 119, '_manage_stock', 'no'),
(464, 119, '_regular_price', ''),
(465, 119, '_sale_price', ''),
(554, 128, '_wp_attached_file', '2016/06/48858d5d6eaf1f623808a6a2a04fa5d5.jpg'),
(555, 128, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:570;s:6:"height";i:798;s:4:"file";s:44:"2016/06/48858d5d6eaf1f623808a6a2a04fa5d5.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"48858d5d6eaf1f623808a6a2a04fa5d5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"48858d5d6eaf1f623808a6a2a04fa5d5-214x300.jpg";s:5:"width";i:214;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:44:"48858d5d6eaf1f623808a6a2a04fa5d5-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:44:"48858d5d6eaf1f623808a6a2a04fa5d5-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:44:"48858d5d6eaf1f623808a6a2a04fa5d5-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(556, 117, '_thumbnail_id', '128'),
(557, 129, '_wp_attached_file', '2016/06/15013.jpg'),
(558, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:1200;s:4:"file";s:17:"2016/06/15013.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"15013-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"15013-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"15013-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"15013-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"15013-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"15013-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"15013-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(559, 130, '_wp_attached_file', '2016/06/45197503_xxl.jpg'),
(560, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1425;s:6:"height";i:1425;s:4:"file";s:24:"2016/06/45197503_xxl.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"45197503_xxl-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"45197503_xxl-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"45197503_xxl-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"45197503_xxl-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"45197503_xxl-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"45197503_xxl-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:24:"45197503_xxl-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(561, 131, '_wp_attached_file', '2016/06/green-t-shirt.jpg'),
(562, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2016/06/green-t-shirt.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"green-t-shirt-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"green-t-shirt-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"green-t-shirt-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"green-t-shirt-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"green-t-shirt-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"green-t-shirt-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(563, 132, '_wp_attached_file', '2016/06/images-2.jpg'),
(564, 132, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:236;s:4:"file";s:20:"2016/06/images-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"images-2-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(565, 117, '_visibility', 'visible'),
(566, 117, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(567, 117, 'total_sales', '0'),
(568, 117, '_purchase_note', ''),
(569, 117, '_featured', 'yes'),
(570, 117, '_weight', ''),
(571, 117, '_length', ''),
(572, 117, '_width', ''),
(573, 117, '_height', ''),
(574, 117, '_sku', ''),
(575, 117, '_regular_price', '300'),
(576, 117, '_sale_price', ''),
(577, 117, '_sale_price_dates_from', ''),
(578, 117, '_sale_price_dates_to', ''),
(579, 117, '_sold_individually', ''),
(580, 117, '_manage_stock', 'no'),
(581, 117, '_backorders', 'no'),
(582, 117, '_stock', ''),
(583, 117, '_upsell_ids', 'a:0:{}'),
(584, 117, '_crosssell_ids', 'a:0:{}'),
(585, 117, '_product_version', '2.5.5'),
(586, 117, '_product_image_gallery', '129,130,131,132'),
(587, 117, '_wc_review_count', '0'),
(598, 133, '_regular_price', '250'),
(599, 133, '_sale_price', ''),
(600, 133, '_sale_price_dates_from', ''),
(601, 133, '_sale_price_dates_to', ''),
(602, 133, '_price', '250'),
(603, 133, '_download_limit', ''),
(604, 133, '_download_expiry', ''),
(605, 133, '_downloadable_files', ''),
(606, 133, '_variation_description', ''),
(607, 133, 'attribute_sizes', 'L'),
(608, 133, '_sku', ''),
(609, 133, '_thumbnail_id', '0'),
(610, 133, '_virtual', 'no'),
(611, 133, '_downloadable', 'no'),
(612, 133, '_weight', ''),
(613, 133, '_length', ''),
(614, 133, '_width', ''),
(615, 133, '_height', ''),
(616, 133, '_manage_stock', 'no'),
(677, 137, 'attribute_sizes', 'xL'),
(678, 137, '_stock_status', 'instock'),
(679, 138, 'attribute_sizes', 'L'),
(680, 138, '_stock_status', 'instock'),
(681, 139, 'attribute_sizes', ''),
(682, 139, '_stock_status', 'instock'),
(683, 139, '_sku', ''),
(684, 139, '_thumbnail_id', '0'),
(685, 139, '_virtual', 'no'),
(686, 139, '_downloadable', 'no'),
(687, 139, '_weight', ''),
(688, 139, '_length', ''),
(689, 139, '_width', ''),
(690, 139, '_height', ''),
(691, 139, '_manage_stock', 'no'),
(692, 139, '_regular_price', '250'),
(693, 139, '_sale_price', ''),
(694, 139, '_sale_price_dates_from', ''),
(695, 139, '_sale_price_dates_to', ''),
(696, 139, '_price', '250'),
(697, 139, '_download_limit', ''),
(698, 139, '_download_expiry', ''),
(699, 139, '_downloadable_files', ''),
(700, 139, '_variation_description', ''),
(701, 138, '_sku', ''),
(702, 138, '_thumbnail_id', '0'),
(703, 138, '_virtual', 'no'),
(704, 138, '_downloadable', 'no'),
(705, 138, '_weight', ''),
(706, 138, '_length', ''),
(707, 138, '_width', ''),
(708, 138, '_height', ''),
(709, 138, '_manage_stock', 'no'),
(710, 138, '_regular_price', '300'),
(711, 138, '_sale_price', ''),
(712, 138, '_sale_price_dates_from', ''),
(713, 138, '_sale_price_dates_to', ''),
(714, 138, '_price', '300'),
(715, 138, '_download_limit', ''),
(716, 138, '_download_expiry', ''),
(717, 138, '_downloadable_files', ''),
(718, 138, '_variation_description', ''),
(719, 137, '_sku', ''),
(720, 137, '_thumbnail_id', '0'),
(721, 137, '_virtual', 'no'),
(722, 137, '_downloadable', 'no'),
(723, 137, '_weight', ''),
(724, 137, '_length', ''),
(725, 137, '_width', ''),
(726, 137, '_height', ''),
(727, 137, '_manage_stock', 'no'),
(728, 137, '_regular_price', '350'),
(729, 137, '_sale_price', ''),
(730, 137, '_sale_price_dates_from', ''),
(731, 137, '_sale_price_dates_to', ''),
(732, 137, '_price', '350'),
(733, 137, '_download_limit', ''),
(734, 137, '_download_expiry', ''),
(735, 137, '_downloadable_files', ''),
(736, 137, '_variation_description', ''),
(770, 141, '_edit_last', '1'),
(771, 141, '_edit_lock', '1465780954:1'),
(772, 142, '_wp_attached_file', '2016/06/watch-hermes-201603.jpg'),
(773, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:374;s:6:"height";i:350;s:4:"file";s:31:"2016/06/watch-hermes-201603.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"watch-hermes-201603-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"watch-hermes-201603-300x281.jpg";s:5:"width";i:300;s:6:"height";i:281;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"watch-hermes-201603-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"watch-hermes-201603-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(774, 141, '_thumbnail_id', '142'),
(775, 141, '_visibility', 'visible'),
(776, 141, '_stock_status', 'instock'),
(777, 141, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(778, 141, 'total_sales', '0'),
(779, 141, '_downloadable', 'no'),
(780, 141, '_virtual', 'no'),
(781, 141, '_purchase_note', ''),
(782, 141, '_featured', 'no'),
(783, 141, '_weight', ''),
(784, 141, '_length', ''),
(785, 141, '_width', ''),
(786, 141, '_height', ''),
(787, 141, '_sku', ''),
(788, 141, '_product_attributes', 'a:0:{}'),
(789, 141, '_regular_price', '800'),
(790, 141, '_sale_price', '600'),
(791, 141, '_sale_price_dates_from', ''),
(792, 141, '_sale_price_dates_to', ''),
(793, 141, '_price', '600'),
(794, 141, '_sold_individually', ''),
(795, 141, '_manage_stock', 'no'),
(796, 141, '_backorders', 'no'),
(797, 141, '_stock', ''),
(798, 141, '_upsell_ids', 'a:0:{}'),
(799, 141, '_crosssell_ids', 'a:0:{}'),
(800, 141, '_product_version', '2.5.5'),
(801, 141, '_product_image_gallery', ''),
(802, 141, '_wc_review_count', '0'),
(803, 117, '_wc_rating_count', 'a:0:{}'),
(804, 117, '_wc_average_rating', '0'),
(805, 141, '_wc_rating_count', 'a:0:{}'),
(806, 141, '_wc_average_rating', '0'),
(807, 143, '_edit_last', '1'),
(808, 143, '_edit_lock', '1465784792:1'),
(809, 144, '_wp_attached_file', '2016/06/SDL478833219_1-930ba.jpg'),
(810, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:726;s:4:"file";s:32:"2016/06/SDL478833219_1-930ba.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"SDL478833219_1-930ba-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"SDL478833219_1-930ba-256x300.jpg";s:5:"width";i:256;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"SDL478833219_1-930ba-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:32:"SDL478833219_1-930ba-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:32:"SDL478833219_1-930ba-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(811, 143, '_thumbnail_id', '144'),
(812, 143, '_visibility', 'visible'),
(813, 143, '_stock_status', 'instock'),
(814, 143, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(815, 143, 'total_sales', '0'),
(816, 143, '_downloadable', 'no'),
(817, 143, '_virtual', 'no'),
(818, 143, '_purchase_note', ''),
(819, 143, '_featured', 'yes'),
(820, 143, '_weight', ''),
(821, 143, '_length', ''),
(822, 143, '_width', ''),
(823, 143, '_height', ''),
(824, 143, '_sku', ''),
(825, 143, '_product_attributes', 'a:0:{}'),
(826, 143, '_regular_price', '1200'),
(827, 143, '_sale_price', ''),
(828, 143, '_sale_price_dates_from', ''),
(829, 143, '_sale_price_dates_to', ''),
(830, 143, '_price', '1200'),
(831, 143, '_sold_individually', ''),
(832, 143, '_manage_stock', 'no'),
(833, 143, '_backorders', 'no'),
(834, 143, '_stock', ''),
(835, 143, '_upsell_ids', 'a:0:{}'),
(836, 143, '_crosssell_ids', 'a:0:{}'),
(837, 143, '_product_version', '2.5.5'),
(838, 143, '_product_image_gallery', ''),
(839, 143, '_wc_review_count', '0'),
(840, 143, '_wc_rating_count', 'a:0:{}'),
(841, 143, '_wc_average_rating', '0'),
(842, 145, '_edit_last', '1'),
(843, 145, '_edit_lock', '1465785051:1'),
(844, 146, '_wp_attached_file', '2016/06/images-5.jpg'),
(845, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:207;s:6:"height";i:243;s:4:"file";s:20:"2016/06/images-5.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"images-5-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(846, 145, '_thumbnail_id', '146'),
(847, 145, '_visibility', 'visible'),
(848, 145, '_stock_status', 'instock'),
(849, 145, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(850, 145, 'total_sales', '0'),
(851, 145, '_downloadable', 'no'),
(852, 145, '_virtual', 'no'),
(853, 145, '_purchase_note', ''),
(854, 145, '_featured', 'no'),
(855, 145, '_weight', ''),
(856, 145, '_length', ''),
(857, 145, '_width', ''),
(858, 145, '_height', ''),
(859, 145, '_sku', '2000'),
(860, 145, '_product_attributes', 'a:0:{}'),
(861, 145, '_regular_price', '1800'),
(862, 145, '_sale_price', ''),
(863, 145, '_sale_price_dates_from', ''),
(864, 145, '_sale_price_dates_to', ''),
(865, 145, '_price', '1800'),
(866, 145, '_sold_individually', ''),
(867, 145, '_manage_stock', 'no'),
(868, 145, '_backorders', 'no'),
(869, 145, '_stock', ''),
(870, 145, '_upsell_ids', 'a:0:{}'),
(871, 145, '_crosssell_ids', 'a:0:{}'),
(872, 145, '_product_version', '2.5.5'),
(873, 145, '_product_image_gallery', ''),
(874, 145, '_wc_review_count', '0'),
(875, 147, '_edit_last', '1'),
(876, 147, '_edit_lock', '1465785264:1'),
(877, 148, '_wp_attached_file', '2016/06/images-6.jpg'),
(878, 148, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:207;s:6:"height";i:243;s:4:"file";s:20:"2016/06/images-6.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"images-6-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(879, 147, '_thumbnail_id', '148'),
(880, 147, '_visibility', 'visible'),
(881, 147, '_stock_status', 'instock'),
(882, 147, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(883, 147, 'total_sales', '0'),
(884, 147, '_downloadable', 'no'),
(885, 147, '_virtual', 'no'),
(886, 147, '_purchase_note', ''),
(887, 147, '_featured', 'no'),
(888, 147, '_weight', ''),
(889, 147, '_length', ''),
(890, 147, '_width', ''),
(891, 147, '_height', ''),
(892, 147, '_sku', ''),
(893, 147, '_product_attributes', 'a:0:{}'),
(894, 147, '_regular_price', '2500'),
(895, 147, '_sale_price', '1700'),
(896, 147, '_sale_price_dates_from', ''),
(897, 147, '_sale_price_dates_to', ''),
(898, 147, '_price', '1700'),
(899, 147, '_sold_individually', ''),
(900, 147, '_manage_stock', 'no'),
(901, 147, '_backorders', 'no'),
(902, 147, '_stock', ''),
(903, 147, '_upsell_ids', 'a:0:{}'),
(904, 147, '_crosssell_ids', 'a:0:{}'),
(905, 147, '_product_version', '2.5.5'),
(906, 147, '_product_image_gallery', ''),
(907, 147, '_wc_review_count', '0'),
(908, 145, '_wc_rating_count', 'a:0:{}'),
(909, 145, '_wc_average_rating', '0'),
(910, 147, '_wc_rating_count', 'a:0:{}');
INSERT INTO `woo1postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(911, 147, '_wc_average_rating', '0'),
(912, 149, '_edit_last', '1'),
(913, 149, '_edit_lock', '1465785479:1'),
(914, 150, '_wp_attached_file', '2016/06/shoo-ss09-1.jpg'),
(915, 150, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:540;s:6:"height";i:360;s:4:"file";s:23:"2016/06/shoo-ss09-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"shoo-ss09-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"shoo-ss09-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"shoo-ss09-1-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"shoo-ss09-1-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"shoo-ss09-1-510x360.jpg";s:5:"width";i:510;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(916, 149, '_thumbnail_id', '150'),
(917, 149, '_visibility', 'visible'),
(918, 149, '_stock_status', 'instock'),
(919, 149, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(920, 149, 'total_sales', '0'),
(921, 149, '_downloadable', 'no'),
(922, 149, '_virtual', 'no'),
(923, 149, '_purchase_note', ''),
(924, 149, '_featured', 'yes'),
(925, 149, '_weight', ''),
(926, 149, '_length', ''),
(927, 149, '_width', ''),
(928, 149, '_height', ''),
(929, 149, '_sku', ''),
(930, 149, '_product_attributes', 'a:0:{}'),
(931, 149, '_regular_price', '1800'),
(932, 149, '_sale_price', ''),
(933, 149, '_sale_price_dates_from', ''),
(934, 149, '_sale_price_dates_to', ''),
(935, 149, '_price', '1800'),
(936, 149, '_sold_individually', ''),
(937, 149, '_manage_stock', 'no'),
(938, 149, '_backorders', 'no'),
(939, 149, '_stock', ''),
(940, 149, '_upsell_ids', 'a:0:{}'),
(941, 149, '_crosssell_ids', 'a:0:{}'),
(942, 149, '_product_version', '2.5.5'),
(943, 149, '_product_image_gallery', ''),
(944, 149, '_wc_review_count', '0'),
(945, 151, '_edit_last', '1'),
(946, 151, '_edit_lock', '1465786334:1'),
(947, 152, '_wp_attached_file', '2016/06/92204_BRN.jpg'),
(948, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:1500;s:4:"file";s:21:"2016/06/92204_BRN.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"92204_BRN-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"92204_BRN-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"92204_BRN-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"92204_BRN-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"92204_BRN-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"92204_BRN-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"92204_BRN-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(949, 151, '_thumbnail_id', '152'),
(950, 153, '_wp_attached_file', '2016/06/55185_FGE.jpg'),
(951, 153, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:2000;s:4:"file";s:21:"2016/06/55185_FGE.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"55185_FGE-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"55185_FGE-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"55185_FGE-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"55185_FGE-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"55185_FGE-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"55185_FGE-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"55185_FGE-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(952, 151, '_visibility', 'visible'),
(953, 151, '_stock_status', 'instock'),
(954, 151, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(955, 151, 'total_sales', '0'),
(956, 151, '_downloadable', 'no'),
(957, 151, '_virtual', 'no'),
(958, 151, '_purchase_note', ''),
(959, 151, '_featured', 'yes'),
(960, 151, '_weight', ''),
(961, 151, '_length', ''),
(962, 151, '_width', ''),
(963, 151, '_height', ''),
(964, 151, '_sku', ''),
(965, 151, '_product_attributes', 'a:0:{}'),
(966, 151, '_regular_price', '600'),
(967, 151, '_sale_price', '500'),
(968, 151, '_sale_price_dates_from', ''),
(969, 151, '_sale_price_dates_to', ''),
(970, 151, '_price', '500'),
(971, 151, '_sold_individually', ''),
(972, 151, '_manage_stock', 'no'),
(973, 151, '_backorders', 'no'),
(974, 151, '_stock', ''),
(975, 151, '_upsell_ids', 'a:0:{}'),
(976, 151, '_crosssell_ids', 'a:0:{}'),
(977, 151, '_product_version', '2.5.5'),
(978, 151, '_product_image_gallery', '153'),
(979, 151, '_wc_review_count', '0'),
(980, 154, '_edit_last', '1'),
(981, 154, '_edit_lock', '1465786574:1'),
(982, 155, '_wp_attached_file', '2016/06/images-4.jpg'),
(983, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:247;s:6:"height";i:204;s:4:"file";s:20:"2016/06/images-4.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"images-4-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"images-4-247x204.jpg";s:5:"width";i:247;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(984, 154, '_thumbnail_id', '155'),
(985, 154, '_visibility', 'visible'),
(986, 154, '_stock_status', 'instock'),
(987, 154, 'wc_productdata_options', 'a:1:{i:0;a:3:{s:11:"_bubble_new";s:0:"";s:17:"_custom_tab_title";s:0:"";s:11:"_custom_tab";s:0:"";}}'),
(988, 154, 'total_sales', '0'),
(989, 154, '_downloadable', 'no'),
(990, 154, '_virtual', 'no'),
(991, 154, '_purchase_note', ''),
(992, 154, '_featured', 'yes'),
(993, 154, '_weight', ''),
(994, 154, '_length', ''),
(995, 154, '_width', ''),
(996, 154, '_height', ''),
(997, 154, '_sku', ''),
(998, 154, '_product_attributes', 'a:0:{}'),
(999, 154, '_regular_price', '650'),
(1000, 154, '_sale_price', ''),
(1001, 154, '_sale_price_dates_from', ''),
(1002, 154, '_sale_price_dates_to', ''),
(1003, 154, '_price', '650'),
(1004, 154, '_sold_individually', ''),
(1005, 154, '_manage_stock', 'no'),
(1006, 154, '_backorders', 'no'),
(1007, 154, '_stock', ''),
(1008, 154, '_upsell_ids', 'a:0:{}'),
(1009, 154, '_crosssell_ids', 'a:0:{}'),
(1010, 154, '_product_version', '2.5.5'),
(1011, 154, '_product_image_gallery', ''),
(1012, 154, '_wc_review_count', '0'),
(1013, 154, '_wc_rating_count', 'a:0:{}'),
(1014, 154, '_wc_average_rating', '0'),
(1015, 151, '_wc_rating_count', 'a:0:{}'),
(1016, 151, '_wc_average_rating', '0'),
(1017, 149, '_wc_rating_count', 'a:0:{}'),
(1018, 149, '_wc_average_rating', '0'),
(1019, 156, '_edit_last', '1'),
(1020, 156, '_wp_page_template', 'page-blank-container.php'),
(1021, 156, '_edit_lock', '1465788791:1'),
(1022, 93, '_edit_lock', '1465788273:1'),
(1028, 168, '_edit_last', '1'),
(1029, 168, '_edit_lock', '1465789734:1'),
(1032, 170, '_edit_last', '1'),
(1033, 170, '_edit_lock', '1465789670:1'),
(1036, 170, '_thumbnail_id', '57'),
(1039, 168, '_thumbnail_id', '59'),
(1042, 172, '_edit_last', '1'),
(1043, 172, '_edit_lock', '1465789913:1'),
(1044, 172, '_thumbnail_id', '46'),
(1047, 174, '_edit_last', '1'),
(1048, 174, '_edit_lock', '1465801484:1'),
(1049, 174, '_wp_page_template', 'page-blank-container.php'),
(1050, 176, '_wp_attached_file', '2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg'),
(1051, 176, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:594;s:6:"height";i:274;s:4:"file";s:52:"2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:52:"Free_Wood_Background_Set_Preview_Small-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:52:"Free_Wood_Background_Set_Preview_Small-1-300x138.jpg";s:5:"width";i:300;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:52:"Free_Wood_Background_Set_Preview_Small-1-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:52:"Free_Wood_Background_Set_Preview_Small-1-247x274.jpg";s:5:"width";i:247;s:6:"height";i:274;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:52:"Free_Wood_Background_Set_Preview_Small-1-510x274.jpg";s:5:"width";i:510;s:6:"height";i:274;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1052, 180, '_wp_attached_file', '2016/06/IMG_20141220_141257.jpg'),
(1053, 180, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:671;s:6:"height";i:765;s:4:"file";s:31:"2016/06/IMG_20141220_141257.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20141220_141257-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20141220_141257-263x300.jpg";s:5:"width";i:263;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"IMG_20141220_141257-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"IMG_20141220_141257-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"IMG_20141220_141257-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.4";s:6:"credit";s:0:"";s:6:"camera";s:15:"WALTON Primo S3";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1419084777";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.5";s:3:"iso";s:3:"258";s:13:"shutter_speed";s:8:"0.009994";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1054, 181, '_wp_attached_file', '2016/06/11713728_906882406044282_5985600076205751061_o.jpg'),
(1055, 181, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:960;s:4:"file";s:58:"2016/06/11713728_906882406044282_5985600076205751061_o.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"11713728_906882406044282_5985600076205751061_o-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:58:"11713728_906882406044282_5985600076205751061_o-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:58:"11713728_906882406044282_5985600076205751061_o-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:58:"11713728_906882406044282_5985600076205751061_o-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:58:"11713728_906882406044282_5985600076205751061_o-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:58:"11713728_906882406044282_5985600076205751061_o-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1056, 182, '_wp_attached_file', '2016/06/IMG_20150804_134607.jpg'),
(1057, 182, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4160;s:6:"height";i:3120;s:4:"file";s:31:"2016/06/IMG_20150804_134607.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20150804_134607-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20150804_134607-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"IMG_20150804_134607-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG_20150804_134607-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"IMG_20150804_134607-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"IMG_20150804_134607-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"IMG_20150804_134607-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:12:"Xplorer H200";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1438695968";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.5";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:7:"0.00082";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1058, 183, '_wp_attached_file', '2016/06/IMG_20150407_205036.jpg'),
(1059, 183, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3264;s:6:"height";i:2448;s:4:"file";s:31:"2016/06/IMG_20150407_205036.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20150407_205036-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20150407_205036-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"IMG_20150407_205036-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG_20150407_205036-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"IMG_20150407_205036-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"IMG_20150407_205036-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"IMG_20150407_205036-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.4";s:6:"credit";s:0:"";s:6:"camera";s:12:"Xplorer H200";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1428439837";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.5";s:3:"iso";s:3:"678";s:13:"shutter_speed";s:8:"0.100004";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1060, 186, '_wp_attached_file', '2016/06/nishi.jpg'),
(1061, 186, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:17:"2016/06/nishi.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"nishi-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"nishi-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"nishi-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"nishi-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1062, 187, '_wp_attached_file', '2016/06/Rumman.jpg'),
(1063, 187, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:18:"2016/06/Rumman.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Rumman-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Rumman-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"Rumman-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"Rumman-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.4";s:6:"credit";s:0:"";s:6:"camera";s:15:"WALTON Primo S3";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1419084777";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.5";s:3:"iso";s:3:"258";s:13:"shutter_speed";s:8:"0.009994";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1064, 189, '_wp_attached_file', '2016/06/jahid.jpg'),
(1065, 189, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:17:"2016/06/jahid.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"jahid-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"jahid-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"jahid-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"jahid-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:12:"Xplorer H200";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1444256851";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.5";s:3:"iso";s:3:"649";s:13:"shutter_speed";s:8:"0.100004";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1066, 190, '_wp_attached_file', '2016/06/Shohon.jpg'),
(1067, 190, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:18:"2016/06/Shohon.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Shohon-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Shohon-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"Shohon-114x130.jpg";s:5:"width";i:114;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"Shohon-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.4";s:6:"credit";s:0:"";s:6:"camera";s:12:"Xplorer H200";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1428439837";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.5";s:3:"iso";s:3:"678";s:13:"shutter_speed";s:8:"0.100004";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1068, 192, '_wp_attached_file', '2016/06/Adobe-InDesign-5.ico'),
(1069, 193, '_wp_attached_file', '2016/06/Alarm.ico'),
(1070, 194, '_wp_attached_file', '2016/06/Apple-2.ico'),
(1071, 195, '_wp_attached_file', '2016/06/Apple-Inc.-6.ico'),
(1072, 196, '_wp_attached_file', '2016/06/Basketball-4.ico'),
(1073, 197, '_wp_attached_file', '2016/06/Basketball-5.ico'),
(1074, 204, '_wp_attached_file', '2016/06/M.jpg'),
(1075, 204, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:75;s:6:"height";i:75;s:4:"file";s:13:"2016/06/M.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1076, 205, '_wp_attached_file', '2016/06/N.png'),
(1077, 205, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:75;s:6:"height";i:75;s:4:"file";s:13:"2016/06/N.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1078, 206, '_wp_attached_file', '2016/06/R.png'),
(1079, 206, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:75;s:6:"height";i:75;s:4:"file";s:13:"2016/06/R.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1080, 207, '_wp_attached_file', '2016/06/S.png'),
(1081, 207, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:75;s:6:"height";i:75;s:4:"file";s:13:"2016/06/S.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1082, 211, '_edit_last', '1'),
(1083, 211, '_edit_lock', '1465835706:1'),
(1084, 211, '_wp_page_template', 'default'),
(1085, 213, '_edit_last', '1'),
(1086, 213, '_edit_lock', '1465835899:1'),
(1087, 213, '_wp_page_template', 'page-blank-container.php'),
(1088, 216, '_edit_last', '1'),
(1089, 216, '_edit_lock', '1465835954:1'),
(1090, 216, '_wp_page_template', 'default'),
(1091, 218, '_edit_last', '1'),
(1092, 218, '_edit_lock', '1465836109:1'),
(1093, 218, '_wp_page_template', 'default'),
(1094, 220, '_menu_item_type', 'post_type'),
(1095, 220, '_menu_item_menu_item_parent', '0'),
(1096, 220, '_menu_item_object_id', '211'),
(1097, 220, '_menu_item_object', 'page'),
(1098, 220, '_menu_item_target', ''),
(1099, 220, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1100, 220, '_menu_item_xfn', ''),
(1101, 220, '_menu_item_url', ''),
(1103, 221, '_menu_item_type', 'post_type'),
(1104, 221, '_menu_item_menu_item_parent', '0'),
(1105, 221, '_menu_item_object_id', '174'),
(1106, 221, '_menu_item_object', 'page'),
(1107, 221, '_menu_item_target', ''),
(1108, 221, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1109, 221, '_menu_item_xfn', ''),
(1110, 221, '_menu_item_url', ''),
(1112, 222, '_menu_item_type', 'post_type'),
(1113, 222, '_menu_item_menu_item_parent', '0'),
(1114, 222, '_menu_item_object_id', '93'),
(1115, 222, '_menu_item_object', 'page'),
(1116, 222, '_menu_item_target', ''),
(1117, 222, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1118, 222, '_menu_item_xfn', ''),
(1119, 222, '_menu_item_url', ''),
(1121, 223, '_menu_item_type', 'post_type'),
(1122, 223, '_menu_item_menu_item_parent', '0'),
(1123, 223, '_menu_item_object_id', '13'),
(1124, 223, '_menu_item_object', 'page'),
(1125, 223, '_menu_item_target', ''),
(1126, 223, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1127, 223, '_menu_item_xfn', ''),
(1128, 223, '_menu_item_url', ''),
(1130, 224, '_menu_item_type', 'post_type'),
(1131, 224, '_menu_item_menu_item_parent', '0'),
(1132, 224, '_menu_item_object_id', '11'),
(1133, 224, '_menu_item_object', 'page'),
(1134, 224, '_menu_item_target', ''),
(1135, 224, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1136, 224, '_menu_item_xfn', ''),
(1137, 224, '_menu_item_url', ''),
(1139, 225, '_menu_item_type', 'custom'),
(1140, 225, '_menu_item_menu_item_parent', '222'),
(1141, 225, '_menu_item_object_id', '225'),
(1142, 225, '_menu_item_object', 'custom'),
(1143, 225, '_menu_item_target', ''),
(1144, 225, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1145, 225, '_menu_item_xfn', ''),
(1146, 225, '_menu_item_url', 'http://localhost/wptestsite/product-category/foods/'),
(1148, 226, '_menu_item_type', 'custom'),
(1149, 226, '_menu_item_menu_item_parent', '225'),
(1150, 226, '_menu_item_object_id', '226'),
(1151, 226, '_menu_item_object', 'custom'),
(1152, 226, '_menu_item_target', ''),
(1153, 226, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1154, 226, '_menu_item_xfn', ''),
(1155, 226, '_menu_item_url', 'http://localhost/wptestsite/product-category/foods/apple/'),
(1157, 227, '_menu_item_type', 'custom'),
(1158, 227, '_menu_item_menu_item_parent', '225'),
(1159, 227, '_menu_item_object_id', '227'),
(1160, 227, '_menu_item_object', 'custom'),
(1161, 227, '_menu_item_target', ''),
(1162, 227, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1163, 227, '_menu_item_xfn', ''),
(1164, 227, '_menu_item_url', 'http://localhost/wptestsite/product-category/foods/grape/'),
(1166, 228, '_menu_item_type', 'custom'),
(1167, 228, '_menu_item_menu_item_parent', '225'),
(1168, 228, '_menu_item_object_id', '228'),
(1169, 228, '_menu_item_object', 'custom'),
(1170, 228, '_menu_item_target', ''),
(1171, 228, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1172, 228, '_menu_item_xfn', ''),
(1173, 228, '_menu_item_url', 'http://localhost/wptestsite/product-category/foods/guava/'),
(1175, 229, '_menu_item_type', 'custom'),
(1176, 229, '_menu_item_menu_item_parent', '225'),
(1177, 229, '_menu_item_object_id', '229'),
(1178, 229, '_menu_item_object', 'custom'),
(1179, 229, '_menu_item_target', ''),
(1180, 229, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1181, 229, '_menu_item_xfn', ''),
(1182, 229, '_menu_item_url', 'http://localhost/wptestsite/product-category/foods/lime/'),
(1184, 230, '_menu_item_type', 'custom'),
(1185, 230, '_menu_item_menu_item_parent', '225'),
(1186, 230, '_menu_item_object_id', '230'),
(1187, 230, '_menu_item_object', 'custom'),
(1188, 230, '_menu_item_target', ''),
(1189, 230, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1190, 230, '_menu_item_xfn', ''),
(1191, 230, '_menu_item_url', 'http://localhost/wptestsite/product-category/foods/litchi/'),
(1193, 231, '_menu_item_type', 'custom'),
(1194, 231, '_menu_item_menu_item_parent', '225'),
(1195, 231, '_menu_item_object_id', '231'),
(1196, 231, '_menu_item_object', 'custom'),
(1197, 231, '_menu_item_target', ''),
(1198, 231, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1199, 231, '_menu_item_xfn', ''),
(1200, 231, '_menu_item_url', 'http://localhost/wptestsite/product-category/foods/mango/'),
(1202, 232, '_menu_item_type', 'custom'),
(1203, 232, '_menu_item_menu_item_parent', '225'),
(1204, 232, '_menu_item_object_id', '232'),
(1205, 232, '_menu_item_object', 'custom'),
(1206, 232, '_menu_item_target', ''),
(1207, 232, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1208, 232, '_menu_item_xfn', ''),
(1209, 232, '_menu_item_url', 'http://localhost/wptestsite/product-category/foods/strawberry/'),
(1211, 233, '_menu_item_type', 'custom'),
(1212, 233, '_menu_item_menu_item_parent', '225'),
(1213, 233, '_menu_item_object_id', '233'),
(1214, 233, '_menu_item_object', 'custom'),
(1215, 233, '_menu_item_target', ''),
(1216, 233, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1217, 233, '_menu_item_xfn', ''),
(1218, 233, '_menu_item_url', 'http://localhost/wptestsite/product-category/foods/velvet/'),
(1220, 234, '_menu_item_type', 'custom'),
(1221, 234, '_menu_item_menu_item_parent', '222'),
(1222, 234, '_menu_item_object_id', '234'),
(1223, 234, '_menu_item_object', 'custom'),
(1224, 234, '_menu_item_target', ''),
(1225, 234, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1226, 234, '_menu_item_xfn', ''),
(1227, 234, '_menu_item_url', 'http://localhost/wptestsite/product-category/shop/'),
(1229, 235, '_menu_item_type', 'custom'),
(1230, 235, '_menu_item_menu_item_parent', '234'),
(1231, 235, '_menu_item_object_id', '235'),
(1232, 235, '_menu_item_object', 'custom'),
(1233, 235, '_menu_item_target', ''),
(1234, 235, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1235, 235, '_menu_item_xfn', ''),
(1236, 235, '_menu_item_url', 'http://localhost/wptestsite/product-category/shop/caps/'),
(1238, 236, '_menu_item_type', 'custom'),
(1239, 236, '_menu_item_menu_item_parent', '234'),
(1240, 236, '_menu_item_object_id', '236'),
(1241, 236, '_menu_item_object', 'custom'),
(1242, 236, '_menu_item_target', ''),
(1243, 236, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1244, 236, '_menu_item_xfn', ''),
(1245, 236, '_menu_item_url', 'http://localhost/wptestsite/product-category/shop/pant/'),
(1247, 237, '_menu_item_type', 'custom'),
(1248, 237, '_menu_item_menu_item_parent', '234'),
(1249, 237, '_menu_item_object_id', '237'),
(1250, 237, '_menu_item_object', 'custom'),
(1251, 237, '_menu_item_target', ''),
(1252, 237, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1253, 237, '_menu_item_xfn', ''),
(1254, 237, '_menu_item_url', 'http://localhost/wptestsite/product-category/shop/shoe/'),
(1256, 238, '_menu_item_type', 'custom'),
(1257, 238, '_menu_item_menu_item_parent', '234'),
(1258, 238, '_menu_item_object_id', '238'),
(1259, 238, '_menu_item_object', 'custom'),
(1260, 238, '_menu_item_target', ''),
(1261, 238, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1262, 238, '_menu_item_xfn', ''),
(1263, 238, '_menu_item_url', 'http://localhost/wptestsite/product-category/shop/t-shirt/'),
(1265, 239, '_menu_item_type', 'custom'),
(1266, 239, '_menu_item_menu_item_parent', '234'),
(1267, 239, '_menu_item_object_id', '239'),
(1268, 239, '_menu_item_object', 'custom'),
(1269, 239, '_menu_item_target', ''),
(1270, 239, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1271, 239, '_menu_item_xfn', ''),
(1272, 239, '_menu_item_url', 'http://localhost/wptestsite/product-category/shop/watch/'),
(1274, 240, '_menu_item_type', 'post_type'),
(1275, 240, '_menu_item_menu_item_parent', '0'),
(1276, 240, '_menu_item_object_id', '213'),
(1277, 240, '_menu_item_object', 'page'),
(1278, 240, '_menu_item_target', ''),
(1279, 240, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1280, 240, '_menu_item_xfn', ''),
(1281, 240, '_menu_item_url', ''),
(1283, 241, '_menu_item_type', 'post_type'),
(1284, 241, '_menu_item_menu_item_parent', '0'),
(1285, 241, '_menu_item_object_id', '96'),
(1286, 241, '_menu_item_object', 'page'),
(1287, 241, '_menu_item_target', ''),
(1288, 241, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1289, 241, '_menu_item_xfn', ''),
(1290, 241, '_menu_item_url', ''),
(1301, 243, '_menu_item_type', 'post_type'),
(1302, 243, '_menu_item_menu_item_parent', '0'),
(1303, 243, '_menu_item_object_id', '5'),
(1304, 243, '_menu_item_object', 'page'),
(1305, 243, '_menu_item_target', ''),
(1306, 243, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1307, 243, '_menu_item_xfn', ''),
(1308, 243, '_menu_item_url', ''),
(1310, 244, '_menu_item_type', 'post_type'),
(1311, 244, '_menu_item_menu_item_parent', '0'),
(1312, 244, '_menu_item_object_id', '218'),
(1313, 244, '_menu_item_object', 'page'),
(1314, 244, '_menu_item_target', ''),
(1315, 244, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1316, 244, '_menu_item_xfn', ''),
(1317, 244, '_menu_item_url', ''),
(1319, 245, '_menu_item_type', 'post_type'),
(1320, 245, '_menu_item_menu_item_parent', '0'),
(1321, 245, '_menu_item_object_id', '216'),
(1322, 245, '_menu_item_object', 'page'),
(1323, 245, '_menu_item_target', ''),
(1324, 245, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1325, 245, '_menu_item_xfn', ''),
(1326, 245, '_menu_item_url', ''),
(1328, 246, '_menu_item_type', 'post_type'),
(1329, 246, '_menu_item_menu_item_parent', '0'),
(1330, 246, '_menu_item_object_id', '213'),
(1331, 246, '_menu_item_object', 'page'),
(1332, 246, '_menu_item_target', ''),
(1333, 246, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1334, 246, '_menu_item_xfn', ''),
(1335, 246, '_menu_item_url', ''),
(1337, 96, '_edit_lock', '1465856358:1'),
(1338, 247, '_menu_item_type', 'post_type'),
(1339, 247, '_menu_item_menu_item_parent', '0'),
(1340, 247, '_menu_item_object_id', '96'),
(1341, 247, '_menu_item_object', 'page'),
(1342, 247, '_menu_item_target', ''),
(1343, 247, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1344, 247, '_menu_item_xfn', ''),
(1345, 247, '_menu_item_url', ''),
(1347, 94, '_edit_lock', '1465856735:1'),
(1348, 248, '_order_key', 'wc_order_575f34370290f'),
(1349, 248, '_order_currency', 'BDT'),
(1350, 248, '_prices_include_tax', 'no'),
(1351, 248, '_customer_ip_address', '::1'),
(1352, 248, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36'),
(1353, 248, '_customer_user', '1'),
(1354, 248, '_created_via', 'checkout'),
(1355, 248, '_order_version', '2.5.5'),
(1356, 248, '_billing_first_name', 'sag sfd'),
(1357, 248, '_billing_last_name', 'g sag as'),
(1358, 248, '_billing_company', ''),
(1359, 248, '_billing_email', 'rummanyt@gmail.com'),
(1360, 248, '_billing_phone', '+8801757571237'),
(1361, 248, '_billing_country', 'BD'),
(1362, 248, '_billing_address_1', 'dsag saf gasf gsf gas'),
(1363, 248, '_billing_address_2', ''),
(1364, 248, '_billing_city', 'as fg sfdg g'),
(1365, 248, '_billing_state', 'BAN'),
(1366, 248, '_billing_postcode', '8000'),
(1367, 248, '_shipping_first_name', 'sag sfd'),
(1368, 248, '_shipping_last_name', 'g sag as'),
(1369, 248, '_shipping_company', ''),
(1370, 248, '_shipping_country', 'BD'),
(1371, 248, '_shipping_address_1', 'dsag saf gasf gsf gas'),
(1372, 248, '_shipping_address_2', ''),
(1373, 248, '_shipping_city', 'as fg sfdg g'),
(1374, 248, '_shipping_state', 'BAN'),
(1375, 248, '_shipping_postcode', '8000'),
(1376, 248, '_payment_method', 'bacs'),
(1377, 248, '_payment_method_title', 'Direct Bank Transfer'),
(1378, 248, '_order_shipping', ''),
(1379, 248, '_cart_discount', '0'),
(1380, 248, '_cart_discount_tax', '0'),
(1381, 248, '_order_tax', '0'),
(1382, 248, '_order_shipping_tax', '0'),
(1383, 248, '_order_total', '11.98'),
(1384, 248, '_recorded_sales', 'yes'),
(1385, 248, '_order_stock_reduced', '1'),
(1386, 248, '_download_permissions_granted', '1'),
(1387, 248, '_edit_lock', '1465857012:1'),
(1388, 187, '_wp_attachment_wp_user_avatar', '1'),
(1389, 249, '_menu_item_type', 'custom'),
(1390, 249, '_menu_item_menu_item_parent', '0'),
(1391, 249, '_menu_item_object_id', '249'),
(1392, 249, '_menu_item_object', 'custom'),
(1393, 249, '_menu_item_target', ''),
(1394, 249, '_menu_item_classes', 'a:1:{i:0;s:12:"icon-envelop";}'),
(1395, 249, '_menu_item_xfn', ''),
(1396, 249, '_menu_item_url', '#newsletter-signup'),
(1398, 250, '_form_id', '6'),
(1399, 250, '_seq_num', '1'),
(1400, 250, '_action', 'submit'),
(1401, 250, '_field_5', 'rumman142228@gmail.com'),
(1402, 250, '_field_6', ''),
(1403, 250, '_sub_id', '250'),
(1404, 256, '_form_id', '6'),
(1405, 256, '_seq_num', '2'),
(1406, 256, '_action', 'submit'),
(1407, 256, '_field_5', 'rumman142228@gmail.com'),
(1408, 256, '_field_6', ''),
(1409, 256, '_sub_id', '256');

-- --------------------------------------------------------

--
-- Table structure for table `woo1posts`
--

CREATE TABLE `woo1posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1posts`
--

INSERT INTO `woo1posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2016-06-11 05:43:58', '2016-06-11 05:43:58', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wptestsite/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-06-11 05:43:58', '2016-06-11 05:43:58', '', 0, 'http://localhost/wptestsite/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-06-11 06:51:01', '0000-00-00 00:00:00', 'This is a preview of how this form will appear on your website', 'ninja_forms_preview_page', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-11 06:51:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wptestsite/?page_id=4', 0, 'page', '', 0),
(5, 1, '2016-06-11 06:52:32', '2016-06-11 06:52:32', '[yith_wcwl_wishlist]', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2016-06-11 06:52:32', '2016-06-11 06:52:32', '', 0, 'http://localhost/wptestsite/wishlist/', 0, 'page', '', 0),
(10, 1, '2016-06-11 12:08:02', '2016-06-11 12:08:02', '', 'Drawing (4)', '', 'inherit', 'open', 'closed', '', 'drawing-4', '', '', '2016-06-11 12:08:02', '2016-06-11 12:08:02', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Drawing-4.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2016-06-11 12:11:07', '2016-06-11 12:11:07', '[block id="homepage-slider"]\r\n\r\n[gap height="30px"]\r\n<h4 style="text-align: center;">Lorem Ipsum is a dummy content....We use this..So how can wo stop this ?</h4>\r\n[gap height="10px"]\r\n\r\n[block id="banner-row"]\r\n\r\n[gap height="30px"]\r\n\r\n[block id="featured-products"]\r\n\r\n[gap height="30px"]\r\n\r\n[block id="latest-blog-posts"]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-06-12 03:46:29', '2016-06-12 03:46:29', '', 0, 'http://localhost/wptestsite/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-06-11 12:11:07', '2016-06-11 12:11:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-06-11 12:11:07', '2016-06-11 12:11:07', '', 11, 'http://localhost/wptestsite/2016/06/11/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-06-11 12:11:35', '2016-06-11 12:11:35', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-06-11 12:11:35', '2016-06-11 12:11:35', '', 0, 'http://localhost/wptestsite/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-06-11 12:11:35', '2016-06-11 12:11:35', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-06-11 12:11:35', '2016-06-11 12:11:35', '', 13, 'http://localhost/wptestsite/2016/06/11/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-06-11 18:48:27', '2016-06-11 18:48:27', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\r\n[button text="Click Here" link="http://localhost/wptestsite/products/" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/9413639d-e993-4843-9a1a-18896d9217b6.jpg" height="400px" text_color="light" text_align="right" text_pos="right center" text_width="40%" text_bg="" parallax_text="0" parallax="0" animate="fadeInLeft" effect=""]\r\n<h3>Just Look Around.......</h3>\r\n<h4 class="thin-font">you see many different things</h4>\r\n[button text="Who We   Are" link="http://localhost/wptestsite/about-us/" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'publish', 'closed', 'closed', '', 'homepage-slider', '', '', '2016-06-13 23:02:13', '2016-06-13 23:02:13', '', 0, 'http://localhost/wptestsite/?post_type=blocks&#038;p=16', 0, 'blocks', '', 0),
(17, 1, '2016-06-11 18:48:27', '2016-06-11 18:48:27', '', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-11 18:48:27', '2016-06-11 18:48:27', '', 16, 'http://localhost/wptestsite/2016/06/11/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-06-13 23:02:10', '2016-06-13 23:02:10', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\n<h2 style="color: crimson;">Shop Here</h2>\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\n[button text="Click Here" link="http://localhost/wptestsite/products/" size="medium" style=""]\n\n[/ux_banner][ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/9413639d-e993-4843-9a1a-18896d9217b6.jpg" height="400px" text_color="light" text_align="right" text_pos="right center" text_width="40%" text_bg="" parallax_text="0" parallax="0" animate="fadeInLeft" effect=""]\n<h3>Just Look Around.......</h3>\n<h4 class="thin-font">you see many different things</h4>\n[button text="Who We   Are" link="http://localhost/wptestsite/about-us/" size="medium" style=""]\n\n[/ux_banner]\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-autosave-v1', '', '', '2016-06-13 23:02:10', '2016-06-13 23:02:10', '', 16, 'http://localhost/wptestsite/2016/06/11/16-autosave-v1/', 0, 'revision', '', 0),
(20, 1, '2016-06-11 18:52:51', '2016-06-11 18:52:51', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Happy-Birthday-Wallpapers-11.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="rain"]\r\n<h2>Shop Here</h2>\r\n<h4 class="thin-font">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n[button text="Click Here" link="#" size="medium" style="alt-button"]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-11 18:52:51', '2016-06-11 18:52:51', '', 16, 'http://localhost/wptestsite/2016/06/11/16-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-06-11 18:53:28', '2016-06-11 18:53:28', '<b>[block id="homepage-slider"]</b>', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-06-11 18:53:28', '2016-06-11 18:53:28', '', 11, 'http://localhost/wptestsite/2016/06/11/11-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-06-11 18:53:37', '2016-06-11 18:53:37', '[block id="homepage-slider"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-06-11 18:53:37', '2016-06-11 18:53:37', '', 11, 'http://localhost/wptestsite/2016/06/11/11-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-06-11 18:55:08', '2016-06-11 18:55:08', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Happy-Birthday-Wallpapers-11.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2>Shop Here</h2>\r\n<h4 class="thin-font">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n[button text="Click Here" link="#" size="medium" style="alt-button"]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-11 18:55:08', '2016-06-11 18:55:08', '', 16, 'http://localhost/wptestsite/2016/06/11/16-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-06-11 18:58:19', '2016-06-11 18:58:19', '', 'field-with-big-tree', '', 'inherit', 'open', 'closed', '', 'field-with-big-tree', '', '', '2016-06-11 18:58:19', '2016-06-11 18:58:19', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/field-with-big-tree.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2016-06-11 18:58:22', '2016-06-11 18:58:22', '', 'flower-field', '', 'inherit', 'open', 'closed', '', 'flower-field', '', '', '2016-06-11 18:58:22', '2016-06-11 18:58:22', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/flower-field.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2016-06-11 18:58:25', '2016-06-11 18:58:25', '', 'Hewlett', '', 'inherit', 'open', 'closed', '', 'hewlett', '', '', '2016-06-11 18:58:25', '2016-06-11 18:58:25', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Hewlett.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2016-06-11 18:58:35', '2016-06-11 18:58:35', '', 'img18', '', 'inherit', 'open', 'closed', '', 'img18', '', '', '2016-06-11 18:58:35', '2016-06-11 18:58:35', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/img18.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2016-06-11 18:58:42', '2016-06-11 18:58:42', '', 'Second', '', 'inherit', 'open', 'closed', '', 'second', '', '', '2016-06-11 18:58:42', '2016-06-11 18:58:42', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Second.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2016-06-11 18:58:45', '2016-06-11 18:58:45', '', 'Third', '', 'inherit', 'open', 'closed', '', 'third', '', '', '2016-06-11 18:58:45', '2016-06-11 18:58:45', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2016-06-11 18:58:51', '2016-06-11 18:58:51', '', 'Woman_In_Black', '', 'inherit', 'open', 'closed', '', 'woman_in_black', '', '', '2016-06-11 18:58:51', '2016-06-11 18:58:51', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Woman_In_Black.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2016-06-11 19:00:26', '2016-06-11 19:00:26', '', '9413639d-e993-4843-9a1a-18896d9217b6', '', 'inherit', 'open', 'closed', '', '9413639d-e993-4843-9a1a-18896d9217b6', '', '', '2016-06-11 19:00:26', '2016-06-11 19:00:26', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/9413639d-e993-4843-9a1a-18896d9217b6.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2016-06-11 19:01:23', '2016-06-11 19:01:23', '', 'romantic-wallpaper-stock-pictures-vj80pvrl', '', 'inherit', 'open', 'closed', '', 'romantic-wallpaper-stock-pictures-vj80pvrl', '', '', '2016-06-11 19:01:23', '2016-06-11 19:01:23', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/romantic-wallpaper-stock-pictures-vj80pvrl.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2016-06-11 19:02:24', '2016-06-11 19:02:24', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2>Shop Here</h2>\r\n<h4 class="thin-font">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n[button text="Click Here" link="#" size="medium" style="alt-button"]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-11 19:02:24', '2016-06-11 19:02:24', '', 16, 'http://localhost/wptestsite/2016/06/11/16-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-06-11 19:04:11', '2016-06-11 19:04:11', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2>Shop Here</h2>\r\n<h4 class="thin-font">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-11 19:04:11', '2016-06-11 19:04:11', '', 16, 'http://localhost/wptestsite/2016/06/11/16-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-06-11 19:06:54', '2016-06-11 19:06:54', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2>Shop Here</h2>\r\n<h4 class="thin-font">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Second.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInY" effect=""]\r\n<h4 class="alt-font">yeah this is the top heading</h4>\r\n___\r\n<h1>Visit here...........</h1>\r\n<h4 class="thin-font">yeah smaller message with simply</h4>\r\n[button text="button" link="#" size="medium" style="alt-button white"]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-11 19:06:54', '2016-06-11 19:06:54', '', 16, 'http://localhost/wptestsite/2016/06/11/16-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-06-12 02:35:28', '2016-06-12 02:35:28', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Second.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInY" effect=""]\r\n<h4 class="alt-font">yeah this is the top heading</h4>\r\n___\r\n<h1>Visit here...........</h1>\r\n<h4 class="thin-font">yeah smaller message with simply</h4>\r\n[button text="button" link="#" size="medium" style="alt-button white"]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-12 02:35:28', '2016-06-12 02:35:28', '', 16, 'http://localhost/wptestsite/2016/06/12/16-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-06-12 02:37:33', '2016-06-12 02:37:33', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Second.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInY" effect=""]\r\n<h4 class="alt-font" style="color: crimson;">yeah this is the top heading</h4>\r\n___\r\n<h2 style="color: crimson;">Visit here...........</h2>\r\n<h4 class="thin-font" style="color: crimson;">yeah smaller message with simply</h4>\r\n[button text="button" link="#" size="medium" style="alt-button crimson"]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-12 02:37:33', '2016-06-12 02:37:33', '', 16, 'http://localhost/wptestsite/2016/06/12/16-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-06-12 02:39:51', '2016-06-12 02:39:51', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Second.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInY" effect=""]\r\n<h4 class="alt-font" style="color: orange;">yeah this is the top heading</h4>\r\n___\r\n<h2 style="color:#386b0b ;">Visit here...........</h2>\r\n<h4 class="thin-font" style="color: #040503;">yeah smaller message with simply</h4>\r\n[button text="button" link="#" size="medium" style="alt-button crimson"]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-12 02:39:51', '2016-06-12 02:39:51', '', 16, 'http://localhost/wptestsite/2016/06/12/16-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-06-12 02:41:20', '2016-06-12 02:41:20', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Hewlett.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInY" effect=""]\r\n<h4 class="alt-font" style="color: orange;">yeah this is the top heading</h4>\r\n___\r\n<h2 style="color:#386b0b ;">Visit here...........</h2>\r\n<h4 class="thin-font" style="color: #040503;">yeah smaller message with simply</h4>\r\n[button text="button" link="#" size="medium" style="alt-button crimson"]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-12 02:41:20', '2016-06-12 02:41:20', '', 16, 'http://localhost/wptestsite/2016/06/12/16-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2016-06-12 02:42:09', '2016-06-12 02:42:09', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Hewlett.jpg" height="400px" text_color="light" text_align="left" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInY" effect=""]\r\n<h4 class="alt-font" style="color: orange;">yeah this is the top heading</h4>\r\n___\r\n<h2 style="color: #386b0b;">Visit here...........</h2>\r\n<h4 class="thin-font" style="color: #040503;">yeah smaller message with simply</h4>\r\n[button text="button" link="#" size="medium" style="alt-button crimson"]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-12 02:42:09', '2016-06-12 02:42:09', '', 16, 'http://localhost/wptestsite/2016/06/12/16-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-06-12 02:45:57', '2016-06-12 02:45:57', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Hewlett.jpg" height="400px" text_color="light" text_align="left" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInY" effect=""]\r\n<h4 class="alt-font" style="color: orange;">yeah this is the top heading</h4>\r\n___\r\n<h2 style="color: #386b0b;">Visit here...........</h2>\r\n<h4 class="thin-font" style="color: #040503;">yeah smaller message with simply</h4>\r\n[button text="button" link="#" size="medium" style="alt-button crimson"]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/9413639d-e993-4843-9a1a-18896d9217b6.jpg" height="400px" text_color="light" text_align="right" text_pos="right center" text_width="40%" text_bg="" parallax_text="0" parallax="0" animate="fadeInLeft" effect=""]\r\n<h2>Just Look Around.......</h2>\r\n<h4 class="thin-font">you see many different things</h4>\r\n[button text="button" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-12 02:45:57', '2016-06-12 02:45:57', '', 16, 'http://localhost/wptestsite/2016/06/12/16-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2016-06-12 02:47:24', '2016-06-12 02:47:24', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Hewlett.jpg" height="400px" text_color="light" text_align="left" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInY" effect=""]\r\n<h4 class="alt-font" style="color: orange;">yeah this is the top heading</h4>\r\n___\r\n<h2 style="color: #386b0b;">Visit here...........</h2>\r\n<h4 class="thin-font" style="color: #040503;">yeah smaller message with simply</h4>\r\n[button text="button" link="#" size="medium" style="alt-button crimson"]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/9413639d-e993-4843-9a1a-18896d9217b6.jpg" height="400px" text_color="light" text_align="right" text_pos="right center" text_width="40%" text_bg="" parallax_text="0" parallax="0" animate="fadeInLeft" effect=""]\r\n<h3>Just Look Around.......</h3>\r\n<h4 class="thin-font">you see many different things</h4>\r\n[button text="button" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-12 02:47:24', '2016-06-12 02:47:24', '', 16, 'http://localhost/wptestsite/2016/06/12/16-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-06-12 02:49:05', '2016-06-12 02:49:05', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\r\n[button text="Click Here" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/romantic-wallpaper-stock-pictures-vj80pvrl.jpg" height="400px" text_color="light" text_align="left" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInY" effect=""]\r\n<h4 class="alt-font" style="color: orange;">yeah this is the top heading</h4>\r\n___\r\n<h2 style="color: #386b0b;">Visit here...........</h2>\r\n<h4 class="thin-font" style="color: #040503;">yeah smaller message with simply</h4>\r\n[button text="button" link="#" size="medium" style="alt-button crimson"]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/9413639d-e993-4843-9a1a-18896d9217b6.jpg" height="400px" text_color="light" text_align="right" text_pos="right center" text_width="40%" text_bg="" parallax_text="0" parallax="0" animate="fadeInLeft" effect=""]\r\n<h3>Just Look Around.......</h3>\r\n<h4 class="thin-font">you see many different things</h4>\r\n[button text="button" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-12 02:49:05', '2016-06-12 02:49:05', '', 16, 'http://localhost/wptestsite/2016/06/12/16-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-06-12 03:05:54', '2016-06-12 03:05:54', '[row]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/french-food-image-hd.jpg" hover="zoom" height="200px"]\r\n<h3 class="uppercase">Delicious.....Right ?</h3>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/food-wallpaper-download-5-high-resolution-wallpaper.jpg" hover="zoom" height="200px"]\r\n<h3 class="uppercase">Get This Dish</h3>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[col span=1/3]\r\n[ux_banner link="http://localhost/wptestsite/products/" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34.jpg" hover="zoom" height="200px"]\r\n<h3 class="uppercase">Enter The Inside</h3>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[/row]', 'Banner row', '', 'publish', 'closed', 'closed', '', 'banner-row', '', '', '2016-06-13 23:03:52', '2016-06-13 23:03:52', '', 0, 'http://localhost/wptestsite/?post_type=blocks&#038;p=44', 0, 'blocks', '', 0),
(45, 1, '2016-06-12 03:05:54', '2016-06-12 03:05:54', '[row]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://imageurl" hover="zoom" height="160px"]\r\n<h2 class="uppercase">WHY?</h2>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://imageurl" hover="zoom" height="160px"]\r\n<h2 class="uppercase">MEET THE TEAM</h2>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://imageurl" hover="zoom" height="160px"]\r\n<h2 class="uppercase">SHOP</h2>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[/row]', 'Banner row', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-06-12 03:05:54', '2016-06-12 03:05:54', '', 44, 'http://localhost/wptestsite/2016/06/12/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-06-12 03:24:02', '2016-06-12 03:24:02', '', 'Beautiful-Birds-Happy-Family-HD-Wallpapers', '', 'inherit', 'open', 'closed', '', 'beautiful-birds-happy-family-hd-wallpapers', '', '', '2016-06-13 03:52:47', '2016-06-13 03:52:47', '', 172, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Beautiful-Birds-Happy-Family-HD-Wallpapers.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2016-06-12 03:24:04', '2016-06-12 03:24:04', '', 'Blue-Bird-Flying-Picture', '', 'inherit', 'open', 'closed', '', 'blue-bird-flying-picture', '', '', '2016-06-12 03:24:04', '2016-06-12 03:24:04', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Blue-Bird-Flying-Picture.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2016-06-12 03:24:06', '2016-06-12 03:24:06', '', 'chicken-skewers-hd-widescreen-wallpapers-', '', 'inherit', 'open', 'closed', '', 'chicken-skewers-hd-widescreen-wallpapers', '', '', '2016-06-12 03:24:06', '2016-06-12 03:24:06', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/chicken-skewers-hd-widescreen-wallpapers-.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2016-06-12 03:24:08', '2016-06-12 03:24:08', '', 'cool-fish-iphone-wallpapers-1', '', 'inherit', 'open', 'closed', '', 'cool-fish-iphone-wallpapers-1', '', '', '2016-06-12 03:24:08', '2016-06-12 03:24:08', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/cool-fish-iphone-wallpapers-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2016-06-12 03:24:11', '2016-06-12 03:24:11', '', 'food christmas christmas cookies 1600x1200 wallpaper_www.wallpaperfo.com_77', '', 'inherit', 'open', 'closed', '', 'food-christmas-christmas-cookies-1600x1200-wallpaper_www-wallpaperfo-com_77', '', '', '2016-06-12 03:24:11', '2016-06-12 03:24:11', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/food-christmas-christmas-cookies-1600x1200-wallpaper_www.wallpaperfo.com_77.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2016-06-12 03:24:12', '2016-06-12 03:24:12', '', 'food-wallpaper-download-5-high-resolution-wallpaper', '', 'inherit', 'open', 'closed', '', 'food-wallpaper-download-5-high-resolution-wallpaper', '', '', '2016-06-12 03:24:12', '2016-06-12 03:24:12', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/food-wallpaper-download-5-high-resolution-wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2016-06-12 03:24:23', '2016-06-12 03:24:23', '', 'Free_Wood_Background_Set_Preview_Small', '', 'inherit', 'open', 'closed', '', 'free_wood_background_set_preview_small', '', '', '2016-06-12 03:24:23', '2016-06-12 03:24:23', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2016-06-12 03:24:26', '2016-06-12 03:24:26', '', 'french-food-image-hd', '', 'inherit', 'open', 'closed', '', 'french-food-image-hd', '', '', '2016-06-12 03:24:26', '2016-06-12 03:24:26', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/french-food-image-hd.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2016-06-12 03:24:28', '2016-06-12 03:24:28', '', 'hd-nature-images-22', '', 'inherit', 'open', 'closed', '', 'hd-nature-images-22', '', '', '2016-06-12 03:24:28', '2016-06-12 03:24:28', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/hd-nature-images-22.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2016-06-12 03:24:31', '2016-06-12 03:24:31', '', 'Jungle_Forest_HD_Wallpaper_5', '', 'inherit', 'open', 'closed', '', 'jungle_forest_hd_wallpaper_5', '', '', '2016-06-12 03:24:31', '2016-06-12 03:24:31', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Jungle_Forest_HD_Wallpaper_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2016-06-12 03:24:34', '2016-06-12 03:24:34', '', 'nature forest 1680x1050 wallpaper_www.wallpaperfo.com_96', '', 'inherit', 'open', 'closed', '', 'nature-forest-1680x1050-wallpaper_www-wallpaperfo-com_96', '', '', '2016-06-12 03:24:34', '2016-06-12 03:24:34', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/nature-forest-1680x1050-wallpaper_www.wallpaperfo.com_96.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2016-06-12 03:24:35', '2016-06-12 03:24:35', '', 'nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631', '', 'inherit', 'open', 'closed', '', 'nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631', '', '', '2016-06-13 03:47:07', '2016-06-13 03:47:07', '', 170, 'http://localhost/wptestsite/wp-content/uploads/2016/06/nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2016-06-12 03:24:37', '2016-06-12 03:24:37', '', 'sandwiches-food-image', '', 'inherit', 'open', 'closed', '', 'sandwiches-food-image', '', '', '2016-06-12 03:24:37', '2016-06-12 03:24:37', '', 0, 'http://localhost/wptestsite/wp-content/uploads/2016/06/sandwiches-food-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2016-06-12 03:24:42', '2016-06-12 03:24:42', '', 'trees forest leaves 1920x1080 wallpaper_www.wallpaperfo.com_34', '', 'inherit', 'open', 'closed', '', 'trees-forest-leaves-1920x1080-wallpaper_www-wallpaperfo-com_34', '', '', '2016-06-13 03:45:44', '2016-06-13 03:45:44', '', 168, 'http://localhost/wptestsite/wp-content/uploads/2016/06/trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2016-06-12 03:26:05', '2016-06-12 03:26:05', '[row]\n\n[col span=1/3]\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/french-food-image-hd.jpg" hover="zoom" height="160px"]\n<h2 class="uppercase">Delicious.....Right ?</h2>\n___\n[/ux_banner]\n[/col]\n\n[col span=1/3]\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/food-wallpaper-download-5-high-resolution-wallpaper.jpg" hover="zoom" height="160px"]\n<h2 class="uppercase">MEET THE TEAM</h2>\n___\n[/ux_banner]\n[/col]\n\n[col span=1/3]\n[ux_banner link="(add link to page)" bg="http://imageurl" hover="zoom" height="160px"]\n<h2 class="uppercase">SHOP</h2>\n___\n[/ux_banner]\n[/col]\n\n[/row]', 'Banner row', '', 'inherit', 'closed', 'closed', '', '44-autosave-v1', '', '', '2016-06-12 03:26:05', '2016-06-12 03:26:05', '', 44, 'http://localhost/wptestsite/2016/06/12/44-autosave-v1/', 0, 'revision', '', 0),
(61, 1, '2016-06-12 03:26:46', '2016-06-12 03:26:46', '[row]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/french-food-image-hd.jpg" hover="zoom" height="160px"]\r\n<h2 class="uppercase">Delicious.....Right ?</h2>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/food-wallpaper-download-5-high-resolution-wallpaper.jpg" hover="zoom" height="160px"]\r\n<h2 class="uppercase">Get This Dish</h2>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34.jpg" hover="zoom" height="160px"]\r\n<h2 class="uppercase">Enter The Inside</h2>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[/row]', 'Banner row', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-06-12 03:26:46', '2016-06-12 03:26:46', '', 44, 'http://localhost/wptestsite/2016/06/12/44-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2016-06-12 03:46:24', '2016-06-12 03:46:24', '[block id="homepage-slider"]\n\n[gap height="30px"]\n<h4 style="text-align: center;">Lorem Ipsum is a dummy content....We use this..So how can wo stop this ?</h4>\n[gap height="10px"]\n\n[block id="banner-row"]\n\n[gap height="30px"]\n\n[block id="featured-products"]\n\n[gap height="30px"]\n\n<b>[block id="latest-blog-posts"]</b>', 'Home', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2016-06-12 03:46:24', '2016-06-12 03:46:24', '', 11, 'http://localhost/wptestsite/2016/06/12/11-autosave-v1/', 0, 'revision', '', 0),
(63, 1, '2016-06-12 03:29:18', '2016-06-12 03:29:18', '[block id="homepage-slider"]\r\n\r\n[gap height="30px"]\r\n<h3>Lorem Ipsum is a dummy content....We use this..So how can wo stop this ?</h3>\r\n[block id="banner-row"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-06-12 03:29:18', '2016-06-12 03:29:18', '', 11, 'http://localhost/wptestsite/2016/06/12/11-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2016-06-12 03:30:09', '2016-06-12 03:30:09', '[block id="homepage-slider"]\r\n\r\n[gap height="30px"]\r\n<h4 style="text-align: center;">Lorem Ipsum is a dummy content....We use this..So how can wo stop this ?</h4>\r\n[block id="banner-row"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-06-12 03:30:09', '2016-06-12 03:30:09', '', 11, 'http://localhost/wptestsite/2016/06/12/11-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2016-06-12 03:30:55', '2016-06-12 03:30:55', '[block id="homepage-slider"]\r\n\r\n[gap height="30px"]\r\n<h4 style="text-align: center;">Lorem Ipsum is a dummy content....We use this..So how can wo stop this ?</h4>\r\n[gap height="10px"]\r\n\r\n[block id="banner-row"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-06-12 03:30:55', '2016-06-12 03:30:55', '', 11, 'http://localhost/wptestsite/2016/06/12/11-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2016-06-12 03:31:32', '2016-06-12 03:31:32', '[row]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/french-food-image-hd.jpg" hover="zoom" height="200px"]\r\n<h2 class="uppercase">Delicious.....Right ?</h2>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/food-wallpaper-download-5-high-resolution-wallpaper.jpg" hover="zoom" height="200px"]\r\n<h2 class="uppercase">Get This Dish</h2>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34.jpg" hover="zoom" height="200px"]\r\n<h2 class="uppercase">Enter The Inside</h2>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[/row]', 'Banner row', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-06-12 03:31:32', '2016-06-12 03:31:32', '', 44, 'http://localhost/wptestsite/2016/06/12/44-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2016-06-12 03:36:03', '2016-06-12 03:36:03', '[row]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/french-food-image-hd.jpg" hover="zoom" height="200px"]\r\n<h3 class="uppercase">Delicious.....Right ?</h3>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/food-wallpaper-download-5-high-resolution-wallpaper.jpg" hover="zoom" height="200px"]\r\n<h3 class="uppercase">Get This Dish</h3>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34.jpg" hover="zoom" height="200px"]\r\n<h3 class="uppercase">Enter The Inside</h3>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[/row]', 'Banner row', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-06-12 03:36:03', '2016-06-12 03:36:03', '', 44, 'http://localhost/wptestsite/2016/06/12/44-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2016-06-12 03:38:13', '2016-06-12 03:38:13', '[title text="Featured Products" style="center"]\r\n[ux_featured_products]', 'Featured Products', '', 'publish', 'closed', 'closed', '', 'featured-products', '', '', '2016-06-12 03:40:28', '2016-06-12 03:40:28', '', 0, 'http://localhost/wptestsite/?post_type=blocks&#038;p=68', 0, 'blocks', '', 0),
(69, 1, '2016-06-12 03:38:13', '2016-06-12 03:38:13', '<pre>[title text="Featured Products" style="center"]\r\n[ux_featured_products]</pre>', 'Featured Products', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2016-06-12 03:38:13', '2016-06-12 03:38:13', '', 68, 'http://localhost/wptestsite/2016/06/12/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2016-06-12 03:38:34', '2016-06-12 03:38:34', '[block id="homepage-slider"]\r\n\r\n[gap height="30px"]\r\n<h4 style="text-align: center;">Lorem Ipsum is a dummy content....We use this..So how can wo stop this ?</h4>\r\n[gap height="10px"]\r\n\r\n[block id="banner-row"]\r\n\r\n[gap height="30px"]\r\n\r\n<b>[block id="featured-products"]</b>', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-06-12 03:38:34', '2016-06-12 03:38:34', '', 11, 'http://localhost/wptestsite/2016/06/12/11-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2016-06-12 03:38:58', '2016-06-12 03:38:58', '[block id="homepage-slider"]\r\n\r\n[gap height="30px"]\r\n<h4 style="text-align: center;">Lorem Ipsum is a dummy content....We use this..So how can wo stop this ?</h4>\r\n[gap height="10px"]\r\n\r\n[block id="banner-row"]\r\n\r\n[gap height="30px"]\r\n\r\n[block id="featured-products"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-06-12 03:38:58', '2016-06-12 03:38:58', '', 11, 'http://localhost/wptestsite/2016/06/12/11-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2016-06-12 03:40:28', '2016-06-12 03:40:28', '[title text="Featured Products" style="center"]\r\n[ux_featured_products]', 'Featured Products', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2016-06-12 03:40:28', '2016-06-12 03:40:28', '', 68, 'http://localhost/wptestsite/2016/06/12/68-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2016-06-12 03:46:01', '2016-06-12 03:46:01', '[title text="DELICIOUS IDEAS " style="center"]\r\n[blog_posts posts="3" type="grid" columns="3" image_height="200px" show_date="true"]', 'latest blog posts', '', 'publish', 'closed', 'closed', '', 'latest-blog-posts', '', '', '2016-06-12 03:46:01', '2016-06-12 03:46:01', '', 0, 'http://localhost/wptestsite/?post_type=blocks&#038;p=73', 0, 'blocks', '', 0),
(74, 1, '2016-06-12 03:46:01', '2016-06-12 03:46:01', '[title text="DELICIOUS IDEAS " style="center"]\r\n[blog_posts posts="3" type="grid" columns="3" image_height="200px" show_date="true"]', 'latest blog posts', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2016-06-12 03:46:01', '2016-06-12 03:46:01', '', 73, 'http://localhost/wptestsite/2016/06/12/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2016-06-12 03:46:29', '2016-06-12 03:46:29', '[block id="homepage-slider"]\r\n\r\n[gap height="30px"]\r\n<h4 style="text-align: center;">Lorem Ipsum is a dummy content....We use this..So how can wo stop this ?</h4>\r\n[gap height="10px"]\r\n\r\n[block id="banner-row"]\r\n\r\n[gap height="30px"]\r\n\r\n[block id="featured-products"]\r\n\r\n[gap height="30px"]\r\n\r\n[block id="latest-blog-posts"]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-06-12 03:46:29', '2016-06-12 03:46:29', '', 11, 'http://localhost/wptestsite/2016/06/12/11-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2016-06-12 04:59:10', '2016-06-12 04:59:10', '&nbsp;\r\n\r\n[row ]\r\n\r\n[col span="1/2" ]\r\n\r\nNutritional Description\r\n\r\n[divider].\r\n\r\nCalories: 246\r\n\r\nFat: 2g\r\n\r\nCholesterol: 0.0mg\r\n\r\nSodium: 234mg\r\n\r\nCarbohydrate: 58gm\r\n\r\nProtien: 9g\r\n\r\nVitamin A: 509%\r\n\r\nCalcium: 43%\r\n\r\nVitamin C: 334%\r\n\r\nIron: 27%\r\n\r\n[/col]\r\n[col span="1/2" ]\r\n\r\nProduct Details\r\n[divider]\r\n\r\nFoods\r\n\r\nAll Organic\r\n\r\nGift Wrapping Available\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Sweet Velvet', 'Green,Fluffy,Chocolate,Filling,Minty,Cream,Smooth\r\n\r\nSimply the best\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 'sweet-velvet', '', '', '2016-06-12 05:49:54', '2016-06-12 05:49:54', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=76', 0, 'product', '', 0),
(77, 1, '2016-06-12 04:50:01', '2016-06-12 04:50:01', '', '250px-United_Nations_Human_Rights_Council_Logo.svg', '', 'inherit', 'open', 'closed', '', '250px-united_nations_human_rights_council_logo-svg', '', '', '2016-06-12 04:50:01', '2016-06-12 04:50:01', '', 76, 'http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2016-06-12 04:53:10', '2016-06-12 04:53:10', '', '764230371best-red-velvet-cupcake', '', 'inherit', 'open', 'closed', '', '764230371best-red-velvet-cupcake', '', '', '2016-06-12 04:53:10', '2016-06-12 04:53:10', '', 76, 'http://localhost/wptestsite/wp-content/uploads/2016/06/764230371best-red-velvet-cupcake.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2016-06-12 04:53:25', '2016-06-12 04:53:25', '', 'redvelvet05', '', 'inherit', 'open', 'closed', '', 'redvelvet05', '', '', '2016-06-12 04:53:25', '2016-06-12 04:53:25', '', 76, 'http://localhost/wptestsite/wp-content/uploads/2016/06/redvelvet05.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2016-06-12 04:53:39', '2016-06-12 04:53:39', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2016-06-12 04:53:39', '2016-06-12 04:53:39', '', 76, 'http://localhost/wptestsite/wp-content/uploads/2016/06/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2016-06-12 05:39:25', '2016-06-12 05:39:25', '&nbsp;\n\n[row ]\n\n[col span="1/2" ]\nInsert content here...\n\n[/col]\n[col span="1/2" ]\nInsert content here...\n\n[/col]\n\n[/row]\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n[row ]\n\n[col span="1/2" ]\nNutritional Description\n\n[divider].\n\nCalories: 246\n\nFat: 2g\n\nCholesterol: 0.0mg\n\nSodium: 234mg\n\nCarbohydrate: 58gm\n\nProtien: 9g\n\nVitamin A: 509%\n\nCalcium: 43%\n\nVitamin C: 334%\n\nIron: 27%\n\n[/col]\n[col span="1/2" ]\nProduct Details\n[divider]\n\nFoods\n\nAll Organic\n\nGift Wrapping Available\n[/col]\n\n[/row]', 'Sweet Velvet', 'Green,Fluffy,Chocolate,Filling,Minty,Cream,Smooth\n\nSimply the best\n\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\n\nIn Stock', 'inherit', 'closed', 'closed', '', '76-autosave-v1', '', '', '2016-06-12 05:39:25', '2016-06-12 05:39:25', '', 76, 'http://localhost/wptestsite/2016/06/12/76-autosave-v1/', 0, 'revision', '', 0),
(82, 1, '2016-06-12 07:20:55', '2016-06-12 07:20:55', 'Product Description:\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'Sweet Mango', 'Yammy, Fruti, Fluffy, Green, Sweet &amp; Sour\r\n\r\nSimply Product.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 'sweet-mango', '', '', '2016-06-12 07:20:55', '2016-06-12 07:20:55', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2016-06-12 07:20:21', '2016-06-12 07:20:21', '', '71442673435mangoes', '', 'inherit', 'open', 'closed', '', '71442673435mangoes', '', '', '2016-06-12 07:20:21', '2016-06-12 07:20:21', '', 82, 'http://localhost/wptestsite/wp-content/uploads/2016/06/71442673435mangoes.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `woo1posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(84, 1, '2016-06-12 07:20:41', '2016-06-12 07:20:41', '', 'Mangifera+indica+-+Mango+Tree+12', '', 'inherit', 'open', 'closed', '', 'mangiferaindica-mangotree12', '', '', '2016-06-12 07:20:41', '2016-06-12 07:20:41', '', 82, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Mangiferaindica-MangoTree12.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2016-06-12 07:20:42', '2016-06-12 07:20:42', '', 'mango-09', '', 'inherit', 'open', 'closed', '', 'mango-09', '', '', '2016-06-12 07:20:42', '2016-06-12 07:20:42', '', 82, 'http://localhost/wptestsite/wp-content/uploads/2016/06/mango-09.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2016-06-12 07:25:17', '2016-06-12 07:25:17', 'Product Description:\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'Sweet Litchi', 'Yammy, Fruti, Fluffy, Green, Sweet &amp; Sour\r\n\r\nSimply Product.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 'sweet-litchi', '', '', '2016-06-12 07:25:17', '2016-06-12 07:25:17', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 1, '2016-06-12 07:24:40', '2016-06-12 07:24:40', '', 'shutterstock_133493618-litchis-with-leaves-panorama', '', 'inherit', 'open', 'closed', '', 'shutterstock_133493618-litchis-with-leaves-panorama', '', '', '2016-06-12 07:24:40', '2016-06-12 07:24:40', '', 86, 'http://localhost/wptestsite/wp-content/uploads/2016/06/shutterstock_133493618-litchis-with-leaves-panorama.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2016-06-12 07:25:11', '2016-06-12 07:25:11', '', 'Litchi', '', 'inherit', 'open', 'closed', '', 'litchi', '', '', '2016-06-12 07:25:11', '2016-06-12 07:25:11', '', 86, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Litchi.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2016-06-12 07:28:42', '2016-06-12 07:28:42', 'Product Description :\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'Sweet Guava', 'Yammy, Fruti, Fluffy, Green, Sweet &amp; Sour\r\n\r\nSimply Product.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 'sweet-guava', '', '', '2016-06-12 07:28:42', '2016-06-12 07:28:42', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=89', 0, 'product', '', 0),
(90, 1, '2016-06-12 07:27:44', '2016-06-12 07:27:44', '', 'guava1', '', 'inherit', 'open', 'closed', '', 'guava1', '', '', '2016-06-12 07:27:44', '2016-06-12 07:27:44', '', 89, 'http://localhost/wptestsite/wp-content/uploads/2016/06/guava1.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2016-06-12 07:28:24', '2016-06-12 07:28:24', '', 'Guava2', '', 'inherit', 'open', 'closed', '', 'guava2', '', '', '2016-06-12 07:28:24', '2016-06-12 07:28:24', '', 89, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Guava2.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2016-06-12 07:28:36', '2016-06-12 07:28:36', '', '71442854747guavas', '', 'inherit', 'open', 'closed', '', '71442854747guavas', '', '', '2016-06-12 07:28:36', '2016-06-12 07:28:36', '', 89, 'http://localhost/wptestsite/wp-content/uploads/2016/06/71442854747guavas.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2016-06-12 07:30:23', '2016-06-12 07:30:23', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-06-12 07:30:23', '2016-06-12 07:30:23', '', 0, 'http://localhost/wptestsite/shop/', 0, 'page', '', 0),
(94, 1, '2016-06-12 07:30:24', '2016-06-12 07:30:24', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-06-12 07:30:24', '2016-06-12 07:30:24', '', 0, 'http://localhost/wptestsite/cart/', 0, 'page', '', 0),
(95, 1, '2016-06-12 07:30:24', '2016-06-12 07:30:24', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-06-12 07:30:24', '2016-06-12 07:30:24', '', 0, 'http://localhost/wptestsite/checkout/', 0, 'page', '', 0),
(96, 1, '2016-06-12 07:30:24', '2016-06-12 07:30:24', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-06-12 07:30:24', '2016-06-12 07:30:24', '', 0, 'http://localhost/wptestsite/my-account/', 0, 'page', '', 0),
(99, 1, '2016-06-12 07:35:40', '2016-06-12 07:35:40', 'Product Description:\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'Sweet Apple', 'Yammy, Fruti, Fluffy, Green, Sweet &amp; Sour\r\n\r\nSimply Product.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 'sweet-apple', '', '', '2016-06-12 07:35:40', '2016-06-12 07:35:40', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=99', 0, 'product', '', 0),
(100, 1, '2016-06-12 07:35:11', '2016-06-12 07:35:11', '', 'apple', '', 'inherit', 'open', 'closed', '', 'apple', '', '', '2016-06-12 07:35:11', '2016-06-12 07:35:11', '', 99, 'http://localhost/wptestsite/wp-content/uploads/2016/06/apple.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2016-06-12 07:35:31', '2016-06-12 07:35:31', '', 'apple-08', '', 'inherit', 'open', 'closed', '', 'apple-08', '', '', '2016-06-12 07:35:31', '2016-06-12 07:35:31', '', 99, 'http://localhost/wptestsite/wp-content/uploads/2016/06/apple-08.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2016-06-12 07:35:33', '2016-06-12 07:35:33', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2016-06-12 07:35:33', '2016-06-12 07:35:33', '', 99, 'http://localhost/wptestsite/wp-content/uploads/2016/06/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2016-06-12 07:39:41', '2016-06-12 07:39:41', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'Sweet Lime', 'Yammy, Fruti, Fluffy, Green, Sweet &amp; Sour\r\n\r\nSimply Product.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 'sweet-lime', '', '', '2016-06-12 07:39:41', '2016-06-12 07:39:41', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=103', 0, 'product', '', 0),
(104, 1, '2016-06-12 07:38:43', '2016-06-12 07:38:43', '', '20130310limes', '', 'inherit', 'open', 'closed', '', '20130310limes', '', '', '2016-06-12 07:38:43', '2016-06-12 07:38:43', '', 103, 'http://localhost/wptestsite/wp-content/uploads/2016/06/20130310limes.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2016-06-12 07:38:59', '2016-06-12 07:38:59', '', 'giant-lime-1323144', '', 'inherit', 'open', 'closed', '', 'giant-lime-1323144', '', '', '2016-06-12 07:38:59', '2016-06-12 07:38:59', '', 103, 'http://localhost/wptestsite/wp-content/uploads/2016/06/giant-lime-1323144.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2016-06-12 07:39:00', '2016-06-12 07:39:00', '', 'homeLime', '', 'inherit', 'open', 'closed', '', 'homelime', '', '', '2016-06-12 07:39:00', '2016-06-12 07:39:00', '', 103, 'http://localhost/wptestsite/wp-content/uploads/2016/06/homeLime.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2016-06-12 07:43:01', '2016-06-12 07:43:01', 'Product Description:\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'Sweet Grape', 'Yammy, Fruti, Fluffy, Green, Sweet &amp; Sour\r\n\r\nSimply Product.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 'sweet-grape', '', '', '2016-06-12 07:43:01', '2016-06-12 07:43:01', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=107', 0, 'product', '', 0),
(108, 1, '2016-06-12 07:42:27', '2016-06-12 07:42:27', '', 'grape-tree', '', 'inherit', 'open', 'closed', '', 'grape-tree', '', '', '2016-06-12 07:42:27', '2016-06-12 07:42:27', '', 107, 'http://localhost/wptestsite/wp-content/uploads/2016/06/grape-tree.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2016-06-12 07:42:48', '2016-06-12 07:42:48', '', '20130310limes', '', 'inherit', 'open', 'closed', '', '20130310limes-2', '', '', '2016-06-12 07:42:48', '2016-06-12 07:42:48', '', 107, 'http://localhost/wptestsite/wp-content/uploads/2016/06/20130310limes-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2016-06-12 07:42:50', '2016-06-12 07:42:50', '', 'grapes-images-14', '', 'inherit', 'open', 'closed', '', 'grapes-images-14', '', '', '2016-06-12 07:42:50', '2016-06-12 07:42:50', '', 107, 'http://localhost/wptestsite/wp-content/uploads/2016/06/grapes-images-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2016-06-12 07:42:53', '2016-06-12 07:42:53', '', 'Table_grapes_on_white', '', 'inherit', 'open', 'closed', '', 'table_grapes_on_white', '', '', '2016-06-12 07:42:53', '2016-06-12 07:42:53', '', 107, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Table_grapes_on_white.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2016-06-12 07:46:42', '2016-06-12 07:46:42', 'Product Description:\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'Sweet Strawberry', 'Yammy, Fruti, Fluffy, Green, Sweet &amp; Sour\r\n\r\nSimply Product.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 'sweet-strawberry', '', '', '2016-06-12 07:49:14', '2016-06-12 07:49:14', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=112', 0, 'product', '', 0),
(113, 1, '2016-06-12 07:46:02', '2016-06-12 07:46:02', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2016-06-12 07:46:02', '2016-06-12 07:46:02', '', 112, 'http://localhost/wptestsite/wp-content/uploads/2016/06/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2016-06-12 07:46:27', '2016-06-12 07:46:27', '', 'apple', '', 'inherit', 'open', 'closed', '', 'apple-2', '', '', '2016-06-12 07:46:27', '2016-06-12 07:46:27', '', 112, 'http://localhost/wptestsite/wp-content/uploads/2016/06/apple-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2016-06-12 07:46:32', '2016-06-12 07:46:32', '', 'strawberry_PNG89', '', 'inherit', 'open', 'closed', '', 'strawberry_png89', '', '', '2016-06-12 07:46:32', '2016-06-12 07:46:32', '', 112, 'http://localhost/wptestsite/wp-content/uploads/2016/06/strawberry_PNG89.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2016-06-12 07:46:34', '2016-06-12 07:46:34', '', 'Strawberry1', '', 'inherit', 'open', 'closed', '', 'strawberry1', '', '', '2016-06-12 07:46:34', '2016-06-12 07:46:34', '', 112, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Strawberry1.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2016-06-12 12:53:04', '2016-06-12 12:53:04', 'Product Description:\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'T-Shirt', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in.\r\n\r\nSimply Best.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 't-shirt', '', '', '2016-06-12 13:11:34', '2016-06-12 13:11:34', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=117', 0, 'product', '', 0),
(128, 1, '2016-06-12 12:51:57', '2016-06-12 12:51:57', '', '48858d5d6eaf1f623808a6a2a04fa5d5', '', 'inherit', 'open', 'closed', '', '48858d5d6eaf1f623808a6a2a04fa5d5', '', '', '2016-06-12 12:51:57', '2016-06-12 12:51:57', '', 117, 'http://localhost/wptestsite/wp-content/uploads/2016/06/48858d5d6eaf1f623808a6a2a04fa5d5.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2016-06-12 12:52:48', '2016-06-12 12:52:48', '', '15013', '', 'inherit', 'open', 'closed', '', '15013', '', '', '2016-06-12 12:52:48', '2016-06-12 12:52:48', '', 117, 'http://localhost/wptestsite/wp-content/uploads/2016/06/15013.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2016-06-12 12:52:51', '2016-06-12 12:52:51', '', '45197503_xxl', '', 'inherit', 'open', 'closed', '', '45197503_xxl', '', '', '2016-06-12 12:52:51', '2016-06-12 12:52:51', '', 117, 'http://localhost/wptestsite/wp-content/uploads/2016/06/45197503_xxl.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2016-06-12 12:52:54', '2016-06-12 12:52:54', '', 'green-t-shirt', '', 'inherit', 'open', 'closed', '', 'green-t-shirt', '', '', '2016-06-12 12:52:54', '2016-06-12 12:52:54', '', 117, 'http://localhost/wptestsite/wp-content/uploads/2016/06/green-t-shirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2016-06-12 12:52:56', '2016-06-12 12:52:56', '', 'images (2)', '', 'inherit', 'open', 'closed', '', 'images-2', '', '', '2016-06-12 12:52:56', '2016-06-12 12:52:56', '', 117, 'http://localhost/wptestsite/wp-content/uploads/2016/06/images-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2016-06-12 13:08:14', '2016-06-12 13:08:14', '', 'Variation #137 of T-Shirt', '', 'publish', 'closed', 'closed', '', 'product-117-variation', '', '', '2016-06-12 13:09:27', '2016-06-12 13:09:27', '', 117, 'http://localhost/wptestsite/product_variation/product-117-variation/', 0, 'product_variation', '', 0),
(138, 1, '2016-06-12 13:08:14', '2016-06-12 13:08:14', '', 'Variation #138 of T-Shirt', '', 'publish', 'closed', 'closed', '', 'product-117-variation-2', '', '', '2016-06-12 13:09:26', '2016-06-12 13:09:26', '', 117, 'http://localhost/wptestsite/product_variation/product-117-variation-2/', 0, 'product_variation', '', 0),
(139, 1, '2016-06-12 13:08:15', '2016-06-12 13:08:15', '', 'Variation #139 of T-Shirt', '', 'publish', 'closed', 'closed', '', 'product-117-variation-3', '', '', '2016-06-12 13:11:32', '2016-06-12 13:11:32', '', 117, 'http://localhost/wptestsite/product_variation/product-117-variation-3/', 0, 'product_variation', '', 0),
(141, 1, '2016-06-13 01:23:49', '2016-06-13 01:23:49', 'Product Description:\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'Shamsu Watch', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book\r\n\r\nJust Simply Product.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 'shamsu-watch', '', '', '2016-06-13 01:23:49', '2016-06-13 01:23:49', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=141', 0, 'product', '', 0),
(142, 1, '2016-06-13 01:23:32', '2016-06-13 01:23:32', '', 'watch-hermes-201603', '', 'inherit', 'open', 'closed', '', 'watch-hermes-201603', '', '', '2016-06-13 01:23:32', '2016-06-13 01:23:32', '', 141, 'http://localhost/wptestsite/wp-content/uploads/2016/06/watch-hermes-201603.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2016-06-13 01:26:44', '2016-06-13 01:26:44', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Tufan Watch', 'Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book\r\n\r\nJust Simply Product.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 'tufan-watch', '', '', '2016-06-13 01:34:45', '2016-06-13 01:34:45', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=143', 0, 'product', '', 0),
(144, 1, '2016-06-13 01:26:31', '2016-06-13 01:26:31', '', 'SDL478833219_1-930ba', '', 'inherit', 'open', 'closed', '', 'sdl478833219_1-930ba', '', '', '2016-06-13 01:26:31', '2016-06-13 01:26:31', '', 143, 'http://localhost/wptestsite/wp-content/uploads/2016/06/SDL478833219_1-930ba.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2016-06-13 02:32:32', '2016-06-13 02:32:32', 'Product Name:\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Shortcut Watch', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n\r\nJust Simple Product.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock.', 'publish', 'open', 'closed', '', 'shortcut-watch', '', '', '2016-06-13 02:32:32', '2016-06-13 02:32:32', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=145', 0, 'product', '', 0),
(146, 1, '2016-06-13 02:31:12', '2016-06-13 02:31:12', '', 'images (5)', '', 'inherit', 'open', 'closed', '', 'images-5', '', '', '2016-06-13 02:31:12', '2016-06-13 02:31:12', '', 145, 'http://localhost/wptestsite/wp-content/uploads/2016/06/images-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2016-06-13 02:35:37', '2016-06-13 02:35:37', 'Product Description:\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged', 'Mofiz Watch', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n\r\nSimply in best.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 'mofiz-watch', '', '', '2016-06-13 02:35:37', '2016-06-13 02:35:37', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=147', 0, 'product', '', 0),
(148, 1, '2016-06-13 02:35:30', '2016-06-13 02:35:30', '', 'images (6)', '', 'inherit', 'open', 'closed', '', 'images-6', '', '', '2016-06-13 02:35:30', '2016-06-13 02:35:30', '', 147, 'http://localhost/wptestsite/wp-content/uploads/2016/06/images-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2016-06-13 02:40:00', '2016-06-13 02:40:00', 'Product Description:\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged', 'Superman Shoe', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n\r\nSimply In best.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock.', 'publish', 'open', 'closed', '', 'superman-shoe', '', '', '2016-06-13 02:40:00', '2016-06-13 02:40:00', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=149', 0, 'product', '', 0),
(150, 1, '2016-06-13 02:39:52', '2016-06-13 02:39:52', '', 'shoo-ss09-1', '', 'inherit', 'open', 'closed', '', 'shoo-ss09-1', '', '', '2016-06-13 02:39:52', '2016-06-13 02:39:52', '', 149, 'http://localhost/wptestsite/wp-content/uploads/2016/06/shoo-ss09-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2016-06-13 02:52:38', '2016-06-13 02:52:38', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged', 'Le Halua Pant', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n\r\nSimply the best.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock.', 'publish', 'open', 'closed', '', 'le-halua-pant', '', '', '2016-06-13 02:52:38', '2016-06-13 02:52:38', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=151', 0, 'product', '', 0),
(152, 1, '2016-06-13 02:52:11', '2016-06-13 02:52:11', '', '92204_BRN', '', 'inherit', 'open', 'closed', '', '92204_brn', '', '', '2016-06-13 02:52:11', '2016-06-13 02:52:11', '', 151, 'http://localhost/wptestsite/wp-content/uploads/2016/06/92204_BRN.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2016-06-13 02:52:26', '2016-06-13 02:52:26', '', '55185_FGE', '', 'inherit', 'open', 'closed', '', '55185_fge', '', '', '2016-06-13 02:52:26', '2016-06-13 02:52:26', '', 151, 'http://localhost/wptestsite/wp-content/uploads/2016/06/55185_FGE.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2016-06-13 02:56:41', '2016-06-13 02:56:41', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged', 'Ponting Caps', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n\r\nSimply in best.\r\n\r\n<img class="alignnone size-full wp-image-77" src="http://localhost/wptestsite/wp-content/uploads/2016/06/250px-United_Nations_Human_Rights_Council_Logo.svg.png" alt="250px-United_Nations_Human_Rights_Council_Logo.svg" width="130" height="130" />\r\n\r\nIn Stock', 'publish', 'open', 'closed', '', 'ponting-caps', '', '', '2016-06-13 02:56:54', '2016-06-13 02:56:54', '', 0, 'http://localhost/wptestsite/?post_type=product&#038;p=154', 0, 'product', '', 0),
(155, 1, '2016-06-13 02:56:30', '2016-06-13 02:56:30', '', 'images (4)', '', 'inherit', 'open', 'closed', '', 'images-4', '', '', '2016-06-13 02:56:30', '2016-06-13 02:56:30', '', 154, 'http://localhost/wptestsite/wp-content/uploads/2016/06/images-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2016-06-13 03:10:27', '2016-06-13 03:10:27', '[title text="Foods" style="center"]\r\n[products ids="107,103,99,89,112,86,82,76" columns="5"]\r\n[title text="Shopes" style="center"]\r\n[products ids="117,149,151,154" columns="4"]\r\n[title text="Watches &amp; Sunglasses" style="center"]\r\n[products ids="141,143,145,147" columns="4"]', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2016-06-13 03:34:19', '2016-06-13 03:34:19', '', 0, 'http://localhost/wptestsite/?page_id=156', 0, 'page', '', 0),
(157, 1, '2016-06-13 03:10:27', '2016-06-13 03:10:27', '', 'Products', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2016-06-13 03:10:27', '2016-06-13 03:10:27', '', 156, 'http://localhost/wptestsite/2016/06/13/156-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2016-06-13 03:32:57', '2016-06-13 03:32:57', '[title text="Foods" style="center"]\n[products ids="107,103,99,89,112" columns="5"]\n[title text="Shopes" style="center"]\n[products ids="117" columns="4"]\n[title text="Watches &amp; Sunglasses" style="center"]\n[products ids="141,143,145,147" columns="4"]', 'Products', '', 'inherit', 'closed', 'closed', '', '156-autosave-v1', '', '', '2016-06-13 03:32:57', '2016-06-13 03:32:57', '', 156, 'http://localhost/wptestsite/2016/06/13/156-autosave-v1/', 0, 'revision', '', 0),
(159, 1, '2016-06-13 03:18:19', '2016-06-13 03:18:19', '<pre>[title text="Foods" style="center"]\r\n[products ids="112,107,103,99,89,86,82,76" columns="5"]\r\n[title text="Shopes" style="center"]\r\n[products ids="117" columns="4"]\r\n[title text="Watches &amp; Sunglasses" style="center"]\r\n[products ids="141,143,145,147" columns="4"]</pre>', 'Products', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2016-06-13 03:18:19', '2016-06-13 03:18:19', '', 156, 'http://localhost/wptestsite/2016/06/13/156-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2016-06-13 03:22:51', '2016-06-13 03:22:51', '<pre>[title text="Foods" style="center"]\r\n[products ids="112,107,103,99,89" columns="5"]\r\n[title text="Shopes" style="center"]\r\n[products ids="117" columns="4"]\r\n[title text="Watches &amp; Sunglasses" style="center"]\r\n[products ids="141,143,145,147" columns="4"]</pre>', 'Products', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2016-06-13 03:22:51', '2016-06-13 03:22:51', '', 156, 'http://localhost/wptestsite/2016/06/13/156-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2016-06-13 03:29:38', '2016-06-13 03:29:38', '<pre>[title text="Foods" style="center"]\r\n[products ids="1121071039989" columns="5"]\r\n[title text="Shopes" style="center"]\r\n[products ids="117" columns="4"]\r\n[title text="Watches &amp; Sunglasses" style="center"]\r\n[products ids="141,143,145,147" columns="4"]</pre>', 'Products', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2016-06-13 03:29:38', '2016-06-13 03:29:38', '', 156, 'http://localhost/wptestsite/2016/06/13/156-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2016-06-13 03:29:54', '2016-06-13 03:29:54', '<pre>[title text="Foods" style="center"]\r\n[products ids="112 1071039989" columns="5"]\r\n[title text="Shopes" style="center"]\r\n[products ids="117" columns="4"]\r\n[title text="Watches &amp; Sunglasses" style="center"]\r\n[products ids="141,143,145,147" columns="4"]</pre>', 'Products', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2016-06-13 03:29:54', '2016-06-13 03:29:54', '', 156, 'http://localhost/wptestsite/2016/06/13/156-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2016-06-13 03:30:56', '2016-06-13 03:30:56', '<pre>[products_pinterest_style products="" cat="category-slug" columns="4"][title text="Foods" style="center"]\r\n[products ids="112 1071039989" columns="5"]\r\n[title text="Shopes" style="center"]\r\n[products ids="117" columns="4"]\r\n[title text="Watches &amp; Sunglasses" style="center"]\r\n[products ids="141,143,145,147" columns="4"]</pre>', 'Products', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2016-06-13 03:30:56', '2016-06-13 03:30:56', '', 156, 'http://localhost/wptestsite/2016/06/13/156-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2016-06-13 03:31:53', '2016-06-13 03:31:53', '[title text="Foods" style="center"]\r\n[products ids="112 1071039989" columns="5"]\r\n[title text="Shopes" style="center"]\r\n[products ids="117" columns="4"]\r\n[title text="Watches & Sunglasses" style="center"]\r\n[products ids="141,143,145,147" columns="4"]', 'Products', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2016-06-13 03:31:53', '2016-06-13 03:31:53', '', 156, 'http://localhost/wptestsite/2016/06/13/156-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2016-06-13 03:33:21', '2016-06-13 03:33:21', '[title text="Foods" style="center"]\r\n[products ids="107,103,99,89,112,86,82,76" columns="5"]\r\n[title text="Shopes" style="center"]\r\n[products ids="117" columns="4"]\r\n[title text="Watches &amp; Sunglasses" style="center"]\r\n[products ids="141,143,145,147" columns="4"]', 'Products', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2016-06-13 03:33:21', '2016-06-13 03:33:21', '', 156, 'http://localhost/wptestsite/2016/06/13/156-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2016-06-13 03:34:19', '2016-06-13 03:34:19', '[title text="Foods" style="center"]\r\n[products ids="107,103,99,89,112,86,82,76" columns="5"]\r\n[title text="Shopes" style="center"]\r\n[products ids="117,149,151,154" columns="4"]\r\n[title text="Watches &amp; Sunglasses" style="center"]\r\n[products ids="141,143,145,147" columns="4"]', 'Products', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2016-06-13 03:34:19', '2016-06-13 03:34:19', '', 156, 'http://localhost/wptestsite/2016/06/13/156-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2016-06-13 03:45:52', '2016-06-13 03:45:52', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class="alignnone size-medium wp-image-59" src="http://localhost/wptestsite/wp-content/uploads/2016/06/trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34-300x169.jpg" alt="trees forest leaves 1920x1080 wallpaper_www.wallpaperfo.com_34" width="300" height="169" />\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?', '', 'publish', 'open', 'open', '', 'what-is-lorem-ipsum', '', '', '2016-06-13 03:50:43', '2016-06-13 03:50:43', '', 0, 'http://localhost/wptestsite/?p=168', 0, 'post', '', 0),
(169, 1, '2016-06-13 03:45:52', '2016-06-13 03:45:52', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<img class="alignnone size-medium wp-image-59" src="http://localhost/wptestsite/wp-content/uploads/2016/06/trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34-300x169.jpg" alt="trees forest leaves 1920x1080 wallpaper_www.wallpaperfo.com_34" width="300" height="169" />\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2016-06-13 03:45:52', '2016-06-13 03:45:52', '', 168, 'http://localhost/wptestsite/2016/06/13/168-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2016-06-13 03:47:44', '2016-06-13 03:47:44', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone size-medium wp-image-57" src="http://localhost/wptestsite/wp-content/uploads/2016/06/nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631-300x188.jpg" alt="nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631" width="300" height="188" />\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', 'Where does it come from?', '', 'publish', 'open', 'open', '', 'where-does-it-come-from', '', '', '2016-06-13 03:49:43', '2016-06-13 03:49:43', '', 0, 'http://localhost/wptestsite/?p=170', 0, 'post', '', 0),
(171, 1, '2016-06-13 03:47:44', '2016-06-13 03:47:44', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone size-medium wp-image-57" src="http://localhost/wptestsite/wp-content/uploads/2016/06/nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631-300x188.jpg" alt="nature-forest-landscape-lake-summer-sky-high-resolution-pictures-background-68631" width="300" height="188" />\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', 'Where does it come from?', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2016-06-13 03:47:44', '2016-06-13 03:47:44', '', 170, 'http://localhost/wptestsite/2016/06/13/170-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2016-06-13 03:53:07', '2016-06-13 03:53:07', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n<img class="alignnone size-medium wp-image-46" src="http://localhost/wptestsite/wp-content/uploads/2016/06/Beautiful-Birds-Happy-Family-HD-Wallpapers-300x169.jpg" alt="Beautiful-Birds-Happy-Family-HD-Wallpapers" width="300" height="169" />\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'publish', 'open', 'open', '', 'where-can-i-get-some', '', '', '2016-06-13 03:53:07', '2016-06-13 03:53:07', '', 0, 'http://localhost/wptestsite/?p=172', 0, 'post', '', 0),
(173, 1, '2016-06-13 03:53:07', '2016-06-13 03:53:07', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n<img class="alignnone size-medium wp-image-46" src="http://localhost/wptestsite/wp-content/uploads/2016/06/Beautiful-Birds-Happy-Family-HD-Wallpapers-300x169.jpg" alt="Beautiful-Birds-Happy-Family-HD-Wallpapers" width="300" height="169" />\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2016-06-13 03:53:07', '2016-06-13 03:53:07', '', 172, 'http://localhost/wptestsite/2016/06/13/172-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `woo1posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(174, 1, '2016-06-13 05:53:50', '2016-06-13 05:53:50', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n<h3>Why do we use it?</h3>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n[title text="Values" style="center"]\r\n\r\n[row ]\r\n<p style="text-align: left;">[col span="1/2" ]\r\n[featured_box title="You know about us..." img="http://localhost/wptestsite/wp-content/uploads/2016/06/R.png" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]</p>\r\n<p style="text-align: left;">[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Second Title is now i given" img="http://localhost/wptestsite/wp-content/uploads/2016/06/M.jpg" pos="center"]\r\n<span style="text-align: left;">Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>\r\n[/featured_box]</p>\r\n[/col]\r\n\r\n[/row]\r\n\r\n[row ]\r\n\r\n[col span="1/2" ]\r\n[featured_box title="Featured box title" img="http://localhost/wptestsite/wp-content/uploads/2016/06/S.png" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]\r\n\r\n[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Featured box title" img="http://localhost/wptestsite/wp-content/uploads/2016/06/N.png" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-06-13 07:06:03', '2016-06-13 07:06:03', '', 0, 'http://localhost/wptestsite/?page_id=174', 0, 'page', '', 0),
(175, 1, '2016-06-13 05:53:50', '2016-06-13 05:53:50', '', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Hewlett.jpg" height="300px" animation="flipInX"]\r\n<h2>About Us</h2>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 05:53:50', '2016-06-13 05:53:50', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2016-06-13 05:54:43', '2016-06-13 05:54:43', '', 'Free_Wood_Background_Set_Preview_Small', '', 'inherit', 'open', 'closed', '', 'free_wood_background_set_preview_small-2', '', '', '2016-06-13 05:54:43', '2016-06-13 05:54:43', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2016-06-13 05:55:07', '2016-06-13 05:55:07', '', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h2>About Us</h2>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 05:55:07', '2016-06-13 05:55:07', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2016-06-13 05:55:43', '2016-06-13 05:55:43', '', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 05:55:43', '2016-06-13 05:55:43', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2016-06-13 07:04:16', '2016-06-13 07:04:16', '[title text="what is our goal" style="center"]\n<h3>What is Lorem Ipsum?</h3>\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n<h3>Where does it come from?</h3>\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\n\n[title text="Meet The Team Members" style="center"]\n\n[row ]\n\n[col span="1/4" ]\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\n[/team_member]\n\n[/col]\n[col span="1/4" ]\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\n[/team_member]\n\n[/col]\n[col span="1/4" ]\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg"]\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\n[/team_member]\n\n[/col]\n[col span="1/4" ]\n[team_member name="Shohon" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg"]\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\n[/team_member]\n\n[/col]\n\n[/row]\n\n[title text="Values" style="center"]\n\n[row ]\n<p style="text-align: left;">[col span="1/2" ]\n[featured_box title="You know about us..." img="http://localhost/wptestsite/wp-content/uploads/2016/06/R.png" pos="center"]\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n[/featured_box]</p>\n<p style="text-align: left;">[/col]\n[col span="1/2" ]\n[featured_box title="Second Title is now i given" img="http://localhost/wptestsite/wp-content/uploads/2016/06/M.jpg" pos="center"]\n<span style="text-align: left;">Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>\n[/featured_box]</p>\n[/col]\n\n[/row]\n\n[row ]\n\n[col span="1/2" ]\n[featured_box title="Featured box title" img="http://iconurl" pos="center"]\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n[/featured_box]\n\n[/col]\n[col span="1/2" ]\n[featured_box title="Featured box title" img="http://iconurl" pos="center"]\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n[/featured_box]\n\n[/col]\n\n[/row]\n\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\n<h3>About Us</h3>\n___\n[share]\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-autosave-v1', '', '', '2016-06-13 07:04:16', '2016-06-13 07:04:16', '', 174, 'http://localhost/wptestsite/2016/06/13/174-autosave-v1/', 0, 'revision', '', 0),
(180, 1, '2016-06-13 06:05:49', '2016-06-13 06:05:49', '', 'IMG_20141220_141257', '', 'inherit', 'open', 'closed', '', 'img_20141220_141257', '', '', '2016-06-13 06:05:49', '2016-06-13 06:05:49', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/IMG_20141220_141257.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 1, '2016-06-13 06:10:58', '2016-06-13 06:10:58', '', '11713728_906882406044282_5985600076205751061_o', '', 'inherit', 'open', 'closed', '', '11713728_906882406044282_5985600076205751061_o', '', '', '2016-06-13 06:10:58', '2016-06-13 06:10:58', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/11713728_906882406044282_5985600076205751061_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2016-06-13 06:12:16', '2016-06-13 06:12:16', '', 'IMG_20150804_134607', '', 'inherit', 'open', 'closed', '', 'img_20150804_134607', '', '', '2016-06-13 06:12:16', '2016-06-13 06:12:16', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/IMG_20150804_134607.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2016-06-13 06:13:35', '2016-06-13 06:13:35', '', 'IMG_20150407_205036', '', 'inherit', 'open', 'closed', '', 'img_20150407_205036', '', '', '2016-06-13 06:13:35', '2016-06-13 06:13:35', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/IMG_20150407_205036.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2016-06-13 06:17:02', '2016-06-13 06:17:02', '<h4>Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s</h4>\r\n[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/IMG_20141220_141257.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/11713728_906882406044282_5985600076205751061_o.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/IMG_20150804_134607.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Another Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/IMG_20150407_205036.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 06:17:02', '2016-06-13 06:17:02', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2016-06-13 06:19:44', '2016-06-13 06:19:44', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/IMG_20141220_141257.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/11713728_906882406044282_5985600076205751061_o.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/IMG_20150804_134607.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Another Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/IMG_20150407_205036.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 06:19:44', '2016-06-13 06:19:44', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2016-06-13 06:25:25', '2016-06-13 06:25:25', '', 'nishi', '', 'inherit', 'open', 'closed', '', 'nishi', '', '', '2016-06-13 06:25:25', '2016-06-13 06:25:25', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2016-06-13 06:25:27', '2016-06-13 06:25:27', '', 'Rumman', '', 'inherit', 'open', 'closed', '', 'rumman', '', '', '2016-06-13 06:25:27', '2016-06-13 06:25:27', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2016-06-13 06:26:26', '2016-06-13 06:26:26', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/IMG_20150804_134607.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Another Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/IMG_20150407_205036.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 06:26:26', '2016-06-13 06:26:26', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2016-06-13 06:34:17', '2016-06-13 06:34:17', '', 'jahid', '', 'inherit', 'open', 'closed', '', 'jahid', '', '', '2016-06-13 06:34:17', '2016-06-13 06:34:17', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 1, '2016-06-13 06:34:19', '2016-06-13 06:34:19', '', 'Shohon', '', 'inherit', 'open', 'closed', '', 'shohon', '', '', '2016-06-13 06:34:19', '2016-06-13 06:34:19', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 1, '2016-06-13 06:35:00', '2016-06-13 06:35:00', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Another Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 06:35:00', '2016-06-13 06:35:00', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(192, 1, '2016-06-13 06:39:12', '2016-06-13 06:39:12', '', 'Adobe - InDesign (5)', '', 'inherit', 'open', 'closed', '', 'adobe-indesign-5', '', '', '2016-06-13 06:39:12', '2016-06-13 06:39:12', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Adobe-InDesign-5.ico', 0, 'attachment', 'image/x-icon', 0),
(193, 1, '2016-06-13 06:39:13', '2016-06-13 06:39:13', '', 'Alarm', '', 'inherit', 'open', 'closed', '', 'alarm', '', '', '2016-06-13 06:39:13', '2016-06-13 06:39:13', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Alarm.ico', 0, 'attachment', 'image/x-icon', 0),
(194, 1, '2016-06-13 06:39:14', '2016-06-13 06:39:14', '', 'Apple (2)', '', 'inherit', 'open', 'closed', '', 'apple-2-2', '', '', '2016-06-13 06:39:14', '2016-06-13 06:39:14', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Apple-2.ico', 0, 'attachment', 'image/x-icon', 0),
(195, 1, '2016-06-13 06:39:15', '2016-06-13 06:39:15', '', 'Apple Inc. (6)', '', 'inherit', 'open', 'closed', '', 'apple-inc-6', '', '', '2016-06-13 06:39:15', '2016-06-13 06:39:15', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Apple-Inc.-6.ico', 0, 'attachment', 'image/x-icon', 0),
(196, 1, '2016-06-13 06:39:16', '2016-06-13 06:39:16', '', 'Basketball (4)', '', 'inherit', 'open', 'closed', '', 'basketball-4', '', '', '2016-06-13 06:39:16', '2016-06-13 06:39:16', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Basketball-4.ico', 0, 'attachment', 'image/x-icon', 0),
(197, 1, '2016-06-13 06:39:18', '2016-06-13 06:39:18', '', 'Basketball (5)', '', 'inherit', 'open', 'closed', '', 'basketball-5', '', '', '2016-06-13 06:39:18', '2016-06-13 06:39:18', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/Basketball-5.ico', 0, 'attachment', 'image/x-icon', 0),
(198, 1, '2016-06-13 06:39:47', '2016-06-13 06:39:47', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n[title text="Values" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/2" ]\r\n[featured_box title="You know about us..." img="http://localhost/wptestsite/wp-content/uploads/2016/06/Basketball-5.ico" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]\r\n\r\n[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Second Title is now i given" img="http://iconurl" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 06:39:47', '2016-06-13 06:39:47', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `woo1posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(199, 1, '2016-06-13 06:40:28', '2016-06-13 06:40:28', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n[title text="Values" style="center"]\r\n\r\n[row ]\r\n<p style="text-align: left;">[col span="1/2" ]\r\n[featured_box title="You know about us..." img="http://localhost/wptestsite/wp-content/uploads/2016/06/Basketball-5.ico" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]</p>\r\n<p style="text-align: left;">[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Second Title is now i given" img="http://iconurl" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]</p>\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 06:40:28', '2016-06-13 06:40:28', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2016-06-13 06:42:46', '2016-06-13 06:42:46', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n[title text="Values" style="center"]\r\n\r\n[row ]\r\n<p style="text-align: left;">[col span="1/2" ]\r\n[featured_box title="You know about us..." img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]</p>\r\n<p style="text-align: left;">[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Second Title is now i given" img="http://iconurl" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]</p>\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 06:42:46', '2016-06-13 06:42:46', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2016-06-13 06:45:03', '2016-06-13 06:45:03', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n[title text="Values" style="center"]\r\n\r\n[row ]\r\n<p style="text-align: left;">[col span="1/2" ]\r\n[featured_box title="You know about us..." img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]</p>\r\n<p style="text-align: center;">[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Second Title is now i given" img="http://iconurl" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]</p>\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 06:45:03', '2016-06-13 06:45:03', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2016-06-13 06:45:53', '2016-06-13 06:45:53', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n[title text="Values" style="center"]\r\n\r\n[row ]\r\n<p style="text-align: left;">[col span="1/2" ]\r\n[featured_box title="You know about us..." img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]</p>\r\n<p style="text-align: center;">[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Second Title is now i given" img="http://iconurl" pos="center"]\r\n<span style="text-align: left;">Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>\r\n[/featured_box]</p>\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 06:45:53', '2016-06-13 06:45:53', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2016-06-13 06:50:01', '2016-06-13 06:50:01', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n[title text="Values" style="center"]\r\n\r\n[row ]\r\n<p style="text-align: left;">[col span="1/2" ]\r\n[featured_box title="You know about us..." img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]</p>\r\n<p style="text-align: left;">[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Second Title is now i given" img="http://iconurl" pos="center"]\r\n<span style="text-align: left;">Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>\r\n[/featured_box]</p>\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 06:50:01', '2016-06-13 06:50:01', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2016-06-13 07:00:48', '2016-06-13 07:00:48', '', 'M', '', 'inherit', 'open', 'closed', '', 'm', '', '', '2016-06-13 07:00:48', '2016-06-13 07:00:48', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/M.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2016-06-13 07:00:57', '2016-06-13 07:00:57', '', 'N', '', 'inherit', 'open', 'closed', '', 'n', '', '', '2016-06-13 07:00:57', '2016-06-13 07:00:57', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/N.png', 0, 'attachment', 'image/png', 0),
(206, 1, '2016-06-13 07:01:04', '2016-06-13 07:01:04', '', 'R', '', 'inherit', 'open', 'closed', '', 'r', '', '', '2016-06-13 07:01:04', '2016-06-13 07:01:04', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/R.png', 0, 'attachment', 'image/png', 0),
(207, 1, '2016-06-13 07:01:26', '2016-06-13 07:01:26', '', 'S', '', 'inherit', 'open', 'closed', '', 's', '', '', '2016-06-13 07:01:26', '2016-06-13 07:01:26', '', 174, 'http://localhost/wptestsite/wp-content/uploads/2016/06/S.png', 0, 'attachment', 'image/png', 0),
(208, 1, '2016-06-13 07:02:12', '2016-06-13 07:02:12', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n[title text="Values" style="center"]\r\n\r\n[row ]\r\n<p style="text-align: left;">[col span="1/2" ]\r\n[featured_box title="You know about us..." img="http://localhost/wptestsite/wp-content/uploads/2016/06/R.png" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]</p>\r\n<p style="text-align: left;">[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Second Title is now i given" img="http://localhost/wptestsite/wp-content/uploads/2016/06/M.jpg" pos="center"]\r\n<span style="text-align: left;">Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>\r\n[/featured_box]</p>\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 07:02:12', '2016-06-13 07:02:12', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(209, 1, '2016-06-13 07:04:54', '2016-06-13 07:04:54', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n[title text="Values" style="center"]\r\n\r\n[row ]\r\n<p style="text-align: left;">[col span="1/2" ]\r\n[featured_box title="You know about us..." img="http://localhost/wptestsite/wp-content/uploads/2016/06/R.png" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]</p>\r\n<p style="text-align: left;">[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Second Title is now i given" img="http://localhost/wptestsite/wp-content/uploads/2016/06/M.jpg" pos="center"]\r\n<span style="text-align: left;">Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>\r\n[/featured_box]</p>\r\n[/col]\r\n\r\n[/row]\r\n\r\n[row ]\r\n\r\n[col span="1/2" ]\r\n[featured_box title="Featured box title" img="http://localhost/wptestsite/wp-content/uploads/2016/06/S.png" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]\r\n\r\n[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Featured box title" img="http://localhost/wptestsite/wp-content/uploads/2016/06/N.png" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 07:04:54', '2016-06-13 07:04:54', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `woo1posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(210, 1, '2016-06-13 07:06:03', '2016-06-13 07:06:03', '[title text="what is our goal" style="center"]\r\n<h3>What is Lorem Ipsum?</h3>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n<h3>Why do we use it?</h3>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n[title text="Meet The Team Members" style="center"]\r\n\r\n[row ]\r\n\r\n[col span="1/4" ]\r\n[team_member name="Rumman" title="Author" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Rumman.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Nishi" title="Authors Best Friends" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/nishi.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Jahid" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/jahid.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n[col span="1/4" ]\r\n[team_member name="Shohon" title="Authors Room Mate" facebook="#" twitter="#" pinterest="#" img="http://localhost/wptestsite/wp-content/uploads/2016/06/Shohon.jpg"]\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n[/team_member]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n[title text="Values" style="center"]\r\n\r\n[row ]\r\n<p style="text-align: left;">[col span="1/2" ]\r\n[featured_box title="You know about us..." img="http://localhost/wptestsite/wp-content/uploads/2016/06/R.png" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]</p>\r\n<p style="text-align: left;">[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Second Title is now i given" img="http://localhost/wptestsite/wp-content/uploads/2016/06/M.jpg" pos="center"]\r\n<span style="text-align: left;">Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>\r\n[/featured_box]</p>\r\n[/col]\r\n\r\n[/row]\r\n\r\n[row ]\r\n\r\n[col span="1/2" ]\r\n[featured_box title="Featured box title" img="http://localhost/wptestsite/wp-content/uploads/2016/06/S.png" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]\r\n\r\n[/col]\r\n[col span="1/2" ]\r\n[featured_box title="Featured box title" img="http://localhost/wptestsite/wp-content/uploads/2016/06/N.png" pos="center"]\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n[/featured_box]\r\n\r\n[/col]\r\n\r\n[/row]\r\n\r\n&nbsp;', 'About Us', '[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Free_Wood_Background_Set_Preview_Small-1.jpg" height="300px" animation="flipInX"]\r\n<h3>About Us</h3>\r\n___\r\n[share]\r\n[/ux_banner]', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2016-06-13 07:06:03', '2016-06-13 07:06:03', '', 174, 'http://localhost/wptestsite/2016/06/13/174-revision-v1/', 0, 'revision', '', 0),
(211, 1, '2016-06-13 16:36:18', '2016-06-13 16:36:18', '[row ]\r\n\r\n[col span="1/2" ]\r\n<h3>Contact Information:</h3>\r\nMd. Raqibul Hasan Rumman.\r\n\r\nPosition: Author\r\n\r\nEmail: rummanyt@gmail.com\r\n\r\nPhone: +8801757571237\r\n\r\n+8801950583763\r\n<h3>Proudct Information:</h3>\r\nOpen: 6 days in a week.\r\n\r\nClosed Day: Friday.\r\n\r\nOpen Time: 9 am- 8pm\r\n\r\nDelivary Time: Between the opening time.\r\n\r\n[/col]\r\n[col span="1/2" ]\r\n[ninja_forms id=1]\r\n[/col]\r\n\r\n[/row]', 'Contact Us', '[map lat="23.55282" long="89.17536" height="400px" color="#58728a"] Jhenaidah,Shailkupa\r\n\r\nBangladesh  [/map]', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2016-06-13 16:36:18', '2016-06-13 16:36:18', '', 0, 'http://localhost/wptestsite/?page_id=211', 0, 'page', '', 0),
(212, 1, '2016-06-13 16:36:18', '2016-06-13 16:36:18', '[row ]\r\n\r\n[col span="1/2" ]\r\n<h3>Contact Information:</h3>\r\nMd. Raqibul Hasan Rumman.\r\n\r\nPosition: Author\r\n\r\nEmail: rummanyt@gmail.com\r\n\r\nPhone: +8801757571237\r\n\r\n+8801950583763\r\n<h3>Proudct Information:</h3>\r\nOpen: 6 days in a week.\r\n\r\nClosed Day: Friday.\r\n\r\nOpen Time: 9 am- 8pm\r\n\r\nDelivary Time: Between the opening time.\r\n\r\n[/col]\r\n[col span="1/2" ]\r\n[ninja_forms id=1]\r\n[/col]\r\n\r\n[/row]', 'Contact Us', '[map lat="23.55282" long="89.17536" height="400px" color="#58728a"] Jhenaidah,Shailkupa\r\n\r\nBangladesh  [/map]', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2016-06-13 16:36:18', '2016-06-13 16:36:18', '', 211, 'http://localhost/wptestsite/2016/06/13/211-revision-v1/', 0, 'revision', '', 0),
(213, 1, '2016-06-13 16:40:14', '2016-06-13 16:40:14', '<h3>What is Lorem Ipsum?</h3>\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n<h3>Why do we use it?</h3>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n<h3>Where can I get some?</h3>\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Shipping & Returns', '', 'publish', 'closed', 'closed', '', 'shipping-returns', '', '', '2016-06-13 16:40:38', '2016-06-13 16:40:38', '', 0, 'http://localhost/wptestsite/?page_id=213', 0, 'page', '', 0),
(214, 1, '2016-06-13 16:40:14', '2016-06-13 16:40:14', '<h3>What is Lorem Ipsum?</h3>\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<h3>Where does it come from?</h3>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n<h3>Why do we use it?</h3>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n<h3>Where can I get some?</h3>\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Shipping & Returns', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2016-06-13 16:40:14', '2016-06-13 16:40:14', '', 213, 'http://localhost/wptestsite/2016/06/13/213-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2016-06-13 16:41:24', '2016-06-13 16:41:24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Terms & Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2016-06-13 16:41:24', '2016-06-13 16:41:24', '', 0, 'http://localhost/wptestsite/?page_id=216', 0, 'page', '', 0),
(217, 1, '2016-06-13 16:41:24', '2016-06-13 16:41:24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Terms & Conditions', '', 'inherit', 'closed', 'closed', '', '216-revision-v1', '', '', '2016-06-13 16:41:24', '2016-06-13 16:41:24', '', 216, 'http://localhost/wptestsite/2016/06/13/216-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2016-06-13 16:42:06', '2016-06-13 16:42:06', '<p style="text-align: left;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2016-06-13 16:42:06', '2016-06-13 16:42:06', '', 0, 'http://localhost/wptestsite/?page_id=218', 0, 'page', '', 0),
(219, 1, '2016-06-13 16:42:06', '2016-06-13 16:42:06', '<p style="text-align: left;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '218-revision-v1', '', '', '2016-06-13 16:42:06', '2016-06-13 16:42:06', '', 218, 'http://localhost/wptestsite/2016/06/13/218-revision-v1/', 0, 'revision', '', 0),
(220, 1, '2016-06-13 21:33:04', '2016-06-13 21:33:04', ' ', '', '', 'publish', 'closed', 'closed', '', '220', '', '', '2016-06-13 21:40:35', '2016-06-13 21:40:35', '', 0, 'http://localhost/wptestsite/?p=220', 20, 'nav_menu_item', '', 0),
(221, 1, '2016-06-13 21:33:04', '2016-06-13 21:33:04', '', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story', '', '', '2016-06-13 21:40:35', '2016-06-13 21:40:35', '', 0, 'http://localhost/wptestsite/?p=221', 19, 'nav_menu_item', '', 0),
(222, 1, '2016-06-13 21:33:02', '2016-06-13 21:33:02', ' ', '', '', 'publish', 'closed', 'closed', '', '222', '', '', '2016-06-13 21:40:30', '2016-06-13 21:40:30', '', 0, 'http://localhost/wptestsite/?p=222', 2, 'nav_menu_item', '', 0),
(223, 1, '2016-06-13 21:33:03', '2016-06-13 21:33:03', '', 'Super  Ideas', '', 'publish', 'closed', 'closed', '', 'super-ideas', '', '', '2016-06-13 21:40:35', '2016-06-13 21:40:35', '', 0, 'http://localhost/wptestsite/?p=223', 18, 'nav_menu_item', '', 0),
(224, 1, '2016-06-13 21:33:02', '2016-06-13 21:33:02', ' ', '', '', 'publish', 'closed', 'closed', '', '224', '', '', '2016-06-13 21:40:30', '2016-06-13 21:40:30', '', 0, 'http://localhost/wptestsite/?p=224', 1, 'nav_menu_item', '', 0),
(225, 1, '2016-06-13 21:40:30', '2016-06-13 21:40:30', '', 'Foods', '', 'publish', 'closed', 'closed', '', 'foods', '', '', '2016-06-13 21:40:30', '2016-06-13 21:40:30', '', 0, 'http://localhost/wptestsite/?p=225', 3, 'nav_menu_item', '', 0),
(226, 1, '2016-06-13 21:40:30', '2016-06-13 21:40:30', '', 'Apples', '', 'publish', 'closed', 'closed', '', 'apples', '', '', '2016-06-13 21:40:30', '2016-06-13 21:40:30', '', 0, 'http://localhost/wptestsite/?p=226', 4, 'nav_menu_item', '', 0),
(227, 1, '2016-06-13 21:40:31', '2016-06-13 21:40:31', '', 'Grapes', '', 'publish', 'closed', 'closed', '', 'grapes', '', '', '2016-06-13 21:40:31', '2016-06-13 21:40:31', '', 0, 'http://localhost/wptestsite/?p=227', 6, 'nav_menu_item', '', 0),
(228, 1, '2016-06-13 21:40:31', '2016-06-13 21:40:31', '', 'Guavas', '', 'publish', 'closed', 'closed', '', 'guavas', '', '', '2016-06-13 21:40:31', '2016-06-13 21:40:31', '', 0, 'http://localhost/wptestsite/?p=228', 7, 'nav_menu_item', '', 0),
(229, 1, '2016-06-13 21:40:32', '2016-06-13 21:40:32', '', 'Limes', '', 'publish', 'closed', 'closed', '', 'limes', '', '', '2016-06-13 21:40:32', '2016-06-13 21:40:32', '', 0, 'http://localhost/wptestsite/?p=229', 8, 'nav_menu_item', '', 0),
(230, 1, '2016-06-13 21:40:33', '2016-06-13 21:40:33', '', 'Litchies', '', 'publish', 'closed', 'closed', '', 'litchies', '', '', '2016-06-13 21:40:33', '2016-06-13 21:40:33', '', 0, 'http://localhost/wptestsite/?p=230', 9, 'nav_menu_item', '', 0),
(231, 1, '2016-06-13 21:40:31', '2016-06-13 21:40:31', '', 'Mangoes', '', 'publish', 'closed', 'closed', '', 'mangoes', '', '', '2016-06-13 21:40:31', '2016-06-13 21:40:31', '', 0, 'http://localhost/wptestsite/?p=231', 5, 'nav_menu_item', '', 0),
(232, 1, '2016-06-13 21:40:33', '2016-06-13 21:40:33', '', 'Strawberries', '', 'publish', 'closed', 'closed', '', 'strawberries', '', '', '2016-06-13 21:40:33', '2016-06-13 21:40:33', '', 0, 'http://localhost/wptestsite/?p=232', 10, 'nav_menu_item', '', 0),
(233, 1, '2016-06-13 21:40:34', '2016-06-13 21:40:34', '', 'Velvets', '', 'publish', 'closed', 'closed', '', 'velvets', '', '', '2016-06-13 21:40:34', '2016-06-13 21:40:34', '', 0, 'http://localhost/wptestsite/?p=233', 11, 'nav_menu_item', '', 0),
(234, 1, '2016-06-13 21:40:34', '2016-06-13 21:40:34', '', 'Shops', '', 'publish', 'closed', 'closed', '', 'shops', '', '', '2016-06-13 21:40:34', '2016-06-13 21:40:34', '', 0, 'http://localhost/wptestsite/?p=234', 12, 'nav_menu_item', '', 0),
(235, 1, '2016-06-13 21:40:34', '2016-06-13 21:40:34', '', 'Caps', '', 'publish', 'closed', 'closed', '', 'caps', '', '', '2016-06-13 21:40:34', '2016-06-13 21:40:34', '', 0, 'http://localhost/wptestsite/?p=235', 13, 'nav_menu_item', '', 0),
(236, 1, '2016-06-13 21:40:35', '2016-06-13 21:40:35', '', 'Pants', '', 'publish', 'closed', 'closed', '', 'pants', '', '', '2016-06-13 21:40:35', '2016-06-13 21:40:35', '', 0, 'http://localhost/wptestsite/?p=236', 16, 'nav_menu_item', '', 0),
(237, 1, '2016-06-13 21:40:35', '2016-06-13 21:40:35', '', 'Shoes', '', 'publish', 'closed', 'closed', '', 'shoes', '', '', '2016-06-13 21:40:35', '2016-06-13 21:40:35', '', 0, 'http://localhost/wptestsite/?p=237', 17, 'nav_menu_item', '', 0),
(238, 1, '2016-06-13 21:40:34', '2016-06-13 21:40:34', '', 'T-shirts', '', 'publish', 'closed', 'closed', '', 't-shirts', '', '', '2016-06-13 21:40:34', '2016-06-13 21:40:34', '', 0, 'http://localhost/wptestsite/?p=238', 14, 'nav_menu_item', '', 0),
(239, 1, '2016-06-13 21:40:35', '2016-06-13 21:40:35', '', 'Watches', '', 'publish', 'closed', 'closed', '', 'watches', '', '', '2016-06-13 21:40:35', '2016-06-13 21:40:35', '', 0, 'http://localhost/wptestsite/?p=239', 15, 'nav_menu_item', '', 0),
(240, 1, '2016-06-13 21:49:29', '2016-06-13 21:49:29', ' ', '', '', 'publish', 'closed', 'closed', '', '240', '', '', '2016-06-13 22:49:23', '2016-06-13 22:49:23', '', 0, 'http://localhost/wptestsite/?p=240', 3, 'nav_menu_item', '', 0),
(241, 1, '2016-06-13 21:49:28', '2016-06-13 21:49:28', '', 'Creat Account', '', 'publish', 'closed', 'closed', '', 'creat-account', '', '', '2016-06-13 22:49:23', '2016-06-13 22:49:23', '', 0, 'http://localhost/wptestsite/?p=241', 1, 'nav_menu_item', '', 0),
(243, 1, '2016-06-13 21:49:29', '2016-06-13 21:49:29', ' ', '', '', 'publish', 'closed', 'closed', '', '243', '', '', '2016-06-13 22:49:23', '2016-06-13 22:49:23', '', 0, 'http://localhost/wptestsite/?p=243', 4, 'nav_menu_item', '', 0),
(244, 1, '2016-06-13 22:18:10', '2016-06-13 22:18:10', ' ', '', '', 'publish', 'closed', 'closed', '', '244', '', '', '2016-06-13 22:18:10', '2016-06-13 22:18:10', '', 0, 'http://localhost/wptestsite/?p=244', 1, 'nav_menu_item', '', 0),
(245, 1, '2016-06-13 22:18:11', '2016-06-13 22:18:11', ' ', '', '', 'publish', 'closed', 'closed', '', '245', '', '', '2016-06-13 22:18:11', '2016-06-13 22:18:11', '', 0, 'http://localhost/wptestsite/?p=245', 2, 'nav_menu_item', '', 0),
(246, 1, '2016-06-13 22:18:11', '2016-06-13 22:18:11', ' ', '', '', 'publish', 'closed', 'closed', '', '246', '', '', '2016-06-13 22:18:11', '2016-06-13 22:18:11', '', 0, 'http://localhost/wptestsite/?p=246', 3, 'nav_menu_item', '', 0),
(247, 1, '2016-06-13 22:22:16', '2016-06-13 22:22:16', ' ', '', '', 'publish', 'closed', 'closed', '', '247', '', '', '2016-06-13 22:22:37', '2016-06-13 22:22:37', '', 0, 'http://localhost/wptestsite/?p=247', 1, 'nav_menu_item', '', 0),
(248, 1, '2016-06-13 22:31:19', '2016-06-13 22:31:19', '', 'Order &ndash; June 13, 2016 @ 10:31 PM', '', 'wc-processing', 'open', 'closed', 'order_575f3436eafcd', 'order-jun-13-2016-1031-pm', '', '', '2016-06-13 22:32:19', '2016-06-13 22:32:19', '', 0, 'http://localhost/wptestsite/?post_type=shop_order&#038;p=248', 0, 'shop_order', '', 2),
(249, 1, '2016-06-13 22:49:23', '2016-06-13 22:49:23', '', 'SignUp for eNewsletter', '', 'publish', 'closed', 'closed', '', 'signup-for-enewsletter', '', '', '2016-06-13 22:49:23', '2016-06-13 22:49:23', '', 0, 'http://localhost/wptestsite/?p=249', 2, 'nav_menu_item', '', 0),
(250, 0, '2016-06-13 22:57:22', '2016-06-13 22:57:22', '', '', '', 'publish', 'closed', 'closed', '', '250', '', '', '2016-06-13 22:57:23', '2016-06-13 22:57:23', '', 0, 'http://localhost/wptestsite/nf_sub/250/', 0, 'nf_sub', '', 0),
(251, 1, '2016-06-13 22:59:15', '2016-06-13 22:59:15', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\r\n[button text="Click Here" link="http://localhost/wptestsite/products/" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/romantic-wallpaper-stock-pictures-vj80pvrl.jpg" height="400px" text_color="light" text_align="left" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInY" effect=""]\r\n<h4 class="alt-font" style="color: orange;">yeah this is the top heading</h4>\r\n___\r\n<h2 style="color: #386b0b;">Visit here...........</h2>\r\n<h4 class="thin-font" style="color: #040503;">yeah smaller message with simply</h4>\r\n[button text="button" link="#" size="medium" style="alt-button crimson"]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/9413639d-e993-4843-9a1a-18896d9217b6.jpg" height="400px" text_color="light" text_align="right" text_pos="right center" text_width="40%" text_bg="" parallax_text="0" parallax="0" animate="fadeInLeft" effect=""]\r\n<h3>Just Look Around.......</h3>\r\n<h4 class="thin-font">you see many different things</h4>\r\n[button text="button" link="#" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-13 22:59:15', '2016-06-13 22:59:15', '', 16, 'http://localhost/wptestsite/2016/06/13/16-revision-v1/', 0, 'revision', '', 0),
(252, 1, '2016-06-13 22:59:58', '2016-06-13 22:59:58', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\r\n[button text="Click Here" link="http://localhost/wptestsite/products/" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/romantic-wallpaper-stock-pictures-vj80pvrl.jpg" height="400px" text_color="light" text_align="left" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInY" effect=""]\r\n<h4 class="alt-font" style="color: orange;">yeah this is the top heading</h4>\r\n___\r\n<h2 style="color: #386b0b;">Visit here...........</h2>\r\n<h4 class="thin-font" style="color: #040503;">yeah smaller message with simply</h4>\r\n[button text="button" link="#" size="medium" style="alt-button crimson"]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/9413639d-e993-4843-9a1a-18896d9217b6.jpg" height="400px" text_color="light" text_align="right" text_pos="right center" text_width="40%" text_bg="" parallax_text="0" parallax="0" animate="fadeInLeft" effect=""]\r\n<h3>Just Look Around.......</h3>\r\n<h4 class="thin-font">you see many different things</h4>\r\n[button text="button" link="http://localhost/wptestsite/about-us/" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-13 22:59:58', '2016-06-13 22:59:58', '', 16, 'http://localhost/wptestsite/2016/06/13/16-revision-v1/', 0, 'revision', '', 0),
(253, 1, '2016-06-13 23:00:37', '2016-06-13 23:00:37', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\r\n[button text="Click Here" link="http://localhost/wptestsite/products/" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/romantic-wallpaper-stock-pictures-vj80pvrl.jpg" height="400px" text_color="light" text_align="left" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInY" effect=""]\r\n<h4 class="alt-font" style="color: orange;">yeah this is the top heading</h4>\r\n___\r\n<h2 style="color: #386b0b;">Visit here...........</h2>\r\n<h4 class="thin-font" style="color: #040503;">yeah smaller message with simply</h4>\r\n[button text="button" link="#" size="medium" style="alt-button crimson"]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/9413639d-e993-4843-9a1a-18896d9217b6.jpg" height="400px" text_color="light" text_align="right" text_pos="right center" text_width="40%" text_bg="" parallax_text="0" parallax="0" animate="fadeInLeft" effect=""]\r\n<h3>Just Look Around.......</h3>\r\n<h4 class="thin-font">you see many different things</h4>\r\n[button text="Who We   Are" link="http://localhost/wptestsite/about-us/" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-13 23:00:37', '2016-06-13 23:00:37', '', 16, 'http://localhost/wptestsite/2016/06/13/16-revision-v1/', 0, 'revision', '', 0),
(254, 1, '2016-06-13 23:02:13', '2016-06-13 23:02:13', '[ux_slider timer="4500" arrows="true" bullets="true" auto_slide="true" nav_color="dark"]\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/Third.jpg" height="400px" text_color="light" text_align="center" text_pos="center" text_width="70%" parallax_text="0" parallax="0" animate="flipInX" effect="No effect"]\r\n<h2 style="color: crimson;">Shop Here</h2>\r\n<h4 class="thin-font" style="color: #0f2d35;">this is the perfect place you know</h4>\r\n[button text="Click Here" link="http://localhost/wptestsite/products/" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n\r\n[ux_banner bg="http://localhost/wptestsite/wp-content/uploads/2016/06/9413639d-e993-4843-9a1a-18896d9217b6.jpg" height="400px" text_color="light" text_align="right" text_pos="right center" text_width="40%" text_bg="" parallax_text="0" parallax="0" animate="fadeInLeft" effect=""]\r\n<h3>Just Look Around.......</h3>\r\n<h4 class="thin-font">you see many different things</h4>\r\n[button text="Who We   Are" link="http://localhost/wptestsite/about-us/" size="medium" style=""]\r\n\r\n[/ux_banner]\r\n[/ux_slider]', 'Homepage Slider', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-13 23:02:13', '2016-06-13 23:02:13', '', 16, 'http://localhost/wptestsite/2016/06/13/16-revision-v1/', 0, 'revision', '', 0),
(255, 1, '2016-06-13 23:03:52', '2016-06-13 23:03:52', '[row]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/french-food-image-hd.jpg" hover="zoom" height="200px"]\r\n<h3 class="uppercase">Delicious.....Right ?</h3>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[col span=1/3]\r\n[ux_banner link="(add link to page)" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/food-wallpaper-download-5-high-resolution-wallpaper.jpg" hover="zoom" height="200px"]\r\n<h3 class="uppercase">Get This Dish</h3>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[col span=1/3]\r\n[ux_banner link="http://localhost/wptestsite/products/" bg="http://localhost/wptestsite/wp-content/uploads/2016/06/trees-forest-leaves-1920x1080-wallpaper_www.wallpaperfo.com_34.jpg" hover="zoom" height="200px"]\r\n<h3 class="uppercase">Enter The Inside</h3>\r\n___\r\n[/ux_banner]\r\n[/col]\r\n\r\n[/row]', 'Banner row', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-06-13 23:03:52', '2016-06-13 23:03:52', '', 44, 'http://localhost/wptestsite/2016/06/13/44-revision-v1/', 0, 'revision', '', 0),
(256, 0, '2016-06-13 23:05:15', '2016-06-13 23:05:15', '', '', '', 'publish', 'closed', 'closed', '', '256', '', '', '2016-06-13 23:05:16', '2016-06-13 23:05:16', '', 0, 'http://localhost/wptestsite/nf_sub/256/', 0, 'nf_sub', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `woo1social_users`
--

CREATE TABLE `woo1social_users` (
  `ID` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `identifier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `woo1taxonomymeta`
--

CREATE TABLE `woo1taxonomymeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `woo1termmeta`
--

CREATE TABLE `woo1termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1termmeta`
--

INSERT INTO `woo1termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 24, 'cat_meta', ''),
(2, 25, 'cat_meta', '');

-- --------------------------------------------------------

--
-- Table structure for table `woo1terms`
--

CREATE TABLE `woo1terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1terms`
--

INSERT INTO `woo1terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'Foods', 'foods', 0),
(9, 'Velvets', 'velvet', 0),
(10, 'red velvet', 'red-velvet', 0),
(11, 'crime velvet', 'crime-velvet', 0),
(12, 'white velvet', 'white-velvet', 0),
(13, 'Mangoes', 'mango', 0),
(14, 'sweet', 'sweet', 0),
(15, 'tasty', 'tasty', 0),
(16, 'sour', 'sour', 0),
(17, 'green', 'green', 0),
(18, 'Litchies', 'litchi', 0),
(19, 'red', 'red', 0),
(20, 'Guavas', 'guava', 0),
(21, 'tasty .sour', 'tasty-sour', 0),
(22, 'Apples', 'apple', 0),
(23, 'Limes', 'lime', 0),
(24, 'Grapes', 'grape', 0),
(25, 'Strawberries', 'strawberry', 0),
(26, 'Shops', 'shop', 0),
(27, 't-shirt', 't-shirt', 0),
(28, 'shop', 'shop', 0),
(29, 'zuta', 'zuta', 0),
(30, 'watch', 'watch', 0),
(31, 'T-Shirts', 't-shirt', 0),
(32, 'Watches', 'watch', 0),
(33, 'stylish', 'stylish', 0),
(34, 'Shoes', 'shoe', 0),
(35, 'shoe', 'shoe', 0),
(36, 'Pants', 'pant', 0),
(37, 'pants', 'pants', 0),
(38, 'dhuti', 'dhuti', 0),
(39, 'paijama', 'paijama', 0),
(40, 'Caps', 'caps', 0),
(41, 'ponting', 'ponting', 0),
(42, 'caps', 'caps', 0),
(43, 'lee', 'lee', 0),
(44, 'Something', 'something', 0),
(45, 'Newly', 'newly', 0),
(46, 'header menu', 'header-menu', 0),
(47, 'top-bar-menu]', 'top-bar-menu', 0),
(48, 'top-bar-menu', 'top-bar-menu-2', 0),
(49, 'footer menu', 'footer-menu', 0),
(50, 'my account', 'my-account', 0);

-- --------------------------------------------------------

--
-- Table structure for table `woo1term_relationships`
--

CREATE TABLE `woo1term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1term_relationships`
--

INSERT INTO `woo1term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(76, 2, 0),
(76, 8, 0),
(76, 9, 0),
(76, 10, 0),
(76, 11, 0),
(76, 12, 0),
(82, 2, 0),
(82, 13, 0),
(82, 14, 0),
(82, 15, 0),
(82, 16, 0),
(82, 17, 0),
(86, 2, 0),
(86, 8, 0),
(86, 14, 0),
(86, 15, 0),
(86, 18, 0),
(86, 19, 0),
(89, 2, 0),
(89, 8, 0),
(89, 14, 0),
(89, 20, 0),
(89, 21, 0),
(99, 2, 0),
(99, 8, 0),
(99, 14, 0),
(99, 15, 0),
(99, 17, 0),
(99, 19, 0),
(99, 22, 0),
(103, 2, 0),
(103, 8, 0),
(103, 15, 0),
(103, 16, 0),
(103, 23, 0),
(107, 2, 0),
(107, 8, 0),
(107, 15, 0),
(107, 16, 0),
(107, 24, 0),
(112, 2, 0),
(112, 8, 0),
(112, 15, 0),
(112, 19, 0),
(112, 25, 0),
(117, 2, 0),
(117, 26, 0),
(117, 27, 0),
(117, 28, 0),
(117, 29, 0),
(117, 30, 0),
(117, 31, 0),
(141, 2, 0),
(141, 26, 0),
(141, 30, 0),
(141, 32, 0),
(143, 2, 0),
(143, 30, 0),
(143, 32, 0),
(145, 2, 0),
(145, 30, 0),
(145, 32, 0),
(145, 33, 0),
(147, 2, 0),
(147, 30, 0),
(147, 32, 0),
(149, 2, 0),
(149, 34, 0),
(149, 35, 0),
(151, 2, 0),
(151, 36, 0),
(151, 37, 0),
(151, 38, 0),
(151, 39, 0),
(154, 2, 0),
(154, 40, 0),
(154, 41, 0),
(154, 42, 0),
(154, 43, 0),
(168, 45, 0),
(170, 44, 0),
(172, 1, 0),
(220, 46, 0),
(221, 46, 0),
(222, 46, 0),
(223, 46, 0),
(224, 46, 0),
(225, 46, 0),
(226, 46, 0),
(227, 46, 0),
(228, 46, 0),
(229, 46, 0),
(230, 46, 0),
(231, 46, 0),
(232, 46, 0),
(233, 46, 0),
(234, 46, 0),
(235, 46, 0),
(236, 46, 0),
(237, 46, 0),
(238, 46, 0),
(239, 46, 0),
(240, 48, 0),
(241, 48, 0),
(243, 48, 0),
(244, 49, 0),
(245, 49, 0),
(246, 49, 0),
(247, 50, 0),
(249, 48, 0);

-- --------------------------------------------------------

--
-- Table structure for table `woo1term_taxonomy`
--

CREATE TABLE `woo1term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1term_taxonomy`
--

INSERT INTO `woo1term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 16),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_cat', '', 0, 7),
(9, 9, 'product_cat', '', 8, 1),
(10, 10, 'product_tag', '', 0, 1),
(11, 11, 'product_tag', '', 0, 1),
(12, 12, 'product_tag', '', 0, 1),
(13, 13, 'product_cat', '', 8, 1),
(14, 14, 'product_tag', '', 0, 4),
(15, 15, 'product_tag', '', 0, 6),
(16, 16, 'product_tag', '', 0, 3),
(17, 17, 'product_tag', '', 0, 2),
(18, 18, 'product_cat', '', 8, 1),
(19, 19, 'product_tag', '', 0, 3),
(20, 20, 'product_cat', '', 8, 1),
(21, 21, 'product_tag', '', 0, 1),
(22, 22, 'product_cat', '', 8, 1),
(23, 23, 'product_cat', '', 8, 1),
(24, 24, 'product_cat', '', 8, 1),
(25, 25, 'product_cat', '', 8, 1),
(26, 26, 'product_cat', '', 0, 2),
(27, 27, 'product_tag', '', 0, 1),
(28, 28, 'product_tag', '', 0, 1),
(29, 29, 'product_tag', '', 0, 1),
(30, 30, 'product_tag', '', 0, 5),
(31, 31, 'product_cat', '', 26, 1),
(32, 32, 'product_cat', '', 26, 4),
(33, 33, 'product_tag', '', 0, 1),
(34, 34, 'product_cat', '', 26, 1),
(35, 35, 'product_tag', '', 0, 1),
(36, 36, 'product_cat', '', 26, 1),
(37, 37, 'product_tag', '', 0, 1),
(38, 38, 'product_tag', '', 0, 1),
(39, 39, 'product_tag', '', 0, 1),
(40, 40, 'product_cat', '', 26, 1),
(41, 41, 'product_tag', '', 0, 1),
(42, 42, 'product_tag', '', 0, 1),
(43, 43, 'product_tag', '', 0, 1),
(44, 44, 'category', '', 0, 1),
(45, 45, 'category', '', 0, 1),
(46, 46, 'nav_menu', '', 0, 20),
(47, 47, 'nav_menu', '', 0, 0),
(48, 48, 'nav_menu', '', 0, 4),
(49, 49, 'nav_menu', '', 0, 3),
(50, 50, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `woo1usermeta`
--

CREATE TABLE `woo1usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1usermeta`
--

INSERT INTO `woo1usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'rumman'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'woo1capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'woo1user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'yith_wcas_panel,yith_wcwl_panel'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'woo1dashboard_quick_press_last_post_id', '3'),
(16, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(17, 1, 'woo1user-settings', 'libraryContent=browse&editor=tinymce'),
(18, 1, 'woo1user-settings-time', '1465800598'),
(19, 1, 'closedpostboxes_product', 'a:0:{}'),
(20, 1, 'metaboxhidden_product', 'a:3:{i:0;s:16:"ux_drag_and_drop";i:1;s:10:"postcustom";i:2;s:7:"slugdiv";}'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:5:{i:0;s:16:"ux_drag_and_drop";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(24, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:10:{i:0;s:30:"woocommerce_endpoints_nav_link";i:1;s:20:"add-post-type-blocks";i:2;s:21:"add-post-type-product";i:3;s:27:"add-post-type-featured_item";i:4;s:12:"add-post_tag";i:5;s:20:"add-block_categories";i:6;s:15:"add-product_cat";i:7;s:15:"add-product_tag";i:8;s:26:"add-featured_item_category";i:9;s:21:"add-featured_item_tag";}'),
(26, 1, 'nav_menu_recently_edited', '48'),
(28, 2, 'nickname', 'rumman142228'),
(29, 2, 'first_name', ''),
(30, 2, 'last_name', ''),
(31, 2, 'description', ''),
(32, 2, 'rich_editing', 'true'),
(33, 2, 'comment_shortcuts', 'false'),
(34, 2, 'admin_color', 'fresh'),
(35, 2, 'use_ssl', '0'),
(36, 2, 'show_admin_bar_front', 'true'),
(37, 2, 'woo1capabilities', 'a:1:{s:8:"customer";b:1;}'),
(38, 2, 'woo1user_level', '0'),
(40, 2, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(41, 1, 'session_tokens', 'a:2:{s:64:"477286c036c095aa25babcecb8eecc5087b2644b4638a107afade340908b6b8f";a:4:{s:10:"expiration";i:1467066359;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36";s:5:"login";i:1465856759;}s:64:"b45d58757595e198802c092bf63bddc4af22b6b66faba651743e296cd91e3879";a:4:{s:10:"expiration";i:1467066394;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36";s:5:"login";i:1465856794;}}'),
(42, 1, 'billing_first_name', 'sag sfd'),
(43, 1, 'billing_last_name', 'g sag as'),
(44, 1, 'billing_company', ''),
(45, 1, 'billing_email', 'rummanyt@gmail.com'),
(46, 1, 'billing_phone', '+8801757571237'),
(47, 1, 'billing_country', 'BD'),
(48, 1, 'billing_address_1', 'dsag saf gasf gsf gas'),
(49, 1, 'billing_address_2', ''),
(50, 1, 'billing_city', 'as fg sfdg g'),
(51, 1, 'billing_state', 'BAN'),
(52, 1, 'billing_postcode', '8000'),
(53, 1, 'woo1user_avatar', '187'),
(54, 1, 'manageedit-nf_subcolumnshidden', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `woo1users`
--

CREATE TABLE `woo1users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1users`
--

INSERT INTO `woo1users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'rumman', '$P$BZRrtXMz5Lxo4qn64Ja8pPiVuQ0t7B/', 'rumman', 'rummanyt@gmail.com', '', '2016-06-11 05:43:57', '', 0, 'rumman'),
(2, 'rumman142228', '$P$BX7pMioc0vE3zdV7Jjqi9F7m6Z5jJX1', 'rumman142228', 'rumman142228@gmail.com', '', '2016-06-13 22:24:30', '', 0, 'rumman142228');

-- --------------------------------------------------------

--
-- Table structure for table `woo1woocommerce_api_keys`
--

CREATE TABLE `woo1woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `woo1woocommerce_attribute_taxonomies`
--

CREATE TABLE `woo1woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `woo1woocommerce_downloadable_product_permissions`
--

CREATE TABLE `woo1woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `woo1woocommerce_order_itemmeta`
--

CREATE TABLE `woo1woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1woocommerce_order_itemmeta`
--

INSERT INTO `woo1woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_qty', '2'),
(2, 1, '_tax_class', ''),
(3, 1, '_product_id', '76'),
(4, 1, '_variation_id', '0'),
(5, 1, '_line_subtotal', '11.98'),
(6, 1, '_line_total', '11.98'),
(7, 1, '_line_subtotal_tax', '0'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `woo1woocommerce_order_items`
--

CREATE TABLE `woo1woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1woocommerce_order_items`
--

INSERT INTO `woo1woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Sweet Velvet', 'line_item', 248);

-- --------------------------------------------------------

--
-- Table structure for table `woo1woocommerce_sessions`
--

CREATE TABLE `woo1woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `woo1woocommerce_tax_rates`
--

CREATE TABLE `woo1woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `woo1woocommerce_tax_rate_locations`
--

CREATE TABLE `woo1woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `woo1woocommerce_termmeta`
--

CREATE TABLE `woo1woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `woo1woocommerce_termmeta`
--

INSERT INTO `woo1woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 8, 'order', '0'),
(2, 9, 'order', '0'),
(3, 8, 'product_count_product_cat', '8'),
(4, 9, 'product_count_product_cat', '1'),
(5, 10, 'product_count_product_tag', '1'),
(6, 11, 'product_count_product_tag', '1'),
(7, 12, 'product_count_product_tag', '1'),
(8, 13, 'order', '0'),
(9, 13, 'product_count_product_cat', '1'),
(10, 14, 'product_count_product_tag', '4'),
(11, 15, 'product_count_product_tag', '6'),
(12, 16, 'product_count_product_tag', '3'),
(13, 17, 'product_count_product_tag', '2'),
(14, 18, 'order', '0'),
(15, 18, 'product_count_product_cat', '1'),
(16, 19, 'product_count_product_tag', '3'),
(17, 20, 'order', '0'),
(18, 20, 'product_count_product_cat', '1'),
(19, 21, 'product_count_product_tag', '1'),
(20, 22, 'order', '0'),
(21, 22, 'product_count_product_cat', '1'),
(22, 23, 'order', '0'),
(23, 23, 'product_count_product_cat', '1'),
(24, 24, 'order', '0'),
(25, 24, 'product_count_product_cat', '1'),
(26, 25, 'order', '0'),
(27, 25, 'product_count_product_cat', '1'),
(28, 26, 'order', '0'),
(29, 26, 'product_count_product_cat', '8'),
(30, 27, 'product_count_product_tag', '1'),
(31, 28, 'product_count_product_tag', '1'),
(32, 29, 'product_count_product_tag', '1'),
(33, 30, 'product_count_product_tag', '5'),
(34, 31, 'order', '0'),
(35, 31, 'product_count_product_cat', '1'),
(36, 32, 'order', '0'),
(37, 32, 'product_count_product_cat', '4'),
(38, 33, 'product_count_product_tag', '1'),
(39, 34, 'order', '0'),
(40, 34, 'product_count_product_cat', '1'),
(41, 35, 'product_count_product_tag', '1'),
(42, 36, 'order', '0'),
(43, 36, 'product_count_product_cat', '1'),
(44, 37, 'product_count_product_tag', '1'),
(45, 38, 'product_count_product_tag', '1'),
(46, 39, 'product_count_product_tag', '1'),
(47, 40, 'order', '0'),
(48, 40, 'product_count_product_cat', '1'),
(49, 41, 'product_count_product_tag', '1'),
(50, 42, 'product_count_product_tag', '1'),
(51, 43, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Table structure for table `woo1yith_wcwl`
--

CREATE TABLE `woo1yith_wcwl` (
  `ID` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `woo1yith_wcwl`
--

INSERT INTO `woo1yith_wcwl` (`ID`, `prod_id`, `quantity`, `user_id`, `wishlist_id`, `dateadded`) VALUES
(1, 99, 1, 1, 1, '2016-06-14 04:41:49'),
(2, 154, 1, 1, 1, '2016-06-14 04:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `woo1yith_wcwl_lists`
--

CREATE TABLE `woo1yith_wcwl_lists` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `woo1yith_wcwl_lists`
--

INSERT INTO `woo1yith_wcwl_lists` (`ID`, `user_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`) VALUES
(1, 1, '', '', 'FTI4ZBU0P4ZV', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `woo1commentmeta`
--
ALTER TABLE `woo1commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `woo1comments`
--
ALTER TABLE `woo1comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `woo1links`
--
ALTER TABLE `woo1links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `woo1nf_objectmeta`
--
ALTER TABLE `woo1nf_objectmeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `woo1nf_objects`
--
ALTER TABLE `woo1nf_objects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `woo1nf_relationships`
--
ALTER TABLE `woo1nf_relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `woo1ninja_forms_fav_fields`
--
ALTER TABLE `woo1ninja_forms_fav_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `woo1ninja_forms_fields`
--
ALTER TABLE `woo1ninja_forms_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `woo1options`
--
ALTER TABLE `woo1options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `woo1postmeta`
--
ALTER TABLE `woo1postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `woo1posts`
--
ALTER TABLE `woo1posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `woo1social_users`
--
ALTER TABLE `woo1social_users`
  ADD KEY `ID` (`ID`,`type`);

--
-- Indexes for table `woo1taxonomymeta`
--
ALTER TABLE `woo1taxonomymeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `taxonomy_id` (`taxonomy_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `woo1termmeta`
--
ALTER TABLE `woo1termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `woo1terms`
--
ALTER TABLE `woo1terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `woo1term_relationships`
--
ALTER TABLE `woo1term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `woo1term_taxonomy`
--
ALTER TABLE `woo1term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `woo1usermeta`
--
ALTER TABLE `woo1usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `woo1users`
--
ALTER TABLE `woo1users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `woo1woocommerce_api_keys`
--
ALTER TABLE `woo1woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `woo1woocommerce_attribute_taxonomies`
--
ALTER TABLE `woo1woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `woo1woocommerce_downloadable_product_permissions`
--
ALTER TABLE `woo1woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `woo1woocommerce_order_itemmeta`
--
ALTER TABLE `woo1woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `woo1woocommerce_order_items`
--
ALTER TABLE `woo1woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `woo1woocommerce_sessions`
--
ALTER TABLE `woo1woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `woo1woocommerce_tax_rates`
--
ALTER TABLE `woo1woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`(191)),
  ADD KEY `tax_rate_state` (`tax_rate_state`(191)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(191)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `woo1woocommerce_tax_rate_locations`
--
ALTER TABLE `woo1woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `woo1woocommerce_termmeta`
--
ALTER TABLE `woo1woocommerce_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `woocommerce_term_id` (`woocommerce_term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `woo1yith_wcwl`
--
ALTER TABLE `woo1yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `woo1yith_wcwl_lists`
--
ALTER TABLE `woo1yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `woo1commentmeta`
--
ALTER TABLE `woo1commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `woo1comments`
--
ALTER TABLE `woo1comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `woo1links`
--
ALTER TABLE `woo1links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `woo1nf_objectmeta`
--
ALTER TABLE `woo1nf_objectmeta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `woo1nf_objects`
--
ALTER TABLE `woo1nf_objects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `woo1nf_relationships`
--
ALTER TABLE `woo1nf_relationships`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `woo1ninja_forms_fav_fields`
--
ALTER TABLE `woo1ninja_forms_fav_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `woo1ninja_forms_fields`
--
ALTER TABLE `woo1ninja_forms_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `woo1options`
--
ALTER TABLE `woo1options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=872;
--
-- AUTO_INCREMENT for table `woo1postmeta`
--
ALTER TABLE `woo1postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1410;
--
-- AUTO_INCREMENT for table `woo1posts`
--
ALTER TABLE `woo1posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
--
-- AUTO_INCREMENT for table `woo1taxonomymeta`
--
ALTER TABLE `woo1taxonomymeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `woo1termmeta`
--
ALTER TABLE `woo1termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `woo1terms`
--
ALTER TABLE `woo1terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `woo1term_taxonomy`
--
ALTER TABLE `woo1term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `woo1usermeta`
--
ALTER TABLE `woo1usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `woo1users`
--
ALTER TABLE `woo1users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `woo1woocommerce_api_keys`
--
ALTER TABLE `woo1woocommerce_api_keys`
  MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `woo1woocommerce_attribute_taxonomies`
--
ALTER TABLE `woo1woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `woo1woocommerce_downloadable_product_permissions`
--
ALTER TABLE `woo1woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `woo1woocommerce_order_itemmeta`
--
ALTER TABLE `woo1woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `woo1woocommerce_order_items`
--
ALTER TABLE `woo1woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `woo1woocommerce_sessions`
--
ALTER TABLE `woo1woocommerce_sessions`
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `woo1woocommerce_tax_rates`
--
ALTER TABLE `woo1woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `woo1woocommerce_tax_rate_locations`
--
ALTER TABLE `woo1woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `woo1woocommerce_termmeta`
--
ALTER TABLE `woo1woocommerce_termmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `woo1yith_wcwl`
--
ALTER TABLE `woo1yith_wcwl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `woo1yith_wcwl_lists`
--
ALTER TABLE `woo1yith_wcwl_lists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
