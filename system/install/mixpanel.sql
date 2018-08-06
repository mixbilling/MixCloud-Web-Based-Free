-- --------------------------------------------------------
-- Structure for 'tbl_appconfig'
--

CREATE TABLE `tbl_appconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Dump Data for `tbl_appconfig`
--

INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("1","CompanyName","HIJAUNET.ID");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("2","theme","default");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("3","currency_code","Rp.");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("4","language","english");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("5","show-logo","logo-inv.png");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("6","nstyle","blue");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("7","timezone","Asia/Jakarta");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("8","dec_point",",");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("9","thousands_sep",".");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("10","rtl","0");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("11","address","Jl.Ledjend Suparpto No.64 Sidoharjo, Pacitan");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("12","phone","0877 0229 9005");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("13","date_format","M/d/Y");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("14","note","");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("15","bank_name","Bank BRI");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("16","acc_name","HijauNet");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("17","acc_number","xxxx xxxx xxxx xxx");
INSERT INTO tbl_appconfig (`id`,`setting`,`value`) VALUES ("18","voucher_report","on-login");

-- --------------------------------------------------------
-- Structure for 'tbl_bandwidth'
--

CREATE TABLE `tbl_bandwidth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_bw` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate_down` int(10) unsigned NOT NULL,
  `rate_down_unit` enum('Kbps','Mbps') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate_up` int(10) unsigned NOT NULL,
  `rate_up_unit` enum('Kbps','Mbps') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `owner_id` int(10) NOT NULL,
  `owner_name` varchar(55) CHARACTER SET latin1 NOT NULL,  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Structure for 'tbl_customers'
--

CREATE TABLE `tbl_customers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET latin1 NOT NULL,
  `password` varchar(45) CHARACTER SET latin1 NOT NULL,
  `type` enum('Hotspot','PPPOE','STATIC') CHARACTER SET latin1 NOT NULL,
  `routers` varchar(32) CHARACTER SET latin1 NOT NULL,
  `plan_name` varchar(40) NOT NULL,
  `fullname` varchar(45) CHARACTER SET latin1 NOT NULL,
  `email` varchar(45) CHARACTER SET latin1 NOT NULL,
  `phonenumber` varchar(20) CHARACTER SET latin1 DEFAULT '0',
  `address` text CHARACTER SET latin1, 
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int(10) NOT NULL,
  `owner_name` varchar(55) CHARACTER SET latin1 NOT NULL, 
  `last_login` datetime DEFAULT NULL,
  `local_address` varchar(128) CHARACTER SET latin1 NOT NULL,
  `remote_address` varchar(128) CHARACTER SET latin1 NOT NULL,  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Structure for 'tbl_language'
--

CREATE TABLE `tbl_language` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `folder` varchar(32) NOT NULL,
  `author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Dump Data for `tbl_language`
--

INSERT INTO tbl_language (`id`,`name`,`folder`,`author`) VALUES ("1","Indonesia","indonesia","Ismail Marzuqi");
INSERT INTO tbl_language (`id`,`name`,`folder`,`author`) VALUES ("2","English","english","Ismail Marzuqi");

-- --------------------------------------------------------
-- Structure for 'tbl_logs'
--

CREATE TABLE `tbl_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `routers` varchar(32) CHARACTER SET latin1 NOT NULL,
  `type` varchar(50) NOT NULL,  
  `description` text NOT NULL,
  `userid` int(10) NOT NULL,
  `ip` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Structure for 'tbl_plans'
--

CREATE TABLE `tbl_plans` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_plan` varchar(40) CHARACTER SET latin1 NOT NULL,
  `id_bw` int(10) NOT NULL,
  `price` varchar(40) CHARACTER SET latin1 NOT NULL,
  `type` enum('Hotspot','PPPOE','STATIC') CHARACTER SET latin1 NOT NULL,
  `typebp` enum('Unlimited','Limited') CHARACTER SET latin1 DEFAULT NULL,
  `limit_type` enum('Time_Limit','Data_Limit','Both_Limit') CHARACTER SET latin1 DEFAULT NULL,
  `time_limit` int(10) unsigned DEFAULT NULL,
  `time_unit` enum('H','D','M') CHARACTER SET latin1 DEFAULT NULL,
  `data_limit` int(10) unsigned DEFAULT NULL,
  `data_unit` enum('M','G') CHARACTER SET latin1 DEFAULT NULL,
  `validity` int(10) NOT NULL,
  `validity_unit` enum('H','D','M') CHARACTER SET latin1 NOT NULL,
  `shared_users` int(10) DEFAULT NULL,
  `routers` varchar(32) CHARACTER SET latin1 NOT NULL,
  `pool` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `local_address` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `owner_id` int(10) NOT NULL,
  `owner_name` varchar(55) CHARACTER SET latin1 NOT NULL,   
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Structure for 'tbl_pool'
--

CREATE TABLE `tbl_pool` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pool_name` varchar(40) NOT NULL,
  `range_ip` varchar(40) NOT NULL,
  `routers` varchar(40) NOT NULL,
  `owner_id` int(10) NOT NULL,
  `owner_name` varchar(55) CHARACTER SET latin1 NOT NULL,   
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Structure for 'tbl_routers'
--

