-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2021 at 11:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ico_wallet_dev_v2_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE IF NOT EXISTS `advertisement` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES
(NULL, 'coinmarket-top', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 1, 1, '2021-09-29 09:08:35'),
(NULL, 'coinmarket-bottom', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 2, 1, '2021-09-29 09:09:01'),
(NULL, 'exchange-top', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 1, 1, '2021-09-29 09:09:26'),
(NULL, 'exchange-bottom', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 2, 1, '2021-09-29 09:09:37'),
(NULL, 'news-sidebar-top', 7, 'public/upload/advertisement/dff78ee612b37fc12c9e7fa94839d855.jpg', NULL, 'https://www.bdtask.com/', 6, 1, '2019-01-14 18:56:21'),
(NULL, 'news-sidebar-bottom', 7, 'public/upload/advertisement/7fabc49dd69e0a0d6e111f3fcae0118a.jpg', NULL, 'https://www.bdtask.com/', 7, 1, '2019-01-14 18:59:50'),
(NULL, 'news-top', 7, 'public/upload/advertisement/430370437495d1a5eb9031a7505d2d13.png', NULL, 'https://www.bdtask.com/', 8, 1, '2019-01-14 19:04:08'),
(NULL, 'news-bottom', 7, 'public/upload/advertisement/544f538275dae3b46b917ab60f68c316.png', NULL, 'https://www.bdtask.com/', 9, 1, '2019-01-14 19:11:04'),
(NULL, 'news details-top', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 3, 1, '2021-09-29 09:10:10'),
(NULL, 'news details-bottom', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 4, 1, '2021-09-29 09:10:18'),
(NULL, 'news details-sidebar-top', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 1, 1, '2021-09-29 09:10:25'),
(NULL, 'news details-sidebar-bottom', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 2, 1, '2021-09-29 09:10:33'),
(NULL, 'Price-bottom', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 5, 1, '2021-09-29 09:10:40'),
(NULL, 'Price-top', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 3, 1, '2021-09-29 09:10:48'),
(NULL, 'Price-middle', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 4, 1, '2021-09-29 09:10:59'),
(NULL, 'Price-sidebar-top', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 1, 1, '2021-09-29 09:11:06'),
(NULL, 'Price-sidebar-bottom', 7, 'public/upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 2, 1, '2021-09-29 09:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `coinpayments_payments`
--

CREATE TABLE IF NOT EXISTS `coinpayments_payments` (
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

-- --------------------------------------------------------

--
-- Table structure for table `coin_setup`
--
CREATE TABLE IF NOT EXISTS `coin_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `pair_with` varchar(10) NOT NULL,
  `wallet` varchar(300) NOT NULL,
  `create_wallet` tinyint(1) NOT NULL DEFAULT 0,
  `white_paper` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coin_setup`
--

INSERT INTO `coin_setup` (`id`, `name`, `symbol`, `pair_with`, `wallet`, `create_wallet`, `white_paper`) VALUES
(1, '', '', '', '', 0, 'public/upload/pdf//1630746623_77b090eae12737250c22.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_payments`
--


CREATE TABLE IF NOT EXISTS `crypto_payments` (
  `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `boxID` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `boxType` enum('paymentbox','captchabox') NOT NULL,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `userID` varchar(50) NOT NULL DEFAULT '',
  `countryID` varchar(3) NOT NULL DEFAULT '',
  `coinLabel` varchar(6) NOT NULL DEFAULT '',
  `amount` double(20,8) NOT NULL DEFAULT 0.00000000,
  `amountUSD` double(20,8) NOT NULL DEFAULT 0.00000000,
  `unrecognised` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `addr` varchar(34) NOT NULL DEFAULT '',
  `txID` char(64) NOT NULL DEFAULT '',
  `txDate` datetime DEFAULT NULL,
  `txConfirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `txCheckDate` datetime DEFAULT NULL,
  `processed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
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

-- --------------------------------------------------------

--
-- Table structure for table `dbt_affiliation`
--

CREATE TABLE IF NOT EXISTS `dbt_affiliation` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `commission` double(19,8) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_affiliation`
--

INSERT INTO `dbt_affiliation` (`id`, `type`, `commission`, `status`) VALUES
(1, 'PERCENT', 10.00000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_balance`
--


CREATE TABLE IF NOT EXISTS `dbt_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `balance` double(19,8) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_balance_log`
--

CREATE TABLE IF NOT EXISTS `dbt_balance_log` (
  `log_id` bigint(22) NOT NULL AUTO_INCREMENT,
  `balance_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `transaction_amount` double(19,8) NOT NULL,
  `transaction_fees` double(19,8) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_coin_manager`
--

CREATE TABLE IF NOT EXISTS `dbt_coin_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hold_coin` int(11) NOT NULL,
  `pre_sell` int(11) NOT NULL,
  `sell_available` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_coin_manager`
--

INSERT INTO `dbt_coin_manager` (`id`, `hold_coin`, `pre_sell`, `sell_available`) VALUES
(1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_country`
--

CREATE TABLE IF NOT EXISTS `dbt_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_country`
--

INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(NULL, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(NULL, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(NULL, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(NULL, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(NULL, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(NULL, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(NULL, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(NULL, 'AQ', 'ANTARCTICA', 'Antarctica', 'ATA', NULL, 0),
(NULL, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(NULL, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(NULL, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(NULL, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(NULL, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(NULL, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(NULL, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(NULL, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(NULL, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(NULL, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(NULL, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(NULL, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(NULL, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(NULL, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(NULL, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(NULL, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(NULL, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(NULL, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(NULL, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(NULL, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(NULL, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(NULL, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(NULL, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', 'IOT', NULL, 246),
(NULL, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(NULL, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(NULL, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(NULL, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(NULL, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(NULL, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(NULL, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(NULL, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(NULL, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(NULL, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(NULL, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(NULL, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(NULL, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(NULL, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', 'CXR', NULL, 61),
(NULL, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', 'CCK', NULL, 672),
(NULL, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(NULL, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(NULL, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(NULL, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(NULL, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(NULL, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(NULL, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(NULL, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(NULL, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(NULL, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(NULL, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(NULL, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(NULL, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(NULL, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(NULL, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(NULL, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(NULL, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(NULL, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(NULL, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(NULL, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(NULL, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(NULL, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(NULL, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(NULL, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(NULL, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(NULL, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(NULL, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(NULL, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(NULL, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(NULL, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(NULL, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(NULL, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(NULL, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(NULL, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(NULL, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(NULL, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(NULL, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(NULL, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(NULL, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(NULL, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(NULL, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(NULL, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(NULL, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(NULL, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(NULL, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(NULL, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(NULL, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(NULL, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(NULL, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(NULL, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(NULL, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(NULL, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(NULL, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(NULL, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(NULL, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(NULL, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(NULL, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(NULL, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(NULL, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(NULL, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(NULL, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(NULL, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(NULL, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(NULL, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(NULL, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(NULL, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(NULL, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(NULL, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(NULL, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(NULL, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(NULL, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(NULL, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(NULL, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(NULL, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(NULL, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(NULL, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(NULL, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(NULL, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(NULL, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(NULL, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(NULL, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(NULL, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(NULL, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(NULL, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(NULL, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(NULL, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(NULL, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(NULL, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(NULL, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(NULL, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(NULL, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(NULL, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(NULL, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(NULL, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(NULL, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(NULL, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(NULL, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(NULL, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(NULL, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(NULL, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(NULL, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(NULL, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(NULL, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(NULL, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(NULL, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(NULL, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(NULL, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(NULL, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(NULL, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(NULL, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(NULL, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(NULL, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(NULL, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(NULL, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(NULL, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(NULL, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(NULL, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(NULL, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(NULL, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(NULL, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(NULL, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(NULL, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(NULL, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(NULL, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(NULL, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(NULL, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(NULL, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(NULL, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(NULL, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(NULL, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(NULL, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(NULL, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(NULL, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(NULL, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(NULL, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(NULL, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(NULL, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(NULL, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(NULL, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(NULL, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(NULL, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(NULL, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(NULL, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(NULL, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(NULL, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(NULL, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(NULL, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(NULL, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(NULL, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(NULL, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(NULL, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(NULL, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(NULL, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(NULL, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(NULL, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(NULL, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(NULL, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(NULL, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(NULL, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(NULL, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(NULL, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(NULL, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(NULL, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(NULL, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(NULL, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(NULL, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(NULL, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(NULL, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(NULL, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(NULL, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(NULL, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(NULL, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(NULL, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(NULL, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(NULL, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(NULL, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(NULL, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(NULL, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(NULL, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(NULL, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(NULL, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(NULL, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(NULL, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(NULL, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(NULL, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(NULL, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(NULL, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(NULL, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(NULL, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(NULL, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(NULL, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(NULL, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(NULL, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263),
(NULL, 'RS', 'SERBIA', 'Serbia', 'SRB', 688, 381),
(NULL, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', 0, 0),
(NULL, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', 499, 382),
(NULL, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', 248, 358),
(NULL, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599),
(NULL, 'CW', 'CURACAO', 'Curacao', 'CUW', 531, 599),
(NULL, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', 831, 44),
(NULL, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', 833, 44),
(NULL, 'JE', 'JERSEY', 'Jersey', 'JEY', 832, 44),
(NULL, 'XK', 'KOSOVO', 'Kosovo', '---', 0, 381),
(NULL, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', 652, 590),
(NULL, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', 663, 590),
(NULL, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', 534, 1),
(NULL, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', 728, 211);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_cron`
--


CREATE TABLE IF NOT EXISTS `dbt_cron` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `command` varchar(255) NOT NULL,
  `interval_sec` int(10) NOT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `next_run_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_crypto_transaction`
--

CREATE TABLE IF NOT EXISTS `dbt_crypto_transaction` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `wallet` varchar(300) NOT NULL,
  `data` longtext NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_currency`
--

CREATE TABLE IF NOT EXISTS `dbt_currency` (
  `id` int(11) NOT NULL,
  `icon` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) NOT NULL,
  `rate` double DEFAULT NULL,
  `algorithm` varchar(100) DEFAULT NULL,
  `position` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dbt_currency`
--

INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES
(NULL, '$', 'USD', 'USD', 1, NULL, 0, NULL, 1),
(NULL, '#', 'SPD', 'SPD', 1, NULL, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_deposit`
--

CREATE TABLE IF NOT EXISTS `dbt_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `amount` double(19,8) NOT NULL,
  `method` varchar(50) NOT NULL,
  `fees_amount` double(19,8) NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `deposit_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `stripe_session_id` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Pending, 1= confirm, 2=Cancel',
  `ip` varchar(50) NOT NULL,
  `approved_cancel_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `dbt_exchange`
--

CREATE TABLE IF NOT EXISTS `dbt_exchange` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_exchange_details`
--

CREATE TABLE IF NOT EXISTS `dbt_exchange_details` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_exchange_history`
--

CREATE TABLE IF NOT EXISTS `dbt_exchange_history` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_fees`
--

CREATE TABLE IF NOT EXISTS `dbt_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(100) NOT NULL,
  `fees` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_fees`
--

INSERT INTO `dbt_fees` (`id`, `level`, `fees`, `status`) VALUES
(NULL, 'SELL', 1, 0),
(NULL, 'DEPOSIT', 2, 0),
(NULL, 'TRANSFER', 3, 0),
(NULL, 'WITHDRAW', 2, 0),
(NULL, 'BUY', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_messenger`
--

CREATE TABLE IF NOT EXISTS `dbt_messenger` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_payout_method`
--
CREATE TABLE IF NOT EXISTS `dbt_payout_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) NOT NULL,
  `method` varchar(250) NOT NULL,
  `wallet_id` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_release_setup`
--

CREATE TABLE IF NOT EXISTS `dbt_release_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round_name` varchar(100) NOT NULL,
  `day` tinyint(5) NOT NULL,
  `target` int(11) NOT NULL,
  `fillup_target` double(19,8) NOT NULL,
  `exchange_currency` varchar(100) NOT NULL,
  `start_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `dbt_sms_email_template`
--

CREATE TABLE IF NOT EXISTS `dbt_sms_email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sms_or_email` varchar(10) CHARACTER SET latin1 NOT NULL,
  `template_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `subject_en` varchar(300) CHARACTER SET latin1 NOT NULL,
  `subject_fr` varchar(300) CHARACTER SET latin1 NOT NULL,
  `template_en` varchar(300) CHARACTER SET latin1 NOT NULL,
  `template_fr` varchar(300) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dbt_sms_email_template`
--

INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES
(NULL, 'sms', 'transfer_verification', 'Transfer Verification Code', 'Transfer Verification Code', 'You are about to transfar %amount% to the account %receiver_id% Your code is %code%\r\n', 'Vous ?tes sur le point de transf?rer% amount% sur le compte% receiver_id% Votre code est %code%\r\n'),
(NULL, 'email', 'transfer_verification', 'Transfer Verification', 'Transfer Verification', 'You are about to transfar %amount% to the account %receiver_id%  Your code is %verify_code%', 'Vous ?tes sur le point de transf?rer% amount% sur le compte% receiver_id% Votre code est % varify_code% '),
(NULL, 'sms', 'transfer_success', 'Transfer Confirm', 'Transfer Confirm', 'You successfully transfer The amount $%amount% to the account %receiver_id%. Your new balance is %new_balance%', 'You successfully transfer The amount $%amount% to the account %receiver_id%. Your new balance is %new_balance%'),
(NULL, 'email', 'transfer_success', 'Tranfer Confirm', 'Tranfer Confirm', 'You successfully transfer The amount $%amount% to the account %receiver_id%. Your new balance is %new_balance%', 'You successfully transfer The amount $%amount% to the account %receiver_id%. Your new balance is %new_balance%'),
(NULL, 'sms', 'withdraw_verification', '', 'Withdraw Verification French', 'You Withdraw The Amount Is %amount% The Verification Code is <h1>%varify_code%</h1>', 'You Withdraw The Amount Is %amount% The Verification Code is <h1>%varify_code%</h1>'),
(NULL, 'email', 'withdraw_verification', 'Withdraw Verification', 'Withdraw Verification French', 'You Withdraw The Amount Is %amount% The Verification Code is %varify_code%', 'You Withdraw The Amount Is %amount% The Verification Code is %varify_code%'),
(NULL, 'sms', 'withdraw_success', 'Withdraw Success', 'Withdraw Success', 'Hi, %name% You successfully withdraw the amount is $%amount% from your account. Your new balance is $%new_balance%', 'Hi, %name% You successfully withdraw the amount is $%amount% from your account. Your new balance is $%new_balance%'),
(NULL, 'email', 'withdraw_success', 'Withdraw', 'Withdraw', 'You successfully withdraw the amount is $%amount% from your account. Your new balance is $%new_balance%', 'You successfully withdraw the amount is $%amount% from your account. Your new balance is $%new_balance%'),
(NULL, 'email', 'forgot_password', '', '', 'The Verification Code is <h1>%varify_code%</h1>', 'The Verification Code is <h1>%varify_code%</h1>'),
(NULL, 'sms', 'deposit_success', 'Deposit', 'Deposit', 'Hi, %name% You Successfully  Deposit The Amount Is %amount%  date %date%', 'Hi, %name% You Successfully  Deposit The Amount Is %amount%  date %date%'),
(NULL, 'email', 'deposit_success', 'Deposit', 'Deposit', 'You successfully deposit the amount is %amount%. ', 'You successfully deposit the amount is %amount%. '),
(NULL, 'email', 'registered', 'Account Activation', 'Account Activation', 'Your account was created successfully Please click on the link below to activate your account. %url%\r\n', 'Votre compte a &eacute;t&eacute; cr&eacute;&eacute; avec succ&egrave;s, veuillez cliquer sur le lien ci-dessous pour activer votre compte.&nbsp;%url%\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `dbt_token`
--

CREATE TABLE IF NOT EXISTS `dbt_token` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `token` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `dbt_transfer`
--

CREATE TABLE IF NOT EXISTS `dbt_transfer` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='client to client transfer success, request data recorded.';

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user`
--

CREATE TABLE IF NOT EXISTS `dbt_user` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `dbt_user_cryptowallet`
--

CREATE TABLE IF NOT EXISTS `dbt_user_cryptowallet` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `wallet` varchar(100) NOT NULL,
  `balance` double(19,8) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wallet` (`wallet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user_log`
--

CREATE TABLE IF NOT EXISTS `dbt_user_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_type` varchar(50) NOT NULL COMMENT '"acc_update = User Account Update, login=User Login info, deposit=User Deposit info, transfer=User Transfer info, withdraw=User Withdraw info, open_order="',
  `access_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_agent` varchar(300) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user_verify_doc`
--

CREATE TABLE IF NOT EXISTS `dbt_user_verify_doc` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_verify`
--

CREATE TABLE IF NOT EXISTS `dbt_verify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(250) DEFAULT NULL,
  `session_id` varchar(250) DEFAULT NULL,
  `verify_code` varchar(250) DEFAULT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_withdraw`
--

CREATE TABLE IF NOT EXISTS `dbt_withdraw` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--


CREATE TABLE IF NOT EXISTS `earnings` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Weekly ROI, Monthly ROI, team bonous, direct referal bonous';

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_gateway`
--

CREATE TABLE IF NOT EXISTS `email_sms_gateway` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_sms_gateway`
--

INSERT INTO `email_sms_gateway` (`es_id`, `gatewayname`, `title`, `protocol`, `host`, `port`, `user`, `userid`, `password`, `mailtype`, `charset`, `api`) VALUES
(NULL, 'budgetsms', 'Bdtask SMS', NULL, 'https://api.budgetsms.net/sendsms/?', NULL, 'tradeboxbdtask', '139062', NULL, NULL, NULL, 'b39edd600577b6b3bd16cc69aec82f05'),
(NULL, 'smtp', 'Bbtask mail', 'gsmtp', 'ssl://smtp.gmail.com', '465', 'rdmvaijah@gmail.com', '', 'vai99862', 'html', 'utf-8', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `investment`
--

CREATE TABLE IF NOT EXISTS `investment` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `sponsor_id` varchar(255) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `invest_date` date DEFAULT NULL,
  `day` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `idinvestment_UNIQUE` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All investment and primary investor and referrar information will be stored here.';

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phrase` text CHARACTER SET utf8 NOT NULL,
  `english` text CHARACTER SET utf8 DEFAULT NULL,
  `french` text CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES
(NULL, 'email', 'Email Address', 'Email'),
(NULL, 'password', 'Password', 'Mot de passe'),
(NULL, 'login', 'Log In', 'Connexion'),
(NULL, 'incorrect_email_password', 'Incorrect Email/Password!', 'Mot de passe ou email incorrect'),
(NULL, 'user_role', 'User Role', 'R?le Utilisateur'),
(NULL, 'please_login', 'Please Log In', 'Veuillez vous connecter'),
(NULL, 'setting', 'Setting', 'Reglages'),
(NULL, 'profile', 'Profile', 'Profil'),
(NULL, 'logout', 'Log Out', 'D?connexion'),
(NULL, 'please_try_again', 'Please Try Again', 'Essayez encore !'),
(NULL, 'admin', 'Admin', 'Administrateur'),
(NULL, 'dashboard', 'Dashboard', 'Tableau De Bord'),
(NULL, 'language_setting', 'Language Setting', 'Reglage Langue'),
(NULL, 'status', 'Status', 'Status'),
(NULL, 'active', 'Active', 'Actif'),
(NULL, 'inactive', 'Inactive', 'Inactif'),
(NULL, 'cancel', 'Cancel', 'Annuler'),
(NULL, 'save', 'Save', 'Sauvegarder'),
(NULL, 'serial', 'SL.NO', 'Serial'),
(NULL, 'action', 'Action', 'Action'),
(NULL, 'edit', 'Edit ', 'Editer'),
(NULL, 'delete', 'Delete', 'Supprimer'),
(NULL, 'save_successfully', 'Save Successfully!', 'Sauvegarde reussi'),
(NULL, 'update_successfully', 'Update Successfully!', 'Mise ? jour reussi'),
(NULL, 'delete_successfully', 'Delete successfully!', 'Suppression Reussi'),
(NULL, 'are_you_sure', 'Are You Sure ? ', 'Etes-vous sure?'),
(NULL, 'ip_address', 'IP Address', 'Adresse IP'),
(NULL, 'application_title', 'Application Title', 'Titre appli'),
(NULL, 'favicon', 'Favicon', 'favicon'),
(NULL, 'logo', 'Logo', 'Logo'),
(NULL, 'footer_text', 'Footer Text', 'Titre Footer'),
(NULL, 'language', 'Language', 'Langue'),
(NULL, 'website_title', 'Website Title', 'Titre site web'),
(NULL, 'invalid_logo', 'Invalid Logo', 'Logo invalide'),
(NULL, 'submit_successfully', 'Submit Successfully!', 'Envoi reussi'),
(NULL, 'application_setting', 'Application Setting', 'Reglages appli'),
(NULL, 'invalid_favicon', 'Invalid Favicon', 'Favicon Invalide'),
(NULL, 'submit', 'Submit', 'Envoyez'),
(NULL, 'site_align', 'Website Align', 'Alignement site'),
(NULL, 'right_to_left', 'Right to Left', 'Doite vers la gauche'),
(NULL, 'left_to_right', 'Left to Right', 'Gauche Vers la droite'),
(NULL, 'subject', 'Subject', 'Sujet'),
(NULL, 'receiver_name', 'Send To', 'Nom B?n?ficiaire'),
(NULL, 'select_user', 'Select User', 'Selectionner Utilisateur'),
(NULL, 'message_sent', 'Messages Sent', 'Message Envoy?'),
(NULL, 'mail', 'Mail', 'Mail'),
(NULL, 'send_mail', 'Send Mail', 'Envoyer Mail'),
(NULL, 'mail_setting', 'Mail Setting', 'Reglage mail'),
(NULL, 'protocol', 'Protocol', 'Protocole'),
(NULL, 'mailpath', 'Mail Path', 'Repertoire Mail'),
(NULL, 'mailtype', 'Mail Type', 'Type mail'),
(NULL, 'validate_email', 'Validate Email Address', 'Validez votre Email'),
(NULL, 'true', 'True', 'Vraie'),
(NULL, 'false', 'False', 'faux'),
(NULL, 'attach_file', 'Attach File', 'Joindre un document'),
(NULL, 'wordwrap', 'Enable Word Wrap', 'Wordwrap'),
(NULL, 'send', 'Send', 'Envoyer'),
(NULL, 'app_setting', 'App Setting', 'Reglages appli'),
(NULL, 'sms', 'SMS', 'SMS'),
(NULL, 'gateway_setting', 'Gateway Setting', 'Reglage portail'),
(NULL, 'time_zone', 'Time Zone', 'Time Zone'),
(NULL, 'provider', 'Provider', 'Fournisseur'),
(NULL, 'sms_template', 'SMS Template', 'Template SMS'),
(NULL, 'template_name', 'Template Name', 'Nom Du Mod?le'),
(NULL, 'sms_schedule', 'SMS Schedule', 'Emploi du temps SMS'),
(NULL, 'schedule_name', 'Schedule Name', 'Nom d\'horaire'),
(NULL, 'time', 'Time', 'Heure'),
(NULL, 'already_exists', 'Already Exists', 'Existe d?j?'),
(NULL, 'send_custom_sms', 'Send Custom SMS', 'Envoyer SMS personalis?'),
(NULL, 'sms_sent', 'SMS Sent!', 'SMS envoy?'),
(NULL, 'custom_sms_list', 'Custom SMS List', 'List SMS personalis?'),
(NULL, 'reciver', 'Reciver', 'B?n?ficiaire'),
(NULL, 'auto_sms_report', 'Auto SMS Report', 'Rapport SMS Auto'),
(NULL, 'user_sms_list', 'User SMS List', 'Liste SMS utilisateurs'),
(NULL, 'send_sms', 'Send SMS', 'Envoyer SMS'),
(NULL, 'new_sms', 'New SMS', 'Nouveau Message'),
(NULL, 'update', 'Update', 'Mettre à Jour'),
(NULL, 'reset', 'Reset', 'Reinitialiser'),
(NULL, 'messages', 'Messages', 'Messages'),
(NULL, 'inbox', 'Inbox', 'Boite de r?ception'),
(NULL, 'sent', 'Sent', 'Envoy?'),
(NULL, 'captcha', 'Captcha', 'Captcha'),
(NULL, 'welcome_back', 'Welcome back ', 'Bienvenue ? nouveau !'),
(NULL, 'inbox_message', 'Inbox Message', 'SMS Boite de r?ception'),
(NULL, 'image_upload_successfully', 'Image Upload Successfully.', 'Upload d\'image reussi'),
(NULL, 'users', 'Users', 'Utilisateurs'),
(NULL, 'add_user', 'Add User', 'Ajouter utilisateur'),
(NULL, 'user_list', 'User List', 'Liste D\'utilisateur'),
(NULL, 'firstname', 'First Name', 'Nom'),
(NULL, 'lastname', 'Last Name', 'Pr?noms'),
(NULL, 'about', 'About', 'A propos de nous'),
(NULL, 'preview', 'Preview', 'Visualliser'),
(NULL, 'last_login', 'Last Login', 'Derni?re connexion'),
(NULL, 'last_logout', 'Last Logout', 'Derni?re D?connexion'),
(NULL, 'image', 'Image', 'Image'),
(NULL, 'fullname', 'Full Name', 'Nom Complet'),
(NULL, 'new_message', 'New Message', 'Nouveau Message'),
(NULL, 'message', 'Message', 'Un Message'),
(NULL, 'sender_name', 'Sender Name', 'Nom de l\'exp?diteur'),
(NULL, 'sl_no', 'Sl No', 'Sl Non'),
(NULL, 'message_details', 'Message Details', 'D?tails message'),
(NULL, 'date', 'Date', 'Date'),
(NULL, 'select_option', 'Select Option', 'Selectionner Option'),
(NULL, 'edit_profile', 'Edit Profile', 'Editer Profile'),
(NULL, 'edit_user', 'Edit User', 'Editer utilisateur'),
(NULL, 'sent_message', 'Sent Message', 'Message Envoy?'),
(NULL, 'sub_admin', 'Sub Admin', 'Sub Administrateur'),
(NULL, 'admin_list', 'Admin List', 'List Administrateurs'),
(NULL, 'add_admin', 'Add Admin', 'Ajouter Administrateur'),
(NULL, 'edit_admin', 'Edit Admin', 'Editer Admin'),
(NULL, 'username', 'Username', 'Nom utilisateur'),
(NULL, 'sponsor_id', 'Sponsor ID', 'ID sponsor'),
(NULL, 'mobile', 'Mobile', 'Mobile'),
(NULL, 'register', 'Register', 'Enregistrer'),
(NULL, 'conf_password', 'Confirm Password', 'Reglage mot de passe'),
(NULL, 'user_id', 'User ID', 'ID utilisateur'),
(NULL, 'package', 'Package', 'Pack'),
(NULL, 'create', 'Create', 'Cr?er'),
(NULL, 'package_name', 'Package Name', 'Nom du pack'),
(NULL, 'package_deatils', 'Package Deatils', 'Detail pack'),
(NULL, 'package_amount', 'Package Amount', 'Montant pack'),
(NULL, 'daily_roi', 'Daily ROI', 'ROI journalier'),
(NULL, 'weekly_roi', 'Weekly ROI', 'ROI Hebdomadaire'),
(NULL, 'monthly_roi', 'Monthly ROI', 'ROI Mensuel'),
(NULL, 'yearly_roi', 'Yearly ROI', 'ROI annuel'),
(NULL, 'total_percent', 'Total Percent', 'Poucentage Total'),
(NULL, 'add_package', 'Add Package', 'Ajouter un Pack'),
(NULL, 'edit_package', 'Edit Package', 'Editer Pack'),
(NULL, 'package_list', 'Package List', 'Liste Packs'),
(NULL, 'withdraw', 'Withdraw', 'Retirer'),
(NULL, 'request', 'Request', 'Requ?te'),
(NULL, 'success', 'Success', 'Succ?s ! '),
(NULL, 'request_date', 'Request Date', 'Date Requ?te'),
(NULL, 'payment_method', 'Payment Method', 'Methode de paiement'),
(NULL, 'amount', 'Amount', 'Montant'),
(NULL, 'charge', 'Charge', 'Frais'),
(NULL, 'total', 'Total', 'Le Total'),
(NULL, 'comments', 'Comments', 'Commentaires'),
(NULL, 'pending', 'Pending', 'En cours'),
(NULL, 'cancel_date', 'Cancel Date', 'Annuler date'),
(NULL, 'block_list', 'Block List', 'Liste Noire'),
(NULL, 'commission', 'Commission', 'Commission'),
(NULL, 'setup', 'Setup', 'Regler'),
(NULL, 'setup_list', 'Setup List', 'Liste de reglage'),
(NULL, 'commission_list', 'Commission List', 'Liste Commission'),
(NULL, 'level_name', 'Level Name', 'Nom du stage'),
(NULL, 'personal_invest', 'Personal Invest', 'Mon investissement'),
(NULL, 'total_invest', 'Total Invest', 'Total Investissement'),
(NULL, 'team_bonous', 'Team Bonous', 'Bonus d\'Equipe'),
(NULL, 'referral_bonous', 'Referral Bonous', 'Bonus parrainage'),
(NULL, 'form_submit_msg', 'Insert Successfully', 'Envoyer formulaire'),
(NULL, 'transection_category', 'Transaction Category', 'Cat?gorie Transaction'),
(NULL, 'transfer_add_msg', 'Transfer Successfully', 'Ajouter SMS transfert'),
(NULL, 'transfer', 'Transfer', 'Transfert'),
(NULL, 'deposit', 'Deposit', 'Depot'),
(NULL, 'add_deposit', 'Add Deposit', 'Effectuer un Depot'),
(NULL, 'deposit_list', 'Deposit List', 'Liste De Dépôt'),
(NULL, 'team', 'Team', 'Équipe'),
(NULL, 'investment', 'Investment', 'Investissement personnel'),
(NULL, 'notification', 'Notification', 'Notification'),
(NULL, 'receiver_id', 'Receiver Id', 'ID B?n?ficiaire'),
(NULL, 'comment', 'Comments', 'Commentaire'),
(NULL, 'otp_send_to', 'OTP Send To', 'OTP envoyer ?'),
(NULL, 'transection', 'Transaction', 'Transactions'),
(NULL, 'buy', 'Buy', 'Acheter'),
(NULL, 'balance', 'Balance', 'Solde de compte'),
(NULL, 'deposit_amount', 'Deposit Amount', 'Montant Depot'),
(NULL, 'deposit_method', 'Deposit Method', 'Methode depot'),
(NULL, 'deposit_wallet_id', 'Deposit Wallet Id', 'Wallet ID'),
(NULL, 'confirm_transfer', 'Confirm Transfer', 'Confirmer transfert'),
(NULL, 'transfer_amount', 'Transfer Amount', 'Montant Transfert'),
(NULL, 'enter_verify_code', 'Enter Verify Code', 'Entrer code de v?rification'),
(NULL, 'confirm', 'Confirm', 'Confirmer'),
(NULL, 'deopsit_add_msg', 'Deposit Add Successfully.', 'Depot effectu? avec succ?s'),
(NULL, 'transfar_recite', 'Transfer Recite', 'Re?u de transfert'),
(NULL, 'earn', 'Earn', 'Gagner'),
(NULL, 'balance_is_unavailable', 'Balance Is not sufficient', 'Solde insuffisant'),
(NULL, 'package_buy_successfully', 'Package Buy Successfully!', 'Achat du package reussi ! '),
(NULL, 'withdraw_recite', 'Withdraw Recite', 'Re?u de retrait'),
(NULL, 'withdraw_confirm', 'withdraw Confirm', 'Confirmation Retrait'),
(NULL, 'change_verify', 'Confirm Verify', 'Changer Verification'),
(NULL, 'change_password', 'Password Change', 'Changer mot de passe'),
(NULL, 'enter_confirm_password', 'Enter Confirm Password', 'Confirmer mot de passe'),
(NULL, 'enter_new_password', 'Enter New Password', 'Entrer nouveau mot de passe'),
(NULL, 'enter_old_password', 'Enter Old Password', 'Entrer ancien mot de passe'),
(NULL, 'change', 'Change', 'Changer'),
(NULL, 'password_change_successfull', 'Password Change Successfully', 'Mot de passe chang? avec succ?s'),
(NULL, 'old_password_is_wrong', 'Old Password Is Wrong', 'Entrer ancien mot de passe incorrect'),
(NULL, 'fees_setting', 'Fees Setting', 'Reglages frais'),
(NULL, 'level', 'Level', 'Stage'),
(NULL, 'select_level', 'Select Level', 'Selectionner stage'),
(NULL, 'fees_setting_successfully', 'Fees Setting Successfully', 'Reglages Frais reussi'),
(NULL, 'bitcoin', 'Bitcoin', 'Bitcoin'),
(NULL, 'payeer', 'Payeer', 'Payeer'),
(NULL, 'name', 'Name', 'Nom'),
(NULL, 'order_id', 'Order Id', 'ID de commande'),
(NULL, 'fees', 'Fees', 'Frais'),
(NULL, 'period', 'Period', 'P?riode'),
(NULL, 'commission_ret', 'Commission Ret', 'Commission ret'),
(NULL, 'title', 'Title', 'Titre'),
(NULL, 'details', 'Details', 'Details'),
(NULL, 'personal_info', 'Personal Information', 'Informations personnels'),
(NULL, 'sponsor_info', 'Sponsor Information', 'Info Sponsor'),
(NULL, 'affiliate_url', 'Affiliat Url', 'Lien parrainage'),
(NULL, 'copy', 'Copy', 'Copier'),
(NULL, 'my_payout', 'My Payout', 'Mes Paiements'),
(NULL, 'personal_sales', 'Personal Sales', 'Ventes Personnelles'),
(NULL, 'bank_details', 'Bank Details', 'Details de banque'),
(NULL, 'beneficiary_name', 'Beneficiary Name', 'Nom Beneficiaire'),
(NULL, 'bank_name', 'Bank Name', 'Nom de banque'),
(NULL, 'branch', 'Branch', 'Branche'),
(NULL, 'account_number', 'Account Number', 'Num?ro de compte'),
(NULL, 'ifsc_code', 'IFC Code', 'Code IFSC'),
(NULL, 'account', 'Account', 'Compte'),
(NULL, 'my_commission', 'My Commission', 'Mes commissions'),
(NULL, 'finance', 'Finance', 'La Finance'),
(NULL, 'exchange', 'Exchange', 'échange'),
(NULL, 'bitcoin_setting', 'Bitcoin Setting', 'Reglages bitcoin'),
(NULL, 'payeer_setting', 'Payeer Setting', 'Reglages Payeer'),
(NULL, 'bank_information', 'Bank Information', 'Infos de banque'),
(NULL, 'bitcoin_wallet_id', 'Bitcoin Wallet ID', 'Wallet Bitcoin'),
(NULL, 'payment_method_setting', 'Payment Method Setting', 'Reglage methode de paiement'),
(NULL, 'payeer_wallet_id', 'Payeer Wallet Id', 'ID Payeer'),
(NULL, 'my_package', 'My Package', 'Mes packs'),
(NULL, 'my_team', 'My Team', 'Mon Equipe'),
(NULL, 'receipt', 'Receipt', 'R??u'),
(NULL, 'withdraw_successfull', 'Withdraw Successfully', 'Retrait reussi !'),
(NULL, 'team_bonus', 'Team Bonus', 'Bonus d\'Equipe'),
(NULL, 'withdraw_list', 'Withdraw List', 'Liste De Retrait'),
(NULL, 'pending_withdraw', 'Pending Withdraw', 'En Attente De Retrait'),
(NULL, 'reciver_account', 'Receiver Account', 'Compte B?n?ficiaire'),
(NULL, 'french', 'French', 'Fran?ais'),
(NULL, 'commission_setup', 'Commission Setup', 'Reglage commission'),
(NULL, 'personal_investment', 'Personal Investment', 'Investissement personnel'),
(NULL, 'total_investment', 'Total investment', 'Total Investissement'),
(NULL, 'transfer_list', 'Transfer List', 'Liste transfert'),
(NULL, 'form_to', 'From To', ''),
(NULL, 'receive', 'Receive', ''),
(NULL, 'wallet_id', 'Wallet Id', 'ID Wallet'),
(NULL, 'withdraw_details', 'Withdraw Details', 'Details retraits'),
(NULL, 'generation_one', 'Generation One', 'G?n?ration 1'),
(NULL, 'generation_two', 'Generation Two', 'G?n?ration 2'),
(NULL, 'generation_three', 'Generation Three', 'G?n?ration 3'),
(NULL, 'generation_four', 'Generation Four', 'G?n?ration 4'),
(NULL, 'generation_five', 'Generation Five', 'G?n?ration 5'),
(NULL, 'generation_empty_message', 'You Have No Generation', ''),
(NULL, 'view', 'View', 'Aper?u'),
(NULL, 'cancle', 'Cancel', 'Annuler'),
(NULL, 'type', 'Type', 'Type'),
(NULL, 'your_total_balance_is', 'Your Total Balance Is', 'Votre montant total est de'),
(NULL, 'bonus', 'Bonus', 'Bonus'),
(NULL, 'personal_turnover', 'Sponser Turnover', 'Mon Chiffre d\'affaire perso'),
(NULL, 'team_turnover', 'Team Turnover', 'Chiffre d\'affaire Equipe'),
(NULL, 'post_article', 'Post Article', ''),
(NULL, 'article_list', 'Article List', 'LIste article'),
(NULL, 'add_article', 'Add Article', 'Ajouter article'),
(NULL, 'headline_en', 'Headline English', 'Titre EN'),
(NULL, 'headline_fr', 'Headline French', 'Titre  FR'),
(NULL, 'article_en', 'Article English', 'Article EN'),
(NULL, 'article_fr', 'Article French', 'Article FR'),
(NULL, 'edit_article', 'Edit Article', 'Editer article'),
(NULL, 'cat_list', 'Category List', 'Liste panier'),
(NULL, 'add_cat', 'Add Category', 'Ajouter au panier'),
(NULL, 'parent_cat', 'Parent Category', ''),
(NULL, 'cat_name_en', 'Category Name English', 'Nom panier EN'),
(NULL, 'cat_name_fr', 'Category Name French', 'Nom panier FR'),
(NULL, 'cat_title_en', 'Category Title English', 'Titre Panier EN'),
(NULL, 'cat_title_fr', 'Category Title French', 'Titre panier FR'),
(NULL, 'select_cat', 'Select Category', 'Selectionner Cat'),
(NULL, 'edit_cat', 'Edit Category', 'Editer Panier'),
(NULL, 'position_serial', 'Position Serial', ''),
(NULL, 'currency_list', 'Currency List', 'Liste de devise'),
(NULL, 'currency', 'Currency', 'Monnaie'),
(NULL, 'cryptocurrency_name', 'CryptoCurrency  Name', 'Nom Crypto monnaie'),
(NULL, 'select_cryptocurrency', 'Select Cryptocurrency', 'Selectionner Crypto'),
(NULL, 'edit_currency', 'Edit Currency', 'Editer Devise'),
(NULL, 'exchange_list', 'Exchange List', 'Liste ?changes'),
(NULL, 'add_exchange', 'Add Exchange', 'Ajouter Echange'),
(NULL, 'edit_exchange', 'Edit Exchange', 'Editer Echange'),
(NULL, 'wallet_data', 'Wallet ID', 'Donn?es Wallet'),
(NULL, 'sell_adjustment', 'Sell Adjustment', 'Ajustement Vente'),
(NULL, 'buy_adjustment', 'Buy Adjustment', ''),
(NULL, 'exchange_wallet', 'Exchange Wallet', 'Wallet Echange'),
(NULL, 'exchange_wallet_list', 'Exchange Wallet List', 'Liste Wallet echange'),
(NULL, 'add_exchange_wallet', 'Add Exchange Wallet', 'Ajouter Wallet'),
(NULL, 'edit_exchange_wallet', 'Edit Exchange Wallet', 'Modifier Wallet echange'),
(NULL, 'local_currency_list', 'Local Currency List', 'LIste  Monnaies locales'),
(NULL, 'local_currency', 'Local Currency', 'Devise Locale'),
(NULL, 'add_local_currency', 'Add Local Currency', 'Ajouter Monnaie'),
(NULL, 'edit_local_currency', 'Edit Local Currency', 'Editer Devise locale'),
(NULL, 'currency_name', 'Currency Name', 'Nom devise'),
(NULL, 'currency_iso_code', 'Currency ISO Code', 'Code ISO devise '),
(NULL, 'usd_exchange_rate', 'USD Exchange Rate', 'Taux d\'echange USD'),
(NULL, 'currency_symbol', 'Currency Symbol', 'Symboles Devise'),
(NULL, 'symbol_position', 'Symbol Position', 'Position symbole'),
(NULL, 'currency_position', 'Currency Position', 'Position devise'),
(NULL, 'payment_gateway', 'Payment Gateway', 'Passerelle De Paiement'),
(NULL, 'gateway_name', 'Gateway Name', 'Nom passerelle'),
(NULL, 'gateway_setting', 'Gateway Setting', 'Reglage portail'),
(NULL, 'add_payment_gateway', 'Add Payment Gateway', 'Ajouter Methode paiment'),
(NULL, 'public_key', 'Public Key', 'Cl? publique'),
(NULL, 'private_key', 'Private Key', ''),
(NULL, 'shop_id', 'Shop ID', 'ID shop'),
(NULL, 'secret_key', 'Secret Key', 'Cl? secrete'),
(NULL, 'edit_payment_gateway', 'Edit Payment Gateway', 'Editer Methode de paiement'),
(NULL, 'slider_list', 'Slider List', ''),
(NULL, 'add_slider', 'Add Slider', 'Ajouter Slider'),
(NULL, 'headline', 'Headline', 'Titre'),
(NULL, 'edit_slider', 'Edit Slider', ''),
(NULL, 'social_app', 'Social App', ''),
(NULL, 'edit_social_app', 'Edit Social App', 'Editer RS appli'),
(NULL, 'social_link', 'Social Link', ''),
(NULL, 'add_link', 'Add Link', 'Ajouter Lien'),
(NULL, 'link', 'Link', 'Lien'),
(NULL, 'icon', 'Icon', 'Ic?ne'),
(NULL, 'edit_social_link', 'Edit Social Link', 'Edit les liens RS'),
(NULL, 'transection_info', 'Transection Info', 'Info transaction'),
(NULL, 'sell', 'Sell', 'Vendre'),
(NULL, 'article', 'Article', 'Article'),
(NULL, 'coin_amount', 'Coin Amount', 'Montat Crypto'),
(NULL, 'coin_name', 'Coin Name', 'Nom Crypto'),
(NULL, 'buy_amount', 'Buy Amount', 'Montant achat'),
(NULL, 'sell_amount', 'Sell Amount', 'Montant ? vendre'),
(NULL, 'wallet_data', 'Wallet ID', 'Donn?es Wallet'),
(NULL, 'usd_amount', 'USD Amount', 'Montant USD'),
(NULL, 'rate_coin', 'Coin Rate', 'Taux coin'),
(NULL, 'local_amount', 'Local Amount', 'Montant Local'),
(NULL, 'om_name', 'OM Name', 'Nom OM'),
(NULL, 'om_mobile_no', 'OM Phone No', 'N? OM'),
(NULL, 'transaction_no', 'Transaction No', 'N? de transaction'),
(NULL, 'idcard_no', 'ID Card No', 'N? CNI'),
(NULL, 'buy_list', 'Buy List', 'Buy list'),
(NULL, 'add_buy', 'Add Buy', 'Ajouter Achat'),
(NULL, 'transection_type', 'Transection Type', 'Type de transaction'),
(NULL, 'payment_successfully', 'Payment Successfully', 'Paiement effectu?'),
(NULL, 'payment_cancel', 'Payment Cancel', 'Paiement annul?'),
(NULL, 'payment_successfully', 'Payment Successfully', 'Paiement effectu?'),
(NULL, 'sell_list', 'Sell List', 'LIste de vente '),
(NULL, 'add_sell', 'Add Sell', 'Ajouter Vente'),
(NULL, 'edit_sell', 'Edit Sell', ''),
(NULL, 'account_active_mail', 'Please check Email to activate your account', 'Activer votre mail'),
(NULL, 'accept_terms_privacy', 'Crypto Privacy policy and Terms of Use', 'Accepter conditions et termes'),
(NULL, 'username_used', 'Username Already Used', 'Nom d\'utilisateur d?j? utilis?'),
(NULL, 'account_create_success_social', 'Account Created Successfully and Your Account activated', 'Compte cr?e avec succ?s'),
(NULL, 'email_used', 'Email Already Used', 'Adresse mail d?j? utilis?'),
(NULL, 'account_create_active_link', 'Account Created Successfully. Activation link send your Email address', 'Lien d\'activation'),
(NULL, 'active_account', 'Active Account', 'Compte actif'),
(NULL, 'wrong_try_activation', 'Wrong Try', 'Mauvaise activation'),
(NULL, 'pay_now', 'Pay Now', 'Payer maintenant'),
(NULL, 'payment_successfully', 'Payment Successfully', 'Paiement effectu?'),
(NULL, 'sell_successfully', 'Sell Successfully', 'Vente effectu?e avec succ?s'),
(NULL, 'already_clicked', 'Already Clicked There', 'D?ja Valid?'),
(NULL, 'user_info', 'User Info', 'info utilisateur'),
(NULL, 'user_id', 'User ID', 'ID utilisateur'),
(NULL, 'registered_ip', 'Registered IP', ''),
(NULL, 'requested_ip', 'Requested IP', ''),
(NULL, 'transaction_status', 'Transaction Status', 'Status de la transaction'),
(NULL, 'receive_status', 'receive_status', ''),
(NULL, 'receive_complete', 'Receive Complete', ''),
(NULL, 'payment_status', 'Payment Status', 'Status de paiement'),
(NULL, 'payment_complete', 'Payment Complete', 'Paiement complet'),
(NULL, 'url', 'URL', 'url'),
(NULL, 'app_id', 'App ID', 'ID appli'),
(NULL, 'app_secret', 'App Secret', 'Secret Appli'),
(NULL, 'api_key', 'API Key', 'Cl? API'),
(NULL, 'app_name', 'App Name', 'Nom Appli'),
(NULL, 'social_list', 'Social List', ''),
(NULL, 'select_payment_method', 'Select Payment Method', 'Selectionner mode de paiement'),
(NULL, 'payable', 'Payable', ''),
(NULL, 'rate', 'Rate', 'Taux'),
(NULL, 'how_do_you_receive_money', 'How do you receive money', 'Comment Re?evoir votre argent'),
(NULL, 'withdraw_method', 'Withdraw Method', 'Methode de retrait'),
(NULL, 'select_withdraw_method', 'Select Withdraw Method', 'Selectionner m?thode de retrait'),
(NULL, 'account_info', 'Account Info', 'Info compte'),
(NULL, 'upload_docunemts', 'Upload Docunemts', 'Ajouter fichier'),
(NULL, 'my_generation', 'My Generation', 'Mon Equipe'),
(NULL, 'category', 'Category', 'Cat?gorie'),
(NULL, 'slider_h1_en', 'Slider H1 English', ''),
(NULL, 'slider_h1_fr', 'Slider H1 French', ''),
(NULL, 'slider_h2_en', 'Slider H2 English', ''),
(NULL, 'slider_h2_fr', 'Slider H2 French', ''),
(NULL, 'slider_h3_en', 'Slider H3 English', ''),
(NULL, 'slider_h3_fr', 'Slider H3 French', ''),
(NULL, 'complete', 'Complete', 'Complet'),
(NULL, 'refresh_currency', 'Refresh Currency', ''),
(NULL, 'cryptocurrency', 'Crypto Currency', 'Crypto Monnaie'),
(NULL, 'symbol', 'Symbol', 'Symbole'),
(NULL, 'please_select_cryptocurrency_first', 'Please Select CryptoCurrency First', 'Veuillez choisir une crypto monnaie'),
(NULL, 'please_select_diffrent_payment_method', 'Please select Diffrent Payment Method', 'Selectionner une autre m?thode de paiement'),
(NULL, 'add_credit', 'Add Credit', 'Ajouter Un Crédit'),
(NULL, 'credit', 'Credit', 'Cr?dit'),
(NULL, 'credit_list', 'Credit List', 'Liste De Crédit'),
(NULL, 'notes', 'Note', 'Notes'),
(NULL, 'my_level_info', 'My Level Info', 'Info Niveau'),
(NULL, 'slider', 'Slider', 'Slider'),
(NULL, 'exchange_setting', 'Exchange Setting', 'Paramètre D\'échange'),
(NULL, 'exchange_all_request', 'Exchange all Request', 'Toutes requ?tes echanges'),
(NULL, 'total_user', 'Total User', 'Nombre d\'utilisateurs'),
(NULL, 'total_roi', 'Total ROI', 'Total ROI'),
(NULL, 'total_commission', 'Total Commission', 'Total commission'),
(NULL, 'download_pdf', 'Download PDF', 'T?l?charger '),
(NULL, 'view_all_news', 'View all news', 'Aper?u News'),
(NULL, 'download_company_brochure', 'Download Company Brochure', 'T?l?chargez notre brochure'),
(NULL, 'get_in_touch', 'Get in touch', 'Contactez-nous'),
(NULL, 'read_more', 'Read More', 'Lire plus'),
(NULL, 'know_more', 'Know more', 'Savoir plus'),
(NULL, 'choose_plan', 'Choose plan', 'acheter'),
(NULL, 'latest_jobs', 'Latest Jobs', 'Latest Jobs'),
(NULL, 'website', 'Website', 'website'),
(NULL, 'chose_one_of_the_following_methods', 'Chose One of the Following Methods.', 'chose_one_of_the_following_methods.'),
(NULL, 'sign_in_using_your_email_address', 'Sign in Using Your Email Address', 'Connectez-vous avec votre username ou email'),
(NULL, 'forgot_password', 'Forgot Password', 'Forgot Password'),
(NULL, 'remember_me', 'Remember me', 'Remember me'),
(NULL, 'username_or_email', 'Username or email', 'Username or email'),
(NULL, 'dont_have_an_account', 'Don\'t have an account', 'Don\'t have an account'),
(NULL, 'sign_up_now', 'Sign up Now', 'Cr?er un compte maintenant'),
(NULL, 'send_code', 'Send Code', 'Send Code'),
(NULL, 'sign_up', 'Sign Up', 'Cr?er un compte'),
(NULL, 'already_user', 'Already User', 'Already User'),
(NULL, 'sign_in_now', 'Sign In Now', 'Connectez-vous maintenant'),
(NULL, 'sign_up_for_free', 'Sign Up For Free', 'Cr?er un compte gratuitement'),
(NULL, 'join_thousands_of_companies_that_Use_globalcrypt_every_day', 'Join Thousands of Companies that Use Global Crypto Every Day', 'Join Thousands of Companies that Use Global Crypto Every Day'),
(NULL, 'your_password_at_global_crypto_are_encrypted_and_secured', 'Your Password at Global Crypto are encrypted and Secured', 'Votre mot de passe Global Crypto est crypt? et securis?'),
(NULL, 'email_username_used', 'Email/Username Already Used', 'Email/Username Already Used'),
(NULL, 'address', 'Address', 'Address'),
(NULL, 'phone', 'Phone', 'Phone'),
(NULL, 'admin_align', 'Admin Align', 'Admin Align'),
(NULL, 'office_time', 'Office Time', 'Office Time'),
(NULL, 'logo_web', 'WebSite Logo', 'WebSite Logo'),
(NULL, 'dashboard_logo', 'Dashboard Logo', 'Dashboard Logo'),
(NULL, 'advertisement', 'Advertisement', 'Advertisement'),
(NULL, 'script', 'Script', 'Script'),
(NULL, 'add_advertisement', 'Add Advertisement', 'Add Advertisement'),
(NULL, 'page', 'Page', 'Page'),
(NULL, 'embed_code', 'Embed code', 'Embed code'),
(NULL, 'add_type', 'Add Type', 'Add Type'),
(NULL, 'edit_advertisement', 'Edit Advertisement', 'Edit Advertisement'),
(NULL, 'host', 'Host', 'Host'),
(NULL, 'port', 'Port', 'Port'),
(NULL, 'apikey', 'API Key', 'API Key'),
(NULL, 'mail_type', 'Mail Type', 'Mail Type'),
(NULL, 'charset', 'Charset', 'Charset'),
(NULL, 'news', 'News', 'News'),
(NULL, 'news_list', 'News List', 'Liste Des Nouvelles'),
(NULL, 'edit_news', 'Edit News', 'Edit News'),
(NULL, 'post_news', 'Post News', 'Post News'),
(NULL, 'close', 'Close', 'Close'),
(NULL, 'contact_us', 'Contact Us', 'Contact Us'),
(NULL, 'watch_video', 'WATCH VIDEO', 'WATCH VIDEO'),
(NULL, 'about_bitcoin', 'About Bitcoin', 'About Bitcoin'),
(NULL, 'get_start', 'Get Start', 'Get Start'),
(NULL, 'cryptocoins', 'Crypto Coins', 'Crypto Coins'),
(NULL, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter!', 'Subscribe to our newsletter!'),
(NULL, 'email_newslatter', 'Email Newsletter', 'Email Newsletter'),
(NULL, 'services', 'Services', 'Services'),
(NULL, 'our_company', 'Our Company', 'Our Company'),
(NULL, 'sign_in', 'Sign In', 'Connectez-vous'),
(NULL, 'join_the_new_yera_of_cryptocurrency_exchange', 'Join the new Yera of cryptocurrency exchange', 'Join the new Yera of cryptocurrency exchange'),
(NULL, 'access_the_cryptocurrency_experience_you_deserve', 'Access the cryptocurrency experience you deserve', 'Access the cryptocurrency experience you deserve'),
(NULL, 'home', 'Home', 'Home'),
(NULL, 'scroll_to_top', 'Scroll to Top', 'Scroll to Top'),
(NULL, 'ticker', 'Ticker', 'Ticker'),
(NULL, 'price', 'Price', 'Price'),
(NULL, 'capitalization', 'Capitalization', 'Capitalization'),
(NULL, '1d_change', '1D change', '1D change'),
(NULL, 'graph_24h', 'Graph 24H', 'Graph 24H'),
(NULL, 'recent_post', 'Recent Post', 'Recent Post'),
(NULL, 'my_social_link', 'My Social link', 'My Social link'),
(NULL, 'tell_us_about_your_project', 'Tell Us About Your Project', 'Tell Us About Your Project'),
(NULL, 'company', 'Company', 'Company'),
(NULL, 'reset_your_password', 'Reset Your Password', 'Reset Your Password'),
(NULL, '24h_change', '24H change', '24H change'),
(NULL, '24h_volume', '24H Volume', '24H Volume'),
(NULL, 'latitudelongitude', 'Latitude, Longitude', 'Latitude, Longitude'),
(NULL, 'send_money', 'Send Money', 'Send Money'),
(NULL, 'article2', 'Article 2', 'article 2'),
(NULL, 'contact', 'Contact', 'contact'),
(NULL, 'team', 'Team', 'Équipe'),
(NULL, 'client', 'Client', 'client'),
(NULL, 'service', 'Service', 'service'),
(NULL, 'testimonial', 'Testimonial', 'Témoignage'),
(NULL, 'faq', 'F.A.Q', 'faq'),
(NULL, 'short_description_en', 'Short description english', 'Short Description'),
(NULL, 'long_description_en', 'Long description English', 'Long Description'),
(NULL, 'short_description_fr', 'Short description english', 'Short Description'),
(NULL, 'long_description_fr', 'Long description English', 'Long Description'),
(NULL, 'info', 'Information', 'Information'),
(NULL, 'quote', 'Quote', 'Quote'),
(NULL, 'question_fr', 'Question French', 'Question French'),
(NULL, 'question_en', 'Question English', 'Question English'),
(NULL, 'answer_en', 'Answer English', 'Answer English'),
(NULL, 'answer_fr', 'Answer French', 'Answer French'),
(NULL, 'content', 'Page Content', 'Page Content'),
(NULL, 'add_content', 'Add Content', 'Add Content'),
(NULL, 'edit_content', 'Edit Content', 'Edit Content'),
(NULL, 'video', 'video (If Youtube Link)', 'video'),
(NULL, 'add_faq', 'Add F.A.Q', 'Add faq'),
(NULL, 'add_testimonial', 'Add Testimonial', 'Add testimonial'),
(NULL, 'add_service', 'Add Service', 'Add service'),
(NULL, 'add_client', 'Add Client', 'Add client'),
(NULL, 'add_team', 'Add Team', 'Add team'),
(NULL, 'add_contact', 'Add Contact', 'Add contact'),
(NULL, 'add_article', 'Add Article', 'Add article'),
(NULL, 'edit_article', 'edit Article', 'edit article'),
(NULL, 'edit_contact', 'edit Contact', 'edit contact'),
(NULL, 'edit_team', 'edit Team', 'edit team'),
(NULL, 'edit_client', 'edit Client', 'edit client'),
(NULL, 'edit_service', 'edit Service', 'edit service'),
(NULL, 'edit_testimonial', 'edit Testimonial', 'edit testimonial'),
(NULL, 'edit_faq', 'edit F.A.Q', 'edit faq'),
(NULL, 'article_list', 'Article List', 'article'),
(NULL, 'contact_list', 'Contact List', 'contact'),
(NULL, 'team_list', 'Team List', 'team'),
(NULL, 'client_list', 'Client List', 'client'),
(NULL, 'service_list', 'Service List', 'service'),
(NULL, 'testimonial_list', 'Testimonial List', 'testimonial'),
(NULL, 'faq_list', 'F.A.Q List', 'faq'),
(NULL, 'content_list', 'Page Content', 'Page Content'),
(NULL, 'add_teammember', 'Add Team member', 'Add Team member'),
(NULL, 'tooltip_package_name', 'Example: Silver Package', 'Example: Silver Package'),
(NULL, 'tooltip_package_details', 'This is for Package Short Details', 'This is for Package Short Details.'),
(NULL, 'tooltip_package_amount', 'Package Amount in Dollar. Example: 200', 'Package Amount in Dollar. Example: 200'),
(NULL, 'tooltip_package_daily_roi', 'Please Set this field with Zero. Example: 0', 'Please Set this field with Zero. Example: 0'),
(NULL, 'tooltip_package_weekly_roi', 'Who buy this package they will get weekly ROI in Dollar. Example: 5. They will get every week 5 till them package period', 'Who buy this package they will get weekly ROI in Dollar. Example: 5. They will get every week 5 till them package period'),
(NULL, 'tooltip_package_monthly_roi', 'Sum of weekly ROI in a month', 'Sum of weekly ROI in a month'),
(NULL, 'tooltip_package_yearly_roi', 'Sum of weekly ROI in a Year', 'Sum of weekly ROI in a Year'),
(NULL, 'tooltip_package_total_percent_roi', 'Total Persent Of ROI', 'Total Persent Of ROI'),
(NULL, 'tooltip_package_period', 'Package Period(Day) ex: 365 Day', 'Package Period(Day) ex: 365 Day'),
(NULL, 'trading', 'Trading', 'Trade'),
(NULL, 'trade_history', 'Trade History', 'Trade History'),
(NULL, 'market', 'Market', 'Market'),
(NULL, 'coin_pair', 'Coin Pair', 'Coin Pair'),
(NULL, 'pending_deposit', 'Pending Deposit', 'Dépôt En Attente'),
(NULL, 'email_and_sms_setting', 'Email And Sms Setting', 'Email And Sms Setting'),
(NULL, 'email_and_sms_gateway', 'Email And Sms Gateway', 'Email And Sms Gateway'),
(NULL, 'trade', 'Trade', 'Trade'),
(NULL, 'referral_id', 'Referral ID', ''),
(NULL, 'please_enter_valid_email', 'Please Enter Valid Email !!!', 'Please Enter Valid Email !!!'),
(NULL, 'already_subscribe', 'This Email Address already subscribed', 'This Email Address already subscribed'),
(NULL, 'message_send_successfuly', 'TMessage send successfuly', 'Message send successfuly'),
(NULL, 'message_send_fail', 'Message send Fail', 'Message send Fail'),
(NULL, 'setup_payment_gateway', 'setup payment gateway', 'setup payment gateway'),
(NULL, 'blog', 'Blog', 'Blog'),
(NULL, 'advisors', 'Advisors', 'Conseillers'),
(NULL, 'advisors_list', 'Advisors List\r\n', 'Advisors List'),
(NULL, 'edit_advisors', 'Edit Advisors', 'Edit Advisors'),
(NULL, 'designation', 'Designation', 'Designation'),
(NULL, 'user_profile', 'User Profile', 'User Profile'),
(NULL, 'token_sold', 'Token Sold', 'Token Sold'),
(NULL, 'token', 'Token', 'Token'),
(NULL, 'token_value', 'Token Value', 'Token Value'),
(NULL, 'running', 'Running', 'Fonctionnement'),
(NULL, 'team_overview', 'Team Overview', 'Team Overview'),
(NULL, 'overview_header_en', 'Overview Header English', 'Overview Header English'),
(NULL, 'sub_header_en', 'Sub Header English', 'Sub Header English'),
(NULL, 'description_en', 'Description English', 'Description English'),
(NULL, 'overview_header_fr', 'Overview Header French', 'Overview Header French'),
(NULL, 'sub_header_fr', 'Sub Header French', 'Sub Header French'),
(NULL, 'description_fr', 'Description French', 'Description French'),
(NULL, 'flag', 'Flag', 'Flag'),
(NULL, 'round_name', 'Round Name', 'Round Name'),
(NULL, 'target', 'Target', 'Target'),
(NULL, 'coin', 'Coin', 'Coin'),
(NULL, 'release_date', 'Release Date', 'Release Date'),
(NULL, 'release_time', 'Release Time', 'Release Time'),
(NULL, 'duration', 'Duration', 'Duration'),
(NULL, 'roi', 'ROI', 'ROI'),
(NULL, 'referral', 'REFERRAL', 'REFERRAL'),
(NULL, 'total_coin', 'Total Coin', 'Total Coin'),
(NULL, 'hold_coin', 'Hold Coin', 'Hold Coin'),
(NULL, 'pre_sell', 'Pre Sell', 'Pre Sell'),
(NULL, 'sell_available', 'Sell Available', 'Sell Available'),
(NULL, 'sell_available_limit', 'You can\'t release coin more than sell available limit. ', 'You can\'t release coin more than sell available limit. '),
(NULL, 'client_id', 'Client Id', 'Client Id'),
(NULL, 'client_secret', 'Client Secret', 'Client Secret'),
(NULL, 'live_demo', 'Live demo', 'Live demo'),
(NULL, 'target_raised', '% target raised', '% target raised'),
(NULL, 'ends_in', 'ends in:', 'ends in:'),
(NULL, 'raised', 'Raised', 'Raised'),
(NULL, 'whitepaper', 'Whitepaper', 'Whitepaper'),
(NULL, 'soft_cap', 'Soft Cap', 'Soft Cap'),
(NULL, 'buy_tokens', 'Buy Tokens', 'Buy Tokens'),
(NULL, 'bonus', 'Bonus', 'Bonus'),
(NULL, 'how_it_work', 'How it work', 'How it work'),
(NULL, 'pre_sale', 'Pre-Sale', 'Pre-Sale'),
(NULL, 'ico_pre_sell_live', 'ICO PRE - SALE IS LIVE', 'ICO PRE - SALE IS LIVE'),
(NULL, 'password_required', 'Password Required', 'Mot de passe requis'),
(NULL, 'email_required', 'Email Required', 'Email (requis'),
(NULL, 'first_name_required', 'First Name Required', 'First Name Required'),
(NULL, 'last_name_required', 'Last Name Required', 'Last Name Required'),
(NULL, 'user_name_required', 'User Name Required', 'User Name Required'),
(NULL, 'please_enter_at_least', 'Please Enter at least 8 Characters input', 'Please Enter at least 8 Characters input'),
(NULL, 'confirm_password_must_be_filled_out', 'Confirm Password must be filled out', 'Confirm Password must be filled out'),
(NULL, 'password_miss_match', 'Password miss match', 'Password miss match'),
(NULL, 'must_confirm_privacy_policy_and_terms_and_condition', 'Must Confirm Privacy Policy and Terms and Conditions', 'Must Confirm Privacy Policy and Terms and Conditions'),
(NULL, 'please_input_your_email', 'Please Input Your Email', 'Please Input Your Email'),
(NULL, 'please_enter_valid_email', 'Please Enter Valid Email', 'Please Enter Valid Email'),
(NULL, 'subscription_complete', 'Subscription complete', 'Subscription complete'),
(NULL, 'message_send_successfully', 'Message send successfully', 'Message send successfully'),
(NULL, 'the_clock_has_stopped', 'The clock has stopped', 'The clock has stopped'),
(NULL, 'a_lowercase_letter', 'A lowercase letter', 'A lowercase letter'),
(NULL, 'a_capital_uppercase_letter', 'A capital(uppercase) letter', 'A capital(uppercase) letter'),
(NULL, 'a_special', 'A special', 'A special'),
(NULL, 'a_number', 'A number', 'A number'),
(NULL, 'minimum_8_characters', 'Minimum 8 characters', 'Minimum 8 characters'),
(NULL, 'referral_id_is_invalid', 'Referral ID is invalid', 'Referral ID is invalid'),
(NULL, 'invalid_ip_address', 'Invalid IP address', 'Invalid IP address'),
(NULL, 'please_activate_your_account', 'Please activate your account', 'Please activate your account'),
(NULL, 'already_registered', 'Already registered', 'Already registered'),
(NULL, 'this_account_is_now_pending', 'This account is now pending', 'This account is now pending'),
(NULL, 'this_account_is_suspend', 'This account is suspend', 'This account is suspend'),
(NULL, 'something_wrong', 'Something wrong', 'Something wrong'),
(NULL, 'first_name', 'First Name', 'First Name'),
(NULL, 'email_address', 'Email Address', 'Email Address'),
(NULL, 'password_mismatch', 'password mismatch', 'password mismatch'),
(NULL, 'invalid_authentication_code', 'Invalid Authentication Code', 'Invalid Authentication Code'),
(NULL, 'password_reset_code_send_check_your_email', 'Password reset code send.Check your email', 'Password reset code send.Check your email'),
(NULL, 'google_authentication_disabled', 'Google Authentication Disabled', 'Google Authentication Disabled'),
(NULL, 'google_authentication_enabled', 'Google Authentication Enabled', 'Google Authentication Enabled'),
(NULL, 'this_account_already_activated', 'This account already activated', 'This account already activated'),
(NULL, 'login_or_register', 'Login or Register', 'Login or Register'),
(NULL, 'social_links', 'social links', 'social links'),
(NULL, 'ico_pre_sale_is_live', 'ICO PRE - SALE IS LIVE', 'ICO PRE - SALE IS LIVE'),
(NULL, 'roadmap', 'Roadmap', 'Feuille De Route'),
(NULL, 'initial_token_distribution', 'Initial Token Distribution', 'Initial Token Distribution'),
(NULL, 'your_name', 'Your Name', 'Your Name'),
(NULL, 'send_message', 'Send message', 'Send message'),
(NULL, 'log_in', 'Log in', 'Log in'),
(NULL, 'privacy_policy', 'Privacy policy', 'Privacy policy'),
(NULL, 'terms_of_use', 'Terms of Use', 'Terms of Use'),
(NULL, 'verification_code', 'Verification code', 'Verification code'),
(NULL, 'new_password', 'New Password', 'New Password'),
(NULL, 'this_category_contain_exist', 'This category contain exist', 'This category contain exist'),
(NULL, 'notice', 'Notice', 'Notice'),
(NULL, 'update_failed', 'Update Failed', 'Update Failed'),
(NULL, 'send_the_amount_successfully', 'Send the amount successfully', 'Send the amount successfully'),
(NULL, 'language_list', 'Language List', 'Language List'),
(NULL, 'phrase_list', 'Phrase List', 'Phrase List'),
(NULL, 'language_added_successfully', 'Language added successfully', 'Language added successfully'),
(NULL, 'edit_phrase', 'Edit Phrase', 'Edit Phrase'),
(NULL, 'phrase_added_successfully', 'Phrase added successfully', 'Phrase added successfully'),
(NULL, 'phrase_already_exists', 'Phrase already exists', 'Phrase already exists'),
(NULL, 'label_added_successfully', 'Label added successfully', 'Label added successfully'),
(NULL, 'exchange_history', 'Exchange History', 'Exchange History'),
(NULL, 'exchange_canceled', 'Exchange Canceled', 'Exchange Canceled'),
(NULL, 'pending_user_list', 'Pending User List', 'Pending User List'),
(NULL, 'subscriber_list', 'Subscriber List', 'Subscriber List'),
(NULL, 'pending_user_verify', 'Pending User verify', 'Pending User verify'),
(NULL, 'affiliation_setup', 'Affiliation Setup', 'Affiliation Setup'),
(NULL, 'coin_manager', 'Coin Manager', 'Gestionnaire De Pièces'),
(NULL, 'coin_setup', 'Coin Setup', 'Configuration Des Pièces'),
(NULL, 'coin_symbol', 'Coin Symbol', 'Coin Symbol'),
(NULL, 'pair_with', 'Pair With', 'Pair With'),
(NULL, 'setup_successfully', 'Setup Successfully', 'Setup Successfully'),
(NULL, 'now_you_cant_change_it', 'Now, you can\'t change it', 'Now, you can\'t change it'),
(NULL, 'edit_coin_pair', 'Edit coin pair', 'Edit coin pair'),
(NULL, 'market_symbol', 'Market symbol', 'Market symbol'),
(NULL, 'cron_jobs', 'Cron Jobs', 'Cron Jobs'),
(NULL, 'command', 'Command', 'Command'),
(NULL, 'interval_sec', 'Interval sec', 'Interval sec'),
(NULL, 'edit_cron_jobs', 'Edit Cron Jobs', 'Edit Cron Jobs'),
(NULL, 'helpline', 'Helpline', 'Helpline'),
(NULL, 'menu_control', 'Menu Control', 'Contrôle Des Menus'),
(NULL, 'white_paper', 'White Paper', 'Papier Blanc'),
(NULL, 'coin_release', 'Coin Release', 'Coin Release'),
(NULL, 'day', 'Day', 'Day'),
(NULL, 'start_date', 'Start date', 'Start date'),
(NULL, 'start_time', 'Start time', 'Start time'),
(NULL, 'edit_coin_release', 'Edit Coin Release', 'Edit Coin_release'),
(NULL, 'coin_market', 'Coin Market', 'Coin Market'),
(NULL, 'edit_market', 'Edit Market', 'Edit Market'),
(NULL, 'exchange_coin', 'Exchange Coin', 'Exchange Coin'),
(NULL, 'method', 'Method', 'Method'),
(NULL, 'qty', 'Qty', 'Qty'),
(NULL, 'feature_is_disable', 'Feature is disable', 'Feature is disable'),
(NULL, 'bank_information_update_successfully', 'Bank Information Update Successfully', 'Bank Information Update Successfully'),
(NULL, 'last_name', 'Last Name', 'Last Name'),
(NULL, 'there_is_no_phone_number', 'There is no Phone number', 'There is no Phone number'),
(NULL, 'page_exception', 'Page Exception', 'Page Exception'),
(NULL, 'token_buy', 'Token Buy', 'Achat De Jetons'),
(NULL, 'coin_qty', 'Coin qty', 'Coin qty'),
(NULL, 'server_problem', 'Server Problem', 'Server Problem'),
(NULL, 'buy_successful', 'Buy Successful', 'Buy Successful'),
(NULL, 'you_dont_have_sufficient_balance', 'You don\'t have sufficient Balance', 'You don\'t have sufficient Balance'),
(NULL, 'token_list', 'Token List', 'Token List'),
(NULL, 'verify_account', 'Verify Account', 'Verify Account'),
(NULL, 'verify_type', 'Verify type', 'Verify type'),
(NULL, 'gender', 'Gender', 'Gender'),
(NULL, 'id_number', 'Id number', 'Id number'),
(NULL, 'verification_is_being_processed', 'Verification Is being Processed', 'Verification Is being Processed'),
(NULL, 'your_address', 'Your Address', 'Your Address'),
(NULL, 'payment_canceled', 'Payment Canceled', 'Payment Canceled'),
(NULL, 'percent', 'Percent', 'Percent'),
(NULL, 'fixed', 'Fixed', 'Fixed'),
(NULL, 'market_capacity', 'Market Capacity', 'Market Capacity'),
(NULL, 'capacity_text', 'Capacity Text', 'Capacity Text'),
(NULL, 'top_menu', 'Top Menu', 'Top Menu'),
(NULL, 'footer', 'Footer', 'Footer'),
(NULL, 'top_and_footer', 'Top and Footer', 'Top and Footer'),
(NULL, 'full_name', 'Full Name', 'Full Name'),
(NULL, 'canceled', 'Canceled', 'Canceled'),
(NULL, 'support', 'Support', 'Support'),
(NULL, 'fillup_target', 'Fillup Target', 'Fillup Target'),
(NULL, 'exchange_currency', 'Exchange Currency', 'Exchange Currency'),
(NULL, 'interval_seconds', 'Interval Seconds', 'Interval Seconds'),
(NULL, 'start_cron_jobs_date', 'Start Cron Jobs Date', 'Start Cron Jobs Date'),
(NULL, 'start_cron_jobs_time', 'Start Cron Jobs Time', 'Start Cron Jobs Time'),
(NULL, 'interval_seconds', 'Interval(seconds)', 'Interval(seconds)'),
(NULL, 'last_run', 'Last Run', 'Last Run'),
(NULL, 'next_run', 'Next Run', 'Next Run'),
(NULL, 'coin_full_name', 'Coin Full Name', 'Coin Full Name'),
(NULL, 'algorithm', 'Algorithm', 'Algorithm'),
(NULL, 'rank', 'Rank', 'Rank'),
(NULL, 'show_home', 'Show Home', 'Show Home'),
(NULL, 'coin_icon', 'Coin Icon', 'Coin Icon'),
(NULL, 'iso_code', 'ISO Code', 'ISO Code'),
(NULL, 'email_notification_settings', 'Email Notification Settings', 'Email Notification Settings'),
(NULL, 'sms_sending', 'SMS Sending', 'SMS Sending'),
(NULL, 'for_sms_gateway_use', 'For SMS Gateway Use', 'For SMS Gateway Use'),
(NULL, 'total_fees', 'Total Fees', 'Total Fees'),
(NULL, 'market_investment', 'Market Investment', 'Market Investment'),
(NULL, 'exchange_type', 'Exchange Type', 'Exchange Type'),
(NULL, 'crypto_qty', 'Crypto Qty', 'Crypto Qty'),
(NULL, 'crypto_rate', 'Crypto Rate', 'Crypto Rate'),
(NULL, 'complete_qty', 'Complete Qty', 'Complete Qty'),
(NULL, 'available_qty', 'Available Qty', 'Available Qty'),
(NULL, 'payout_cronjob', 'Payout Cronjob', 'Payout Cronjob'),
(NULL, 'source', 'Source', 'Source'),
(NULL, 'datetime', 'Datetime', 'Datetime'),
(NULL, 'download_file', 'Download File', 'Download File'),
(NULL, 'required_qty', 'Required QTY', 'Required QTY'),
(NULL, 'required_amount', 'Required Amount', 'Required Amount'),
(NULL, 'available_amount', 'Available Amount', 'Available Amount'),
(NULL, 'open', 'Open', 'Open'),
(NULL, 'language_name', 'Language Name', 'Language Name'),
(NULL, 'phrase_name', 'Phrase Name', 'Phrase Name'),
(NULL, 'phrase', 'Phrase', 'Phrase'),
(NULL, 'add_phrase', 'Add Phrase', 'Add Phrase'),
(NULL, 'label', 'Label', 'Label'),
(NULL, 'verify_user', 'Verify User', 'Verify User'),
(NULL, 'subscriber', 'Subscriber', 'Subscriber'),
(NULL, 'cms', 'CMS', 'CMS'),
(NULL, 'chart', 'Chart', 'Graphique'),
(NULL, 'about_coin', 'About Coin', 'About Coin'),
(NULL, 'ico_settings', 'ICO settings', 'ICO settings'),
(NULL, 'coin_releasing', 'Coin Releasing', 'Coin Releasing'),
(NULL, 'menu_control_settings', 'Menu Control Settings', 'Menu Control Settings'),
(NULL, 'ico_wallet', 'ICO Wallet', 'ICO Wallet'),
(NULL, 'callback_url', 'Callback Url', 'Callback Url'),
(NULL, 'success_url', 'Success Url', 'Success Url'),
(NULL, 'cancel_url', 'Cancel Url', 'Cancel Url'),
(NULL, 'upload_document_for_profile_verification', 'Upload Document For Profile Verification', 'Upload Document For Profile Verification'),
(NULL, 'verification_type', 'Verification Type', 'Verification Type'),
(NULL, 'surname', 'Surname', 'Surname'),
(NULL, 'nid', 'NID', 'NID'),
(NULL, 'upload_document', 'Upload Document', 'Upload Document'),
(NULL, 'approve', 'Approve', 'Approve'),
(NULL, 'search', 'Search', 'Search'),
(NULL, 'transaction_log', 'Transaction Log', 'Transaction Log'),
(NULL, 'earning_history', 'Earning History', 'Earning History'),
(NULL, 'transaction', 'Transaction', 'Transaction'),
(NULL, 'white_paper_pdf', 'White Paper PDF', 'White Paper PDF'),
(NULL, 'information', 'Information', 'Information'),
(NULL, 'payment_process', 'Payment Process', 'Payment Process'),
(NULL, 'summation_of_all_deposit_sell_received_roi_and_referral_amount', 'Summation of all deposit, sell, received, roi and referral amount.', 'Summation of all deposit, sell, received, roi and referral amount.'),
(NULL, 'summation_of_all_your_buy_and_exchange_calculate_token', 'Summation of all your buy and exchange calculate token', 'Summation of all your buy and exchange calculate token'),
(NULL, 'multiplication_of_all_token_and_token_rate', 'Multiplication of all token and token rate', 'Multiplication of all token and token rate'),
(NULL, 'smsbox', 'Smsbox', 'Smsbox'),
(NULL, 'mailbox', 'Mailbox', 'Mailbox'),
(NULL, 'help_line', 'Help Line', 'Ligne D\'aide'),
(NULL, 'see_all_messages', 'See All Messages', 'See All Messages'),
(NULL, 'view_all', 'View all', 'View all'),
(NULL, 'payout_setting', 'Payout Setting', 'Payout Setting'),
(NULL, 'package_payout', 'Package Payout', 'Package Payout'),
(NULL, 'buy_token', 'Buy Token', 'Acheter Jeton'),
(NULL, 'wallet_history', 'Wallet History', 'Wallet History'),
(NULL, 'open_exchange', 'Open Exchange', 'Échange Ouvert'),
(NULL, 'canceled_exchange', 'Canceled Exchange', 'Échange Annulé'),
(NULL, 'history', 'History', 'Histoire'),
(NULL, 'sell_avaiable', 'Sell Avaiable', 'Sell Avaiable'),
(NULL, 'crypto_balance', 'Crypto Balance', 'Crypto Balance'),
(NULL, 'buy_coin', 'Buy Coin', 'Buy Coin'),
(NULL, 'quantity', 'Quantity', 'Quantity'),
(NULL, 'sell_coin', 'Sell Coin', 'Sell Coin'),
(NULL, 'market_depth', 'Market Depth', 'Market Depth'),
(NULL, 'weekly_roi_added', 'Weekly ROI Added', 'Weekly ROI Added'),
(NULL, 'purchase_order_no', 'Purchase Order No', 'Purchase Order No'),
(NULL, 'this_page_is_disable', 'This page is disable', 'This page is disable'),
(NULL, 'payout_no', 'Payout No', 'Payout No'),
(NULL, 'check_your_email', 'Check your email', 'Check your email'),
(NULL, 'buy_qty', 'Buy Qty', 'Buy Qty'),
(NULL, 'transaction_id', 'Transaction ID', 'Transaction ID'),
(NULL, 'source_address', 'Source Address', 'Source Address'),
(NULL, 'price_in', 'Price in', 'Price in'),
(NULL, 'passport', 'Passport', 'Passport'),
(NULL, 'drivers_license', 'Driver\'s license', 'Driver\'s license'),
(NULL, 'government_issued_id_card', 'Government-issued ID Card', 'Government-issued ID Card'),
(NULL, 'given_name', 'Given Name', 'Given Name'),
(NULL, 'passport_nid_license_number', 'Passport/NID/License Number', 'Passport/NID/License Number'),
(NULL, 'male', 'Male', 'Male'),
(NULL, 'female', 'Female', 'Female'),
(NULL, 'profile_is_verified', 'Profile is Verified', 'Profile is Verified'),
(NULL, 'verification_cancel', 'Verification Cancel', 'Verification Cancel'),
(NULL, 'verification_is_processing', 'Verification is Processing', 'Verification is Processing'),
(NULL, 'withdraw_no', 'Withdraw No', 'Withdraw No'),
(NULL, 'transfer_no', 'Transfer No', 'Transfer No'),
(NULL, 'user', 'User', 'User'),
(NULL, 'edit_teammember', 'Edit Team Member', 'Edit Team Member'),
(NULL, 'you_did_not_upload_any_file', 'You didn\'t upload any file', 'You didn\'t upload any file'),
(NULL, 'article2_en', 'Article 2 English', 'Article 2 English'),
(NULL, 'article2_fr', 'Article 2 French', 'Article 2 FR'),
(NULL, 'roadmap_list', 'RoadMap List', 'RoadMap List'),
(NULL, 'add_roadmap', 'Add RoadMap', 'Add RoadMap'),
(NULL, 'short_description', 'Short Description', 'Short Description'),
(NULL, 'this_position_is_exists', 'This position is exists.', 'This position is exists.'),
(NULL, 'cat_title', 'Category Title', 'Category Title'),
(NULL, 'cat_title2_en', 'Category Title 2 English', 'Category Title 2 English'),
(NULL, 'invalid_amount', 'Invalid Amount', 'Invalid Amount'),
(NULL, 'there_is_something_wrong', 'There is something wrong', 'There is something wrong'),
(NULL, 'buy_request_successfully', 'Buy request successfully', 'Buy request successfully'),
(NULL, 'sell_request_successfully', 'Sell request successfully', 'Sell request successfully'),
(NULL, 'testtest', NULL, NULL),
(NULL, 'create_admin', 'Create Admin', 'Create Admin'),
(NULL, 'create_user', 'Create User', 'Create User'),
(NULL, 'create_team', 'Create Team', 'Create Team'),
(NULL, 'email_gateway_setup', 'Email Gateway Setup', 'Configuration De La Passerelle De Messagerie'),
(NULL, 'check_your_email_server', 'Check Your Email Server', 'V?rifiez Votre Serveur De Messagerie'),
(NULL, 'email_gateway', 'Email Gateway', 'Passerelle De Messagerie'),
(NULL, 'sms_gateway', 'Sms Gateway', 'Passerelle Sms'),
(NULL, 'email-gateway', 'Email-gateway', 'Passerelle De Messagerie'),
(NULL, 'sms_gateway_setup', 'Sms Gateway Setup', 'Configuration De La Passerelle SMS'),
(NULL, 'check_your_sms_gateway', 'Check Your Sms Gateway', 'V?rifiez Votre Passerelle Sms'),
(NULL, 'mobile_number', 'Mobile Number', 'Num?ro De Portable'),
(NULL, 'mobile_no', 'Mobile No', 'Mobile Non'),
(NULL, 'email_sms_template', 'Email Sms Template', 'Mod?le De Courrier ?lectronique SMS'),
(NULL, 'template_type', 'Template Type', 'Type De Mod?le'),
(NULL, 'template_english', 'Template English', 'Mod?le Anglais'),
(NULL, 'template_french', 'Template French', 'Mod?le Fran?ais'),
(NULL, 'subject_english', 'Subject English', 'Sujet Anglais'),
(NULL, 'subject_french', 'Subject French', 'Sujet Fran?ais'),
(NULL, 'email-sms-template', 'Email-sms-template', 'Email-sms-template'),
(NULL, 'template-update', 'Template-update', 'Mod?le-mise ? Jour'),
(NULL, 'package-list', 'Package-list', 'Liste De Paquets'),
(NULL, 'add-package', 'Add-package', 'Add-package'),
(NULL, 'latest_version', 'Latest Version', 'Derni?re Version'),
(NULL, 'current_version', 'Current Version', 'Version Actuelle'),
(NULL, 'kyc', 'KYC', 'KYC'),
(NULL, 'transfer-confirm', 'Transfer-confirm', 'Transfert-confirmer'),
(NULL, 'paypal', 'Paypal', 'Pay Pal'),
(NULL, 'stripe', 'Stripe', 'Bande'),
(NULL, 'token-list', 'Token List', 'Liste De Jetons'),
(NULL, 'ico-wallet', 'ICO Wallet', 'Ico-portefeuille'),
(NULL, 'exchange-history', 'Exchange-history', '?change-histoire'),
(NULL, 'themes', 'Themes', 'Th?mes'),
(NULL, 'module', 'Module', 'Module'),
(NULL, 'add-ons', 'Add-ons', 'Modules Complémentaires'),
(NULL, 'upload', 'Upload', 'T?l?charger'),
(NULL, 'add_module', 'Add Module', 'Ajouter Un Module'),
(NULL, 'download', 'Download', 'T?l?charger'),
(NULL, 'purchase_key', 'Purchase Key', 'Cl? D\'achat'),
(NULL, 'overwrite', 'Overwrite', '?craser'),
(NULL, 'buy_now', 'Buy Now', 'Acheter Maintenant'),
(NULL, 'theme_name', 'Theme Name', 'Nom Du Th?me'),
(NULL, 'fdfd', NULL, NULL),
(NULL, 'coin-setup', 'Coin-setup', 'Monnayeur'),
(NULL, 'menu-control', 'Menu-control', 'Menu-contr?le'),
(NULL, 'coin-releasing-list', 'Coin Releasing List', 'Liste-lib?ration-de-pi?ces'),
(NULL, 'coin-manager', 'Coin-manager', 'Monnayeur'),
(NULL, 'affiliation', 'Affiliation', 'Affiliation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES
(NULL, 'payment-gateway', 'Payment-gateway', 'Passerelle De Paiement'),
(NULL, 'email-sms-settings', 'Email-sms-settings', 'Email-sms-param?tres'),
(NULL, 'sms-gateway', 'SMS Gateway', 'Passerelle Sms'),
(NULL, 'fees-setting', 'Fees-setting', 'Tarification'),
(NULL, 'app-setting', 'App-setting', 'Param?tre D\'application'),
(NULL, 'addon', 'Addon', 'Ajouter'),
(NULL, 'theme', 'Theme', 'Theme'),
(NULL, 'all-package', 'All-package', 'Tout-paquet'),
(NULL, 'package-payout', 'Package-payout', 'Package-paiement'),
(NULL, 'mypackage', 'Mypackage', 'Mon Colis'),
(NULL, 'credit-list', 'Credit-list', 'Liste De Cr?dit'),
(NULL, 'add-credit', 'Add-credit', 'Ajouter Un Cr?dit'),
(NULL, 'deposit-list', 'Deposit-list', 'Liste De D?p?t'),
(NULL, 'pending-deposit', 'Pending-deposit', 'D?p?t En Attente'),
(NULL, 'withdraw-list', 'Withdraw-list', 'Retrait-liste'),
(NULL, 'pending-withdraw', 'Pending-withdraw', 'En Attente-retrait'),
(NULL, 'add-admin', 'Add-admin', 'Ajouter-admin'),
(NULL, 'admin-list', 'Admin-list', 'Liste-admin'),
(NULL, 'subscriber-list', 'Subscriber-list', 'Liste D\'abonn?s'),
(NULL, 'verify-user', 'Verify-user', 'V?rifier-utilisateur'),
(NULL, 'user-list', 'User-list', 'Liste D\'utilisateur'),
(NULL, 'add-user', 'Add-user', 'Ajouter-utilisateur'),
(NULL, 'web-language-list', 'Web-language-list', 'Liste-langue-web'),
(NULL, 'advertisement-list', 'Advertisement List', 'Liste D\'annonces'),
(NULL, 'social-link-list', 'Social-link-list', 'Liste De Liens Sociaux'),
(NULL, 'category-list', 'Category List', 'Liste-cat?gorie'),
(NULL, 'news-list', 'News-list', 'Liste De Nouvelles'),
(NULL, 'aboutcoin', 'About Coin', 'À Propos De La Monnaie'),
(NULL, 'page-content-list', 'Page-content-list', 'Liste-contenu-page'),
(NULL, 'ico-settings', 'ICO-settings', 'ICO-param?tres'),
(NULL, 'white-paper', 'White-paper', 'Papier Blanc'),
(NULL, 'helpline-message', 'Helpline-message', 'Helpline-message'),
(NULL, 'autoupdate', 'Autoupdate', 'Mise ? Jour Automatique'),
(NULL, 'customer', 'Customer', 'Client'),
(NULL, 'language-setting', 'Language-setting', 'Param?tres De Langue'),
(NULL, 'change-password', 'Change Password', 'Changer Le Mot De Passe'),
(NULL, 'verify-account', 'Verify-account', 'V?rifier Le Compte'),
(NULL, 'payment-method-setting', 'Payment-method-setting', 'Configuration-mode-de-paiement'),
(NULL, 'transactions', 'Transactions', 'Transactions'),
(NULL, 'exchange-opened', 'Exchange-opened', 'Bourse Ouverte'),
(NULL, 'notifications', 'Notifications', 'Avis'),
(NULL, 'notification-list', 'Notification-list', 'Liste-de-notification'),
(NULL, 'message-list', 'Message-list', 'Liste De Messages'),
(NULL, 'help-line', 'Help-line', 'Ligne D\'aide'),
(NULL, 'please_wait', 'Please wait', 'S\'il Vous Pla?t, Attendez'),
(NULL, 'accounts', 'Accounts', 'Comptes'),
(NULL, 'password_change', 'Password Change', 'Changement De Mot De Passe'),
(NULL, 'credit_details', 'Credit Details', 'Détails De Crédit'),
(NULL, 'credit-details', 'Credit Details', NULL),
(NULL, 'enter_default_password', 'Enter Default Password', 'Enter Default Password'),
(NULL, 'old_password', 'Old Password', 'Old Password'),
(NULL, 'confirm_password', 'Confirm Password', 'Confirm Password'),
(NULL, 'gourl', 'Gourl', 'Gourle'),
(NULL, 'add_theme', 'Add Theme', 'Ajouter Un Thème'),
(NULL, 'page_content', 'Page Content', 'Contenu De La Page'),
(NULL, 'f.a.q', 'F.A.Q', 'FAQ'),
(NULL, 'category_list', 'Category List', 'Liste Des Catégories'),
(NULL, 'social_link_list', 'Social Link List', 'Liste De Liens Sociaux'),
(NULL, 'advertisement_list', 'Advertisement List', 'Liste Des Publicités'),
(NULL, 'web_language_list', 'Web Language List', 'Liste Des Langues Web'),
(NULL, 'coinpayment', 'Coinpayment', 'Paiement Par Pièces'),
(NULL, 'cancelled', 'Cancelled', 'Annulé'),
(NULL, 'ico_setting', 'ICO Setting', 'Réglage Ico'),
(NULL, 'coin_releasing_list', 'Coin Releasing List', 'Liste De Libération De Pièces'),
(NULL, 'install', 'Install', NULL),
(NULL, 'erc20_wallet', 'ERC20 Wallet', 'Portefeuille ERC20'),
(NULL, 'erc20_private_key', 'ERC20 Private Key', 'Clé Privée ERC20'),
(NULL, 'minters_wallet', 'Minters Wallet', 'Portefeuille Minters'),
(NULL, 'admin_password', 'Admin Password', 'Mot De Passe D\'administrateur'),
(NULL, 'erc20', 'ERC20', 'ERC20'),
(NULL, 'admin_wallet', 'Admin Wallet', 'Portefeuille Administrateur'),
(NULL, 'erc20_coin', 'ERC20 Coin', 'Pièce ERC20'),
(NULL, 'contact_address', 'Contract Address', 'Adresse De Contract'),
(NULL, 'creator_wallet', 'Creator Address', ''),
(NULL, 'coin_symbol', 'Coin Symbol', ''),
(NULL, 'initial_price', 'Initial Price', ''),
(NULL, 'coin_logo', 'Coin Logo', 'Logo De Pièce De Monnaie'),
(NULL, 'available_serial', 'Available Serial', 'Série Disponible'),
(NULL, 'add_erc20_coin', 'Add ERC20 Coin', 'Ajouter Une Pièce ERC20'),
(NULL, 'erc20_market', 'ERC20 Market', 'Marché ERC20'),
(NULL, 'erc20_coin_pair', 'ERC20 Coin Pair', 'Paire De Pièces ERC20'),
(NULL, 'contract_address', 'Contract Address', 'Adresse de contact'),
(NULL, 'creator', 'Creator', 'CrÃ©ateur'),
(NULL, 'proof_type', 'Proof Type', 'Preuve Type'),
(NULL, 'add_coin', 'Add Coin', 'Ajouter une piÃ¨ce'),
(NULL, 'token_symbol', 'Token Symbol', 'Token Symbol'),
(NULL, 'decimal_value', 'Decimal Value', 'valeur dÃ©cimale'),
(NULL, 'creator_address', 'Creator Address', 'Adresse Du Créateur'),
(NULL, 'deposit_confirm', 'Deposit Confirm', 'Dépôt Confirmer'),
(NULL, 'balance_receive_from_user', 'Balance Receive From User', 'Solde Reçu De L\'utilisateur'),
(NULL, 'sent_user_balance', 'Sent User Balance', 'Solde De L\'utilisateur Envoyé'),
(NULL, 'decimal', 'Decimal', 'Décimal'),
(NULL, 'supply', 'Supply', 'La Fourniture'),
(NULL, 'position', 'Position', 'Positionner'),
(NULL, 'create_erc20_wallet', 'Admin ERC20 Wallet Setup', 'Créer Un Portefeuille ERC20'),
(NULL, 'server_ip', 'Server IP', 'IP Du Serveur'),
(NULL, 'database_name', 'Database Name', 'Nom De La Base De Données'),
(NULL, 'user_name', 'User Name', 'Nom D\'utilisateur'),
(NULL, 'infura_id', 'Infura ID', 'Identifiant Infura'),
(NULL, 'minimum_amount', 'Minimum Amount', 'Montant Minimal'),
(NULL, 'maximum_amount', 'Maximum Amount', 'Quantité Maximale'),
(NULL, 'documentation', 'Documentations', 'Documentations'),
(NULL, 'note', 'Note', 'Noter'),
(NULL, 'you_can_use_above_link_for_cron_job_copy_and_past_at_cron_job_command_box', 'You Can Use Above Link For Cron Job. Copy And Past At Cron Job Command Box', 'Vous Pouvez Utiliser Le Lien Ci-dessus Pour Le Travail Cron. '),
(NULL, 'set_cron_job_once_per_2_minutes', 'Set Cron Job Once Per 2 Minutes', 'Définir La Tâche Cron Une Fois Toutes Les 2 Minutes'),
(NULL, 'set_cron_job_once_per_5_minutes', 'Set Cron Job Once Per 5 Minutes', 'Définir La Tâche Cron Une Fois Toutes Les 5 Minutes'),
(NULL, 'initial', 'Initial', 'Initiale'),
(NULL, 'create_your_infura_account', 'Create Your Infura Account', 'Créez Votre Compte Infura'),
(NULL, 'data_not_found', 'Data Not Found', 'Données Non Trouvées'),
(NULL, 'fund_received', 'Fund Received', 'Fonds Reçu'),
(NULL, 'erc20_balance', 'ERC20 Balance', 'Balance ERC20'),
(NULL, 'erc20_diposit_address', 'ERC20 Diposit Address', 'Adresse De Dépôt ERC20'),
(NULL, 'please_note', 'Please Note', 'Veuillez Noter'),
(NULL, 'coins_will_be_deposited_when_you_add_amount_in_this_wallet', 'Coins Will Be Deposited, When You Add Amount In This Wallet', 'Les Pièces Seront Déposées Lorsque Vous Ajoutez Un Montant Dans Ce Portefeuille'),
(NULL, 'your_transaction_validity_24_hours__please_deposit_this_wallet_immediately', 'Your Transaction Validity 24 Hours  Please Deposit This Wallet Immediately', 'Validité De Votre Transaction 24 Heures Veuillez Déposer Ce Portefeuille Immédiatement'),
(NULL, 'admin_information', 'Admin Information', 'Admin Information'),
(NULL, 'add-category', 'Add Category', NULL),
(NULL, 'menu', 'Menu', NULL),
(NULL, 'uninstall', 'Uninstall', 'Uninstall'),
(NULL, 'for_checking_transfer_status', 'For Transfer Checking User Transaction Status', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_control`
--

CREATE TABLE IF NOT EXISTS `menu_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ico_wallet` int(11) NOT NULL,
  `exchange` int(11) NOT NULL,
  `package` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_control`
--

INSERT INTO `menu_control` (`id`, `ico_wallet`, `exchange`, `package`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` varchar(250) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--
CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `directory` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `notification_type` varchar(45) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `details` mediumtext DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='SMS and Email notified data will be stored in this table.';

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE IF NOT EXISTS `package` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All investment packages will be stored here.';

-- --------------------------------------------------------

--
-- Table structure for table `payeer_payments`
--

CREATE TABLE IF NOT EXISTS `payeer_payments` (
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

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE IF NOT EXISTS `payment_gateway` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `identity`, `agent`, `public_key`, `private_key`, `shop_id`, `secret_key`, `data`, `status`) VALUES
(NULL, 'bitcoin', 'GoUrl Payment', 'a:13:{s:7:\"bitcoin\";s:50:\"43137AACNNeySpeedcoin77SPDPUBaJBxvUGvX7KgmBcx9CGvb\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:50:\"43137AACNNeySpeedcoin77SPDPUBaJBxvUGvX7KgmBcx9CGvb\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', 'a:13:{s:7:\"bitcoin\";s:50:\"43137AACNNeySpeedcoin77SPDPRVyzic8CEewfdazdv9HwdH2\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:50:\"43137AACNNeySpeedcoin77SPDPRVyzic8CEewfdazdv9HwdH2\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', '', '', '', 1),
(NULL, 'payeer', 'Payeer', '474181962', 'xOngnN7CMIx6w5S3', '', '', '', 0),
(NULL, 'phone', 'Mobile Money', '+880 1746 40 68 01', '', '', '', '', 1),
(NULL, 'paypal', 'Paypal', 'AfmTkhn-GYb_HAsPayWeLDVTG39jNjGsJ3siJSNDs6QGr52KDLnAT28fIv4TVni5P3Dax8w1y-Libl_j', 'EHGJveSf9GJcbyQwgYmouRi9baBPKLPqeSYjYesiG4UJTSnQ45q3gwQdkB6TvFQAjkYm42D1P_Hqn340', '', 'sandbox', '', 1),
(NULL, 'stripe', 'Stripe', 'pk_test_BPLwYal0sn4KkKaDTzuj5oRq', 'sk_test_6J6dcwXf8ruEZGCvlC09C9NK', '', '', '', 1),
(NULL, 'coinpayment', 'CoinPayments', '0ef5d693629164125849eee7f24deeea058fde91a232b3091525724a480c2c34', '0e1Efced49C5e902a4abF65A01e4F41c040f58aa48f4A6b041e0508D45dc1164', '', '', '{\"marcent_id\":\"f8224829cda4268f107089fd92a469c6\",\"ipn_secret\":\"Bdtask@#2021\",\"debug_email\":\"turan.vuiyan@gmail.com\",\"debuging_active\":1,\"withdraw\":\"0\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
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
  `update_notification` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `title`, `description`, `email`, `phone`, `logo`, `logo_web`, `favicon`, `language`, `site_align`, `footer_text`, `time_zone`, `latitude`, `office_time`, `update_notification`) VALUES
(1, 'Crypto Currency Treading System', 'Bangladesh Office B-25, Mannan Plaza, 4th Floor, Khilkhet Dhaka-1229, Bangladesh', 'info@bdtask.com', '', '///public/upload/settings/5385b510d68935d70ac6374386a40ecd.png', '///public/upload/settings/3e0408b38ca08be14cd13d6db241ed10.png', '///public/upload/settings/ce8cb9255d11ec59b439f808a370a6b5.png', 'english', 'LTR', 'All rights reserved. Made with love by Bdtask', 'Asia/Dhaka', '40.6700, -73.9400', 'Monday - Friday: 08:00 - 22:00\r\nSaturday, Sunday: Closed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_email_send_setup`
--
CREATE TABLE IF NOT EXISTS `sms_email_send_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` text NOT NULL,
  `deposit` int(11) DEFAULT NULL,
  `transfer` int(11) DEFAULT NULL,
  `withdraw` int(11) DEFAULT NULL,
  `payout` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `team_bonnus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_email_send_setup`
--

INSERT INTO `sms_email_send_setup` (`id`, `method`, `deposit`, `transfer`, `withdraw`, `payout`, `commission`, `team_bonnus`) VALUES
(1, 'email', 0, 0, 0, NULL, NULL, NULL),
(2, 'sms', NULL, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE IF NOT EXISTS `themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'website_template', 1, '2021-01-17 11:54:13', '2021-09-04 08:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `web_article`
--

CREATE TABLE IF NOT EXISTS `web_article` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_article`
--

INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES
(1, NULL, 'What is ICO Crypto?', 'What is ICO Crypto?', 'public/upload/766555a4325c61b84cb801635fbe719e.png', '', '<p>ICO Crypto is a platform for the future of funding that powering for the new equity blockchain.</p>\r\n', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humor, or randomized words which don&#39;t look even slightly believable.</p>\r\n', '', 'https://www.youtube.com/watch?v=RRzrr2oqNPA', 2, 1, 1, '2021-09-06 05:43:11', 'admin@demo.com', 0),
(2, NULL, 'Cryptoland Just Entered the Real World', 'Cryptoland Just Entered the Real World', 'public/upload/71c99062ca8ad956da6c370fe902c8c4.jpg', '', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.<br></p>', '', '', '', 'https://www.youtube.com/watch?v=RRzrr2oqNPA', 1, 1, 1, '2019-01-10 07:19:41', 'admin@demo.com', 0),
(3, '50', '$50', NULL, NULL, '', 'billion USD — excepted revenue of coins by 2020', 'billion USD — excepted revenue of coins by 2020', '', '', NULL, 20, 0, 0, '2021-09-06 07:04:23', 'admin@demo.com', 0),
(4, '150', '150', NULL, NULL, '', 'million potential clients worldwide', 'million potential clients worldwide', '', '', NULL, 20, 0, 0, '2018-12-27 11:46:12', 'admin@demo.com', 0),
(5, '25', '25%', NULL, NULL, '', 'no borders for international payments', 'no borders for international payments', '', '', NULL, 20, 0, 0, '2018-12-27 11:46:38', 'admin@demo.com', 0),
(6, '10x', '10x', NULL, NULL, '', 'faster transaction speed', 'faster transaction speed', '', '', NULL, 20, 0, 0, '2018-12-27 11:46:48', 'admin@demo.com', 0),
(7, NULL, 'Bitcoin public trading launched', 'Bitcoin public trading launched', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 1, '2018-06-27 00:00:00', '', 0),
(8, NULL, 'First peak value for Bitcoin', 'First peak value for Bitcoin', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 3, '2018-07-27 00:00:00', '', 0),
(9, NULL, '$1 billion capitalization', '$1 billion capitalization', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 3, '2018-08-27 00:00:00', '', 0),
(10, NULL, 'Bitcoin worth $1,000', 'Bitcoin worth $1,000', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 1, '2018-09-05 00:00:00', '', 0),
(11, NULL, 'Ripple\'s major gains', 'Ripple\'s major gains', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 5, '2018-09-25 00:00:00', '', 0),
(12, NULL, 'LiteCoin\'s surge', 'LiteCoin\'s surge', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 6, '2018-10-19 00:00:00', '', 0),
(13, NULL, 'Ethereum`s meteoric rise', 'Ethereum`s meteoric rise', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 7, '2018-11-15 00:00:00', '', 0),
(14, NULL, 'Private/Pre Sale', NULL, NULL, '', '60', '#8d62cd', '', '', NULL, 17, 0, 1, '2019-01-09 07:08:29', 'admin@demo.com', 0),
(15, NULL, 'Public ICO', NULL, NULL, '', '10', '#0095eb', '', '', NULL, 17, 0, 2, '2018-12-27 12:08:51', 'admin@demo.com', 0),
(16, NULL, 'Team & Advisor', NULL, NULL, '', '25', '#df0866', '', '', NULL, 17, 0, 3, '2018-12-27 12:09:10', 'admin@demo.com', 0),
(17, NULL, 'Marketing', NULL, NULL, '', '30', '#f68968', '', '', NULL, 17, 0, 4, '2018-12-27 12:10:20', 'admin@demo.com', 0),
(18, NULL, 'Bounty', NULL, NULL, '', '30', '#f2ebce', '', '', NULL, 17, 0, 5, '2018-12-27 12:10:54', 'admin@demo.com', 0),
(19, NULL, 'Crowdsale', NULL, NULL, '', '350', '#09ffdf', '', '', NULL, 18, 0, 1, '2021-08-05 05:49:21', 'admin@demo.com', 0),
(20, NULL, 'Team', NULL, NULL, '', '340', '#f2ebce', '', '', NULL, 18, 0, 2, '2018-12-27 12:23:17', 'admin@demo.com', 0),
(21, NULL, 'Advisore', NULL, NULL, '', '274', '#f68968', '', '', NULL, 18, 0, 3, '2018-12-27 12:23:16', 'admin@demo.com', 0),
(22, NULL, 'Project Reserve', NULL, NULL, '', '234', '#df0866', '', '', NULL, 18, 0, 4, '2018-12-27 12:23:14', 'admin@demo.com', 0),
(23, NULL, 'Mosternodes', NULL, NULL, '', '214', '#0095eb', '', '', NULL, 18, 0, 5, '2018-12-27 12:23:13', 'admin@demo.com', 0),
(24, NULL, 'Mosternodes', NULL, NULL, '', '194', '#f2ebce', '', '', NULL, 18, 0, 6, '2018-12-27 12:23:11', 'admin@demo.com', 0),
(26, NULL, 'JOHN DOE', NULL, '/public/upload/team/37d7c20949ac4bb7752339a848ddd023.jpg', '', '<p>UI Designer</p>\r\n', '<p>UI Designer</p>\r\n', '', '', NULL, 5, 0, 1, '2021-08-05 05:10:31', 'admin@demo.com', 0),
(27, NULL, 'JOHN DOE', NULL, 'public/upload/team/e550079e7c1c92fce88fc18f97d1d1a3.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 2, '2018-12-27 12:35:33', 'admin@demo.com', 0),
(28, NULL, 'JOHN DOE', NULL, 'public/upload/team/2ea5dcd56cbf07857c5e779bc2aac6e7.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 3, '2018-12-27 12:36:05', 'admin@demo.com', 0),
(29, NULL, 'JOHN DOE', NULL, 'public/upload/team/f578a4cea754be444f1c1d1ce18f9374.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 4, '2018-12-27 12:36:17', 'admin@demo.com', 0),
(30, NULL, 'JOHN DOE', NULL, 'public/upload/team/9aca2d83fb6df075638512b3da11315f.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 5, '2018-12-27 12:36:29', 'admin@demo.com', 0),
(31, NULL, 'JOHN DOE', NULL, 'public/upload/team/4d44c8efc5bb01a1a6b8d104483c6b0a.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 6, '2018-12-27 12:36:44', 'admin@demo.com', 0),
(32, NULL, 'JOHN DOE', NULL, 'public/upload/team/cc5c6257e80f0f39c0f81f149ca8fb44.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 7, '2018-12-27 12:37:36', 'admin@demo.com', 0),
(33, NULL, 'JOHN DOE', NULL, 'public/upload/team/6fd3f95f0aa92740ebec2c002945bbae.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 8, '2018-12-27 12:37:59', 'admin@demo.com', 0),
(34, NULL, 'JOHN DOE', NULL, 'public/upload/team/c1b56d81f4a915333209fafa0f960d60.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 9, '2018-12-27 12:38:16', 'admin@demo.com', 0),
(35, NULL, 'JOHN DOE', NULL, '/public/upload/advisors/1632049512_cc1bd1d26ee48420f7ea.jpg', '', 'Bitcoin Expert', '#', '#', '#', NULL, 15, 0, 1, '2021-09-19 05:05:13', 'admin@demo.com', 0),
(36, NULL, 'JOHN DOE', NULL, 'public/upload/advisors/6a0dc87a2fb87a7b04fe4fcd1139f2ab.jpg', '', 'Software Enginer', '#', '#', '#', NULL, 15, 0, 2, '2018-12-27 12:41:07', 'admin@demo.com', 0),
(37, NULL, 'JOHN DOE', NULL, 'public/upload/advisors/c6423366875ca03549428d44ecf59e0f.jpg', '', 'Bitcoin Mining Exparts', '#', '#', '#', NULL, 15, 0, 3, '2018-12-27 12:42:15', 'admin@demo.com', 0),
(38, NULL, 'JOHN DOE', NULL, 'public/upload/advisors/8bf34014a827ae5ff1b908fb8b14a111.jpg', '', 'Bitcoin Mining Exparts', '#', '#', '#', NULL, 15, 0, 4, '2018-12-27 12:41:47', 'admin@demo.com', 0),
(39, NULL, 'What is WordPress?', 'What is WordPress?', NULL, '', 'WordPress is open source web software that you can install on your web server to create your website, blog, community, or network. WordPress started out as a tool for blogging, but has evolved into a full-fledged Content Management System (CMS), capable of powering websites, networks, and communities.', 'WordPress is open source web software that you can install on your web server to create your website, blog, community, or network. WordPress started out as a tool for blogging, but has evolved into a full-fledged Content Management System (CMS), capable of powering websites, networks, and communities.', '', '', NULL, 12, 0, 0, '2018-12-27 12:44:14', 'admin@demo.com', 0),
(40, NULL, 'How do you know when it is time to get support?', 'How do you know when it is time to get support?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 12, 0, 0, '2018-12-27 12:45:18', 'admin@demo.com', 0),
(41, NULL, 'What payment methods do you accept?', 'What payment methods do you accept?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 12, 0, 0, '2018-12-27 12:45:39', 'admin@demo.com', 0),
(42, NULL, 'Where can I see which insurance plans are?', 'Where can I see which insurance plans are?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 13, 0, 0, '2018-12-27 12:46:23', 'admin@demo.com', 0),
(43, NULL, 'How do you know when it is time to get support?', 'How do you know when it is time to get support?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 13, 0, 0, '2018-12-27 12:46:45', 'admin@demo.com', 0),
(44, NULL, 'What payment methods do you accept?', 'What payment methods do you accept?', NULL, '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.</p>\r\n', '', '', NULL, 14, 0, 0, '2021-08-22 04:27:16', 'admin@demo.com', 0),
(45, NULL, 'Tanzil', NULL, '', '', 'This is the best ICO application', '', 'I strongly recommend it', '', NULL, 11, 0, 0, '2021-09-06 06:21:22', 'admin@demo.com', 0),
(46, NULL, 'WHO ARE WE?', 'WHO ARE WE?', NULL, '', 'Meet the Entire Team', 'Meet the Entire Team', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Adipisci quae nesciunt officia! Autem, nam eum voluptatem, esse voluptatibus deleniti tempora laboriosam sequi pariatur, explicabo itaque.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Adipisci quae nesciunt officia! Autem, nam eum voluptatem, esse voluptatibus deleniti tempora laboriosam sequi pariatur, explicabo itaque.', NULL, NULL, 0, 0, '2021-09-06 06:22:12', '', 0),
(47, NULL, 'JHON DOE', NULL, '/public/upload/team/1632049110_a0e4dec746bb8af97b2b.jpg', '', '', '', '', '', NULL, 5, 0, 11, '2021-09-19 04:58:30', 'admin@demo.com', 0),
(48, NULL, 'JHON DOE', NULL, NULL, '', '', '', 'Best ICO application', '', NULL, 11, 0, 0, '2021-09-06 06:22:12', 'admin@demo.com', 0),
(49, NULL, 'Money Reimagined', 'Money Reimagined', NULL, '', 'Exploring the transformation of value in the digital age.', 'Exploring the transformation of value in the digital age.', '', '', NULL, 3, 0, 4, '2021-09-06 00:00:00', '', 0),
(50, '100', '$100', NULL, NULL, '', 'billion USD — excepted revenue of coins by 2021', 'billion USD — excepted revenue of coins by 2020', '', '', NULL, 20, 0, 0, '2021-09-06 07:04:51', 'admin@demo.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_category`
--

CREATE TABLE IF NOT EXISTS `web_category` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_category`
--

INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES
(1, 'home', 'Home', 'FranÃ§ais', 0, '', '', 'FranÃ§ais', '', '', 0, NULL, 1),
(2, 'about', 'About', 'FranÃ§ais', 0, '', '', '', '', '', 4, 1, 1),
(3, 'roadmap', 'RoadMap', 'FranÃ§ais', 0, '', '', '', '', '', 5, 2, 1),
(4, 'token', 'Token', 'FranÃ§ais', 0, '', 'Token Distribution', 'Token Distribution', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 4, 3, 1),
(5, 'team', 'Team', 'FranÃ§ais', 0, '', 'Our Team Member', 'Our Team Member', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 4, 4, 1),
(6, 'faq', 'FAQ', 'FranÃ§ais', 0, '', 'Frequently Asked Questions', 'Frequently Asked Questions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 5, 5, 1),
(7, 'blog', 'Blog', 'FranÃ§ais', 0, '', 'Recent Blogs Posts', 'Recent Blogs Posts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 4, 6, 1),
(8, 'contact', 'Contact', 'FranÃ§ais', 0, '', 'For ICO Projects', 'For ICO Projects', 'Coinsurance invests in promising ICO projects. We offer you a funding and access to our community.', 'Coinsurance invests in promising ICO projects. We offer you a funding and access to our community.', 5, 7, 1),
(9, 'ico', 'ICO', 'FranÃ§ais', 7, '', '', '', '', '', 0, NULL, 1),
(10, 'btc', 'BTC', 'FranÃ§ais', 7, '', '', '', '', '', 0, NULL, 1),
(11, 'testimonial', 'Testimonial', '', 0, '', 'Frequently Asked Questions', 'Frequently Asked Questions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 0, 0, 1),
(12, 'regular-questation', 'Regular Questation', 'Regular Questation', 6, '', '', '', '', '', 0, 1, 1),
(13, 'clients-questation', 'Clients Questation', '', 6, '', '', '', '', '', 0, 2, 1),
(14, 'trending-questation', 'Trending Questation', '', 6, '', '', '', '', '', 0, 3, 1),
(15, 'advisors', 'Advisors', 'advisors', 0, '', 'Frequently Asked Questions', 'Frequently Asked Questions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 0, 0, 1),
(16, 'chart', 'Chart', '', 0, '', '', '', '', '', 0, 0, 1),
(17, 'chart-one', 'Chart one', '', 16, '', '', '', '', '', 0, 0, 1),
(18, 'chart-two', 'Chart two', '', 16, '', '', '', '', '', 0, 2, 1),
(19, 'client', 'Client', 'Client', 2, '', '', '', '', '', 0, 0, 1),
(20, 'aboutcoin', 'AboutCoin', '', 2, '', 'Run Your ICO from Anywhere', 'Run Your ICO from Anywhere', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 0, 0, 1),
(21, 'coin', 'Coin', 'Pièce de Monnaie', 6, '', '', '', '', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_language`
--
CREATE TABLE IF NOT EXISTS `web_language` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `flag` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_language`
--

INSERT INTO `web_language` (`id`, `name`, `flag`) VALUES
(1, 'France', 'fr');

-- --------------------------------------------------------

--
-- Table structure for table `web_news`
--
CREATE TABLE IF NOT EXISTS `web_news` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_news`
--

INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES
(1, 'true-flip-enters-the-slot-market-with-chains-code', 'True Flip enters the slot market with Chain?s Code', '', 'public/upload/news/bd92f765617da2c82d5cef5c1ebde2d3.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-12-27 12:53:21', 'admin@demo.com', 0),
(2, 'bitcoin-in-brief-monday-twitter-wields-the-banhammer', 'Bitcoin in Brief Monday: Twitter Wields the Banhammer', '', 'public/upload/news/c325b409f002e058ddbe9fa5dc07290f.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-12-27 12:54:12', 'admin@demo.com', 0),
(3, 'ethereum-price-technical-analysis-ethusd-eyes-more-gains', 'Ethereum Price Technical Analysis ? ETH/USD Eyes More Gains', '', 'public/upload/news/b222d9177c5c522393710d9c10bc0c7f.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-12-27 12:54:22', 'admin@demo.com', 0),
(4, 'south-africa-puts-onus-on-taxpayers-to-declare-all-cryptocurrency-income', 'South Africa Puts Onus on Taxpayers to Declare All Cryptocurrency Income', '', 'public/upload/news/166e293c430bdf835f0c6d6a127e4e13.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-07-29 01:23:13', 'admin@demo.com', 0),
(5, 'neo-eos-litecoin-iota-and-stellar-technical-analysis-april-9-2018', 'NEO, EOS, Litecoin, IOTA and Stellar: Technical Analysis April 9, 2018', '', 'public/upload/news/b731dbe9143e088de015c0c844d40105.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-07-29 01:23:21', 'admin@demo.com', 0),
(6, 'why-invest-in-dash', 'Why Invest in Dash?', '', 'public/upload/news/9d5c09ab5b25569514fa852e2d2c1483.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-07-29 01:25:38', 'admin@demo.com', 0),
(7, 'asic-resistance-increasingly-hot-topic-in-crypto-as-monero-forks', 'ASIC Resistance Increasingly Hot Topic in Crypto as Monero Forks', '', 'public/upload/news/32083222f2430503659756a60d3b0b6b.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-07-29 01:23:28', 'admin@demo.com', 0),
(8, 'canadian-mining-giant-hyperblock-acquires-cryptoglobal-for-106-million', 'CANADIAN MINING GIANT HYPERBLOCK ACQUIRES CRYPTOGLOBAL FOR $106 MILLION', '', 'public/upload/news/e56c8562afa3795f3c4c3ecccc3bfa83.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-07-29 01:23:34', 'admin@demo.com', 0),
(9, 'how-can-blockchains-remove-the-pay-to-trade-barrier-in-the-market', 'How Can Blockchains Remove the ?Pay to Trade? Barrier in the Market?', '', 'public/upload/news/2ff94094fcfbe19daf303a479b9fad68.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-07-29 01:23:40', 'admin@demo.com', 0),
(10, 'how-blockchain-is-making-it-easier-to-get', 'How Blockchain Is Making It Easier to Get', '', 'public/upload/news/32083222f2430503659756a60d3b0b6b.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-07-29 01:23:49', 'admin@demo.com', 0),
(11, 'ripple-price-technical-analysis-xrpusd', 'Ripple Price Technical Analysis ? XRP/USD', '', 'public/upload/news/1624108242_d6f48e3f12188914203a.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-12-27 12:55:44', 'admin@demo.com', 0),
(12, 'bitfinex-introduces-trading-for-12-altcoins', 'Bitfinex Introduces Trading for 12 Altcoins', '', 'public/upload/news/bd92f765617da2c82d5cef5c1ebde2d3.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-12-27 12:55:57', 'admin@demo.com', 0),
(13, 'bitcoin-cash-price-trend-including', 'Bitcoin Cash Price Trend Including', 'Bitcoin Cash Price Trend Including', '//public/upload/news/b222d9177c5c522393710d9c10bc0c7f.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>\r\n', '', '', '', 9, NULL, 0, '2021-09-06 07:14:07', 'admin@demo.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_slider`
--

CREATE TABLE IF NOT EXISTS `web_slider` (
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

-- --------------------------------------------------------

--
-- Table structure for table `web_social_link`
--

CREATE TABLE IF NOT EXISTS `web_social_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_social_link`
--

INSERT INTO `web_social_link` (`id`, `name`, `link`, `icon`, `status`, `date`) VALUES
(1, 'Facebook', 'https://www.facebook.com', 'facebook', 1, '2018-04-02 05:52:31'),
(2, 'twitter', 'https://twitter.com', 'tumblr', 1, '2018-07-09 22:12:09'),
(3, 'google plus', 'https://google-plus.com', 'linkedin', 1, '2018-07-09 22:12:09'),
(4, 'youtube', 'https://www.youtube.com', 'dribbble', 1, '2018-07-09 22:12:09'),
(5, 'instagram', 'https://instagram.com', 'instagram', 0, '2021-09-07 04:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `web_subscriber`
--
CREATE TABLE IF NOT EXISTS `web_subscriber` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`sub_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

