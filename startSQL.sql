-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2016 at 02:35 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snlchat1`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendarevents`
--

CREATE TABLE `calendarevents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `location` text COLLATE utf8_unicode_ci,
  `contact` text COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------


--
-- Table structure for table `modal_settings`
--

CREATE TABLE `modal_settings` (
  `modal_id` int(32) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(32) NOT NULL,
  `auto_close` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `classes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wgtBtnObjs` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modal_settings`
--

INSERT INTO `modal_settings` (`modal_id`, `name`, `type`, `value`, `user_id`, `auto_close`, `classes`, `wgtBtnObjs`) VALUES
(243, 'modImageSelector', '', '', 19, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `news_and_announcements`
--

CREATE TABLE `news_and_announcements` (
  `id` int(32) NOT NULL,
  `image_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` date NOT NULL,
  `created_by_user_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `note_id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `note_title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `note_content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`note_id`, `user_id`, `note_title`, `note_content`) VALUES
(16, 19, 'first note', 'this is a test note'),
(17, 19, 'this is to test multiple notes', 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `option_id` int(32) NOT NULL,
  `option_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='these options are called by the loadOptions class';

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'themeInUse', 'freeTheme'),
(2, 'appName', 'animated-share');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL,
  `post_date_gmt` datetime NOT NULL,
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_category` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL,
  `post_modified_gmt` datetime NOT NULL,
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  `post_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_notes`
--

CREATE TABLE `temp_notes` (
  `note_id` int(32) NOT NULL,
  `widget_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(32) NOT NULL,
  `note_title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(32) NOT NULL,
  `username` text COLLATE utf8_unicode_ci,
  `password` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(10) NOT NULL,
  `opened_widgets` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first`, `last`, `salt`, `joined`, `group`, `opened_widgets`) VALUES
(28, 'mmanunta', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', '', NULL, '°Ž¸Ì”óeü»¯çí˜â€ÍâØn*ÿE¡¸\0÷¯•7^', '2016-03-19 01:48:50', 1, '1'),
(27, 'jbob1', '3b5d15602935d6ddb0147508d9e1e26968aabcf22598df156e99726587e529bf', 'jjj', 'bob', '‘°ÒPc…ÐÁ0ˆÐÜ9„Ît\'gð0ðä­zL¡LÔlý', '2015-09-02 13:24:07', 1, '1'),
(26, 'jsmith', '775de634bed6e07b8a75e826b5dd63ee7102f66ebf624637f370ba0050544e41', 'joe', 'smith', 'gjZ|]‘m¯Ae«q\Z¿þ)XØ\r”¦/vETùÞ', '2015-09-02 13:12:53', 1, '1'),
(19, 'amanunta', 'bd4338b81a57cb708976d98ea747a0b6bbae55ccf8d48fe61c2a8f7ec16e699d', 'papito', 'Manunta', 'Õ?½ú@™õ	]ö¡ç65HE~qF¥–0\'#4Ì4', '2015-08-14 17:33:41', 1, '1'),
(25, 'gmcnichol', '5134add1645a3ae2c2e29c74491f552512826ca2edcf8dcccdb18527c3f31b92', 'gabe', 'mcnichol', 'öé¤\'o´¼Uø~2®‘VÍ×î€–Ý²L\'‚„,Ó-', '2015-08-25 21:14:09', 1, '1'),
(24, 'usajsm5', '2adc0dc725e3cb1143b15887ec6a11f1663115688b3a464d2127e691f4bebd07', 'bob', 'burgers', '=b–cyõ•ÑåD+3ïý·~×=CÑüp¸Ç_=e', '2015-08-14 17:50:35', 1, '1'),
(43, 'TeSoad90', 'f3ea93eafb2854c15e8fb30834843f6f1a10e547bc78f899ced66d6787fe3550', 'Brendan', 'McNichol', '5žòZ$öp¿¯<‡ùc5âtõÊ{Œä{ê\Z_=1¦ð', '2016-04-03 17:05:05', 1, '1'),
(42, 'class', 'a24c1ce11fec695ec3f8823b8dce23a5ce63dc92ab2a5fcbec3f0c0d63ace018', 'class', 'class1', '¯/R,¿»‹¥zbŸýöÁÍ [}å9czxœh¯7Ÿ', '2016-03-31 17:02:25', 1, '1'),
(41, 'smanunta2', 'aa86d421d292266e90d47ec758fc3826de1a73088acf14211825aca929ce805c', 'sebastian', 'manunta', '•WE´B™ÌÌ9Ù/‚†À†Q	íEJ,•Ðe\'Œ}¾©V', '2016-03-31 16:28:17', 1, '1'),
(40, 'test2', '1c35290238f127730b10d9b3df6c188645f9919f6e16e7aef83e11cd4b8abfed', 'test2', 'test2', '‘à½\ZH˜ƒãI²!ÒŒ·3g{ÛÉÂäóPP©#®', '2016-03-31 14:38:33', 1, '1'),
(39, 'test1', '2bad14b166559551728ad863abbde71f676a9813e9b9a9e337aa23e863a81340', 'test1', 'test1', ')­ßÒ§ô÷z`îV÷ÆÆ‰Ä¼³Ôð¼Å]¼¡â9˜Ñ', '2016-03-31 14:33:48', 1, '1'),
(38, 'bob13', '8a79bd20b87077043f80f75b599f7255995adff447cf15f067affc005e409536', 'bob13', 'bob13', 'ÿIz¸—\\vÇÛ9*mŽtl	gy{°õ®fµ\\ÓØ¹J', '2016-03-31 13:41:03', 1, '1'),
(37, 'bob12', '74612c4f574e842708902e8f33275211dda5bf39a33fd47ab7a2933c8b92000a', 'bob', 'bob12', 'âfSØ¶w•MÚ[Ÿ?]u¼¦¹‚eõ°©4ªáË¸ÐƒR', '2016-03-31 13:40:06', 1, '1'),
(44, 'root', 'bcc53dac7450d47c43032e937c749b9d5f09db342e37d2ab50a662219a1327bb', 'root', 'root', '¯sqŒo:ÉeeÂ@ÿPŸÊyµc¿©ŠÕŒ¿¦àgÐ', '2016-04-11 20:50:47', 1, '1'),
(45, 'root1', '75280efcc526cae4b61ff9183562e46c675550f144445a3e91a4ee8da2c53064', 'root1', 'root1', '•Ýl£E®‹qmu[sA–ìæ¸æð­æa!ÂÔ«úŸ½K', '2016-04-11 21:09:39', 1, '1'),
(46, 'phil', '56d443c409b92b7a871f9c303ac725c0869087b32013c214e9c850d14962c82b', 'phil', 'bryan', 'é¹‰ÜC;†F¥™ßœîòŠ	5½”é_¸INýB\0†Æ)', '2016-04-15 11:33:53', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_session`
--

CREATE TABLE `user_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets_settings`
--

CREATE TABLE `widgets_settings` (
  `widget_id` int(32) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `displayName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'this will be a prefered display name for the widget',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(32) NOT NULL,
  `auto_close` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `classes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'col-xs-12 col-md-4',
  `wgtBtnObjs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `widgets_settings`
--

INSERT INTO `widgets_settings` (`widget_id`, `name`, `displayName`, `type`, `value`, `user_id`, `auto_close`, `classes`, `wgtBtnObjs`) VALUES
(1, 'wgtWelcome', 'Welcome', '0', '0', 0, '0', 'col-xs-12 col-md-12', 'wgtResize wgtExit'),
(2, 'wgtDispArticles', 'Display Articles', '0', '0', 0, '0', 'col-xs-12 col-md-4', 'wgtResize wgtExit'),
(3, 'wgtNotes', 'Show Notes', '0', '0', 0, '0', 'col-xs-12 col-md-4', 'wgtSaveNote wgtResize wgtExit'),
(4, 'wgtFeatured', 'Featured Items', '0', '0', 0, '0', 'col-xs-12 col-md-4', 'wgtResize wgtExit'),
(5, 'wgtCreateWidgetFiles', 'Create New Widget(admin only)', '0', '0', 0, '', 'col-xs-12 col-md-4', 'wgtResize wgtExit'),
(240, 'wgtPosts', 'Create Post', '', '', 0, '', 'col-xs-12 col-md-4', 'wgtResize wgtExit'),
(243, 'wgtCreateEvent', 'Create Events', '', '', 0, '', 'col-xs-12 col-md-4', 'wgtResize wgtExit'),
(246, 'wgtAppOptions', 'App Options', '', '', 0, '', 'col-xs-12 col-md-4', 'wgtResize wgtExit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendarevents`
--
ALTER TABLE `calendarevents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_start` (`start`),
  ADD KEY `idx_end` (`end`);

--
-- Indexes for table `modal_settings`
--
ALTER TABLE `modal_settings`
  ADD PRIMARY KEY (`modal_id`);

--
-- Indexes for table `news_and_announcements`
--
ALTER TABLE `news_and_announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `temp_notes`
--
ALTER TABLE `temp_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_session`
--
ALTER TABLE `user_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets_settings`
--
ALTER TABLE `widgets_settings`
  ADD PRIMARY KEY (`widget_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendarevents`
--
ALTER TABLE `calendarevents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `modal_settings`
--
ALTER TABLE `modal_settings`
  MODIFY `modal_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `news_and_announcements`
--
ALTER TABLE `news_and_announcements`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `note_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `option_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `temp_notes`
--
ALTER TABLE `temp_notes`
  MODIFY `note_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `user_session`
--
ALTER TABLE `user_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `widgets_settings`
--
ALTER TABLE `widgets_settings`
  MODIFY `widget_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
