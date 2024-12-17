-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 05:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `selfdistraction`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_tblbadmin`
--

CREATE TABLE `app_tblbadmin` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_tblbadmin`
--

INSERT INTO `app_tblbadmin` (`id`, `name`, `username`, `password`, `status`) VALUES
(1, 'badmin', 'badmin', '123', 'Deactive');

-- --------------------------------------------------------

--
-- Table structure for table `app_tblfile`
--

CREATE TABLE `app_tblfile` (
  `id` bigint(20) NOT NULL,
  `file` varchar(100) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `create_on` date NOT NULL,
  `modify_on` date NOT NULL,
  `expriey_on` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `request` tinyint(1) NOT NULL,
  `delete_on` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_tblfile`
--

INSERT INTO `app_tblfile` (`id`, `file`, `filename`, `create_on`, `modify_on`, `expriey_on`, `status`, `user_id`, `request`, `delete_on`) VALUES
(1, 'file/Naresh_Resume_2.pdf', 'sample', '2024-01-31', '2024-02-01', '2025-02-01', 'Activate', 1, 0, 0),
(2, 'file/MyThrei_resume_corp.docx.pdf', 'test', '2024-01-31', '2024-02-01', '2025-02-01', 'Activate', 1, 0, 0),
(3, 'file/PG_Titles-2024.docx', 'mysql class', '2024-02-01', '2024-02-01', '2025-02-01', 'Activate', 1, 0, 0),
(4, 'file/PROFILE_Naresh.docx', 'test123', '2024-02-01', '2024-02-01', '2025-02-01', 'Activate', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_tbluser`
--

CREATE TABLE `app_tbluser` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `on_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_tbluser`
--

INSERT INTO `app_tbluser` (`id`, `username`, `mobile`, `email`, `password`, `on_delete`) VALUES
(1, 'naresh', '7373899296', 'nareshkaruna23@gmail.com', '123', 0);

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
(25, 'Can add tblbadmin', 7, 'add_tblbadmin'),
(26, 'Can change tblbadmin', 7, 'change_tblbadmin'),
(27, 'Can delete tblbadmin', 7, 'delete_tblbadmin'),
(28, 'Can view tblbadmin', 7, 'view_tblbadmin'),
(29, 'Can add tbluser', 8, 'add_tbluser'),
(30, 'Can change tbluser', 8, 'change_tbluser'),
(31, 'Can delete tbluser', 8, 'delete_tbluser'),
(32, 'Can view tbluser', 8, 'view_tbluser'),
(33, 'Can add tblfile', 9, 'add_tblfile'),
(34, 'Can change tblfile', 9, 'change_tblfile'),
(35, 'Can delete tblfile', 9, 'delete_tblfile'),
(36, 'Can view tblfile', 9, 'view_tblfile');

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
(1, 'pbkdf2_sha256$600000$e1RHfGxjEowgn6PeopcEvr$2eZfMt6v1NZZHxOHWqfAio5ViV7UShOas0rmMcUfZSg=', '2024-02-01 12:45:23.115448', 1, 'admin', '', '', 'admin@email.com', 1, 1, '2024-01-30 08:25:48.219412');

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
(7, 'App', 'tblbadmin'),
(9, 'App', 'tblfile'),
(8, 'App', 'tbluser'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2024-01-30 08:20:46.799197'),
(2, 'auth', '0001_initial', '2024-01-30 08:20:47.432088'),
(3, 'admin', '0001_initial', '2024-01-30 08:20:47.563783'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-01-30 08:20:47.578773'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-30 08:20:47.598762'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-01-30 08:20:47.774654'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-01-30 08:20:47.842715'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-01-30 08:20:47.864700'),
(9, 'auth', '0004_alter_user_username_opts', '2024-01-30 08:20:47.887686'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-01-30 08:20:47.947648'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-01-30 08:20:47.952646'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-01-30 08:20:47.971633'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-01-30 08:20:47.992622'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-01-30 08:20:48.015607'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-01-30 08:20:48.056581'),
(16, 'auth', '0011_update_proxy_permissions', '2024-01-30 08:20:48.087563'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-01-30 08:20:48.111548'),
(18, 'sessions', '0001_initial', '2024-01-30 08:20:48.159520'),
(19, 'App', '0001_initial', '2024-01-30 12:28:35.939502'),
(20, 'App', '0002_alter_tblbadmin_status', '2024-01-30 12:44:13.027386'),
(21, 'App', '0003_tbluser', '2024-01-31 04:35:20.360428'),
(22, 'App', '0004_tblfile', '2024-01-31 07:01:13.461430'),
(23, 'App', '0005_tblfile_request', '2024-02-01 05:18:49.833836'),
(24, 'App', '0006_tblfile_delete_on', '2024-02-01 07:29:54.617485');

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
('87x2qfseqimshpr2d75k10e5g6mk5qrs', 'eyJ1c2VyIjoibmFyZXNoIn0:1rV2br:e6PmaHEUUh2CNrL6SYEWjNUVVxqH23beT0i80LF6VeM', '2024-02-14 04:54:03.680747'),
('8crjrkttb5gl43howla5deeiyoig69rk', 'eyJ1c2VyIjoibmFyZXNoIn0:1rVS3Z:NN0tIRZWVYZiodnaiA_F9CGZJWtIJ4HHye1abvDRkoQ', '2024-02-15 08:04:21.094724'),
('t1xe4cnlbeetif742mzhvokxyddmfs6v', 'eyJ1c2VyIjoibmFyZXNoIn0:1rV2cR:x1duV9F5H-SIxo9pP8bMZBLzlBVtrVfzPV6CpO8v8ZA', '2024-02-14 04:54:39.445361');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_tblbadmin`
--
ALTER TABLE `app_tblbadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_tblfile`
--
ALTER TABLE `app_tblfile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `App_tblfile_user_id_7deae3ab_fk_App_tbluser_id` (`user_id`);

--
-- Indexes for table `app_tbluser`
--
ALTER TABLE `app_tbluser`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_tblbadmin`
--
ALTER TABLE `app_tblbadmin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_tblfile`
--
ALTER TABLE `app_tblfile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_tbluser`
--
ALTER TABLE `app_tbluser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_tblfile`
--
ALTER TABLE `app_tblfile`
  ADD CONSTRAINT `App_tblfile_user_id_7deae3ab_fk_App_tbluser_id` FOREIGN KEY (`user_id`) REFERENCES `app_tbluser` (`id`);

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
