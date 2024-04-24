-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 02:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"rto\",\"table\":\"rto_web_dl\"},{\"db\":\"rto\",\"table\":\"rto_web_duplicatehistory\"},{\"db\":\"rto\",\"table\":\"rto_web_vehicleregistration\"},{\"db\":\"rto\",\"table\":\"auth_user\"},{\"db\":\"rto\",\"table\":\"rto_web_registration\"},{\"db\":\"rto\",\"table\":\"web_tms_reg\"},{\"db\":\"d1\",\"table\":\"t1\"},{\"db\":\"rto\",\"table\":\"rto_web_renewalhistory\"},{\"db\":\"rto\",\"table\":\"rto_web_appoinment_data\"},{\"db\":\"rto\",\"table\":\"django_admin_log\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'rto', 'rto_web_dl', '{\"sorted_col\":\"`rto_web_dl`.`rto_number` ASC\"}', '2024-04-06 12:27:12'),
('root', 'tms', 'web_tms_reg', '{\"sorted_col\":\"`web_tms_reg`.`address` ASC\"}', '2024-03-15 05:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-08 05:31:46', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":0.9934789999999998}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `rto`
--
CREATE DATABASE IF NOT EXISTS `rto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rto`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add dl', 7, 'add_dl'),
(26, 'Can change dl', 7, 'change_dl'),
(27, 'Can delete dl', 7, 'delete_dl'),
(28, 'Can view dl', 7, 'view_dl'),
(29, 'Can add registration', 8, 'add_registration'),
(30, 'Can change registration', 8, 'change_registration'),
(31, 'Can delete registration', 8, 'delete_registration'),
(32, 'Can view registration', 8, 'view_registration'),
(33, 'Can add otp', 9, 'add_otp'),
(34, 'Can change otp', 9, 'change_otp'),
(35, 'Can delete otp', 9, 'delete_otp'),
(36, 'Can view otp', 9, 'view_otp'),
(37, 'Can add appoinment', 10, 'add_appoinment'),
(38, 'Can change appoinment', 10, 'change_appoinment'),
(39, 'Can delete appoinment', 10, 'delete_appoinment'),
(40, 'Can view appoinment', 10, 'view_appoinment'),
(41, 'Can add appoinment_data', 10, 'add_appoinment_data'),
(42, 'Can change appoinment_data', 10, 'change_appoinment_data'),
(43, 'Can delete appoinment_data', 10, 'delete_appoinment_data'),
(44, 'Can view appoinment_data', 10, 'view_appoinment_data'),
(45, 'Can add reg', 11, 'add_reg'),
(46, 'Can change reg', 11, 'change_reg'),
(47, 'Can delete reg', 11, 'delete_reg'),
(48, 'Can view reg', 11, 'view_reg'),
(49, 'Can add office', 12, 'add_office'),
(50, 'Can change office', 12, 'change_office'),
(51, 'Can delete office', 12, 'delete_office'),
(52, 'Can view office', 12, 'view_office'),
(53, 'Can add conta', 13, 'add_conta'),
(54, 'Can change conta', 13, 'change_conta'),
(55, 'Can delete conta', 13, 'delete_conta'),
(56, 'Can view conta', 13, 'view_conta'),
(57, 'Can add Renewal History', 14, 'add_renewalhistory'),
(58, 'Can change Renewal History', 14, 'change_renewalhistory'),
(59, 'Can delete Renewal History', 14, 'delete_renewalhistory'),
(60, 'Can view Renewal History', 14, 'view_renewalhistory'),
(61, 'Can add vehicle registration', 15, 'add_vehicleregistration'),
(62, 'Can change vehicle registration', 15, 'change_vehicleregistration'),
(63, 'Can delete vehicle registration', 15, 'delete_vehicleregistration'),
(64, 'Can view vehicle registration', 15, 'view_vehicleregistration'),
(65, 'Can add Duplicate History', 16, 'add_duplicatehistory'),
(66, 'Can change Duplicate History', 16, 'change_duplicatehistory'),
(67, 'Can delete Duplicate History', 16, 'delete_duplicatehistory'),
(68, 'Can view Duplicate History', 16, 'view_duplicatehistory'),
(69, 'Can add payment', 17, 'add_payment'),
(70, 'Can change payment', 17, 'change_payment'),
(71, 'Can delete payment', 17, 'delete_payment'),
(72, 'Can view payment', 17, 'view_payment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$4quaIE8e2rSEz7xCx9wXD8$A0I1Ez+svEqjqc2tjrE+fiOSVNhoH5E0MPB0zLp9wg4=', '2024-04-10 09:39:54.104677', 0, 'divya', '', '', 'ahcb5483@gmail.com', 0, 1, '2024-01-29 07:27:05.404100'),
(3, 'pbkdf2_sha256$720000$4ditjJw4RqbGhKwgFLXcys$KqzXnee5yXeEVnDlL9UeZaTju+182YJ2w9SJkDAsThE=', '2024-02-03 08:02:03.800828', 0, 'prince', '', '', 'prince@gmail.com', 0, 1, '2024-01-29 07:30:07.296015'),
(4, 'pbkdf2_sha256$720000$r7WxCXGbNVYm8thCDnNEnc$4tA4j9fnBXgewFgx42vOcQ2PDTbiDh37mbSuIY+CN5M=', '2024-01-30 03:08:48.224160', 0, 'iant', '', '', 'iant@gmail.com', 0, 1, '2024-01-30 03:07:40.141176'),
(5, 'pbkdf2_sha256$720000$Iyu7yQ0F3iQfL29965xqR6$0F6mszpibXwqnr6DRKPxcSJhrMs6a2VVTXnBVBOfYLs=', '2024-01-30 06:29:47.392532', 0, 'tapu', '', '', 'tapu@gmail.com', 0, 1, '2024-01-30 06:27:42.167330'),
(6, 'pbkdf2_sha256$720000$a97EVqjwBS2khXtrSo9Xyx$FiLR2hX20dsxA5VTTJpKqP0yA9deQyP0X/NynylEZCk=', '2024-02-03 08:06:45.336010', 1, 'dv', '', '', 'd@gmail.com', 1, 1, '2024-02-03 08:06:30.404717'),
(7, 'pbkdf2_sha256$720000$OXmGy9ZCzvZxxpyrxcwBL2$ILNi5xd+OErOV9IWCgevFBJKiqynLwV+Z6/F5tpTnfA=', '2024-02-22 10:05:37.923118', 1, 'rto', '', '', 'rto@gmail.com', 1, 1, '2024-02-22 10:05:10.114670'),
(8, 'pbkdf2_sha256$720000$LU8KI3TGmIsD4HNu3ExZoh$FJr9Vc74TeY6tnEI4Osh52NOXZxw444VC9lPO9KQ/Co=', '2024-02-29 12:34:40.336817', 1, 'dl', '', '', 'dl@gmail.com', 1, 1, '2024-02-29 10:58:34.685866'),
(9, 'pbkdf2_sha256$720000$NTL4HQ6drrbt6INzEyd3Df$qoy5ypD63smHFFE+IBey6d9L6hWHGvJT7WmN6RcXQgI=', '2024-02-29 11:00:24.386718', 1, 'dl_user', '', '', 'dlu@gmail.com', 1, 1, '2024-02-29 11:00:07.703005'),
(10, 'pbkdf2_sha256$720000$cAXuXcJ2fI4gW1nfM17GQC$zwnIlDfMMQ0srh3xSBv7oPacFiE1Q6ht84nLMUxds3Q=', '2024-03-23 05:50:25.639830', 1, 'admin_rto', '', '', 'rto@gmail.com', 1, 1, '2024-03-23 05:50:06.374000'),
(12, 'pbkdf2_sha256$720000$iJbcSSEe237Jn6Iw2RF96s$4EKWckyJOm4bJiLOnpRG3rWQkTKE4OCicKP4HRfVO0Q=', NULL, 0, 'B/H,KHARIKAT CANAL, NR NEW RTO, VASTRAL, AHMEDABAD', '', '', '', 0, 1, '2024-03-23 06:16:05.907259'),
(13, 'pbkdf2_sha256$720000$ZLbOJjACnIOUyusQ5HE4iH$tTzB+s8W2GA1PBH7Vw6eolS/nYAVa/V/LRmP8X10C0w=', NULL, 0, 'W surat', '', '', '', 0, 1, '2024-03-23 07:28:14.899733'),
(14, 'pbkdf2_sha256$720000$QcK5BS6qtI1EAHZSK5D57f$0Vol+6OVD9LWkYM73reo0hDCmloOoH3a53eCuJD1Ay0=', '2024-04-10 08:48:10.901382', 1, 'admin_real_rto', '', '', 'rto@gmail.com', 1, 1, '2024-03-30 07:30:12.702919'),
(15, 'pbkdf2_sha256$720000$DF79AJpXp39QFVmNJ8R7Cl$S65P1an/llOG1GhhH450n4U0J4AQJIfZgAmQ/jTKDEE=', '2024-04-23 09:42:31.066722', 0, 'd', '', '', 'tiwaridivya809@gmail.com', 0, 1, '2024-04-19 06:07:01.990593');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-02-03 08:06:56.585306', '4', 'dl object (4)', 2, '[]', 7, 6),
(2, '2024-02-03 08:07:03.644756', '4', 'dl object (4)', 2, '[]', 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'rto_web', 'appoinment_data'),
(13, 'rto_web', 'conta'),
(7, 'rto_web', 'dl'),
(16, 'rto_web', 'duplicatehistory'),
(12, 'rto_web', 'office'),
(9, 'rto_web', 'otp'),
(17, 'rto_web', 'payment'),
(8, 'rto_web', 'registration'),
(14, 'rto_web', 'renewalhistory'),
(15, 'rto_web', 'vehicleregistration'),
(6, 'sessions', 'session'),
(11, 'web_tms', 'reg');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-01-29 07:23:41.562313'),
(2, 'auth', '0001_initial', '2024-01-29 07:23:42.045074'),
(3, 'admin', '0001_initial', '2024-01-29 07:23:42.170044'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-01-29 07:23:42.185671'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-29 07:23:42.185671'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-01-29 07:23:42.248128'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-01-29 07:23:42.294992'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-01-29 07:23:42.310613'),
(9, 'auth', '0004_alter_user_username_opts', '2024-01-29 07:23:42.326235'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-01-29 07:23:42.357505'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-01-29 07:23:42.357505'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-01-29 07:23:42.373099'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-01-29 07:23:42.388720'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-01-29 07:23:42.388720'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-01-29 07:23:42.404341'),
(16, 'auth', '0011_update_proxy_permissions', '2024-01-29 07:23:42.419963'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-01-29 07:23:42.419963'),
(18, 'rto_web', '0001_initial', '2024-01-29 07:23:42.451206'),
(19, 'sessions', '0001_initial', '2024-01-29 07:23:42.466827'),
(20, 'rto_web', '0002_otp', '2024-02-29 05:54:43.464253'),
(21, 'rto_web', '0003_appoinment', '2024-03-01 09:06:14.798167'),
(22, 'rto_web', '0004_rename_appoinment_appoinment_data', '2024-03-01 09:34:16.113788'),
(23, 'web_tms', '0001_initial', '2024-03-08 09:07:06.855637'),
(24, 'rto_web', '0005_dl_otp', '2024-03-19 05:14:06.703956'),
(25, 'rto_web', '0006_office', '2024-03-22 06:41:27.305679'),
(26, 'rto_web', '0007_conta', '2024-03-22 11:54:07.878058'),
(27, 'rto_web', '0008_dl_dl_number', '2024-03-29 11:38:39.120835'),
(28, 'rto_web', '0009_alter_dl_dl_number', '2024-03-29 11:45:46.852431'),
(29, 'rto_web', '0010_remove_dl_dl_number_dl_rto_number', '2024-03-29 12:12:13.419313'),
(30, 'rto_web', '0011_dl_doc_3_dl_doc_no_3_dl_document_3_dl_issue_date_3_and_more', '2024-04-05 05:01:43.149831'),
(31, 'rto_web', '0012_renewalhistory', '2024-04-05 06:19:54.434648'),
(32, 'rto_web', '0013_renewalhistory_doc_1_renewalhistory_doc_2_and_more', '2024-04-05 10:39:38.401281'),
(33, 'rto_web', '0014_vehicleregistration', '2024-04-06 09:28:33.343408'),
(34, 'rto_web', '0015_duplicatehistory', '2024-04-06 12:02:03.397888'),
(35, 'rto_web', '0016_vehicleregistration_city_code_and_more', '2024-04-11 11:16:22.822172'),
(36, 'rto_web', '0017_vehicleregistration_insurance_and_more', '2024-04-13 12:09:19.055705'),
(37, 'rto_web', '0002_payment', '2024-04-23 10:07:56.554906');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2y2nm80l47ca98n1ie6f6sx1qropug1c', '.eJxVjMsOwiAQRf-FtSFDcXi4dN9vIEMZpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxIXYcTpd4s0PbjuIN2p3pqcWl2XOcpdkQftcmyJn9fD_Tso1Mu3zqxJOZvOKisfCdAnA8MAk8paE6L3lo1jC-Asshk4olMZDSYAqziK9wfRKDcb:1rWB2z:3RKF7ZgqSaR6TDBm586aUky6TS-7ahrq8xHI1xxGV10', '2024-02-17 08:06:45.336010'),
('4hewg21nth58efsv0t87jlusl8k7p3gm', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1rXcl1:6IMvPgsJIMb4w0VU1n6JWwMJeYZ_rH6dUy-Z5NHI6oM', '2024-02-21 07:54:11.784943'),
('5qf1sbu1drz9s4b4g1f627hedwglban0', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1raCPA:-4l-rX0HY2XgUEqqrtN4SpJjc8AIXS0PwjVh7HJzm_0', '2024-02-28 10:22:16.725115'),
('adq9xq7kdjf6b6q634fuaw1p17aqqmew', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1rXG6m:Ca6A5JeFfDiGq31Pqad92GQo5zCaypCezZgRMz7TSIM', '2024-02-20 07:43:08.517646'),
('eecqc2dl8s4wvji17afppnpmhvgpblzl', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1reXS7:7F6bq0rZvCecLJK6adUHU4RWmmrY9cAfJIm81BokmWc', '2024-03-11 09:39:15.659645'),
('h8qdhmn7gq3wht2v7gy1slaqabwf51z1', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1rVQC2:G_Cwj8VJp9MwqmRsNVBZk222CCg6wmW8SP7z7QPu1gk', '2024-02-15 06:04:58.977409'),
('hwa5nuera5vjoomt312hl9x1f3244a16', '.eJxVjEEOwiAQRe_C2pAOUyy4dN8zkBkYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1IXBb06_Y5M8SF1J-lO9TbrONd1mVjvij5o0-Oc5Hk93L-DQq18ayS0wDZR9mA7FuqcQWcMCgpbKxm8GwRzznDGiGCHSIkNem9MD5zU-wMFLDf3:1ruTco:iHDA2LmWK4jdFxY5fHBG9Ie_5A0J_Oa3vcsBrTYg0fE', '2024-04-24 08:48:10.811539'),
('i57obh3wtuicv77btdkqxwl5jo3t09aa', '.eJxVjEEOwiAQRe_C2pAOUyy4dN8zkBkYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1IXBb06_Y5M8SF1J-lO9TbrONd1mVjvij5o0-Oc5Hk93L-DQq18ayS0wDZR9mA7FuqcQWcMCgpbKxm8GwRzznDGiGCHSIkNem9MD5zU-wMFLDf3:1ruTco:iHDA2LmWK4jdFxY5fHBG9Ie_5A0J_Oa3vcsBrTYg0fE', '2024-04-24 08:48:10.859941'),
('j94gky59l66q5lr62bdsr6hkwv6bqjat', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1rUhdr:nT0tQyEDxIYS8zK5OAVtcY3-fm3RMaOEE4yf4WgS6-A', '2024-02-13 06:30:43.547342'),
('lb77r33q593oj59c9585r9cqgc5dzpbp', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1reT0i:P_uq6TYrDExRY41dx-ggFFprEJ6NjAMG7tiyzjLu-JY', '2024-03-11 04:54:40.750461'),
('mpkdop8o07pddxyp3efbhmy8dqnxnfvm', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1rrAG6:S4vAoNTB198svJhC7wS7IU5ecwK18OhQ-OJByYWRHw8', '2024-04-15 05:31:02.299799'),
('ntmrp8njeh1ihz0cq5jm152elxjnbcne', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1rlOT2:76pEvcI1jPxoztgjZNfXAqh02xEjFZ5ixZ0WBdiqTX0', '2024-03-30 07:28:32.617517'),
('nvalm3vqydtg2x8j47ei7ntg5bgv6im5', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1rXE8e:w5YeeSQKddxSyGVQR-_c2vOZS9ZhRbQe91KGt0Iz0Qg', '2024-02-20 05:36:56.945158'),
('nvukn4rq34ppv42envkm055qp9gd7cxk', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1raqnf:Ek2iRtAaojeTv94o9vzIFEOvanhJl3gfuFA7vnV5zDw', '2024-03-01 05:30:15.485746'),
('qke8u2au7unsq80s6hwne32ptc1w24le', '.eJxVjEEOwiAQRe_C2hDoMAO4dO8ZCANUqoYmpV0Z765NutDtf-_9lwhxW2vYelnClMVZWHH63TimR2k7yPfYbrNMc1uXieWuyIN2eZ1zeV4O9--gxl6_tQKdeCDIBg0ppwHJuoGNTjSit87HyAAIzpPzKpMyjFaPFtABYiLx_gCfSjXc:1rd5xR:UQE9sLVJC8z2mB3zAMTFwu7_jWpnsxKLFtSqtwkKeLA', '2024-03-07 10:05:37.927114'),
('r4vokpmdnu41fbumr8ea6ng53vwl3h5m', '.eJxVjMsOwiAUBf-FtSFwgdK6dO83kPugUjU0Ke3K-O_apAvdnpk5L5VwW0vaWl7SJOqsenX63Qj5kesO5I71Nmue67pMpHdFH7Tp6yz5eTncv4OCrXxrC5ZDtD44PzCPgMzghKyDwMaHKME4D0gGBMkLRaAxENtu8Ewd9er9AdLaN9s:1rffcW:pW-KO5y8QzsMvEux_CbciLm9svQQmuQaJPVHK10BmM0', '2024-03-14 12:34:40.338450'),
('rgls4v7if3ul9k8le47zvwdi4lau700z', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1ra849:eTlNdjPFNHBMMfJ1cgHK0wCSh8FroxzdGqmMHViTEbQ', '2024-02-28 05:44:17.991034'),
('syiih311arho1fzr9jma1iwodn66u0dg', '.eJxVjEEOwiAQRe_C2pChUOi4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWSpx-t0DxkeoO-E711mRsdV3mIHdFHrTLa-P0vBzu30GhXr61M8gaNGljdZpgtJA4owkmD3mIQKg4BBijiQ7YOZ4wO5XAMaMNSqF4fwDS6jen:1rd4pk:zV11_lomK63YN8hxgicdvSoQXSHBsi_De2MnToH9E58', '2024-03-07 08:53:36.178500');

-- --------------------------------------------------------

--
-- Table structure for table `rto_web_appoinment_data`
--

CREATE TABLE `rto_web_appoinment_data` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rto_web_appoinment_data`
--

INSERT INTO `rto_web_appoinment_data` (`id`, `date`, `time`) VALUES
(1, '2024-03-22', '11:30 AM TO 12:30 AM'),
(2, '2024-03-02', '10:30 AM TO 11:30 AM'),
(3, '2024-03-02', '02:00 PM TO 03:00 PM'),
(4, '2024-03-03', '10:30 AM TO 11:30 AM'),
(5, '2024-03-21', '03:00 AM TO 04:00 AM'),
(6, '2024-03-09', '11:30 AM TO 12:30 AM'),
(7, '2024-03-15', '11:30 AM TO 12:30 AM'),
(8, '2024-03-28', '11:30 AM TO 12:30 AM'),
(9, '2024-03-28', '03:00 AM TO 04:00 AM'),
(10, '2024-03-28', '04:00 AM TO 05:00 AM'),
(11, '2024-05-24', '02:00 PM TO 03:00 PM'),
(12, '2024-03-21', '11:30 AM TO 12:30 AM'),
(13, '2024-04-05', '04:00 AM TO 05:00 AM'),
(14, '2024-04-06', '03:00 AM TO 04:00 AM'),
(15, '2024-03-30', '02:00 PM TO 03:00 PM'),
(16, '2024-03-21', '10:30 AM TO 11:30 AM'),
(17, '2024-04-18', '02:00 PM TO 03:00 PM'),
(18, '2024-04-26', '02:00 PM TO 03:00 PM'),
(19, '2024-04-25', '10:30 AM TO 11:30 AM'),
(20, '2024-04-13', '02:00 PM TO 03:00 PM'),
(21, '2024-04-25', '02:00 PM TO 03:00 PM'),
(22, '2024-04-23', '03:00 AM TO 04:00 AM'),
(23, '2024-04-19', '11:30 AM TO 12:30 AM'),
(24, '2024-05-01', '11:30 AM TO 12:30 AM'),
(25, '2024-04-19', '02:00 PM TO 03:00 PM'),
(26, '2024-04-10', '02:00 PM TO 03:00 PM'),
(27, '2024-05-12', '03:00 AM TO 04:00 AM'),
(28, '2024-05-03', '03:00 AM TO 04:00 AM');

-- --------------------------------------------------------

--
-- Table structure for table `rto_web_conta`
--

CREATE TABLE `rto_web_conta` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `message` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rto_web_conta`
--

INSERT INTO `rto_web_conta` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'divya', 'dv@gamil.com', 'dghd', 'sdfgsfdgf');

-- --------------------------------------------------------

--
-- Table structure for table `rto_web_dl`
--

CREATE TABLE `rto_web_dl` (
  `id` bigint(20) NOT NULL,
  `rto_state` varchar(40) NOT NULL,
  `rto_office` varchar(200) NOT NULL,
  `rto_pincode` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `father_name` varchar(70) NOT NULL,
  `mother_name` varchar(70) NOT NULL,
  `adhar_card_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `birth_p` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `gender` varchar(70) NOT NULL,
  `relation` varchar(70) NOT NULL,
  `age` int(11) NOT NULL,
  `qulification` varchar(70) NOT NULL,
  `b_group` varchar(70) NOT NULL,
  `a_mobile` bigint(20) NOT NULL,
  `occupation` varchar(70) NOT NULL,
  `country` varchar(70) NOT NULL,
  `state` varchar(70) NOT NULL,
  `city` varchar(70) NOT NULL,
  `address` varchar(80) NOT NULL,
  `pincode` int(11) NOT NULL,
  `issues_state` varchar(70) NOT NULL,
  `issue_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `disablity_yn` varchar(70) NOT NULL,
  `disablit` varchar(70) NOT NULL,
  `doner` varchar(70) NOT NULL,
  `all_yes` varchar(70) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `document` varchar(70) NOT NULL,
  `proof` varchar(70) NOT NULL,
  `doc_no` bigint(20) NOT NULL,
  `issue_date_doc` date NOT NULL,
  `issues_by` varchar(70) NOT NULL,
  `doc_1` varchar(100) NOT NULL,
  `document_2` varchar(70) NOT NULL,
  `proof_2` varchar(70) NOT NULL,
  `doc_no_2` bigint(20) NOT NULL,
  `issue_date_2` date NOT NULL,
  `issues_by_2` varchar(70) NOT NULL,
  `doc_2` varchar(100) NOT NULL,
  `otp` bigint(20) DEFAULT NULL,
  `rto_number` varchar(20) DEFAULT NULL,
  `doc_3` varchar(100) DEFAULT NULL,
  `doc_no_3` bigint(20) DEFAULT NULL,
  `document_3` varchar(70) DEFAULT NULL,
  `issue_date_3` date DEFAULT NULL,
  `issues_by_3` varchar(70) DEFAULT NULL,
  `proof_3` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rto_web_dl`
--

INSERT INTO `rto_web_dl` (`id`, `rto_state`, `rto_office`, `rto_pincode`, `name`, `father_name`, `mother_name`, `adhar_card_no`, `date`, `birth_p`, `email`, `mobile`, `gender`, `relation`, `age`, `qulification`, `b_group`, `a_mobile`, `occupation`, `country`, `state`, `city`, `address`, `pincode`, `issues_state`, `issue_date`, `expire_date`, `disablity_yn`, `disablit`, `doner`, `all_yes`, `photo`, `sign`, `document`, `proof`, `doc_no`, `issue_date_doc`, `issues_by`, `doc_1`, `document_2`, `proof_2`, `doc_no_2`, `issue_date_2`, `issues_by_2`, `doc_2`, `otp`, `rto_number`, `doc_3`, `doc_no_3`, `document_3`, `issue_date_3`, `issues_by_3`, `proof_3`) VALUES
(1, 'Gujrata', 'B/H,KHARIKAT CANAL, NR NEW RTO, VASTRAL, AHMEDABAD', 563464, 'gdfd', 'gfdgfdg', 'xcvbxcbv', 2147483647, '2024-01-19', 'fdgdfgdg', 'tiwaridivya809@gmail.com', 8765776575, 'female', 'mother', 56, 'fdsfdsf', 'a', 436346456546, 'gdfhgfdgdf', 'fgfdgfd', 'gfdgdg', 'gjh', 'jhgh', 545455, 'dfdfgfd', '2024-01-08', '2024-01-03', 'no', 'Blood Disorder', 'no', 'data', 'chnage_address.jpg', 'DL.png', 'Voter ID Card', 'DOB', 5645645645, '2024-01-19', 'cfgvbcb', 'application_form.png', 'School_LC', 'DOB', 645646, '2024-01-27', 'sdfsdsdg', 'chnage_address.jpg', NULL, 'DL-142011001129325', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Gujrata', 'B/H,KHARIKAT CANAL, NR NEW RTO, VASTRAL, AHMEDABAD', 563464, 'gdfd', 'gfdgfdg', 'xcvbxcbv', 2147483647, '2024-01-19', 'fdgdfgdg', 'tiwaridivya809@gmail.com', 8765776575, 'female', 'mother', 56, 'fdsfdsf', 'a', 436346456546, 'gdfhgfdgdf', 'fgfdgfd', 'gfdgdg', 'gjh', 'jhgh', 545455, 'dfdfgfd', '2024-01-08', '2024-01-03', 'no', 'Blood Disorder', 'no', 'data', 'chnage_address.jpg', 'DL.png', 'Voter ID Card', 'DOB', 5645645645, '2024-01-19', 'cfgvbcb', 'application_form.png', 'School_LC', 'DOB', 645646, '2024-01-27', 'sdfsdsdg', 'chnage_address.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Gujrata', 'B/H,KHARIKAT CANAL, NR NEW RTO, VASTRAL, AHMEDABAD', 563464, 'gdfd', 'gfdgfdg', 'xcvbxcbv', 2147483647, '2024-01-19', 'fdgdfgdg', 'tiwaridivya809@gmail.com', 8765776575, 'female', 'mother', 56, 'fdsfdsf', 'a', 436346456546, 'gdfhgfdgdf', 'fgfdgfd', 'gfdgdg', 'gjh', 'jhgh', 545455, 'dfdfgfd', '2024-01-08', '2024-01-03', 'no', 'Blood Disorder', 'no', 'data', 'chnage_address.jpg', 'DL.png', 'Voter ID Card', 'DOB', 5645645645, '2024-01-19', 'cfgvbcb', 'application_form.png', 'School_LC', 'DOB', 645646, '2024-01-27', 'sdfsdsdg', 'chnage_address.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Gujrata', 'B/H,KHARIKAT CANAL, NR NEW RTO, VASTRAL, AHMEDABAD', 563464, 'gdfd', 'gfdgfdg', 'xcvbxcbv', 2147483647, '2024-01-19', 'fdgdfgdg', 'tiwaridivya809@gmail.com', 8765776575, 'female', 'mother', 56, 'fdsfdsf', 'a', 436346456546, 'gdfhgfdgdf', 'fgfdgfd', 'gfdgdg', 'gjh', 'jhgh', 545455, 'dfdfgfd', '2024-01-08', '2024-01-03', 'no', 'Blood Disorder', 'no', 'data', 'chnage_address.jpg', 'DL.png', 'Voter ID Card', 'DOB', 5645645645, '2024-01-19', 'cfgvbcb', 'application_form.png', 'School_LC', 'DOB', 645646, '2024-01-27', 'sdfsdsdg', 'chnage_address.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Gujrata', 'WES, AHMEDABAD', 382449, 'neha', 'nareshbhai', 'nila ben', 2147483647, '2005-10-29', 'up', 'dv@gamil.com', 6576543232, 'female', 'father', 40, 'mca', 'a', 6576543232, 'distributer', 'India', 'Gujarat', 'ahemdabad', 'ahemdabad', 382449, 'Gujarat', '2024-02-01', '2040-10-26', 'no', 'No', 'yes', 'data', 'application_form.png', 'chnage_address.jpg', 'Adhar Card', 'Address', 5645645645, '2023-02-02', 'gujrat', 'chnage_address.jpg', 'School_LC', 'other', 544545, '2017-06-26', 'gujrat borad', 'application_form.png', NULL, 'DL-142011004096497', '', NULL, NULL, NULL, NULL, NULL),
(6, 'Gujrata', 'B/H,KHARIKAT CANAL, NR NEW RTO, VASTRAL, AHMEDABAD', 382449, 'gdfd', 'dxcv', 'fgdfgd', 2147483647, '2024-03-16', 'up', 'd83@gmail.com', 6576543231, 'male', 'mother', 40, 'mca', 'a', 6576543231, 'distributer', 'India', 'Gujarat', 'ahemdabad', 'ahemdabad', 382449, 'Gujarat', '2024-03-07', '2024-03-07', 'yes', 'Physical', 'yes', 'data', 'rto (1).sql', 'SDP-II Second Presentation Schedule 2023-24.pdf', 'Voter ID Card', 'Address', 5645645645, '2024-03-09', 'gujrat', 'tms_steps.md', 'Voter ID Card', 'Address', 645646, '2024-03-29', 'gujrat', 'rto (1).sql', NULL, 'DL-142011009445064', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Gujrata', 'B/H,KHARIKAT CANAL, NR NEW RTO, VASTRAL, AHMEDABAD', 382449, 'gdfd', 'dxcv', 'fgdfgd', 2147483647, '2024-03-16', 'up', 'd83@gmail.com', 6576543233, 'male', 'mother', 40, 'mca', 'a', 6576543231, 'distributer', 'India', 'Gujarat', 'ahemdabad', 'ahemdabad', 382449, 'Gujarat', '2024-03-07', '2024-03-07', 'yes', 'Physical', 'yes', 'data', 'rto (1).sql', 'SDP-II Second Presentation Schedule 2023-24.pdf', 'Voter ID Card', 'Address', 5645645645, '2024-03-09', 'gujrat', 'tms_steps.md', 'Voter ID Card', 'Address', 645646, '2024-03-29', 'gujrat', 'rto (1).sql', 3734, 'DL-142011003288530', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Gujrata', 'WES, AHMEDABAD', 382449, 'fgvbhjkl', 'sddsfg', 'fdgfdgh', 2147483647, '2004-03-03', 'darjaling', 'tararampam@gmail.com', 9864544664, 'female', 'father', 23, 'higher secondary ', 'o+', 756456456476465, 'majdoor', 'India', 'sgdsgsdg', 'ahemdabad', 'ahemdabad', 382449, 'Gujarat', '2024-03-28', '2044-03-27', 'no', 'No', 'yes', 'data', 'testimonial-1.jpg', 'Classroom-Quotes-Feature.jpg', 'Adhar Card', 'Address', 5645645456, '2009-04-27', 'GOV', 'Classroom-Quotes-Feature.jpg', 'School_LC', 'Address', 765444, '2017-03-27', 'GOV', 'Screenshot (4).png', 5134, 'DL-142011003575256', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Gujrata', 'WES, AHMEDABAD', 382449, 'divya', 'bl', 'neelam', 2147483647, '1999-12-28', 'up', 'gsdgsgs90@gmail.com', 9825785020, 'female', 'father', 23, 'mca', 'a', 9825785020, 'distributer', 'India', 'Gujarat', 'ahemdabad', 'ahemdabad', 382449, 'Gujarat', '2024-04-05', '2024-04-02', 'no', 'Other', 'no', 'data', 'about.jpg', 'about.jpg', 'Adhar Card', 'Address', 5645645645, '2024-04-05', 'gujrat', 'about.jpg', 'Voter ID Card', 'DOB', 645646, '2024-04-05', 'gujrat', 'about.jpg', 4277, 'DL-142011002932902', 'about.jpg', 544445, 'School_LC', '2024-04-05', 'gujrat', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `rto_web_duplicatehistory`
--

CREATE TABLE `rto_web_duplicatehistory` (
  `id` bigint(20) NOT NULL,
  `applicant_name` varchar(100) NOT NULL,
  `applicant_address` longtext NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `license_number` varchar(20) NOT NULL,
  `reason_for_duplicate` longtext NOT NULL,
  `documents_submitted` varchar(100) NOT NULL,
  `application_date` datetime(6) NOT NULL,
  `status` varchar(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `document` varchar(70) NOT NULL,
  `proof` varchar(70) NOT NULL,
  `doc_no` bigint(20) NOT NULL,
  `issue_date_doc` date NOT NULL,
  `issues_by` varchar(70) NOT NULL,
  `doc_1` varchar(100) NOT NULL,
  `document_2` varchar(70) NOT NULL,
  `proof_2` varchar(70) NOT NULL,
  `doc_no_2` bigint(20) NOT NULL,
  `issue_date_2` date NOT NULL,
  `issues_by_2` varchar(70) NOT NULL,
  `doc_2` varchar(100) NOT NULL,
  `document_3` varchar(70) DEFAULT NULL,
  `proof_3` varchar(70) DEFAULT NULL,
  `doc_no_3` bigint(20) DEFAULT NULL,
  `issue_date_3` date DEFAULT NULL,
  `issues_by_3` varchar(70) DEFAULT NULL,
  `doc_3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rto_web_duplicatehistory`
--

INSERT INTO `rto_web_duplicatehistory` (`id`, `applicant_name`, `applicant_address`, `contact_number`, `license_number`, `reason_for_duplicate`, `documents_submitted`, `application_date`, `status`, `photo`, `sign`, `document`, `proof`, `doc_no`, `issue_date_doc`, `issues_by`, `doc_1`, `document_2`, `proof_2`, `doc_no_2`, `issue_date_2`, `issues_by_2`, `doc_2`, `document_3`, `proof_3`, `doc_no_3`, `issue_date_3`, `issues_by_3`, `doc_3`) VALUES
(1, 'riya', 'gvhbj', '9825785020', 'DL-142011005887369', 'mjynhbgvfdc', '', '2024-04-06 12:39:10.751778', 'Pending', 'about.jpg', 'about.jpg', 'Adhar Card', 'Address', 5645645645, '2024-04-05', 'gujrat', 'about.jpg', 'Voter ID Card', 'DOB', 645646, '2024-04-05', 'gujrat', '', 'School_LC', 'other', 544445, '2024-04-05', 'gujrat', '');

-- --------------------------------------------------------

--
-- Table structure for table `rto_web_office`
--

CREATE TABLE `rto_web_office` (
  `id` bigint(20) NOT NULL,
  `city` varchar(40) NOT NULL,
  `r_office` varchar(400) NOT NULL,
  `password` varchar(40) NOT NULL,
  `cpassword` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rto_web_office`
--

INSERT INTO `rto_web_office` (`id`, `city`, `r_office`, `password`, `cpassword`) VALUES
(1, 'Ahmedabad', 'B/H,KHARIKAT CANAL, NR NEW RTO, VASTRAL, AHMEDABAD', '321', '321'),
(2, 'Surat', 'W surat', '5432', '5432'),
(3, 'Surat', 'B/H,KHARIKAT CANAL, NR NEW RTO, VASTRAL, Surat', '432', '432');

-- --------------------------------------------------------

--
-- Table structure for table `rto_web_otp`
--

CREATE TABLE `rto_web_otp` (
  `id` bigint(20) NOT NULL,
  `otp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rto_web_otp`
--

INSERT INTO `rto_web_otp` (`id`, `otp`) VALUES
(1, 2476),
(2, 2476),
(3, 2476),
(4, 9362),
(5, 9362),
(6, 4748),
(7, 6176),
(8, 3734),
(9, 3734),
(10, 3734),
(11, 3734),
(12, 3734),
(13, 3734),
(14, 3734),
(15, 3734);

-- --------------------------------------------------------

--
-- Table structure for table `rto_web_payment`
--

CREATE TABLE `rto_web_payment` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_address` longtext NOT NULL,
  `payment_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rto_web_registration`
--

CREATE TABLE `rto_web_registration` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `cpassword` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rto_web_registration`
--

INSERT INTO `rto_web_registration` (`id`, `name`, `email`, `password`, `cpassword`, `address`, `mobile`, `gender`, `state`) VALUES
(1, 'divya', 'dv1@gmail.com', '123', '123', 'fhdfh', 9864544664, 'female', 'M.P'),
(3, 'prince', 'prince@gmail.com', '123', '123', 'ahemdabad', 9864544664, 'male', 'Gujrata'),
(4, 'iant', 'iant@gmail.com', '123', '123', 'gjnvgfjfgj', 9864544664, 'male', 'M.P'),
(5, 'tapu', 'tapu@gmail.com', '123', '123', 'gdjfgjsv', 9864544664, 'male', 'Gujrata'),
(6, 'd', 'tiwaridivya809@gmail.com', 'i5nxBNra', '123', 'ahemdabad', 6576543232, 'female', 'Gujrata');

-- --------------------------------------------------------

--
-- Table structure for table `rto_web_renewalhistory`
--

CREATE TABLE `rto_web_renewalhistory` (
  `id` bigint(20) NOT NULL,
  `rto_state` varchar(100) NOT NULL,
  `rto_office` varchar(100) NOT NULL,
  `rto_pincode` varchar(10) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `expire_date` datetime(6) DEFAULT NULL,
  `doc_1` varchar(100) DEFAULT NULL,
  `doc_2` varchar(100) DEFAULT NULL,
  `doc_3` varchar(100) DEFAULT NULL,
  `doc_no` bigint(20) DEFAULT NULL,
  `doc_no_2` bigint(20) DEFAULT NULL,
  `doc_no_3` bigint(20) DEFAULT NULL,
  `document` varchar(70) DEFAULT NULL,
  `document_2` varchar(70) DEFAULT NULL,
  `document_3` varchar(70) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `issue_date_2` date DEFAULT NULL,
  `issue_date_3` date DEFAULT NULL,
  `issue_date_doc` date DEFAULT NULL,
  `issues_by` varchar(70) DEFAULT NULL,
  `issues_by_2` varchar(70) DEFAULT NULL,
  `issues_by_3` varchar(70) DEFAULT NULL,
  `issues_state` varchar(70) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `proof` varchar(70) DEFAULT NULL,
  `proof_2` varchar(70) DEFAULT NULL,
  `proof_3` varchar(70) DEFAULT NULL,
  `sign` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rto_web_renewalhistory`
--

INSERT INTO `rto_web_renewalhistory` (`id`, `rto_state`, `rto_office`, `rto_pincode`, `mobile`, `expire_date`, `doc_1`, `doc_2`, `doc_3`, `doc_no`, `doc_no_2`, `doc_no_3`, `document`, `document_2`, `document_3`, `issue_date`, `issue_date_2`, `issue_date_3`, `issue_date_doc`, `issues_by`, `issues_by_2`, `issues_by_3`, `issues_state`, `photo`, `proof`, `proof_2`, `proof_3`, `sign`) VALUES
(1, 'Gujrata', 'WES, AHMEDABAD', '382449', '9825785020', '2044-03-28 00:00:00.000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Gujrata', 'WES, AHMEDABAD', '382449', '9825785020', '2044-03-28 00:00:00.000000', 'about.jpg', '', '', 5645645645, 645646, 544445, 'Adhar Card', 'Voter ID Card', 'School_LC', NULL, '2024-04-05', '2024-04-05', '2024-04-05', 'gujrat', 'gujrat', 'gujrat', NULL, 'about.jpg', 'Address', 'DOB', 'other', 'about.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rto_web_vehicleregistration`
--

CREATE TABLE `rto_web_vehicleregistration` (
  `id` bigint(20) NOT NULL,
  `make` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `manufacture_year` int(11) NOT NULL,
  `vin` varchar(100) NOT NULL,
  `mileage` varchar(100) NOT NULL,
  `engine` varchar(100) NOT NULL,
  `transmission` varchar(100) NOT NULL,
  `fuel` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `body_style` varchar(100) NOT NULL,
  `features` longtext NOT NULL,
  `condition` longtext NOT NULL,
  `ownership_history` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `location` varchar(100) NOT NULL,
  `registration_info` longtext NOT NULL,
  `title_status` varchar(100) NOT NULL,
  `city_code` varchar(100) DEFAULT NULL,
  `state_code` varchar(100) DEFAULT NULL,
  `insurance` varchar(100) DEFAULT NULL,
  `owner_address` varchar(100) DEFAULT NULL,
  `owner_address_temp` varchar(100) DEFAULT NULL,
  `owner_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rto_web_vehicleregistration`
--

INSERT INTO `rto_web_vehicleregistration` (`id`, `make`, `model`, `manufacture_year`, `vin`, `mileage`, `engine`, `transmission`, `fuel`, `color`, `body_style`, `features`, `condition`, `ownership_history`, `price`, `location`, `registration_info`, `title_status`, `city_code`, `state_code`, `insurance`, `owner_address`, `owner_address_temp`, `owner_name`) VALUES
(1, 'Toyato', 'Carray', 2018, 'GJ -01-ZM-1948', '342', '1.8L Inline 4-cylinder', 'Automatic', 'Petrol', 'Silver', 'Sedan', 'wtgdrgdrg', '', 'dfdfgdfh', 54646.00, 'Gujrat', 'fdghdfh', 'dfhdh', '01', 'GJ ', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_tms_reg`
--

CREATE TABLE `web_tms_reg` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `cpassword` varchar(40) NOT NULL,
  `city` bigint(20) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `rto_web_appoinment_data`
--
ALTER TABLE `rto_web_appoinment_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rto_web_conta`
--
ALTER TABLE `rto_web_conta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rto_web_dl`
--
ALTER TABLE `rto_web_dl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rto_web_duplicatehistory`
--
ALTER TABLE `rto_web_duplicatehistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rto_web_office`
--
ALTER TABLE `rto_web_office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rto_web_otp`
--
ALTER TABLE `rto_web_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rto_web_payment`
--
ALTER TABLE `rto_web_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rto_web_registration`
--
ALTER TABLE `rto_web_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rto_web_renewalhistory`
--
ALTER TABLE `rto_web_renewalhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rto_web_vehicleregistration`
--
ALTER TABLE `rto_web_vehicleregistration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_tms_reg`
--
ALTER TABLE `web_tms_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `rto_web_appoinment_data`
--
ALTER TABLE `rto_web_appoinment_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `rto_web_conta`
--
ALTER TABLE `rto_web_conta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rto_web_dl`
--
ALTER TABLE `rto_web_dl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rto_web_duplicatehistory`
--
ALTER TABLE `rto_web_duplicatehistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rto_web_office`
--
ALTER TABLE `rto_web_office`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rto_web_otp`
--
ALTER TABLE `rto_web_otp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rto_web_payment`
--
ALTER TABLE `rto_web_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rto_web_registration`
--
ALTER TABLE `rto_web_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rto_web_renewalhistory`
--
ALTER TABLE `rto_web_renewalhistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rto_web_vehicleregistration`
--
ALTER TABLE `rto_web_vehicleregistration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_tms_reg`
--
ALTER TABLE `web_tms_reg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `school`
--
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `school`;

-- --------------------------------------------------------

--
-- Table structure for table `techers`
--

CREATE TABLE `techers` (
  `name` varchar(20) NOT NULL,
  `mobile_number` int(67) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(67) NOT NULL,
  `password` varchar(67) NOT NULL,
  `qualification` varchar(67) NOT NULL,
  `experience` int(67) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Database: `software_company`
--
CREATE DATABASE IF NOT EXISTS `software_company` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `software_company`;

-- --------------------------------------------------------

--
-- Table structure for table `empdetails`
--

CREATE TABLE `empdetails` (
  `eid` varchar(10) NOT NULL,
  `ename` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `desigation` varchar(25) NOT NULL,
  `salary` int(25) NOT NULL,
  `doj` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empdetails`
--

INSERT INTO `empdetails` (`eid`, `ename`, `dob`, `desigation`, `salary`, `doj`) VALUES
('E101', 'Suma', '2014-12-29', 'Designer', 20000, '2033-04-01'),
('E102', 'Amit', '1995-01-10', 'Programmer', 25000, '2018-02-18'),
('E103', 'Payal', '1985-08-15', 'Tester', 35000, '2011-06-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empdetails`
--
ALTER TABLE `empdetails`
  ADD PRIMARY KEY (`eid`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tms`
--
CREATE DATABASE IF NOT EXISTS `tms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tms`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add reg', 7, 'add_reg'),
(26, 'Can change reg', 7, 'change_reg'),
(27, 'Can delete reg', 7, 'delete_reg'),
(28, 'Can view reg', 7, 'view_reg'),
(29, 'Can add god', 8, 'add_god'),
(30, 'Can change god', 8, 'change_god'),
(31, 'Can delete god', 8, 'delete_god'),
(32, 'Can view god', 8, 'view_god'),
(33, 'Can add cont', 9, 'add_cont'),
(34, 'Can change cont', 9, 'change_cont'),
(35, 'Can delete cont', 9, 'delete_cont'),
(36, 'Can view cont', 9, 'view_cont'),
(37, 'Can add inqu', 10, 'add_inqu'),
(38, 'Can change inqu', 10, 'change_inqu'),
(39, 'Can delete inqu', 10, 'delete_inqu'),
(40, 'Can view inqu', 10, 'view_inqu');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$DRZd3RjEbxFhL51APwxokB$9f9cTkAsR/Xj1Vu0AJqTcllAVwvU0XOEk6JhfbF4kt0=', '2024-03-15 09:47:48.756228', 0, 'admin', '', '', 'admin@gmail.com', 0, 1, '2024-03-08 09:23:31.449245'),
(2, 'pbkdf2_sha256$720000$01mtgXPq7jHFgZ8stjNSzx$R1IgbPhFWup78nSeKn9Mu5EsyI5kog0I3XBM4Pk5Buo=', '2024-03-12 04:47:16.194767', 0, 'kathan', '', '', 'kathan@gmail.copm', 0, 1, '2024-03-12 04:47:10.092683'),
(3, 'pbkdf2_sha256$720000$FNjFw2N8SnI8DHR4gEIJWD$dSvP82hx4FGmO4GBYx5uMksNELldt8lGuTNcEU0Q4l4=', '2024-03-15 10:00:54.444479', 0, 'naz', '', '', 'naz123@gmail.com', 0, 1, '2024-03-12 06:59:05.593332');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'web_tms', 'cont'),
(8, 'web_tms', 'god'),
(10, 'web_tms', 'inqu'),
(7, 'web_tms', 'reg');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-08 09:11:35.539634'),
(2, 'auth', '0001_initial', '2024-03-08 09:11:36.007933'),
(3, 'admin', '0001_initial', '2024-03-08 09:11:36.101039'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-03-08 09:11:36.109191'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-08 09:11:36.114328'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-03-08 09:11:36.169002'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-03-08 09:11:36.224427'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-03-08 09:11:36.234977'),
(9, 'auth', '0004_alter_user_username_opts', '2024-03-08 09:11:36.240387'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-03-08 09:11:36.279845'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-03-08 09:11:36.283946'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-03-08 09:11:36.289185'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-03-08 09:11:36.299489'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-03-08 09:11:36.312990'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-03-08 09:11:36.323361'),
(16, 'auth', '0011_update_proxy_permissions', '2024-03-08 09:11:36.331172'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-03-08 09:11:36.341634'),
(18, 'sessions', '0001_initial', '2024-03-08 09:11:36.363429'),
(19, 'web_tms', '0001_initial', '2024-03-08 09:11:36.377207'),
(20, 'web_tms', '0002_alter_reg_city', '2024-03-08 09:23:20.441010'),
(21, 'web_tms', '0003_god', '2024-03-08 09:36:46.802497'),
(22, 'web_tms', '0004_cont', '2024-03-08 10:17:53.184576'),
(23, 'web_tms', '0005_inqu', '2024-03-08 10:31:55.550092'),
(24, 'web_tms', '0006_reg_gender_reg_mobile', '2024-03-12 06:50:55.146607'),
(25, 'web_tms', '0007_remove_god_a_mobile_god_email', '2024-03-15 08:43:50.511906');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2xmqv67v4by4esnvp5stnfl7tg3pmyoj', '.eJxVjDsOwjAQBe_iGlnEn3hNSZ8zWLveNQ6gRIqTCnF3iJQC2jcz76USbmtNW5MljawuyqrT70aYHzLtgO843Wad52ldRtK7og_a9DCzPK-H-3dQsdVvTcGL9IQdO3HGdOJZooFC3memAOCKcxDRRh8gxN5mONtg-oJsPQGo9wfu9Tee:1rl4Mw:xBBqSP5B6qmpVvs-HWcpBj9Rav9A3DvGH2My4LlyztY', '2024-03-29 10:00:54.459281');

-- --------------------------------------------------------

--
-- Table structure for table `web_tms_cont`
--

CREATE TABLE `web_tms_cont` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `message` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `web_tms_cont`
--

INSERT INTO `web_tms_cont` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'sdgsdg', 'dv@gamil.com', 'zsdfzdf', 'sdsafsdg'),
(2, 'sdgsdg', 'dv@gamil.com', 'zsdfzdf', 'sdsafsdg'),
(3, 'divya tiwari brijlal', 'dv@gamil.com', 'zsdfzdf', 'dsdgsdg'),
(4, 'divya tiwari brijlal', 'dv@gamil.com', 'zsdfzdf', 'dfgfgfg');

-- --------------------------------------------------------

--
-- Table structure for table `web_tms_god`
--

CREATE TABLE `web_tms_god` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `truck_type` varchar(40) NOT NULL,
  `p_city` varchar(40) NOT NULL,
  `d_city` varchar(40) NOT NULL,
  `goods` varchar(400) NOT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `web_tms_god`
--

INSERT INTO `web_tms_god` (`id`, `name`, `lname`, `mobile`, `truck_type`, `p_city`, `d_city`, `goods`, `email`) VALUES
(1, 'divya', 'tiwari', 6576543232, 'TATA ACE', '1', '3', 'furnuchrtyryg', NULL),
(2, 'naz', 'NA', 5675747474, 'TATA ACE', 'AHMEDABAD', 'BANGALORE', 'HF HHGF GJH GJGHJ JGJH JKM  ', NULL),
(3, 'naz', 'n', 7656777577, 'TATA ACE', 'AHMEDABAD', 'BANGALORE', 'fur', NULL),
(4, 'Abhishk', 'varma', 9825785020, 'CONTAINER 32 FT MXL', 'HYDERABAD', 'CHENNAI', 'Washing machines	', 'varma@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `web_tms_inqu`
--

CREATE TABLE `web_tms_inqu` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `subject` text NOT NULL,
  `message` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `web_tms_inqu`
--

INSERT INTO `web_tms_inqu` (`id`, `name`, `lname`, `mobile`, `email`, `subject`, `message`) VALUES
(1, 'ghgfh', 'fghfgh', 6576543232, 'tiwaridivya809@gmail.com', 'gfhfgh', 'fghfgh'),
(2, 'jhfhg', 'mnbmn', 9825785020, 'terminategodzilla@gmail.com', 'jhghj', 'hj'),
(3, 'fghgh', 'tgyhtgh', 34567895655, 'ffghfhgf', 'nncnfbn', 'hngfngf'),
(4, 'sfgdfg', 'hdh', 56546456466, 'gdfgfg', 'A/23 gsjfg sjg\'hk hkg fmwe fhfg vhkfvb wsmnfbjh sdfgv fvg', 'fghfdhbfvb fvb '),
(5, 'dfhdh', 'dhdhdgh', 876543231263, 'gdfh@gmail.com', 'jhgsdf sdfghsjdf it\'df gdfj dfgfd jdfg dn v', 'fgjfgjh'),
(6, 'ghdh', 'yrtfhmn', 9875467536845, 'jhghgfg@gmail.com', 'A/34 dfgfdgh dghgf fgjh it\'hgvhfhv jhg h ng ', 'gvbnhjkhg');

-- --------------------------------------------------------

--
-- Table structure for table `web_tms_reg`
--

CREATE TABLE `web_tms_reg` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `cpassword` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `web_tms_reg`
--

INSERT INTO `web_tms_reg` (`id`, `name`, `email`, `password`, `cpassword`, `city`, `address`, `gender`, `mobile`) VALUES
(1, 'admin', 'tiwaridivya809@gmail.com', '123', '123', 'ahemdabad', 'ahemdabad', NULL, NULL),
(2, 'kathan', 'kathan@gmail.copm', '123', '123', 'mumbai', 'borivali', NULL, NULL),
(3, 'hina', 'hina@gmail.com', '123', '123', 'ahemdabad', 'ahemdabad', 'Female', 9865456644),
(4, 'naz', 'naz123@gmail.com', '123', '123', 'jharkhand', 'jatin', 'Male', 8757645646);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `web_tms_cont`
--
ALTER TABLE `web_tms_cont`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_tms_god`
--
ALTER TABLE `web_tms_god`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_tms_inqu`
--
ALTER TABLE `web_tms_inqu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_tms_reg`
--
ALTER TABLE `web_tms_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `web_tms_cont`
--
ALTER TABLE `web_tms_cont`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `web_tms_god`
--
ALTER TABLE `web_tms_god`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `web_tms_inqu`
--
ALTER TABLE `web_tms_inqu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `web_tms_reg`
--
ALTER TABLE `web_tms_reg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
