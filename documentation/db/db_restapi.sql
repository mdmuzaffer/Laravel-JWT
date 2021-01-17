-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2021 at 10:06 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `iso` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dname` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `iso3` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `numcode` smallint(6) NOT NULL,
  `phonecode` mediumint(9) NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `dname`, `iso3`, `position`, `numcode`, `phonecode`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 'XX', 'UNKNOWN', 'Unknown', 'XX', 1, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(2, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 2, 4, 93, 1610863421, 1, 1610863421, 1, 0),
(3, 'AL', 'ALBANIA', 'Albania', 'ALB', 3, 8, 355, 1610863421, 1, 1610863421, 1, 0),
(4, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 4, 12, 213, 1610863421, 1, 1610863421, 1, 0),
(5, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 5, 16, 1684, 1610863421, 1, 1610863421, 1, 0),
(6, 'AD', 'ANDORRA', 'Andorra', 'AND', 6, 20, 376, 1610863421, 1, 1610863421, 1, 0),
(7, 'AO', 'ANGOLA', 'Angola', 'AGO', 7, 24, 244, 1610863421, 1, 1610863421, 1, 0),
(8, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 8, 660, 1264, 1610863421, 1, 1610863421, 1, 0),
(9, 'AQ', 'ANTARCTICA', 'Antarctica', 'AQ', 9, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(10, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 10, 28, 1268, 1610863421, 1, 1610863421, 1, 0),
(11, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 11, 32, 54, 1610863421, 1, 1610863421, 1, 0),
(12, 'AM', 'ARMENIA', 'Armenia', 'ARM', 12, 51, 374, 1610863421, 1, 1610863421, 1, 0),
(13, 'AW', 'ARUBA', 'Aruba', 'ABW', 13, 533, 297, 1610863421, 1, 1610863421, 1, 0),
(14, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 14, 36, 61, 1610863421, 1, 1610863421, 1, 0),
(15, 'AT', 'AUSTRIA', 'Austria', 'AUT', 15, 40, 43, 1610863421, 1, 1610863421, 1, 0),
(16, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 16, 31, 994, 1610863421, 1, 1610863421, 1, 0),
(17, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 17, 44, 1242, 1610863421, 1, 1610863421, 1, 0),
(18, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 18, 48, 973, 1610863421, 1, 1610863421, 1, 0),
(19, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 19, 50, 880, 1610863421, 1, 1610863421, 1, 0),
(20, 'BB', 'BARBADOS', 'Barbados', 'BRB', 20, 52, 1246, 1610863421, 1, 1610863421, 1, 0),
(21, 'BY', 'BELARUS', 'Belarus', 'BLR', 21, 112, 375, 1610863421, 1, 1610863421, 1, 0),
(22, 'BE', 'BELGIUM', 'Belgium', 'BEL', 22, 56, 32, 1610863421, 1, 1610863421, 1, 0),
(23, 'BZ', 'BELIZE', 'Belize', 'BLZ', 23, 84, 501, 1610863421, 1, 1610863421, 1, 0),
(24, 'BJ', 'BENIN', 'Benin', 'BEN', 24, 204, 229, 1610863421, 1, 1610863421, 1, 0),
(25, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 25, 60, 1441, 1610863421, 1, 1610863421, 1, 0),
(26, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 26, 64, 975, 1610863421, 1, 1610863421, 1, 0),
(27, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 27, 68, 591, 1610863421, 1, 1610863421, 1, 0),
(28, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 28, 70, 387, 1610863421, 1, 1610863421, 1, 0),
(29, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 29, 72, 267, 1610863421, 1, 1610863421, 1, 0),
(30, 'BV', 'BOUVET ISLAND', 'Bouvet Island', 'BV', 30, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(31, 'BR', 'BRAZIL', 'Brazil', 'BRA', 31, 76, 55, 1610863421, 1, 1610863421, 1, 0),
(32, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', 'IO', 32, 0, 246, 1610863421, 1, 1610863421, 1, 0),
(33, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 33, 96, 673, 1610863421, 1, 1610863421, 1, 0),
(34, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 34, 100, 359, 1610863421, 1, 1610863421, 1, 0),
(35, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 35, 854, 226, 1610863421, 1, 1610863421, 1, 0),
(36, 'BI', 'BURUNDI', 'Burundi', 'BDI', 36, 108, 257, 1610863421, 1, 1610863421, 1, 0),
(37, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 37, 116, 855, 1610863421, 1, 1610863421, 1, 0),
(38, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 38, 120, 237, 1610863421, 1, 1610863421, 1, 0),
(39, 'CA', 'CANADA', 'Canada', 'CAN', 39, 124, 1, 1610863421, 1, 1610863421, 1, 0),
(40, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 40, 132, 238, 1610863421, 1, 1610863421, 1, 0),
(41, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 41, 136, 1345, 1610863421, 1, 1610863421, 1, 0),
(42, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 42, 140, 236, 1610863421, 1, 1610863421, 1, 0),
(43, 'TD', 'CHAD', 'Chad', 'TCD', 43, 148, 235, 1610863421, 1, 1610863421, 1, 0),
(44, 'CL', 'CHILE', 'Chile', 'CHL', 44, 152, 56, 1610863421, 1, 1610863421, 1, 0),
(45, 'CN', 'CHINA', 'China', 'CHN', 45, 156, 86, 1610863421, 1, 1610863421, 1, 0),
(46, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', 'CX', 46, 0, 61, 1610863421, 1, 1610863421, 1, 0),
(47, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', 'CC', 47, 0, 672, 1610863421, 1, 1610863421, 1, 0),
(48, 'CO', 'COLOMBIA', 'Colombia', 'COL', 48, 170, 57, 1610863421, 1, 1610863421, 1, 0),
(49, 'KM', 'COMOROS', 'Comoros', 'COM', 49, 174, 269, 1610863421, 1, 1610863421, 1, 0),
(50, 'CG', 'CONGO', 'Congo', 'COG', 50, 178, 242, 1610863421, 1, 1610863421, 1, 0),
(51, 'CD', 'CONGO', 'Congo', 'CD', 51, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(52, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 52, 184, 682, 1610863421, 1, 1610863421, 1, 0),
(53, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 53, 188, 506, 1610863421, 1, 1610863421, 1, 0),
(54, 'CI', 'COTE DIVOIRE', 'Cote DIvoire', 'CIV', 54, 384, 225, 1610863421, 1, 1610863421, 1, 0),
(55, 'HR', 'CROATIA', 'Croatia', 'HRV', 55, 191, 385, 1610863421, 1, 1610863421, 1, 0),
(56, 'CU', 'CUBA', 'Cuba', 'CUB', 56, 192, 53, 1610863421, 1, 1610863421, 1, 0),
(57, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 57, 196, 357, 1610863421, 1, 1610863421, 1, 0),
(58, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 58, 203, 420, 1610863421, 1, 1610863421, 1, 0),
(59, 'DK', 'DENMARK', 'Denmark', 'DNK', 59, 208, 45, 1610863421, 1, 1610863421, 1, 0),
(60, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 60, 262, 253, 1610863421, 1, 1610863421, 1, 0),
(61, 'DM', 'DOMINICA', 'Dominica', 'DMA', 61, 212, 1767, 1610863421, 1, 1610863421, 1, 0),
(62, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 62, 214, 1809, 1610863421, 1, 1610863421, 1, 0),
(63, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 63, 218, 593, 1610863421, 1, 1610863421, 1, 0),
(64, 'EG', 'EGYPT', 'Egypt', 'EGY', 64, 818, 20, 1610863421, 1, 1610863421, 1, 0),
(65, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 65, 222, 503, 1610863421, 1, 1610863421, 1, 0),
(66, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 66, 226, 240, 1610863421, 1, 1610863421, 1, 0),
(67, 'ER', 'ERITREA', 'Eritrea', 'ERI', 67, 232, 291, 1610863421, 1, 1610863421, 1, 0),
(68, 'EE', 'ESTONIA', 'Estonia', 'EST', 68, 233, 372, 1610863421, 1, 1610863421, 1, 0),
(69, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 69, 231, 251, 1610863421, 1, 1610863421, 1, 0),
(70, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 70, 238, 500, 1610863421, 1, 1610863421, 1, 0),
(71, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 71, 234, 298, 1610863421, 1, 1610863421, 1, 0),
(72, 'FJ', 'FIJI', 'Fiji', 'FJI', 72, 242, 679, 1610863421, 1, 1610863421, 1, 0),
(73, 'FI', 'FINLAND', 'Finland', 'FIN', 73, 246, 358, 1610863421, 1, 1610863421, 1, 0),
(74, 'FR', 'FRANCE', 'France', 'FRA', 74, 250, 33, 1610863421, 1, 1610863421, 1, 0),
(75, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 75, 254, 594, 1610863421, 1, 1610863421, 1, 0),
(76, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 76, 258, 689, 1610863421, 1, 1610863421, 1, 0),
(77, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', 'TF', 77, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(78, 'GA', 'GABON', 'Gabon', 'GAB', 78, 266, 241, 1610863421, 1, 1610863421, 1, 0),
(79, 'GM', 'GAMBIA', 'Gambia', 'GMB', 79, 270, 220, 1610863421, 1, 1610863421, 1, 0),
(80, 'GE', 'GEORGIA', 'Georgia', 'GEO', 80, 268, 995, 1610863421, 1, 1610863421, 1, 0),
(81, 'DE', 'GERMANY', 'Germany', 'DEU', 81, 276, 49, 1610863421, 1, 1610863421, 1, 0),
(82, 'GH', 'GHANA', 'Ghana', 'GHA', 82, 288, 233, 1610863421, 1, 1610863421, 1, 0),
(83, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 83, 292, 350, 1610863421, 1, 1610863421, 1, 0),
(84, 'GR', 'GREECE', 'Greece', 'GRC', 84, 300, 30, 1610863421, 1, 1610863421, 1, 0),
(85, 'GL', 'GREENLAND', 'Greenland', 'GRL', 85, 304, 299, 1610863421, 1, 1610863421, 1, 0),
(86, 'GD', 'GRENADA', 'Grenada', 'GRD', 86, 308, 1473, 1610863421, 1, 1610863421, 1, 0),
(87, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 87, 312, 590, 1610863421, 1, 1610863421, 1, 0),
(88, 'GU', 'GUAM', 'Guam', 'GUM', 88, 316, 1671, 1610863421, 1, 1610863421, 1, 0),
(89, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 89, 320, 502, 1610863421, 1, 1610863421, 1, 0),
(90, 'GN', 'GUINEA', 'Guinea', 'GIN', 90, 324, 224, 1610863421, 1, 1610863421, 1, 0),
(91, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 91, 624, 245, 1610863421, 1, 1610863421, 1, 0),
(92, 'GY', 'GUYANA', 'Guyana', 'GUY', 92, 328, 592, 1610863421, 1, 1610863421, 1, 0),
(93, 'HT', 'HAITI', 'Haiti', 'HTI', 93, 332, 509, 1610863421, 1, 1610863421, 1, 0),
(94, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', 'HM', 94, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(95, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 95, 336, 39, 1610863421, 1, 1610863421, 1, 0),
(96, 'HN', 'HONDURAS', 'Honduras', 'HND', 96, 340, 504, 1610863421, 1, 1610863421, 1, 0),
(97, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 97, 344, 852, 1610863421, 1, 1610863421, 1, 0),
(98, 'HU', 'HUNGARY', 'Hungary', 'HUN', 98, 348, 36, 1610863421, 1, 1610863421, 1, 0),
(99, 'IS', 'ICELAND', 'Iceland', 'ISL', 99, 352, 354, 1610863421, 1, 1610863421, 1, 0),
(100, 'IN', 'INDIA', 'India', 'IND', 100, 356, 91, 1610863421, 1, 1610863421, 1, 0),
(101, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 101, 360, 62, 1610863421, 1, 1610863421, 1, 0),
(102, 'IR', 'IRAN', 'Iran', 'IR', 102, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(103, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 103, 368, 964, 1610863421, 1, 1610863421, 1, 0),
(104, 'IE', 'IRELAND', 'Ireland', 'IRL', 104, 372, 353, 1610863421, 1, 1610863421, 1, 0),
(105, 'IL', 'ISRAEL', 'Israel', 'ISR', 105, 376, 972, 1610863421, 1, 1610863421, 1, 0),
(106, 'IT', 'ITALY', 'Italy', 'ITA', 106, 380, 39, 1610863421, 1, 1610863421, 1, 0),
(107, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 107, 388, 1876, 1610863421, 1, 1610863421, 1, 0),
(108, 'JP', 'JAPAN', 'Japan', 'JPN', 108, 392, 81, 1610863421, 1, 1610863421, 1, 0),
(109, 'JO', 'JORDAN', 'Jordan', 'JOR', 109, 400, 962, 1610863421, 1, 1610863421, 1, 0),
(110, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 110, 398, 7, 1610863421, 1, 1610863421, 1, 0),
(111, 'KE', 'KENYA', 'Kenya', 'KEN', 111, 404, 254, 1610863421, 1, 1610863421, 1, 0),
(112, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 112, 296, 686, 1610863421, 1, 1610863421, 1, 0),
(113, 'KP', 'KOREA', 'Korea', 'KP', 113, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(114, 'KR', 'KOREA', 'Korea', 'KR', 114, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(115, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 115, 414, 965, 1610863421, 1, 1610863421, 1, 0),
(116, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 116, 417, 996, 1610863421, 1, 1610863421, 1, 0),
(117, 'LA', 'LAO PEOPLES DEMOCRATIC REPUBLIC', 'Lao Peoples Democratic Republic', 'LAO', 117, 418, 856, 1610863421, 1, 1610863421, 1, 0),
(118, 'LV', 'LATVIA', 'Latvia', 'LVA', 118, 428, 371, 1610863421, 1, 1610863421, 1, 0),
(119, 'LB', 'LEBANON', 'Lebanon', 'LBN', 119, 422, 961, 1610863421, 1, 1610863421, 1, 0),
(120, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 120, 426, 266, 1610863421, 1, 1610863421, 1, 0),
(121, 'LR', 'LIBERIA', 'Liberia', 'LBR', 121, 430, 231, 1610863421, 1, 1610863421, 1, 0),
(122, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 122, 434, 218, 1610863421, 1, 1610863421, 1, 0),
(123, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 123, 438, 423, 1610863421, 1, 1610863421, 1, 0),
(124, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 124, 440, 370, 1610863421, 1, 1610863421, 1, 0),
(125, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 125, 442, 352, 1610863421, 1, 1610863421, 1, 0),
(126, 'MO', 'MACAO', 'Macao', 'MAC', 126, 446, 853, 1610863421, 1, 1610863421, 1, 0),
(127, 'MK', 'MACEDONIA', 'Macedonia', 'MK', 127, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(128, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 128, 450, 261, 1610863421, 1, 1610863421, 1, 0),
(129, 'MW', 'MALAWI', 'Malawi', 'MWI', 129, 454, 265, 1610863421, 1, 1610863421, 1, 0),
(130, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 130, 458, 60, 1610863421, 1, 1610863421, 1, 0),
(131, 'MV', 'MALDIVES', 'Maldives', 'MDV', 131, 462, 960, 1610863421, 1, 1610863421, 1, 0),
(132, 'ML', 'MALI', 'Mali', 'MLI', 132, 466, 223, 1610863421, 1, 1610863421, 1, 0),
(133, 'MT', 'MALTA', 'Malta', 'MLT', 133, 470, 356, 1610863421, 1, 1610863421, 1, 0),
(134, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 134, 584, 692, 1610863421, 1, 1610863421, 1, 0),
(135, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 135, 474, 596, 1610863421, 1, 1610863421, 1, 0),
(136, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 136, 478, 222, 1610863421, 1, 1610863421, 1, 0),
(137, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 137, 480, 230, 1610863421, 1, 1610863421, 1, 0),
(138, 'YT', 'MAYOTTE', 'Mayotte', 'YT', 138, 0, 269, 1610863421, 1, 1610863421, 1, 0),
(139, 'MX', 'MEXICO', 'Mexico', 'MEX', 139, 484, 52, 1610863421, 1, 1610863421, 1, 0),
(140, 'FM', 'MICRONESIA', 'Micronesia', 'FM', 140, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(141, 'MD', 'MOLDOVA', 'Moldova', 'MD', 141, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(142, 'MC', 'MONACO', 'Monaco', 'MCO', 142, 492, 377, 1610863421, 1, 1610863421, 1, 0),
(143, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 143, 496, 976, 1610863421, 1, 1610863421, 1, 0),
(144, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 144, 500, 1664, 1610863421, 1, 1610863421, 1, 0),
(145, 'MA', 'MOROCCO', 'Morocco', 'MAR', 145, 504, 212, 1610863421, 1, 1610863421, 1, 0),
(146, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 146, 508, 258, 1610863421, 1, 1610863421, 1, 0),
(147, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 147, 104, 95, 1610863421, 1, 1610863421, 1, 0),
(148, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 148, 516, 264, 1610863421, 1, 1610863421, 1, 0),
(149, 'NR', 'NAURU', 'Nauru', 'NRU', 149, 520, 674, 1610863421, 1, 1610863421, 1, 0),
(150, 'NP', 'NEPAL', 'Nepal', 'NPL', 150, 524, 977, 1610863421, 1, 1610863421, 1, 0),
(151, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 151, 528, 31, 1610863421, 1, 1610863421, 1, 0),
(152, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 152, 530, 599, 1610863421, 1, 1610863421, 1, 0),
(153, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 153, 540, 687, 1610863421, 1, 1610863421, 1, 0),
(154, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 154, 554, 64, 1610863421, 1, 1610863421, 1, 0),
(155, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 155, 558, 505, 1610863421, 1, 1610863421, 1, 0),
(156, 'NE', 'NIGER', 'Niger', 'NER', 156, 562, 227, 1610863421, 1, 1610863421, 1, 0),
(157, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 157, 566, 234, 1610863421, 1, 1610863421, 1, 0),
(158, 'NU', 'NIUE', 'Niue', 'NIU', 158, 570, 683, 1610863421, 1, 1610863421, 1, 0),
(159, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 159, 574, 672, 1610863421, 1, 1610863421, 1, 0),
(160, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 160, 580, 1670, 1610863421, 1, 1610863421, 1, 0),
(161, 'NO', 'NORWAY', 'Norway', 'NOR', 161, 578, 47, 1610863421, 1, 1610863421, 1, 0),
(162, 'OM', 'OMAN', 'Oman', 'OMN', 162, 512, 968, 1610863421, 1, 1610863421, 1, 0),
(163, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 163, 586, 92, 1610863421, 1, 1610863421, 1, 0),
(164, 'PW', 'PALAU', 'Palau', 'PLW', 164, 585, 680, 1610863421, 1, 1610863421, 1, 0),
(165, 'PS', 'PALESTINIAN TERRITORY', 'Palestinian Territory', 'PS', 165, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(166, 'PA', 'PANAMA', 'Panama', 'PAN', 166, 591, 507, 1610863421, 1, 1610863421, 1, 0),
(167, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 167, 598, 675, 1610863421, 1, 1610863421, 1, 0),
(168, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 168, 600, 595, 1610863421, 1, 1610863421, 1, 0),
(169, 'PE', 'PERU', 'Peru', 'PER', 169, 604, 51, 1610863421, 1, 1610863421, 1, 0),
(170, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 170, 608, 63, 1610863421, 1, 1610863421, 1, 0),
(171, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 171, 612, 0, 1610863421, 1, 1610863421, 1, 0),
(172, 'PL', 'POLAND', 'Poland', 'POL', 172, 616, 48, 1610863421, 1, 1610863421, 1, 0),
(173, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 173, 620, 351, 1610863421, 1, 1610863421, 1, 0),
(174, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 174, 630, 1787, 1610863421, 1, 1610863421, 1, 0),
(175, 'QA', 'QATAR', 'Qatar', 'QAT', 175, 634, 974, 1610863421, 1, 1610863421, 1, 0),
(176, 'RE', 'REUNION', 'Reunion', 'REU', 176, 638, 262, 1610863421, 1, 1610863421, 1, 0),
(177, 'RO', 'ROMANIA', 'Romania', 'ROM', 177, 642, 40, 1610863421, 1, 1610863421, 1, 0),
(178, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 178, 643, 70, 1610863421, 1, 1610863421, 1, 0),
(179, 'RW', 'RWANDA', 'Rwanda', 'RWA', 179, 646, 250, 1610863421, 1, 1610863421, 1, 0),
(180, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 180, 654, 290, 1610863421, 1, 1610863421, 1, 0),
(181, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 181, 659, 1869, 1610863421, 1, 1610863421, 1, 0),
(182, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 182, 662, 1758, 1610863421, 1, 1610863421, 1, 0),
(183, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 183, 666, 508, 1610863421, 1, 1610863421, 1, 0),
(184, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 184, 670, 1784, 1610863421, 1, 1610863421, 1, 0),
(185, 'WS', 'SAMOA', 'Samoa', 'WSM', 185, 882, 684, 1610863421, 1, 1610863421, 1, 0),
(186, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 186, 674, 378, 1610863421, 1, 1610863421, 1, 0),
(187, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 187, 678, 239, 1610863421, 1, 1610863421, 1, 0),
(188, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 188, 682, 966, 1610863421, 1, 1610863421, 1, 0),
(189, 'SN', 'SENEGAL', 'Senegal', 'SEN', 189, 686, 221, 1610863421, 1, 1610863421, 1, 0),
(190, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', 'CS', 190, 0, 381, 1610863421, 1, 1610863421, 1, 0),
(191, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 191, 690, 248, 1610863421, 1, 1610863421, 1, 0),
(192, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 192, 694, 232, 1610863421, 1, 1610863421, 1, 0),
(193, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 193, 702, 65, 1610863421, 1, 1610863421, 1, 0),
(194, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 194, 703, 421, 1610863421, 1, 1610863421, 1, 0),
(195, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 195, 705, 386, 1610863421, 1, 1610863421, 1, 0),
(196, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 196, 90, 677, 1610863421, 1, 1610863421, 1, 0),
(197, 'SO', 'SOMALIA', 'Somalia', 'SOM', 197, 706, 252, 1610863421, 1, 1610863421, 1, 0),
(198, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 198, 710, 27, 1610863421, 1, 1610863421, 1, 0),
(199, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', 'GS', 199, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(200, 'ES', 'SPAIN', 'Spain', 'ESP', 200, 724, 34, 1610863421, 1, 1610863421, 1, 0),
(201, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 201, 144, 94, 1610863421, 1, 1610863421, 1, 0),
(202, 'SD', 'SUDAN', 'Sudan', 'SDN', 202, 736, 249, 1610863421, 1, 1610863421, 1, 0),
(203, 'SR', 'SURINAME', 'Suriname', 'SUR', 203, 740, 597, 1610863421, 1, 1610863421, 1, 0),
(204, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 204, 744, 47, 1610863421, 1, 1610863421, 1, 0),
(205, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 205, 748, 268, 1610863421, 1, 1610863421, 1, 0),
(206, 'SE', 'SWEDEN', 'Sweden', 'SWE', 206, 752, 46, 1610863421, 1, 1610863421, 1, 0),
(207, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 207, 756, 41, 1610863421, 1, 1610863421, 1, 0),
(208, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 208, 760, 963, 1610863421, 1, 1610863421, 1, 0),
(209, 'TW', 'TAIWAN', 'Taiwan', 'TW', 209, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(210, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 210, 762, 992, 1610863421, 1, 1610863421, 1, 0),
(211, 'TZ', 'TANZANIA', 'Tanzania', 'TZ', 211, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(212, 'TH', 'THAILAND', 'Thailand', 'THA', 212, 764, 66, 1610863421, 1, 1610863421, 1, 0),
(213, 'TL', 'TIMOR-LESTE', 'Timor-Leste', 'TL', 213, 0, 670, 1610863421, 1, 1610863421, 1, 0),
(214, 'TG', 'TOGO', 'Togo', 'TGO', 214, 768, 228, 1610863421, 1, 1610863421, 1, 0),
(215, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 215, 772, 690, 1610863421, 1, 1610863421, 1, 0),
(216, 'TO', 'TONGA', 'Tonga', 'TON', 216, 776, 676, 1610863421, 1, 1610863421, 1, 0),
(217, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 217, 780, 1868, 1610863421, 1, 1610863421, 1, 0),
(218, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 218, 788, 216, 1610863421, 1, 1610863421, 1, 0),
(219, 'TR', 'TURKEY', 'Turkey', 'TUR', 219, 792, 90, 1610863421, 1, 1610863421, 1, 0),
(220, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 220, 795, 7370, 1610863421, 1, 1610863421, 1, 0),
(221, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 221, 796, 1649, 1610863421, 1, 1610863421, 1, 0),
(222, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 222, 798, 688, 1610863421, 1, 1610863421, 1, 0),
(223, 'UG', 'UGANDA', 'Uganda', 'UGA', 223, 800, 256, 1610863421, 1, 1610863421, 1, 0),
(224, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 224, 804, 380, 1610863421, 1, 1610863421, 1, 0),
(225, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 225, 784, 971, 1610863421, 1, 1610863421, 1, 0),
(226, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 226, 826, 44, 1610863421, 1, 1610863421, 1, 0),
(227, 'US', 'UNITED STATES', 'United States', 'USA', 227, 840, 1, 1610863421, 1, 1610863421, 1, 0),
(228, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', 'UM', 228, 0, 1, 1610863421, 1, 1610863421, 1, 0),
(229, 'UY', 'URUGUAY', 'Uruguay', 'URY', 229, 858, 598, 1610863421, 1, 1610863421, 1, 0),
(230, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 230, 860, 998, 1610863421, 1, 1610863421, 1, 0),
(231, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 231, 548, 678, 1610863421, 1, 1610863421, 1, 0),
(232, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 232, 862, 58, 1610863421, 1, 1610863421, 1, 0),
(233, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 233, 704, 84, 1610863421, 1, 1610863421, 1, 0),
(234, 'VG', 'VIRGIN ISLANDS', 'Virgin Islands', 'VG', 234, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(235, 'VI', 'VIRGIN ISLANDS', 'Virgin Islands', 'VI', 235, 0, 0, 1610863421, 1, 1610863421, 1, 0),
(236, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 236, 876, 681, 1610863421, 1, 1610863421, 1, 0),
(237, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 237, 732, 212, 1610863421, 1, 1610863421, 1, 0),
(238, 'YE', 'YEMEN', 'Yemen', 'YEM', 238, 887, 967, 1610863421, 1, 1610863421, 1, 0),
(239, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 239, 894, 260, 1610863421, 1, 1610863421, 1, 0),
(240, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 240, 716, 263, 1610863421, 1, 1610863421, 1, 0),
(242, 'DFT', 'Rajan', 'PHP', 'KL', 3, 25, 120, 21, 2, 10, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2018_09_26_163300_student_register', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$izn/SqVRSEK6SmXOhAR8NusuyHF/tQckxj/DyDqIOdCxKjNhQ6msa', NULL, '2021-01-09 12:25:59', '2021-01-09 12:25:59'),
(2, 'developer', 'developer@gmail.com', NULL, '$2y$10$7wNuFFpar6UJpUCk12FUlOVhDKCZ6K9dQRMBY6HAp63p9AYQrJVu2', NULL, '2021-01-09 16:57:30', '2021-01-09 16:57:30'),
(7, 'dev', 'dev@gmail.com', NULL, '$2y$10$wFpmOHwSNv/6cmkZFAf6WeT.EFGkhu30H2bu9TUNEiDiT4759rH3q', NULL, '2021-01-09 17:13:42', '2021-01-09 17:13:42'),
(8, 'dev', 'de11v@gmail.com', NULL, '$2y$10$4ND1MBFT7IyLXPlZDf7KxOopb9r3jLxztadhV/uQPAWUzMF4PBbPy', NULL, '2021-01-09 17:15:03', '2021-01-09 17:15:03'),
(9, 'dev', 'de1111v@gmail.com', NULL, '$2y$10$ylp2USlp.1UjQsn7IwTR6e5wxUYeg4Ght2jv0AckNv.czP043dUxS', NULL, '2021-01-10 06:12:06', '2021-01-10 06:12:06'),
(10, 'dev', 'dev1@gmail.com', NULL, '$2y$10$n6GmGN5jRkZKdOC9C9gWXuV7Wf.DO/w7FvRFPDfm7NPdm3S//0/vi', NULL, '2021-01-17 02:37:15', '2021-01-17 02:37:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_iso_unique` (`iso`),
  ADD UNIQUE KEY `country_iso3_unique` (`iso3`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
