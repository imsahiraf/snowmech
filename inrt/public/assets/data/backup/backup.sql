#
# TABLE STRUCTURE FOR: admin
#

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES (1, NULL, NULL, NULL, 'admin@demo.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL, '2021-04-22 03:05:25', '2021-04-12 08:24:08', '::1', 1, 1);
INSERT INTO `admin` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES (2, 'bdtask', 'limited', 'test test tet', 'example@demo.com', '25d55ad283aa400af464c76d713c07ad', NULL, '/upload/dashboard1618226272_e72283105bbbd6913a08.jpg', NULL, NULL, NULL, 1, 2);
INSERT INTO `admin` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES (3, 'Torun', 'Hassan', 'rtest hi here now', 'mehedi@demo.com', 'f5f091a697cd91c4170cda38e81f4b1a', NULL, '/upload/dashboard1618229776_09ffcdc08f682dbd037b.jpg', NULL, NULL, NULL, 1, 2);
INSERT INTO `admin` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES (4, 'Mirazul', 'Islam', 'hello bangladesh', 'miraz@demo.com', '25d55ad283aa400af464c76d713c07ad', NULL, '/upload/dashboard1618231925_80e1cae058c82ee08a0e.jpg', NULL, NULL, NULL, 1, 2);


#
# TABLE STRUCTURE FOR: advertisement
#

DROP TABLE IF EXISTS `advertisement`;

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `script` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `serial_position` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (1, 'coinmarket-top', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 1, 1, '2019-01-15 07:40:54');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (2, 'coinmarket-bottom', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 2, 1, '2019-01-15 07:40:54');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (3, 'exchange-top', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 1, 1, '2019-01-15 07:40:54');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (4, 'exchange-bottom', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 2, 1, '2019-01-15 07:40:54');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (5, 'news-sidebar-top', 7, 'upload/advertisement/dff78ee612b37fc12c9e7fa94839d855.jpg', NULL, 'https://www.bdtask.com/', 6, 1, '2019-01-15 07:56:21');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (6, 'news-sidebar-bottom', 7, 'upload/advertisement/7fabc49dd69e0a0d6e111f3fcae0118a.jpg', NULL, 'https://www.bdtask.com/', 7, 1, '2019-01-15 07:59:50');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (7, 'news-top', 7, 'upload/advertisement/430370437495d1a5eb9031a7505d2d13.png', NULL, 'https://www.bdtask.com/', 8, 1, '2019-01-15 08:04:08');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (8, 'news-bottom', 7, 'upload/advertisement/544f538275dae3b46b917ab60f68c316.png', NULL, 'https://www.bdtask.com/', 9, 1, '2019-01-15 08:11:04');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (9, 'news details-top', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 3, 1, '2019-01-15 07:40:54');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (10, 'news details-bottom', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 4, 1, '2019-01-15 07:40:54');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (11, 'news details-sidebar-top', 7, 'upload/advertisement/a8ebbac00256de66da640053639f5644.png', NULL, 'https://www.bdtask.com/', 1, 1, '2019-01-15 07:55:36');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (12, 'news details-sidebar-bottom', 7, 'upload/advertisement/a8ebbac00256de66da640053639f5644.png', NULL, 'https://www.bdtask.com/', 2, 1, '2019-01-15 07:40:54');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (13, 'Price-bottom', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 5, 1, '2019-01-15 07:40:54');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (14, 'Price-top', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 3, 1, '2019-01-15 07:40:54');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (15, 'Price-middle', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 4, 1, '2019-01-15 07:40:54');
INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES (16, 'Price-sidebar-top', 7, 'upload/advertisement/a8ebbac00256de66da640053639f5644.png', NULL, 'https://www.bdtask.com/', 1, 1, '2019-01-15 07:40:54');


#
# TABLE STRUCTURE FOR: coin_setup
#

DROP TABLE IF EXISTS `coin_setup`;

CREATE TABLE `coin_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `pair_with` varchar(10) NOT NULL,
  `wallet` varchar(300) NOT NULL,
  `create_wallet` tinyint(1) NOT NULL DEFAULT 0,
  `white_paper` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `coin_setup` (`id`, `name`, `symbol`, `pair_with`, `wallet`, `create_wallet`, `white_paper`) VALUES (1, 'BDtask coin', 'BTKu', 'USD', 'af105c4e92898b5158e965bcbf4fa238', 1, 'upload/pdf//1618891428_b57a403a302f304daa98.pdf');


#
# TABLE STRUCTURE FOR: coinpayments_payments
#

DROP TABLE IF EXISTS `coinpayments_payments`;

CREATE TABLE `coinpayments_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount1` double NOT NULL,
  `amount2` double NOT NULL,
  `buyer_name` varchar(100) NOT NULL,
  `currency1` varchar(100) NOT NULL,
  `currency2` varchar(100) NOT NULL,
  `fee` double NOT NULL,
  `ipn_id` text NOT NULL,
  `ipn_mode` varchar(20) NOT NULL,
  `ipn_type` varchar(20) NOT NULL,
  `ipn_version` varchar(20) NOT NULL,
  `merchant` text NOT NULL,
  `received_amount` double NOT NULL,
  `received_confirms` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `status_text` text NOT NULL,
  `txn_id` text NOT NULL,
  `user_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: crypto_payments
#

DROP TABLE IF EXISTS `crypto_payments`;

CREATE TABLE `crypto_payments` (
  `paymentID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `boxID` int(11) unsigned NOT NULL DEFAULT 0,
  `boxType` enum('paymentbox','captchabox') NOT NULL,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `userID` varchar(50) NOT NULL DEFAULT '',
  `countryID` varchar(3) NOT NULL DEFAULT '',
  `coinLabel` varchar(6) NOT NULL DEFAULT '',
  `amount` double(20,8) NOT NULL DEFAULT 0.00000000,
  `amountUSD` double(20,8) NOT NULL DEFAULT 0.00000000,
  `unrecognised` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `addr` varchar(34) NOT NULL DEFAULT '',
  `txID` char(64) NOT NULL DEFAULT '',
  `txDate` datetime DEFAULT NULL,
  `txConfirmed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `txCheckDate` datetime DEFAULT NULL,
  `processed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `processedDate` datetime DEFAULT NULL,
  `recordCreated` datetime DEFAULT NULL,
  PRIMARY KEY (`paymentID`),
  UNIQUE KEY `key3` (`boxID`,`orderID`,`userID`,`txID`,`amount`,`addr`),
  KEY `boxID` (`boxID`),
  KEY `boxType` (`boxType`),
  KEY `userID` (`userID`),
  KEY `countryID` (`countryID`),
  KEY `orderID` (`orderID`),
  KEY `amount` (`amount`),
  KEY `amountUSD` (`amountUSD`),
  KEY `coinLabel` (`coinLabel`),
  KEY `unrecognised` (`unrecognised`),
  KEY `addr` (`addr`),
  KEY `txID` (`txID`),
  KEY `txDate` (`txDate`),
  KEY `txConfirmed` (`txConfirmed`),
  KEY `txCheckDate` (`txCheckDate`),
  KEY `processed` (`processed`),
  KEY `processedDate` (`processedDate`),
  KEY `recordCreated` (`recordCreated`),
  KEY `key1` (`boxID`,`orderID`),
  KEY `key2` (`boxID`,`orderID`,`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: dbt_affiliation
#

DROP TABLE IF EXISTS `dbt_affiliation`;

CREATE TABLE `dbt_affiliation` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `commission` double(19,8) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dbt_affiliation` (`id`, `type`, `commission`, `status`) VALUES (1, 'PERCENT', '10.00000000', 1);


#
# TABLE STRUCTURE FOR: dbt_balance
#

DROP TABLE IF EXISTS `dbt_balance`;

CREATE TABLE `dbt_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `balance` double(19,8) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (1, '8NS5Y4', '244823.40700000', '2021-04-10 11:18:21');
INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (2, '6U1OP5', '84446.83320000', '2020-06-14 13:51:07');
INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (3, 'W1R3J3', '99999999500.00000000', '2020-04-06 23:17:42');
INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (4, '10QZ56', '67969.30000000', '2020-03-31 12:03:32');
INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (5, 'BX8333', '114700.00000000', '2020-04-08 19:20:01');
INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (6, 'SIRWH9', '200000.00000000', '2019-01-17 05:46:04');
INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (7, 'UGMOCC', '150200.00000000', '2019-02-24 09:29:54');
INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (8, 'X2NL8S', '130150.00000000', '2019-02-24 09:31:16');
INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (9, 'N2LDPD', '125000.00000000', '2019-01-17 05:47:21');
INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (10, 'C5PTTH', '160000.00000000', '2019-01-17 05:47:47');
INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (11, '2', '1000.00000000', '2020-03-22 12:05:59');
INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (12, 'Train', '500.00000000', '2020-03-23 05:52:27');
INSERT INTO `dbt_balance` (`id`, `user_id`, `balance`, `last_update`) VALUES (13, '324234', '324234234.00000000', '2020-04-02 03:30:57');


#
# TABLE STRUCTURE FOR: dbt_balance_log
#

DROP TABLE IF EXISTS `dbt_balance_log`;

CREATE TABLE `dbt_balance_log` (
  `log_id` bigint(22) NOT NULL AUTO_INCREMENT,
  `balance_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `transaction_amount` double(19,8) NOT NULL,
  `transaction_fees` double(19,8) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('1', 1, '8NS5Y4', 'CREDITED', '100000.00000000', '0.00000000', '172.68.146.105', '2019-01-17 05:43:12');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('2', 1, '8NS5Y4', 'CREDITED', '200000.00000000', '0.00000000', '172.69.134.160', '2019-01-17 05:43:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('3', 2, '6U1OP5', 'CREDITED', '90000.00000000', '0.00000000', '172.68.146.105', '2019-01-17 05:43:57');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('4', 3, 'W1R3J3', 'CREDITED', '105000.00000000', '0.00000000', '172.69.134.160', '2019-01-17 05:44:32');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('5', 4, '10QZ56', 'CREDITED', '80000.00000000', '0.00000000', '172.68.146.105', '2019-01-17 05:45:15');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('6', 5, 'BX8333', 'CREDITED', '120000.00000000', '0.00000000', '172.69.134.160', '2019-01-17 05:45:46');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('7', 6, 'SIRWH9', 'CREDITED', '200000.00000000', '0.00000000', '172.69.134.160', '2019-01-17 05:46:04');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('8', 7, 'UGMOCC', 'CREDITED', '150000.00000000', '0.00000000', '172.69.134.190', '2019-01-17 05:46:22');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('9', 8, 'X2NL8S', 'CREDITED', '130000.00000000', '0.00000000', '172.69.134.190', '2019-01-17 05:46:52');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('10', 9, 'N2LDPD', 'CREDITED', '125000.00000000', '0.00000000', '172.68.146.243', '2019-01-17 05:47:21');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('11', 10, 'C5PTTH', 'CREDITED', '160000.00000000', '0.00000000', '172.68.146.243', '2019-01-17 05:47:47');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('12', 1, '8NS5Y4', 'BUY', '100.00000000', '0.00000000', '172.68.146.243', '2019-01-17 12:11:30');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('13', 2, '6U1OP5', 'BUY', '90.00000000', '0.00000000', '172.69.134.130', '2019-01-17 12:12:52');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('14', 3, 'W1R3J3', 'BUY', '110.00000000', '0.00000000', '172.69.135.29', '2019-01-17 12:14:01');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('15', 3, 'W1R3J3', 'BUY', '140.00000000', '0.00000000', '172.69.135.29', '2019-01-17 12:14:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('16', 1, '8NS5Y4', 'BUY', '130.00000000', '0.00000000', '162.158.165.53', '2019-01-17 12:14:43');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('17', 4, '10QZ56', 'BUY', '150.00000000', '0.00000000', '162.158.165.89', '2019-01-17 12:16:24');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('18', 4, '10QZ56', 'BUY', '160.00000000', '0.00000000', '162.158.165.89', '2019-01-17 12:16:38');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('19', 5, 'BX8333', 'BUY', '500.00000000', '0.00000000', '172.69.134.160', '2019-01-17 12:18:33');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('20', 1, '8NS5Y4', 'BUY', '1200.00000000', '0.00000000', '172.68.146.105', '2019-01-17 12:18:57');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('21', 3, 'W1R3J3', 'BUY', '800.00000000', '0.00000000', '162.158.165.107', '2019-01-17 12:24:29');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('22', 4, '10QZ56', 'BUY', '1600.00000000', '0.00000000', '172.68.146.105', '2019-01-17 12:26:05');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('23', 5, 'BX8333', 'BUY', '1300.00000000', '0.00000000', '172.68.146.243', '2019-01-17 12:28:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('24', 2, '6U1OP5', 'BUY', '1100.00000000', '0.00000000', '162.158.165.89', '2019-01-17 12:29:43');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('25', 1, '8NS5Y4', 'BUY', '100.00000000', '0.00000000', '172.69.134.142', '2019-01-17 13:56:36');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('26', 2, '6U1OP5', 'SELL', '100.00000000', '0.00000000', '172.69.134.142', '2019-01-17 13:56:36');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('27', 2, '6U1OP5', 'BUY', '123.00000000', '0.00000000', '172.69.134.142', '2019-01-17 13:57:38');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('28', 1, '8NS5Y4', 'SELL', '123.00000000', '0.00000000', '172.69.134.142', '2019-01-17 13:57:38');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('29', 1, '8NS5Y4', 'BUY', '124.20000000', '0.00000000', '172.68.146.243', '2019-01-17 13:58:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('30', 2, '6U1OP5', 'SELL', '124.20000000', '0.00000000', '172.68.146.243', '2019-01-17 13:58:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('31', 2, '6U1OP5', 'BUY', '105.00000000', '0.00000000', '162.158.166.96', '2019-01-17 13:59:41');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('32', 1, '8NS5Y4', 'SELL', '105.00000000', '0.00000000', '162.158.166.96', '2019-01-17 13:59:41');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('33', 1, '8NS5Y4', 'BUY', '106.50000000', '0.00000000', '162.158.165.89', '2019-01-17 14:00:35');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('34', 2, '6U1OP5', 'SELL', '106.50000000', '0.00000000', '162.158.165.89', '2019-01-17 14:00:35');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('35', 2, '6U1OP5', 'BUY', '151.20000000', '0.00000000', '162.158.165.53', '2019-01-17 14:01:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('36', 1, '8NS5Y4', 'SELL', '151.20000000', '0.00000000', '162.158.165.53', '2019-01-17 14:01:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('37', 1, '8NS5Y4', 'BUY', '85.20000000', '0.00000000', '172.69.134.190', '2019-01-17 14:02:35');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('38', 2, '6U1OP5', 'SELL', '85.20000000', '0.00000000', '172.69.134.190', '2019-01-17 14:02:35');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('39', 2, '6U1OP5', 'BUY', '168.00000000', '0.00000000', '172.69.134.142', '2019-01-17 14:03:36');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('40', 1, '8NS5Y4', 'SELL', '168.00000000', '0.00000000', '172.69.134.142', '2019-01-17 14:03:37');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('41', 1, '8NS5Y4', 'BUY', '149.80000000', '0.00000000', '172.69.134.160', '2019-01-17 14:04:36');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('42', 2, '6U1OP5', 'SELL', '149.80000000', '0.00000000', '172.69.134.160', '2019-01-17 14:04:36');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('43', 2, '6U1OP5', 'BUY', '108.50000000', '0.00000000', '172.69.134.160', '2019-01-17 14:05:39');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('44', 1, '8NS5Y4', 'SELL', '108.50000000', '0.00000000', '172.69.134.160', '2019-01-17 14:05:39');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('45', 1, '8NS5Y4', 'BUY', '121.00000000', '0.00000000', '172.68.146.201', '2019-01-17 14:06:38');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('46', 2, '6U1OP5', 'SELL', '121.00000000', '0.00000000', '172.68.146.201', '2019-01-17 14:06:38');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('47', 2, '6U1OP5', 'BUY', '133.80000000', '0.00000000', '172.69.134.130', '2019-01-17 14:07:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('48', 1, '8NS5Y4', 'SELL', '133.80000000', '0.00000000', '172.69.134.130', '2019-01-17 14:07:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('49', 1, '8NS5Y4', 'BUY', '146.90000000', '0.00000000', '172.69.134.160', '2019-01-17 14:08:35');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('50', 2, '6U1OP5', 'SELL', '146.90000000', '0.00000000', '172.69.134.160', '2019-01-17 14:08:35');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('51', 2, '6U1OP5', 'BUY', '161.00000000', '0.00000000', '162.158.165.89', '2019-01-17 14:09:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('52', 1, '8NS5Y4', 'SELL', '161.00000000', '0.00000000', '162.158.165.89', '2019-01-17 14:09:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('53', 1, '8NS5Y4', 'BUY', '169.50000000', '0.00000000', '172.69.134.190', '2019-01-17 14:11:44');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('54', 2, '6U1OP5', 'SELL', '169.50000000', '0.00000000', '172.69.134.190', '2019-01-17 14:11:44');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('55', 2, '6U1OP5', 'BUY', '178.40000000', '0.00000000', '162.158.165.89', '2019-01-17 14:12:40');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('56', 1, '8NS5Y4', 'SELL', '178.40000000', '0.00000000', '162.158.165.89', '2019-01-17 14:12:40');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('57', 1, '8NS5Y4', 'BUY', '185.30000000', '0.00000000', '172.69.134.142', '2019-01-17 14:13:58');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('58', 2, '6U1OP5', 'SELL', '185.30000000', '0.00000000', '172.69.134.142', '2019-01-17 14:13:58');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('59', 2, '6U1OP5', 'BUY', '201.60000000', '0.00000000', '172.68.146.201', '2019-01-17 14:14:57');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('60', 1, '8NS5Y4', 'SELL', '201.60000000', '0.00000000', '172.68.146.201', '2019-01-17 14:14:57');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('61', 3, 'W1R3J3', 'BUY', '216.60000000', '0.00000000', '172.69.134.160', '2019-01-17 14:16:39');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('62', 3, 'W1R3J3', 'BUY', '115.00000000', '0.00000000', '172.69.134.130', '2019-01-17 14:19:48');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('63', 4, '10QZ56', 'SELL', '114.00000000', '0.00000000', '172.69.134.130', '2019-01-17 14:19:48');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('64', 3, 'W1R3J3', 'ADJUSTMENT', '1.90000000', '0.00000000', '172.69.134.130', '2019-01-17 14:19:48');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('65', 4, '10QZ56', 'BUY', '128.15000000', '0.00000000', '172.68.146.243', '2019-01-17 14:21:03');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('66', 4, '10QZ56', 'SELL', '115.00000000', '0.00000000', '172.68.146.243', '2019-01-17 14:21:03');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('67', 4, '10QZ56', 'ADJUSTMENT', '1.65000000', '0.00000000', '172.68.146.243', '2019-01-17 14:21:03');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('68', 4, '10QZ56', 'SELL', '125.40000000', '0.00000000', '172.68.146.243', '2019-01-17 14:21:03');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('69', 4, '10QZ56', 'ADJUSTMENT', '2.25000000', '0.00000000', '172.68.146.243', '2019-01-17 14:21:03');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('70', 3, 'W1R3J3', 'BUY', '102.60000000', '0.00000000', '172.68.146.105', '2019-01-17 14:22:35');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('71', 3, 'W1R3J3', 'EXCHANGE_CANCEL', '102.60000000', '0.00000000', '172.69.134.160', '2019-01-17 14:22:50');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('72', 3, 'W1R3J3', 'EXCHANGE_CANCEL', '216.60000000', '0.00000000', '172.69.134.160', '2019-01-17 14:22:51');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('73', 3, 'W1R3J3', 'BUY', '162.40000000', '0.00000000', '172.69.134.160', '2019-01-17 14:23:51');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('74', 4, '10QZ56', 'SELL', '162.40000000', '0.00000000', '172.69.134.160', '2019-01-17 14:23:51');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('75', 4, '10QZ56', 'BUY', '176.25000000', '0.00000000', '162.158.165.107', '2019-01-17 14:24:32');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('76', 3, 'W1R3J3', 'SELL', '176.25000000', '0.00000000', '162.158.165.107', '2019-01-17 14:24:32');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('77', 3, 'W1R3J3', 'BUY', '190.40000000', '0.00000000', '172.69.134.142', '2019-01-17 14:25:09');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('78', 4, '10QZ56', 'SELL', '190.40000000', '0.00000000', '172.69.134.142', '2019-01-17 14:25:09');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('79', 4, '10QZ56', 'BUY', '204.00000000', '0.00000000', '172.68.146.243', '2019-01-17 14:26:36');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('80', 3, 'W1R3J3', 'SELL', '204.00000000', '0.00000000', '172.68.146.243', '2019-01-17 14:26:36');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('81', 4, '10QZ56', 'BUY', '194.40000000', '0.00000000', '172.68.144.104', '2019-01-17 14:28:36');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('82', 3, 'W1R3J3', 'SELL', '194.40000000', '0.00000000', '172.68.144.104', '2019-01-17 14:28:36');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('83', 3, 'W1R3J3', 'BUY', '204.00000000', '0.00000000', '172.69.134.130', '2019-01-17 14:29:32');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('84', 4, '10QZ56', 'SELL', '204.00000000', '0.00000000', '172.69.134.130', '2019-01-17 14:29:32');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('85', 1, '8NS5Y4', 'DEPOSIT', '200.00000000', '0.00000000', '162.158.155.198', '2019-02-24 08:47:17');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('86', 1, '8NS5Y4', 'DEPOSIT', '500.00000000', '0.00000000', '162.158.154.143', '2019-02-24 09:02:02');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('87', 1, '8NS5Y4', 'DEPOSIT', '100.00000000', '2.00000000', '141.101.98.62', '2019-02-24 09:09:33');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('88', 1, '8NS5Y4', 'DEPOSIT', '200.00000000', '4.00000000', '141.101.98.62', '2019-02-24 09:10:19');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('89', 1, '8NS5Y4', 'DEPOSIT', '120.00000000', '2.40000000', '141.101.99.159', '2019-02-24 09:11:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('90', 1, '8NS5Y4', 'DEPOSIT', '1000.00000000', '20.00000000', '141.101.98.62', '2019-02-24 09:13:36');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('91', 1, '8NS5Y4', 'DEPOSIT', '2000.00000000', '40.00000000', '141.101.99.159', '2019-02-24 09:15:19');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('92', 1, '8NS5Y4', 'WITHDRAW', '200.00000000', '4.00000000', '141.101.99.159', '2019-02-24 09:19:56');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('93', 1, '8NS5Y4', 'WITHDRAW', '300.00000000', '6.00000000', '141.101.98.62', '2019-02-24 09:21:37');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('94', 1, '8NS5Y4', 'WITHDRAW', '500.00000000', '10.00000000', '141.101.98.62', '2019-02-24 09:22:16');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('95', 1, '8NS5Y4', 'WITHDRAW', '2000.00000000', '40.00000000', '141.101.99.159', '2019-02-24 09:22:56');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('96', 1, '8NS5Y4', 'WITHDRAW', '-2000.00000000', '40.00000000', '162.158.154.53', '2019-02-24 09:23:36');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('97', 1, '8NS5Y4', 'TRANSFER', '200.00000000', '6.00000000', '141.101.99.159', '2019-02-24 09:27:03');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('98', 5, 'BX8333', 'RECEIVED', '200.00000000', '6.00000000', '141.101.99.159', '2019-02-24 09:27:03');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('99', 1, '8NS5Y4', 'TRANSFER', '100.00000000', '3.00000000', '141.101.98.62', '2019-02-24 09:28:24');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('100', 4, '10QZ56', 'RECEIVED', '100.00000000', '3.00000000', '141.101.98.62', '2019-02-24 09:28:24');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('101', 1, '8NS5Y4', 'TRANSFER', '200.00000000', '6.00000000', '141.101.99.159', '2019-02-24 09:29:17');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('102', 7, 'UGMOCC', 'RECEIVED', '200.00000000', '6.00000000', '141.101.99.159', '2019-02-24 09:29:17');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('103', 1, '8NS5Y4', 'TRANSFER', '150.00000000', '4.50000000', '141.101.99.159', '2019-02-24 09:30:35');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('104', 8, 'X2NL8S', 'RECEIVED', '150.00000000', '4.50000000', '141.101.99.159', '2019-02-24 09:30:35');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('105', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.98.62', '2019-02-24 09:34:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('106', 1, '8NS5Y4', 'INVESTMENT', '800.00000000', '0.00000000', '141.101.99.159', '2019-02-24 09:34:47');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('107', 1, '8NS5Y4', 'INVESTMENT', '400.00000000', '0.00000000', '141.101.99.159', '2019-02-24 09:35:04');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('108', 1, '8NS5Y4', 'INVESTMENT', '800.00000000', '0.00000000', '103.22.200.76', '2019-02-27 07:42:56');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('109', 1, '8NS5Y4', 'BUY', '2.40000000', '0.02400000', '162.158.118.224', '2019-02-27 19:43:32');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('110', 1, '8NS5Y4', 'INVESTMENT', '3200.00000000', '0.00000000', '108.162.226.27', '2019-02-27 07:43:52');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('111', 1, '8NS5Y4', 'BUY', '240.00000000', '2.40000000', '162.158.7.21', '2019-02-27 19:55:37');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('112', 1, '8NS5Y4', 'SELL', '2.40000000', '0.24000000', '162.158.6.116', '2019-02-27 19:56:48');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('113', 1, '8NS5Y4', 'SELL', '21.60000000', '0.24000000', '162.158.6.116', '2019-02-27 19:56:48');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('114', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.76.152', '2019-02-27 08:53:56');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('115', 1, '8NS5Y4', 'EXCHANGE_CANCEL', '218.40000000', '2.18400000', '162.158.154.113', '2019-02-28 02:15:37');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('116', 1, '8NS5Y4', 'INVESTMENT', '3200.00000000', '0.00000000', '108.162.210.140', '2019-02-28 03:53:26');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('117', 1, '8NS5Y4', 'INVESTMENT', '3200.00000000', '0.00000000', '108.162.210.140', '2019-02-28 03:53:38');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('118', 1, '8NS5Y4', 'INVESTMENT', '3200.00000000', '0.00000000', '108.162.212.249', '2019-02-28 03:54:52');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('119', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.155.53', '2020-03-11 02:40:16');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('120', 1, '8NS5Y4', 'INVESTMENT', '3200.00000000', '0.00000000', '162.158.158.246', '2020-03-12 07:24:21');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('121', 2, '6U1OP5', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.154.130', '2020-03-12 02:36:31');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('122', 2, '6U1OP5', 'INVESTMENT', '800.00000000', '0.00000000', '162.158.154.130', '2020-03-12 02:37:12');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('123', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.61', '2020-03-12 07:55:20');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('124', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.85', '2020-03-12 08:46:35');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('125', 4, '10QZ56', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.158.246', '2020-03-14 07:24:42');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('126', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.107.105', '2020-03-14 02:29:37');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('127', 1, '8NS5Y4', 'INVESTMENT', '3200.00000000', '0.00000000', '162.158.159.69', '2020-03-14 02:29:58');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('128', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.98.79', '2020-03-15 08:44:19');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('129', 1, '8NS5Y4', 'INVESTMENT', '1600.00000000', '0.00000000', '162.158.159.69', '2020-03-16 12:20:13');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('130', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.61', '2020-03-17 10:20:28');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('131', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.155.227', '2020-03-20 08:49:50');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('132', 1, '8NS5Y4', 'INVESTMENT', '200.00000000', '0.00000000', '162.158.159.21', '2020-03-20 11:23:40');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('133', 11, '2', 'CREDITED', '1000.00000000', '0.00000000', '162.158.155.245', '2020-03-22 00:05:59');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('134', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.107.219', '2020-03-23 05:33:28');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('135', 12, 'Train', 'CREDITED', '500.00000000', '0.00000000', '162.158.154.58', '2020-03-23 05:52:27');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('136', 1, '8NS5Y4', 'INVESTMENT', '800.00000000', '0.00000000', '162.158.158.122', '2020-03-23 06:05:10');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('137', 2, '6U1OP5', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.155.227', '2020-03-24 02:39:29');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('138', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.155.227', '2020-03-25 06:39:59');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('139', 1, '8NS5Y4', 'INVESTMENT', '3200.00000000', '0.00000000', '162.158.155.227', '2020-03-25 06:40:23');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('140', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.158.204', '2020-03-25 09:44:01');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('141', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.158.122', '2020-03-25 11:02:12');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('142', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.19', '2020-03-25 05:28:58');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('143', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.154.178', '2020-03-26 12:13:18');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('144', 2, '6U1OP5', 'DEPOSIT', '15.00000000', '0.00000000', '162.158.154.178', '2020-03-27 01:54:48');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('145', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.99', '2020-03-27 10:20:32');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('146', 2, '6U1OP5', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.19', '2020-03-27 01:29:30');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('147', 3, 'W1R3J3', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.76.97', '2020-03-27 05:05:21');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('148', 1, '8NS5Y4', 'INVESTMENT', '400.00000000', '0.00000000', '162.158.159.19', '2020-03-28 12:33:20');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('149', 1, '8NS5Y4', 'BUY', '2.40000000', '0.02400000', '162.158.158.152', '2020-03-30 07:36:13');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('150', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.19', '2020-03-31 11:40:04');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('151', 4, '10QZ56', 'BUY', '333.00000000', '0.00000000', '162.158.159.99', '2020-03-31 18:02:51');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('152', 4, '10QZ56', 'BUY', '10000.00000000', '0.00000000', '162.158.159.99', '2020-03-31 18:03:32');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('153', 1, '8NS5Y4', 'EXCHANGE_CANCEL', '2.40000000', '0.02400000', '141.101.107.219', '2020-04-01 07:42:08');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('154', 3, 'W1R3J3', 'BUY', '5.00000000', '0.00000000', '162.158.154.178', '2020-04-01 18:03:29');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('155', 3, 'W1R3J3', 'BUY', '5.00000000', '0.00000000', '162.158.154.178', '2020-04-01 18:04:54');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('156', 13, '324234', 'CREDITED', '324234234.00000000', '0.00000000', '141.101.98.79', '2020-04-02 15:30:57');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('157', 1, '8NS5Y4', 'BUY', '1111.00000000', '0.00000000', '162.158.158.252', '2020-04-02 23:28:37');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('158', 1, '8NS5Y4', 'BUY', '1.00000000', '0.00000000', '162.158.159.19', '2020-04-03 03:29:56');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('159', 1, '8NS5Y4', 'BUY', '10.00000000', '0.00000000', '162.158.158.122', '2020-04-04 00:44:27');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('160', 1, '8NS5Y4', 'BUY', '1000.00000000', '0.00000000', '162.158.154.58', '2020-04-04 22:54:31');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('161', 1, '8NS5Y4', 'BUY', '29.00000000', '0.00000000', '162.158.154.58', '2020-04-05 15:51:17');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('162', 1, '8NS5Y4', 'BUY', '500.00000000', '0.00000000', '162.158.159.19', '2020-04-06 06:30:11');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('163', 1, '8NS5Y4', 'BUY', '6000.00000000', '0.00000000', '162.158.159.19', '2020-04-06 06:31:54');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('164', 1, '8NS5Y4', 'BUY', '100.00000000', '0.00000000', '141.101.98.151', '2020-04-06 16:37:54');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('165', 1, '8NS5Y4', 'BUY', '100.00000000', '0.00000000', '162.158.154.40', '2020-04-06 18:12:26');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('166', 1, '8NS5Y4', 'BUY', '100.00000000', '0.00000000', '162.158.158.122', '2020-04-06 23:20:15');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('167', 3, 'W1R3J3', 'DEPOSIT', '100.00000000', '0.00000000', '162.158.154.58', '2020-04-06 23:06:50');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('168', 3, 'W1R3J3', 'DEPOSIT', '100000000000.00000000', '0.00000000', '162.158.154.58', '2020-04-06 23:08:25');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('169', 3, 'W1R3J3', 'BUY', '300.00000000', '0.00000000', '162.158.154.178', '2020-04-07 05:17:05');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('170', 3, 'W1R3J3', 'BUY', '200.00000000', '0.00000000', '162.158.154.178', '2020-04-07 05:17:42');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('171', 1, '8NS5Y4', 'BUY', '100.00000000', '0.00000000', '162.158.154.58', '2020-04-08 01:22:06');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('172', 1, '8NS5Y4', 'BUY', '100.00000000', '0.00000000', '162.158.159.99', '2020-04-08 02:39:00');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('173', 5, 'BX8333', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.158.114', '2020-04-08 07:19:35');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('174', 5, 'BX8333', 'INVESTMENT', '400.00000000', '0.00000000', '162.158.158.114', '2020-04-08 07:19:50');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('175', 5, 'BX8333', 'INVESTMENT', '3200.00000000', '0.00000000', '162.158.158.114', '2020-04-08 07:20:01');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('176', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.158.242', '2020-04-08 08:52:54');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('177', 1, '8NS5Y4', 'INVESTMENT', '400.00000000', '0.00000000', '162.158.159.103', '2020-04-08 08:53:35');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('178', 1, '8NS5Y4', 'BUY', '1.00000000', '0.00000000', '162.158.158.196', '2020-04-09 02:55:02');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('179', 2, '6U1OP5', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.99.224', '2020-04-09 08:11:15');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('180', 1, '8NS5Y4', 'INVESTMENT', '400.00000000', '0.00000000', '141.101.99.224', '2020-04-10 06:57:03');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('181', 1, '8NS5Y4', 'INVESTMENT', '400.00000000', '0.00000000', '141.101.99.224', '2020-04-10 07:43:55');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('182', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.158.106', '2020-04-11 03:40:02');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('183', 1, '8NS5Y4', 'BUY', '4.00000000', '0.00000000', '162.158.158.106', '2020-04-12 16:21:50');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('184', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.103', '2020-04-12 03:47:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('185', 1, '8NS5Y4', 'INVESTMENT', '3200.00000000', '0.00000000', '162.158.158.242', '2020-04-12 05:33:44');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('186', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.158.216', '2020-04-13 01:17:31');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('187', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.154.40', '2020-04-14 12:54:52');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('188', 1, '8NS5Y4', 'INVESTMENT', '3200.00000000', '0.00000000', '162.158.155.131', '2020-04-15 12:52:16');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('189', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.154.22', '2020-04-15 04:21:39');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('190', 1, '8NS5Y4', 'INVESTMENT', '3200.00000000', '0.00000000', '162.158.154.22', '2020-04-15 04:26:24');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('191', 1, '8NS5Y4', 'BUY', '1.00000000', '0.00000000', '162.158.154.22', '2020-04-15 10:28:30');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('192', 2, '6U1OP5', 'INVESTMENT', '400.00000000', '0.00000000', '162.158.155.17', '2020-04-16 01:18:03');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('193', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.154.40', '2020-04-17 09:04:49');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('194', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.11', '2020-04-17 04:36:26');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('195', 1, '8NS5Y4', 'DEPOSIT', '100.00000000', '0.00000000', '162.158.155.131', '2020-04-17 21:21:12');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('196', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.11', '2020-04-18 12:10:24');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('197', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.115', '2020-04-18 09:41:32');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('198', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.155.17', '2020-04-18 07:06:01');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('199', 1, '8NS5Y4', 'INVESTMENT', '800.00000000', '0.00000000', '162.158.155.17', '2020-04-18 07:07:55');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('200', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.155.131', '2020-04-19 10:56:10');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('201', 1, '8NS5Y4', 'BUY', '24.00000000', '2.40000000', '162.158.159.43', '2020-04-20 11:47:15');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('202', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.158.252', '2020-04-21 04:51:22');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('203', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.98.121', '2020-04-22 04:48:05');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('204', 1, '8NS5Y4', 'INVESTMENT', '800.00000000', '0.00000000', '162.158.159.33', '2020-04-23 07:00:11');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('205', 1, '8NS5Y4', 'INVESTMENT', '3200.00000000', '0.00000000', '162.158.155.65', '2020-04-23 11:39:37');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('206', 1, '8NS5Y4', 'INVESTMENT', '200.00000000', '0.00000000', '141.101.98.23', '2020-04-24 12:11:14');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('207', 1, '8NS5Y4', 'INVESTMENT', '400.00000000', '0.00000000', '141.101.98.23', '2020-04-24 12:12:12');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('208', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.99.130', '2020-04-24 10:16:47');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('209', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.85', '2020-04-25 11:54:58');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('210', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.98.121', '2020-04-25 05:57:55');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('211', 1, '8NS5Y4', 'INVESTMENT', '400.00000000', '0.00000000', '162.158.155.65', '2020-04-26 02:52:58');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('212', 2, '6U1OP5', 'INVESTMENT', '1600.00000000', '0.00000000', '141.101.98.121', '2020-04-26 10:11:27');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('213', 2, '6U1OP5', 'BUY', '212.00000000', '2.12000000', '141.101.98.23', '2020-04-26 22:16:32');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('214', 2, '6U1OP5', 'BUY', '2.40000000', '0.02400000', '141.101.98.23', '2020-04-26 22:16:36');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('215', 2, '6U1OP5', 'BUY', '89.00000000', '0.89000000', '141.101.98.23', '2020-04-26 22:16:41');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('216', 2, '6U1OP5', 'BUY', '47.31000000', '0.47310000', '141.101.98.23', '2020-04-26 22:16:49');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('217', 2, '6U1OP5', 'BUY', '194.40000000', '1.94400000', '141.101.98.23', '2020-04-26 22:16:54');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('218', 2, '6U1OP5', 'SELL', '2.40000000', '0.02400000', '141.101.98.23', '2020-04-26 22:16:59');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('219', 2, '6U1OP5', 'SELL', '2.40000000', '0.02400000', '141.101.98.23', '2020-04-26 22:17:04');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('220', 2, '6U1OP5', 'EXCHANGE_CANCEL', '89.00000000', '0.89000000', '141.101.98.23', '2020-04-26 22:18:13');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('221', 2, '6U1OP5', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.98.253', '2020-04-29 04:49:33');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('222', 2, '6U1OP5', 'BUY', '2.40000000', '0.02400000', '141.101.98.253', '2020-04-29 04:57:33');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('223', 2, '6U1OP5', 'SELL', '29.52000000', '0.29520000', '141.101.98.253', '2020-04-29 04:57:42');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('224', 2, '6U1OP5', 'ADJUSTMENT', '0.21000000', '0.00210000', '141.101.98.253', '2020-04-29 04:57:42');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('225', 1, '8NS5Y4', 'INVESTMENT', '400.00000000', '0.00000000', '141.101.98.23', '2020-04-30 10:41:07');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('226', 2, '6U1OP5', 'EXCHANGE_CANCEL', '212.00000000', '2.12000000', '141.101.98.121', '2020-04-30 11:52:50');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('227', 1, '8NS5Y4', 'INVESTMENT', '400.00000000', '0.00000000', '162.158.155.131', '2020-05-01 04:14:31');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('228', 1, '8NS5Y4', 'BUY', '1.00000000', '0.01000000', '141.101.98.23', '2020-05-01 21:07:38');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('229', 1, '8NS5Y4', 'SELL', '1.50000000', '0.01500000', '141.101.98.23', '2020-05-01 21:07:58');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('230', 2, '6U1OP5', 'ADJUSTMENT', '72.00000000', '0.72000000', '141.101.98.23', '2020-05-01 21:07:58');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('231', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.98.23', '2020-05-01 09:08:33');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('232', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.98.193', '2020-05-02 04:38:44');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('233', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.155.65', '2020-05-02 08:38:03');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('234', 1, '8NS5Y4', 'INVESTMENT', '800.00000000', '0.00000000', '141.101.98.193', '2020-05-02 08:38:24');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('235', 1, '8NS5Y4', 'INVESTMENT', '800.00000000', '0.00000000', '141.101.98.193', '2020-05-02 08:40:43');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('236', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.98.95', '2020-05-06 07:52:53');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('237', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.98.95', '2020-05-06 07:53:00');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('238', 2, '6U1OP5', 'INVESTMENT', '800.00000000', '0.00000000', '141.101.98.121', '2020-05-07 02:31:57');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('239', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.98.15', '2020-05-07 02:43:24');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('240', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.98.193', '2020-05-07 06:58:02');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('241', 1, '8NS5Y4', 'INVESTMENT', '200.00000000', '0.00000000', '162.158.158.242', '2020-05-08 12:43:48');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('242', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.159.85', '2020-05-09 02:02:02');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('243', 1, '8NS5Y4', 'INVESTMENT', '3200.00000000', '0.00000000', '141.101.98.193', '2020-05-09 07:06:21');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('244', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '141.101.98.253', '2020-05-10 12:27:22');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('245', 1, '8NS5Y4', 'DEPOSIT', '1000.00000000', '0.00000000', '162.158.159.85', '2020-05-09 14:02:44');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('246', 1, '8NS5Y4', 'CREDITED', '5000.00000000', '0.00000000', '162.158.158.36', '2020-05-20 08:59:01');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('247', 1, '8NS5Y4', 'CREDITED', '1000.00000000', '0.00000000', '162.158.158.160', '2020-05-20 09:02:34');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('248', 1, '8NS5Y4', 'INVESTMENT', '100.00000000', '0.00000000', '162.158.158.148', '2020-05-20 09:54:44');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('249', 1, '8NS5Y4', 'EXCHANGE_CANCEL', '21.60000000', '0.43200000', '162.158.158.24', '2020-05-30 07:19:43');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('250', 1, '8NS5Y4', 'INVESTMENT', '200.00000000', '0.00000000', '::1', '2020-06-13 19:51:39');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('251', 1, '8NS5Y4', 'SELL', '1.50000000', '0.01500000', '::1', '2020-06-14 07:53:07');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('252', 2, '6U1OP5', 'ADJUSTMENT', '0.00000000', '0.00000000', '::1', '2020-06-14 07:53:07');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('253', 1, '8NS5Y4', 'BUY', '1.50000000', '0.03000000', '::1', '2020-06-14 07:53:15');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('254', 1, '8NS5Y4', 'BUY', '2.00000000', '0.04000000', '::1', '2020-06-14 13:50:57');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('255', 1, '8NS5Y4', 'SELL', '1.50000000', '0.01500000', '::1', '2020-06-14 13:51:07');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('256', 2, '6U1OP5', 'ADJUSTMENT', '5.94000000', '0.05940000', '::1', '2020-06-14 13:51:07');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('257', 1, '8NS5Y4', 'BUY', '1.50000000', '0.03000000', '::1', '2020-06-14 13:51:58');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('258', 1, '8NS5Y4', 'EXCHANGE_CANCEL', '1.00000000', '0.02000000', '::1', '2020-06-14 14:10:43');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('259', 1, '8NS5Y4', 'EXCHANGE_CANCEL', '1.50000000', '0.03000000', '::1', '2020-06-14 14:11:53');
INSERT INTO `dbt_balance_log` (`log_id`, `balance_id`, `user_id`, `transaction_type`, `transaction_amount`, `transaction_fees`, `ip`, `date`) VALUES ('260', 1, '8NS5Y4', 'CREDITED', '100.00000000', '0.00000000', '::1', '2021-04-10 00:18:21');


#
# TABLE STRUCTURE FOR: dbt_coin_manager
#

DROP TABLE IF EXISTS `dbt_coin_manager`;

CREATE TABLE `dbt_coin_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hold_coin` int(11) NOT NULL,
  `pre_sell` int(11) NOT NULL,
  `sell_available` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_coin_manager` (`id`, `hold_coin`, `pre_sell`, `sell_available`) VALUES (1, 25000, 25000, 50000);


#
# TABLE STRUCTURE FOR: dbt_country
#

DROP TABLE IF EXISTS `dbt_country`;

CREATE TABLE `dbt_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=254 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (8, 'AQ', 'ANTARCTICA', 'Antarctica', 'ATA', NULL, 0);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', 'IOT', NULL, 246);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (44, 'CN', 'CHINA', 'China', 'CHN', 156, 86);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', 'CXR', NULL, 61);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', 'CCK', NULL, 672);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (99, 'IN', 'INDIA', 'India', 'IND', 356, 91);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (168, 'PE', 'PERU', 'Peru', 'PER', 604, 51);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (240, 'RS', 'SERBIA', 'Serbia', 'SRB', 688, 381);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (241, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', 0, 0);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (242, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', 499, 382);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (243, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', 248, 358);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (245, 'CW', 'CURACAO', 'Curacao', 'CUW', 531, 599);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (246, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', 831, 44);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (247, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', 833, 44);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (248, 'JE', 'JERSEY', 'Jersey', 'JEY', 832, 44);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (249, 'XK', 'KOSOVO', 'Kosovo', '---', 0, 381);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (250, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', 652, 590);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (251, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', 663, 590);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (252, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', 534, 1);
INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES (253, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', 728, 211);


#
# TABLE STRUCTURE FOR: dbt_cron
#

DROP TABLE IF EXISTS `dbt_cron`;

CREATE TABLE `dbt_cron` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `command` varchar(255) NOT NULL,
  `interval_sec` int(10) NOT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `next_run_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: dbt_crypto_transaction
#

DROP TABLE IF EXISTS `dbt_crypto_transaction`;

CREATE TABLE `dbt_crypto_transaction` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `wallet` varchar(300) NOT NULL,
  `data` longtext NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_crypto_transaction` (`id`, `wallet`, `data`, `datetime`) VALUES ('1', '6e912a46c2177b5933ec7ae238b4c371', '{\"6e912a46c2177b5933ec7ae238b4c371\":[{\"id\":\"9ad4d4e050c1464bde370cf9f4cb27a6\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"100\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":100,\"crypto_balance\":\"100\"},{\"id\":\"92978b7d7b10c8a0daf1423bd009d71d\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"130\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":230,\"crypto_balance\":230},{\"id\":\"171bfdd7e3e8fab74c7f3d6637150253\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"1200\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":1430,\"crypto_balance\":1430},{\"id\":\"673dfa31049728a00921b691ed485cc4\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":50,\"crypto_rate\":\"2.00000000\",\"exchange_currency\":\"USD\",\"total\":1530,\"crypto_balance\":1480},{\"id\":\"4ef1334dfbf992a411540d68b53f490f\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":-60,\"crypto_rate\":\"2.05000000\",\"exchange_currency\":\"USD\",\"total\":1407,\"crypto_balance\":1420},{\"id\":\"a02cec7451935cde89f46d185977659b\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":60,\"crypto_rate\":\"2.07000000\",\"exchange_currency\":\"USD\",\"total\":1531.2,\"crypto_balance\":1480},{\"id\":\"e2132f4e7f6ed2172da8a1fab5af92dc\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":-50,\"crypto_rate\":\"2.10000000\",\"exchange_currency\":\"USD\",\"total\":1426.2,\"crypto_balance\":1430},{\"id\":\"139f28dd4a7f425e2a40daa704678111\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":50,\"crypto_rate\":\"2.13000000\",\"exchange_currency\":\"USD\",\"total\":1532.7,\"crypto_balance\":1480},{\"id\":\"fbd155ac31fcf6f4cb1b85ad57543f2f\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":-70,\"crypto_rate\":\"2.16000000\",\"exchange_currency\":\"USD\",\"total\":1381.5,\"crypto_balance\":1410},{\"id\":\"0a97ab2fdd92dd63c0b07348b8bfe6fb\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":40,\"crypto_rate\":\"2.13000000\",\"exchange_currency\":\"USD\",\"total\":1466.7,\"crypto_balance\":1450},{\"id\":\"778430db876d80cf23cc3d939682f8b0\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":-80,\"crypto_rate\":\"2.10000000\",\"exchange_currency\":\"USD\",\"total\":1298.7,\"crypto_balance\":1370},{\"id\":\"6a54c96a055cbc30a6e35c57398c53b0\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":70,\"crypto_rate\":\"2.14000000\",\"exchange_currency\":\"USD\",\"total\":1448.5,\"crypto_balance\":1440},{\"id\":\"ef39fb1225d98a0cafbcdad2509b5a5f\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":-50,\"crypto_rate\":\"2.17000000\",\"exchange_currency\":\"USD\",\"total\":1340,\"crypto_balance\":1390},{\"id\":\"1663095dbaa91badbc6419211d8c8186\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":55,\"crypto_rate\":\"2.20000000\",\"exchange_currency\":\"USD\",\"total\":1461,\"crypto_balance\":1445},{\"id\":\"fce6b8b295174cc76739b81f4a4b7989\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":-60,\"crypto_rate\":\"2.23000000\",\"exchange_currency\":\"USD\",\"total\":1327.2,\"crypto_balance\":1385},{\"id\":\"34cb5b9b537fe75e781776900501ffec\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":65,\"crypto_rate\":\"2.26000000\",\"exchange_currency\":\"USD\",\"total\":1474.1,\"crypto_balance\":1450},{\"id\":\"10918bdc762b7875cf1b88cc696d2cad\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":-70,\"crypto_rate\":\"2.30000000\",\"exchange_currency\":\"USD\",\"total\":1313.1,\"crypto_balance\":1380},{\"id\":\"ead9ba6180af112db3158a9351996060\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":75,\"crypto_rate\":\"2.26000000\",\"exchange_currency\":\"USD\",\"total\":1482.6,\"crypto_balance\":1455},{\"id\":\"76031dba350cb9a01d3a3b65ff19ea53\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":-80,\"crypto_rate\":\"2.23000000\",\"exchange_currency\":\"USD\",\"total\":1304.2,\"crypto_balance\":1375},{\"id\":\"d899049f229ff9d40d93c1dc3f9e0c70\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":85,\"crypto_rate\":\"2.18000000\",\"exchange_currency\":\"USD\",\"total\":1489.5,\"crypto_balance\":1460},{\"id\":\"96502d637d7459d75e13dc2f59d071ec\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":-90,\"crypto_rate\":\"2.24000000\",\"exchange_currency\":\"USD\",\"total\":1287.9,\"crypto_balance\":1370},{\"id\":\"5bc7f05fb9b55ad1d5d4fc090397de3a\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":1,\"crypto_rate\":\"2.40000000\",\"exchange_currency\":\"USD\",\"total\":1290.3,\"crypto_balance\":1371},{\"id\":\"702ea993fd66b3647fc29953725dab39\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":9,\"crypto_rate\":\"2.40000000\",\"exchange_currency\":\"USD\",\"total\":1311.9,\"crypto_balance\":1380},{\"id\":\"e1a8200025c0d8846fe8c362f074fc3a\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"1111\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":2422.9,\"crypto_balance\":2491},{\"id\":\"930fcdf8a3018fc206804d1c5d59733d\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"1\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":2423.9,\"crypto_balance\":2492},{\"id\":\"ff87d724a7d4e4bb53839f8ac7ff0b4f\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"10\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":2433.9,\"crypto_balance\":2502},{\"id\":\"4571f1a5d4e88da31346df5b51bb6e33\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"1000\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":3433.9,\"crypto_balance\":3502},{\"id\":\"fff8a9f81ae1a4955dc74c65ad4b6058\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"29\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":3462.9,\"crypto_balance\":3531},{\"id\":\"cb2dbbba2ff5700614f315f0b8d87c87\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"500\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":3962.9,\"crypto_balance\":4031},{\"id\":\"00a67dd1960058868492ac1bff527573\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"6000\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":9962.9,\"crypto_balance\":10031},{\"id\":\"3baee879ded4ae1335873dfef9a3f9fb\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"100\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":10062.9,\"crypto_balance\":10131},{\"id\":\"caafe5d11b589d6abec6eb34159d6df1\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"100\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":10162.9,\"crypto_balance\":10231},{\"id\":\"277dd2dd2a8d948ba5cb2a4f5e95ca48\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"100\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":10262.9,\"crypto_balance\":10331},{\"id\":\"6de83723789dba2281dae4111c1e2bac\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"100\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":10362.9,\"crypto_balance\":10431},{\"id\":\"b20e6b4a4977a692f7bd457d373d6535\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"100\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":10462.9,\"crypto_balance\":10531},{\"id\":\"d03b478605a51d9017dfc81e59c4690e\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"1\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":10463.9,\"crypto_balance\":10532},{\"id\":\"b3061de0c890457805debb5d77adbb34\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"4\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":10467.9,\"crypto_balance\":10536},{\"id\":\"89a033fc833ec75e0d2cc643af3dbf82\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"1\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":10468.9,\"crypto_balance\":10537},{\"id\":\"81781f80af394b6ef500f74eb41f9dbb\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":1,\"crypto_rate\":\"2.40000000\",\"exchange_currency\":\"USD\",\"total\":10471.3,\"crypto_balance\":10538},{\"id\":\"daf02ae963b7bf45c6cf3391209de269\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":-1,\"crypto_rate\":\"1.50000000\",\"exchange_currency\":\"USD\",\"total\":10469.8,\"crypto_balance\":10537},{\"id\":\"3f0a36e44cb5ac94ea72b2dd7122bfd5\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":-1,\"crypto_rate\":\"1.50000000\",\"exchange_currency\":\"USD\",\"total\":10468.3,\"crypto_balance\":10536},{\"id\":\"e00a4739884cc1fb1045e2816c84f687\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":-1,\"crypto_rate\":\"1.50000000\",\"exchange_currency\":\"USD\",\"total\":10466.8,\"crypto_balance\":10535}]}', '2020-06-14 19:51:06');
INSERT INTO `dbt_crypto_transaction` (`id`, `wallet`, `data`, `datetime`) VALUES ('2', '0e401765b76def363445c21cf4dc8b3d', '{\"0e401765b76def363445c21cf4dc8b3d\":[{\"id\":\"25d6dcede9984f2f3c2961d5b8d37ede\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"90\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":90,\"crypto_balance\":\"90\"},{\"id\":\"51ecf5016569199af0bfc01d4af9f2d9\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"1100\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":1190,\"crypto_balance\":1190},{\"id\":\"c8dde09c5908e64cab8e0dcf347d9cab\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":-50,\"crypto_rate\":\"2.00000000\",\"exchange_currency\":\"USD\",\"total\":1090,\"crypto_balance\":1140},{\"id\":\"b4ceaf7c91a60b2ee1c3e2442628c5ed\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":60,\"crypto_rate\":\"2.05000000\",\"exchange_currency\":\"USD\",\"total\":1213,\"crypto_balance\":1200},{\"id\":\"383ebaa658c00c36556771e2a09952be\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":-60,\"crypto_rate\":\"2.07000000\",\"exchange_currency\":\"USD\",\"total\":1088.8,\"crypto_balance\":1140},{\"id\":\"4a52f037fc552d76977a90b9ae75f6e3\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":50,\"crypto_rate\":\"2.10000000\",\"exchange_currency\":\"USD\",\"total\":1193.8,\"crypto_balance\":1190},{\"id\":\"7cc531588ffc79f25d4bd6e620d584be\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":-50,\"crypto_rate\":\"2.13000000\",\"exchange_currency\":\"USD\",\"total\":1087.3,\"crypto_balance\":1140},{\"id\":\"9848dd401b15df1de2cb1cdec8d11a45\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":70,\"crypto_rate\":\"2.16000000\",\"exchange_currency\":\"USD\",\"total\":1238.5,\"crypto_balance\":1210},{\"id\":\"f0c057a6db0999c7d8de68779be23dea\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":-40,\"crypto_rate\":\"2.13000000\",\"exchange_currency\":\"USD\",\"total\":1153.3,\"crypto_balance\":1170},{\"id\":\"76e3b876f098dd0042d072f58a3b6a16\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":80,\"crypto_rate\":\"2.10000000\",\"exchange_currency\":\"USD\",\"total\":1321.3,\"crypto_balance\":1250},{\"id\":\"93e73296904b7ebd7b1b625b96b37fc3\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":-70,\"crypto_rate\":\"2.14000000\",\"exchange_currency\":\"USD\",\"total\":1171.5,\"crypto_balance\":1180},{\"id\":\"4b6b1a6467769454eb355f96686dc7a0\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":50,\"crypto_rate\":\"2.17000000\",\"exchange_currency\":\"USD\",\"total\":1280,\"crypto_balance\":1230},{\"id\":\"59d80890c9ec77d11c30b0bb822a646b\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":-55,\"crypto_rate\":\"2.20000000\",\"exchange_currency\":\"USD\",\"total\":1159,\"crypto_balance\":1175},{\"id\":\"1cedc777db572d38d34b515013f22c40\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":60,\"crypto_rate\":\"2.23000000\",\"exchange_currency\":\"USD\",\"total\":1292.8,\"crypto_balance\":1235},{\"id\":\"dd1c8abbeb492c332efa24d692a1cbeb\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":-65,\"crypto_rate\":\"2.26000000\",\"exchange_currency\":\"USD\",\"total\":1145.9,\"crypto_balance\":1170},{\"id\":\"5221f10bb94c49f8f1a504af3788598d\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":70,\"crypto_rate\":\"2.30000000\",\"exchange_currency\":\"USD\",\"total\":1306.9,\"crypto_balance\":1240},{\"id\":\"d29e4e7e0877107225568552c302ab22\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":-75,\"crypto_rate\":\"2.26000000\",\"exchange_currency\":\"USD\",\"total\":1137.4,\"crypto_balance\":1165},{\"id\":\"21b003f6b3a4c952d0dc7a81a78b1266\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":80,\"crypto_rate\":\"2.23000000\",\"exchange_currency\":\"USD\",\"total\":1315.8,\"crypto_balance\":1245},{\"id\":\"139417ce8deeb413a1b64ac52f5a2da4\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":-85,\"crypto_rate\":\"2.18000000\",\"exchange_currency\":\"USD\",\"total\":1130.5,\"crypto_balance\":1160},{\"id\":\"9c76391e104844757892564299c7d40a\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":90,\"crypto_rate\":\"2.24000000\",\"exchange_currency\":\"USD\",\"total\":1332.1,\"crypto_balance\":1250},{\"id\":\"34e5ece3ff8545a8276d6508680d7aa8\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":-1,\"crypto_rate\":\"2.40000000\",\"exchange_currency\":\"USD\",\"total\":1329.6999999999998,\"crypto_balance\":1249},{\"id\":\"a732d35c58532ace80b617a142e83fa0\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":1,\"crypto_rate\":\"2.40000000\",\"exchange_currency\":\"USD\",\"total\":1332.1,\"crypto_balance\":1250},{\"id\":\"036ecf7011e371f3c349aa368dbe17e5\",\"source_wallet\":\"0e401765b76def363445c21cf4dc8b3d\",\"crypto_qty\":12,\"crypto_rate\":\"2.46000000\",\"exchange_currency\":\"USD\",\"total\":1361.62,\"crypto_balance\":1262},{\"id\":\"323c334d99b8a99259c5cd8f34023e59\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":1,\"crypto_rate\":\"1.50000000\",\"exchange_currency\":\"USD\",\"total\":1363.12,\"crypto_balance\":1263},{\"id\":\"0121de63ae38e9a7d3ddf5a92da4904a\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":1,\"crypto_rate\":\"1.50000000\",\"exchange_currency\":\"USD\",\"total\":1364.62,\"crypto_balance\":1264},{\"id\":\"47fff4fe2b700ac434f89f9dda07e97a\",\"source_wallet\":\"6e912a46c2177b5933ec7ae238b4c371\",\"crypto_qty\":1,\"crypto_rate\":\"1.50000000\",\"exchange_currency\":\"USD\",\"total\":1366.12,\"crypto_balance\":1265}]}', '2020-06-14 19:51:06');
INSERT INTO `dbt_crypto_transaction` (`id`, `wallet`, `data`, `datetime`) VALUES ('3', 'b0fd2862074372d77f54a9602f1c0978', '{\"b0fd2862074372d77f54a9602f1c0978\":[{\"id\":\"9c7afbfa633b8ca5ea8fc26c6780c505\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"110\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":110,\"crypto_balance\":\"110\"},{\"id\":\"ba3726579fcd2758098fa8e85a459124\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"140\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":250,\"crypto_balance\":250},{\"id\":\"aec5f00e75f2eb4ee510e2e643a7cd4e\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"800\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":1050,\"crypto_balance\":1050},{\"id\":\"b4e3c83132e9f54cdce119a607ab3dc7\",\"source_wallet\":\"b0fd2862074372d77f54a9602f1c0978\",\"crypto_qty\":50,\"crypto_rate\":\"2.28000000\",\"exchange_currency\":\"USD\",\"total\":1164,\"crypto_balance\":1100},{\"id\":\"d3747512a570f9c1122daa85c4452cdc\",\"source_wallet\":\"b0fd2862074372d77f54a9602f1c0978\",\"crypto_qty\":70,\"crypto_rate\":\"2.32000000\",\"exchange_currency\":\"USD\",\"total\":1326.40000000000009094947017729282379150390625,\"crypto_balance\":1170},{\"id\":\"c0307cf62f43f3a14bf9d4901b61075e\",\"source_wallet\":\"1f82d403720b592194bc2982dcc600e5\",\"crypto_qty\":-75,\"crypto_rate\":\"2.35000000\",\"exchange_currency\":\"USD\",\"total\":1150.15000000000009094947017729282379150390625,\"crypto_balance\":1095},{\"id\":\"0d50baa21e2e0357a00b9ad10c4948c1\",\"source_wallet\":\"b0fd2862074372d77f54a9602f1c0978\",\"crypto_qty\":80,\"crypto_rate\":\"2.38000000\",\"exchange_currency\":\"USD\",\"total\":1340.549999999999954525264911353588104248046875,\"crypto_balance\":1175},{\"id\":\"bfdb2667e7c6b254e3fc53897a6e77e1\",\"source_wallet\":\"1f82d403720b592194bc2982dcc600e5\",\"crypto_qty\":-85,\"crypto_rate\":\"2.40000000\",\"exchange_currency\":\"USD\",\"total\":1136.549999999999954525264911353588104248046875,\"crypto_balance\":1090},{\"id\":\"a8ff2bc160bb55377c9c241c6c26d00f\",\"source_wallet\":\"1f82d403720b592194bc2982dcc600e5\",\"crypto_qty\":-80,\"crypto_rate\":\"2.43000000\",\"exchange_currency\":\"USD\",\"total\":942.1499999999999772626324556767940521240234375,\"crypto_balance\":1010},{\"id\":\"956182984c3eeb388aa0dae02224463e\",\"source_wallet\":\"b0fd2862074372d77f54a9602f1c0978\",\"crypto_qty\":85,\"crypto_rate\":\"2.40000000\",\"exchange_currency\":\"USD\",\"total\":1146.15000000000009094947017729282379150390625,\"crypto_balance\":1095},{\"id\":\"c519247a9103664427527a441e38424d\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"5\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":1151.15000000000009094947017729282379150390625,\"crypto_balance\":1100},{\"id\":\"da0c47899520362576c52a2880cde716\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"5\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":1156.15000000000009094947017729282379150390625,\"crypto_balance\":1105},{\"id\":\"3f4654f235a8ae0f2438f7499b01cf4a\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"300\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":1456.15000000000009094947017729282379150390625,\"crypto_balance\":1405},{\"id\":\"b642952f62f11c64c0f2d2c578345f69\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"200\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":1656.15000000000009094947017729282379150390625,\"crypto_balance\":1605}]}', '2020-04-07 05:17:42');
INSERT INTO `dbt_crypto_transaction` (`id`, `wallet`, `data`, `datetime`) VALUES ('4', '1f82d403720b592194bc2982dcc600e5', '{\"1f82d403720b592194bc2982dcc600e5\":[{\"id\":\"a63b25bde9cd4b0b4650df145ec53aec\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"150\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":150,\"crypto_balance\":\"150\"},{\"id\":\"d0ffbbe8757d6e37616c0a389eb41563\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"160\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":310,\"crypto_balance\":310},{\"id\":\"973d0a021295e6a0f933d5fbb3146f58\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"1600\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":1910,\"crypto_balance\":1910},{\"id\":\"df4214f8a27bceb2533a852ca2e67bd3\",\"source_wallet\":\"b0fd2862074372d77f54a9602f1c0978\",\"crypto_qty\":-50,\"crypto_rate\":\"2.28000000\",\"exchange_currency\":\"USD\",\"total\":1911,\"crypto_balance\":1910},{\"id\":\"ac601452244220bc20ef612ba22f214a\",\"source_wallet\":\"1f82d403720b592194bc2982dcc600e5\",\"crypto_qty\":50,\"crypto_rate\":\"2.30000000\",\"exchange_currency\":\"USD\",\"total\":1911,\"crypto_balance\":1910},{\"id\":\"559e272e1b33dbe0ce9a5f2f62d6da9b\",\"source_wallet\":\"1f82d403720b592194bc2982dcc600e5\",\"crypto_qty\":55,\"crypto_rate\":\"2.28000000\",\"exchange_currency\":\"USD\",\"total\":2036.40000000000009094947017729282379150390625,\"crypto_balance\":1965},{\"id\":\"8bec67c74adfa357cd5fcc78fc3c1df6\",\"source_wallet\":\"b0fd2862074372d77f54a9602f1c0978\",\"crypto_qty\":-70,\"crypto_rate\":\"2.32000000\",\"exchange_currency\":\"USD\",\"total\":1874,\"crypto_balance\":1895},{\"id\":\"5f339f6c84370b28a4062bc01e2d682b\",\"source_wallet\":\"1f82d403720b592194bc2982dcc600e5\",\"crypto_qty\":75,\"crypto_rate\":\"2.35000000\",\"exchange_currency\":\"USD\",\"total\":2050.25,\"crypto_balance\":1970},{\"id\":\"2f708c98a203b1a329b2e9a7e78f48cb\",\"source_wallet\":\"b0fd2862074372d77f54a9602f1c0978\",\"crypto_qty\":-80,\"crypto_rate\":\"2.38000000\",\"exchange_currency\":\"USD\",\"total\":1859.84999999999990905052982270717620849609375,\"crypto_balance\":1890},{\"id\":\"02d15b60a89a4c22e0ca818e057d1578\",\"source_wallet\":\"1f82d403720b592194bc2982dcc600e5\",\"crypto_qty\":85,\"crypto_rate\":\"2.40000000\",\"exchange_currency\":\"USD\",\"total\":2063.84999999999990905052982270717620849609375,\"crypto_balance\":1975},{\"id\":\"8c260b3a036aab2ee94b77c9b1c6068e\",\"source_wallet\":\"1f82d403720b592194bc2982dcc600e5\",\"crypto_qty\":80,\"crypto_rate\":\"2.43000000\",\"exchange_currency\":\"USD\",\"total\":2258.25,\"crypto_balance\":2055},{\"id\":\"dfa069d7ce44c73dea7a6c2877219a97\",\"source_wallet\":\"b0fd2862074372d77f54a9602f1c0978\",\"crypto_qty\":-85,\"crypto_rate\":\"2.40000000\",\"exchange_currency\":\"USD\",\"total\":2054.25,\"crypto_balance\":1970},{\"id\":\"428511be35aee54a9d362b17e03f7786\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"333\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":2387.25,\"crypto_balance\":2303},{\"id\":\"2e3918dce9097f11ed104cd79710dc14\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"10000\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":12387.25,\"crypto_balance\":12303}]}', '2020-03-31 18:03:32');
INSERT INTO `dbt_crypto_transaction` (`id`, `wallet`, `data`, `datetime`) VALUES ('5', 'bed8c1a7eda2e42ce652648c4c817857', '{\"bed8c1a7eda2e42ce652648c4c817857\":[{\"id\":\"16d72aa29a7b0a673b1a3d55ebeb8de0\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"500\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":500,\"crypto_balance\":\"500\"},{\"id\":\"b939721e49915aa87a8caa027256c397\",\"source_wallet\":\"3340ec69a41e650c4eb82743cde40fe7\",\"crypto_qty\":\"1300\",\"crypto_rate\":\"1\",\"exchange_currency\":\"USD\",\"total\":1800,\"crypto_balance\":1800}]}', '2019-01-17 12:28:34');


#
# TABLE STRUCTURE FOR: dbt_currency
#

DROP TABLE IF EXISTS `dbt_currency`;

CREATE TABLE `dbt_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) NOT NULL,
  `rate` double DEFAULT NULL,
  `algorithm` varchar(100) DEFAULT NULL,
  `position` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Symbol` (`symbol`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (1, '$', 'USD', 'USD', '1', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (2, 'TRX', 'TRON', 'TRX', '1', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (3, 'Ghs', 'Ghana Cedi', 'Ghs', '5.3', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (4, '$', 'anton sutulo', 'as', '1', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (5, 'tet', 'Testcoin', 'tet', '1', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (6, 'plc', 'blofitCoin', 'plc', '1', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (7, 'vnd', 'Việt Nam Đồng', 'đ', '23500', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (8, '44', '#asd', 'asd', '4214', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (9, 'B', 'Bitcoin', '4217', '6', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (10, 'fls', 'fils', 'fls', '8', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (11, 'DPD', 'DPD', 'DPD', '0.125', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (12, 'Pahoo ', 'Pahoo', 'Pahoo', '600000', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (13, '12', 'test', '12', '12', NULL, 0, NULL, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES (14, '18', 'dzr', 'fdfdf', '0', NULL, 0, NULL, 1);


#
# TABLE STRUCTURE FOR: dbt_deposit
#

DROP TABLE IF EXISTS `dbt_deposit`;

CREATE TABLE `dbt_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `amount` double(19,8) NOT NULL,
  `method` varchar(50) NOT NULL,
  `fees_amount` double(19,8) NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `deposit_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Pending, 1= confirm, 2=Cancel',
  `ip` varchar(50) NOT NULL,
  `approved_cancel_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (1, '8NS5Y4', '100000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:43:12', '2019-01-17 05:43:12', 1, '172.68.146.105', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (2, '8NS5Y4', '200000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:43:34', '2019-01-17 05:43:34', 1, '172.69.134.160', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (3, '6U1OP5', '90000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:43:57', '2019-01-17 05:43:57', 1, '172.68.146.105', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (4, 'W1R3J3', '105000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:44:32', '2019-01-17 05:44:32', 1, '172.69.134.160', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (5, '10QZ56', '80000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:45:15', '2019-01-17 05:45:15', 1, '172.68.146.105', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (6, 'BX8333', '120000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:45:46', '2019-01-17 05:45:46', 1, '172.69.134.160', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (7, 'SIRWH9', '200000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:46:04', '2019-01-17 05:46:04', 1, '172.69.134.160', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (8, 'UGMOCC', '150000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:46:22', '2019-01-17 05:46:22', 1, '172.69.134.190', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (9, 'X2NL8S', '130000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:46:52', '2019-01-17 05:46:52', 1, '172.69.134.190', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (10, 'N2LDPD', '125000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:47:21', '2019-01-17 05:47:21', 1, '172.68.146.243', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (11, 'C5PTTH', '160000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:47:47', '2019-01-17 05:47:47', 1, '172.68.146.243', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (12, '8NS5Y4', '200.00000000', 'stripe', '0.00000000', NULL, '2019-02-24 08:47:17', NULL, 1, '162.158.155.198', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (13, '8NS5Y4', '500.00000000', 'paypal', '0.00000000', NULL, '2019-02-24 09:02:02', NULL, 1, '141.101.98.62', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (14, '8NS5Y4', '100.00000000', 'paypal', '2.00000000', NULL, '2019-02-24 09:09:33', NULL, 1, '141.101.99.159', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (15, '8NS5Y4', '200.00000000', 'stripe', '4.00000000', NULL, '2019-02-24 09:10:19', NULL, 1, '141.101.98.62', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (16, '8NS5Y4', '120.00000000', 'stripe', '2.40000000', NULL, '2019-02-24 09:11:34', NULL, 1, '141.101.99.159', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (17, '8NS5Y4', '1000.00000000', 'stripe', '20.00000000', NULL, '2019-02-24 09:13:36', NULL, 1, '141.101.98.62', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (18, '8NS5Y4', '2000.00000000', 'paypal', '40.00000000', NULL, '2019-02-24 09:15:19', NULL, 1, '141.101.99.159', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (19, '2', '1000.00000000', 'ADMIN', '0.00000000', 'test', '2020-03-22 12:05:59', '2020-03-22 12:05:59', 1, '162.158.155.245', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (20, 'Train', '500.00000000', 'ADMIN', '0.00000000', 'Thanks', '2020-03-23 05:52:27', '2020-03-23 05:52:27', 1, '162.158.154.58', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (21, '6U1OP5', '15.00000000', 'phone', '0.00000000', '{\"om_name\":\"James\",\"om_mobile\":\"2332547854\",\"transaction_no\":\"C09939393393393\",\"idcard_no\":\"\"}', '2020-03-27 01:54:48', NULL, 1, '162.158.154.178', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (22, '324234', '324234234.00000000', 'ADMIN', '0.00000000', 'dfssdfsdf', '2020-04-02 03:30:57', '2020-04-02 03:30:57', 1, '141.101.98.79', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (23, 'W1R3J3', '100.00000000', 'phone', '0.00000000', '{\"om_name\":\"aa\",\"om_mobile\":\"65656565\",\"transaction_no\":\"656565\",\"idcard_no\":\"6666666666\"}', '2020-04-06 23:06:50', NULL, 1, '162.158.154.58', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (24, 'W1R3J3', '100000000000.00000000', 'phone', '0.00000000', '{\"om_name\":\"ds\",\"om_mobile\":\"63776544545\",\"transaction_no\":\"555\",\"idcard_no\":\"5555555555\"}', '2020-04-06 23:08:25', NULL, 1, '162.158.154.58', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (25, '8NS5Y4', '100.00000000', 'stripe', '0.00000000', NULL, '2020-04-17 21:21:12', NULL, 1, '162.158.155.131', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (26, 'XFKLGQ', '1000.00000000', 'phone', '0.00000000', '{\"om_name\":\"Tyy\",\"om_mobile\":\"ggg\",\"transaction_no\":\"hhjjj\",\"idcard_no\":\"yuyrr\"}', '2020-05-06 05:28:04', NULL, 1, '141.101.98.121', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (27, '8NS5Y4', '1000.00000000', 'phone', '0.00000000', '{\"om_name\":\"\",\"om_mobile\":\"\",\"transaction_no\":\"\",\"idcard_no\":\"\"}', '2020-05-09 14:02:44', NULL, 1, '162.158.159.85', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (28, '8NS5Y4', '5000.00000000', 'ADMIN', '0.00000000', 'Demo note', '2020-05-20 08:59:01', '2020-05-20 08:59:01', 1, '162.158.158.36', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (29, '8NS5Y4', '1000.00000000', 'ADMIN', '0.00000000', 'new amount', '2020-05-20 09:02:34', '2020-05-20 09:02:34', 1, '162.158.158.160', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (30, '8NS5Y4', '100.00000000', 'admin', '0.00000000', 'fgf', '2021-04-10 00:18:21', '2021-04-10 00:18:21', 1, '::1', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (31, '8NS5Y4', '100000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:43:12', '2019-01-17 05:43:12', 1, '172.68.146.105', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (32, '8NS5Y4', '200000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:43:34', '2019-01-17 05:43:34', 1, '172.69.134.160', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (33, '6U1OP5', '90000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:43:57', '2019-01-17 05:43:57', 1, '172.68.146.105', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (34, 'W1R3J3', '105000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:44:32', '2019-01-17 05:44:32', 1, '172.69.134.160', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (35, '10QZ56', '80000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:45:15', '2019-01-17 05:45:15', 1, '172.68.146.105', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (36, 'BX8333', '120000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:45:46', '2019-01-17 05:45:46', 1, '172.69.134.160', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (37, 'SIRWH9', '200000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:46:04', '2019-01-17 05:46:04', 1, '172.69.134.160', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (38, 'UGMOCC', '150000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:46:22', '2019-01-17 05:46:22', 1, '172.69.134.190', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (39, 'X2NL8S', '130000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:46:52', '2019-01-17 05:46:52', 1, '172.69.134.190', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (40, 'N2LDPD', '125000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:47:21', '2019-01-17 05:47:21', 1, '172.68.146.243', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (41, 'C5PTTH', '160000.00000000', 'ADMIN', '0.00000000', 'demo', '2019-01-17 05:47:47', '2019-01-17 05:47:47', 1, '172.68.146.243', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (42, '8NS5Y4', '200.00000000', 'stripe', '0.00000000', NULL, '2019-02-24 08:47:17', NULL, 1, '162.158.155.198', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (43, '8NS5Y4', '500.00000000', 'paypal', '0.00000000', NULL, '2019-02-24 09:02:02', NULL, 1, '141.101.98.62', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (44, '8NS5Y4', '100.00000000', 'paypal', '2.00000000', NULL, '2019-02-24 09:09:33', NULL, 1, '141.101.99.159', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (45, '8NS5Y4', '200.00000000', 'stripe', '4.00000000', NULL, '2019-02-24 09:10:19', NULL, 1, '141.101.98.62', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (46, '8NS5Y4', '120.00000000', 'stripe', '2.40000000', NULL, '2019-02-24 09:11:34', NULL, 1, '141.101.99.159', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (47, '8NS5Y4', '1000.00000000', 'stripe', '20.00000000', NULL, '2019-02-24 09:13:36', NULL, 1, '141.101.98.62', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (48, '8NS5Y4', '2000.00000000', 'paypal', '40.00000000', NULL, '2019-02-24 09:15:19', NULL, 1, '141.101.99.159', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (49, '2', '1000.00000000', 'ADMIN', '0.00000000', 'test', '2020-03-22 12:05:59', '2020-03-22 12:05:59', 1, '162.158.155.245', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (50, 'Train', '500.00000000', 'ADMIN', '0.00000000', 'Thanks', '2020-03-23 05:52:27', '2020-03-23 05:52:27', 1, '162.158.154.58', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (51, '6U1OP5', '15.00000000', 'phone', '0.00000000', '{\"om_name\":\"James\",\"om_mobile\":\"2332547854\",\"transaction_no\":\"C09939393393393\",\"idcard_no\":\"\"}', '2020-03-27 01:54:48', NULL, 1, '162.158.154.178', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (52, '324234', '324234234.00000000', 'ADMIN', '0.00000000', 'dfssdfsdf', '2020-04-02 03:30:57', '2020-04-02 03:30:57', 1, '141.101.98.79', 'admin');
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (53, 'W1R3J3', '100.00000000', 'phone', '0.00000000', '{\"om_name\":\"aa\",\"om_mobile\":\"65656565\",\"transaction_no\":\"656565\",\"idcard_no\":\"6666666666\"}', '2020-04-06 23:06:50', NULL, 1, '162.158.154.58', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (54, 'W1R3J3', '100000000000.00000000', 'phone', '0.00000000', '{\"om_name\":\"ds\",\"om_mobile\":\"63776544545\",\"transaction_no\":\"555\",\"idcard_no\":\"5555555555\"}', '2020-04-06 23:08:25', NULL, 1, '162.158.154.58', NULL);
INSERT INTO `dbt_deposit` (`id`, `user_id`, `amount`, `method`, `fees_amount`, `comment`, `deposit_date`, `approved_date`, `status`, `ip`, `approved_cancel_by`) VALUES (55, '8NS5Y4', '100.00000000', 'stripe', '0.00000000', NULL, '2020-04-17 21:21:12', NULL, 1, '162.158.155.131', NULL);


#
# TABLE STRUCTURE FOR: dbt_exchange
#

DROP TABLE IF EXISTS `dbt_exchange`;

CREATE TABLE `dbt_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exchange_type` varchar(10) NOT NULL,
  `source_wallet` varchar(300) NOT NULL,
  `crypto_qty` double(19,8) NOT NULL,
  `crypto_rate` double(19,8) NOT NULL,
  `complete_qty` double(19,8) NOT NULL,
  `available_qty` double(19,8) NOT NULL,
  `total_amount` double(19,8) NOT NULL,
  `amount_available` double(19,8) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `market_symbol` varchar(50) NOT NULL,
  `fees_amount` double(19,8) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Cancel, 1=Complete, 2=Running',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (1, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '50.00000000', '2.00000000', '50.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:56:36', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (2, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '50.00000000', '2.00000000', '50.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:56:36', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (3, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '60.00000000', '2.05000000', '60.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:57:38', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (4, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '60.00000000', '2.05000000', '60.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:57:38', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (5, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '60.00000000', '2.07000000', '60.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:58:34', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (6, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '60.00000000', '2.07000000', '60.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:58:34', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (7, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '50.00000000', '2.10000000', '50.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:59:41', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (8, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '50.00000000', '2.10000000', '50.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:59:41', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (9, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '50.00000000', '2.13000000', '50.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:00:35', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (10, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '50.00000000', '2.13000000', '50.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:00:35', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (11, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '70.00000000', '2.16000000', '70.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:01:34', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (12, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '70.00000000', '2.16000000', '70.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:01:34', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (13, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '40.00000000', '2.13000000', '40.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:02:35', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (14, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '40.00000000', '2.13000000', '40.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:02:35', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (15, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '80.00000000', '2.10000000', '80.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:03:37', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (16, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '80.00000000', '2.10000000', '80.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:03:37', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (17, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '70.00000000', '2.14000000', '70.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:04:36', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (18, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '70.00000000', '2.14000000', '70.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:04:36', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (19, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '50.00000000', '2.17000000', '50.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:05:39', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (20, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '50.00000000', '2.17000000', '50.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:05:39', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (21, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '55.00000000', '2.20000000', '55.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:06:38', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (22, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '55.00000000', '2.20000000', '55.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:06:38', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (23, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '60.00000000', '2.23000000', '60.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:07:34', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (24, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '60.00000000', '2.23000000', '60.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:07:34', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (25, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '65.00000000', '2.26000000', '65.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:08:35', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (26, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '65.00000000', '2.26000000', '65.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:08:35', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (27, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '70.00000000', '2.30000000', '70.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:09:34', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (28, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '70.00000000', '2.30000000', '70.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:09:34', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (29, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '75.00000000', '2.60000000', '0.00000000', '75.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:10:03', 0);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (30, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '75.00000000', '2.26000000', '75.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:11:44', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (31, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '75.00000000', '2.26000000', '75.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:11:44', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (32, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '80.00000000', '2.23000000', '80.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:12:40', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (33, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '80.00000000', '2.23000000', '80.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:12:40', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (34, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '85.00000000', '2.18000000', '85.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:13:58', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (35, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '85.00000000', '2.18000000', '85.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:13:58', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (36, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '90.00000000', '2.24000000', '90.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:14:57', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (37, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '90.00000000', '2.24000000', '90.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:14:57', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (38, 'SELL', '1f82d403720b592194bc2982dcc600e5', '95.00000000', '2.28000000', '55.00000000', '40.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:21:03', 0);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (39, 'BUY', 'b0fd2862074372d77f54a9602f1c0978', '95.00000000', '2.28000000', '0.00000000', '95.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:16:39', 0);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (40, 'SELL', '1f82d403720b592194bc2982dcc600e5', '50.00000000', '2.30000000', '50.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:21:03', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (41, 'BUY', 'b0fd2862074372d77f54a9602f1c0978', '50.00000000', '2.28000000', '50.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:19:48', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (42, 'SELL', 'b0fd2862074372d77f54a9602f1c0978', '55.00000000', '2.33000000', '0.00000000', '55.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:20:40', 0);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (43, 'BUY', '1f82d403720b592194bc2982dcc600e5', '55.00000000', '2.28000000', '105.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:21:03', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (44, 'BUY', 'b0fd2862074372d77f54a9602f1c0978', '45.00000000', '2.28000000', '0.00000000', '45.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:22:35', 0);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (45, 'SELL', '1f82d403720b592194bc2982dcc600e5', '70.00000000', '2.32000000', '70.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:23:51', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (46, 'BUY', 'b0fd2862074372d77f54a9602f1c0978', '70.00000000', '2.32000000', '70.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:23:51', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (47, 'SELL', 'b0fd2862074372d77f54a9602f1c0978', '75.00000000', '2.35000000', '75.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:24:32', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (48, 'BUY', '1f82d403720b592194bc2982dcc600e5', '75.00000000', '2.35000000', '75.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:24:32', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (49, 'SELL', '1f82d403720b592194bc2982dcc600e5', '80.00000000', '2.38000000', '80.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:25:09', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (50, 'BUY', 'b0fd2862074372d77f54a9602f1c0978', '80.00000000', '2.38000000', '80.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:25:09', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (51, 'SELL', 'b0fd2862074372d77f54a9602f1c0978', '85.00000000', '2.40000000', '85.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:26:36', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (52, 'BUY', '1f82d403720b592194bc2982dcc600e5', '85.00000000', '2.40000000', '85.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:26:36', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (53, 'SELL', 'b0fd2862074372d77f54a9602f1c0978', '80.00000000', '2.43000000', '80.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:28:36', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (54, 'BUY', '1f82d403720b592194bc2982dcc600e5', '80.00000000', '2.43000000', '80.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:28:36', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (55, 'SELL', '1f82d403720b592194bc2982dcc600e5', '85.00000000', '2.40000000', '85.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:29:32', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (56, 'BUY', 'b0fd2862074372d77f54a9602f1c0978', '85.00000000', '2.40000000', '85.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:29:32', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (57, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '2.40000000', '1.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.02400000', '2019-02-27 19:56:48', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (58, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '100.00000000', '2.40000000', '9.00000000', '91.00000000', '0.00000000', '0.00000000', '', '', '2.40000000', '2019-02-27 19:56:48', 0);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (59, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '10.00000000', '2.40000000', '10.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.24000000', '2019-02-27 19:56:48', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (60, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '2.40000000', '0.00000000', '1.00000000', '0.00000000', '0.00000000', '', '', '0.02400000', '2020-03-30 07:36:13', 0);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (61, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '10.00000000', '2.40000000', '1.00000000', '9.00000000', '0.00000000', '0.00000000', '', '', '2.40000000', '2020-04-26 22:16:59', 0);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (62, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '106.00000000', '2.00000000', '0.00000000', '106.00000000', '0.00000000', '0.00000000', '', '', '2.12000000', '2020-04-26 22:16:32', 0);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (63, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '1.00000000', '2.40000000', '1.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.02400000', '2020-04-26 22:17:04', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (64, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '1.00000000', '89.00000000', '0.00000000', '1.00000000', '0.00000000', '0.00000000', '', '', '0.89000000', '2020-04-26 22:16:41', 0);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (65, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '19.00000000', '2.49000000', '13.00000000', '6.00000000', '0.00000000', '0.00000000', '', '', '0.47310000', '2020-06-14 19:51:06', 2);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (66, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '81.00000000', '2.40000000', '1.00000000', '80.00000000', '0.00000000', '0.00000000', '', '', '1.94400000', '2020-05-01 21:07:58', 2);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (67, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '1.00000000', '2.40000000', '1.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.02400000', '2020-04-26 22:16:59', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (68, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '1.00000000', '2.40000000', '1.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.02400000', '2020-04-26 22:17:04', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (69, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '190.00000000', '92.40000000', '0.00000000', '190.00000000', '0.00000000', '0.00000000', '', '', '175.56000000', '2020-04-26 22:17:30', 2);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (70, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '1.00000000', '982.40980000', '0.00000000', '1.00000000', '0.00000000', '0.00000000', '', '', '9.82409800', '2020-04-26 22:17:40', 2);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (71, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '1.00000000', '2.40000000', '1.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.02400000', '2020-06-14 13:53:07', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (72, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '12.00000000', '2.46000000', '12.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.29520000', '2020-04-29 04:57:42', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (73, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '1.00000000', '0.00000000', '1.00000000', '0.00000000', '0.00000000', '', '', '0.01000000', '2020-05-01 21:07:38', 0);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (74, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '1.50000000', '1.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.01500000', '2020-05-01 21:07:58', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (75, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '1.50000000', '1.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.01500000', '2020-06-14 13:53:07', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (76, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '1.50000000', '0.00000000', '1.00000000', '0.00000000', '0.00000000', '', '', '0.03000000', '2020-06-14 13:53:15', 0);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (77, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '2.00000000', '0.00000000', '1.00000000', '0.00000000', '0.00000000', '', '', '0.04000000', '2020-06-14 19:50:57', 2);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (78, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '1.50000000', '1.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', '0.01500000', '2020-06-14 19:51:06', 1);
INSERT INTO `dbt_exchange` (`id`, `exchange_type`, `source_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `total_amount`, `amount_available`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (79, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '1.50000000', '0.00000000', '1.00000000', '0.00000000', '0.00000000', '', '', '0.03000000', '2020-06-14 19:51:58', 2);


#
# TABLE STRUCTURE FOR: dbt_exchange_details
#

DROP TABLE IF EXISTS `dbt_exchange_details`;

CREATE TABLE `dbt_exchange_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exc_id` int(11) NOT NULL,
  `exchange_type` varchar(10) NOT NULL,
  `source_wallet` varchar(300) NOT NULL,
  `destination_wallet` varchar(300) NOT NULL,
  `crypto_qty` double(19,8) NOT NULL,
  `crypto_rate` double(19,8) NOT NULL,
  `complete_qty` double(19,8) NOT NULL,
  `available_qty` double(19,8) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `market_symbol` varchar(50) NOT NULL,
  `fees_amount` double(19,8) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (1, 2, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '50.00000000', '2.00000000', '50.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:56:36', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (2, 2, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '50.00000000', '2.00000000', '50.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:56:36', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (3, 4, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '60.00000000', '2.05000000', '60.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:57:38', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (4, 4, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '60.00000000', '2.05000000', '60.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:57:38', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (5, 6, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '60.00000000', '2.07000000', '60.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:58:34', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (6, 6, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '60.00000000', '2.07000000', '60.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:58:34', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (7, 8, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '50.00000000', '2.10000000', '50.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:59:41', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (8, 8, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '50.00000000', '2.10000000', '50.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 13:59:41', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (9, 10, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '50.00000000', '2.13000000', '50.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:00:35', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (10, 10, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '50.00000000', '2.13000000', '50.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:00:35', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (11, 12, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '70.00000000', '2.16000000', '70.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:01:34', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (12, 12, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '70.00000000', '2.16000000', '70.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:01:34', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (13, 14, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '40.00000000', '2.13000000', '40.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:02:35', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (14, 14, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '40.00000000', '2.13000000', '40.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:02:35', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (15, 16, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '80.00000000', '2.10000000', '80.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:03:37', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (16, 16, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '80.00000000', '2.10000000', '80.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:03:37', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (17, 18, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '70.00000000', '2.14000000', '70.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:04:36', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (18, 18, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '70.00000000', '2.14000000', '70.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:04:36', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (19, 20, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '50.00000000', '2.17000000', '50.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:05:39', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (20, 20, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '50.00000000', '2.17000000', '50.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:05:39', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (21, 22, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '55.00000000', '2.20000000', '55.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:06:38', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (22, 22, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '55.00000000', '2.20000000', '55.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:06:38', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (23, 24, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '60.00000000', '2.23000000', '60.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:07:34', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (24, 24, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '60.00000000', '2.23000000', '60.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:07:34', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (25, 26, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '65.00000000', '2.26000000', '65.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:08:35', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (26, 26, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '65.00000000', '2.26000000', '65.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:08:35', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (27, 28, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '70.00000000', '2.30000000', '70.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:09:34', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (28, 28, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '70.00000000', '2.30000000', '70.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:09:34', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (29, 29, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '75.00000000', '2.60000000', '0.00000000', '75.00000000', '', '', '0.00000000', '2019-01-17 14:11:23', 0);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (30, 31, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '75.00000000', '2.26000000', '75.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:11:44', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (31, 31, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '75.00000000', '2.26000000', '75.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:11:44', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (32, 33, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '80.00000000', '2.23000000', '80.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:12:40', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (33, 33, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '80.00000000', '2.23000000', '80.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:12:40', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (34, 35, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '85.00000000', '2.18000000', '85.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:13:58', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (35, 35, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '85.00000000', '2.18000000', '85.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:13:58', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (36, 37, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '90.00000000', '2.24000000', '90.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:14:57', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (37, 37, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '90.00000000', '2.24000000', '90.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:14:57', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (38, 41, 'SELL', '1f82d403720b592194bc2982dcc600e5', '1f82d403720b592194bc2982dcc600e5', '95.00000000', '2.28000000', '50.00000000', '45.00000000', '', '', '0.00000000', '2019-01-17 14:19:48', 2);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (39, 41, 'BUY', 'b0fd2862074372d77f54a9602f1c0978', 'b0fd2862074372d77f54a9602f1c0978', '50.00000000', '2.28000000', '50.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:19:48', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (40, 43, 'SELL', '1f82d403720b592194bc2982dcc600e5', '1f82d403720b592194bc2982dcc600e5', '50.00000000', '2.30000000', '50.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:21:03', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (41, 43, 'BUY', '1f82d403720b592194bc2982dcc600e5', '1f82d403720b592194bc2982dcc600e5', '55.00000000', '2.30000000', '50.00000000', '5.00000000', '', '', '0.00000000', '2019-01-17 14:21:03', 2);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (42, 43, 'SELL', '1f82d403720b592194bc2982dcc600e5', '1f82d403720b592194bc2982dcc600e5', '95.00000000', '2.28000000', '5.00000000', '40.00000000', '', '', '0.00000000', '2019-01-17 14:21:03', 2);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (43, 43, 'BUY', '1f82d403720b592194bc2982dcc600e5', '1f82d403720b592194bc2982dcc600e5', '55.00000000', '2.28000000', '55.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:21:03', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (44, 44, 'BUY', 'b0fd2862074372d77f54a9602f1c0978', 'b0fd2862074372d77f54a9602f1c0978', '45.00000000', '2.28000000', '0.00000000', '45.00000000', '', '', '0.00000000', '2019-01-17 14:22:50', 0);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (45, 42, 'SELL', 'b0fd2862074372d77f54a9602f1c0978', 'b0fd2862074372d77f54a9602f1c0978', '55.00000000', '2.33000000', '0.00000000', '55.00000000', '', '', '0.00000000', '2019-01-17 14:22:50', 0);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (46, 39, 'BUY', 'b0fd2862074372d77f54a9602f1c0978', 'b0fd2862074372d77f54a9602f1c0978', '95.00000000', '2.28000000', '0.00000000', '95.00000000', '', '', '0.00000000', '2019-01-17 14:22:51', 0);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (47, 38, 'SELL', '1f82d403720b592194bc2982dcc600e5', '1f82d403720b592194bc2982dcc600e5', '95.00000000', '2.28000000', '55.00000000', '40.00000000', '', '', '0.00000000', '2019-01-17 14:23:00', 0);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (48, 46, 'SELL', '1f82d403720b592194bc2982dcc600e5', '1f82d403720b592194bc2982dcc600e5', '70.00000000', '2.32000000', '70.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:23:51', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (49, 46, 'BUY', 'b0fd2862074372d77f54a9602f1c0978', 'b0fd2862074372d77f54a9602f1c0978', '70.00000000', '2.32000000', '70.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:23:51', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (50, 48, 'SELL', 'b0fd2862074372d77f54a9602f1c0978', 'b0fd2862074372d77f54a9602f1c0978', '75.00000000', '2.35000000', '75.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:24:32', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (51, 48, 'BUY', '1f82d403720b592194bc2982dcc600e5', '1f82d403720b592194bc2982dcc600e5', '75.00000000', '2.35000000', '75.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:24:32', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (52, 50, 'SELL', '1f82d403720b592194bc2982dcc600e5', '1f82d403720b592194bc2982dcc600e5', '80.00000000', '2.38000000', '80.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:25:09', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (53, 50, 'BUY', 'b0fd2862074372d77f54a9602f1c0978', 'b0fd2862074372d77f54a9602f1c0978', '80.00000000', '2.38000000', '80.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:25:09', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (54, 52, 'SELL', 'b0fd2862074372d77f54a9602f1c0978', 'b0fd2862074372d77f54a9602f1c0978', '85.00000000', '2.40000000', '85.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:26:36', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (55, 52, 'BUY', '1f82d403720b592194bc2982dcc600e5', '1f82d403720b592194bc2982dcc600e5', '85.00000000', '2.40000000', '85.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:26:36', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (56, 54, 'SELL', 'b0fd2862074372d77f54a9602f1c0978', 'b0fd2862074372d77f54a9602f1c0978', '80.00000000', '2.43000000', '80.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:28:36', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (57, 54, 'BUY', '1f82d403720b592194bc2982dcc600e5', '1f82d403720b592194bc2982dcc600e5', '80.00000000', '2.43000000', '80.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:28:36', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (58, 56, 'SELL', '1f82d403720b592194bc2982dcc600e5', '1f82d403720b592194bc2982dcc600e5', '85.00000000', '2.40000000', '85.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:29:32', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (59, 56, 'BUY', 'b0fd2862074372d77f54a9602f1c0978', 'b0fd2862074372d77f54a9602f1c0978', '85.00000000', '2.40000000', '85.00000000', '0.00000000', '', '', '0.00000000', '2019-01-17 14:29:32', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (60, 59, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '10.00000000', '2.40000000', '1.00000000', '9.00000000', '', '', '0.24000000', '2019-02-27 19:56:48', 2);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (61, 59, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '2.40000000', '1.00000000', '0.00000000', '', '', '0.02400000', '2019-02-27 19:56:48', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (62, 59, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '10.00000000', '2.40000000', '9.00000000', '0.00000000', '', '', '0.24000000', '2019-02-27 19:56:48', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (63, 59, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '100.00000000', '2.40000000', '9.00000000', '91.00000000', '', '', '0.21600000', '2019-02-27 19:56:48', 2);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (64, 58, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '100.00000000', '2.40000000', '9.00000000', '91.00000000', '', '', '0.00000000', '2019-02-28 02:15:37', 0);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (65, 60, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '2.40000000', '0.00000000', '1.00000000', '', '', '0.00000000', '2020-04-01 07:42:09', 0);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (66, 67, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '1.00000000', '2.40000000', '1.00000000', '0.00000000', '', '', '0.02400000', '2020-04-26 22:16:59', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (67, 67, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '10.00000000', '2.40000000', '1.00000000', '9.00000000', '', '', '0.02400000', '2020-04-26 22:16:59', 2);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (68, 68, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '1.00000000', '2.40000000', '1.00000000', '0.00000000', '', '', '0.02400000', '2020-04-26 22:17:04', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (69, 68, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '1.00000000', '2.40000000', '1.00000000', '0.00000000', '', '', '0.02400000', '2020-04-26 22:17:04', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (70, 64, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '1.00000000', '89.00000000', '0.00000000', '1.00000000', '', '', '0.00000000', '2020-04-26 22:18:13', 0);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (71, 72, 'SELL', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '12.00000000', '2.46000000', '12.00000000', '0.00000000', '', '', '0.29520000', '2020-04-29 04:57:42', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (72, 72, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '19.00000000', '2.46000000', '12.00000000', '7.00000000', '', '', '0.29520000', '2020-04-29 04:57:42', 2);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (73, 62, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '106.00000000', '2.00000000', '0.00000000', '106.00000000', '', '', '0.00000000', '2020-04-30 11:52:50', 0);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (74, 74, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '1.50000000', '1.00000000', '0.00000000', '', '', '0.01500000', '2020-05-01 21:07:58', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (75, 74, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '81.00000000', '1.50000000', '1.00000000', '80.00000000', '', '', '0.01500000', '2020-05-01 21:07:58', 2);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (76, 61, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '10.00000000', '2.40000000', '1.00000000', '9.00000000', '', '', '0.00000000', '2020-05-30 07:19:43', 0);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (77, 75, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '1.50000000', '1.00000000', '0.00000000', '', '', '0.01500000', '2020-06-14 13:53:07', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (78, 75, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '1.00000000', '1.50000000', '1.00000000', '0.00000000', '', '', '0.03000000', '2020-06-14 13:53:07', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (79, 78, 'SELL', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '1.50000000', '1.00000000', '0.00000000', '', '', '0.01500000', '2020-06-14 19:51:06', 1);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (80, 78, 'BUY', '0e401765b76def363445c21cf4dc8b3d', '0e401765b76def363445c21cf4dc8b3d', '19.00000000', '1.50000000', '1.00000000', '6.00000000', '', '', '0.03000000', '2020-06-14 19:51:06', 2);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (81, 73, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '1.00000000', '0.00000000', '1.00000000', '', '', '0.00000000', '2020-06-14 20:10:44', 0);
INSERT INTO `dbt_exchange_details` (`id`, `exc_id`, `exchange_type`, `source_wallet`, `destination_wallet`, `crypto_qty`, `crypto_rate`, `complete_qty`, `available_qty`, `currency_symbol`, `market_symbol`, `fees_amount`, `datetime`, `status`) VALUES (82, 76, 'BUY', '6e912a46c2177b5933ec7ae238b4c371', '6e912a46c2177b5933ec7ae238b4c371', '1.00000000', '1.50000000', '0.00000000', '1.00000000', '', '', '0.00000000', '2020-06-14 20:11:53', 0);


#
# TABLE STRUCTURE FOR: dbt_exchange_history
#

DROP TABLE IF EXISTS `dbt_exchange_history`;

CREATE TABLE `dbt_exchange_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin_symbol` varchar(100) NOT NULL,
  `market_symbol` varchar(100) NOT NULL,
  `last_price` double(19,8) NOT NULL,
  `total_coin_supply` double(19,8) NOT NULL,
  `price_high_1h` double(19,8) NOT NULL,
  `price_low_1h` double(19,8) NOT NULL,
  `price_change_1h` double(19,8) NOT NULL,
  `volume_1h` double(19,8) NOT NULL,
  `price_high_24h` double(19,8) NOT NULL,
  `price_low_24h` double(19,8) NOT NULL,
  `price_change_24h` double(19,8) NOT NULL,
  `volume_24h` double(19,8) NOT NULL,
  `open` double(19,8) NOT NULL,
  `close` double(19,8) NOT NULL,
  `volumefrom` double(19,8) NOT NULL,
  `volumeto` double(19,8) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (1, '', '', '2.00000000', '100.00000000', '2.00000000', '2.00000000', '0.00000000', '50.00000000', '2.00000000', '2.00000000', '0.00000000', '50.00000000', '2.00000000', '2.00000000', '100.00000000', '50.00000000', '2019-01-17 13:56:36');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (2, '', '', '2.05000000', '170.00000000', '2.05000000', '2.00000000', '0.00000000', '110.00000000', '2.05000000', '2.00000000', '0.00000000', '110.00000000', '2.05000000', '2.05000000', '170.00000000', '110.00000000', '2019-01-17 13:57:38');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (3, '', '', '2.07000000', '230.00000000', '2.07000000', '2.00000000', '0.00000000', '170.00000000', '2.07000000', '2.00000000', '0.00000000', '170.00000000', '2.07000000', '2.07000000', '230.00000000', '170.00000000', '2019-01-17 13:58:34');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (4, '', '', '2.10000000', '270.00000000', '2.10000000', '2.00000000', '0.00000000', '220.00000000', '2.10000000', '2.00000000', '0.00000000', '220.00000000', '2.10000000', '2.10000000', '270.00000000', '220.00000000', '2019-01-17 13:59:41');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (5, '', '', '2.13000000', '320.00000000', '2.13000000', '2.00000000', '0.00000000', '270.00000000', '2.13000000', '2.00000000', '0.00000000', '270.00000000', '2.13000000', '2.13000000', '320.00000000', '270.00000000', '2019-01-17 14:00:35');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (6, '', '', '2.16000000', '410.00000000', '2.16000000', '2.00000000', '0.00000000', '340.00000000', '2.16000000', '2.00000000', '0.00000000', '340.00000000', '2.16000000', '2.16000000', '410.00000000', '340.00000000', '2019-01-17 14:01:34');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (7, '', '', '2.13000000', '420.00000000', '2.16000000', '2.00000000', '0.03000000', '380.00000000', '2.16000000', '2.00000000', '0.03000000', '380.00000000', '2.13000000', '2.13000000', '420.00000000', '380.00000000', '2019-01-17 14:02:35');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (8, '', '', '2.10000000', '540.00000000', '2.16000000', '2.00000000', '0.06000000', '460.00000000', '2.16000000', '2.00000000', '0.06000000', '460.00000000', '2.10000000', '2.10000000', '540.00000000', '460.00000000', '2019-01-17 14:03:37');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (9, '', '', '2.14000000', '600.00000000', '2.16000000', '2.00000000', '0.02000000', '530.00000000', '2.16000000', '2.00000000', '0.02000000', '530.00000000', '2.14000000', '2.14000000', '600.00000000', '530.00000000', '2019-01-17 14:04:36');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (10, '', '', '2.17000000', '630.00000000', '2.17000000', '2.00000000', '0.00000000', '580.00000000', '2.17000000', '2.00000000', '0.00000000', '580.00000000', '2.17000000', '2.17000000', '630.00000000', '580.00000000', '2019-01-17 14:05:39');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (11, '', '', '2.20000000', '690.00000000', '2.20000000', '2.00000000', '0.00000000', '635.00000000', '2.20000000', '2.00000000', '0.00000000', '635.00000000', '2.20000000', '2.20000000', '690.00000000', '635.00000000', '2019-01-17 14:06:38');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (12, '', '', '2.23000000', '755.00000000', '2.23000000', '2.00000000', '0.00000000', '695.00000000', '2.23000000', '2.00000000', '0.00000000', '695.00000000', '2.23000000', '2.23000000', '755.00000000', '695.00000000', '2019-01-17 14:07:34');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (13, '', '', '2.26000000', '825.00000000', '2.26000000', '2.00000000', '0.00000000', '760.00000000', '2.26000000', '2.00000000', '0.00000000', '760.00000000', '2.26000000', '2.26000000', '825.00000000', '760.00000000', '2019-01-17 14:08:35');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (14, '', '', '2.30000000', '900.00000000', '2.30000000', '2.00000000', '0.00000000', '830.00000000', '2.30000000', '2.00000000', '0.00000000', '830.00000000', '2.30000000', '2.30000000', '900.00000000', '830.00000000', '2019-01-17 14:09:34');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (15, '', '', '2.26000000', '980.00000000', '2.60000000', '2.00000000', '0.34000000', '905.00000000', '2.60000000', '2.00000000', '0.34000000', '905.00000000', '2.26000000', '2.26000000', '980.00000000', '905.00000000', '2019-01-17 14:11:44');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (16, '', '', '2.23000000', '1065.00000000', '2.60000000', '2.00000000', '0.37000000', '985.00000000', '2.60000000', '2.00000000', '0.37000000', '985.00000000', '2.23000000', '2.23000000', '1065.00000000', '985.00000000', '2019-01-17 14:12:40');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (17, '', '', '2.18000000', '1155.00000000', '2.60000000', '2.00000000', '0.42000000', '1070.00000000', '2.60000000', '2.00000000', '0.42000000', '1070.00000000', '2.18000000', '2.18000000', '1155.00000000', '1070.00000000', '2019-01-17 14:13:58');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (18, '', '', '2.24000000', '1250.00000000', '2.60000000', '2.00000000', '0.36000000', '1160.00000000', '2.60000000', '2.00000000', '0.36000000', '1160.00000000', '2.24000000', '2.24000000', '1250.00000000', '1160.00000000', '2019-01-17 14:14:57');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (19, '', '', '2.28000000', '1260.00000000', '2.60000000', '2.00000000', '0.32000000', '1210.00000000', '2.60000000', '2.00000000', '0.32000000', '1210.00000000', '2.28000000', '2.28000000', '1260.00000000', '1210.00000000', '2019-01-17 14:19:48');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (20, '', '', '2.30000000', '1310.00000000', '2.60000000', '2.00000000', '0.30000000', '1260.00000000', '2.60000000', '2.00000000', '0.30000000', '1260.00000000', '2.30000000', '2.30000000', '1310.00000000', '1260.00000000', '2019-01-17 14:21:03');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (21, '', '', '2.28000000', '1370.00000000', '2.60000000', '2.00000000', '0.32000000', '1315.00000000', '2.60000000', '2.00000000', '0.32000000', '1315.00000000', '2.28000000', '2.28000000', '1370.00000000', '1315.00000000', '2019-01-17 14:21:03');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (22, '', '', '2.32000000', '1455.00000000', '2.60000000', '2.00000000', '0.28000000', '1385.00000000', '2.60000000', '2.00000000', '0.28000000', '1385.00000000', '2.32000000', '2.32000000', '1455.00000000', '1385.00000000', '2019-01-17 14:23:51');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (23, '', '', '2.35000000', '1535.00000000', '2.60000000', '2.00000000', '0.25000000', '1460.00000000', '2.60000000', '2.00000000', '0.25000000', '1460.00000000', '2.35000000', '2.35000000', '1535.00000000', '1460.00000000', '2019-01-17 14:24:32');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (24, '', '', '2.38000000', '1620.00000000', '2.60000000', '2.00000000', '0.22000000', '1540.00000000', '2.60000000', '2.00000000', '0.22000000', '1540.00000000', '2.38000000', '2.38000000', '1620.00000000', '1540.00000000', '2019-01-17 14:25:09');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (25, '', '', '2.40000000', '1710.00000000', '2.60000000', '2.00000000', '0.20000000', '1625.00000000', '2.60000000', '2.00000000', '0.20000000', '1625.00000000', '2.40000000', '2.40000000', '1710.00000000', '1625.00000000', '2019-01-17 14:26:36');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (26, '', '', '2.43000000', '1785.00000000', '2.60000000', '2.00000000', '0.17000000', '1705.00000000', '2.60000000', '2.00000000', '0.17000000', '1705.00000000', '2.43000000', '2.43000000', '1785.00000000', '1705.00000000', '2019-01-17 14:28:36');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (27, '', '', '2.40000000', '1875.00000000', '2.60000000', '2.00000000', '0.20000000', '1790.00000000', '2.60000000', '2.00000000', '0.20000000', '1790.00000000', '2.40000000', '2.40000000', '1875.00000000', '1790.00000000', '2019-01-17 14:29:32');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (28, '', '', '2.40000000', '1792.00000000', '2.40000000', '2.40000000', '0.00000000', '1791.00000000', '2.40000000', '2.40000000', '0.00000000', '1791.00000000', '2.40000000', '2.40000000', '1792.00000000', '1791.00000000', '2019-02-27 19:56:48');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (29, '', '', '2.40000000', '1809.00000000', '2.40000000', '2.40000000', '0.00000000', '1800.00000000', '2.40000000', '2.40000000', '0.00000000', '1800.00000000', '2.40000000', '2.40000000', '1809.00000000', '1800.00000000', '2019-02-27 19:56:48');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (30, '', '', '2.40000000', '1811.00000000', '2.40000000', '2.40000000', '0.00000000', '1810.00000000', '2.40000000', '2.40000000', '0.00000000', '1810.00000000', '2.40000000', '2.40000000', '1811.00000000', '1810.00000000', '2020-04-26 22:16:59');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (31, '', '', '2.40000000', '1812.00000000', '2.40000000', '2.40000000', '0.00000000', '1811.00000000', '2.40000000', '2.40000000', '0.00000000', '1811.00000000', '2.40000000', '2.40000000', '1812.00000000', '1811.00000000', '2020-04-26 22:17:04');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (32, '', '', '2.46000000', '1835.00000000', '2.46000000', '2.46000000', '0.00000000', '1823.00000000', '2.46000000', '2.46000000', '0.00000000', '1823.00000000', '2.46000000', '2.46000000', '1835.00000000', '1823.00000000', '2020-04-29 04:57:42');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (33, '', '', '1.50000000', '1825.00000000', '1.50000000', '1.50000000', '0.00000000', '1824.00000000', '1.50000000', '1.50000000', '0.00000000', '1824.00000000', '1.50000000', '1.50000000', '1825.00000000', '1824.00000000', '2020-05-01 21:07:58');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (34, '', '', '1.50000000', '1827.00000000', '1.50000000', '1.50000000', '0.00000000', '1826.00000000', '1.50000000', '1.50000000', '0.00000000', '1826.00000000', '1.50000000', '1.50000000', '1827.00000000', '1826.00000000', '2020-06-14 07:53:07');
INSERT INTO `dbt_exchange_history` (`id`, `coin_symbol`, `market_symbol`, `last_price`, `total_coin_supply`, `price_high_1h`, `price_low_1h`, `price_change_1h`, `volume_1h`, `price_high_24h`, `price_low_24h`, `price_change_24h`, `volume_24h`, `open`, `close`, `volumefrom`, `volumeto`, `date`) VALUES (35, '', '', '1.50000000', '1828.00000000', '1.50000000', '1.50000000', '0.00000000', '1827.00000000', '1.50000000', '1.50000000', '0.00000000', '1827.00000000', '1.50000000', '1.50000000', '1828.00000000', '1827.00000000', '2020-06-14 13:51:07');


#
# TABLE STRUCTURE FOR: dbt_fees
#

DROP TABLE IF EXISTS `dbt_fees`;

CREATE TABLE `dbt_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(100) NOT NULL,
  `fees` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_fees` (`id`, `level`, `fees`, `status`) VALUES (2, 'SELL', '1', 0);
INSERT INTO `dbt_fees` (`id`, `level`, `fees`, `status`) VALUES (3, 'DEPOSIT', '2', 0);
INSERT INTO `dbt_fees` (`id`, `level`, `fees`, `status`) VALUES (4, 'TRANSFER', '3', 0);
INSERT INTO `dbt_fees` (`id`, `level`, `fees`, `status`) VALUES (5, 'WITHDRAW', '2', 0);
INSERT INTO `dbt_fees` (`id`, `level`, `fees`, `status`) VALUES (8, 'BUY', '2', 0);


#
# TABLE STRUCTURE FOR: dbt_messenger
#

DROP TABLE IF EXISTS `dbt_messenger`;

CREATE TABLE `dbt_messenger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(50) NOT NULL,
  `reciver_id` varchar(50) NOT NULL,
  `subject` text NOT NULL,
  `messege` text NOT NULL,
  `replay_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `admin_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_messenger` (`id`, `sender_id`, `reciver_id`, `subject`, `messege`, `replay_id`, `date_time`, `status`, `admin_status`) VALUES (1, '8NS5Y4', 'admin', ' ??? ???', '? ?? ???', 0, '2020-03-26 12:17:19', 0, 0);
INSERT INTO `dbt_messenger` (`id`, `sender_id`, `reciver_id`, `subject`, `messege`, `replay_id`, `date_time`, `status`, `admin_status`) VALUES (2, '8NS5Y4', 'admin', 'lknklnlk', 'm,l,l,m,pl,[\'l', 0, '2020-05-12 00:33:48', 0, 1);
INSERT INTO `dbt_messenger` (`id`, `sender_id`, `reciver_id`, `subject`, `messege`, `replay_id`, `date_time`, `status`, `admin_status`) VALUES (3, 'admin', '8NS5Y4', 'test', 'test', 2, '2021-04-21 23:18:23', 1, 1);


#
# TABLE STRUCTURE FOR: dbt_payout_method
#

DROP TABLE IF EXISTS `dbt_payout_method`;

CREATE TABLE `dbt_payout_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) NOT NULL,
  `method` varchar(250) NOT NULL,
  `wallet_id` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `dbt_payout_method` (`id`, `user_id`, `method`, `wallet_id`, `status`) VALUES (1, '8NS5Y4', 'paypal', 'tareq7500personal2@gmail.com', 1);
INSERT INTO `dbt_payout_method` (`id`, `user_id`, `method`, `wallet_id`, `status`) VALUES (2, '8NS5Y4', 'stripe', '42424242424242', 1);
INSERT INTO `dbt_payout_method` (`id`, `user_id`, `method`, `wallet_id`, `status`) VALUES (3, '8NS5Y4', 'bitcoin', '56788g7hfdddhghuyttftfgy76644hd', 1);
INSERT INTO `dbt_payout_method` (`id`, `user_id`, `method`, `wallet_id`, `status`) VALUES (4, 'W1R3J3', 'phone', '55555555', 1);
INSERT INTO `dbt_payout_method` (`id`, `user_id`, `method`, `wallet_id`, `status`) VALUES (5, '8NS5Y4', 'phone', '1234', 1);
INSERT INTO `dbt_payout_method` (`id`, `user_id`, `method`, `wallet_id`, `status`) VALUES (6, '6U1OP5', 'bitcoin', '45678hjbbuu9900-', 1);
INSERT INTO `dbt_payout_method` (`id`, `user_id`, `method`, `wallet_id`, `status`) VALUES (7, '6U1OP5', 'payeer', 'xdf56789', 1);
INSERT INTO `dbt_payout_method` (`id`, `user_id`, `method`, `wallet_id`, `status`) VALUES (8, '6U1OP5', 'stripe', '45678hjbbummu9900-', 1);


#
# TABLE STRUCTURE FOR: dbt_release_setup
#

DROP TABLE IF EXISTS `dbt_release_setup`;

CREATE TABLE `dbt_release_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round_name` varchar(100) NOT NULL,
  `day` tinyint(5) NOT NULL,
  `target` int(11) NOT NULL,
  `fillup_target` double(19,8) NOT NULL,
  `exchange_currency` varchar(100) NOT NULL,
  `start_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_release_setup` (`id`, `round_name`, `day`, `target`, `fillup_target`, `exchange_currency`, `start_date`, `status`) VALUES (1, 'Round One', 127, 10000, '7380.00000000', 'USD', '2019-01-17 11:06:00', 1);
INSERT INTO `dbt_release_setup` (`id`, `round_name`, `day`, `target`, `fillup_target`, `exchange_currency`, `start_date`, `status`) VALUES (2, 'Round Two', 127, 20000, '20000.00000000', 'USD', '2020-03-31 10:10:00', 1);
INSERT INTO `dbt_release_setup` (`id`, `round_name`, `day`, `target`, `fillup_target`, `exchange_currency`, `start_date`, `status`) VALUES (3, 'hello world', 20, 20000, '0.00000000', 'USD', '2021-04-19 16:33:00', 1);


#
# TABLE STRUCTURE FOR: dbt_sms_email_template
#

DROP TABLE IF EXISTS `dbt_sms_email_template`;

CREATE TABLE `dbt_sms_email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sms_or_email` varchar(10) NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `subject_en` varchar(300) NOT NULL,
  `subject_fr` varchar(300) NOT NULL,
  `template_en` varchar(300) NOT NULL,
  `template_fr` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES (1, 'sms', 'transfer_verification', 'Transfer Verification Code', 'Transfer Verification Code', 'You are about to transfar %amount% to the account %receiver_id% Your code is %code%\r\n', 'Vous êtes sur le point de transférer% amount% sur le compte% receiver_id% Votre code est %code%\r\n');
INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES (2, 'email', 'transfer_verification', 'Transfer Verification', 'Transfer Verification', 'You are about to transfar %amount% to the account %receiver_id%  Your code is %varify_code%', 'Vous êtes sur le point de transférer% amount% sur le compte% receiver_id% Votre code est % varify_code% ');
INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES (3, 'sms', 'transfer_success', 'Transfer Confirm', 'Transfer Confirm', 'You successfully transfer The amount $%amount% to the account %receiver_id%. Your new balance is %new_balance%', 'You successfully transfer The amount $%amount% to the account %receiver_id%. Your new balance is %new_balance%');
INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES (4, 'email', 'transfer_success', 'Tranfer Confirm', 'Tranfer Confirm', 'You successfully transfer The amount $%amount% to the account %receiver_id%. Your new balance is %new_balance%', 'You successfully transfer The amount $%amount% to the account %receiver_id%. Your new balance is %new_balance%');
INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES (5, 'sms', 'withdraw_verification', '', '', 'You Withdraw The Amount Is %amount% The Verification Code is <h1>%varify_code%</h1>', 'You Withdraw The Amount Is %amount% The Verification Code is <h1>%varify_code%</h1>');
INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES (6, 'email', 'withdraw_verification', 'Withdraw Verification', 'Withdraw Verification French', 'You Withdraw The Amount Is %amount% The Verification Code is %varify_code%', 'You Withdraw The Amount Is %amount% The Verification Code is %varify_code%');
INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES (7, 'sms', 'withdraw_success', 'Withdraw Success', 'Withdraw Success', 'Hi, %name% You successfully withdraw the amount is $%amount% from your account. Your new balance is $%new_balance%', 'Hi, %name% You successfully withdraw the amount is $%amount% from your account. Your new balance is $%new_balance%');
INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES (8, 'email', 'withdraw_success', 'Withdraw', 'Withdraw', 'You successfully withdraw the amount is $%amount% from your account. Your new balance is $%new_balance%', 'You successfully withdraw the amount is $%amount% from your account. Your new balance is $%new_balance%');
INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES (9, 'email', 'forgot_password', '', '', 'The Verification Code is <h1>%varify_code%</h1>', 'The Verification Code is <h1>%varify_code%</h1>');
INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES (10, 'sms', 'deposit_success', 'Deposit', 'Deposit', 'Hi, %name% You Successfully  Deposit The Amount Is %amount%  date %date%', 'Hi, %name% You Successfully  Deposit The Amount Is %amount%  date %date%');
INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES (11, 'email', 'deposit_success', 'Deposit', 'Deposit', 'You successfully deposit the amount is %amount%. ', 'You successfully deposit the amount is %amount%. ');
INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES (12, 'email', 'registered', 'Account Activation', 'Account Activation', 'Your account was created successfully, Please click on the link below to activate your account. %url%\r\n', 'Votre compte a &eacute;t&eacute; cr&eacute;&eacute; avec succ&egrave;s, veuillez cliquer sur le lien ci-dessous pour activer votre compte.&nbsp;%url%\r\n');


#
# TABLE STRUCTURE FOR: dbt_token
#

DROP TABLE IF EXISTS `dbt_token`;

CREATE TABLE `dbt_token` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `token` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: dbt_transfer
#

DROP TABLE IF EXISTS `dbt_transfer`;

CREATE TABLE `dbt_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_user_id` varchar(255) DEFAULT NULL,
  `receiver_user_id` varchar(255) DEFAULT NULL,
  `amount` double(19,8) DEFAULT NULL,
  `fees` double(19,8) NOT NULL,
  `request_ip` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comments` mediumtext DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='client to client transfer success, request data recorded.';

INSERT INTO `dbt_transfer` (`id`, `sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES (1, '8NS5Y4', 'BX8333', '200.00000000', '6.00000000', '141.101.99.159', '2019-02-24', 'test', 1);
INSERT INTO `dbt_transfer` (`id`, `sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES (2, '8NS5Y4', '10QZ56', '100.00000000', '3.00000000', '141.101.98.62', '2019-02-24', 'demo', 1);
INSERT INTO `dbt_transfer` (`id`, `sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES (3, '8NS5Y4', 'UGMOCC', '200.00000000', '6.00000000', '141.101.99.159', '2019-02-24', 'demo', 1);
INSERT INTO `dbt_transfer` (`id`, `sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES (4, '8NS5Y4', 'X2NL8S', '150.00000000', '4.50000000', '141.101.99.159', '2019-02-24', 'demo', 1);


#
# TABLE STRUCTURE FOR: dbt_user
#

DROP TABLE IF EXISTS `dbt_user`;

CREATE TABLE `dbt_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password_reset_token` varchar(300) DEFAULT NULL,
  `googleauth` varchar(100) DEFAULT NULL,
  `referral_id` varchar(100) DEFAULT NULL,
  `referral_status` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '"0=Deactivated account, 1=Activated account, 2=Pending account, 3=Suspend account"',
  `verified` int(11) NOT NULL DEFAULT 0 COMMENT '0= did not submit info, 1= verified, 2=Cancel, 3=processing',
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (1, '8NS5Y4', 'Demo', 'demo', NULL, 'demo@mail.com', 'c4ca4238a0b923820dcc509a6f75849b', '12345', '0c58e272c310de5e9f9942a59faf62c9', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '2021-04-20 09:38:19', '::1');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (2, '6U1OP5', 'Demo1', 'demo1', NULL, 'demo1@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', '67890', NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2021-04-15 13:24:44', '172.69.135.29');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (3, 'W1R3J3', 'Demo2', 'demo2', NULL, 'demo2@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', '11123', NULL, NULL, '', 0, 'english', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-01 12:06:37', '172.69.135.29');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (4, '10QZ56', 'Demo3', 'demo3', NULL, 'demo3@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', '141516', NULL, NULL, '8NS5Y4', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-01-17 06:15:55', '162.158.165.107');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (5, 'BX8333', 'Demo4', 'demo4', NULL, 'demo4@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', '171821', NULL, NULL, '8NS5Y4', 0, 'english', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-01 08:51:24', '162.158.167.73');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (6, 'SIRWH9', 'Demo5', 'demo5', NULL, 'demo5@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', '303132', NULL, NULL, '6U1OP5', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-01-17 05:41:59', '172.68.146.243');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (7, 'UGMOCC', 'Demo6', 'demo6', NULL, 'demo6@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', '151617', NULL, NULL, 'W1R3J3', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-01-17 05:29:38', '162.158.166.96');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (8, 'X2NL8S', 'Demo7', 'demo7', NULL, 'demo7@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', '181920', NULL, NULL, '10QZ56', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-01-17 05:42:07', '172.68.146.105');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (9, 'N2LDPD', 'Demo8', 'demo8', NULL, 'demo8@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', '212223', NULL, NULL, 'BX8333', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-01-17 05:31:56', '172.69.135.29');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (10, 'C5PTTH', 'Demo9', 'demo9', NULL, 'demo9@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', '252627', NULL, NULL, 'UGMOCC', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-01-17 05:32:50', '172.69.134.190');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (11, 'DEQ57G', 'Abuchi', NULL, NULL, 'abuchiokoye10@gmail.com', '46fd3b7d52bcbabc351a3fa1472134bd', NULL, 'c81525bf620f1e2ab273a3920cdea4dd', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-12 14:08:48', '162.158.158.192');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (12, 'WQL4AU', 'FERNANDO', NULL, NULL, 'newbusiness2019@hotmail.com', '670f8574bd93dd78bd568dab84c6733a', NULL, '433f854050de65db036a5de20a0e00f2', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-13 01:05:06', '162.158.159.55');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (13, 'OQSDSV', 'dvfhgvjfjfhrghtfgh', NULL, NULL, 'xbvdbvdvnd@gmail.com', '60f8a01f9793fce18f6e14eff422efd6', NULL, '1017ebd9d28f3662f644cbfdb5a86de7', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-13 13:29:54', '162.158.159.85');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (14, '1KVUUT', 'karan', NULL, NULL, 'karannarwat@gmail.com', '109a6ea927ecff2d1eaa1789c9bdbd90', NULL, '3a2d54db29a4b4e23552a47445e5d231', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-14 13:18:59', '141.101.104.134');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (15, 'L6COM5', 'ali', NULL, NULL, 'aligencer1984@hotmail.com', 'ae0b1f7e59ff3843cb21f1105c85a203', NULL, 'f6fb2292b359e3cf9e1f24606cd32a95', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-14 14:15:07', '162.158.158.172');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (16, 'IFDDQK', 'Ehsan', NULL, NULL, 'youplus@yahoo.com', '25d55ad283aa400af464c76d713c07ad', NULL, '85e3d52eabe66f6e05b3e4e4651c913a', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-18 07:34:24', '162.158.158.192');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (17, 'PHWAGJ', 'Train', 'Train', NULL, 'brucecharles340@gmail.com', '30c5b96cb52bc6cc8ae7f416b5bcdb25', '07069339465', NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-03-23 05:49:11', '162.158.154.58');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (18, 'UFYN9I', 'edinson', NULL, NULL, 'peferab897@mrisemail.com', 'cb852737210ce48ed5631cce0221149a', NULL, '47453aef57563526630ac03aaf412133', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-23 06:57:37', '162.158.154.58');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (19, 'YEBAR8', 'xbvxb', NULL, NULL, 'wigex74358@upcmaill.com', 'cb852737210ce48ed5631cce0221149a', NULL, 'ee563cba8e3510ac7cfe42a89dcbeec6', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-23 08:17:23', '162.158.154.178');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (20, 'DLNNJJ', 'ben', NULL, NULL, 'ben@jdjd.de', '9ebfa9a8542bcbff3fd1c4f4aff05881', NULL, '433ee164dcbd066a4737657b06491070', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-23 19:25:01', '162.158.111.160');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (21, '81V3WH', 'ben', NULL, NULL, 'ben@web.de', '9ebfa9a8542bcbff3fd1c4f4aff05881', NULL, 'c1497565c98e5194bf33b6cc304c6f88', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-23 19:25:58', '162.158.111.160');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (22, '2EPKXX', 'ben', NULL, NULL, 'ben@webgirl.city', 'c9243150303d6671cff8ad78c1c8ffcb', NULL, 'd00a135fd1740a629627d4ea1f8b9bf7', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-23 19:26:48', '162.158.111.160');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (23, 'CZ8E9V', 'Tarinabo', NULL, NULL, 'Kjahidua@gmail.com', '71eb7e8c39756bcdb01f4d34cf6aab8c', NULL, '1cf67163d92773ace4949c6cd82ae45c', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-24 04:01:43', '141.101.77.65');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (24, 'KRMGEC', 'Tarinabo', 'Jahidua', NULL, 'Kjahidua@yahoo.com', '5eba3be7876457792cdfd36191e9fa5d', '+2347069339465', NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-03-24 04:09:59', '141.101.77.65');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (25, 'RJGBQG', 'abb', 'abb', NULL, 'abb@abb.com', '25d55ad283aa400af464c76d713c07ad', '12345687', NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-03-24 19:10:33', '162.158.155.227');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (26, 'HQP9LB', 'Chale', NULL, NULL, 'chalenachale@gmail.com', '7b498a2b986ef3f4995c09400281b93b', NULL, 'cba844702010d6071ca5be1f4ff04faa', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-30 03:45:58', '162.158.158.252');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (27, '4P0DIN', 'qweqe', NULL, NULL, 'lichen123@protonmail.com', 'a2a8ae4546dddfdd6d6a529a200a50e6', NULL, '97dd840c0cdab5d1811ab60ef213b110', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-01 13:00:58', '162.158.158.152');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (28, 'WNR7L4', 'Christopher', NULL, NULL, 'christbenz93@gmail.com', '09cad270939c4b4992ff8e3dbb842026', NULL, '18f2c12f325b78547fb075351e093406', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-03 08:01:40', '162.158.154.178');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (29, '0SA7PV', 'William', NULL, NULL, 'njorowills@gmail.com', 'a2e089e5e972392b57efc15715db6c87', NULL, '1fe1bf3c0199d75f48913518d762b2f5', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-03 16:38:31', '162.158.155.227');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (30, 'R8ADND', 'Mashpy', NULL, NULL, 'mashpysays@gmail.com', '383a07862eebf1f035981116be3bc33f', NULL, 'd08c3843b50739ba0bfe66c5fe20a5d4', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-05 07:17:38', '162.158.158.168');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (31, 'I5XHQM', 'Gaurav', NULL, NULL, 'zuvicart@gmail.com', '66e991db94125cbe7ae2d6bf53603e73', NULL, '4b95527752e01a88a849370aa6522fb4', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-05 10:51:50', '162.158.158.96');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (32, 'SFRN0V', 'dev', NULL, NULL, 'dev@mailinator.com', '280b40d22db1f03ef3f49fd626442431', NULL, 'ba546fe45b9447b104b94e3aefda8d94', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-06 05:10:11', '162.158.154.40');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (33, '9JV51G', 'cmm', '', NULL, 'cmm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-06 19:46:14', '162.158.159.99');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (34, 'TFOCPV', 'EMMA', NULL, NULL, 'adhi@maildu.de', '329aca982367fbe97fdcd102efa2201b', NULL, 'f366b36146b62361821f8944067db819', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-07 09:55:15', '162.158.159.19');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (35, '3YY84L', 'Kang', NULL, NULL, 'kangafif999@gmail.com', '10b8e822d03fb4fd946188e852a4c3e2', NULL, '1f4ddfb0fd0ab7a87492c756baf9246c', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-08 08:12:56', '162.158.158.72');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (36, 'LWVBAJ', 'Dimas', NULL, NULL, 'kontolbau123@gmail.com', '81c06fd3774595677998d3c71d38dc4d', NULL, '10094abd3c8700861cb57cf72a8e4310', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-08 19:16:03', '162.158.158.114');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (37, 'IQOM7A', 'BRYAN MICHEL JEAN', NULL, NULL, 're.7@gmail.com', '0a733d2a3c06a28b785955a62d298cdb', NULL, '065c447356d599dcd47ae4978ed983da', NULL, NULL, 0, 'french', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-09 10:36:38', '162.158.159.103');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (38, 'OZQAC6', 'morgan', NULL, NULL, 'MMMM@F.COM', 'afe6dcdb3d5c281a203effad047f1073', NULL, 'c410ace49894af954ddc5ad5ebae0cae', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-10 17:40:47', '162.158.158.114');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (39, 'DEXAI4', 'Yahya', NULL, NULL, 'yh.ma.lb@gmail.com', '862700cfe00ca9bc5caa7f6b9ab0e181', NULL, 'c6daac3d38e4ac3d11c73509965e3de5', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-12 18:52:50', '141.101.98.229');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (40, 'MWOIZ3', 'Yahya', NULL, NULL, 'yma1491@gmail.com', '862700cfe00ca9bc5caa7f6b9ab0e181', NULL, 'ec5723b4dea1ad38dd65b62d0949018f', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-12 18:59:38', '141.101.98.229');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (41, 'XFKLGQ', 'ALEC', 'MTETWA', NULL, 'admin@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@demo.com', NULL, NULL, '', 0, 'english', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-25 11:55:05', '162.158.159.11');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (42, 'FRRDSY', 'ramiro', NULL, NULL, 'ramirocelma@protonmail.com', '713790f9cf7b5531e9c4434157726b9a', NULL, 'b325400bdc018b306fd7bd770d969766', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-17 16:31:51', '162.158.159.11');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (43, 'X7XH8K', 'demo', NULL, NULL, 'demo@demo.com', '9c37e75076ff224f7d9496ba98f37a5c', NULL, '91a8cebd28d8e6186e23832566b800ad', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-17 21:17:01', '162.158.155.131');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (44, 'DSSHRN', 'demo', NULL, NULL, 'fgarcia@compucr.com', 'c778b575d9a6ee55788c7c5dc761f403', NULL, 'c04b266d7a809aa031abf05ec348731d', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-17 21:18:24', '162.158.155.131');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (46, '98LAID', 'A', 'Demo', NULL, 'demoone@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1234567890', NULL, NULL, '123456', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-18 10:34:14', '162.158.155.17');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (47, '7UVQIK', 'Ahmet', NULL, NULL, 'ahmetyeren2@gmail.com', '91cf1884bb7f738da3c9a366872476de', NULL, 'f3df596a8907a049c3ad0e8a6c8203f4', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-19 17:42:30', '162.158.155.131');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (48, 'NM6XSY', 'GLENN', NULL, NULL, 'attcebu@gmail.com', '791d693184c618a048b0785ff71856d2', NULL, 'fbc33e3caf0d2cea3cd2841ef1191521', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-21 04:45:28', '162.158.159.77');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (49, 'KZTVQX', 'Ken', NULL, NULL, 'kenistoncole@gmail.com', '7c04a8097a556a4470c2f84c166b0978', NULL, 'ba9090f59db2cac661f98559bce1e212', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-21 15:51:19', '162.158.154.40');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (50, 'MVTKV1', 'john', NULL, NULL, 'qibom@getnada.com', 'a4815f08053f4bb60b390be77537ce35', NULL, '75cd3dcda979fe5a22a20c596bc023ce', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-22 05:37:53', '141.101.98.253');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (51, 'JSRGC8', 'DFGHJ', NULL, NULL, 'BSA@YAHOO.COM', '30a2663002a72a6aaa417421d7078938', NULL, '234b9bec8af30d439cd55f1a298c0370', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-22 16:59:03', '141.101.98.23');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (52, '2JMVXB', 'rick', NULL, NULL, 'infosoloitech@gmail.com', 'a91196da966194807113a19f29610e52', NULL, '30f9114030436ec933813f1a7ba7f5ab', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-23 06:55:29', '162.158.159.33');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (53, 'BD9BIP', 'evelyn', NULL, NULL, 'eugeensicler84@gmail.com', 'f28d9562fe4d16a7532a44de6a3d92cd', NULL, '87f5076044b87059cefc3098d9e340e4', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-24 20:06:08', '141.101.98.253');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (54, '0DJKEJ', 'Lance', NULL, NULL, 'lance@mail.com', 'eea2926dc0aff6bc1e0eabc2d0ad91b5', NULL, '5ac3572638076a0a08b10fe98762d12e', NULL, NULL, 0, 'french', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-25 20:03:14', '141.101.98.23');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (55, 'KTXWRU', 'Bdirect', NULL, NULL, 'accounts@brandaloud.com', '2d8db5e261156373999217663425e7bb', NULL, '046c6c325ec02cfcef19c79095e98894', NULL, NULL, 0, 'french', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-26 15:46:58', '162.158.158.128');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (56, 'WJVAXK', 'Blanca', NULL, NULL, 'pm.megasocial@gmail.com', 'da6f5adce08cf86bd677ce69e2a89228', NULL, '7172d67b077ba24901ec46ea750f261d', NULL, NULL, 0, 'french', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-27 15:33:41', '162.158.154.40');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (57, 'SLDI3Y', 'ça?lar', NULL, NULL, 'caglarceren33@gmail.com', '24fae94f1a7586f5b20bdf8d7ce277a2', NULL, 'a2020edbb2f5101141e2586cab973b58', NULL, NULL, 0, 'french', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-29 17:59:59', '162.158.158.186');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (58, 'OYDFTM', 'dfdf', NULL, NULL, 'abuhazeem@live.com', '06f1cb28463dcf79c35a04759bd2bfde', NULL, 'dd3d600dd23492e68216a5caff458b4b', NULL, NULL, 0, 'french', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-30 01:24:55', '162.158.158.128');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (59, 'XQOMND', 'Emerson', NULL, NULL, 'emersonqueirozjp@gmail.com', '3fe5ab7fcc76f585962b619107df62f1', NULL, '217d2dab78cff1dbd9436e6de9df9ea1', NULL, NULL, 0, 'french', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-30 10:18:55', '141.101.98.23');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (60, 'AMLZFQ', 'Sumeeth', NULL, NULL, 'sumeethkevin@gmail.com', 'a3defaa0060740d7bd120247486809dd', NULL, 'b2fd0566c8134fd4640de6e8914e9d69', NULL, NULL, 0, 'french', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-30 20:00:39', '141.101.98.193');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (61, '8EWVKC', 'hosein', NULL, NULL, 'hoseinhajepor@yahoo.com', '79ef9593daea71746849e5f65656ff06', NULL, '448f386851fe06afd3c931ee198aea76', NULL, NULL, 0, 'french', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-05-01 21:05:43', '141.101.98.23');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (62, 'VHJDDB', 'Bryan', NULL, NULL, 'oguehbryan@gmail.com', 'fb04cf615ec50303a2bd33c22ef549e1', NULL, '3cccd6b36d846ccd5f6d1c0c91b801a4', NULL, NULL, 0, 'french', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-05-05 11:30:56', '141.101.98.253');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (63, 'QOY16M', 'David', NULL, NULL, 'david@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, '7695725b11caaac547f48f7267604abe', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-05-20 07:56:35', '162.158.158.36');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (64, 'ALZEH8', 'Ahad', NULL, NULL, 'ahadhossain148@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, '03aaa6aa8a4d224c6beb8c98438f03c6', NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-05-20 07:59:08', '162.158.158.36');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (65, 'KLFFFJ', 'Torun', 'Hassan tmehedi', NULL, 'mehdi@demo.com', '25d55ad283aa400af464c76d713c07ad', '+8801316347466', NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-04-13 14:34:11', '::1');
INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES (66, 'UR8LCV', 'Torun', 'Hassan Mehedi', NULL, 'mehe@demo.com', '25d55ad283aa400af464c76d713c07ad', '8801616347466', NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-04-15 13:12:53', '::1');


#
# TABLE STRUCTURE FOR: dbt_user_cryptowallet
#

DROP TABLE IF EXISTS `dbt_user_cryptowallet`;

CREATE TABLE `dbt_user_cryptowallet` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `wallet` varchar(100) NOT NULL,
  `balance` double(19,8) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wallet` (`wallet`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_user_cryptowallet` (`id`, `user_id`, `wallet`, `balance`, `datetime`) VALUES ('1', '8NS5Y4', '6e912a46c2177b5933ec7ae238b4c371', '0.00000000', '2019-01-17 12:11:30');
INSERT INTO `dbt_user_cryptowallet` (`id`, `user_id`, `wallet`, `balance`, `datetime`) VALUES ('2', '6U1OP5', '0e401765b76def363445c21cf4dc8b3d', '0.00000000', '2019-01-17 12:12:52');
INSERT INTO `dbt_user_cryptowallet` (`id`, `user_id`, `wallet`, `balance`, `datetime`) VALUES ('3', 'W1R3J3', 'b0fd2862074372d77f54a9602f1c0978', '0.00000000', '2019-01-17 12:14:01');
INSERT INTO `dbt_user_cryptowallet` (`id`, `user_id`, `wallet`, `balance`, `datetime`) VALUES ('4', '10QZ56', '1f82d403720b592194bc2982dcc600e5', '0.00000000', '2019-01-17 12:16:24');
INSERT INTO `dbt_user_cryptowallet` (`id`, `user_id`, `wallet`, `balance`, `datetime`) VALUES ('5', 'BX8333', 'bed8c1a7eda2e42ce652648c4c817857', '0.00000000', '2019-01-17 12:18:33');


#
# TABLE STRUCTURE FOR: dbt_user_log
#

DROP TABLE IF EXISTS `dbt_user_log`;

CREATE TABLE `dbt_user_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_type` varchar(50) NOT NULL COMMENT '"acc_update = User Account Update, login=User Login info, deposit=User Deposit info, transfer=User Transfer info, withdraw=User Withdraw info, open_order="',
  `access_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_agent` varchar(300) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=631 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (1, 'login', '2019-01-17 06:18:11', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-65.0\",\"platform\":\"Windows 10\"}', 'BX8333', '172.68.146.105');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (2, 'login', '2019-02-24 08:46:42', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-72.0.3626.119\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.155');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (3, 'login', '2019-02-27 19:54:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-72.0.3626.119\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.7.87');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (4, 'login', '2019-02-27 21:58:40', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-65.0\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.182.200');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (5, 'login', '2019-02-27 22:21:58', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-65.0\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '198.41.238.14');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (6, 'login', '2019-02-27 23:14:31', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-72.0.3626.119\",\"platform\":\"Windows 7\"}', '8NS5Y4', '141.101.69.121');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (7, 'login', '2020-03-11 14:38:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.53');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (8, 'login', '2020-03-11 15:01:31', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-68.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.107.105');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (9, 'login', '2020-03-12 08:24:25', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.192');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (10, 'login', '2020-03-12 20:45:18', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.246');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (11, 'login', '2020-03-14 14:29:10', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.55');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (12, 'login', '2020-03-14 16:22:04', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-79.0.3945.130\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.158.192');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (13, 'login', '2020-03-14 16:48:56', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.220');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (14, 'login', '2020-03-15 01:55:08', '{\"device\":\"Safari\",\"browser\":\"Safari V-604.1\",\"platform\":\"iOS\"}', '8NS5Y4', '141.101.98.79');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (15, 'login', '2020-03-15 13:22:29', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.107.105');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (16, 'login', '2020-03-16 20:30:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.130');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (17, 'login', '2020-03-17 13:06:55', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-74.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.192');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (18, 'login', '2020-03-17 13:16:13', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-74.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.192');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (19, 'login', '2020-03-17 13:18:13', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-74.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.79');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (20, 'login', '2020-03-18 20:29:53', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.79');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (21, 'login', '2020-03-20 16:20:21', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.178');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (22, 'login', '2020-03-21 13:23:21', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-77.0.3865.92\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (23, 'login', '2020-03-22 20:25:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (24, 'login', '2020-03-23 18:04:27', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.122');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (25, 'login', '2020-03-24 10:25:47', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.158.152');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (26, 'login', '2020-03-25 09:43:41', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.204');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (27, 'login', '2020-03-25 18:33:11', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.227');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (28, 'login', '2020-03-25 20:55:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '172.69.54.216');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (29, 'login', '2020-03-25 21:47:21', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.108');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (30, 'login', '2020-03-26 12:12:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (31, 'login', '2020-03-28 00:32:29', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.19');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (32, 'login', '2020-03-28 06:47:13', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.68');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (33, 'login', '2020-03-28 08:51:58', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.252');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (34, 'login', '2020-03-28 20:41:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.178');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (35, 'login', '2020-03-29 14:29:46', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.139');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (36, 'login', '2020-03-29 14:57:40', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.204');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (37, 'login', '2020-03-30 03:49:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.252');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (38, 'login', '2020-03-31 08:46:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (39, 'login', '2020-03-31 11:34:25', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.159.19');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (40, 'login', '2020-03-31 12:58:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (41, 'login', '2020-04-01 09:18:31', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.178');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (42, 'login', '2020-04-01 13:53:48', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-70.0.3538.110\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (43, 'login', '2020-04-01 23:32:27', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-74.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (44, 'login', '2020-04-02 10:43:53', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.105');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (45, 'login', '2020-04-02 21:29:07', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.159.19');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (46, 'login', '2020-04-03 17:24:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.122');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (47, 'login', '2020-04-04 02:02:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.152');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (48, 'login', '2020-04-04 16:05:54', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.19');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (49, 'login', '2020-04-04 16:51:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (50, 'login', '2020-04-05 16:44:07', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.105');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (51, 'login', '2020-04-06 12:42:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.154.178');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (52, 'login', '2020-04-06 19:46:23', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-74.0\",\"platform\":\"Windows 10\"}', '9JV51G', '162.158.159.21');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (53, 'login', '2020-04-07 03:09:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.227');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (54, 'login', '2020-04-07 19:20:06', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-74.0\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (55, 'login', '2020-04-08 07:05:33', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.111.178');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (56, 'login', '2020-04-08 19:14:47', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-69.0.3497.100\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.114');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (57, 'login', '2020-04-08 19:23:41', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.158.242');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (58, 'login', '2020-04-08 20:52:18', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.155.95');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (59, 'login', '2020-04-09 10:31:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.158.196');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (60, 'login', '2020-04-09 12:46:38', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.158.126');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (61, 'login', '2020-04-09 22:05:11', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.155.95');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (62, 'login', '2020-04-09 22:06:07', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.155.95');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (63, 'login', '2020-04-10 03:08:15', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.103');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (64, 'login', '2020-04-10 07:42:48', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-74.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.224');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (65, 'login', '2020-04-11 07:50:40', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-75.0\",\"platform\":\"Linux\"}', '8NS5Y4', '141.101.98.229');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (66, 'login', '2020-04-11 15:39:38', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-70.0.3538.110\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.106');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (67, 'login', '2020-04-14 12:54:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.154.40');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (68, 'login', '2020-04-14 12:58:12', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.123');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (69, 'login', '2020-04-14 16:09:25', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-77.0.3865.90\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.131');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (70, 'login', '2020-04-14 17:15:25', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-75.0\",\"platform\":\"Linux\"}', '8NS5Y4', '162.158.155.17');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (71, 'login', '2020-04-15 12:48:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.131');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (72, 'login', '2020-04-15 22:40:59', '{\"device\":\"Safari\",\"browser\":\"Safari V-604.1\",\"platform\":\"iOS\"}', 'XFKLGQ', '162.158.159.11');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (73, 'login', '2020-04-17 04:39:50', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.159.115');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (74, 'login', '2020-04-17 16:35:52', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.11');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (75, 'login', '2020-04-17 17:54:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.216');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (76, 'login', '2020-04-17 18:05:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.106');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (77, 'login', '2020-04-17 21:20:22', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.131');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (78, 'login', '2020-04-18 10:29:41', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.155.17');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (79, 'login', '2020-04-18 11:18:38', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.155.17');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (80, 'login', '2020-04-18 13:46:36', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.113\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.40');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (81, 'login', '2020-04-18 18:48:15', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.11');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (82, 'login', '2020-04-20 22:18:33', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.159.11');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (83, 'login', '2020-04-21 17:31:35', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-72.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.131');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (84, 'login', '2020-04-21 18:46:00', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 7\"}', 'BX8333', '162.158.155.131');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (85, 'login', '2020-04-22 05:39:17', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.122\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.253');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (86, 'login', '2020-04-22 13:51:02', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.113\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '141.101.98.121');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (87, 'login', '2020-04-23 06:58:26', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.122\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.33');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (88, 'login', '2020-04-23 19:35:52', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.122\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.242');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (89, 'login', '2020-04-23 20:58:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.128');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (90, 'login', '2020-04-24 12:25:04', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.113\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.40');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (91, 'login', '2020-04-24 20:40:10', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.122\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '141.101.104.86');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (92, 'login', '2020-04-24 20:42:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.122\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.154.244');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (93, 'login', '2020-04-25 11:47:40', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.122\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.155.131');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (94, 'login', '2020-04-25 11:54:12', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.122\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.155.131');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (95, 'login', '2020-04-25 17:21:03', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.122\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.193');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (96, 'login', '2020-04-26 14:51:31', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.122\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.65');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (97, 'login', '2020-04-26 17:21:53', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (98, 'login', '2020-04-27 02:19:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.122\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.193');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (99, 'login', '2020-04-27 16:59:33', '{\"device\":\"Opera\",\"browser\":\"Opera V-67.0.3575.137\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.121');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (100, 'login', '2020-04-28 10:10:34', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-75.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.195');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (101, 'login', '2020-04-29 07:22:00', '{\"device\":\"Opera\",\"browser\":\"Opera V-67.0.3575.137\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.23');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (102, 'login', '2020-04-29 10:41:06', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.129\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.23');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (103, 'login', '2020-04-29 15:24:04', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.96\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.40');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (104, 'login', '2020-04-30 01:28:06', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.155.131');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (105, 'login', '2020-04-30 06:10:00', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.122\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.253');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (106, 'login', '2020-04-30 10:47:23', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.117\",\"platform\":\"Android\"}', 'XFKLGQ', '141.101.98.193');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (107, 'login', '2020-05-01 03:03:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.129\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.253');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (108, 'login', '2020-05-01 03:07:32', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.129\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.253');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (109, 'login', '2020-05-01 08:18:44', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.129\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.244');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (110, 'login', '2020-05-01 18:35:20', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.155.131');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (111, 'login', '2020-05-01 21:06:15', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.129\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.23');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (112, 'login', '2020-05-02 04:38:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Android\"}', '8NS5Y4', '141.101.98.193');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (113, 'login', '2020-05-02 19:02:27', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.129\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.121');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (114, 'login', '2020-05-02 20:37:34', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.149\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.65');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (115, 'login', '2020-05-03 21:13:36', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.129\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.23');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (116, 'login', '2020-05-04 01:06:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.117\",\"platform\":\"Android\"}', '8NS5Y4', '141.101.98.23');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (117, 'login', '2020-05-04 07:49:13', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-75.0\",\"platform\":\"Windows 8.1\"}', 'XFKLGQ', '162.158.158.242');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (118, 'login', '2020-05-05 01:02:44', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.122\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.244');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (119, 'login', '2020-05-05 11:47:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.129\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.242');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (120, 'login', '2020-05-06 05:28:53', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-79.0.3945.93\",\"platform\":\"Android\"}', 'XFKLGQ', '141.101.98.121');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (121, 'login', '2020-05-06 14:33:11', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-75.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.65');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (122, 'login', '2020-05-06 14:56:54', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.96\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.121');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (123, 'login', '2020-05-08 12:41:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.129\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.242');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (124, 'login', '2020-05-08 18:26:43', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.129\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.40');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (125, 'login', '2020-05-09 19:04:50', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.138\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.193');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (126, 'login', '2020-05-11 07:10:29', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.113\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (127, 'login', '2020-05-11 07:16:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.113\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '141.101.98.15');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (128, 'login', '2020-05-11 13:24:08', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.138\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.130');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (129, 'login', '2020-05-11 13:49:29', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.23');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (130, 'login', '2020-05-11 20:32:06', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.138\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.40');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (131, 'login', '2020-05-11 23:47:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.111\",\"platform\":\"Linux\"}', '8NS5Y4', '141.101.99.130');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (132, 'login', '2020-05-12 20:05:21', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.138\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.40');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (133, 'login', '2020-06-15 20:43:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.97\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.6');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (134, 'login', '2020-06-15 20:52:00', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.138\",\"platform\":\"Windows 7\"}', '8NS5Y4', '141.101.99.242');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (135, 'login', '2020-06-16 02:04:36', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.97\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.99.242');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (136, 'login', '2020-06-16 08:22:25', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.97\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.218');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (137, 'login', '2020-06-16 14:48:11', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-77.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.234');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (138, 'login', '2020-06-16 14:49:44', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-77.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.234');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (139, 'login', '2020-06-17 00:26:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.138\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.154.100');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (140, 'login', '2020-06-19 12:26:15', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-75.0.3770.100\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.190');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (141, 'login', '2020-06-19 20:05:34', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.159.137');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (142, 'login', '2020-06-20 01:52:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.100');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (143, 'login', '2020-06-20 08:17:28', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.99.242');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (144, 'login', '2020-06-23 01:09:15', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.154.100');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (145, 'login', '2020-06-23 08:03:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.138\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.158.190');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (146, 'login', '2020-06-23 22:42:47', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Windows 8\"}', '8NS5Y4', '162.158.154.100');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (147, 'login', '2020-06-24 03:03:41', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.154.100');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (148, 'login', '2020-06-24 08:21:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.154.244');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (149, 'login', '2020-06-24 11:19:12', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.46');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (150, 'login', '2020-06-24 17:46:41', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.218');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (151, 'login', '2020-06-24 17:47:40', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Android\"}', 'XFKLGQ', '162.158.158.218');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (152, 'login', '2020-06-25 01:30:43', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.104');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (153, 'login', '2020-06-25 16:20:28', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.99\",\"platform\":\"Android\"}', 'XFKLGQ', '162.158.155.29');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (154, 'login', '2020-06-26 06:29:34', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.218');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (155, 'login', '2020-06-26 17:21:44', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.218');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (156, 'login', '2020-06-26 23:24:04', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-79.0.3945.136\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.218');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (157, 'login', '2020-06-27 00:30:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.99\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.155.125');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (158, 'login', '2020-06-27 00:32:52', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.190');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (159, 'login', '2020-06-27 01:35:38', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.113\",\"platform\":\"Linux\"}', '8NS5Y4', '162.158.155.125');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (160, 'login', '2020-06-28 00:11:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 7\"}', '8NS5Y4', '141.101.99.242');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (161, 'login', '2020-06-28 16:54:23', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.117\",\"platform\":\"Linux\"}', '8NS5Y4', '162.158.158.190');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (162, 'login', '2020-06-29 20:49:41', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-77.0.3865.90\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.89');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (163, 'login', '2020-06-30 01:18:37', '{\"device\":\"Safari\",\"browser\":\"Safari V-604.1\",\"platform\":\"iOS\"}', '8NS5Y4', '141.101.99.242');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (164, 'login', '2020-06-30 02:00:13', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.158.218');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (165, 'login', '2020-07-01 02:51:17', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.154.190');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (166, 'login', '2020-07-01 07:40:33', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '172.69.55.79');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (167, 'login', '2020-07-03 04:08:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (168, 'login', '2020-07-03 23:16:46', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.138\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (169, 'login', '2020-07-04 01:56:56', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (170, 'login', '2020-07-04 06:14:41', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (171, 'login', '2020-07-04 16:31:32', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.52');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (172, 'login', '2020-07-04 16:35:43', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.52');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (173, 'login', '2020-07-04 16:41:57', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.132\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.52');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (174, 'login', '2020-07-04 22:21:49', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (175, 'login', '2020-07-05 03:57:02', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.115');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (176, 'login', '2020-07-05 13:45:25', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.117\",\"platform\":\"Linux\"}', '8NS5Y4', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (177, 'login', '2020-07-05 22:09:32', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (178, 'login', '2020-07-06 14:59:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.138');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (179, 'login', '2020-07-07 09:57:56', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.52');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (180, 'login', '2020-07-07 15:10:22', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 8.1\"}', 'XFKLGQ', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (181, 'login', '2020-07-07 15:13:33', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (182, 'login', '2020-07-07 16:57:51', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 8.1\"}', 'XFKLGQ', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (183, 'login', '2020-07-07 19:40:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (184, 'login', '2020-07-07 20:41:48', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (185, 'login', '2020-07-08 05:11:04', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (186, 'login', '2020-07-08 05:12:24', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (187, 'login', '2020-07-08 06:20:30', '{\"device\":\"Safari\",\"browser\":\"Safari V-602.1\",\"platform\":\"iOS\"}', '8NS5Y4', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (188, 'login', '2020-07-08 17:39:48', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (189, 'login', '2020-07-10 15:43:54', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (190, 'login', '2020-07-10 19:47:00', '{\"device\":\"Opera\",\"browser\":\"Opera V-67.0.3575.137\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.52');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (191, 'login', '2020-07-11 07:32:17', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.226');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (192, 'login', '2020-07-12 00:08:50', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.107.165');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (193, 'login', '2020-07-12 03:05:40', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.232');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (194, 'login', '2020-07-12 15:55:34', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.13');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (195, 'login', '2020-07-13 05:36:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.154.52');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (196, 'login', '2020-07-14 03:55:06', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-77.0.3865.92\",\"platform\":\"Android\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (197, 'login', '2020-07-15 10:00:21', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (198, 'login', '2020-07-15 20:05:46', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (199, 'login', '2020-07-16 12:38:14', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (200, 'login', '2020-07-16 12:41:19', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (201, 'login', '2020-07-16 18:28:13', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '141.101.98.145');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (202, 'login', '2020-07-16 20:35:13', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (203, 'login', '2020-07-17 13:18:39', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (204, 'login', '2020-07-17 18:01:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.232');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (205, 'login', '2020-07-17 18:35:57', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.232');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (206, 'login', '2020-07-17 22:13:53', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (207, 'login', '2020-07-18 12:25:46', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.145');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (208, 'login', '2020-07-19 18:36:04', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (209, 'login', '2020-07-19 23:15:27', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (210, 'login', '2020-07-20 06:51:52', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (211, 'login', '2020-07-20 14:32:08', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.52');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (212, 'login', '2020-07-20 14:35:00', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.208');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (213, 'login', '2020-07-20 16:20:11', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.21');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (214, 'login', '2020-07-21 18:28:57', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-79.0.3945.93\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (215, 'login', '2020-07-21 19:43:39', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (216, 'login', '2020-07-21 23:43:00', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (217, 'login', '2020-07-21 23:46:01', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (218, 'login', '2020-07-22 02:16:40', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (219, 'login', '2020-07-22 21:29:16', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.158.218');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (220, 'login', '2020-07-22 23:04:49', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (221, 'login', '2020-07-23 00:58:14', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.52');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (222, 'login', '2020-07-23 01:39:04', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.60\",\"platform\":\"Android\"}', 'XFKLGQ', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (223, 'login', '2020-07-23 01:42:03', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.60\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (224, 'login', '2020-07-23 04:51:42', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.21');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (225, 'login', '2020-07-23 06:37:54', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (226, 'login', '2020-07-23 06:58:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (227, 'login', '2020-07-23 17:12:17', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (228, 'login', '2020-07-23 22:17:23', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (229, 'login', '2020-07-25 01:40:42', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.52');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (230, 'login', '2020-07-25 02:49:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-72.0.3626.121\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (231, 'login', '2020-07-25 02:56:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.107.57');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (232, 'login', '2020-07-25 12:50:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (233, 'login', '2020-07-26 19:48:52', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-61.0.3163.125\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.232');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (234, 'login', '2020-07-27 04:59:58', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (235, 'login', '2020-07-27 17:43:55', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (236, 'login', '2020-07-28 02:21:41', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-82.0\",\"platform\":\"Windows 8.1\"}', 'XFKLGQ', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (237, 'login', '2020-07-30 18:30:43', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-76.0.3809.136\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '141.101.107.57');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (238, 'login', '2020-07-31 00:10:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (239, 'login', '2020-07-31 01:57:22', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-76.0.3809.136\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.158.232');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (240, 'login', '2020-07-31 12:03:50', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.23');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (241, 'login', '2020-07-31 20:18:21', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 7\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (242, 'login', '2020-07-31 22:09:29', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (243, 'login', '2020-08-01 01:33:34', '{\"device\":\"Opera\",\"browser\":\"Opera V-69.0.3686.95\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.115');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (244, 'login', '2020-08-01 22:34:28', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.13');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (245, 'login', '2020-08-02 07:28:32', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-79.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.21');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (246, 'login', '2020-08-02 09:35:24', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (247, 'login', '2020-08-02 10:06:07', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (248, 'login', '2020-08-02 23:00:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.52');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (249, 'login', '2020-08-03 17:38:37', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Android\"}', 'XFKLGQ', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (250, 'login', '2020-08-04 03:46:30', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (251, 'login', '2020-08-04 17:13:58', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-79.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (252, 'login', '2020-08-04 20:04:09', '{\"device\":\"Opera\",\"browser\":\"Opera V-69.0.3686.95\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (253, 'login', '2020-08-05 04:40:57', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-79.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (254, 'login', '2020-08-05 10:08:36', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 7\"}', '8NS5Y4', '141.101.98.145');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (255, 'login', '2020-08-06 03:46:17', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.52');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (256, 'login', '2020-08-06 12:52:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.138');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (257, 'login', '2020-08-06 15:17:48', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.13');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (258, 'login', '2020-08-07 13:45:13', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.145');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (259, 'login', '2020-08-07 20:58:38', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (260, 'login', '2020-08-08 18:36:06', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.145');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (261, 'login', '2020-08-09 13:46:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.152\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.159.83');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (262, 'login', '2020-08-09 22:45:44', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.158.186');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (263, 'login', '2020-08-11 09:54:38', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (264, 'login', '2020-08-12 14:25:37', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (265, 'login', '2020-08-12 15:29:38', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.208');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (266, 'login', '2020-08-14 04:06:06', '{\"device\":\"Opera\",\"browser\":\"Opera V-69.0.3686.95\",\"platform\":\"Windows 8.1\"}', 'XFKLGQ', '141.101.98.145');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (267, 'login', '2020-08-14 07:22:00', '{\"device\":\"Opera\",\"browser\":\"Opera V-69.0.3686.95\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (268, 'login', '2020-08-14 12:46:57', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.218');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (269, 'login', '2020-08-14 12:48:56', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.218');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (270, 'login', '2020-08-14 15:53:16', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-79.0\",\"platform\":\"Windows 8\"}', '8NS5Y4', '162.158.154.58');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (271, 'login', '2020-08-14 18:19:30', '{\"device\":\"Safari\",\"browser\":\"Safari V-604.1\",\"platform\":\"iOS\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (272, 'login', '2020-08-15 11:59:06', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.125\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.226');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (273, 'login', '2020-08-17 00:07:36', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.125\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.145');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (274, 'login', '2020-08-17 05:15:58', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.125\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.107.57');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (275, 'login', '2020-08-17 06:58:21', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.125\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (276, 'login', '2020-08-17 12:03:25', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.125\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.13');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (277, 'login', '2020-08-17 12:06:01', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.125\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.13');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (278, 'login', '2020-08-18 03:23:31', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.125\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (279, 'login', '2020-08-18 04:04:52', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.232');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (280, 'login', '2020-08-18 06:47:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.125\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (281, 'login', '2020-08-18 19:00:37', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '141.101.105.115');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (282, 'login', '2020-08-19 03:35:49', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-79.0\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.104.238');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (283, 'login', '2020-08-19 06:46:52', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.125\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.99.244');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (284, 'login', '2020-08-21 13:14:25', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.158.232');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (285, 'login', '2020-08-21 19:34:58', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.124');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (286, 'login', '2020-08-21 22:52:39', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 8.1\"}', 'XFKLGQ', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (287, 'login', '2020-08-23 05:20:24', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.125\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.130');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (288, 'login', '2020-08-23 16:03:03', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.159.115');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (289, 'login', '2020-08-23 17:22:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (290, 'login', '2020-08-24 08:08:29', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.43');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (291, 'login', '2020-08-24 09:45:10', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (292, 'login', '2020-08-24 17:24:11', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.99.130');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (293, 'login', '2020-08-25 23:39:32', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.96');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (294, 'login', '2020-08-26 14:36:02', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.96');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (295, 'login', '2020-08-26 20:42:03', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.125\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.159.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (296, 'login', '2020-08-26 21:21:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.71');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (297, 'login', '2020-08-27 15:58:50', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.159.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (298, 'login', '2020-08-27 19:49:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.27');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (299, 'login', '2020-08-28 00:53:25', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.116\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.158.208');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (300, 'login', '2020-08-30 19:57:53', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.59');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (301, 'login', '2020-08-31 15:49:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.48\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.99');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (302, 'login', '2020-08-31 23:20:57', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (303, 'login', '2020-09-01 01:17:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.135\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.159.95');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (304, 'login', '2020-09-01 08:15:48', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.99.214');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (305, 'login', '2020-09-01 08:19:55', '{\"device\":\"Safari\",\"browser\":\"Safari V-604.1\",\"platform\":\"iOS\"}', '8NS5Y4', '162.158.159.27');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (306, 'login', '2020-09-01 14:12:21', '{\"device\":\"Opera\",\"browser\":\"Opera V-70.0.3728.106\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (307, 'login', '2020-09-01 20:37:18', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.179');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (308, 'login', '2020-09-03 11:04:58', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Linux\"}', 'XFKLGQ', '162.158.154.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (309, 'login', '2020-09-03 22:00:54', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-75.0\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.159.83');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (310, 'login', '2020-09-04 02:16:32', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.27');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (311, 'login', '2020-09-04 13:37:39', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.85');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (312, 'login', '2020-09-04 18:48:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.107.59');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (313, 'login', '2020-09-04 23:59:39', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.99');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (314, 'login', '2020-09-05 12:23:37', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 7\"}', '8NS5Y4', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (315, 'login', '2020-09-05 12:26:38', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 7\"}', '8NS5Y4', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (316, 'login', '2020-09-06 02:40:12', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.59');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (317, 'login', '2020-09-06 05:40:02', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.158.126');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (318, 'login', '2020-09-07 13:21:52', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-79.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.12');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (319, 'login', '2020-09-07 13:29:13', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-79.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (320, 'login', '2020-09-07 18:27:26', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (321, 'login', '2020-09-08 18:38:58', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.115');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (322, 'login', '2020-09-08 20:15:51', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.138\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.12');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (323, 'login', '2020-09-09 15:27:01', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-79.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (324, 'login', '2020-09-09 21:39:30', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.59');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (325, 'login', '2020-09-10 14:10:40', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.159.83');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (326, 'login', '2020-09-10 17:05:30', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-80.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.83');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (327, 'login', '2020-09-10 19:09:12', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.22\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (328, 'login', '2020-09-10 22:57:53', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.159.95');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (329, 'login', '2020-09-11 09:43:16', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-80.0\",\"platform\":\"Linux\"}', '8NS5Y4', '162.158.158.12');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (330, 'login', '2020-09-12 15:03:24', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.163\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (331, 'login', '2020-09-13 02:38:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-81.0.4044.113\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.12');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (332, 'login', '2020-09-14 06:30:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.12');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (333, 'login', '2020-09-14 14:42:52', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (334, 'login', '2020-09-14 15:04:01', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.12');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (335, 'login', '2020-09-14 22:21:02', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.226');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (336, 'login', '2020-09-16 12:25:57', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.107.59');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (337, 'login', '2020-09-16 14:53:52', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.119');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (338, 'login', '2020-09-16 19:25:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.108');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (339, 'login', '2020-09-17 01:29:02', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.138');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (340, 'login', '2020-09-18 16:18:12', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.133');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (341, 'login', '2020-09-18 19:38:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.108');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (342, 'login', '2020-09-18 20:17:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.101\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.159.135');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (343, 'login', '2020-09-18 22:53:39', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (344, 'login', '2020-09-19 20:26:39', '{\"device\":\"Opera\",\"browser\":\"Opera V-69.0.3686.66\",\"platform\":\"Windows 8.1\"}', 'XFKLGQ', '141.101.99.88');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (345, 'login', '2020-09-20 20:38:25', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.5');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (346, 'login', '2020-09-20 20:51:12', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (347, 'login', '2020-09-20 22:11:46', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.83\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.108');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (348, 'login', '2020-09-21 13:08:58', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-80.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (349, 'login', '2020-09-21 14:01:52', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-80.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (350, 'login', '2020-09-22 19:15:47', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-80.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.133');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (351, 'login', '2020-09-23 02:37:14', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.158.232');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (352, 'login', '2020-09-23 03:31:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.138');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (353, 'login', '2020-09-23 16:23:40', '{\"device\":\"Opera\",\"browser\":\"Opera V-68.0.3618.206\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.108');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (354, 'login', '2020-09-23 16:25:15', '{\"device\":\"Opera\",\"browser\":\"Opera V-68.0.3618.206\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.108');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (355, 'login', '2020-09-23 16:26:32', '{\"device\":\"Opera\",\"browser\":\"Opera V-68.0.3618.206\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.108');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (356, 'login', '2020-09-24 21:27:14', '{\"device\":\"Opera\",\"browser\":\"Opera V-68.0.3618.206\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.111');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (357, 'login', '2020-09-25 00:05:04', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-80.0\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.155.197');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (358, 'login', '2020-09-25 13:01:21', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-80.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.232');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (359, 'login', '2020-09-25 13:23:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.101\",\"platform\":\"Android\"}', 'XFKLGQ', '141.101.99.214');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (360, 'login', '2020-09-25 23:02:15', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.81\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.108');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (361, 'login', '2020-09-26 13:35:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.105\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.133');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (362, 'login', '2020-09-27 00:01:34', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-53.0.2785.134\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.230');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (363, 'login', '2020-09-27 23:45:53', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.159.133');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (364, 'login', '2020-09-28 00:25:44', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.124\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.99.88');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (365, 'login', '2020-09-28 00:36:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.95');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (366, 'login', '2020-09-28 02:25:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.88');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (367, 'login', '2020-09-28 03:14:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '141.101.98.175');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (368, 'login', '2020-09-28 07:00:52', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.133');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (369, 'login', '2020-09-28 20:50:14', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-82.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.138');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (370, 'login', '2020-09-29 00:36:21', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.159.95');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (371, 'login', '2020-09-29 01:57:58', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.89\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.143');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (372, 'login', '2020-09-29 15:38:55', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-81.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.108');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (373, 'login', '2020-09-29 20:05:02', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (374, 'login', '2020-09-29 20:07:00', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (375, 'login', '2020-09-29 21:57:06', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-81.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.107.57');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (376, 'login', '2020-09-30 11:43:10', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.158.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (377, 'login', '2020-09-30 18:01:02', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.158.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (378, 'login', '2020-10-01 20:28:50', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.158.142');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (379, 'login', '2020-10-03 03:55:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.166');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (380, 'login', '2020-10-03 23:44:35', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-81.0\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.158.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (381, 'login', '2020-10-04 05:08:09', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-81.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (382, 'login', '2020-10-04 06:45:16', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-81.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.31');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (383, 'login', '2020-10-04 18:01:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.101\",\"platform\":\"Android\"}', 'XFKLGQ', '162.158.158.250');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (384, 'login', '2020-10-05 17:03:17', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.148\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.118');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (385, 'login', '2020-10-06 03:50:44', '{\"device\":\"Safari\",\"browser\":\"Safari V-604.1\",\"platform\":\"iOS\"}', '8NS5Y4', '162.158.158.254');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (386, 'login', '2020-10-06 12:27:37', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-81.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.145');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (387, 'login', '2020-10-07 05:34:42', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.166');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (388, 'login', '2020-10-07 21:29:01', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-78.0.3904.108\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '141.101.98.55');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (389, 'login', '2020-10-08 08:00:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.250');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (390, 'login', '2020-10-08 23:27:05', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-81.0\",\"platform\":\"Android\"}', '8NS5Y4', '141.101.98.145');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (391, 'login', '2020-10-09 19:46:28', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.250');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (392, 'login', '2020-10-10 00:34:52', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Linux\"}', 'XFKLGQ', '162.158.158.250');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (393, 'login', '2020-10-10 08:06:32', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.75\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.55');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (394, 'login', '2020-10-12 00:00:20', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-81.0\",\"platform\":\"Linux\"}', '8NS5Y4', '141.101.98.215');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (395, 'login', '2020-10-12 12:38:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.75\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (396, 'login', '2020-10-12 14:51:35', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (397, 'login', '2020-10-12 19:17:54', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.75\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.75');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (398, 'login', '2020-10-13 00:43:46', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.142');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (399, 'login', '2020-10-14 01:03:48', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.250');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (400, 'login', '2020-10-14 02:16:53', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-77.0.3865.116\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.254');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (401, 'login', '2020-10-15 10:26:51', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.75\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.75');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (402, 'login', '2020-10-15 18:29:14', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.75\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.203');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (403, 'login', '2020-10-15 18:31:29', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.75\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.203');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (404, 'login', '2020-10-17 21:24:44', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.99\",\"platform\":\"Android\"}', 'XFKLGQ', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (405, 'login', '2020-10-18 06:05:36', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-81.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (406, 'login', '2020-10-19 01:47:32', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.97\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.75');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (407, 'login', '2020-10-19 02:24:04', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.80\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.159.31');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (408, 'login', '2020-10-19 14:26:32', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.75\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.254');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (409, 'login', '2020-10-19 20:26:39', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.102\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (410, 'login', '2020-10-20 14:13:29', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.80\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.158.142');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (411, 'login', '2020-10-20 17:34:04', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.75\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.159');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (412, 'login', '2020-10-20 21:24:56', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-84.0.4147.125\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.159.31');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (413, 'login', '2020-10-23 21:00:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.75\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.240');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (414, 'login', '2020-10-24 01:55:30', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-79.0\",\"platform\":\"Linux\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (415, 'login', '2020-10-24 04:15:14', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.100\",\"platform\":\"Windows 7\"}', '8NS5Y4', '141.101.107.57');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (416, 'login', '2020-10-26 01:06:38', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.75\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (417, 'login', '2020-10-26 04:11:48', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.142');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (418, 'login', '2020-10-27 04:26:40', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.158.142');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (419, 'login', '2020-10-27 04:35:01', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.98.135');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (420, 'login', '2020-10-27 23:37:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '141.101.98.135');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (421, 'login', '2020-10-28 11:03:10', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.95');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (422, 'login', '2020-10-28 16:40:47', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.98.135');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (423, 'login', '2020-10-29 03:27:29', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (424, 'login', '2020-10-29 04:05:42', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.121\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.112');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (425, 'login', '2020-10-30 07:52:42', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.155.197');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (426, 'login', '2020-10-30 09:45:36', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-81.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.146');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (427, 'login', '2020-10-31 04:19:48', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.155.197');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (428, 'login', '2020-10-31 06:50:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.146');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (429, 'login', '2020-10-31 12:23:41', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.81\",\"platform\":\"Android\"}', 'XFKLGQ', '162.158.158.48');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (430, 'login', '2020-10-31 22:38:50', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.112');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (431, 'login', '2020-11-01 00:15:18', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.197');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (432, 'login', '2020-11-01 02:47:28', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.119');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (433, 'login', '2020-11-01 22:45:37', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.81\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.155.197');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (434, 'login', '2020-11-02 02:25:38', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-85.0.4183.81\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.155.197');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (435, 'login', '2020-11-02 06:32:41', '{\"device\":\"Opera\",\"browser\":\"Opera V-71.0.3770.284\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.119');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (436, 'login', '2020-11-02 08:24:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.77');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (437, 'login', '2020-11-02 15:00:28', '{\"device\":\"Opera\",\"browser\":\"Opera V-71.0.3770.310\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.175');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (438, 'login', '2020-11-02 16:35:28', '{\"device\":\"Opera\",\"browser\":\"Opera V-71.0.3770.284\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.48');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (439, 'login', '2020-11-02 19:10:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.197');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (440, 'login', '2020-11-02 19:36:21', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-83.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.95');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (441, 'login', '2020-11-02 23:32:40', '{\"device\":\"Safari\",\"browser\":\"Safari V-604.1\",\"platform\":\"iOS\"}', '8NS5Y4', '162.158.155.77');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (442, 'login', '2020-11-03 09:45:56', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.77');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (443, 'login', '2020-11-03 18:41:27', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.155.77');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (444, 'login', '2020-11-03 20:21:50', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.107');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (445, 'login', '2020-11-03 21:15:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.215');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (446, 'login', '2020-11-04 18:41:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.135');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (447, 'login', '2020-11-05 14:49:43', '{\"device\":\"Opera\",\"browser\":\"Opera V-72.0.3815.186\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.77');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (448, 'login', '2020-11-06 08:44:25', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.110\",\"platform\":\"Android\"}', 'XFKLGQ', '162.158.155.197');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (449, 'login', '2020-11-06 10:39:13', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.183\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.98.85');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (450, 'login', '2020-11-06 11:21:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4302.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.135');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (451, 'login', '2020-11-07 20:10:49', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.183\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.77');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (452, 'login', '2020-11-08 22:13:26', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.112');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (453, 'login', '2020-11-09 07:00:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.183\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.197');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (454, 'login', '2020-11-10 16:01:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.106\",\"platform\":\"Linux\"}', '8NS5Y4', '162.158.155.203');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (455, 'login', '2020-11-10 17:43:27', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.183\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.203');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (456, 'login', '2020-11-11 19:59:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.154.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (457, 'login', '2020-11-12 07:42:23', '{\"device\":\"Opera\",\"browser\":\"Opera V-72.0.3815.186\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.195');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (458, 'login', '2020-11-12 11:06:02', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.193\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.195');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (459, 'login', '2020-11-12 11:58:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.193\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.209');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (460, 'login', '2020-11-12 15:35:21', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.183\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.158.212');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (461, 'login', '2020-11-13 14:59:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.193\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.7');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (462, 'login', '2020-11-14 00:50:42', '{\"device\":\"Opera\",\"browser\":\"Opera V-71.0.3770.323\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.106');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (463, 'login', '2020-11-14 01:06:18', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.111\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.154.238');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (464, 'login', '2020-11-14 14:47:53', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.209');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (465, 'login', '2020-11-14 23:44:54', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.158.212');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (466, 'login', '2020-11-15 10:33:50', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.193\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.129');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (467, 'login', '2020-11-16 06:48:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.106');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (468, 'login', '2020-11-16 18:58:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.193\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.195');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (469, 'login', '2020-11-17 02:24:43', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.193\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.195');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (470, 'login', '2020-11-18 06:44:00', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.193\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (471, 'login', '2020-11-18 18:35:57', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.238');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (472, 'login', '2020-11-18 19:41:02', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.195');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (473, 'login', '2020-11-18 20:45:10', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-83.0\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.154.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (474, 'login', '2020-11-18 20:50:17', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-83.0\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.154.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (475, 'login', '2020-11-19 01:14:34', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.7');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (476, 'login', '2020-11-19 08:09:11', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-82.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.157');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (477, 'login', '2020-11-20 14:09:18', '{\"device\":\"Safari\",\"browser\":\"Safari V-604.1\",\"platform\":\"iOS\"}', 'XFKLGQ', '162.158.159.91');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (478, 'login', '2020-11-21 07:14:46', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (479, 'login', '2020-11-21 16:11:14', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 7\"}', '8NS5Y4', '141.101.98.195');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (480, 'login', '2020-11-22 00:11:08', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.209');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (481, 'login', '2020-11-22 05:59:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.66\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.195');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (482, 'login', '2020-11-23 06:11:39', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.7');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (483, 'login', '2020-11-24 05:07:03', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.66\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.195');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (484, 'login', '2020-11-25 17:36:18', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.99\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.154.238');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (485, 'login', '2020-11-26 17:14:42', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (486, 'login', '2020-11-26 17:16:27', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (487, 'login', '2020-11-26 22:22:44', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.66\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.238');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (488, 'login', '2020-11-27 11:37:28', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.66\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.209');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (489, 'login', '2020-11-28 03:25:27', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.154');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (490, 'login', '2020-12-01 18:31:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.66\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.159.7');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (491, 'login', '2020-12-02 08:45:03', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '172.69.54.6');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (492, 'login', '2020-12-02 16:21:28', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.30');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (493, 'login', '2020-12-03 01:34:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.66\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.30');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (494, 'login', '2020-12-04 20:22:06', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.158.126');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (495, 'login', '2020-12-05 04:34:13', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.29');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (496, 'login', '2020-12-06 02:48:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.158.126');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (497, 'login', '2020-12-07 20:03:57', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.158.30');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (498, 'login', '2020-12-07 20:32:32', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.158.30');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (499, 'login', '2020-12-07 23:22:51', '{\"device\":\"Opera\",\"browser\":\"Opera V-71.0.3770.449\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.252');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (500, 'login', '2020-12-08 03:18:00', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.77');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (501, 'login', '2020-12-08 03:44:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.25');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (502, 'login', '2020-12-08 09:50:44', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.66\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.30');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (503, 'login', '2020-12-08 10:55:40', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.66\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.252');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (504, 'login', '2020-12-08 21:19:07', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.158.170');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (505, 'login', '2020-12-09 07:01:14', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.99\",\"platform\":\"Android\"}', 'XFKLGQ', '162.158.159.125');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (506, 'login', '2020-12-09 09:21:46', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-83.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '172.69.54.6');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (507, 'login', '2020-12-10 01:27:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.99.112');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (508, 'login', '2020-12-10 09:11:21', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Android\"}', '8NS5Y4', '172.69.55.169');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (509, 'login', '2020-12-11 10:20:42', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '141.101.99.72');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (510, 'login', '2020-12-11 13:47:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.98.147');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (511, 'login', '2020-12-11 23:15:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.232');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (512, 'login', '2020-12-12 02:26:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.193');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (513, 'login', '2020-12-12 05:42:47', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.155.233');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (514, 'login', '2020-12-13 21:09:10', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-83.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.115');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (515, 'login', '2020-12-13 23:22:36', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.40');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (516, 'login', '2020-12-14 17:32:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.232');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (517, 'login', '2020-12-15 08:35:27', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-86.0.4240.198\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.128');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (518, 'login', '2020-12-15 20:10:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.77');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (519, 'login', '2020-12-15 22:07:31', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.99.8');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (520, 'login', '2020-12-17 10:47:36', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.212');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (521, 'login', '2020-12-17 19:08:15', '{\"device\":\"Opera\",\"browser\":\"Opera V-72.0.3815.400\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.212');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (522, 'login', '2020-12-20 17:39:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.109');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (523, 'login', '2020-12-21 17:30:35', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-84.0\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '141.101.99.118');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (524, 'login', '2020-12-21 22:56:42', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.198');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (525, 'login', '2020-12-23 00:27:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.169');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (526, 'login', '2020-12-25 14:50:29', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.12');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (527, 'login', '2020-12-25 14:51:42', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-78.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.12');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (528, 'login', '2020-12-25 22:49:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.198');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (529, 'login', '2020-12-30 09:17:38', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.17');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (530, 'login', '2020-12-30 11:32:30', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.169');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (531, 'login', '2020-12-31 07:35:05', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.125');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (532, 'login', '2021-01-01 20:32:39', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.169');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (533, 'login', '2021-01-03 20:40:41', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.158.12');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (534, 'login', '2021-01-04 11:52:25', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.170');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (535, 'login', '2021-01-05 18:05:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.212');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (536, 'login', '2021-01-06 16:28:44', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.169');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (537, 'login', '2021-01-07 07:42:53', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.146');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (538, 'login', '2021-01-07 19:18:15', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.99.20');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (539, 'login', '2021-01-07 23:49:13', '{\"device\":\"Safari\",\"browser\":\"Safari V-605.1.15\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.98.249');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (540, 'login', '2021-01-09 03:56:54', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.146');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (541, 'login', '2021-01-10 23:49:19', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '141.101.98.21');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (542, 'login', '2021-01-11 12:14:11', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.101\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.244');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (543, 'login', '2021-01-11 23:02:20', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-75.0.3770.143\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.242');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (544, 'login', '2021-01-13 22:56:57', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '141.101.98.67');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (545, 'login', '2021-01-14 19:13:41', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.249');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (546, 'login', '2021-01-14 19:27:34', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.249');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (547, 'login', '2021-01-15 18:15:17', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.238');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (548, 'login', '2021-01-16 16:20:29', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.21');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (549, 'login', '2021-01-17 16:43:24', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-84.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.238');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (550, 'login', '2021-01-17 16:47:21', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-84.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.99.238');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (551, 'login', '2021-01-17 23:45:21', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.238');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (552, 'login', '2021-01-19 19:49:04', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-84.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.146');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (553, 'login', '2021-01-19 21:28:15', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-74.0.3729.136\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.154.238');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (554, 'login', '2021-01-20 04:59:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Mac OS X\"}', 'XFKLGQ', '162.158.154.238');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (555, 'login', '2021-01-20 16:19:27', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.21');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (556, 'login', '2021-01-20 18:25:40', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.242');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (557, 'login', '2021-01-20 20:59:07', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-83.0.4103.106\",\"platform\":\"Android\"}', '8NS5Y4', '141.101.98.21');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (558, 'login', '2021-01-21 07:00:37', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.146');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (559, 'login', '2021-01-22 06:55:26', '{\"device\":\"Safari\",\"browser\":\"Safari V-604.1\",\"platform\":\"iOS\"}', '8NS5Y4', '141.101.98.249');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (560, 'login', '2021-01-23 08:27:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.158.158');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (561, 'login', '2021-01-24 01:46:43', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.244');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (562, 'login', '2021-01-25 09:58:39', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 7\"}', '8NS5Y4', '141.101.99.238');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (563, 'login', '2021-01-26 16:16:11', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.88\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.21');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (564, 'login', '2021-01-27 03:57:33', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.142\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.174');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (565, 'login', '2021-01-27 19:15:18', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 7\"}', '8NS5Y4', '141.101.99.104');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (566, 'login', '2021-01-28 00:15:14', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.19');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (567, 'login', '2021-01-30 20:26:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.104\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.141');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (568, 'login', '2021-01-31 23:21:38', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.104\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.155.131');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (569, 'login', '2021-02-01 00:14:28', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.66\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.155.167');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (570, 'login', '2021-02-01 15:37:12', '{\"device\":\"Opera\",\"browser\":\"Opera V-73.0.3856.344\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.112');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (571, 'login', '2021-02-02 23:59:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.104\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.155.11');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (572, 'login', '2021-02-04 08:01:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.96\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.158.48');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (573, 'login', '2021-02-04 19:26:06', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.141\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.19');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (574, 'login', '2021-02-05 10:50:48', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.141\",\"platform\":\"Android\"}', 'XFKLGQ', '162.158.158.212');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (575, 'login', '2021-02-05 18:37:22', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.146\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.158.212');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (576, 'login', '2021-02-06 17:22:23', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.150\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '162.158.159.119');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (577, 'login', '2021-02-07 17:40:38', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-85.0\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.109');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (578, 'login', '2021-02-07 19:44:54', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.146\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.155.221');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (579, 'login', '2021-02-08 01:17:52', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.150\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '141.101.99.170');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (580, 'login', '2021-02-08 20:26:40', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.150\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '141.101.99.166');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (581, 'login', '2021-02-08 23:06:33', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.152\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '141.101.98.19');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (582, 'login', '2021-02-12 18:09:02', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.146\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.170');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (583, 'login', '2021-02-16 01:08:54', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.150\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.148');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (584, 'login', '2021-02-16 01:10:58', '{\"device\":\"Opera\",\"browser\":\"Opera V-73.0.3856.396\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.148');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (585, 'login', '2021-02-19 16:07:27', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.150\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.119');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (586, 'login', '2021-02-19 19:36:45', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.182\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.93');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (587, 'login', '2021-02-22 07:20:02', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-87.0.4280.148\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.234');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (588, 'login', '2021-02-24 17:07:59', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.182\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.189');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (589, 'login', '2021-02-25 11:05:35', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.190\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.75');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (590, 'login', '2021-02-25 16:15:25', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-87.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.250');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (591, 'login', '2021-02-25 16:17:24', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-87.0\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.250');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (592, 'login', '2021-02-25 16:25:14', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.150\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.99.184');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (593, 'login', '2021-02-25 22:15:50', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.182\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.61');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (594, 'login', '2021-02-26 21:22:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.190\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.107.165');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (595, 'login', '2021-02-27 18:46:43', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.190\",\"platform\":\"Windows 7\"}', 'XFKLGQ', '141.101.107.165');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (596, 'login', '2021-02-28 19:37:09', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.190\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (597, 'login', '2021-03-02 06:09:23', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.190\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.107.81');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (598, 'login', '2021-03-04 12:48:48', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.181\",\"platform\":\"Android\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (599, 'login', '2021-03-06 18:39:12', '{\"device\":\"Opera\",\"browser\":\"Opera V-74.0.3911.160\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.127');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (600, 'login', '2021-03-09 11:13:15', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.190\",\"platform\":\"Windows 7\"}', '8NS5Y4', '141.101.99.12');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (601, 'login', '2021-03-10 03:10:02', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.192\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '141.101.107.139');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (602, 'login', '2021-03-10 21:39:43', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.82\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.99.86');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (603, 'login', '2021-03-10 23:13:13', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.72\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '141.101.107.55');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (604, 'login', '2021-03-11 02:17:41', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-86.0\",\"platform\":\"Windows 7\"}', '8NS5Y4', '162.158.158.128');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (605, 'login', '2021-03-11 15:28:06', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.190\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.204');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (606, 'login', '2021-03-15 13:39:30', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.82\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.119');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (607, 'login', '2021-03-15 18:05:18', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.99\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.158.66');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (608, 'login', '2021-03-15 18:05:22', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-68.0\",\"platform\":\"Linux\"}', '8NS5Y4', '162.158.159.113');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (609, 'login', '2021-03-19 07:53:04', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.82\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.113');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (610, 'login', '2021-03-20 01:02:25', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-84.0\",\"platform\":\"Linux\"}', '8NS5Y4', '141.101.99.150');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (611, 'login', '2021-03-20 15:11:40', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-88.0.4324.152\",\"platform\":\"Windows 8\"}', '8NS5Y4', '141.101.99.86');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (612, 'login', '2021-03-21 19:09:03', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.90\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.99.32');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (613, 'login', '2021-03-25 14:29:12', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-80.0.3987.99\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.154.34');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (614, 'login', '2021-03-25 16:48:14', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.90\",\"platform\":\"Windows 8.1\"}', 'XFKLGQ', '162.158.159.113');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (615, 'login', '2021-03-26 10:59:58', '{\"device\":\"Safari\",\"browser\":\"Safari V-604.1\",\"platform\":\"iOS\"}', '8NS5Y4', '162.158.159.89');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (616, 'login', '2021-03-27 16:26:34', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.90\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.109');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (617, 'login', '2021-03-27 18:01:29', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.105\",\"platform\":\"Android\"}', 'XFKLGQ', '141.101.98.137');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (618, 'login', '2021-03-28 04:07:04', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.90\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.158.66');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (619, 'login', '2021-03-30 05:24:55', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.90\",\"platform\":\"Mac OS X\"}', '8NS5Y4', '162.158.159.113');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (620, 'login', '2021-03-30 23:54:46', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.90\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.34');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (621, 'login', '2021-03-31 11:50:57', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.105\",\"platform\":\"Android\"}', '8NS5Y4', '162.158.159.113');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (622, 'login', '2021-03-31 21:50:34', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.90\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.159.89');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (623, 'login', '2021-04-01 00:02:00', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.90\",\"platform\":\"Windows 10\"}', '8NS5Y4', '162.158.154.34');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (624, 'login', '2021-04-01 02:36:08', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.90\",\"platform\":\"Android\"}', '8NS5Y4', '141.101.98.5');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (625, 'login', '2021-04-01 12:47:37', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.114\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.154.34');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (626, 'login', '2021-04-01 17:57:42', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.90\",\"platform\":\"Windows 10\"}', 'XFKLGQ', '162.158.159.113');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (627, 'login', '2021-04-01 18:58:04', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.114\",\"platform\":\"Windows 10\"}', '8NS5Y4', '141.101.98.137');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (628, 'login', '2021-04-02 09:46:29', '{\"device\":\"Firefox\",\"browser\":\"Firefox V-86.0\",\"platform\":\"Windows 8.1\"}', '8NS5Y4', '162.158.159.119');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (629, 'login', '2021-04-03 18:02:16', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.105\",\"platform\":\"Android\"}', 'XFKLGQ', '162.158.159.89');
INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES (630, 'login', '2021-04-20 09:38:53', '{\"device\":\"Chrome\",\"browser\":\"Chrome V-89.0.4389.128\",\"platform\":\"Windows 10\"}', '8NS5Y4', '::1');


#
# TABLE STRUCTURE FOR: dbt_user_verify_doc
#

DROP TABLE IF EXISTS `dbt_user_verify_doc`;

CREATE TABLE `dbt_user_verify_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `verify_type` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `id_number` varchar(300) NOT NULL,
  `document1` varchar(300) NOT NULL,
  `document2` varchar(300) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_user_verify_doc` (`id`, `user_id`, `verify_type`, `first_name`, `last_name`, `gender`, `id_number`, `document1`, `document2`, `date`) VALUES (1, '8NS5Y4', 'nid', 'ade', 'kojo', 0, '949949494994', 'upload/documents/2a21c0f88aeaef68a8dcfde7c5c724a9.jpg', '', '2020-03-21 16:23:02');
INSERT INTO `dbt_user_verify_doc` (`id`, `user_id`, `verify_type`, `first_name`, `last_name`, `gender`, `id_number`, `document1`, `document2`, `date`) VALUES (2, '6U1OP5', 'driving_license', 'Arad', 'yeganeh', 0, '9999', 'upload/documents/7293645afea65875e4bd35d869df94ee.jpg', '', '2020-04-26 22:14:26');


#
# TABLE STRUCTURE FOR: dbt_verify
#

DROP TABLE IF EXISTS `dbt_verify`;

CREATE TABLE `dbt_verify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(250) DEFAULT NULL,
  `session_id` varchar(250) DEFAULT NULL,
  `verify_code` varchar(250) DEFAULT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (1, '141.101.99.159', '1', 'MSF5SC', '8NS5Y4', '{\"user_id\":\"8NS5Y4\",\"wallet_id\":\"42424242424242\",\"amount\":\"200\",\"method\":\"stripe\",\"fees_amount\":4,\"comment\":\"\",\"request_date\":\"2019-02-24 09:19:56\",\"status\":2,\"ip\":\"141.101.99.159\"}', 0);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (2, '141.101.98.62', '1', 'I9P0XE', '8NS5Y4', '{\"user_id\":\"8NS5Y4\",\"wallet_id\":\"tareq7500personal2@gmail.com\",\"amount\":\"300\",\"method\":\"paypal\",\"fees_amount\":6,\"comment\":\"\",\"request_date\":\"2019-02-24 09:21:37\",\"status\":2,\"ip\":\"141.101.98.62\"}', 0);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (3, '141.101.98.62', '1', 'QUK9UH', '8NS5Y4', '{\"user_id\":\"8NS5Y4\",\"wallet_id\":\"42424242424242\",\"amount\":\"500\",\"method\":\"stripe\",\"fees_amount\":10,\"comment\":\"\",\"request_date\":\"2019-02-24 09:22:16\",\"status\":2,\"ip\":\"141.101.98.62\"}', 0);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (4, '141.101.99.159', '1', 'TEUGU5', '8NS5Y4', '{\"user_id\":\"8NS5Y4\",\"wallet_id\":\"42424242424242\",\"amount\":\"2000\",\"method\":\"stripe\",\"fees_amount\":40,\"comment\":\"\",\"request_date\":\"2019-02-24 09:22:56\",\"status\":2,\"ip\":\"141.101.99.159\"}', 0);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (5, '141.101.99.159', '1', '7LLHGZ', '8NS5Y4', '{\"sender_user_id\":\"8NS5Y4\",\"receiver_user_id\":\"BX8333\",\"amount\":\"200\",\"fees\":6,\"request_ip\":\"141.101.99.159\",\"date\":\"2019-02-24 09:27:03\",\"comments\":\"test\",\"status\":1}', 0);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (6, '141.101.98.62', '1', 'LCFDFI', '8NS5Y4', '{\"sender_user_id\":\"8NS5Y4\",\"receiver_user_id\":\"10QZ56\",\"amount\":\"100\",\"fees\":3,\"request_ip\":\"141.101.98.62\",\"date\":\"2019-02-24 09:28:24\",\"comments\":\"demo\",\"status\":1}', 0);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (7, '141.101.99.159', '1', 'CL0ZRZ', '8NS5Y4', '{\"sender_user_id\":\"8NS5Y4\",\"receiver_user_id\":\"UGMOCC\",\"amount\":\"200\",\"fees\":6,\"request_ip\":\"141.101.99.159\",\"date\":\"2019-02-24 09:29:17\",\"comments\":\"demo\",\"status\":1}', 0);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (8, '141.101.99.159', '1', 'LJYWCX', '8NS5Y4', '{\"sender_user_id\":\"8NS5Y4\",\"receiver_user_id\":\"X2NL8S\",\"amount\":\"150\",\"fees\":4.5,\"request_ip\":\"141.101.99.159\",\"date\":\"2019-02-24 09:30:35\",\"comments\":\"demo\",\"status\":1}', 0);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (9, '141.101.77.65', NULL, '7QBMQS', NULL, '{\"email\":\"brucec340@gmail.com\"}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (10, '162.158.154.178', '1', 'DBTEQL', 'W1R3J3', '{\"sender_user_id\":\"W1R3J3\",\"receiver_user_id\":\"demo3\",\"amount\":\"5\",\"fees\":0.15000000000000002220446049250313080847263336181640625,\"request_ip\":\"162.158.154.178\",\"date\":\"2020-04-01 12:11:11\",\"comments\":\"test\",\"status\":1}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (11, '162.158.154.178', '1', 'UQ0MR8', 'W1R3J3', '{\"sender_user_id\":\"W1R3J3\",\"receiver_user_id\":\"demo3\",\"amount\":\"5\",\"fees\":0.15000000000000002220446049250313080847263336181640625,\"request_ip\":\"162.158.154.178\",\"date\":\"2020-04-01 12:11:12\",\"comments\":\"test\",\"status\":1}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (12, '162.158.155.17', '1', 'C4VW4L', '6U1OP5', '{\"sender_user_id\":\"6U1OP5\",\"receiver_user_id\":\"tesf\",\"amount\":\"10\",\"fees\":0.3000000000000000444089209850062616169452667236328125,\"request_ip\":\"162.158.155.17\",\"date\":\"2020-04-16 01:20:03\",\"comments\":\"etset\",\"status\":1}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (13, '162.158.159.93', '1', '8746AD', 'XFKLGQ', '{\"language\":\"english\",\"first_name\":\"ALEC\",\"last_name\":\"MTETWA\",\"email\":\"admin@demo.com\",\"phone\":\"admin@demo.com\"}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (14, '162.158.155.65', '1', 'GGFMX2', '8NS5Y4', '{\"sender_user_id\":\"8NS5Y4\",\"receiver_user_id\":\"8NS5Y4\",\"amount\":\"7777\",\"fees\":233.31000000000000227373675443232059478759765625,\"request_ip\":\"162.158.155.65\",\"date\":\"2020-04-25 04:28:03\",\"comments\":\"\",\"status\":1}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (15, '162.158.155.65', '1', 'CLN8ZF', '8NS5Y4', '{\"sender_user_id\":\"8NS5Y4\",\"receiver_user_id\":\"8NS5Y4\",\"amount\":\"8888\",\"fees\":266.6399999999999863575794734060764312744140625,\"request_ip\":\"162.158.155.65\",\"date\":\"2020-04-25 04:28:58\",\"comments\":\"\",\"status\":1}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (16, '162.158.155.65', '1', 'LYAGXR', '8NS5Y4', '{\"sender_user_id\":\"8NS5Y4\",\"receiver_user_id\":\"8NS5Y4\",\"amount\":\"8888\",\"fees\":266.6399999999999863575794734060764312744140625,\"request_ip\":\"162.158.155.65\",\"date\":\"2020-04-25 04:35:34\",\"comments\":\"\",\"status\":1}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (17, '141.101.98.121', '1', 'YHNRHR', '8NS5Y4', '{\"language\":\"french\",\"first_name\":\"Demo\",\"last_name\":\"demo\",\"email\":\"demo@mail.com\",\"phone\":\"12345\"}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (18, '141.101.98.253', '1', 'ZFCG15', '6U1OP5', '{\"sender_user_id\":\"6U1OP5\",\"receiver_user_id\":\"65778\",\"amount\":\"500\",\"fees\":15,\"request_ip\":\"141.101.98.253\",\"date\":\"2020-04-29 04:52:53\",\"comments\":\"\",\"status\":1}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (19, '162.158.158.242', NULL, '1S4I7Z', NULL, '{\"email\":\"oguehbryan@gmail.com\"}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (20, '162.158.154.40', '1', 'NISD04', '8NS5Y4', '{\"language\":\"english\",\"first_name\":\"Demo\",\"last_name\":\"demo\",\"email\":\"demo@mail.com\",\"phone\":\"12345\"}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (21, '162.158.158.36', NULL, 'GLSP2N', NULL, '{\"email\":\"tareq7500@gmail.com\"}', 1);
INSERT INTO `dbt_verify` (`id`, `ip_address`, `session_id`, `verify_code`, `user_id`, `data`, `status`) VALUES (22, '162.158.158.36', '1', '9CCQUX', '8NS5Y4', '{\"language\":\"english\",\"first_name\":\"Demo\",\"last_name\":\"User\",\"email\":\"demo@mail.com\",\"phone\":\"12345\"}', 1);


#
# TABLE STRUCTURE FOR: dbt_withdraw
#

DROP TABLE IF EXISTS `dbt_withdraw`;

CREATE TABLE `dbt_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `wallet_id` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `method` varchar(50) NOT NULL,
  `fees_amount` double NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `request_date` datetime DEFAULT NULL,
  `success_date` datetime DEFAULT NULL,
  `cancel_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Cancel request, 1=Approved request, 2=Pending request',
  `ip` varchar(50) NOT NULL,
  `approved_cancel_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `dbt_withdraw` (`id`, `user_id`, `wallet_id`, `amount`, `method`, `fees_amount`, `comment`, `request_date`, `success_date`, `cancel_date`, `status`, `ip`, `approved_cancel_by`) VALUES (1, '8NS5Y4', '42424242424242', '200', 'stripe', '4', '', '2019-02-24 09:19:56', '0000-00-00 00:00:00', NULL, 1, '141.101.99.159', NULL);
INSERT INTO `dbt_withdraw` (`id`, `user_id`, `wallet_id`, `amount`, `method`, `fees_amount`, `comment`, `request_date`, `success_date`, `cancel_date`, `status`, `ip`, `approved_cancel_by`) VALUES (2, '8NS5Y4', 'tareq7500personal2@gmail.com', '300', 'paypal', '6', '', '2019-02-24 09:21:37', '0000-00-00 00:00:00', NULL, 1, '141.101.98.62', NULL);
INSERT INTO `dbt_withdraw` (`id`, `user_id`, `wallet_id`, `amount`, `method`, `fees_amount`, `comment`, `request_date`, `success_date`, `cancel_date`, `status`, `ip`, `approved_cancel_by`) VALUES (3, '8NS5Y4', '42424242424242', '500', 'stripe', '10', '', '2019-02-24 09:22:16', '0000-00-00 00:00:00', NULL, 1, '141.101.98.62', NULL);
INSERT INTO `dbt_withdraw` (`id`, `user_id`, `wallet_id`, `amount`, `method`, `fees_amount`, `comment`, `request_date`, `success_date`, `cancel_date`, `status`, `ip`, `approved_cancel_by`) VALUES (4, '8NS5Y4', '42424242424242', '2000', 'stripe', '40', '', '2019-02-24 09:22:56', NULL, '0000-00-00 00:00:00', 0, '141.101.99.159', NULL);


#
# TABLE STRUCTURE FOR: earnings
#

DROP TABLE IF EXISTS `earnings`;

CREATE TABLE `earnings` (
  `earning_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) NOT NULL,
  `Purchaser_id` varchar(250) DEFAULT NULL,
  `earning_type` varchar(45) NOT NULL,
  `package_id` varchar(250) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `date` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `comments` mediumtext DEFAULT NULL,
  PRIMARY KEY (`earning_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Weekly ROI, Monthly ROI, team bonous, direct referal bonous';

INSERT INTO `earnings` (`earning_id`, `user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `date`, `amount`, `comments`) VALUES (1, '8NS5Y4', '10QZ56', 'REFERRAL', NULL, NULL, '2019-01-17', '11.00000000', NULL);
INSERT INTO `earnings` (`earning_id`, `user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `date`, `amount`, `comments`) VALUES (2, '8NS5Y4', 'BX8333', 'REFERRAL', NULL, NULL, '2019-01-17', '11.00000000', NULL);


#
# TABLE STRUCTURE FOR: email_sms_gateway
#

DROP TABLE IF EXISTS `email_sms_gateway`;

CREATE TABLE `email_sms_gateway` (
  `es_id` int(11) NOT NULL AUTO_INCREMENT,
  `gatewayname` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `protocol` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `port` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mailtype` varchar(100) DEFAULT NULL,
  `charset` varchar(100) DEFAULT NULL,
  `api` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`es_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `email_sms_gateway` (`es_id`, `gatewayname`, `title`, `protocol`, `host`, `port`, `user`, `userid`, `password`, `mailtype`, `charset`, `api`) VALUES (1, 'budgetsms', 'Bdtask SMS', NULL, 'https://api.budgetsms.net/sendsms/?', NULL, 'tradeboxbdtask', '139062', NULL, NULL, NULL, 'b39edd600577b6b3bd16cc69aec82f05');
INSERT INTO `email_sms_gateway` (`es_id`, `gatewayname`, `title`, `protocol`, `host`, `port`, `user`, `userid`, `password`, `mailtype`, `charset`, `api`) VALUES (2, 'smtp', 'Bbtask mail', 'smtp', 'ssl://smtp.gmail.com', '465', 'rdmvaijah@gmail.com', '', 'vai99862', 'html', 'utf-8', NULL);


#
# TABLE STRUCTURE FOR: investment
#

DROP TABLE IF EXISTS `investment`;

CREATE TABLE `investment` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `sponsor_id` varchar(255) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `invest_date` date DEFAULT NULL,
  `day` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `idinvestment_UNIQUE` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1 COMMENT='All investment and primary investor and referrar information will be stored here.';

INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (1, '8NS5Y4', '', 1, '100', '2019-02-24', 7);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (2, '8NS5Y4', '', 4, '800', '2019-02-24', 7);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (3, '8NS5Y4', '', 3, '400', '2019-02-24', 7);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (4, '8NS5Y4', '', 4, '800', '2019-02-27', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (5, '8NS5Y4', '', 6, '3200', '2019-02-27', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (6, '8NS5Y4', '', 1, '100', '2019-02-27', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (7, '8NS5Y4', '', 6, '3200', '2019-02-28', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (8, '8NS5Y4', '', 6, '3200', '2019-02-28', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (9, '8NS5Y4', '', 6, '3200', '2019-02-28', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (10, '8NS5Y4', '', 1, '100', '2020-03-11', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (11, '8NS5Y4', '', 6, '3200', '2020-03-12', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (12, '6U1OP5', '', 1, '100', '2020-03-12', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (13, '6U1OP5', '', 4, '800', '2020-03-12', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (14, '8NS5Y4', '', 1, '100', '2020-03-12', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (15, '8NS5Y4', '', 1, '100', '2020-03-12', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (16, '10QZ56', '', 1, '100', '2020-03-14', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (17, '8NS5Y4', '', 1, '100', '2020-03-14', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (18, '8NS5Y4', '', 6, '3200', '2020-03-14', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (19, '8NS5Y4', '', 1, '100', '2020-03-15', 7);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (20, '8NS5Y4', '', 5, '1600', '2020-03-16', 1);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (21, '8NS5Y4', '', 1, '100', '2020-03-17', 2);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (22, '8NS5Y4', '', 1, '100', '2020-03-20', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (23, '8NS5Y4', '', 2, '200', '2020-03-20', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (24, '8NS5Y4', '', 1, '100', '2020-03-23', 1);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (25, '8NS5Y4', '', 4, '800', '2020-03-23', 1);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (26, '6U1OP5', '', 1, '100', '2020-03-24', 2);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (27, '8NS5Y4', '', 1, '100', '2020-03-25', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (28, '8NS5Y4', '', 6, '3200', '2020-03-25', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (29, '8NS5Y4', '', 1, '100', '2020-03-25', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (30, '8NS5Y4', '', 1, '100', '2020-03-25', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (31, '8NS5Y4', '', 1, '100', '2020-03-25', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (32, '8NS5Y4', '', 1, '100', '2020-03-26', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (33, '8NS5Y4', '', 1, '100', '2020-03-27', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (34, '6U1OP5', '', 1, '100', '2020-03-27', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (35, 'W1R3J3', '', 1, '100', '2020-03-27', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (36, '8NS5Y4', '', 3, '400', '2020-03-28', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (37, '8NS5Y4', '', 1, '100', '2020-03-31', 2);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (38, 'BX8333', '', 1, '100', '2020-04-08', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (39, 'BX8333', '', 3, '400', '2020-04-08', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (40, 'BX8333', '', 6, '3200', '2020-04-08', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (41, '8NS5Y4', '', 1, '100', '2020-04-08', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (42, '8NS5Y4', '', 3, '400', '2020-04-08', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (43, '6U1OP5', '', 1, '100', '2020-04-09', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (44, '8NS5Y4', '', 3, '400', '2020-04-10', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (45, '8NS5Y4', '', 3, '400', '2020-04-10', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (46, '8NS5Y4', '', 1, '100', '2020-04-11', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (47, '8NS5Y4', '', 1, '100', '2020-04-12', 7);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (48, '8NS5Y4', '', 6, '3200', '2020-04-12', 7);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (49, '8NS5Y4', '', 1, '100', '2020-04-13', 1);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (50, '8NS5Y4', '', 1, '100', '2020-04-14', 2);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (51, '8NS5Y4', '', 6, '3200', '2020-04-15', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (52, '8NS5Y4', '', 1, '100', '2020-04-15', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (53, '8NS5Y4', '', 6, '3200', '2020-04-15', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (54, '6U1OP5', '', 3, '400', '2020-04-16', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (55, '8NS5Y4', '', 1, '100', '2020-04-17', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (56, '8NS5Y4', '', 1, '100', '2020-04-17', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (57, '8NS5Y4', '', 1, '100', '2020-04-18', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (58, '8NS5Y4', '', 1, '100', '2020-04-18', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (59, '8NS5Y4', '', 1, '100', '2020-04-18', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (60, '8NS5Y4', '', 4, '800', '2020-04-18', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (61, '8NS5Y4', '', 1, '100', '2020-04-19', 7);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (62, '8NS5Y4', '', 1, '100', '2020-04-21', 2);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (63, '8NS5Y4', '', 1, '100', '2020-04-22', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (64, '8NS5Y4', '', 4, '800', '2020-04-23', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (65, '8NS5Y4', '', 6, '3200', '2020-04-23', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (66, '8NS5Y4', '', 2, '200', '2020-04-24', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (67, '8NS5Y4', '', 3, '400', '2020-04-24', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (68, '8NS5Y4', '', 1, '100', '2020-04-24', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (69, '8NS5Y4', '', 1, '100', '2020-04-25', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (70, '8NS5Y4', '', 1, '100', '2020-04-25', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (71, '8NS5Y4', '', 3, '400', '2020-04-26', 7);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (72, '6U1OP5', '', 5, '1600', '2020-04-26', 7);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (73, '6U1OP5', '', 1, '100', '2020-04-29', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (74, '8NS5Y4', '', 3, '400', '2020-04-30', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (75, '8NS5Y4', '', 3, '400', '2020-05-01', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (76, '8NS5Y4', '', 1, '100', '2020-05-01', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (77, '8NS5Y4', '', 1, '100', '2020-05-02', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (78, '8NS5Y4', '', 1, '100', '2020-05-02', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (79, '8NS5Y4', '', 4, '800', '2020-05-02', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (80, '8NS5Y4', '', 4, '800', '2020-05-02', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (81, '8NS5Y4', '', 1, '100', '2020-05-06', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (82, '8NS5Y4', '', 1, '100', '2020-05-06', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (83, '6U1OP5', '', 4, '800', '2020-05-07', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (84, '8NS5Y4', '', 1, '100', '2020-05-07', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (85, '8NS5Y4', '', 1, '100', '2020-05-07', 4);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (86, '8NS5Y4', '', 2, '200', '2020-05-08', 5);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (87, '8NS5Y4', '', 1, '100', '2020-05-09', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (88, '8NS5Y4', '', 6, '3200', '2020-05-09', 6);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (89, '8NS5Y4', '', 1, '100', '2020-05-10', 7);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (90, '8NS5Y4', '', 1, '100', '2020-05-20', 3);
INSERT INTO `investment` (`order_id`, `user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES (91, '8NS5Y4', '', 2, '200', '2020-06-14', 7);


#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `phrase` text NOT NULL,
  `english` text DEFAULT NULL,
  `french` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=855 DEFAULT CHARSET=utf8;

INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (1, 'email', 'Email Address', 'Email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (2, 'password', 'Password', 'Mot de passe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (3, 'login', 'Log In', 'Connexion');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (4, 'incorrect_email_password', 'Incorrect Email/Password!', 'Mot de passe ou email incorrect');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (5, 'user_role', 'User Role', 'Rôle Utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (6, 'please_login', 'Please Log In', 'Veuillez vous connecter');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (7, 'setting', 'Setting', 'Reglages');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (8, 'profile', 'Profile', 'Profil');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (9, 'logout', 'Log Out', 'Déconnexion');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (10, 'please_try_again', 'Please Try Again', 'Essayez encore !');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (11, 'admin', 'Admin', 'Administrateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (12, 'dashboard', 'Dashboard', 'Tableau de Bord');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (13, 'language_setting', 'Language Setting', 'Reglage Langue');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (14, 'status', 'Status', 'Status');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (15, 'active', 'Active', 'Actif');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (16, 'inactive', 'Inactive', 'Inactif');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (17, 'cancel', 'Cancel', 'Annuler');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (18, 'save', 'Save', 'Sauvegarder');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (19, 'serial', 'SL.NO', 'Serial');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (20, 'action', 'Action', 'Action');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (21, 'edit', 'Edit ', 'Editer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (22, 'delete', 'Delete', 'Supprimer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (23, 'save_successfully', 'Save Successfully!', 'Sauvegarde reussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (24, 'update_successfully', 'Update Successfully!', 'Mise à jour reussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (25, 'delete_successfully', 'Delete successfully!', 'Suppression Reussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (26, 'are_you_sure', 'Are You Sure ? ', 'Etes-vous sure?');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (27, 'ip_address', 'IP Address', 'Adresse IP');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (28, 'application_title', 'Application Title', 'Titre appli');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (29, 'favicon', 'Favicon', 'favicon');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (30, 'logo', 'Logo', 'Logo');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (31, 'footer_text', 'Footer Text', 'Titre Footer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (32, 'language', 'Language', 'Langue');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (33, 'website_title', 'Website Title', 'Titre site web');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (34, 'invalid_logo', 'Invalid Logo', 'Logo invalide');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (35, 'submit_successfully', 'Submit Successfully!', 'Envoi reussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (36, 'application_setting', 'Application Setting', 'Reglages appli');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (37, 'invalid_favicon', 'Invalid Favicon', 'Favicon Invalide');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (38, 'submit', 'Submit', 'Envoyez');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (39, 'site_align', 'Website Align', 'Alignement site');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (40, 'right_to_left', 'Right to Left', 'Doite vers la gauche');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (41, 'left_to_right', 'Left to Right', 'Gauche Vers la droite');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (42, 'subject', 'Subject', 'Sujet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (43, 'receiver_name', 'Send To', 'Nom Bénéficiaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (44, 'select_user', 'Select User', 'Selectionner Utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (45, 'message_sent', 'Messages Sent', 'Message Envoyé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (46, 'mail', 'Mail', 'Mail');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (47, 'send_mail', 'Send Mail', 'Envoyer Mail');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (48, 'mail_setting', 'Mail Setting', 'Reglage mail');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (49, 'protocol', 'Protocol', 'Protocole');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (50, 'mailpath', 'Mail Path', 'Repertoire Mail');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (51, 'mailtype', 'Mail Type', 'Type mail');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (52, 'validate_email', 'Validate Email Address', 'Validez votre Email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (53, 'true', 'True', 'Vraie');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (54, 'false', 'False', 'faux');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (55, 'attach_file', 'Attach File', 'Joindre un document');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (56, 'wordwrap', 'Enable Word Wrap', 'Wordwrap');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (57, 'send', 'Send', 'Envoyer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (58, 'app_setting', 'App Setting', 'Reglages appli');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (59, 'sms', 'SMS', 'SMS');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (60, 'gateway_setting', 'Gateway Setting', 'Reglage portail');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (61, 'time_zone', 'Time Zone', 'Time Zone');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (62, 'provider', 'Provider', 'Fournisseur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (63, 'sms_template', 'SMS Template', 'Template SMS');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (64, 'template_name', 'Template Name', 'Nom Du Modèle');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (65, 'sms_schedule', 'SMS Schedule', 'Emploi du temps SMS');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (66, 'schedule_name', 'Schedule Name', 'Nom d\'horaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (67, 'time', 'Time', 'Heure');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (68, 'already_exists', 'Already Exists', 'Existe déjà');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (69, 'send_custom_sms', 'Send Custom SMS', 'Envoyer SMS personalisé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (70, 'sms_sent', 'SMS Sent!', 'SMS envoyé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (71, 'custom_sms_list', 'Custom SMS List', 'List SMS personalisé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (72, 'reciver', 'Reciver', 'Bénéficiaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (73, 'auto_sms_report', 'Auto SMS Report', 'Rapport SMS Auto');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (74, 'user_sms_list', 'User SMS List', 'Liste SMS utilisateurs');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (75, 'send_sms', 'Send SMS', 'Envoyer SMS');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (76, 'new_sms', 'New SMS', 'Nouveau Message');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (77, 'update', 'Update', 'Mettre à jour');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (78, 'reset', 'Reset', 'Reinitialiser');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (79, 'messages', 'Messages', 'Messages');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (80, 'inbox', 'Inbox', 'Boite de réception');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (81, 'sent', 'Sent', 'Envoyé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (82, 'captcha', 'Captcha', 'Captcha');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (83, 'welcome_back', 'Welcome back ', 'Bienvenue à nouveau !');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (84, 'inbox_message', 'Inbox Message', 'SMS Boite de réception');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (85, 'image_upload_successfully', 'Image Upload Successfully.', 'Upload d\'image reussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (87, 'users', 'Users', 'Utilisateurs');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (88, 'add_user', 'Add User', 'Ajouter utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (89, 'user_list', 'User List', 'Liste Utilisateurs');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (90, 'firstname', 'First Name', 'Nom');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (91, 'lastname', 'Last Name', 'Prénoms');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (92, 'about', 'About', 'A propos de nous');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (93, 'preview', 'Preview', 'Visualliser');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (94, 'last_login', 'Last Login', 'Dernière connexion');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (95, 'last_logout', 'Last Logout', 'Dernière Déconnexion');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (96, 'image', 'Image', 'Image');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (97, 'fullname', 'Full Name', 'Nom Complet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (98, 'new_message', 'New Message', 'Nouveau Message');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (99, 'message', 'Message', 'Un Message');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (100, 'sender_name', 'Sender Name', 'Nom de l\'expéditeur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (101, 'sl_no', 'SL No.', 'Numéro SL');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (103, 'message_details', 'Message Details', 'Détails message');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (104, 'date', 'Date', 'Date');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (105, 'select_option', 'Select Option', 'Selectionner Option');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (106, 'edit_profile', 'Edit Profile', 'Editer Profile');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (107, 'edit_user', 'Edit User', 'Editer utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (108, 'sent_message', 'Sent Message', 'Message Envoyé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (109, 'sub_admin', 'Sub Admin', 'Sub Administrateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (110, 'admin_list', 'Admin List', 'List Administrateurs');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (111, 'add_admin', 'Add Admin', 'Ajouter Administrateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (112, 'edit_admin', 'Edit Admin', 'Editer Admin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (113, 'username', 'Username', 'Nom utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (114, 'sponsor_id', 'Sponsor ID', 'ID sponsor');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (115, 'mobile', 'Mobile', 'Mobile');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (116, 'register', 'Register', 'Enregistrer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (117, 'conf_password', 'Confirm Password', 'Reglage mot de passe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (118, 'user_id', 'User ID', 'ID utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (119, 'package', 'Package', 'Pack');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (120, 'create', 'Create', 'Créer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (121, 'package_name', 'Package Name', 'Nom du pack');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (122, 'package_deatils', 'Package Deatils', 'Detail pack');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (123, 'package_amount', 'Package Amount', 'Montant pack');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (124, 'daily_roi', 'Daily ROI', 'ROI journalier');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (125, 'weekly_roi', 'Weekly ROI', 'ROI Hebdomadaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (126, 'monthly_roi', 'Monthly ROI', 'ROI Mensuel');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (127, 'yearly_roi', 'Yearly ROI', 'ROI annuel');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (128, 'total_percent', 'Total Percent', 'Poucentage Total');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (129, 'add_package', 'Add Package', 'Ajouter un Pack');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (130, 'edit_package', 'Edit Package', 'Editer Pack');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (131, 'package_list', 'Package List', 'Liste Packs');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (132, 'withdraw', 'Withdraw', 'Retraits');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (133, 'request', 'Request', 'Requête');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (134, 'success', 'Success', 'Succès ! ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (135, 'request_date', 'Request Date', 'Date Requête');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (136, 'payment_method', 'Payment Method', 'Methode de paiement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (137, 'amount', 'Amount', 'Montant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (138, 'charge', 'Charge', 'Frais');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (139, 'total', 'Total', 'Total');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (140, 'comments', 'Comments', 'Commentaires');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (141, 'pending', 'Pending', 'En cours');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (142, 'cancel_date', 'Cancel Date', 'Annuler date');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (143, 'block_list', 'Block List', 'Liste Noire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (144, 'commission', 'Commission', 'Commission');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (145, 'setup', 'Setup', 'Regler');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (146, 'setup_list', 'Setup List', 'Liste de reglage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (147, 'commission_list', 'Commission List', 'Liste Commission');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (148, 'level_name', 'Level Name', 'Nom du stage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (149, 'personal_invest', 'Personal Invest', 'Mon investissement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (150, 'total_invest', 'Total Invest', 'Total Investissement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (151, 'team_bonous', 'Team Bonous', 'Bonus d\'Equipe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (152, 'referral_bonous', 'Referral Bonous', 'Bonus parrainage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (154, 'form_submit_msg', 'Insert Successfully', 'Envoyer formulaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (155, 'transection_category', 'Transaction Category', 'Catégorie Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (156, 'transfer_add_msg', 'Transfer Successfully', 'Ajouter SMS transfert');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (157, 'transfer', 'Transfer', 'Transfert');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (158, 'deposit', 'Deposit', 'Depot');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (159, 'add_deposit', 'Add Deposit', 'Effectuer un Depot');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (160, 'deposit_list', 'Deposit List', 'Liste depot');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (161, 'team', 'Team', 'Equipe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (162, 'investment', 'Investment', 'Investissement personnel');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (163, 'notification', 'Notification', 'Notification');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (164, 'receiver_id', 'Receiver Id', 'ID Bénéficiaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (165, 'comment', 'Comments', 'Commentaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (166, 'otp_send_to', 'OTP Send To', 'OTP envoyer à');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (167, 'transection', 'Transaction', 'Transactions');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (168, 'buy', 'Buy', 'Acheter');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (169, 'balance', 'Balance', 'Solde de compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (170, 'deposit_amount', 'Deposit Amount', 'Montant Depot');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (171, 'deposit_method', 'Deposit Method', 'Methode depot');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (172, 'deposit_wallet_id', 'Deposit Wallet Id', 'Wallet ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (174, 'confirm_transfer', 'Confirm Transfer', 'Confirmer transfert');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (175, 'transfer_amount', 'Transfer Amount', 'Montant Transfert');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (176, 'enter_verify_code', 'Enter Verify Code', 'Entrer code de vérification');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (177, 'confirm', 'Confirm', 'Confirmer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (178, 'deopsit_add_msg', 'Deposit Add Successfully.', 'Depot effectué avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (179, 'transfar_recite', 'Transfer Recite', 'Reçu de transfert');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (180, 'earn', 'Earn', 'Gagner');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (181, 'balance_is_unavailable', 'Balance Is not sufficient', 'Solde insuffisant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (182, 'package_buy_successfully', 'Package Buy Successfully!', 'Achat du package reussi ! ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (184, 'withdraw_recite', 'Withdraw Recite', 'Reçu de retrait');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (185, 'withdraw_confirm', 'withdraw Confirm', 'Confirmation Retrait');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (187, 'change_verify', 'Confirm Verify', 'Changer Verification');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (188, 'change_password', 'Password Change', 'Changer mot de passe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (189, 'enter_confirm_password', 'Enter Confirm Password', 'Confirmer mot de passe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (190, 'enter_new_password', 'Enter New Password', 'Entrer nouveau mot de passe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (191, 'enter_old_password', 'Enter Old Password', 'Entrer ancien mot de passe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (192, 'change', 'Change', 'Changer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (193, 'password_change_successfull', 'Password Change Successfully', 'Mot de passe changé avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (194, 'old_password_is_wrong', 'Old Password Is Wrong', 'Entrer ancien mot de passe incorrect');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (195, 'fees_setting', 'Fees Setting', 'Reglages frais');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (196, 'level', 'Level', 'Stage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (197, 'select_level', 'Select Level', 'Selectionner stage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (198, 'fees_setting_successfully', 'Fees Setting Successfully', 'Reglages Frais reussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (199, 'bitcoin', 'Bitcoin', 'Bitcoin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (200, 'payeer', 'Payeer', 'Payeer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (201, 'name', 'Name', 'Nom');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (202, 'order_id', 'Order Id', 'ID de commande');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (203, 'fees', 'Fees', 'Frais');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (204, 'period', 'Period', 'Période');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (205, 'commission_ret', 'Commission Ret', 'Commission ret');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (206, 'title', 'Title', 'Titre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (207, 'details', 'Details', 'Details');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (208, 'personal_info', 'Personal Information', 'Informations personnels');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (209, 'sponsor_info', 'Sponsor Information', 'Info Sponsor');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (210, 'affiliate_url', 'Affiliat Url', 'Lien parrainage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (211, 'copy', 'Copy', 'Copier');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (212, 'my_payout', 'My Payout', 'Mes Paiements');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (213, 'personal_sales', 'Personal Sales', 'Ventes Personnelles');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (214, 'bank_details', 'Bank Details', 'Details de banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (215, 'beneficiary_name', 'Beneficiary Name', 'Nom Beneficiaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (216, 'bank_name', 'Bank Name', 'Nom de banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (217, 'branch', 'Branch', 'Branche');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (218, 'account_number', 'Account Number', 'Numéro de compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (219, 'ifsc_code', 'IFC Code', 'Code IFSC');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (220, 'account', 'Account', 'Compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (221, 'my_commission', 'My Commission', 'Mes commissions');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (222, 'finance', 'Finance', 'Finance');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (223, 'exchange', 'Exchange', 'Echange');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (224, 'bitcoin_setting', 'Bitcoin Setting', 'Reglages bitcoin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (225, 'payeer_setting', 'Payeer Setting', 'Reglages Payeer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (226, 'bank_information', 'Bank Information', 'Infos de banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (227, 'bitcoin_wallet_id', 'Bitcoin Wallet ID', 'Wallet Bitcoin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (228, 'payment_method_setting', 'Payment Method Setting', 'Reglage methode de paiement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (229, 'payeer_wallet_id', 'Payeer Wallet Id', 'ID Payeer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (230, 'my_package', 'My Package', 'Mes packs');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (231, 'my_team', 'My Team', 'Mon Equipe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (232, 'receipt', 'Receipt', 'Réçu');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (233, 'withdraw_successfull', 'Withdraw Successfully', 'Retrait reussi !');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (234, 'team_bonus', 'Team Bonus', 'Bonus d\'Equipe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (235, 'withdraw_list', 'Withdraw List', 'Liste retraits');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (236, 'pending_withdraw', 'Pending Withdraw', 'Demande de retrat en cours');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (237, 'reciver_account', 'Receiver Account', 'Compte Bénéficiaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (238, 'french', 'French', 'Français');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (239, 'commission_setup', 'Commission Setup', 'Reglage commission');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (240, 'personal_investment', 'Personal Investment', 'Investissement personnel');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (241, 'total_investment', 'Total investment', 'Total Investissement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (242, 'transfer_list', 'Transfer List', 'Liste transfert');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (243, 'form_to', 'From To', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (244, 'receive', 'Receive', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (245, 'wallet_id', 'Wallet Id', 'ID Wallet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (246, 'withdraw_details', 'Withdraw Details', 'Details retraits');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (247, 'generation_one', 'Generation One', 'Génération 1');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (248, 'generation_two', 'Generation Two', 'Génération 2');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (249, 'generation_three', 'Generation Three', 'Génération 3');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (250, 'generation_four', 'Generation Four', 'Génération 4');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (251, 'generation_five', 'Generation Five', 'Génération 5');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (252, 'generation_empty_message', 'You Have No Generation', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (253, 'view', 'View', 'Aperçu');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (254, 'cancle', 'Cancel', 'Annuler');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (255, 'type', 'Type', 'Type');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (256, 'your_total_balance_is', 'Your Total Balance Is', 'Votre montant total est de');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (257, 'bonus', 'Bonus', 'Bonus');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (258, 'personal_turnover', 'Sponser Turnover', 'Mon Chiffre d\'affaire perso');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (259, 'team_turnover', 'Team Turnover', 'Chiffre d\'affaire Equipe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (260, 'post_article', 'Post Article', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (261, 'article_list', 'Article List', 'LIste article');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (262, 'add_article', 'Add Article', 'Ajouter article');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (263, 'headline_en', 'Headline English', 'Titre EN');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (264, 'headline_fr', 'Headline French', 'Titre  FR');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (265, 'article_en', 'Article English', 'Article EN');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (266, 'article_fr', 'Article French', 'Article FR');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (267, 'edit_article', 'Edit Article', 'Editer article');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (268, 'cat_list', 'Category List', 'Liste panier');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (269, 'add_cat', 'Add Category', 'Ajouter au panier');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (270, 'parent_cat', 'Parent Category', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (271, 'cat_name_en', 'Category Name English', 'Nom panier EN');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (272, 'cat_name_fr', 'Category Name French', 'Nom panier FR');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (273, 'cat_title_en', 'Category Title English', 'Titre Panier EN');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (274, 'cat_title_fr', 'Category Title French', 'Titre panier FR');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (275, 'select_cat', 'Select Category', 'Selectionner Cat');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (276, 'edit_cat', 'Edit Category', 'Editer Panier');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (277, 'position_serial', 'Position Serial', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (278, 'currency_list', 'Currency List', 'Liste de devise');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (279, 'currency', 'Currency', 'Devise');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (280, 'cryptocurrency_name', 'CryptoCurrency  Name', 'Nom Crypto monnaie');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (281, 'select_cryptocurrency', 'Select Cryptocurrency', 'Selectionner Crypto');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (282, 'edit_currency', 'Edit Currency', 'Editer Devise');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (283, 'exchange_list', 'Exchange List', 'Liste échanges');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (284, 'add_exchange', 'Add Exchange', 'Ajouter Echange');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (285, 'edit_exchange', 'Edit Exchange', 'Editer Echange');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (286, 'wallet_data', 'Wallet ID', 'Données Wallet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (287, 'sell_adjustment', 'Sell Adjustment', 'Ajustement Vente');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (288, 'buy_adjustment', 'Buy Adjustment', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (289, 'exchange_wallet', 'Exchange Wallet', 'Wallet Echange');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (290, 'exchange_wallet_list', 'Exchange Wallet List', 'Liste Wallet echange');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (291, 'add_exchange_wallet', 'Add Exchange Wallet', 'Ajouter Wallet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (292, 'edit_exchange_wallet', 'Edit Exchange Wallet', 'Modifier Wallet echange');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (293, 'local_currency_list', 'Local Currency List', 'LIste  Monnaies locales');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (294, 'local_currency', 'Local Currency', 'Devise Locale');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (295, 'add_local_currency', 'Add Local Currency', 'Ajouter Monnaie');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (296, 'edit_local_currency', 'Edit Local Currency', 'Editer Devise locale');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (297, 'currency_name', 'Currency Name', 'Nom devise');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (298, 'currency_iso_code', 'Currency ISO Code', 'Code ISO devise ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (299, 'usd_exchange_rate', 'USD Exchange Rate', 'Taux d\'echange USD');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (300, 'currency_symbol', 'Currency Symbol', 'Symboles Devise');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (301, 'symbol_position', 'Symbol Position', 'Position symbole');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (302, 'currency_position', 'Currency Position', 'Position devise');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (303, 'payment_gateway', 'Payment Gateway', 'Portail de paiement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (304, 'gateway_name', 'Gateway Name', 'Nom passerelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (305, 'gateway_setting', 'Gateway Setting', 'Reglage portail');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (306, 'add_payment_gateway', 'Add Payment Gateway', 'Ajouter Methode paiment');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (307, 'public_key', 'Public Key', 'Clé publique');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (308, 'private_key', 'Private Key', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (309, 'shop_id', 'Shop ID', 'ID shop');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (310, 'secret_key', 'Secret Key', 'Clé secrete');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (311, 'edit_payment_gateway', 'Edit Payment Gateway', 'Editer Methode de paiement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (312, 'slider_list', 'Slider List', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (313, 'add_slider', 'Add Slider', 'Ajouter Slider');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (314, 'headline', 'Headline', 'Titre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (315, 'edit_slider', 'Edit Slider', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (316, 'social_app', 'Social App', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (317, 'edit_social_app', 'Edit Social App', 'Editer RS appli');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (318, 'social_link', 'Social Link', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (319, 'add_link', 'Add Link', 'Ajouter Lien');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (320, 'link', 'Link', 'Lien');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (321, 'icon', 'Icon', 'Icône');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (322, 'edit_social_link', 'Edit Social Link', 'Edit les liens RS');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (323, 'transection_info', 'Transection Info', 'Info transaction');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (324, 'sell', 'Sell', 'Vendre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (325, 'article', 'Article', 'Article');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (326, 'coin_amount', 'Coin Amount', 'Montat Crypto');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (327, 'coin_name', 'Coin Name', 'Nom Crypto');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (328, 'buy_amount', 'Buy Amount', 'Montant achat');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (329, 'sell_amount', 'Sell Amount', 'Montant à vendre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (330, 'wallet_data', 'Wallet ID', 'Données Wallet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (331, 'usd_amount', 'USD Amount', 'Montant USD');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (332, 'rate_coin', 'Coin Rate', 'Taux coin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (333, 'local_amount', 'Local Amount', 'Montant Local');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (334, 'om_name', 'OM Name', 'Nom OM');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (335, 'om_mobile_no', 'OM Phone No', 'N° OM');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (336, 'transaction_no', 'Transaction No', 'N° de transaction');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (337, 'idcard_no', 'ID Card No', 'N° CNI');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (338, 'buy_list', 'Buy List', 'Buy list');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (339, 'add_buy', 'Add Buy', 'Ajouter Achat');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (340, 'transection_type', 'Transection Type', 'Type de transaction');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (341, 'payment_successfully', 'Payment Successfully', 'Paiement effectué');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (342, 'payment_cancel', 'Payment Cancel', 'Paiement annulé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (343, 'payment_successfully', 'Payment Successfully', 'Paiement effectué');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (344, 'sell_list', 'Sell List', 'LIste de vente ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (345, 'add_sell', 'Add Sell', 'Ajouter Vente');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (346, 'edit_sell', 'Edit Sell', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (347, 'account_active_mail', 'Please check Email to activate your account', 'Activer votre mail');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (348, 'accept_terms_privacy', 'Crypto Privacy policy and Terms of Use', 'Accepter conditions et termes');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (349, 'username_used', 'Username Already Used', 'Nom d\'utilisateur déjà utilisé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (350, 'account_create_success_social', 'Account Created Successfully and Your Account activated', 'Compte crée avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (351, 'email_used', 'Email Already Used', 'Adresse mail déjà utilisé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (352, 'account_create_active_link', 'Account Created Successfully. Activation link send your Email address', 'Lien d\'activation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (353, 'active_account', 'Active Account', 'Compte actif');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (354, 'wrong_try_activation', 'Wrong Try', 'Mauvaise activation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (355, 'pay_now', 'Pay Now', 'Payer maintenant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (356, 'payment_successfully', 'Payment Successfully', 'Paiement effectué');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (357, 'sell_successfully', 'Sell Successfully', 'Vente effectuée avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (358, 'already_clicked', 'Already Clicked There', 'Déja Validé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (359, 'user_info', 'User Info', 'info utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (360, 'user_id', 'User ID', 'ID utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (361, 'registered_ip', 'Registered IP', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (362, 'requested_ip', 'Requested IP', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (363, 'transaction_status', 'Transaction Status', 'Status de la transaction');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (364, 'receive_status', 'receive_status', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (365, 'receive_complete', 'Receive Complete', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (366, 'payment_status', 'Payment Status', 'Status de paiement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (367, 'payment_complete', 'Payment Complete', 'Paiement complet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (368, 'url', 'URL', 'url');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (369, 'app_id', 'App ID', 'ID appli');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (370, 'app_secret', 'App Secret', 'Secret Appli');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (371, 'api_key', 'API Key', 'Clé API');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (372, 'app_name', 'App Name', 'Nom Appli');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (373, 'social_list', 'Social List', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (374, 'select_payment_method', 'Select Payment Method', 'Selectionner mode de paiement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (375, 'payable', 'Payable', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (376, 'rate', 'Rate', 'Taux');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (377, 'how_do_you_receive_money', 'How do you receive money', 'Comment Reçevoir votre argent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (378, 'withdraw_method', 'Withdraw Method', 'Methode de retrait');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (379, 'select_withdraw_method', 'Select Withdraw Method', 'Selectionner méthode de retrait');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (380, 'account_info', 'Account Info', 'Info compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (381, 'upload_docunemts', 'Upload Docunemts', 'Ajouter fichier');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (382, 'my_generation', 'My Generation', 'Mon Equipe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (383, 'category', 'Category', 'Catégorie');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (384, 'slider_h1_en', 'Slider H1 English', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (385, 'slider_h1_fr', 'Slider H1 French', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (386, 'slider_h2_en', 'Slider H2 English', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (387, 'slider_h2_fr', 'Slider H2 French', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (388, 'slider_h3_en', 'Slider H3 English', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (389, 'slider_h3_fr', 'Slider H3 French', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (390, 'complete', 'Complete', 'Complet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (391, 'refresh_currency', 'Refresh Currency', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (392, 'cryptocurrency', 'Crypto Currency', 'Crypto Monnaie');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (393, 'symbol', 'Symbol', 'Symbole');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (394, 'please_select_cryptocurrency_first', 'Please Select CryptoCurrency First', 'Veuillez choisir une crypto monnaie');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (395, 'please_select_diffrent_payment_method', 'Please select Diffrent Payment Method', 'Selectionner une autre méthode de paiement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (396, 'add_credit', 'Add Credit', 'Crediter Compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (397, 'credit', 'Credit', 'Crédit');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (398, 'credit_list', 'Credit List', 'Liste de Credit');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (399, 'notes', 'Note', 'Notes');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (400, 'my_level_info', 'My Level Info', 'Info Niveau');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (401, 'slider', 'Slider', 'Slider');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (402, 'exchange_setting', 'Exchange Setting', 'Reglage Echange');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (403, 'exchange_all_request', 'Exchange all Request', 'Toutes requêtes echanges');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (404, 'total_user', 'Total User', 'Nombre d\'utilisateurs');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (405, 'total_roi', 'Total ROI', 'Total ROI');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (406, 'total_commission', 'Total Commission', 'Total commission');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (407, 'download_pdf', 'Download PDF', 'Télécharger ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (408, 'view_all_news', 'View all news', 'Aperçu News');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (409, 'download_company_brochure', 'Download Company Brochure', 'Téléchargez notre brochure');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (410, 'get_in_touch', 'Get in touch', 'Contactez-nous');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (411, 'read_more', 'Read More', 'Lire plus');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (412, 'know_more', 'Know more', 'Savoir plus');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (413, 'choose_plan', 'Choose plan', 'acheter');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (414, 'latest_jobs', 'Latest Jobs', 'Latest Jobs');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (415, 'website', 'Website', 'website');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (416, 'chose_one_of_the_following_methods', 'Chose One of the Following Methods.', 'chose_one_of_the_following_methods.');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (417, 'sign_in_using_your_email_address', 'Sign in Using Your Email Address', 'Connectez-vous avec votre username ou email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (418, 'forgot_password', 'Forgot Password', 'Forgot Password');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (419, 'remember_me', 'Remember me', 'Remember me');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (420, 'username_or_email', 'Username or email', 'Username or email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (421, 'dont_have_an_account', 'Don\'t have an account', 'Don\'t have an account');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (422, 'sign_up_now', 'Sign up Now', 'Créer un compte maintenant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (423, 'send_code', 'Send Code', 'Send Code');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (424, 'sign_up', 'Sign Up', 'Créer un compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (425, 'already_user', 'Already User', 'Already User');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (426, 'sign_in_now', 'Sign In Now', 'Connectez-vous maintenant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (427, 'sign_up_for_free', 'Sign Up For Free', 'Créer un compte gratuitement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (428, 'join_thousands_of_companies_that_Use_globalcrypt_every_day', 'Join Thousands of Companies that Use Global Crypto Every Day', 'Join Thousands of Companies that Use Global Crypto Every Day');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (429, 'your_password_at_global_crypto_are_encrypted_and_secured', 'Your Password at Global Crypto are encrypted and Secured', 'Votre mot de passe Global Crypto est crypté et securisé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (430, 'email_username_used', 'Email/Username Already Used', 'Email/Username Already Used');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (431, 'address', 'Address', 'Address');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (432, 'phone', 'Phone', 'Phone');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (433, 'admin_align', 'Admin Align', 'Admin Align');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (434, 'office_time', 'Office Time', 'Office Time');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (435, 'logo_web', 'WebSite Logo', 'WebSite Logo');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (436, 'dashboard_logo', 'Dashboard Logo', 'Dashboard Logo');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (437, 'advertisement', 'Advertisement', 'Advertisement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (438, 'script', 'Script', 'Script');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (439, 'add_advertisement', 'Add Advertisement', 'Add Advertisement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (440, 'page', 'Page', 'Page');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (441, 'embed_code', 'Embed code', 'Embed code');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (442, 'add_type', 'Add Type', 'Add Type');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (443, 'edit_advertisement', 'Edit Advertisement', 'Edit Advertisement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (444, 'host', 'Host', 'Host');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (445, 'port', 'Port', 'Port');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (446, 'apikey', 'API Key', 'API Key');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (447, 'mail_type', 'Mail Type', 'Mail Type');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (448, 'charset', 'Charset', 'Charset');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (449, 'news', 'News', 'News');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (450, 'news_list', 'News List', 'News List');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (451, 'edit_news', 'Edit News', 'Edit News');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (452, 'post_news', 'Post News', 'Post News');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (453, 'close', 'Close', 'Close');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (454, 'contact_us', 'Contact Us', 'Contact Us');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (455, 'watch_video', 'WATCH VIDEO', 'WATCH VIDEO');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (456, 'about_bitcoin', 'About Bitcoin', 'About Bitcoin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (457, 'get_start', 'Get Start', 'Get Start');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (458, 'cryptocoins', 'Crypto Coins', 'Crypto Coins');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (459, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter!', 'Subscribe to our newsletter!');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (460, 'email_newslatter', 'Email Newsletter', 'Email Newsletter');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (461, 'services', 'Services', 'Services');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (462, 'our_company', 'Our Company', 'Our Company');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (463, 'sign_in', 'Sign In', 'Connectez-vous');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (464, 'join_the_new_yera_of_cryptocurrency_exchange', 'Join the new Yera of cryptocurrency exchange', 'Join the new Yera of cryptocurrency exchange');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (465, 'access_the_cryptocurrency_experience_you_deserve', 'Access the cryptocurrency experience you deserve', 'Access the cryptocurrency experience you deserve');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (466, 'home', 'Home', 'Home');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (467, 'scroll_to_top', 'Scroll to Top', 'Scroll to Top');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (468, 'ticker', 'Ticker', 'Ticker');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (469, 'price', 'Price', 'Price');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (470, 'capitalization', 'Capitalization', 'Capitalization');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (471, '1d_change', '1D change', '1D change');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (472, 'graph_24h', 'Graph 24H', 'Graph 24H');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (473, 'recent_post', 'Recent Post', 'Recent Post');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (474, 'my_social_link', 'My Social link', 'My Social link');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (475, 'tell_us_about_your_project', 'Tell Us About Your Project', 'Tell Us About Your Project');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (476, 'company', 'Company', 'Company');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (477, 'reset_your_password', 'Reset Your Password', 'Reset Your Password');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (478, '24h_change', '24H change', '24H change');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (479, '24h_volume', '24H Volume', '24H Volume');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (480, 'latitudelongitude', 'Latitude, Longitude', 'Latitude, Longitude');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (481, 'send_money', 'Send Money', 'Send Money');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (482, 'article2', 'Article 2', 'article 2');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (483, 'contact', 'Contact', 'contact');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (484, 'team', 'Team', 'team');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (485, 'client', 'Client', 'client');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (486, 'service', 'Service', 'service');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (487, 'testimonial', 'Testimonial', 'testimonial');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (488, 'faq', 'F.A.Q', 'faq');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (489, 'short_description_en', 'Short description english', 'Short Description');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (490, 'long_description_en', 'Long description English', 'Long Description');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (491, 'short_description_fr', 'Short description english', 'Short Description');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (492, 'long_description_fr', 'Long description English', 'Long Description');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (493, 'info', 'Information', 'Information');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (494, 'quote', 'Quote', 'Quote');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (495, 'question_fr', 'Question French', 'Question French');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (496, 'question_en', 'Question English', 'Question English');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (497, 'answer_en', 'Answer English', 'Answer English');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (498, 'answer_fr', 'Answer French', 'Answer French');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (499, 'content', 'Page Content', 'Page Content');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (500, 'add_content', 'Add Content', 'Add Content');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (501, 'edit_content', 'Edit Content', 'Edit Content');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (502, 'video', 'video (If Youtube Link)', 'video');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (503, 'add_faq', 'Add F.A.Q', 'Add faq');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (504, 'add_testimonial', 'Add Testimonial', 'Add testimonial');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (505, 'add_service', 'Add Service', 'Add service');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (506, 'add_client', 'Add Client', 'Add client');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (507, 'add_team', 'Add Team', 'Add team');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (508, 'add_contact', 'Add Contact', 'Add contact');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (509, 'add_article', 'Add Article', 'Add article');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (510, 'edit_article', 'edit Article', 'edit article');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (511, 'edit_contact', 'edit Contact', 'edit contact');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (512, 'edit_team', 'edit Team', 'edit team');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (513, 'edit_client', 'edit Client', 'edit client');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (514, 'edit_service', 'edit Service', 'edit service');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (515, 'edit_testimonial', 'edit Testimonial', 'edit testimonial');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (516, 'edit_faq', 'edit F.A.Q', 'edit faq');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (517, 'article_list', 'Article List', 'article');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (518, 'contact_list', 'Contact List', 'contact');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (519, 'team_list', 'Team List', 'team');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (520, 'client_list', 'Client List', 'client');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (521, 'service_list', 'Service List', 'service');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (522, 'testimonial_list', 'Testimonial List', 'testimonial');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (523, 'faq_list', 'F.A.Q List', 'faq');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (524, 'content_list', 'Page Content', 'Page Content');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (525, 'add_teammember', 'Add Team member', 'Add Team member');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (526, 'tooltip_package_name', 'Example: Silver Package', 'Example: Silver Package');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (527, 'tooltip_package_details', 'This is for Package Short Details', 'This is for Package Short Details.');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (528, 'tooltip_package_amount', 'Package Amount in Dollar. Example: 200', 'Package Amount in Dollar. Example: 200');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (529, 'tooltip_package_daily_roi', 'Please Set this field with Zero. Example: 0', 'Please Set this field with Zero. Example: 0');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (530, 'tooltip_package_weekly_roi', 'Who buy this package they will get weekly ROI in Dollar. Example: 5. They will get every week 5 till them package period', 'Who buy this package they will get weekly ROI in Dollar. Example: 5. They will get every week 5 till them package period');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (531, 'tooltip_package_monthly_roi', 'Sum of weekly ROI in a month', 'Sum of weekly ROI in a month');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (532, 'tooltip_package_yearly_roi', 'Sum of weekly ROI in a Year', 'Sum of weekly ROI in a Year');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (533, 'tooltip_package_total_percent_roi', 'Total Persent Of ROI', 'Total Persent Of ROI');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (534, 'tooltip_package_period', 'Package Period(Day) ex: 365 Day', 'Package Period(Day) ex: 365 Day');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (535, 'trading', 'Trading', 'Trade');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (536, 'trade_history', 'Trade History', 'Trade History');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (537, 'market', 'Market', 'Market');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (538, 'coin_pair', 'Coin Pair', 'Coin Pair');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (539, 'pending_deposit', 'Pending Deposit', 'Demande de retrat en cours');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (540, 'email_and_sms_setting', 'Email And Sms Setting', 'Email And Sms Setting');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (541, 'email_and_sms_gateway', 'Email And Sms Gateway', 'Email And Sms Gateway');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (542, 'trade', 'Trade', 'Trade');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (543, 'referral_id', 'Referral ID', '');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (544, 'please_enter_valid_email', 'Please Enter Valid Email !!!', 'Please Enter Valid Email !!!');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (545, 'already_subscribe', 'This Email Address already subscribed', 'This Email Address already subscribed');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (546, 'message_send_successfuly', 'TMessage send successfuly', 'Message send successfuly');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (547, 'message_send_fail', 'Message send Fail', 'Message send Fail');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (548, 'setup_payment_gateway', 'setup payment gateway', 'setup payment gateway');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (549, 'blog', 'Blog', 'Blog');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (550, 'advisors', 'Advisors', 'Advisors');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (551, 'advisors_list', 'Advisors List\r\n', 'Advisors List');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (552, 'edit_advisors', 'Edit Advisors', 'Edit Advisors');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (553, 'designation', 'designation', 'designation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (554, 'user_profile', 'User Profile', 'User Profile');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (555, 'token_sold', 'Token Sold', 'Token Sold');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (556, 'token', 'Token', 'Token');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (557, 'token_value', 'Token Value', 'Token Value');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (558, 'running', 'Running', 'Running');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (559, 'team_overview', 'Team Overview', 'Team Overview');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (560, 'overview_header_en', 'Overview Header English', 'Overview Header English');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (561, 'sub_header_en', 'Sub Header English', 'Sub Header English');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (562, 'description_en', 'Description English', 'Description English');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (563, 'overview_header_fr', 'Overview Header French', 'Overview Header French');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (564, 'sub_header_fr', 'Sub Header French', 'Sub Header French');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (565, 'description_fr', 'Description French', 'Description French');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (566, 'flag', 'Flag', 'Flag');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (567, 'round_name', 'Round Name', 'Round Name');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (568, 'target', 'Target', 'Target');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (569, 'coin', 'Coin', 'Coin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (570, 'release_date', 'Release Date', 'Release Date');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (571, 'release_time', 'Release Time', 'Release Time');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (572, 'duration', 'Duration', 'Duration');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (573, 'roi', 'ROI', 'ROI');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (574, 'referral', 'REFERRAL', 'REFERRAL');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (575, 'total_coin', 'Total Coin', 'Total Coin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (576, 'hold_coin', 'Hold Coin', 'Hold Coin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (577, 'pre_sell', 'Pre Sell', 'Pre Sell');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (578, 'sell_available', 'Sell Available', 'Sell Available');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (579, 'sell_available_limit', 'You can\'t release coin more than sell available limit. ', 'You can\'t release coin more than sell available limit. ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (580, 'client_id', 'Client Id', 'Client Id');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (581, 'client_secret', 'Client Secret', 'Client Secret');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (582, 'live_demo', 'Live demo', 'Live demo');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (583, 'target_raised', '% target raised', '% target raised');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (584, 'ends_in', 'ends in:', 'ends in:');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (585, 'raised', 'Raised', 'Raised');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (586, 'whitepaper', 'Whitepaper', 'Whitepaper');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (587, 'soft_cap', 'Soft Cap', 'Soft Cap');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (588, 'buy_tokens', 'Buy Tokens', 'Buy Tokens');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (589, 'bonus', 'Bonus', 'Bonus');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (590, 'how_it_work', 'How it work', 'How it work');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (591, 'pre_sale', 'Pre-Sale', 'Pre-Sale');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (592, 'ico_pre_sell_live', 'ICO PRE - SALE IS LIVE', 'ICO PRE - SALE IS LIVE');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (593, 'password_required', 'Password Required', 'Mot de passe requis');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (594, 'email_required', 'Email Required', 'Email (requis');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (595, 'first_name_required', 'First Name Required', 'First Name Required');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (596, 'last_name_required', 'Last Name Required', 'Last Name Required');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (597, 'user_name_required', 'User Name Required', 'User Name Required');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (598, 'please_enter_at_least', 'Please Enter at least 8 Characters input', 'Please Enter at least 8 Characters input');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (599, 'confirm_password_must_be_filled_out', 'Confirm Password must be filled out', 'Confirm Password must be filled out');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (600, 'password_miss_match', 'Password miss match', 'Password miss match');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (601, 'must_confirm_privacy_policy_and_terms_and_condition', 'Must Confirm Privacy Policy and Terms and Conditions', 'Must Confirm Privacy Policy and Terms and Conditions');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (602, 'please_input_your_email', 'Please Input Your Email', 'Please Input Your Email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (603, 'please_enter_valid_email', 'Please Enter Valid Email', 'Please Enter Valid Email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (604, 'subscription_complete', 'Subscription complete', 'Subscription complete');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (605, 'message_send_successfully', 'Message send successfully', 'Message send successfully');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (606, 'the_clock_has_stopped', 'The clock has stopped', 'The clock has stopped');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (607, 'a_lowercase_letter', 'A lowercase letter', 'A lowercase letter');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (608, 'a_capital_uppercase_letter', 'A capital(uppercase) letter', 'A capital(uppercase) letter');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (609, 'a_special', 'A special', 'A special');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (610, 'a_number', 'A number', 'A number');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (611, 'minimum_8_characters', 'Minimum 8 characters', 'Minimum 8 characters');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (613, 'referral_id_is_invalid', 'Referral ID is invalid', 'Referral ID is invalid');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (614, 'invalid_ip_address', 'Invalid IP address', 'Invalid IP address');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (615, 'please_activate_your_account', 'Please activate your account', 'Please activate your account');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (616, 'already_registered', 'Already registered', 'Already registered');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (617, 'this_account_is_now_pending', 'This account is now pending', 'This account is now pending');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (618, 'this_account_is_suspend', 'This account is suspend', 'This account is suspend');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (619, 'something_wrong', 'Something wrong', 'Something wrong');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (620, 'first_name', 'First Name', 'First Name');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (621, 'email_address', 'Email Address', 'Email Address');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (622, 'password_mismatch', 'password mismatch', 'password mismatch');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (623, 'invalid_authentication_code', 'Invalid Authentication Code', 'Invalid Authentication Code');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (625, 'password_reset_code_send_check_your_email', 'Password reset code send.Check your email', 'Password reset code send.Check your email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (626, 'google_authentication_disabled', 'Google Authentication Disabled', 'Google Authentication Disabled');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (627, 'google_authentication_enabled', 'Google Authentication Enabled', 'Google Authentication Enabled');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (628, 'this_account_already_activated', 'This account already activated', 'This account already activated');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (629, 'login_or_register', 'Login or Register', 'Login or Register');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (630, 'social_links', 'social links', 'social links');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (631, 'ico_pre_sale_is_live', 'ICO PRE - SALE IS LIVE', 'ICO PRE - SALE IS LIVE');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (632, 'roadmap', 'RoadMap', 'RoadMap');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (633, 'initial_token_distribution', 'Initial Token Distribution', 'Initial Token Distribution');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (634, 'your_name', 'Your Name', 'Your Name');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (635, 'send_message', 'Send message', 'Send message');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (636, 'log_in', 'Log in', 'Log in');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (637, 'privacy_policy', 'Privacy policy', 'Privacy policy');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (638, 'terms_of_use', 'Terms of Use', 'Terms of Use');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (639, 'verification_code', 'Verification code', 'Verification code');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (640, 'new_password', 'New Password', 'New Password');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (641, 'this_category_contain_exist', 'This category contain exist', 'This category contain exist');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (642, 'notice', 'Notice', 'Notice');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (643, 'update_failed', 'Update Failed', 'Update Failed');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (644, 'send_the_amount_successfully', 'Send the amount successfully', 'Send the amount successfully');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (645, 'language_list', 'Language List', 'Language List');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (646, 'phrase_list', 'Phrase List', 'Phrase List');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (647, 'language_added_successfully', 'Language added successfully', 'Language added successfully');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (648, 'edit_phrase', 'Edit Phrase', 'Edit Phrase');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (649, 'phrase_added_successfully', 'Phrase added successfully', 'Phrase added successfully');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (650, 'phrase_already_exists', 'Phrase already exists', 'Phrase already exists');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (651, 'label_added_successfully', 'Label added successfully', 'Label added successfully');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (652, 'exchange_history', 'Exchange History', 'Exchange History');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (653, 'exchange_canceled', 'Exchange Canceled', 'Exchange Canceled');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (654, 'pending_user_list', 'Pending User List', 'Pending User List');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (655, 'subscriber_list', 'Subscriber List', 'Subscriber List');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (656, 'pending_user_verify', 'Pending User verify', 'Pending User verify');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (657, 'affiliation_setup', 'Affiliation Setup', 'Affiliation Setup');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (658, 'coin_manager', 'Coin Manager', 'Coin Manager');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (659, 'coin_setup', 'Coin Setup', 'Coin Setup');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (660, 'coin_symbol', 'Coin Symbol', 'Coin Symbol');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (661, 'pair_with', 'Pair With', 'Pair With');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (662, 'setup_successfully', 'Setup Successfully', 'Setup Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (663, 'now_you_cant_change_it', 'Now, you can\'t change it', 'Now, you can\'t change it');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (664, 'edit_coin_pair', 'Edit coin pair', 'Edit coin pair');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (665, 'market_symbol', 'Market symbol', 'Market symbol');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (666, 'cron_jobs', 'Cron Jobs', 'Cron Jobs');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (667, 'command', 'Command', 'Command');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (668, 'interval_sec', 'Interval sec', 'Interval sec');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (669, 'edit_cron_jobs', 'Edit Cron Jobs', 'Edit Cron Jobs');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (670, 'helpline', 'Helpline', 'Helpline');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (671, 'menu_control', 'Menu Control', 'Menu Control');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (672, 'white_paper', 'White Paper', 'White Paper');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (673, 'coin_release', 'Coin Release', 'Coin Release');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (674, 'day', 'Day', 'Day');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (675, 'start_date', 'Start date', 'Start date');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (676, 'start_time', 'Start time', 'Start time');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (677, 'edit_coin_release', 'Edit Coin Release', 'Edit Coin_release');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (678, 'coin_market', 'Coin Market', 'Coin Market');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (679, 'edit_market', 'Edit Market', 'Edit Market');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (680, 'exchange_coin', 'Exchange Coin', 'Exchange Coin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (681, 'method', 'Method', 'Method');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (682, 'qty', 'Qty', 'Qty');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (683, 'feature_is_disable', 'Feature is disable', 'Feature is disable');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (684, 'bank_information_update_successfully', 'Bank Information Update Successfully', 'Bank Information Update Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (685, 'last_name', 'Last Name', 'Last Name');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (686, 'there_is_no_phone_number', 'There is no Phone number', 'There is no Phone number');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (687, 'page_exception', 'Page Exception', 'Page Exception');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (688, 'token_buy', 'Token buy', 'Token buy');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (689, 'coin_qty', 'Coin qty', 'Coin qty');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (690, 'server_problem', 'Server Problem', 'Server Problem');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (691, 'buy_successful', 'Buy Successful', 'Buy Successful');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (692, 'you_dont_have_sufficient_balance', 'You don\'t have sufficient Balance', 'You don\'t have sufficient Balance');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (693, 'token_list', 'Token list', 'Token list');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (694, 'verify_account', 'Verify Account', 'Verify Account');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (695, 'verify_type', 'Verify type', 'Verify type');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (696, 'gender', 'Gender', 'Gender');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (697, 'id_number', 'Id number', 'Id number');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (698, 'verification_is_being_processed', 'Verification Is being Processed', 'Verification Is being Processed');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (699, 'your_address', 'Your Address', 'Your Address');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (700, 'payment_canceled', 'Payment Canceled', 'Payment Canceled');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (701, 'percent', 'Percent', 'Percent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (702, 'fixed', 'Fixed', 'Fixed');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (703, 'market_capacity', 'Market Capacity', 'Market Capacity');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (704, 'capacity_text', 'Capacity Text', 'Capacity Text');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (705, 'top_menu', 'Top Menu', 'Top Menu');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (706, 'footer', 'Footer', 'Footer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (707, 'top_and_footer', 'Top and Footer', 'Top and Footer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (708, 'full_name', 'Full Name', 'Full Name');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (709, 'canceled', 'Canceled', 'Canceled');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (710, 'support', 'Support', 'Support');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (711, 'fillup_target', 'Fillup Target', 'Fillup Target');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (712, 'exchange_currency', 'Exchange Currency', 'Exchange Currency');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (713, 'interval_seconds', 'Interval Seconds', 'Interval Seconds');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (714, 'start_cron_jobs_date', 'Start Cron Jobs Date', 'Start Cron Jobs Date');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (715, 'start_cron_jobs_time', 'Start Cron Jobs Time', 'Start Cron Jobs Time');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (716, 'interval_seconds', 'Interval(seconds)', 'Interval(seconds)');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (717, 'last_run', 'Last Run', 'Last Run');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (718, 'next_run', 'Next Run', 'Next Run');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (719, 'coin_full_name', 'Coin Full Name', 'Coin Full Name');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (720, 'algorithm', 'Algorithm', 'Algorithm');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (721, 'rank', 'Rank', 'Rank');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (722, 'show_home', 'Show Home', 'Show Home');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (723, 'coin_icon', 'Coin Icon', 'Coin Icon');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (724, 'iso_code', 'ISO Code', 'ISO Code');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (725, 'email_notification_settings', 'Email Notification Settings', 'Email Notification Settings');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (726, 'sms_sending', 'SMS Sending', 'SMS Sending');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (727, 'for_sms_gateway_use', 'For SMS Gateway Use', 'For SMS Gateway Use');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (728, 'total_fees', 'Total Fees', 'Total Fees');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (729, 'market_investment', 'Market Investment', 'Market Investment');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (730, 'exchange_type', 'Exchange Type', 'Exchange Type');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (731, 'crypto_qty', 'Crypto Qty', 'Crypto Qty');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (732, 'crypto_rate', 'Crypto Rate', 'Crypto Rate');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (733, 'complete_qty', 'Complete Qty', 'Complete Qty');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (734, 'available_qty', 'Available Qty', 'Available Qty');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (735, 'payout_cronjob', 'Payout Cronjob', 'Payout Cronjob');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (736, 'source', 'Source', 'Source');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (737, 'datetime', 'Datetime', 'Datetime');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (738, 'download_file', 'Download File', 'Download File');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (739, 'required_qty', 'Required QTY', 'Required QTY');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (740, 'required_amount', 'Required Amount', 'Required Amount');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (741, 'available_amount', 'Available Amount', 'Available Amount');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (742, 'open', 'Open', 'Open');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (743, 'language_name', 'Language Name', 'Language Name');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (744, 'phrase_name', 'Phrase Name', 'Phrase Name');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (745, 'phrase', 'Phrase', 'Phrase');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (746, 'add_phrase', 'Add Phrase', 'Add Phrase');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (747, 'label', 'Label', 'Label');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (748, 'verify_user', 'Verify User', 'Verify User');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (749, 'subscriber', 'Subscriber', 'Subscriber');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (750, 'cms', 'CMS', 'CMS');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (751, 'chart', 'Chart', 'Chart');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (752, 'about_coin', 'About Coin', 'About Coin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (753, 'ico_settings', 'ICO settings', 'ICO settings');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (754, 'coin_releasing', 'Coin Releasing', 'Coin Releasing');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (755, 'menu_control_settings', 'Menu Control Settings', 'Menu Control Settings');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (756, 'ico_wallet', 'ICO Wallet', 'ICO Wallet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (757, 'callback_url', 'Callback Url', 'Callback Url');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (758, 'success_url', 'Success Url', 'Success Url');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (759, 'cancel_url', 'Cancel Url', 'Cancel Url');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (760, 'upload_document_for_profile_verification', 'Upload Document For Profile Verification', 'Upload Document For Profile Verification');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (761, 'verification_type', 'Verification Type', 'Verification Type');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (762, 'surname', 'Surname', 'Surname');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (763, 'nid', 'NID', 'NID');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (764, 'upload_document', 'Upload Document', 'Upload Document');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (765, 'approve', 'Approve', 'Approve');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (766, 'search', 'Search', 'Search');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (767, 'transaction_log', 'Transaction Log', 'Transaction Log');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (768, 'earning_history', 'Earning History', 'Earning History');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (769, 'transaction', 'Transaction', 'Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (770, 'white_paper_pdf', 'White Paper PDF', 'White Paper PDF');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (771, 'information', 'Information', 'Information');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (772, 'payment_process', 'Payment Process', 'Payment Process');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (773, 'summation_of_all_deposit_sell_received_roi_and_referral_amount', 'Summation of all deposit, sell, received, roi and referral amount.', 'Summation of all deposit, sell, received, roi and referral amount.');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (774, 'summation_of_all_your_buy_and_exchange_calculate_token', 'Summation of all your buy and exchange calculate token', 'Summation of all your buy and exchange calculate token');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (775, 'multiplication_of_all_token_and_token_rate', 'Multiplication of all token and token rate', 'Multiplication of all token and token rate');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (776, 'smsbox', 'Smsbox', 'Smsbox');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (777, 'mailbox', 'Mailbox', 'Mailbox');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (778, 'help_line', 'Help Line', 'Help Line');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (779, 'see_all_messages', 'See All Messages', 'See All Messages');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (780, 'view_all', 'View all', 'View all');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (781, 'payout_setting', 'Payout Setting', 'Payout Setting');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (782, 'package_payout', 'Package Payout', 'Package Payout');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (783, 'buy_token', 'Buy Token', 'Buy Token');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (784, 'wallet_history', 'Wallet History', 'Wallet History');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (785, 'open_exchange', 'Open Exchange', 'Open Exchange');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (786, 'canceled_exchange', 'Canceled Exchange', 'Canceled Exchange');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (787, 'history', 'History', 'History');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (788, 'sell_avaiable', 'Sell Avaiable', 'Sell Avaiable');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (789, 'crypto_balance', 'Crypto Balance', 'Crypto Balance');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (790, 'buy_coin', 'Buy Coin', 'Buy Coin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (791, 'quantity', 'Quantity', 'Quantity');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (792, 'sell_coin', 'Sell Coin', 'Sell Coin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (793, 'market_depth', 'Market Depth', 'Market Depth');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (794, 'weekly_roi_added', 'Weekly ROI Added', 'Weekly ROI Added');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (795, 'purchase_order_no', 'Purchase Order No', 'Purchase Order No');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (796, 'this_page_is_disable', 'This page is disable', 'This page is disable');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (797, 'payout_no', 'Payout No', 'Payout No');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (798, 'check_your_email', 'Check your email', 'Check your email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (799, 'buy_qty', 'Buy Qty', 'Buy Qty');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (800, 'transaction_id', 'Transaction ID', 'Transaction ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (801, 'source_address', 'Source Address', 'Source Address');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (802, 'price_in', 'Price in', 'Price in');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (803, 'passport', 'Passport', 'Passport');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (804, 'drivers_license', 'Driver\'s license', 'Driver\'s license');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (805, 'government_issued_id_card', 'Government-issued ID Card', 'Government-issued ID Card');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (806, 'given_name', 'Given Name', 'Given Name');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (807, 'passport_nid_license_number', 'Passport/NID/License Number', 'Passport/NID/License Number');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (808, 'male', 'Male', 'Male');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (809, 'female', 'Female', 'Female');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (810, 'profile_is_verified', 'Profile is Verified', 'Profile is Verified');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (811, 'verification_cancel', 'Verification Cancel', 'Verification Cancel');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (812, 'verification_is_processing', 'Verification is Processing', 'Verification is Processing');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (813, 'withdraw_no', 'Withdraw No', 'Withdraw No');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (814, 'transfer_no', 'Transfer No', 'Transfer No');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (815, 'user', 'User', 'User');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (816, 'edit_teammember', 'Edit Team Member', 'Edit Team Member');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (817, 'you_did_not_upload_any_file', 'You didn\'t upload any file', 'You didn\'t upload any file');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (818, 'article2_en', 'Article 2 English', 'Article 2 English');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (819, 'article2_fr', 'Article 2 French', 'Article 2 FR');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (820, 'roadmap_list', 'RoadMap List', 'RoadMap List');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (821, 'add_roadmap', 'Add RoadMap', 'Add RoadMap');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (822, 'short_description', 'Short Description', 'Short Description');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (823, 'this_position_is_exists', 'This position is exists.', 'This position is exists.');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (824, 'cat_title', 'Category Title', 'Category Title');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (825, 'cat_title2_en', 'Category Title 2 English', 'Category Title 2 English');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (826, 'invalid_amount', 'Invalid Amount', 'Invalid Amount');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (827, 'there_is_something_wrong', 'There is something wrong', 'There is something wrong');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (828, 'buy_request_successfully', 'Buy request successfully', 'Buy request successfully');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (829, 'sell_request_successfully', 'Sell request successfully', 'Sell request successfully');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (830, 'testtest', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (831, 'create_admin', 'Create Admin', 'Create Admin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (832, 'create_user', 'Create User', 'Create User');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (833, 'create_team', 'Create Team', 'Create Team');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (834, 'email_gateway_setup', 'Email Gateway Setup', 'Configuration De La Passerelle De Messagerie');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (835, 'check_your_email_server', 'Check Your Email Server', 'Vérifiez Votre Serveur De Messagerie');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (836, 'email_gateway', 'Email Gateway', 'Passerelle De Messagerie');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (837, 'sms_gateway', 'Sms Gateway', 'Passerelle Sms');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (838, 'email-gateway', 'Email-gateway', 'Passerelle De Messagerie');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (839, 'sms_gateway_setup', 'Sms Gateway Setup', 'Configuration De La Passerelle SMS');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (840, 'check_your_sms_gateway', 'Check Your Sms Gateway', 'Vérifiez Votre Passerelle Sms');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (841, 'mobile_number', 'Mobile Number', 'Numéro De Portable');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (842, 'mobile_no', 'Mobile No', 'Mobile Non');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (843, 'email_sms_template', 'Email Sms Template', 'Modèle De Courrier électronique SMS');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (844, 'template_type', 'Template Type', 'Type De Modèle');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (845, 'template_english', 'Template English', 'Modèle Anglais');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (846, 'template_french', 'Template French', 'Modèle Français');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (847, 'subject_english', 'Subject English', 'Sujet Anglais');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (848, 'subject_french', 'Subject French', 'Sujet Français');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (849, 'email-sms-template', 'Email-sms-template', 'Email-sms-template');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (850, 'template-update', 'Template-update', 'Modèle-mise à Jour');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (851, 'package-list', 'Package-list', 'Liste De Paquets');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (852, 'add-package', 'Add-package', 'Add-package');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (853, 'latest_version', 'Latest Version', 'Dernière Version');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES (854, 'current_version', 'Current Version', 'Version Actuelle');


#
# TABLE STRUCTURE FOR: menu_control
#

DROP TABLE IF EXISTS `menu_control`;

CREATE TABLE `menu_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ico_wallet` int(11) NOT NULL,
  `exchange` int(11) NOT NULL,
  `package` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `menu_control` (`id`, `ico_wallet`, `exchange`, `package`) VALUES (1, 1, 1, 1);


#
# TABLE STRUCTURE FOR: message
#

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` varchar(250) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (1, 1, '8NS5Y4', 'Withdraw', 'You successfully withdraw the amount is $200. from your account. Your new balance is $302654.1', '2019-02-24 09:21:16', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (2, 1, '8NS5Y4', 'Withdraw', 'You successfully withdraw the amount is $300. from your account. Your new balance is $302354.1', '2019-02-24 09:22:03', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (3, 1, '8NS5Y4', 'Withdraw', 'You successfully withdraw the amount is $500. from your account. Your new balance is $301854.1', '2019-02-24 09:22:37', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (4, 1, '8NS5Y4', 'Withdraw', 'You successfully withdraw the amount is $2000. from your account. Your new balance is $299854.1', '2019-02-24 09:23:14', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (5, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2019-02-24 09:34:35', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (6, 1, '8NS5Y4', 'Package Buy', 'You bought a 800 package successfully', '2019-02-24 09:34:47', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (7, 1, '8NS5Y4', 'Package Buy', 'You bought a 400 package successfully', '2019-02-24 09:35:04', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (8, 1, '8NS5Y4', 'Package Buy', 'You bought a 800 package successfully', '2019-02-27 07:42:57', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (9, 1, '8NS5Y4', 'Package Buy', 'You bought a 3200 package successfully', '2019-02-27 07:43:52', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (10, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2019-02-27 08:53:56', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (11, 1, '8NS5Y4', 'Package Buy', 'You bought a 3200 package successfully', '2019-02-28 03:53:26', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (12, 1, '8NS5Y4', 'Package Buy', 'You bought a 3200 package successfully', '2019-02-28 03:53:39', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (13, 1, '8NS5Y4', 'Package Buy', 'You bought a 3200 package successfully', '2019-02-28 03:54:53', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (14, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-11 02:40:16', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (15, 1, '8NS5Y4', 'Package Buy', 'You bought a 3200 package successfully', '2020-03-12 07:24:21', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (16, 1, '6U1OP5', 'Package Buy', 'You bought a 100 package successfully', '2020-03-12 02:36:31', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (17, 1, '6U1OP5', 'Package Buy', 'You bought a 800 package successfully', '2020-03-12 02:37:12', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (18, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-12 07:55:20', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (19, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-12 08:46:35', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (20, 1, '10QZ56', 'Package Buy', 'You bought a 100 package successfully', '2020-03-14 07:24:42', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (21, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-14 02:29:38', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (22, 1, '8NS5Y4', 'Package Buy', 'You bought a 3200 package successfully', '2020-03-14 02:29:59', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (23, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-15 08:44:19', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (24, 1, '8NS5Y4', 'Package Buy', 'You bought a 1600 package successfully', '2020-03-16 12:20:13', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (25, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-17 10:20:28', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (26, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-20 08:49:50', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (27, 1, '8NS5Y4', 'Package Buy', 'You bought a 200 package successfully', '2020-03-20 11:23:40', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (28, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-23 05:33:28', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (29, 1, '8NS5Y4', 'Package Buy', 'You bought a 800 package successfully', '2020-03-23 06:05:10', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (30, 1, '6U1OP5', 'Package Buy', 'You bought a 100 package successfully', '2020-03-24 02:39:29', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (31, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-25 06:39:59', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (32, 1, '8NS5Y4', 'Package Buy', 'You bought a 3200 package successfully', '2020-03-25 06:40:23', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (33, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-25 09:44:01', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (34, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-25 11:02:12', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (35, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-25 05:28:58', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (36, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-26 12:13:18', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (37, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-27 10:20:32', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (38, 1, '6U1OP5', 'Package Buy', 'You bought a 100 package successfully', '2020-03-27 01:29:30', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (39, 1, 'W1R3J3', 'Package Buy', 'You bought a 100 package successfully', '2020-03-27 05:05:21', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (40, 1, '8NS5Y4', 'Package Buy', 'You bought a 400 package successfully', '2020-03-28 12:33:20', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (41, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-03-31 11:40:04', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (42, 1, 'BX8333', 'Package Buy', 'You bought a 100 package successfully', '2020-04-08 07:19:35', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (43, 1, 'BX8333', 'Package Buy', 'You bought a 400 package successfully', '2020-04-08 07:19:50', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (44, 1, 'BX8333', 'Package Buy', 'You bought a 3200 package successfully', '2020-04-08 07:20:01', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (45, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-08 08:52:54', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (46, 1, '8NS5Y4', 'Package Buy', 'You bought a 400 package successfully', '2020-04-08 08:53:35', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (47, 1, '6U1OP5', 'Package Buy', 'You bought a 100 package successfully', '2020-04-09 08:11:15', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (48, 1, '8NS5Y4', 'Package Buy', 'You bought a 400 package successfully', '2020-04-10 06:57:04', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (49, 1, '8NS5Y4', 'Package Buy', 'You bought a 400 package successfully', '2020-04-10 07:43:55', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (50, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-11 03:40:02', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (51, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-12 03:47:34', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (52, 1, '8NS5Y4', 'Package Buy', 'You bought a 3200 package successfully', '2020-04-12 05:33:44', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (53, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-13 01:17:31', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (54, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-14 12:54:52', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (55, 1, '8NS5Y4', 'Package Buy', 'You bought a 3200 package successfully', '2020-04-15 12:52:16', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (56, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-15 04:21:39', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (57, 1, '8NS5Y4', 'Package Buy', 'You bought a 3200 package successfully', '2020-04-15 04:26:24', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (58, 1, '6U1OP5', 'Package Buy', 'You bought a 400 package successfully', '2020-04-16 01:18:03', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (59, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-17 09:04:49', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (60, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-17 04:36:26', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (61, 1, '8NS5Y4', 'Deposit', 'Hi,Demo demo You Deposit The Amount Is USD 100', '2020-04-17 09:24:28', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (62, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-18 12:10:24', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (63, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-18 09:41:32', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (64, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-18 07:06:01', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (65, 1, '8NS5Y4', 'Package Buy', 'You bought a 800 package successfully', '2020-04-18 07:07:55', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (66, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-19 10:56:10', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (67, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-21 04:51:22', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (68, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-22 04:48:06', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (69, 1, '8NS5Y4', 'Package Buy', 'You bought a 800 package successfully', '2020-04-23 07:00:12', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (70, 1, '8NS5Y4', 'Package Buy', 'You bought a 3200 package successfully', '2020-04-23 11:39:37', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (71, 1, '8NS5Y4', 'Package Buy', 'You bought a 200 package successfully', '2020-04-24 12:11:14', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (72, 1, '8NS5Y4', 'Package Buy', 'You bought a 400 package successfully', '2020-04-24 12:12:12', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (73, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-24 10:16:47', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (74, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-25 11:54:58', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (75, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-04-25 05:57:55', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (76, 1, '8NS5Y4', 'Package Buy', 'You bought a 400 package successfully', '2020-04-26 02:52:58', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (77, 1, '6U1OP5', 'Package Buy', 'You bought a 1600 package successfully', '2020-04-26 10:11:27', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (78, 1, '6U1OP5', 'Package Buy', 'You bought a 100 package successfully', '2020-04-29 04:49:34', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (79, 1, '8NS5Y4', 'Package Buy', 'You bought a 400 package successfully', '2020-04-30 10:41:07', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (80, 1, '8NS5Y4', 'Package Buy', 'You bought a 400 package successfully', '2020-05-01 04:14:31', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (81, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-05-01 09:08:33', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (82, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-05-02 04:38:44', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (83, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-05-02 08:38:03', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (84, 1, '8NS5Y4', 'Package Buy', 'You bought a 800 package successfully', '2020-05-02 08:38:24', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (85, 1, '8NS5Y4', 'Package Buy', 'You bought a 800 package successfully', '2020-05-02 08:40:43', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (86, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-05-06 07:52:53', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (87, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-05-06 07:53:00', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (88, 1, '6U1OP5', 'Package Buy', 'You bought a 800 package successfully', '2020-05-07 02:31:57', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (89, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-05-07 02:43:24', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (90, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-05-07 06:58:02', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (91, 1, '8NS5Y4', 'Package Buy', 'You bought a 200 package successfully', '2020-05-08 12:43:48', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (92, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-05-09 02:02:02', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (93, 1, '8NS5Y4', 'Package Buy', 'You bought a 3200 package successfully', '2020-05-09 07:06:21', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (94, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-05-10 12:27:22', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (95, 1, '8NS5Y4', 'Deposit', 'You successfully deposit the amount $1000.00000000. Your new balance is $239000.955', '2020-05-11 04:04:15', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (96, 1, '8NS5Y4', 'Package Buy', 'You bought a 100 package successfully', '2020-05-20 09:54:44', 0, 1);
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES (97, 1, '8NS5Y4', 'Package Buy', 'You bought a 200 package successfully', '2020-06-14 01:51:42', 0, 1);


#
# TABLE STRUCTURE FOR: notifications
#

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `notification_type` varchar(45) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `details` mediumtext DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1 COMMENT='SMS and Email notified data will be stored in this table.';

INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (1, '8NS5Y4', '2020-03-11 02:40:16', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (2, '8NS5Y4', '2020-03-12 07:24:21', 'package_by', 'Package Buy', 'You bought a 3200 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (3, '6U1OP5', '2020-03-12 02:36:32', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (4, '6U1OP5', '2020-03-12 02:37:12', 'package_by', 'Package Buy', 'You bought a 800 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (5, '8NS5Y4', '2020-03-12 07:55:21', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (6, '8NS5Y4', '2020-03-12 08:46:35', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (7, '10QZ56', '2020-03-14 07:24:42', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '0');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (8, '8NS5Y4', '2020-03-14 02:29:38', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (9, '8NS5Y4', '2020-03-14 02:29:59', 'package_by', 'Package Buy', 'You bought a 3200 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (10, '8NS5Y4', '2020-03-15 08:44:19', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (11, '8NS5Y4', '2020-03-16 12:20:14', 'package_by', 'Package Buy', 'You bought a 1600 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (12, '8NS5Y4', '2020-03-17 10:20:28', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (13, '8NS5Y4', '2020-03-20 08:49:50', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (14, '8NS5Y4', '2020-03-20 11:23:40', 'package_by', 'Package Buy', 'You bought a 200 package successfully', '0');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (15, '8NS5Y4', '2020-03-23 05:33:29', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '0');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (16, '8NS5Y4', '2020-03-23 06:05:11', 'package_by', 'Package Buy', 'You bought a 800 package successfully', '0');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (17, '6U1OP5', '2020-03-24 02:39:29', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (18, '8NS5Y4', '2020-03-25 06:39:59', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (19, '8NS5Y4', '2020-03-25 06:40:23', 'package_by', 'Package Buy', 'You bought a 3200 package successfully', '0');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (20, '8NS5Y4', '2020-03-25 09:44:01', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (21, '8NS5Y4', '2020-03-25 11:02:13', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (22, '8NS5Y4', '2020-03-25 05:28:59', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (23, '8NS5Y4', '2020-03-26 12:13:18', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (24, '8NS5Y4', '2020-03-27 10:20:32', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (25, '6U1OP5', '2020-03-27 01:29:30', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (26, 'W1R3J3', '2020-03-27 05:05:21', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '0');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (27, '8NS5Y4', '2020-03-28 12:33:20', 'package_by', 'Package Buy', 'You bought a 400 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (28, '8NS5Y4', '2020-03-31 11:40:04', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (29, 'BX8333', '2020-04-08 07:19:36', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (30, 'BX8333', '2020-04-08 07:19:50', 'package_by', 'Package Buy', 'You bought a 400 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (31, 'BX8333', '2020-04-08 07:20:01', 'package_by', 'Package Buy', 'You bought a 3200 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (32, '8NS5Y4', '2020-04-08 08:52:55', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (33, '8NS5Y4', '2020-04-08 08:53:35', 'package_by', 'Package Buy', 'You bought a 400 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (34, '6U1OP5', '2020-04-09 08:11:15', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (35, '8NS5Y4', '2020-04-10 06:57:04', 'package_by', 'Package Buy', 'You bought a 400 package successfully', '0');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (36, '8NS5Y4', '2020-04-10 07:43:55', 'package_by', 'Package Buy', 'You bought a 400 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (37, '8NS5Y4', '2020-04-11 03:40:02', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '0');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (38, '8NS5Y4', '2020-04-12 03:47:34', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '0');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (39, '8NS5Y4', '2020-04-12 05:33:45', 'package_by', 'Package Buy', 'You bought a 3200 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (40, '8NS5Y4', '2020-04-13 01:17:31', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '0');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (41, '8NS5Y4', '2020-04-14 12:54:53', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '0');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (42, '8NS5Y4', '2020-04-15 12:52:16', 'package_by', 'Package Buy', 'You bought a 3200 package successfully', '0');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (43, '8NS5Y4', '2020-04-15 04:21:40', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (44, '8NS5Y4', '2020-04-15 04:26:25', 'package_by', 'Package Buy', 'You bought a 3200 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (45, '6U1OP5', '2020-04-16 01:18:03', 'package_by', 'Package Buy', 'You bought a 400 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (46, '8NS5Y4', '2020-04-17 09:04:49', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (47, '8NS5Y4', '2020-04-17 04:36:27', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (48, '8NS5Y4', '2020-04-18 12:10:25', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (49, '8NS5Y4', '2020-04-18 09:41:32', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (50, '8NS5Y4', '2020-04-18 07:06:02', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (51, '8NS5Y4', '2020-04-18 07:07:55', 'package_by', 'Package Buy', 'You bought a 800 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (52, '8NS5Y4', '2020-04-19 10:56:11', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (53, '8NS5Y4', '2020-04-21 04:51:23', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (54, '8NS5Y4', '2020-04-22 04:48:06', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (55, '8NS5Y4', '2020-04-23 07:00:12', 'package_by', 'Package Buy', 'You bought a 800 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (56, '8NS5Y4', '2020-04-23 11:39:38', 'package_by', 'Package Buy', 'You bought a 3200 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (57, '8NS5Y4', '2020-04-24 12:11:15', 'package_by', 'Package Buy', 'You bought a 200 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (58, '8NS5Y4', '2020-04-24 12:12:12', 'package_by', 'Package Buy', 'You bought a 400 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (59, '8NS5Y4', '2020-04-24 10:16:47', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (60, '8NS5Y4', '2020-04-25 11:54:58', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (61, '8NS5Y4', '2020-04-25 05:57:55', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (62, '8NS5Y4', '2020-04-26 02:52:58', 'package_by', 'Package Buy', 'You bought a 400 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (63, '6U1OP5', '2020-04-26 10:11:27', 'package_by', 'Package Buy', 'You bought a 1600 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (64, '6U1OP5', '2020-04-29 04:49:34', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (65, '8NS5Y4', '2020-04-30 10:41:08', 'package_by', 'Package Buy', 'You bought a 400 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (66, '8NS5Y4', '2020-05-01 04:14:31', 'package_by', 'Package Buy', 'You bought a 400 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (67, '8NS5Y4', '2020-05-01 09:08:33', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (68, '8NS5Y4', '2020-05-02 04:38:45', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (69, '8NS5Y4', '2020-05-02 08:38:03', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (70, '8NS5Y4', '2020-05-02 08:38:24', 'package_by', 'Package Buy', 'You bought a 800 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (71, '8NS5Y4', '2020-05-02 08:40:44', 'package_by', 'Package Buy', 'You bought a 800 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (72, '8NS5Y4', '2020-05-06 07:52:53', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (73, '8NS5Y4', '2020-05-06 07:53:01', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (74, '6U1OP5', '2020-05-07 02:31:57', 'package_by', 'Package Buy', 'You bought a 800 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (75, '8NS5Y4', '2020-05-07 02:43:24', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (76, '8NS5Y4', '2020-05-07 06:58:02', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (77, '8NS5Y4', '2020-05-08 12:43:48', 'package_by', 'Package Buy', 'You bought a 200 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (78, '8NS5Y4', '2020-05-09 02:02:02', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (79, '8NS5Y4', '2020-05-09 07:06:21', 'package_by', 'Package Buy', 'You bought a 3200 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (80, '8NS5Y4', '2020-05-10 12:27:22', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (81, '8NS5Y4', '2020-05-20 09:54:44', 'package_by', 'Package Buy', 'You bought a 100 package successfully', '1');
INSERT INTO `notifications` (`notification_id`, `user_id`, `date`, `notification_type`, `subject`, `details`, `status`) VALUES (82, '8NS5Y4', '2020-06-13 19:51:44', 'package_by', 'Package Buy', 'You bought a 200 package successfully', '1');


#
# TABLE STRUCTURE FOR: package
#

DROP TABLE IF EXISTS `package`;

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) NOT NULL,
  `period` varchar(250) DEFAULT NULL,
  `commission_ret` varchar(250) DEFAULT NULL,
  `package_deatils` mediumtext DEFAULT NULL,
  `package_amount` float NOT NULL,
  `weekly_roi` float NOT NULL,
  `monthly_roi` float NOT NULL,
  `yearly_roi` float NOT NULL,
  `daily_roi` float DEFAULT NULL,
  `total_percent` varchar(45) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='All investment packages will be stored here.';

INSERT INTO `package` (`package_id`, `package_name`, `period`, `commission_ret`, `package_deatils`, `package_amount`, `weekly_roi`, `monthly_roi`, `yearly_roi`, `daily_roi`, `total_percent`, `status`) VALUES (1, 'Silver', '365', '', 'Package 1', '100', '5', '22', '261', '0', '261', 1);
INSERT INTO `package` (`package_id`, `package_name`, `period`, `commission_ret`, `package_deatils`, `package_amount`, `weekly_roi`, `monthly_roi`, `yearly_roi`, `daily_roi`, `total_percent`, `status`) VALUES (2, 'Medium', '365', '', 'Package 2', '200', '6.53', '26.12', '340', '0', '170', 1);
INSERT INTO `package` (`package_id`, `package_name`, `period`, `commission_ret`, `package_deatils`, `package_amount`, `weekly_roi`, `monthly_roi`, `yearly_roi`, `daily_roi`, `total_percent`, `status`) VALUES (3, 'Pro', '365', '', 'Package 3', '400', '13.84', '55.36', '720', '0', '180', 1);
INSERT INTO `package` (`package_id`, `package_name`, `period`, `commission_ret`, `package_deatils`, `package_amount`, `weekly_roi`, `monthly_roi`, `yearly_roi`, `daily_roi`, `total_percent`, `status`) VALUES (4, 'Ex-Pro', '365', '', 'Package 4', '800', '29.23', '116.92', '1520', '0', '190', 1);
INSERT INTO `package` (`package_id`, `package_name`, `period`, `commission_ret`, `package_deatils`, `package_amount`, `weekly_roi`, `monthly_roi`, `yearly_roi`, `daily_roi`, `total_percent`, `status`) VALUES (5, 'Sup-Pro', '365', '', 'Package 5', '1600', '61.53', '246.12', '3200', '0', '200', 1);
INSERT INTO `package` (`package_id`, `package_name`, `period`, `commission_ret`, `package_deatils`, `package_amount`, `weekly_roi`, `monthly_roi`, `yearly_roi`, `daily_roi`, `total_percent`, `status`) VALUES (6, 'Yaoundé', '365', '', 'Package 6', '3200', '126.15', '504.6', '6560', '0', '205', 1);


#
# TABLE STRUCTURE FOR: payeer_payments
#

DROP TABLE IF EXISTS `payeer_payments`;

CREATE TABLE `payeer_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_operation_id` int(11) NOT NULL,
  `m_operation_ps` int(11) NOT NULL,
  `m_operation_date` varchar(100) NOT NULL,
  `m_operation_pay_date` varchar(100) NOT NULL,
  `m_shop` int(11) NOT NULL,
  `m_orderid` varchar(300) NOT NULL,
  `m_amount` varchar(100) NOT NULL,
  `m_curr` varchar(100) NOT NULL,
  `m_desc` varchar(300) NOT NULL,
  `m_status` varchar(100) NOT NULL,
  `m_sign` text NOT NULL,
  `lang` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: payment_gateway
#

DROP TABLE IF EXISTS `payment_gateway`;

CREATE TABLE `payment_gateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identity` varchar(50) NOT NULL,
  `agent` varchar(100) NOT NULL,
  `public_key` text NOT NULL,
  `private_key` text NOT NULL,
  `shop_id` varchar(100) NOT NULL,
  `secret_key` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `payment_gateway` (`id`, `identity`, `agent`, `public_key`, `private_key`, `shop_id`, `secret_key`, `data`, `status`) VALUES (1, 'bitcoin', 'GoUrl Payment Gateway', 'a:13:{s:7:\"bitcoin\";s:42:\"0x1F1Ae8F590A027b160E284A225EaAF98540884f4\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:0:\"\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', 'a:13:{s:7:\"bitcoin\";s:50:\"22592AAtNOwwBitcoin77BTCPRVk7hmp8s3ew6pwgOMgxMq81F\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:0:\"\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', '', '', '', 1);
INSERT INTO `payment_gateway` (`id`, `identity`, `agent`, `public_key`, `private_key`, `shop_id`, `secret_key`, `data`, `status`) VALUES (2, 'payeer', 'Payeer', '474181962', 'xOngnN7CMIx6w5S3', '', '', '', 0);
INSERT INTO `payment_gateway` (`id`, `identity`, `agent`, `public_key`, `private_key`, `shop_id`, `secret_key`, `data`, `status`) VALUES (4, 'phone', 'Mobile Money', '+880 1746 40 68 01', 'jj', '', '', '', 1);
INSERT INTO `payment_gateway` (`id`, `identity`, `agent`, `public_key`, `private_key`, `shop_id`, `secret_key`, `data`, `status`) VALUES (5, 'paypal', 'Paypal', 'AfmTkhn-GYb_HAsPayWeLDVTG39jNjGsJ3siJSNDs6QGr52KDLnAT28fIv4TVni5P3Dax8w1y-Libl_j', 'EHGJveSf9GJcbyQwgYmouRi9baBPKLPqeSYjYesiG4UJTSnQ45q3gwQdkB6TvFQAjkYm42D1P_Hqn340', '', 'sandbox', '', 1);
INSERT INTO `payment_gateway` (`id`, `identity`, `agent`, `public_key`, `private_key`, `shop_id`, `secret_key`, `data`, `status`) VALUES (6, 'stripe', 'Stripe', 'pk_test_BPLwYal0sn4KkKaDTzuj5oRq', 'sk_test_6J6dcwXf8ruEZGCvlC09C9NK', '', '', '', 1);
INSERT INTO `payment_gateway` (`id`, `identity`, `agent`, `public_key`, `private_key`, `shop_id`, `secret_key`, `data`, `status`) VALUES (7, 'coinpayment', 'CoinPayments', '51fec43efdeb1323d1a0854ffa807b64abf822ca6dd79ba619cdb6de6783b892', 'D432e1907d50C5e399A7E6a34d50DE1B4dfe809980f3a4a295dc7Ac7889Bc3e8', '', '', '{\"marcent_id\":\"7bc213faca51052a85eccd6ce1c56eef\",\"ipn_secret\":\"TaR#@)1331\",\"debug_email\":\"tareq7500@gmail.com\",\"debuging_active\":0,\"withdraw\":\"0\"}', 1);


#
# TABLE STRUCTURE FOR: setting
#

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_web` varchar(255) NOT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `office_time` varchar(255) DEFAULT NULL,
  `update_notification` tinyint(10) DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `setting` (`setting_id`, `title`, `description`, `email`, `phone`, `logo`, `logo_web`, `favicon`, `language`, `site_align`, `footer_text`, `time_zone`, `latitude`, `office_time`, `update_notification`) VALUES (1, 'Crypto Currency Treading System', 'Bangladesh Office B-25, Mannan Plaza, 4th Floor, Khilkhet Dhaka-1229, Bangladesh', 'info@bdtask.com', '+88096669800470', 'upload/settings/5385b510d68935d70ac6374386a40ecd.png', 'upload/settings/3e0408b38ca08be14cd13d6db241ed10.png', 'upload/settings/ce8cb9255d11ec59b439f808a370a6b5.png', 'english', 'LTR', '© All rights reserved. Made with    by bdtask', 'Asia/Dhaka', '40.6700, -73.9400', 'Monday - Friday: 08:00 - 22:00\r\nSaturday, Sunday: Closed', 1);


#
# TABLE STRUCTURE FOR: sms_email_send_setup
#

DROP TABLE IF EXISTS `sms_email_send_setup`;

CREATE TABLE `sms_email_send_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` text NOT NULL,
  `deposit` int(11) DEFAULT NULL,
  `transfer` int(11) DEFAULT NULL,
  `withdraw` int(11) DEFAULT NULL,
  `payout` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `team_bonnus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `sms_email_send_setup` (`id`, `method`, `deposit`, `transfer`, `withdraw`, `payout`, `commission`, `team_bonnus`) VALUES (1, 'email', 0, NULL, 0, NULL, NULL, NULL);
INSERT INTO `sms_email_send_setup` (`id`, `method`, `deposit`, `transfer`, `withdraw`, `payout`, `commission`, `team_bonnus`) VALUES (2, 'sms', 0, 0, 0, NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: web_article
#

DROP TABLE IF EXISTS `web_article`;

CREATE TABLE `web_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) DEFAULT NULL,
  `headline_en` varchar(300) DEFAULT NULL,
  `headline_fr` varchar(300) DEFAULT NULL,
  `article_image` varchar(100) DEFAULT NULL,
  `custom_url` varchar(300) NOT NULL,
  `article1_en` longtext NOT NULL,
  `article1_fr` longtext NOT NULL,
  `article2_en` longtext NOT NULL,
  `article2_fr` longtext NOT NULL,
  `video` varchar(300) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `page_content` int(11) DEFAULT 0 COMMENT 'if this is a Page content set 1 else 0',
  `position_serial` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `publish_by` varchar(20) NOT NULL,
  `edit_history` int(11) NOT NULL,
  PRIMARY KEY (`article_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (1, NULL, 'What is ICO Crypto?', 'What is ICO Crypto?', 'upload//1618740428_be3fb80cdd789cad6467.png', '', 'ICO Crypto is a platform for the future of funding that powering dat for the new equity blockchain\r\n', '', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything.\r\n', '', 'https://www.youtube.com/watch?v=RRzrr2oqNPA', 2, 1, 1, '2021-04-18 05:07:08', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (2, NULL, 'Cryptoland Just Entered the Real World', 'Cryptoland Just Entered the Real World', 'upload/71c99062ca8ad956da6c370fe902c8c4.jpg', '', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.<br></p>', '', '', '', 'https://www.youtube.com/watch?v=RRzrr2oqNPA', 1, 1, 1, '2019-01-10 07:19:41', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (3, '50', '$50', NULL, NULL, '', 'billion USD â€” excepted revenue of coins by 2020', 'billion USD â€” excepted revenue of coins by 2020', '', '', NULL, 20, 0, 0, '2018-12-27 11:45:56', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (4, '150', '150', NULL, NULL, '', 'million potential clients worldwide', 'million potential clients worldwide', '', '', NULL, 20, 0, 0, '2018-12-27 11:46:12', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (5, '25', '25%', NULL, NULL, '', 'no borders for international payments', 'no borders for international payments', '', '', NULL, 20, 0, 0, '2018-12-27 11:46:38', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (6, '10x', '10x', NULL, NULL, '', 'faster transaction speed', 'faster transaction speed', '', '', NULL, 20, 0, 0, '2018-12-27 11:46:48', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (7, NULL, 'Bitcoin public trading launched', 'Bitcoin public trading launched', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 1, '2018-06-27 00:00:00', '', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (8, NULL, 'First peak value for Bitcoin', 'First peak value for Bitcoin', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 3, '2018-07-27 00:00:00', '', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (9, NULL, '$1 billion capitalization', '$1 billion capitalization', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 3, '2018-08-27 00:00:00', '', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (10, NULL, 'Bitcoin worth $1,000', 'Bitcoin worth $1,000', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 4, '2018-09-05 00:00:00', '', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (11, NULL, 'Ripple\'s major gains', 'Ripple\'s major gains', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 5, '2018-09-25 00:00:00', '', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (12, NULL, 'LiteCoin\'s surge', 'LiteCoin\'s surge', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 6, '2018-10-19 00:00:00', '', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (13, NULL, 'Ethereum`s meteoric rise', 'Ethereum`s meteoric rise', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 7, '2018-11-15 00:00:00', '', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (14, NULL, 'Private/Pre Sale', NULL, NULL, '', '60', '#8d62cd', '', '', NULL, 17, 0, 1, '2019-01-09 07:08:29', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (15, NULL, 'Public ICO', NULL, NULL, '', '10', '#0095eb', '', '', NULL, 17, 0, 2, '2018-12-27 12:08:51', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (16, NULL, 'Team & Advisor', NULL, NULL, '', '25', '#df0866', '', '', NULL, 17, 0, 3, '2018-12-27 12:09:10', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (17, NULL, 'Marketing', NULL, NULL, '', '30', '#f68968', '', '', NULL, 17, 0, 4, '2018-12-27 12:10:20', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (18, NULL, 'Bounty', NULL, NULL, '', '30', '#f2ebce', '', '', NULL, 17, 0, 5, '2018-12-27 12:10:54', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (19, NULL, 'Crowdsale', NULL, NULL, '', '350', '#09ffdf', '', '', NULL, 18, 0, 1, '2018-12-27 12:23:19', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (20, NULL, 'Team', NULL, NULL, '', '340', '#f2ebce', '', '', NULL, 18, 0, 2, '2018-12-27 12:23:17', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (21, NULL, 'Advisore', NULL, NULL, '', '274', '#f68968', '', '', NULL, 18, 0, 3, '2018-12-27 12:23:16', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (22, NULL, 'Project Reserve', NULL, NULL, '', '234', '#df0866', '', '', NULL, 18, 0, 4, '2018-12-27 12:23:14', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (23, NULL, 'Mosternodes', NULL, NULL, '', '214', '#0095eb', '', '', NULL, 18, 0, 5, '2018-12-27 12:23:13', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (24, NULL, 'Mosternodes', NULL, NULL, '', '194', '#f2ebce', '', '', NULL, 18, 0, 6, '2018-12-27 12:23:11', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (26, NULL, 'JOHN DOE', NULL, 'upload/team/1618642772_cc75eaeb27da0ba1e6a1.png', '', 'UI Designer\r\n', 'UI Designer\r\n', '', '', NULL, 5, 0, 1, '2021-04-17 01:59:32', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (27, NULL, 'JOHN DOE', NULL, 'upload/team/e550079e7c1c92fce88fc18f97d1d1a3.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 2, '2018-12-27 12:35:33', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (28, NULL, 'JOHN DOE', NULL, 'upload/team/2ea5dcd56cbf07857c5e779bc2aac6e7.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 3, '2018-12-27 12:36:05', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (29, NULL, 'JOHN DOE', NULL, 'upload/team/f578a4cea754be444f1c1d1ce18f9374.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 4, '2018-12-27 12:36:17', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (30, NULL, 'JOHN DOE', NULL, 'upload/team/9aca2d83fb6df075638512b3da11315f.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 5, '2018-12-27 12:36:29', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (31, NULL, 'JOHN DOE', NULL, 'upload/team/4d44c8efc5bb01a1a6b8d104483c6b0a.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 6, '2018-12-27 12:36:44', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (32, NULL, 'JOHN DOE', NULL, 'upload/team/cc5c6257e80f0f39c0f81f149ca8fb44.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 7, '2018-12-27 12:37:36', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (33, NULL, 'JOHN DOE', NULL, 'upload/team/6fd3f95f0aa92740ebec2c002945bbae.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 8, '2018-12-27 12:37:59', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (34, NULL, 'JOHN DOE', NULL, 'upload/team/c1b56d81f4a915333209fafa0f960d60.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 9, '2018-12-27 12:38:16', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (35, NULL, 'JOHN DOE', NULL, 'upload/advisors/d191ef66f3c9d633bb8de06a72b64c55.jpg', '', 'Bitcoin Expert', '#', '#', '#', NULL, 15, 0, 1, '2018-12-27 12:40:22', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (36, NULL, 'JOHN DOE', NULL, 'upload/advisors/6a0dc87a2fb87a7b04fe4fcd1139f2ab.jpg', '', 'Software Enginer', '#', '#', '#', NULL, 15, 0, 2, '2018-12-27 12:41:07', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (37, NULL, 'JOHN DOE', NULL, 'upload/advisors/c6423366875ca03549428d44ecf59e0f.jpg', '', 'Bitcoin Mining Exparts', '#', '#', '#', NULL, 15, 0, 3, '2018-12-27 12:42:15', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (38, NULL, 'JOHN DOE', NULL, 'upload/advisors/8bf34014a827ae5ff1b908fb8b14a111.jpg', '', 'Bitcoin Mining Exparts', '#', '#', '#', NULL, 15, 0, 4, '2018-12-27 12:41:47', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (39, NULL, 'What is WordPress?', 'What is WordPress?', NULL, '', 'WordPress is open source web software that you can install on your web server to create your website, blog, community, or network. WordPress started out as a tool for blogging, but has evolved into a full-fledged Content Management System (CMS), capable of powering websites, networks, and communities.', 'WordPress is open source web software that you can install on your web server to create your website, blog, community, or network. WordPress started out as a tool for blogging, but has evolved into a full-fledged Content Management System (CMS), capable of powering websites, networks, and communities.', '', '', NULL, 12, 0, 0, '2018-12-27 12:44:14', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (40, NULL, 'How do you know when it is time to get support?', 'How do you know when it is time to get support?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 12, 0, 0, '2018-12-27 12:45:18', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (41, NULL, 'What payment methods do you accept?', 'What payment methods do you accept?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 12, 0, 0, '2018-12-27 12:45:39', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (42, NULL, 'Where can I see which insurance plans are?', 'Where can I see which insurance plans are?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 13, 0, 0, '2018-12-27 12:46:23', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (43, NULL, 'How do you know when it is time to get support?', 'How do you know when it is time to get support?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 13, 0, 0, '2018-12-27 12:46:45', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (44, NULL, 'What payment methods do you accept?', 'What payment methods do you accept?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 14, 0, 0, '2018-12-27 12:47:06', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (45, NULL, 'Tanzil', NULL, '', '', 'This is best ICO application', '', 'I strongly recommend it', '', NULL, 11, 0, 0, '2019-01-09 07:07:08', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (46, NULL, 'mehedi', 'WHO ARE WE?', NULL, '', 'Meet the Entire Team', 'Meet the Entire Team', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Adipisci quae nesciunt officia! Autem, nam eum voluptatem, esse voluptatibus deleniti tempora laboriosam sequi pariatur, explicabo itaque.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Adipisci quae nesciunt officia! Autem, nam eum voluptatem, esse voluptatibus deleniti tempora laboriosam sequi pariatur, explicabo itaque.', NULL, NULL, 0, 0, '0000-00-00 00:00:00', '', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (47, NULL, 'mehedi hassan', NULL, 'upload/team/b5c7be9c7532850d515667d5b3a7aaee.jpg', '', 'test', 'test', '', '', NULL, 5, 0, 1, '2021-04-17 11:54:28', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (48, NULL, 'test name', NULL, '', '', 'test\r\n', '', '', '', NULL, 5, 0, 1, '2021-04-17 01:42:21', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (49, NULL, 'mahadi', NULL, '/upload/team1618642141_edc7c75f88b919019f00.jpg', '', 'man\r\n', 'mam\r\n', '', '', NULL, 5, 0, 2, '2021-04-17 01:49:01', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (50, NULL, 'anayetullah', NULL, '/upload/team/1618642248_918814ad0f45c05738f5.jpg', '', 'bagl\r\n', 'djk\r\n', '', '', NULL, 5, 0, 1, '2021-04-17 01:50:48', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (51, NULL, 'Maruf', NULL, '/upload/team/1618642407_1a70cbc97ea9f4c89182.jpg', '', 'eyy\r\n', 'yy\r\n', '', '', NULL, 5, 0, 1, '2021-04-17 01:53:27', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (52, NULL, 'Maruf Hossain', NULL, 'upload/advisors/1618651348_a3167b5cccf448061064.jpg', '', 'ceo', 'linkdin.com', 'twitter.com', 'facebook.com', NULL, 15, 0, 5, '2021-04-17 04:23:52', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (53, NULL, 'Mayesha', NULL, NULL, '', 'test', '', 'test', '', NULL, 11, 0, 0, '2021-04-17 05:05:42', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (54, NULL, 'Mayesha islam', NULL, NULL, '', 'd', '', 'd', '', NULL, 11, 0, 0, '2021-04-17 05:07:23', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (55, NULL, 'test chart label', NULL, NULL, '', '56', 'white', '', '', NULL, 17, 0, 20, '2021-04-17 06:42:51', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (56, NULL, 'Bullet', 'dfsdfsd', NULL, '', 'dfgfsd', 'gdsfd', 'gdfds', 'gdfdsf', NULL, 3, 0, 5, '2021-04-17 00:00:00', '', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (57, NULL, 'asdaszxcxz', NULL, 'upload/client/ddcadaf03fa826bcc75350ca22588f09.png', '', 'zxczx', '', '', '', NULL, 19, 0, 1, '2021-04-18 10:31:07', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (58, NULL, 'Mayesha test', NULL, 'upload/client/1618721256_eecdff234511e7264fcc.png', '', 'bdtask.com', '', '', '', NULL, 19, 0, 2, '2021-04-17 11:47:36', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (59, 'test', 'test', NULL, NULL, '', 'test', 'test', '', '', NULL, 20, 0, 0, '2021-04-18 12:42:11', 'admin@demo.com', 0);
INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (60, NULL, 'who are you?', 'sdfjsdk', NULL, '', 'dfjfkdsjfk\r\n', 'dfdkj\r\n', '', '', NULL, 12, 0, 0, '2021-04-18 04:40:10', 'admin@demo.com', 0);


#
# TABLE STRUCTURE FOR: web_category
#

DROP TABLE IF EXISTS `web_category`;

CREATE TABLE `web_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) NOT NULL,
  `cat_name_en` varchar(100) NOT NULL,
  `cat_name_fr` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `cat_image` varchar(300) DEFAULT NULL,
  `cat_title1_en` varchar(100) DEFAULT NULL,
  `cat_title1_fr` varchar(100) DEFAULT NULL,
  `cat_title2_en` varchar(300) DEFAULT NULL,
  `cat_title2_fr` varchar(300) DEFAULT NULL,
  `menu` int(11) DEFAULT NULL COMMENT '1 = Top Menu, 2 = Footer 1, 3 = Footer 2, 4 = Top and Footer 1, 5 = Top and Footer 2, 0 = Not Menu',
  `position_serial` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (1, 'home', 'Home', 'FranÃ§ais', 0, '', '', 'FranÃ§ais', '', '', 0, NULL, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (2, 'about', 'About', 'FranÃ§ais', 20, 'upload/1618729796_abed39fc2f60d7b91e29.png', '', '', '', '', 0, 2, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (3, 'roadmap', 'RoadMap', 'FranÃ§ais', 0, '', '', '', '', '', 5, 2, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (4, 'token', 'Token', 'FranÃ§ais', 0, '', 'Token Distribution', 'Token Distribution', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 4, 3, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (5, 'team', 'Team', 'FranÃ§ais', 0, '', 'Our Team Member', 'Our Team Member', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 4, 4, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (6, 'faq', 'Faq', 'FranÃ§ais', 0, '', 'Frequently Asked Questions', 'Frequently Asked Questions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 5, 5, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (7, 'blog', 'Blog', 'FranÃ§ais', 0, '', 'Recent Blogs Posts', 'Recent Blogs Posts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 4, 6, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (8, 'contact', 'Contact', 'FranÃ§ais', 0, '', 'For ICO Projects', 'For ICO Projects', 'Coinsurance invests in promising ICO projects. We offer you a funding and access to our community.', 'Coinsurance invests in promising ICO projects. We offer you a funding and access to our community.', 5, 7, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (9, 'ico', 'ICO', 'FranÃ§ais', 7, '', '', '', '', '', 0, NULL, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (10, 'btc', 'BTC', 'FranÃ§ais', 7, '', '', '', '', '', 0, NULL, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (11, 'testimonial', 'Testimonial', '', 0, '', 'Frequently Asked Questions', 'Frequently Asked Questions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 0, 0, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (12, 'regular-questation', 'Regular Questation', 'Regular Questation', 6, '', '', '', '', '', 0, 1, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (13, 'clients-questation', 'Clients Questation', '', 6, '', '', '', '', '', 0, 2, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (14, 'trending-questation', 'Trending Questation', '', 6, '', '', '', '', '', 0, 3, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (15, 'advisors', 'Advisors', 'advisors', 0, '', 'Frequently Asked Questions', 'Frequently Asked Questions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 0, 0, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (16, 'chart', 'Chart', '', 0, '', '', '', '', '', 0, 0, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (17, 'chart-one', 'Chart one', '', 16, '', '', '', '', '', 0, 0, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (18, 'chart-two', 'Chart two', '', 16, '', '', '', '', '', 0, 2, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (19, 'client', 'Client', 'Client', 2, '', '', '', '', '', 0, 0, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (20, 'aboutcoin', 'AboutCoin', '', 2, '', 'Run Your ICO from Anywhere', 'Run Your ICO from Anywhere', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 0, 0, 1);
INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES (21, 'bangladesh', 'bangladesh', 'bangladesh', 20, '/upload/1618730651_9fc8ccbd7d6682369d6d.png', 'bangladesh', 'bangladesh', 'bangladesh', 'bangladesh', 0, 3, 1);


#
# TABLE STRUCTURE FOR: web_language
#

DROP TABLE IF EXISTS `web_language`;

CREATE TABLE `web_language` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `flag` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `web_language` (`id`, `name`, `flag`) VALUES (1, 'Russian Federation', 'ru');


#
# TABLE STRUCTURE FOR: web_news
#

DROP TABLE IF EXISTS `web_news`;

CREATE TABLE `web_news` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) DEFAULT NULL,
  `headline_en` varchar(300) NOT NULL,
  `headline_fr` varchar(300) NOT NULL,
  `article_image` varchar(100) DEFAULT NULL,
  `custom_url` varchar(300) NOT NULL,
  `article1_en` longtext NOT NULL,
  `article1_fr` longtext NOT NULL,
  `article2_en` longtext NOT NULL,
  `article2_fr` longtext NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position_serial` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `publish_by` varchar(20) NOT NULL,
  `edit_history` int(11) NOT NULL,
  PRIMARY KEY (`article_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (1, 'true-flip-enters-the-slot-market-with-chains-code', 'True Flip enters the slot market with Chain’s Code', '', 'upload/news/bd92f765617da2c82d5cef5c1ebde2d3.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-12-27 12:53:21', 'admin@demo.com', 0);
INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (2, 'bitcoin-in-brief-monday-twitter-wields-the-banhammer', 'Bitcoin in Brief Monday: Twitter Wields the Banhammer', '', 'upload/news/c325b409f002e058ddbe9fa5dc07290f.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-12-27 12:54:12', 'admin@demo.com', 0);
INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (3, 'ethereum-price-technical-analysis-ethusd-eyes-more-gains', 'Ethereum Price Technical Analysis – ETH/USD Eyes More Gains', '', 'upload/news/b222d9177c5c522393710d9c10bc0c7f.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-12-27 12:54:22', 'admin@demo.com', 0);
INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (4, 'south-africa-puts-onus-on-taxpayers-to-declare-all-cryptocurrency-income', 'South Africa Puts Onus on Taxpayers to Declare All Cryptocurrency Income', '', 'upload/news/166e293c430bdf835f0c6d6a127e4e13.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-07-29 01:23:13', 'admin@demo.com', 0);
INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (5, 'neo-eos-litecoin-iota-and-stellar-technical-analysis-april-9-2018', 'NEO, EOS, Litecoin, IOTA and Stellar: Technical Analysis April 9, 2018', '', 'upload/news/b731dbe9143e088de015c0c844d40105.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-07-29 01:23:21', 'admin@demo.com', 0);
INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (6, 'why-invest-in-dash', 'Why Invest in Dash?', '', 'upload/news/9d5c09ab5b25569514fa852e2d2c1483.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-07-29 01:25:38', 'admin@demo.com', 0);
INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (7, 'asic-resistance-increasingly-hot-topic-in-crypto-as-monero-forks', 'ASIC Resistance Increasingly Hot Topic in Crypto as Monero Forks', '', 'upload/news/32083222f2430503659756a60d3b0b6b.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-07-29 01:23:28', 'admin@demo.com', 0);
INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (8, 'canadian-mining-giant-hyperblock-acquires-cryptoglobal-for-106-million', 'CANADIAN MINING GIANT HYPERBLOCK ACQUIRES CRYPTOGLOBAL FOR $106 MILLION', '', 'upload/news/e56c8562afa3795f3c4c3ecccc3bfa83.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-07-29 01:23:34', 'admin@demo.com', 0);
INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (9, 'how-can-blockchains-remove-the-pay-to-trade-barrier-in-the-market', 'How Can Blockchains Remove the ‘Pay to Trade’ Barrier in the Market?', '', 'upload/news/2ff94094fcfbe19daf303a479b9fad68.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-07-29 01:23:40', 'admin@demo.com', 0);
INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (10, 'how-blockchain-is-making-it-easier-to-get', 'How Blockchain Is Making It Easier to Get', '', 'upload/news/44807c1619ecc1f8374b8930477187aa.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-07-29 01:23:49', 'admin@demo.com', 0);
INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (11, 'ripple-price-technical-analysis-xrpusd', 'Ripple Price Technical Analysis – XRP/USD', '', 'upload/news/7bb7ce86a91923d1716a3360bd2f5e8a.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-12-27 12:55:44', 'admin@demo.com', 0);
INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (12, 'bitfinex-introduces-trading-for-12-altcoins', 'Bitfinex Introduces Trading for 12 Altcoins', '', 'upload/news/aa977efaa45a12e667f22e021f486e65.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-12-27 12:55:57', 'admin@demo.com', 0);
INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES (13, 'bitcoin-cash-price-trend-including-tether', 'Bitcoin Cash Price Trend Including Tether', '', 'upload/news/e25f96e1e8aad36e4bf3315fc8866d39.jpg', '', 'Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.\r\n\r\n&nbsp;\r\n\r\nPri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.\r\n\r\n&nbsp;\r\n\r\nSplendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.\r\n\r\n&nbsp;\r\n\r\nMollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.\r\n\r\n&nbsp;\r\n\r\nAt mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.\r\n\r\n&nbsp;\r\n\r\nCorpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.\r\n\r\n&nbsp;\r\n\r\nAliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.\r\n\r\n&nbsp;\r\n\r\nVel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.\r\n\r\n&nbsp;\r\n\r\nAperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.\r\n\r\n&nbsp;\r\n\r\nDuo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.\r\n', 'test\r\n', '', '', 9, NULL, 0, '2021-04-18 01:08:35', 'admin@demo.com', 0);


#
# TABLE STRUCTURE FOR: web_slider
#

DROP TABLE IF EXISTS `web_slider`;

CREATE TABLE `web_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_h1_en` varchar(900) DEFAULT NULL,
  `slider_h1_fr` varchar(900) DEFAULT NULL,
  `slider_h2_en` varchar(900) DEFAULT NULL,
  `slider_h2_fr` varchar(900) DEFAULT NULL,
  `slider_h3_en` varchar(900) DEFAULT NULL,
  `slider_h3_fr` varchar(900) DEFAULT NULL,
  `slider_img` varchar(300) DEFAULT NULL,
  `custom_url` varchar(300) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: web_social_link
#

DROP TABLE IF EXISTS `web_social_link`;

CREATE TABLE `web_social_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `web_social_link` (`id`, `name`, `link`, `icon`, `status`, `date`) VALUES (1, 'Facebook', 'https://www.facebook.com', 'facebook', 1, '2018-04-02 07:52:31');
INSERT INTO `web_social_link` (`id`, `name`, `link`, `icon`, `status`, `date`) VALUES (2, 'twitter', 'https://twitter.com', 'tumblr', 1, '2018-07-10 00:12:09');
INSERT INTO `web_social_link` (`id`, `name`, `link`, `icon`, `status`, `date`) VALUES (3, 'google plus', 'https://google-plus.com', 'linkedin', 1, '2018-07-10 00:12:09');
INSERT INTO `web_social_link` (`id`, `name`, `link`, `icon`, `status`, `date`) VALUES (4, 'youtube', 'https://www.youtube.com', 'dribbble', 1, '2018-07-10 00:12:09');
INSERT INTO `web_social_link` (`id`, `name`, `link`, `icon`, `status`, `date`) VALUES (5, 'instagram', 'https://instagram.com', 'instagram', 1, '2018-02-01 01:58:56');


#
# TABLE STRUCTURE FOR: web_subscriber
#

DROP TABLE IF EXISTS `web_subscriber`;

CREATE TABLE `web_subscriber` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`sub_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