CREATE TABLE `tbl_routers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `ip_address` varchar(128) CHARACTER SET latin1 NOT NULL,
  `port` varchar(50) CHARACTER SET latin1 NOT NULL, 
  /*`status_check_format` varchar(128) CHARACTER SET latin1 NOT NULL,*/
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(60) CHARACTER SET latin1 NOT NULL,
  `hotspot_domain` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `usermanager` varchar(50) CHARACTER SET latin1 NOT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Structure for 'tbl_transactions'
--

CREATE TABLE `tbl_transactions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(25) NOT NULL,
  `username` varchar(32) NOT NULL,
  `fullname` varchar(45) CHARACTER SET latin1 NOT NULL, 
  `address` text CHARACTER SET latin1,  
  `plan_name` varchar(40) NOT NULL,
  `price` varchar(40) NOT NULL,
  `ppn` varchar(40) NOT NULL,
  `total` varchar(40) NOT NULL,  
  `recharged_on` date NOT NULL,
  `expiration` date NOT NULL,
  `time` time NOT NULL,
  `method` enum('voucher','member') NOT NULL,
  `routers` varchar(32) NOT NULL,
  `type` enum('Hotspot','PPPOE','STATIC') NOT NULL,
  `owner_id` int(10) NOT NULL,
  `owner_name` varchar(55) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Structure for 'tbl_user_recharges'
--

CREATE TABLE `tbl_user_recharges` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `username` varchar(32) CHARACTER SET latin1 NOT NULL,
  `plan_id` int(10) NOT NULL,
  `namebp` varchar(40) CHARACTER SET latin1 NOT NULL,
  `recharged_on` date NOT NULL,
  `expiration` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(20) CHARACTER SET latin1 NOT NULL,
  `method` enum('voucher','member') CHARACTER SET latin1 NOT NULL,
  `routers` varchar(32) CHARACTER SET latin1 NOT NULL,
  `owner_id` int(10) NOT NULL,
  `owner_name` varchar(55) CHARACTER SET latin1 NOT NULL,  
  `type` varchar(15) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Structure for 'tbl_users'
--

CREATE TABLE `tbl_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `fullname` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `password` text CHARACTER SET latin1 NOT NULL,
  `user_type` enum('Admin','Sales') CHARACTER SET latin1 NOT NULL,
  `profile_img` varchar(50),
  `router_name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `permission` varchar(128) CHARACTER SET latin1 NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET latin1 NOT NULL DEFAULT 'Active',
  `last_login` datetime DEFAULT NULL,
  `creationdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Dump Data for `tbl_users`
--

INSERT INTO tbl_users (`id`,`username`,`fullname`,`password`,`user_type`,`profile_img`,`permission`,`status`,`last_login`,`creationdate`) VALUES ("1","hijaunet","Administrator","$1$bo3.Ij1.$ohwo60hs.1XleohdpyjqX0","Admin","admin_default.png","Full Administrator","Active","2018-01-01 00:00:00","2018-01-01 00:00:00");
INSERT INTO tbl_users (`id`,`username`,`fullname`,`password`,`user_type`,`profile_img`,`permission`,`status`,`last_login`,`creationdate`) VALUES ("2","monitor","Administrator","$1$JTRYWstr$pydptrk4rwHkksuFT4I0j/","Admin","admin_default.png","Monitoring","Active","2018-01-01 00:00:00","2018-01-01 00:00:00");
INSERT INTO tbl_users (`id`,`username`,`fullname`,`password`,`user_type`,`profile_img`,`permission`,`status`,`last_login`,`creationdate`) VALUES ("3","demo","Administrator","$1$EKtj/lt.$UQWk8wNBIQo/R280eCc0w.","Admin","admin_default.png","Read Only","Active","2018-01-01 00:00:00","2018-01-01 00:00:00");

-- --------------------------------------------------------
-- Structure for 'tbl_voucher'
--

CREATE TABLE `tbl_voucher` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) NOT NULL,
  `owner_name` varchar(55) CHARACTER SET latin1 NOT NULL,
  `type` enum('Hotspot','PPPOE','STATIC') CHARACTER SET latin1 NOT NULL,
  `routers` varchar(32) CHARACTER SET latin1 NOT NULL,
  `id_plan` int(10) NOT NULL,
  `code` varchar(55) CHARACTER SET latin1 NOT NULL,
  `secret` varchar(45) CHARACTER SET latin1 NOT NULL,
  `created_date` date NOT NULL,  
  `status` varchar(25) CHARACTER SET latin1 NOT NULL,  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Structure for 'tbl_usm_customers'
--

CREATE TABLE `tbl_usm_customers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `c_usm_id` varchar(45) CHARACTER SET latin1 NOT NULL,
  `username` varchar(45) CHARACTER SET latin1 NOT NULL,
  `password` varchar(45) CHARACTER SET latin1 NOT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Structure for 'tbl_activation'
--

CREATE TABLE `tbl_activation` (
  `id` enum('1') NOT NULL,
  `email` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `request_id` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `hardware_id` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `software_key` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '',  
  `activation_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Structure for 'usersdata'
--

CREATE TABLE `usersdata` (
  `id` int(11) NOT NULL,
  `oauth_pro` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `oauthid` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_name` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `l_name` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `email_id` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `gender` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `locale` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `cover` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `picture` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
