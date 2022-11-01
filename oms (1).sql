-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2022 at 05:44 AM
-- Server version: 5.7.24
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oms`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` int(11) DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `monthly_target` decimal(13,2) NOT NULL DEFAULT '0.00',
  `total_sale` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_sale_commission` decimal(15,2) NOT NULL DEFAULT '0.00',
  `current_sale` decimal(15,2) NOT NULL DEFAULT '0.00',
  `current_sale_commission` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_collection` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_collection_commission` decimal(15,2) NOT NULL DEFAULT '0.00',
  `current_collection` decimal(15,2) NOT NULL DEFAULT '0.00',
  `current_commission` decimal(15,2) NOT NULL DEFAULT '0.00',
  `current_income` decimal(15,2) NOT NULL DEFAULT '0.00',
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `contact_numbers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `user_id`, `depo_id`, `area`, `distributor_id`, `dealer_id`, `name`, `division_id`, `district_id`, `upazila_id`, `active`, `nid`, `balance`, `monthly_target`, `total_sale`, `total_sale_commission`, `current_sale`, `current_sale_commission`, `total_collection`, `total_collection_commission`, `current_collection`, `current_commission`, `current_income`, `address`, `contact_numbers`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Dhaka', 1, 1, '{\"en\":\"SR\"}', 8, 5, 165, 1, '234567876', '0.0000', '345432.00', '114736.00', '11513.60', '0.00', '0.00', '114736.00', '11513.60', '360.00', '0.00', '11196.39', '{\"en\":\"HaziPara\"}', NULL, 1, 1, '2021-05-31 03:44:40', '2021-12-30 06:50:44'),
(2, 5, 1, NULL, 2, 2, '{\"en\":\"SR 2\"}', 3, 1, 488, 1, '1213655996', '0.0000', '15000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '{\"en\":\"Recusandae Amet no\"}', '01918202568', 1, 1, '2021-06-26 07:19:23', '2021-06-26 07:19:23'),
(3, 18, 1, NULL, 1, 1, '{\"en\":\"Part 3\"}', 8, 5, 165, 1, '9555222224', '0.0000', '1000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '{\"en\":\"King Santoshpur, Dhanpur, Chauddagram, Comilla\"}', '01918202568', 1, 1, '2021-07-11 05:09:17', '2021-07-11 05:25:11'),
(4, 18, 1, NULL, 1, 3, '{\"en\":\"Part 3\"}', 8, 5, 165, 1, '9555222224', '0.0000', '1000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '{\"en\":\"dhaka\"}', '01918202567', 1, 1, '2021-07-14 06:46:14', '2021-07-14 06:46:14'),
(5, 60, 1, 'Uttara', 1, 1, '{\"en\":\"01788552233\"}', 8, 5, 165, 1, '01788552233', '0.0000', '110000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '{\"en\":\"01788552233\"}', '01788552233', 1, 1, '2021-12-30 06:22:18', '2021-12-30 06:23:11'),
(6, 61, 1, 'A2sys Dhaka', NULL, 1, '{\"en\":\"A2sys\"}', NULL, NULL, NULL, 1, '01744223366', '0.0000', '100000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '{\"en\":\"rampura\"}', '01744223366', 1, 1, '2021-12-30 08:19:10', '2021-12-30 08:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sub_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_decimals` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_3166_2` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `iso_3166_3` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `region_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sub_region_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `eea` tinyint(1) NOT NULL DEFAULT '0',
  `calling_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `capital`, `citizenship`, `country_code`, `currency`, `currency_code`, `currency_sub_unit`, `currency_symbol`, `currency_decimals`, `full_name`, `iso_3166_2`, `iso_3166_3`, `name`, `region_code`, `sub_region_code`, `eea`, `calling_code`, `flag`) VALUES
(4, 'Kabul', 'Afghan', '004', 'afghani', 'AFN', 'pul', '؋', 2, 'Islamic Republic of Afghanistan', 'AF', 'AFG', 'Afghanistan', '142', '034', 0, '93', 'AF.png'),
(8, 'Tirana', 'Albanian', '008', 'lek', 'ALL', '(qindar (pl. qindarka))', 'Lek', 2, 'Republic of Albania', 'AL', 'ALB', 'Albania', '150', '039', 0, '355', 'AL.png'),
(10, 'Antartica', 'of Antartica', '010', '', '', '', '', 2, 'Antarctica', 'AQ', 'ATA', 'Antarctica', '', '', 0, '672', 'AQ.png'),
(12, 'Algiers', 'Algerian', '012', 'Algerian dinar', 'DZD', 'centime', 'DZD', 2, 'People’s Democratic Republic of Algeria', 'DZ', 'DZA', 'Algeria', '002', '015', 0, '213', 'DZ.png'),
(16, 'Pago Pago', 'American Samoan', '016', 'US dollar', 'USD', 'cent', '$', 2, 'Territory of American', 'AS', 'ASM', 'American Samoa', '009', '061', 0, '1', 'AS.png'),
(20, 'Andorra la Vella', 'Andorran', '020', 'euro', 'EUR', 'cent', '€', 2, 'Principality of Andorra', 'AD', 'AND', 'Andorra', '150', '039', 0, '376', 'AD.png'),
(24, 'Luanda', 'Angolan', '024', 'kwanza', 'AOA', 'cêntimo', 'Kz', 2, 'Republic of Angola', 'AO', 'AGO', 'Angola', '002', '017', 0, '244', 'AO.png'),
(28, 'St John’s', 'of Antigua and Barbuda', '028', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Antigua and Barbuda', 'AG', 'ATG', 'Antigua and Barbuda', '019', '029', 0, '1', 'AG.png'),
(31, 'Baku', 'Azerbaijani', '031', 'Azerbaijani manat', 'AZN', 'kepik (inv.)', 'ман', 2, 'Republic of Azerbaijan', 'AZ', 'AZE', 'Azerbaijan', '142', '145', 0, '994', 'AZ.png'),
(32, 'Buenos Aires', 'Argentinian', '032', 'Argentine peso', 'ARS', 'centavo', '$', 2, 'Argentine Republic', 'AR', 'ARG', 'Argentina', '019', '005', 0, '54', 'AR.png'),
(36, 'Canberra', 'Australian', '036', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Commonwealth of Australia', 'AU', 'AUS', 'Australia', '009', '053', 0, '61', 'AU.png'),
(40, 'Vienna', 'Austrian', '040', 'euro', 'EUR', 'cent', '€', 2, 'Republic of Austria', 'AT', 'AUT', 'Austria', '150', '155', 1, '43', 'AT.png'),
(44, 'Nassau', 'Bahamian', '044', 'Bahamian dollar', 'BSD', 'cent', '$', 2, 'Commonwealth of the Bahamas', 'BS', 'BHS', 'Bahamas', '019', '029', 0, '1', 'BS.png'),
(48, 'Manama', 'Bahraini', '048', 'Bahraini dinar', 'BHD', 'fils (inv.)', 'BHD', 3, 'Kingdom of Bahrain', 'BH', 'BHR', 'Bahrain', '142', '145', 0, '973', 'BH.png'),
(50, 'Dhaka', 'Bangladeshi', '050', 'taka (inv.)', 'BDT', 'poisha (inv.)', 'BDT', 2, 'People’s Republic of Bangladesh', 'BD', 'BGD', 'Bangladesh', '142', '034', 0, '880', 'BD.png'),
(51, 'Yerevan', 'Armenian', '051', 'dram (inv.)', 'AMD', 'luma', 'AMD', 2, 'Republic of Armenia', 'AM', 'ARM', 'Armenia', '142', '145', 0, '374', 'AM.png'),
(52, 'Bridgetown', 'Barbadian', '052', 'Barbados dollar', 'BBD', 'cent', '$', 2, 'Barbados', 'BB', 'BRB', 'Barbados', '019', '029', 0, '1', 'BB.png'),
(56, 'Brussels', 'Belgian', '056', 'euro', 'EUR', 'cent', '€', 2, 'Kingdom of Belgium', 'BE', 'BEL', 'Belgium', '150', '155', 1, '32', 'BE.png'),
(60, 'Hamilton', 'Bermudian', '060', 'Bermuda dollar', 'BMD', 'cent', '$', 2, 'Bermuda', 'BM', 'BMU', 'Bermuda', '019', '021', 0, '1', 'BM.png'),
(64, 'Thimphu', 'Bhutanese', '064', 'ngultrum (inv.)', 'BTN', 'chhetrum (inv.)', 'BTN', 2, 'Kingdom of Bhutan', 'BT', 'BTN', 'Bhutan', '142', '034', 0, '975', 'BT.png'),
(68, 'Sucre (BO1)', 'Bolivian', '068', 'boliviano', 'BOB', 'centavo', '$b', 2, 'Plurinational State of Bolivia', 'BO', 'BOL', 'Bolivia, Plurinational State of', '019', '005', 0, '591', 'BO.png'),
(70, 'Sarajevo', 'of Bosnia and Herzegovina', '070', 'convertible mark', 'BAM', 'fening', 'KM', 2, 'Bosnia and Herzegovina', 'BA', 'BIH', 'Bosnia and Herzegovina', '150', '039', 0, '387', 'BA.png'),
(72, 'Gaborone', 'Botswanan', '072', 'pula (inv.)', 'BWP', 'thebe (inv.)', 'P', 2, 'Republic of Botswana', 'BW', 'BWA', 'Botswana', '002', '018', 0, '267', 'BW.png'),
(74, 'Bouvet island', 'of Bouvet island', '074', '', '', '', 'kr', 2, 'Bouvet Island', 'BV', 'BVT', 'Bouvet Island', '', '', 0, '47', 'BV.png'),
(76, 'Brasilia', 'Brazilian', '076', 'real (pl. reais)', 'BRL', 'centavo', 'R$', 2, 'Federative Republic of Brazil', 'BR', 'BRA', 'Brazil', '019', '005', 0, '55', 'BR.png'),
(84, 'Belmopan', 'Belizean', '084', 'Belize dollar', 'BZD', 'cent', 'BZ$', 2, 'Belize', 'BZ', 'BLZ', 'Belize', '019', '013', 0, '501', 'BZ.png'),
(86, 'Diego Garcia', 'Changosian', '086', 'US dollar', 'USD', 'cent', '$', 2, 'British Indian Ocean Territory', 'IO', 'IOT', 'British Indian Ocean Territory', '', '', 0, '246', 'IO.png'),
(90, 'Honiara', 'Solomon Islander', '090', 'Solomon Islands dollar', 'SBD', 'cent', '$', 2, 'Solomon Islands', 'SB', 'SLB', 'Solomon Islands', '009', '054', 0, '677', 'SB.png'),
(92, 'Road Town', 'British Virgin Islander;', '092', 'US dollar', 'USD', 'cent', '$', 2, 'British Virgin Islands', 'VG', 'VGB', 'Virgin Islands, British', '019', '029', 0, '1', 'VG.png'),
(96, 'Bandar Seri Begawan', 'Bruneian', '096', 'Brunei dollar', 'BND', 'sen (inv.)', '$', 2, 'Brunei Darussalam', 'BN', 'BRN', 'Brunei Darussalam', '142', '035', 0, '673', 'BN.png'),
(100, 'Sofia', 'Bulgarian', '100', 'lev (pl. leva)', 'BGN', 'stotinka', 'лв', 2, 'Republic of Bulgaria', 'BG', 'BGR', 'Bulgaria', '150', '151', 1, '359', 'BG.png'),
(104, 'Yangon', 'Burmese', '104', 'kyat', 'MMK', 'pya', 'K', 2, 'Union of Myanmar/', 'MM', 'MMR', 'Myanmar', '142', '035', 0, '95', 'MM.png'),
(108, 'Bujumbura', 'Burundian', '108', 'Burundi franc', 'BIF', 'centime', 'BIF', 0, 'Republic of Burundi', 'BI', 'BDI', 'Burundi', '002', '014', 0, '257', 'BI.png'),
(112, 'Minsk', 'Belarusian', '112', 'Belarusian rouble', 'BYR', 'kopek', 'p.', 2, 'Republic of Belarus', 'BY', 'BLR', 'Belarus', '150', '151', 0, '375', 'BY.png'),
(116, 'Phnom Penh', 'Cambodian', '116', 'riel', 'KHR', 'sen (inv.)', '៛', 2, 'Kingdom of Cambodia', 'KH', 'KHM', 'Cambodia', '142', '035', 0, '855', 'KH.png'),
(120, 'Yaoundé', 'Cameroonian', '120', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 0, 'Republic of Cameroon', 'CM', 'CMR', 'Cameroon', '002', '017', 0, '237', 'CM.png'),
(124, 'Ottawa', 'Canadian', '124', 'Canadian dollar', 'CAD', 'cent', '$', 2, 'Canada', 'CA', 'CAN', 'Canada', '019', '021', 0, '1', 'CA.png'),
(132, 'Praia', 'Cape Verdean', '132', 'Cape Verde escudo', 'CVE', 'centavo', 'CVE', 2, 'Republic of Cape Verde', 'CV', 'CPV', 'Cape Verde', '002', '011', 0, '238', 'CV.png'),
(136, 'George Town', 'Caymanian', '136', 'Cayman Islands dollar', 'KYD', 'cent', '$', 2, 'Cayman Islands', 'KY', 'CYM', 'Cayman Islands', '019', '029', 0, '1', 'KY.png'),
(140, 'Bangui', 'Central African', '140', 'CFA franc (BEAC)', 'XAF', 'centime', 'CFA', 0, 'Central African Republic', 'CF', 'CAF', 'Central African Republic', '002', '017', 0, '236', 'CF.png'),
(144, 'Colombo', 'Sri Lankan', '144', 'Sri Lankan rupee', 'LKR', 'cent', '₨', 2, 'Democratic Socialist Republic of Sri Lanka', 'LK', 'LKA', 'Sri Lanka', '142', '034', 0, '94', 'LK.png'),
(148, 'N’Djamena', 'Chadian', '148', 'CFA franc (BEAC)', 'XAF', 'centime', 'XAF', 0, 'Republic of Chad', 'TD', 'TCD', 'Chad', '002', '017', 0, '235', 'TD.png'),
(152, 'Santiago', 'Chilean', '152', 'Chilean peso', 'CLP', 'centavo', 'CLP', 0, 'Republic of Chile', 'CL', 'CHL', 'Chile', '019', '005', 0, '56', 'CL.png'),
(156, 'Beijing', 'Chinese', '156', 'renminbi-yuan (inv.)', 'CNY', 'jiao (10)', '¥', 2, 'People’s Republic of China', 'CN', 'CHN', 'China', '142', '030', 0, '86', 'CN.png'),
(158, 'Taipei', 'Taiwanese', '158', 'new Taiwan dollar', 'TWD', 'fen (inv.)', 'NT$', 2, 'Republic of China, Taiwan (TW1)', 'TW', 'TWN', 'Taiwan, Province of China', '142', '030', 0, '886', 'TW.png'),
(162, 'Flying Fish Cove', 'Christmas Islander', '162', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Christmas Island Territory', 'CX', 'CXR', 'Christmas Island', '', '', 0, '61', 'CX.png'),
(166, 'Bantam', 'Cocos Islander', '166', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Territory of Cocos (Keeling) Islands', 'CC', 'CCK', 'Cocos (Keeling) Islands', '', '', 0, '61', 'CC.png'),
(170, 'Santa Fe de Bogotá', 'Colombian', '170', 'Colombian peso', 'COP', 'centavo', '$', 2, 'Republic of Colombia', 'CO', 'COL', 'Colombia', '019', '005', 0, '57', 'CO.png'),
(174, 'Moroni', 'Comorian', '174', 'Comorian franc', 'KMF', '', 'KMF', 0, 'Union of the Comoros', 'KM', 'COM', 'Comoros', '002', '014', 0, '269', 'KM.png'),
(175, 'Mamoudzou', 'Mahorais', '175', 'euro', 'EUR', 'cent', '€', 2, 'Departmental Collectivity of Mayotte', 'YT', 'MYT', 'Mayotte', '002', '014', 0, '262', 'YT.png'),
(178, 'Brazzaville', 'Congolese', '178', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 0, 'Republic of the Congo', 'CG', 'COG', 'Congo', '002', '017', 0, '242', 'CG.png'),
(180, 'Kinshasa', 'Congolese', '180', 'Congolese franc', 'CDF', 'centime', 'CDF', 2, 'Democratic Republic of the Congo', 'CD', 'COD', 'Congo, the Democratic Republic of the', '002', '017', 0, '243', 'CD.png'),
(184, 'Avarua', 'Cook Islander', '184', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Cook Islands', 'CK', 'COK', 'Cook Islands', '009', '061', 0, '682', 'CK.png'),
(188, 'San José', 'Costa Rican', '188', 'Costa Rican colón (pl. colones)', 'CRC', 'céntimo', '₡', 2, 'Republic of Costa Rica', 'CR', 'CRI', 'Costa Rica', '019', '013', 0, '506', 'CR.png'),
(191, 'Zagreb', 'Croatian', '191', 'kuna (inv.)', 'HRK', 'lipa (inv.)', 'kn', 2, 'Republic of Croatia', 'HR', 'HRV', 'Croatia', '150', '039', 1, '385', 'HR.png'),
(192, 'Havana', 'Cuban', '192', 'Cuban peso', 'CUP', 'centavo', '₱', 2, 'Republic of Cuba', 'CU', 'CUB', 'Cuba', '019', '029', 0, '53', 'CU.png'),
(196, 'Nicosia', 'Cypriot', '196', 'euro', 'EUR', 'cent', 'CYP', 2, 'Republic of Cyprus', 'CY', 'CYP', 'Cyprus', '142', '145', 1, '357', 'CY.png'),
(203, 'Prague', 'Czech', '203', 'Czech koruna (pl. koruny)', 'CZK', 'halér', 'Kč', 2, 'Czech Republic', 'CZ', 'CZE', 'Czech Republic', '150', '151', 1, '420', 'CZ.png'),
(204, 'Porto Novo (BJ1)', 'Beninese', '204', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Benin', 'BJ', 'BEN', 'Benin', '002', '011', 0, '229', 'BJ.png'),
(208, 'Copenhagen', 'Danish', '208', 'Danish krone', 'DKK', 'øre (inv.)', 'kr', 2, 'Kingdom of Denmark', 'DK', 'DNK', 'Denmark', '150', '154', 1, '45', 'DK.png'),
(212, 'Roseau', 'Dominican', '212', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Commonwealth of Dominica', 'DM', 'DMA', 'Dominica', '019', '029', 0, '1', 'DM.png'),
(214, 'Santo Domingo', 'Dominican', '214', 'Dominican peso', 'DOP', 'centavo', 'RD$', 2, 'Dominican Republic', 'DO', 'DOM', 'Dominican Republic', '019', '029', 0, '1', 'DO.png'),
(218, 'Quito', 'Ecuadorian', '218', 'US dollar', 'USD', 'cent', '$', 2, 'Republic of Ecuador', 'EC', 'ECU', 'Ecuador', '019', '005', 0, '593', 'EC.png'),
(222, 'San Salvador', 'Salvadoran', '222', 'Salvadorian colón (pl. colones)', 'SVC', 'centavo', '$', 2, 'Republic of El Salvador', 'SV', 'SLV', 'El Salvador', '019', '013', 0, '503', 'SV.png'),
(226, 'Malabo', 'Equatorial Guinean', '226', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 2, 'Republic of Equatorial Guinea', 'GQ', 'GNQ', 'Equatorial Guinea', '002', '017', 0, '240', 'GQ.png'),
(231, 'Addis Ababa', 'Ethiopian', '231', 'birr (inv.)', 'ETB', 'cent', 'ETB', 2, 'Federal Democratic Republic of Ethiopia', 'ET', 'ETH', 'Ethiopia', '002', '014', 0, '251', 'ET.png'),
(232, 'Asmara', 'Eritrean', '232', 'nakfa', 'ERN', 'cent', 'Nfk', 2, 'State of Eritrea', 'ER', 'ERI', 'Eritrea', '002', '014', 0, '291', 'ER.png'),
(233, 'Tallinn', 'Estonian', '233', 'euro', 'EUR', 'cent', 'kr', 2, 'Republic of Estonia', 'EE', 'EST', 'Estonia', '150', '154', 1, '372', 'EE.png'),
(234, 'Tórshavn', 'Faeroese', '234', 'Danish krone', 'DKK', 'øre (inv.)', 'kr', 2, 'Faeroe Islands', 'FO', 'FRO', 'Faroe Islands', '150', '154', 0, '298', 'FO.png'),
(238, 'Stanley', 'Falkland Islander', '238', 'Falkland Islands pound', 'FKP', 'new penny', '£', 2, 'Falkland Islands', 'FK', 'FLK', 'Falkland Islands (Malvinas)', '019', '005', 0, '500', 'FK.png'),
(239, 'King Edward Point (Grytviken)', 'of South Georgia and the South Sandwich Islands', '239', '', '', '', '£', 2, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', '', '', 0, '44', 'GS.png'),
(242, 'Suva', 'Fijian', '242', 'Fiji dollar', 'FJD', 'cent', '$', 2, 'Republic of Fiji', 'FJ', 'FJI', 'Fiji', '009', '054', 0, '679', 'FJ.png'),
(246, 'Helsinki', 'Finnish', '246', 'euro', 'EUR', 'cent', '€', 2, 'Republic of Finland', 'FI', 'FIN', 'Finland', '150', '154', 1, '358', 'FI.png'),
(248, 'Mariehamn', 'Åland Islander', '248', 'euro', 'EUR', 'cent', NULL, NULL, 'Åland Islands', 'AX', 'ALA', 'Åland Islands', '150', '154', 0, '358', NULL),
(250, 'Paris', 'French', '250', 'euro', 'EUR', 'cent', '€', 2, 'French Republic', 'FR', 'FRA', 'France', '150', '155', 1, '33', 'FR.png'),
(254, 'Cayenne', 'Guianese', '254', 'euro', 'EUR', 'cent', '€', 2, 'French Guiana', 'GF', 'GUF', 'French Guiana', '019', '005', 0, '594', 'GF.png'),
(258, 'Papeete', 'Polynesian', '258', 'CFP franc', 'XPF', 'centime', 'XPF', 0, 'French Polynesia', 'PF', 'PYF', 'French Polynesia', '009', '061', 0, '689', 'PF.png'),
(260, 'Port-aux-Francais', 'of French Southern and Antarctic Lands', '260', 'euro', 'EUR', 'cent', '€', 2, 'French Southern and Antarctic Lands', 'TF', 'ATF', 'French Southern Territories', '', '', 0, '33', 'TF.png'),
(262, 'Djibouti', 'Djiboutian', '262', 'Djibouti franc', 'DJF', '', 'DJF', 0, 'Republic of Djibouti', 'DJ', 'DJI', 'Djibouti', '002', '014', 0, '253', 'DJ.png'),
(266, 'Libreville', 'Gabonese', '266', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 0, 'Gabonese Republic', 'GA', 'GAB', 'Gabon', '002', '017', 0, '241', 'GA.png'),
(268, 'Tbilisi', 'Georgian', '268', 'lari', 'GEL', 'tetri (inv.)', 'GEL', 2, 'Georgia', 'GE', 'GEO', 'Georgia', '142', '145', 0, '995', 'GE.png'),
(270, 'Banjul', 'Gambian', '270', 'dalasi (inv.)', 'GMD', 'butut', 'D', 2, 'Republic of the Gambia', 'GM', 'GMB', 'Gambia', '002', '011', 0, '220', 'GM.png'),
(275, NULL, 'Palestinian', '275', NULL, NULL, NULL, '₪', 2, NULL, 'PS', 'PSE', 'Palestinian Territory, Occupied', '142', '145', 0, '970', 'PS.png'),
(276, 'Berlin', 'German', '276', 'euro', 'EUR', 'cent', '€', 2, 'Federal Republic of Germany', 'DE', 'DEU', 'Germany', '150', '155', 1, '49', 'DE.png'),
(288, 'Accra', 'Ghanaian', '288', 'Ghana cedi', 'GHS', 'pesewa', '¢', 2, 'Republic of Ghana', 'GH', 'GHA', 'Ghana', '002', '011', 0, '233', 'GH.png'),
(292, 'Gibraltar', 'Gibraltarian', '292', 'Gibraltar pound', 'GIP', 'penny', '£', 2, 'Gibraltar', 'GI', 'GIB', 'Gibraltar', '150', '039', 0, '350', 'GI.png'),
(296, 'Tarawa', 'Kiribatian', '296', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Republic of Kiribati', 'KI', 'KIR', 'Kiribati', '009', '057', 0, '686', 'KI.png'),
(300, 'Athens', 'Greek', '300', 'euro', 'EUR', 'cent', '€', 2, 'Hellenic Republic', 'GR', 'GRC', 'Greece', '150', '039', 1, '30', 'GR.png'),
(304, 'Nuuk', 'Greenlander', '304', 'Danish krone', 'DKK', 'øre (inv.)', 'kr', 2, 'Greenland', 'GL', 'GRL', 'Greenland', '019', '021', 0, '299', 'GL.png'),
(308, 'St George’s', 'Grenadian', '308', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Grenada', 'GD', 'GRD', 'Grenada', '019', '029', 0, '1', 'GD.png'),
(312, 'Basse Terre', 'Guadeloupean', '312', 'euro', 'EUR ', 'cent', '€', 2, 'Guadeloupe', 'GP', 'GLP', 'Guadeloupe', '019', '029', 0, '590', 'GP.png'),
(316, 'Agaña (Hagåtña)', 'Guamanian', '316', 'US dollar', 'USD', 'cent', '$', 2, 'Territory of Guam', 'GU', 'GUM', 'Guam', '009', '057', 0, '1', 'GU.png'),
(320, 'Guatemala City', 'Guatemalan', '320', 'quetzal (pl. quetzales)', 'GTQ', 'centavo', 'Q', 2, 'Republic of Guatemala', 'GT', 'GTM', 'Guatemala', '019', '013', 0, '502', 'GT.png'),
(324, 'Conakry', 'Guinean', '324', 'Guinean franc', 'GNF', '', 'GNF', 0, 'Republic of Guinea', 'GN', 'GIN', 'Guinea', '002', '011', 0, '224', 'GN.png'),
(328, 'Georgetown', 'Guyanese', '328', 'Guyana dollar', 'GYD', 'cent', '$', 2, 'Cooperative Republic of Guyana', 'GY', 'GUY', 'Guyana', '019', '005', 0, '592', 'GY.png'),
(332, 'Port-au-Prince', 'Haitian', '332', 'gourde', 'HTG', 'centime', 'G', 2, 'Republic of Haiti', 'HT', 'HTI', 'Haiti', '019', '029', 0, '509', 'HT.png'),
(334, 'Territory of Heard Island and McDonald Islands', 'of Territory of Heard Island and McDonald Islands', '334', '', '', '', '$', 2, 'Territory of Heard Island and McDonald Islands', 'HM', 'HMD', 'Heard Island and McDonald Islands', '', '', 0, '61', 'HM.png'),
(336, 'Vatican City', 'of the Holy See/of the Vatican', '336', 'euro', 'EUR', 'cent', '€', 2, 'the Holy See/ Vatican City State', 'VA', 'VAT', 'Holy See (Vatican City State)', '150', '039', 0, '39', 'VA.png'),
(340, 'Tegucigalpa', 'Honduran', '340', 'lempira', 'HNL', 'centavo', 'L', 2, 'Republic of Honduras', 'HN', 'HND', 'Honduras', '019', '013', 0, '504', 'HN.png'),
(344, '(HK3)', 'Hong Kong Chinese', '344', 'Hong Kong dollar', 'HKD', 'cent', '$', 2, 'Hong Kong Special Administrative Region of the People’s Republic of China (HK2)', 'HK', 'HKG', 'Hong Kong', '142', '030', 0, '852', 'HK.png'),
(348, 'Budapest', 'Hungarian', '348', 'forint (inv.)', 'HUF', '(fillér (inv.))', 'Ft', 2, 'Republic of Hungary', 'HU', 'HUN', 'Hungary', '150', '151', 1, '36', 'HU.png'),
(352, 'Reykjavik', 'Icelander', '352', 'króna (pl. krónur)', 'ISK', '', 'kr', 0, 'Republic of Iceland', 'IS', 'ISL', 'Iceland', '150', '154', 0, '354', 'IS.png'),
(356, 'New Delhi', 'Indian', '356', 'Indian rupee', 'INR', 'paisa', '₹', 2, 'Republic of India', 'IN', 'IND', 'India', '142', '034', 0, '91', 'IN.png'),
(360, 'Jakarta', 'Indonesian', '360', 'Indonesian rupiah (inv.)', 'IDR', 'sen (inv.)', 'Rp', 2, 'Republic of Indonesia', 'ID', 'IDN', 'Indonesia', '142', '035', 0, '62', 'ID.png'),
(364, 'Tehran', 'Iranian', '364', 'Iranian rial', 'IRR', '(dinar) (IR1)', '﷼', 2, 'Islamic Republic of Iran', 'IR', 'IRN', 'Iran, Islamic Republic of', '142', '034', 0, '98', 'IR.png'),
(368, 'Baghdad', 'Iraqi', '368', 'Iraqi dinar', 'IQD', 'fils (inv.)', 'IQD', 3, 'Republic of Iraq', 'IQ', 'IRQ', 'Iraq', '142', '145', 0, '964', 'IQ.png'),
(372, 'Dublin', 'Irish', '372', 'euro', 'EUR', 'cent', '€', 2, 'Ireland (IE1)', 'IE', 'IRL', 'Ireland', '150', '154', 1, '353', 'IE.png'),
(376, '(IL1)', 'Israeli', '376', 'shekel', 'ILS', 'agora', '₪', 2, 'State of Israel', 'IL', 'ISR', 'Israel', '142', '145', 0, '972', 'IL.png'),
(380, 'Rome', 'Italian', '380', 'euro', 'EUR', 'cent', '€', 2, 'Italian Republic', 'IT', 'ITA', 'Italy', '150', '039', 1, '39', 'IT.png'),
(384, 'Yamoussoukro (CI1)', 'Ivorian', '384', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Côte d’Ivoire', 'CI', 'CIV', 'Côte d\'Ivoire', '002', '011', 0, '225', 'CI.png'),
(388, 'Kingston', 'Jamaican', '388', 'Jamaica dollar', 'JMD', 'cent', '$', 2, 'Jamaica', 'JM', 'JAM', 'Jamaica', '019', '029', 0, '1', 'JM.png'),
(392, 'Tokyo', 'Japanese', '392', 'yen (inv.)', 'JPY', '(sen (inv.)) (JP1)', '¥', 0, 'Japan', 'JP', 'JPN', 'Japan', '142', '030', 0, '81', 'JP.png'),
(398, 'Astana', 'Kazakh', '398', 'tenge (inv.)', 'KZT', 'tiyn', 'лв', 2, 'Republic of Kazakhstan', 'KZ', 'KAZ', 'Kazakhstan', '142', '143', 0, '7', 'KZ.png'),
(400, 'Amman', 'Jordanian', '400', 'Jordanian dinar', 'JOD', '100 qirsh', 'JOD', 2, 'Hashemite Kingdom of Jordan', 'JO', 'JOR', 'Jordan', '142', '145', 0, '962', 'JO.png'),
(404, 'Nairobi', 'Kenyan', '404', 'Kenyan shilling', 'KES', 'cent', 'KES', 2, 'Republic of Kenya', 'KE', 'KEN', 'Kenya', '002', '014', 0, '254', 'KE.png'),
(408, 'Pyongyang', 'North Korean', '408', 'North Korean won (inv.)', 'KPW', 'chun (inv.)', '₩', 2, 'Democratic People’s Republic of Korea', 'KP', 'PRK', 'Korea, Democratic People\'s Republic of', '142', '030', 0, '850', 'KP.png'),
(410, 'Seoul', 'South Korean', '410', 'South Korean won (inv.)', 'KRW', '(chun (inv.))', '₩', 0, 'Republic of Korea', 'KR', 'KOR', 'Korea, Republic of', '142', '030', 0, '82', 'KR.png'),
(414, 'Kuwait City', 'Kuwaiti', '414', 'Kuwaiti dinar', 'KWD', 'fils (inv.)', 'KWD', 3, 'State of Kuwait', 'KW', 'KWT', 'Kuwait', '142', '145', 0, '965', 'KW.png'),
(417, 'Bishkek', 'Kyrgyz', '417', 'som', 'KGS', 'tyiyn', 'лв', 2, 'Kyrgyz Republic', 'KG', 'KGZ', 'Kyrgyzstan', '142', '143', 0, '996', 'KG.png'),
(418, 'Vientiane', 'Lao', '418', 'kip (inv.)', 'LAK', '(at (inv.))', '₭', 0, 'Lao People’s Democratic Republic', 'LA', 'LAO', 'Lao People\'s Democratic Republic', '142', '035', 0, '856', 'LA.png'),
(422, 'Beirut', 'Lebanese', '422', 'Lebanese pound', 'LBP', '(piastre)', '£', 2, 'Lebanese Republic', 'LB', 'LBN', 'Lebanon', '142', '145', 0, '961', 'LB.png'),
(426, 'Maseru', 'Basotho', '426', 'loti (pl. maloti)', 'LSL', 'sente', 'L', 2, 'Kingdom of Lesotho', 'LS', 'LSO', 'Lesotho', '002', '018', 0, '266', 'LS.png'),
(428, 'Riga', 'Latvian', '428', 'euro', 'EUR', 'cent', 'Ls', 2, 'Republic of Latvia', 'LV', 'LVA', 'Latvia', '150', '154', 1, '371', 'LV.png'),
(430, 'Monrovia', 'Liberian', '430', 'Liberian dollar', 'LRD', 'cent', '$', 2, 'Republic of Liberia', 'LR', 'LBR', 'Liberia', '002', '011', 0, '231', 'LR.png'),
(434, 'Tripoli', 'Libyan', '434', 'Libyan dinar', 'LYD', 'dirham', 'LYD', 3, 'Socialist People’s Libyan Arab Jamahiriya', 'LY', 'LBY', 'Libya', '002', '015', 0, '218', 'LY.png'),
(438, 'Vaduz', 'Liechtensteiner', '438', 'Swiss franc', 'CHF', 'centime', 'CHF', 2, 'Principality of Liechtenstein', 'LI', 'LIE', 'Liechtenstein', '150', '155', 0, '423', 'LI.png'),
(440, 'Vilnius', 'Lithuanian', '440', 'euro', 'EUR', 'cent', 'Lt', 2, 'Republic of Lithuania', 'LT', 'LTU', 'Lithuania', '150', '154', 1, '370', 'LT.png'),
(442, 'Luxembourg', 'Luxembourger', '442', 'euro', 'EUR', 'cent', '€', 2, 'Grand Duchy of Luxembourg', 'LU', 'LUX', 'Luxembourg', '150', '155', 1, '352', 'LU.png'),
(446, 'Macao (MO3)', 'Macanese', '446', 'pataca', 'MOP', 'avo', 'MOP', 2, 'Macao Special Administrative Region of the People’s Republic of China (MO2)', 'MO', 'MAC', 'Macao', '142', '030', 0, '853', 'MO.png'),
(450, 'Antananarivo', 'Malagasy', '450', 'ariary', 'MGA', 'iraimbilanja (inv.)', 'MGA', 2, 'Republic of Madagascar', 'MG', 'MDG', 'Madagascar', '002', '014', 0, '261', 'MG.png'),
(454, 'Lilongwe', 'Malawian', '454', 'Malawian kwacha (inv.)', 'MWK', 'tambala (inv.)', 'MK', 2, 'Republic of Malawi', 'MW', 'MWI', 'Malawi', '002', '014', 0, '265', 'MW.png'),
(458, 'Kuala Lumpur (MY1)', 'Malaysian', '458', 'ringgit (inv.)', 'MYR', 'sen (inv.)', 'RM', 2, 'Malaysia', 'MY', 'MYS', 'Malaysia', '142', '035', 0, '60', 'MY.png'),
(462, 'Malé', 'Maldivian', '462', 'rufiyaa', 'MVR', 'laari (inv.)', 'Rf', 2, 'Republic of Maldives', 'MV', 'MDV', 'Maldives', '142', '034', 0, '960', 'MV.png'),
(466, 'Bamako', 'Malian', '466', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Mali', 'ML', 'MLI', 'Mali', '002', '011', 0, '223', 'ML.png'),
(470, 'Valletta', 'Maltese', '470', 'euro', 'EUR', 'cent', 'MTL', 2, 'Republic of Malta', 'MT', 'MLT', 'Malta', '150', '039', 1, '356', 'MT.png'),
(474, 'Fort-de-France', 'Martinican', '474', 'euro', 'EUR', 'cent', '€', 2, 'Martinique', 'MQ', 'MTQ', 'Martinique', '019', '029', 0, '596', 'MQ.png'),
(478, 'Nouakchott', 'Mauritanian', '478', 'ouguiya', 'MRO', 'khoum', 'UM', 2, 'Islamic Republic of Mauritania', 'MR', 'MRT', 'Mauritania', '002', '011', 0, '222', 'MR.png'),
(480, 'Port Louis', 'Mauritian', '480', 'Mauritian rupee', 'MUR', 'cent', '₨', 2, 'Republic of Mauritius', 'MU', 'MUS', 'Mauritius', '002', '014', 0, '230', 'MU.png'),
(484, 'Mexico City', 'Mexican', '484', 'Mexican peso', 'MXN', 'centavo', '$', 2, 'United Mexican States', 'MX', 'MEX', 'Mexico', '019', '013', 0, '52', 'MX.png'),
(492, 'Monaco', 'Monegasque', '492', 'euro', 'EUR', 'cent', '€', 2, 'Principality of Monaco', 'MC', 'MCO', 'Monaco', '150', '155', 0, '377', 'MC.png'),
(496, 'Ulan Bator', 'Mongolian', '496', 'tugrik', 'MNT', 'möngö (inv.)', '₮', 2, 'Mongolia', 'MN', 'MNG', 'Mongolia', '142', '030', 0, '976', 'MN.png'),
(498, 'Chisinau', 'Moldovan', '498', 'Moldovan leu (pl. lei)', 'MDL', 'ban', 'MDL', 2, 'Republic of Moldova', 'MD', 'MDA', 'Moldova, Republic of', '150', '151', 0, '373', 'MD.png'),
(499, 'Podgorica', 'Montenegrin', '499', 'euro', 'EUR', 'cent', '€', 2, 'Montenegro', 'ME', 'MNE', 'Montenegro', '150', '039', 0, '382', 'ME.png'),
(500, 'Plymouth (MS2)', 'Montserratian', '500', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Montserrat', 'MS', 'MSR', 'Montserrat', '019', '029', 0, '1', 'MS.png'),
(504, 'Rabat', 'Moroccan', '504', 'Moroccan dirham', 'MAD', 'centime', 'MAD', 2, 'Kingdom of Morocco', 'MA', 'MAR', 'Morocco', '002', '015', 0, '212', 'MA.png'),
(508, 'Maputo', 'Mozambican', '508', 'metical', 'MZN', 'centavo', 'MT', 2, 'Republic of Mozambique', 'MZ', 'MOZ', 'Mozambique', '002', '014', 0, '258', 'MZ.png'),
(512, 'Muscat', 'Omani', '512', 'Omani rial', 'OMR', 'baiza', '﷼', 3, 'Sultanate of Oman', 'OM', 'OMN', 'Oman', '142', '145', 0, '968', 'OM.png'),
(516, 'Windhoek', 'Namibian', '516', 'Namibian dollar', 'NAD', 'cent', '$', 2, 'Republic of Namibia', 'NA', 'NAM', 'Namibia', '002', '018', 0, '264', 'NA.png'),
(520, 'Yaren', 'Nauruan', '520', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Republic of Nauru', 'NR', 'NRU', 'Nauru', '009', '057', 0, '674', 'NR.png'),
(524, 'Kathmandu', 'Nepalese', '524', 'Nepalese rupee', 'NPR', 'paisa (inv.)', '₨', 2, 'Nepal', 'NP', 'NPL', 'Nepal', '142', '034', 0, '977', 'NP.png'),
(528, 'Amsterdam (NL2)', 'Dutch', '528', 'euro', 'EUR', 'cent', '€', 2, 'Kingdom of the Netherlands', 'NL', 'NLD', 'Netherlands', '150', '155', 1, '31', 'NL.png'),
(531, 'Willemstad', 'Curaçaoan', '531', 'Netherlands Antillean guilder (CW1)', 'ANG', 'cent', NULL, NULL, 'Curaçao', 'CW', 'CUW', 'Curaçao', '019', '029', 0, '599', NULL),
(533, 'Oranjestad', 'Aruban', '533', 'Aruban guilder', 'AWG', 'cent', 'ƒ', 2, 'Aruba', 'AW', 'ABW', 'Aruba', '019', '029', 0, '297', 'AW.png'),
(534, 'Philipsburg', 'Sint Maartener', '534', 'Netherlands Antillean guilder (SX1)', 'ANG', 'cent', NULL, NULL, 'Sint Maarten', 'SX', 'SXM', 'Sint Maarten (Dutch part)', '019', '029', 0, '721', NULL),
(535, NULL, 'of Bonaire, Sint Eustatius and Saba', '535', 'US dollar', 'USD', 'cent', NULL, NULL, NULL, 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', '019', '029', 0, '599', NULL),
(540, 'Nouméa', 'New Caledonian', '540', 'CFP franc', 'XPF', 'centime', 'XPF', 0, 'New Caledonia', 'NC', 'NCL', 'New Caledonia', '009', '054', 0, '687', 'NC.png'),
(548, 'Port Vila', 'Vanuatuan', '548', 'vatu (inv.)', 'VUV', '', 'Vt', 0, 'Republic of Vanuatu', 'VU', 'VUT', 'Vanuatu', '009', '054', 0, '678', 'VU.png'),
(554, 'Wellington', 'New Zealander', '554', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'New Zealand', 'NZ', 'NZL', 'New Zealand', '009', '053', 0, '64', 'NZ.png'),
(558, 'Managua', 'Nicaraguan', '558', 'córdoba oro', 'NIO', 'centavo', 'C$', 2, 'Republic of Nicaragua', 'NI', 'NIC', 'Nicaragua', '019', '013', 0, '505', 'NI.png'),
(562, 'Niamey', 'Nigerien', '562', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Niger', 'NE', 'NER', 'Niger', '002', '011', 0, '227', 'NE.png'),
(566, 'Abuja', 'Nigerian', '566', 'naira (inv.)', 'NGN', 'kobo (inv.)', '₦', 2, 'Federal Republic of Nigeria', 'NG', 'NGA', 'Nigeria', '002', '011', 0, '234', 'NG.png'),
(570, 'Alofi', 'Niuean', '570', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Niue', 'NU', 'NIU', 'Niue', '009', '061', 0, '683', 'NU.png'),
(574, 'Kingston', 'Norfolk Islander', '574', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Territory of Norfolk Island', 'NF', 'NFK', 'Norfolk Island', '009', '053', 0, '672', 'NF.png'),
(578, 'Oslo', 'Norwegian', '578', 'Norwegian krone (pl. kroner)', 'NOK', 'øre (inv.)', 'kr', 2, 'Kingdom of Norway', 'NO', 'NOR', 'Norway', '150', '154', 0, '47', 'NO.png'),
(580, 'Saipan', 'Northern Mariana Islander', '580', 'US dollar', 'USD', 'cent', '$', 2, 'Commonwealth of the Northern Mariana Islands', 'MP', 'MNP', 'Northern Mariana Islands', '009', '057', 0, '1', 'MP.png'),
(581, 'United States Minor Outlying Islands', 'of United States Minor Outlying Islands', '581', 'US dollar', 'USD', 'cent', '$', 2, 'United States Minor Outlying Islands', 'UM', 'UMI', 'United States Minor Outlying Islands', '', '', 0, '1', 'UM.png'),
(583, 'Palikir', 'Micronesian', '583', 'US dollar', 'USD', 'cent', '$', 2, 'Federated States of Micronesia', 'FM', 'FSM', 'Micronesia, Federated States of', '009', '057', 0, '691', 'FM.png'),
(584, 'Majuro', 'Marshallese', '584', 'US dollar', 'USD', 'cent', '$', 2, 'Republic of the Marshall Islands', 'MH', 'MHL', 'Marshall Islands', '009', '057', 0, '692', 'MH.png'),
(585, 'Melekeok', 'Palauan', '585', 'US dollar', 'USD', 'cent', '$', 2, 'Republic of Palau', 'PW', 'PLW', 'Palau', '009', '057', 0, '680', 'PW.png'),
(586, 'Islamabad', 'Pakistani', '586', 'Pakistani rupee', 'PKR', 'paisa', '₨', 2, 'Islamic Republic of Pakistan', 'PK', 'PAK', 'Pakistan', '142', '034', 0, '92', 'PK.png'),
(591, 'Panama City', 'Panamanian', '591', 'balboa', 'PAB', 'centésimo', 'B/.', 2, 'Republic of Panama', 'PA', 'PAN', 'Panama', '019', '013', 0, '507', 'PA.png'),
(598, 'Port Moresby', 'Papua New Guinean', '598', 'kina (inv.)', 'PGK', 'toea (inv.)', 'PGK', 2, 'Independent State of Papua New Guinea', 'PG', 'PNG', 'Papua New Guinea', '009', '054', 0, '675', 'PG.png'),
(600, 'Asunción', 'Paraguayan', '600', 'guaraní', 'PYG', 'céntimo', 'Gs', 0, 'Republic of Paraguay', 'PY', 'PRY', 'Paraguay', '019', '005', 0, '595', 'PY.png'),
(604, 'Lima', 'Peruvian', '604', 'new sol', 'PEN', 'céntimo', 'S/.', 2, 'Republic of Peru', 'PE', 'PER', 'Peru', '019', '005', 0, '51', 'PE.png'),
(608, 'Manila', 'Filipino', '608', 'Philippine peso', 'PHP', 'centavo', 'Php', 2, 'Republic of the Philippines', 'PH', 'PHL', 'Philippines', '142', '035', 0, '63', 'PH.png'),
(612, 'Adamstown', 'Pitcairner', '612', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Pitcairn Islands', 'PN', 'PCN', 'Pitcairn', '009', '061', 0, '649', 'PN.png'),
(616, 'Warsaw', 'Polish', '616', 'zloty', 'PLN', 'grosz (pl. groszy)', 'zł', 2, 'Republic of Poland', 'PL', 'POL', 'Poland', '150', '151', 1, '48', 'PL.png'),
(620, 'Lisbon', 'Portuguese', '620', 'euro', 'EUR', 'cent', '€', 2, 'Portuguese Republic', 'PT', 'PRT', 'Portugal', '150', '039', 1, '351', 'PT.png'),
(624, 'Bissau', 'Guinea-Bissau national', '624', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Guinea-Bissau', 'GW', 'GNB', 'Guinea-Bissau', '002', '011', 0, '245', 'GW.png'),
(626, 'Dili', 'East Timorese', '626', 'US dollar', 'USD', 'cent', '$', 2, 'Democratic Republic of East Timor', 'TL', 'TLS', 'Timor-Leste', '142', '035', 0, '670', 'TL.png'),
(630, 'San Juan', 'Puerto Rican', '630', 'US dollar', 'USD', 'cent', '$', 2, 'Commonwealth of Puerto Rico', 'PR', 'PRI', 'Puerto Rico', '019', '029', 0, '1', 'PR.png'),
(634, 'Doha', 'Qatari', '634', 'Qatari riyal', 'QAR', 'dirham', '﷼', 2, 'State of Qatar', 'QA', 'QAT', 'Qatar', '142', '145', 0, '974', 'QA.png'),
(638, 'Saint-Denis', 'Reunionese', '638', 'euro', 'EUR', 'cent', '€', 2, 'Réunion', 'RE', 'REU', 'Réunion', '002', '014', 0, '262', 'RE.png'),
(642, 'Bucharest', 'Romanian', '642', 'Romanian leu (pl. lei)', 'RON', 'ban (pl. bani)', 'lei', 2, 'Romania', 'RO', 'ROU', 'Romania', '150', '151', 1, '40', 'RO.png'),
(643, 'Moscow', 'Russian', '643', 'Russian rouble', 'RUB', 'kopek', 'руб', 2, 'Russian Federation', 'RU', 'RUS', 'Russian Federation', '150', '151', 0, '7', 'RU.png'),
(646, 'Kigali', 'Rwandan; Rwandese', '646', 'Rwandese franc', 'RWF', 'centime', 'RWF', 0, 'Republic of Rwanda', 'RW', 'RWA', 'Rwanda', '002', '014', 0, '250', 'RW.png'),
(652, 'Gustavia', 'of Saint Barthélemy', '652', 'euro', 'EUR', 'cent', NULL, NULL, 'Collectivity of Saint Barthélemy', 'BL', 'BLM', 'Saint Barthélemy', '019', '029', 0, '590', NULL),
(654, 'Jamestown', 'Saint Helenian', '654', 'Saint Helena pound', 'SHP', 'penny', '£', 2, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', '002', '011', 0, '290', 'SH.png'),
(659, 'Basseterre', 'Kittsian; Nevisian', '659', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Federation of Saint Kitts and Nevis', 'KN', 'KNA', 'Saint Kitts and Nevis', '019', '029', 0, '1', 'KN.png'),
(660, 'The Valley', 'Anguillan', '660', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Anguilla', 'AI', 'AIA', 'Anguilla', '019', '029', 0, '1', 'AI.png'),
(662, 'Castries', 'Saint Lucian', '662', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Saint Lucia', 'LC', 'LCA', 'Saint Lucia', '019', '029', 0, '1', 'LC.png'),
(663, 'Marigot', 'of Saint Martin', '663', 'euro', 'EUR', 'cent', NULL, NULL, 'Collectivity of Saint Martin', 'MF', 'MAF', 'Saint Martin (French part)', '019', '029', 0, '590', NULL),
(666, 'Saint-Pierre', 'St-Pierrais; Miquelonnais', '666', 'euro', 'EUR', 'cent', '€', 2, 'Territorial Collectivity of Saint Pierre and Miquelon', 'PM', 'SPM', 'Saint Pierre and Miquelon', '019', '021', 0, '508', 'PM.png'),
(670, 'Kingstown', 'Vincentian', '670', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 'Saint Vincent and the Grenadines', '019', '029', 0, '1', 'VC.png'),
(674, 'San Marino', 'San Marinese', '674', 'euro', 'EUR ', 'cent', '€', 2, 'Republic of San Marino', 'SM', 'SMR', 'San Marino', '150', '039', 0, '378', 'SM.png'),
(678, 'São Tomé', 'São Toméan', '678', 'dobra', 'STD', 'centavo', 'Db', 2, 'Democratic Republic of São Tomé and Príncipe', 'ST', 'STP', 'Sao Tome and Principe', '002', '017', 0, '239', 'ST.png'),
(682, 'Riyadh', 'Saudi Arabian', '682', 'riyal', 'SAR', 'halala', '﷼', 2, 'Kingdom of Saudi Arabia', 'SA', 'SAU', 'Saudi Arabia', '142', '145', 0, '966', 'SA.png'),
(686, 'Dakar', 'Senegalese', '686', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Senegal', 'SN', 'SEN', 'Senegal', '002', '011', 0, '221', 'SN.png'),
(688, 'Belgrade', 'Serb', '688', 'Serbian dinar', 'RSD', 'para (inv.)', NULL, NULL, 'Republic of Serbia', 'RS', 'SRB', 'Serbia', '150', '039', 0, '381', NULL),
(690, 'Victoria', 'Seychellois', '690', 'Seychelles rupee', 'SCR', 'cent', '₨', 2, 'Republic of Seychelles', 'SC', 'SYC', 'Seychelles', '002', '014', 0, '248', 'SC.png'),
(694, 'Freetown', 'Sierra Leonean', '694', 'leone', 'SLL', 'cent', 'Le', 2, 'Republic of Sierra Leone', 'SL', 'SLE', 'Sierra Leone', '002', '011', 0, '232', 'SL.png'),
(702, 'Singapore', 'Singaporean', '702', 'Singapore dollar', 'SGD', 'cent', '$', 2, 'Republic of Singapore', 'SG', 'SGP', 'Singapore', '142', '035', 0, '65', 'SG.png'),
(703, 'Bratislava', 'Slovak', '703', 'euro', 'EUR', 'cent', 'Sk', 2, 'Slovak Republic', 'SK', 'SVK', 'Slovakia', '150', '151', 1, '421', 'SK.png'),
(704, 'Hanoi', 'Vietnamese', '704', 'dong', 'VND', '(10 hào', '₫', 2, 'Socialist Republic of Vietnam', 'VN', 'VNM', 'Viet Nam', '142', '035', 0, '84', 'VN.png'),
(705, 'Ljubljana', 'Slovene', '705', 'euro', 'EUR', 'cent', '€', 2, 'Republic of Slovenia', 'SI', 'SVN', 'Slovenia', '150', '039', 1, '386', 'SI.png'),
(706, 'Mogadishu', 'Somali', '706', 'Somali shilling', 'SOS', 'cent', 'S', 2, 'Somali Republic', 'SO', 'SOM', 'Somalia', '002', '014', 0, '252', 'SO.png'),
(710, 'Pretoria (ZA1)', 'South African', '710', 'rand', 'ZAR', 'cent', 'R', 2, 'Republic of South Africa', 'ZA', 'ZAF', 'South Africa', '002', '018', 0, '27', 'ZA.png'),
(716, 'Harare', 'Zimbabwean', '716', 'Zimbabwe dollar (ZW1)', 'ZWL', 'cent', 'Z$', 2, 'Republic of Zimbabwe', 'ZW', 'ZWE', 'Zimbabwe', '002', '014', 0, '263', 'ZW.png'),
(724, 'Madrid', 'Spaniard', '724', 'euro', 'EUR', 'cent', '€', 2, 'Kingdom of Spain', 'ES', 'ESP', 'Spain', '150', '039', 1, '34', 'ES.png'),
(728, 'Juba', 'South Sudanese', '728', 'South Sudanese pound', 'SSP', 'piaster', NULL, NULL, 'Republic of South Sudan', 'SS', 'SSD', 'South Sudan', '002', '015', 0, '211', NULL),
(729, 'Khartoum', 'Sudanese', '729', 'Sudanese pound', 'SDG', 'piastre', NULL, NULL, 'Republic of the Sudan', 'SD', 'SDN', 'Sudan', '002', '015', 0, '249', NULL),
(732, 'Al aaiun', 'Sahrawi', '732', 'Moroccan dirham', 'MAD', 'centime', 'MAD', 2, 'Western Sahara', 'EH', 'ESH', 'Western Sahara', '002', '015', 0, '212', 'EH.png'),
(740, 'Paramaribo', 'Surinamese', '740', 'Surinamese dollar', 'SRD', 'cent', '$', 2, 'Republic of Suriname', 'SR', 'SUR', 'Suriname', '019', '005', 0, '597', 'SR.png'),
(744, 'Longyearbyen', 'of Svalbard', '744', 'Norwegian krone (pl. kroner)', 'NOK', 'øre (inv.)', 'kr', 2, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 'Svalbard and Jan Mayen', '150', '154', 0, '47', 'SJ.png'),
(748, 'Mbabane', 'Swazi', '748', 'lilangeni', 'SZL', 'cent', 'SZL', 2, 'Kingdom of Swaziland', 'SZ', 'SWZ', 'Swaziland', '002', '018', 0, '268', 'SZ.png'),
(752, 'Stockholm', 'Swedish', '752', 'krona (pl. kronor)', 'SEK', 'öre (inv.)', 'kr', 2, 'Kingdom of Sweden', 'SE', 'SWE', 'Sweden', '150', '154', 1, '46', 'SE.png'),
(756, 'Berne', 'Swiss', '756', 'Swiss franc', 'CHF', 'centime', 'CHF', 2, 'Swiss Confederation', 'CH', 'CHE', 'Switzerland', '150', '155', 0, '41', 'CH.png'),
(760, 'Damascus', 'Syrian', '760', 'Syrian pound', 'SYP', 'piastre', '£', 2, 'Syrian Arab Republic', 'SY', 'SYR', 'Syrian Arab Republic', '142', '145', 0, '963', 'SY.png'),
(762, 'Dushanbe', 'Tajik', '762', 'somoni', 'TJS', 'diram', 'TJS', 2, 'Republic of Tajikistan', 'TJ', 'TJK', 'Tajikistan', '142', '143', 0, '992', 'TJ.png'),
(764, 'Bangkok', 'Thai', '764', 'baht (inv.)', 'THB', 'satang (inv.)', '฿', 2, 'Kingdom of Thailand', 'TH', 'THA', 'Thailand', '142', '035', 0, '66', 'TH.png'),
(768, 'Lomé', 'Togolese', '768', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Togolese Republic', 'TG', 'TGO', 'Togo', '002', '011', 0, '228', 'TG.png'),
(772, '(TK2)', 'Tokelauan', '772', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Tokelau', 'TK', 'TKL', 'Tokelau', '009', '061', 0, '690', 'TK.png'),
(776, 'Nuku’alofa', 'Tongan', '776', 'pa’anga (inv.)', 'TOP', 'seniti (inv.)', 'T$', 2, 'Kingdom of Tonga', 'TO', 'TON', 'Tonga', '009', '061', 0, '676', 'TO.png'),
(780, 'Port of Spain', 'Trinidadian; Tobagonian', '780', 'Trinidad and Tobago dollar', 'TTD', 'cent', 'TT$', 2, 'Republic of Trinidad and Tobago', 'TT', 'TTO', 'Trinidad and Tobago', '019', '029', 0, '1', 'TT.png'),
(784, 'Abu Dhabi', 'Emirian', '784', 'UAE dirham', 'AED', 'fils (inv.)', 'AED', 2, 'United Arab Emirates', 'AE', 'ARE', 'United Arab Emirates', '142', '145', 0, '971', 'AE.png'),
(788, 'Tunis', 'Tunisian', '788', 'Tunisian dinar', 'TND', 'millime', 'TND', 3, 'Republic of Tunisia', 'TN', 'TUN', 'Tunisia', '002', '015', 0, '216', 'TN.png'),
(792, 'Ankara', 'Turk', '792', 'Turkish lira (inv.)', 'TRY', 'kurus (inv.)', '₺', 2, 'Republic of Turkey', 'TR', 'TUR', 'Turkey', '142', '145', 0, '90', 'TR.png'),
(795, 'Ashgabat', 'Turkmen', '795', 'Turkmen manat (inv.)', 'TMT', 'tenge (inv.)', 'm', 2, 'Turkmenistan', 'TM', 'TKM', 'Turkmenistan', '142', '143', 0, '993', 'TM.png'),
(796, 'Cockburn Town', 'Turks and Caicos Islander', '796', 'US dollar', 'USD', 'cent', '$', 2, 'Turks and Caicos Islands', 'TC', 'TCA', 'Turks and Caicos Islands', '019', '029', 0, '1', 'TC.png'),
(798, 'Funafuti', 'Tuvaluan', '798', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Tuvalu', 'TV', 'TUV', 'Tuvalu', '009', '061', 0, '688', 'TV.png'),
(800, 'Kampala', 'Ugandan', '800', 'Uganda shilling', 'UGX', 'cent', 'UGX', 0, 'Republic of Uganda', 'UG', 'UGA', 'Uganda', '002', '014', 0, '256', 'UG.png'),
(804, 'Kiev', 'Ukrainian', '804', 'hryvnia', 'UAH', 'kopiyka', '₴', 2, 'Ukraine', 'UA', 'UKR', 'Ukraine', '150', '151', 0, '380', 'UA.png'),
(807, 'Skopje', 'of the former Yugoslav Republic of Macedonia', '807', 'denar (pl. denars)', 'MKD', 'deni (inv.)', 'ден', 2, 'the former Yugoslav Republic of Macedonia', 'MK', 'MKD', 'Macedonia, the former Yugoslav Republic of', '150', '039', 0, '389', 'MK.png'),
(818, 'Cairo', 'Egyptian', '818', 'Egyptian pound', 'EGP', 'piastre', '£', 2, 'Arab Republic of Egypt', 'EG', 'EGY', 'Egypt', '002', '015', 0, '20', 'EG.png'),
(826, 'London', 'British', '826', 'pound sterling', 'GBP', 'penny (pl. pence)', '£', 2, 'United Kingdom of Great Britain and Northern Ireland', 'GB', 'GBR', 'United Kingdom', '150', '154', 1, '44', 'GB.png'),
(831, 'St Peter Port', 'of Guernsey', '831', 'Guernsey pound (GG2)', 'GGP (GG2)', 'penny (pl. pence)', NULL, NULL, 'Bailiwick of Guernsey', 'GG', 'GGY', 'Guernsey', '150', '154', 0, '44', NULL),
(832, 'St Helier', 'of Jersey', '832', 'Jersey pound (JE2)', 'JEP (JE2)', 'penny (pl. pence)', NULL, NULL, 'Bailiwick of Jersey', 'JE', 'JEY', 'Jersey', '150', '154', 0, '44', NULL),
(833, 'Douglas', 'Manxman; Manxwoman', '833', 'Manx pound (IM2)', 'IMP (IM2)', 'penny (pl. pence)', NULL, NULL, 'Isle of Man', 'IM', 'IMN', 'Isle of Man', '150', '154', 0, '44', NULL),
(834, 'Dodoma (TZ1)', 'Tanzanian', '834', 'Tanzanian shilling', 'TZS', 'cent', 'TZS', 2, 'United Republic of Tanzania', 'TZ', 'TZA', 'Tanzania, United Republic of', '002', '014', 0, '255', 'TZ.png'),
(840, 'Washington DC', 'American', '840', 'US dollar', 'USD', 'cent', '$', 2, 'United States of America', 'US', 'USA', 'United States', '019', '021', 0, '1', 'US.png'),
(850, 'Charlotte Amalie', 'US Virgin Islander', '850', 'US dollar', 'USD', 'cent', '$', 2, 'United States Virgin Islands', 'VI', 'VIR', 'Virgin Islands, U.S.', '019', '029', 0, '1', 'VI.png'),
(854, 'Ouagadougou', 'Burkinabe', '854', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Burkina Faso', 'BF', 'BFA', 'Burkina Faso', '002', '011', 0, '226', 'BF.png'),
(858, 'Montevideo', 'Uruguayan', '858', 'Uruguayan peso', 'UYU', 'centésimo', '$U', 0, 'Eastern Republic of Uruguay', 'UY', 'URY', 'Uruguay', '019', '005', 0, '598', 'UY.png'),
(860, 'Tashkent', 'Uzbek', '860', 'sum (inv.)', 'UZS', 'tiyin (inv.)', 'лв', 2, 'Republic of Uzbekistan', 'UZ', 'UZB', 'Uzbekistan', '142', '143', 0, '998', 'UZ.png'),
(862, 'Caracas', 'Venezuelan', '862', 'bolívar fuerte (pl. bolívares fuertes)', 'VEF', 'céntimo', 'Bs', 2, 'Bolivarian Republic of Venezuela', 'VE', 'VEN', 'Venezuela, Bolivarian Republic of', '019', '005', 0, '58', 'VE.png'),
(876, 'Mata-Utu', 'Wallisian; Futunan; Wallis and Futuna Islander', '876', 'CFP franc', 'XPF', 'centime', 'XPF', 0, 'Wallis and Futuna', 'WF', 'WLF', 'Wallis and Futuna', '009', '061', 0, '681', 'WF.png'),
(882, 'Apia', 'Samoan', '882', 'tala (inv.)', 'WST', 'sene (inv.)', 'WS$', 2, 'Independent State of Samoa', 'WS', 'WSM', 'Samoa', '009', '061', 0, '685', 'WS.png'),
(887, 'San’a', 'Yemenite', '887', 'Yemeni rial', 'YER', 'fils (inv.)', '﷼', 2, 'Republic of Yemen', 'YE', 'YEM', 'Yemen', '142', '145', 0, '967', 'YE.png'),
(894, 'Lusaka', 'Zambian', '894', 'Zambian kwacha (inv.)', 'ZMW', 'ngwee (inv.)', 'ZK', 2, 'Republic of Zambia', 'ZM', 'ZMB', 'Zambia', '002', '014', 0, '260', 'ZM.png');

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` int(11) DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_numbers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dealers`
--

INSERT INTO `dealers` (`id`, `user_id`, `depo_id`, `distributor_id`, `name`, `division_id`, `district_id`, `upazila_id`, `active`, `nid`, `balance`, `address`, `area`, `contact_numbers`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '{\"en\":\"SMO\"}', 8, 5, 165, 1, '3546458767', '0.0000', '{\"en\":\"Recusandae Amet\"}', 'DHAKA', '400', 1, 1, '2021-05-31 03:43:54', '2021-12-30 06:43:07'),
(2, 1, 2, 2, '{\"en\":\"Excerpter\"}', 3, 1, 488, 1, '23422664432', '0.0000', '{\"en\":\"test\"}', NULL, '01518643843', 1, 1, '2021-06-26 07:08:36', '2021-07-11 06:33:41'),
(3, 54, 1, 1, '{\"en\":\"Part 3\"}', 8, 5, 165, 0, '9555222224', '0.0000', '{\"en\":\"dhaka\"}', NULL, '2323434', 1, 1, '2021-07-13 05:00:34', '2021-07-13 05:00:34'),
(4, 55, 1, 1, '{\"en\":\"part 4 slogan modal\"}', 8, 5, 167, 0, '9555222224', '0.0000', '{\"en\":\"dhaka\"}', NULL, '019185156732423', 1, 1, '2021-07-13 05:17:04', '2021-07-13 05:17:04'),
(5, 56, 2, 2, '{\"en\":\"Part 3\"}', 3, 1, 488, 0, '549649649485', '0.0000', '{\"en\":\"dhaka\"}', NULL, '01918515673232', 1, 1, '2021-07-13 05:18:07', '2021-07-13 05:18:07'),
(6, 57, 3, 3, '{\"en\":\"Sint distinctio Eni\"}', 1, 35, 7, 1, 'Duis dolor doloribus', '0.0000', '{\"en\":\"Rerum et vel eum vel\"}', NULL, '534', 1, 1, '2021-07-13 05:27:08', '2021-07-13 05:27:08'),
(7, 41, 2, NULL, '{\"en\":\"11111111\"}', NULL, NULL, NULL, 1, '1111111', '0.0000', '{\"en\":\"1111111\"}', NULL, '11111', 1, 1, '2021-12-30 05:39:16', '2021-12-30 05:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `depos`
--

CREATE TABLE `depos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `contact_numbers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `depos`
--

INSERT INTO `depos` (`id`, `user_id`, `name`, `address`, `contact_numbers`, `nid`, `balance`, `division_id`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"en\":\"Sapiente\"}', '{\"en\":\"Mollitia dicta qui p\"}', '626', '567567567', '0.0000', 8, 1, 1, 1, '2021-05-30 23:53:01', '2021-06-26 13:28:46'),
(2, 1, '{\"en\":\"gmmm\"}', '{\"en\":\"adsf\"}', '01918888888', 'sfdghsdfgsdf', '0.0000', 3, 1, 1, 1, '2021-06-12 22:44:08', '2021-06-12 22:44:08'),
(3, 4, '{\"en\":\"Part 3\"}', '{\"en\":\"Recusandae Amet no\"}', '349345345435', '9555222224', '0.0000', 1, 1, 1, 1, '2021-07-11 05:07:57', '2021-07-11 05:07:57'),
(4, 51, '{\"en\":\"Part 3\"}', '{\"en\":\"dhaka\"}', '019185156745654664', '9555222224', '0.0000', 1, 0, 1, 1, '2021-07-13 04:52:42', '2021-07-13 04:52:42'),
(5, 52, '{\"en\":\"Part 3\"}', '{\"en\":\"dhaka\"}', '0191851567555', '9555222224', '0.0000', 1, 0, 1, 1, '2021-07-13 04:57:20', '2021-07-13 04:57:20'),
(6, 58, '{\"en\":\"GM Azbi\"}', '{\"en\":\"01711454545\"}', '01711454545', '01711454545', '0.0000', 3, 1, 1, 1, '2021-12-21 05:57:33', '2021-12-21 05:57:33'),
(7, 18, '{\"en\":\"111\"}', '{\"en\":\"111\"}', '11111', '11111', '0.0000', NULL, 1, 1, 1, '2021-12-30 05:15:58', '2021-12-30 05:15:58'),
(8, 59, '{\"en\":\"01788999966\"}', '{\"en\":\"01788999966\"}', '01788999966', '01788999966', '0.0000', NULL, 1, 1, 1, '2021-12-30 05:16:45', '2021-12-30 05:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `distributors`
--

CREATE TABLE `distributors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` int(11) DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_numbers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `balance` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distributors`
--

INSERT INTO `distributors` (`id`, `user_id`, `depo_id`, `name`, `address`, `nid`, `contact_numbers`, `division_id`, `district_id`, `active`, `balance`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '{\"en\":\"GM Role\"}', '{\"en\":\"Sint numquam nihil m\"}', '5456456458', '406', 8, 5, 1, '0.0000', 1, 1, '2021-05-31 03:43:29', '2021-05-31 03:43:29'),
(2, 1, 2, '{\"en\":\"d\"}', '{\"en\":\"gggggg\"}', '12321312311111111', '01918202567', 3, 1, 1, '0.0000', 1, 1, '2021-06-12 22:45:23', '2021-06-26 12:06:49'),
(3, 46, 3, '{\"en\":\"34534545gh\"}', '{\"en\":\"45t6t43534\"}', '34543545345', '01918515674654566577', 1, 35, 1, '0.0000', 4, 4, '2021-07-11 05:19:50', '2021-07-11 05:19:50'),
(4, 53, 1, '{\"en\":\"Part 3\"}', '{\"en\":\"dhaka\"}', '9555222224', '0191851567', 8, 5, 0, '0.0000', 1, 1, '2021-07-13 05:00:03', '2021-07-13 05:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bn_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `created_at`, `updated_at`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(2, 3, 'Faridpur', 'ফরিদপুর', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(3, 3, 'Gazipur', 'গাজীপুর', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(5, 8, 'Jamalpur', 'জামালপুর', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(7, 3, 'Madaripur', 'মাদারীপুর', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(10, 8, 'Mymensingh', 'ময়মনসিং', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(12, 3, 'Narsingdi', 'নরসিংদী', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(13, 8, 'Netrokona', 'নেত্রকোনা', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(14, 3, 'Rajbari', 'রাজবাড়ি', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(16, 8, 'Sherpur', 'শেরপুর', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(17, 3, 'Tangail', 'টাঙ্গাইল', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(18, 5, 'Bogra', 'বগুড়া', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(20, 5, 'Naogaon', 'নওগাঁ', '2018-09-27 07:06:23', '2018-09-27 07:06:23'),
(21, 5, 'Natore', 'নাটোর', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(23, 5, 'Pabna', 'পাবনা', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(24, 5, 'Rajshahi', 'রাজশাহী', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(26, 6, 'Dinajpur', 'দিনাজপুর', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(30, 6, 'Nilphamari', 'নীলফামারী', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(32, 6, 'Rangpur', 'রংপুর', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(34, 1, 'Barguna', 'বরগুনা', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(35, 1, 'Barisal', 'বরিশাল', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(36, 1, 'Bhola', 'ভোলা', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(39, 1, 'Pirojpur', 'পিরোজপুর', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(40, 2, 'Bandarban', 'বান্দরবান', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(42, 2, 'Chandpur', 'চাঁদপুর', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(43, 2, 'Chittagong', 'চট্টগ্রাম', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(44, 2, 'Comilla', 'কুমিল্লা', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(46, 2, 'Feni', 'ফেনী', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(49, 2, 'Noakhali', 'নোয়াখালী', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(54, 7, 'Sylhet', 'সিলেট', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(55, 4, 'Bagerhat', 'বাগেরহাট', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(57, 4, 'Jessore', 'যশোর', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(59, 4, 'Khulna', 'খুলনা', '2018-09-27 07:06:24', '2018-09-27 07:06:24'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', '2018-09-27 07:06:25', '2018-09-27 07:06:25'),
(61, 4, 'Magura', 'মাগুরা', '2018-09-27 07:06:25', '2018-09-27 07:06:25'),
(62, 4, 'Meherpur', 'মেহেরপুর', '2018-09-27 07:06:25', '2018-09-27 07:06:25'),
(63, 4, 'Narail', 'নড়াইল', '2018-09-27 07:06:25', '2018-09-27 07:06:25'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', '2018-09-27 07:06:25', '2018-09-27 07:06:25');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `drag_id` int(2) UNSIGNED DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bn_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `drag_id`, `name`, `bn_name`, `created_at`, `updated_at`) VALUES
(1, 5, 'Barisal', 'বরিশাল', '2018-08-14 08:10:15', '2018-09-15 06:01:57'),
(2, 2, 'Chittagong', 'চট্টগ্রাম', '2018-08-14 08:10:15', '2018-08-14 08:10:15'),
(3, 1, 'Dhaka', 'ঢাকা', '2018-08-14 08:10:15', '2018-08-14 08:10:15'),
(4, 4, 'Khulna', 'খুলনা', '2018-08-14 08:10:15', '2018-08-14 08:10:15'),
(5, 3, 'Rajshahi', 'রাজশাহী', '2018-08-14 08:10:16', '2018-08-14 08:10:16'),
(6, 7, 'Rangpur', 'রংপুর', '2018-08-14 08:10:16', '2018-08-14 08:10:16'),
(7, 6, 'Sylhet', 'সিলেট', '2018-08-14 08:10:16', '2018-08-14 08:10:16'),
(8, 8, 'Mymensingh', 'ময়মনসিংহ', '2018-08-14 08:10:16', '2018-08-14 08:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_carts`
--

CREATE TABLE `ecommerce_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie` text COLLATE utf8mb4_unicode_ci,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_categories`
--

CREATE TABLE `ecommerce_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sr_commission` decimal(5,2) UNSIGNED DEFAULT NULL,
  `shop_commission` decimal(5,2) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecommerce_categories`
--

INSERT INTO `ecommerce_categories` (`id`, `name`, `description`, `img_name`, `banner_name`, `position`, `sr_commission`, `shop_commission`, `active`, `featured`, `_lft`, `_rgt`, `parent_id`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": \"Fashion\"}', '{\"en\":\"aaa\"}', NULL, NULL, 0, '12.00', '25.00', 1, 0, 1, 2, NULL, NULL, 1, '2021-03-06 06:34:59', '2021-05-24 01:09:42'),
(4, '{\"en\": \"Craftss\"}', '{\"en\": null}', NULL, NULL, 1, '10.00', '20.00', 1, 0, 3, 4, NULL, NULL, 1, '2021-03-06 06:36:18', '2021-05-23 22:46:02'),
(5, '{\"en\":\"Medicine\"}', '{\"en\":\"test\"}', NULL, NULL, 0, '15.00', '20.00', 1, 1, 5, 8, NULL, NULL, 1, '2021-03-16 07:13:39', '2021-06-18 22:31:14'),
(6, '{\"en\":\"Sub Medicine\"}', '{\"en\":\"testing 2\"}', NULL, NULL, 0, '10.00', '20.00', 1, 0, 6, 7, 5, NULL, 1, '2021-06-18 22:31:36', '2021-06-18 22:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_cat_products`
--

CREATE TABLE `ecommerce_cat_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_string` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecommerce_cat_products`
--

INSERT INTO `ecommerce_cat_products` (`id`, `category_id`, `product_id`, `category_string`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(12, 4, 1, 'Craftss', 1, NULL, '2021-03-17 03:53:10', '2021-03-17 03:53:10'),
(13, 7, 2, 'Craftss > awdaw', 1, NULL, '2021-03-18 07:24:32', '2021-03-18 07:24:32'),
(14, 7, 3, 'Craftss > awdaw', 1, NULL, '2021-03-20 05:01:50', '2021-03-20 05:01:50'),
(15, 4, 3, 'Craftss > Craftss', 1, NULL, '2021-03-21 02:37:25', '2021-03-21 02:37:25'),
(16, 4, 4, 'Craftss', 1, NULL, '2021-03-21 02:39:04', '2021-03-21 02:39:04'),
(17, 4, 5, 'Craftss', 1, NULL, '2021-03-21 03:36:10', '2021-03-21 03:36:10'),
(18, 7, 6, 'Craftss > awdaw', 1, NULL, '2021-03-24 22:33:53', '2021-03-24 22:33:53'),
(19, 4, 7, 'Craftss', 1, NULL, '2021-03-24 22:51:33', '2021-03-24 22:51:33'),
(20, 4, 8, 'Craftss', 1, NULL, '2021-03-24 22:58:20', '2021-03-24 22:58:20'),
(21, 1, 9, 'Fashion', 1, NULL, '2021-03-24 23:03:25', '2021-03-24 23:03:25'),
(22, 1, 10, 'Fashion', 1, NULL, '2021-03-24 23:04:54', '2021-03-24 23:04:54'),
(23, 5, 11, 'Abcs', 1, NULL, '2021-03-24 23:05:35', '2021-03-24 23:05:35'),
(24, 8, 12, 'Abcs > awdaw > adwaw', 1, NULL, '2021-04-03 06:45:20', '2021-04-03 06:45:20'),
(25, 4, 14, NULL, 1, NULL, '2021-06-03 06:40:16', '2021-06-03 06:40:16'),
(26, 4, 15, NULL, 1, NULL, '2021-06-20 09:20:47', '2021-06-20 09:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_cat_shops`
--

CREATE TABLE `ecommerce_cat_shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_orders`
--

CREATE TABLE `ecommerce_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `market_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approvedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `total_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(13,2) NOT NULL DEFAULT '0.00',
  `total_collection_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(13,2) NOT NULL DEFAULT '0.00',
  `total_due` decimal(13,2) NOT NULL DEFAULT '0.00',
  `completed` tinyint(1) DEFAULT '0',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pending_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `processing_at` timestamp NULL DEFAULT NULL,
  `ready_to_ship_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `collected_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `returned_at` timestamp NULL DEFAULT NULL,
  `undelivered_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_order_items`
--

CREATE TABLE `ecommerce_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` json DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyer_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `market_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approvedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_description` text COLLATE utf8mb4_unicode_ci,
  `total_quantity` decimal(13,2) NOT NULL DEFAULT '0.00',
  `total_shipped_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(13,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(13,2) NOT NULL DEFAULT '0.00',
  `collection_amount` decimal(15,2) DEFAULT '0.00',
  `unit_discount` decimal(13,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(13,2) NOT NULL DEFAULT '0.00',
  `total_price_after_discount` decimal(13,2) NOT NULL DEFAULT '0.00',
  `affiliate_price` decimal(13,2) NOT NULL DEFAULT '0.00',
  `final_price` decimal(13,2) NOT NULL DEFAULT '0.00',
  `total_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stock_minimized` tinyint(1) NOT NULL DEFAULT '0',
  `pending_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `processing_at` timestamp NULL DEFAULT NULL,
  `ready_to_ship_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `returned_at` timestamp NULL DEFAULT NULL,
  `undelivered_at` timestamp NULL DEFAULT NULL,
  `paid_to_seller_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_order_payments`
--

CREATE TABLE `ecommerce_order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trans_date` date DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `paid_amount` decimal(13,2) DEFAULT NULL,
  `receivedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_payment_collections`
--

CREATE TABLE `ecommerce_payment_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trans_date` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `collected_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `paid_amount` decimal(13,2) DEFAULT NULL,
  `sr_commission_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `receivedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecommerce_payment_collections`
--

INSERT INTO `ecommerce_payment_collections` (`id`, `trans_date`, `user_id`, `source_id`, `agent_id`, `collected_by`, `collection_type`, `status`, `bank_name`, `account_number`, `cheque_number`, `image`, `note`, `paid_amount`, `sr_commission_amount`, `receivedby_id`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, '2021-06-07', NULL, 1, 1, 'agent', 'bank', 'varified', 'bank', 'bank', 'bank', NULL, 'bank', '500.00', '0.00', NULL, 1, 1, '2021-06-07 08:03:54', '2021-06-07 08:05:59'),
(3, '2021-06-07', NULL, 1, 2, 'agent', 'bank', 'varified', 'bank', 'bank', 'bank', NULL, 'bank', '300.00', '43.95', NULL, 1, 1, '2021-06-07 08:26:50', '2021-06-07 08:26:59'),
(4, '2021-07-13', NULL, 1, 1, 'agent', 'cash', 'varified', 'cash', 'cash', 'cash', NULL, 'cash', '200.00', '20.00', NULL, 1, 1, '2021-07-13 07:28:06', '2021-07-13 07:30:13'),
(5, '2021-07-13', NULL, 1, 1, 'agent', 'cash', 'varified', 'cash', 'cash', 'cash', NULL, 'cash', '113736.00', '11376.39', NULL, 1, 1, '2021-07-13 07:29:10', '2021-07-13 07:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_products`
--

CREATE TABLE `ecommerce_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `excerpt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `what_in_box` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `product_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `septic` tinyint(1) NOT NULL DEFAULT '0',
  `liquid` tinyint(1) NOT NULL DEFAULT '0',
  `inflammable` tinyint(1) NOT NULL DEFAULT '0',
  `pre_order` tinyint(1) NOT NULL DEFAULT '0',
  `digital` tinyint(1) NOT NULL DEFAULT '0',
  `refundable` tinyint(1) NOT NULL DEFAULT '1',
  `warrenty_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `warrenty_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ready_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_to_b` tinyint(1) NOT NULL DEFAULT '1',
  `b_to_c` tinyint(1) NOT NULL DEFAULT '1',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `market_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `close_date` date DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `feature_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `min_order_quantity` int(11) DEFAULT NULL,
  `max_order_quantity` int(11) DEFAULT NULL,
  `purchase_price` decimal(11,2) UNSIGNED DEFAULT NULL,
  `sale_price` decimal(11,2) DEFAULT NULL,
  `compare_price` decimal(11,2) DEFAULT NULL,
  `affiliate_commission` int(11) DEFAULT '0',
  `unit_weight` decimal(9,2) DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonus` int(20) DEFAULT NULL,
  `pice` int(20) DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecommerce_products`
--

INSERT INTO `ecommerce_products` (`id`, `user_id`, `source_id`, `category_id`, `name`, `excerpt`, `description`, `what_in_box`, `product_condition`, `septic`, `liquid`, `inflammable`, `pre_order`, `digital`, `refundable`, `warrenty_type`, `warrenty_period`, `ready_type`, `b_to_b`, `b_to_c`, `mobile`, `status`, `brand_id`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `market_id`, `lat`, `lng`, `publish_date`, `close_date`, `mfg_date`, `exp_date`, `feature_img`, `quantity`, `min_order_quantity`, `max_order_quantity`, `purchase_price`, `sale_price`, `compare_price`, `affiliate_commission`, `unit_weight`, `unit`, `type`, `type_value`, `unit_value`, `bonus`, `pice`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 7, '{\"en\":\"Alias voluptatem\",\"bn\":\"\"}', '{\"en\":\"Fugiat deserunt iste\",\"bn\":\"\"}', '{\"en\":\"Dolor veniam esse n\",\"bn\":\"\"}', '{\"en\":\"Qui quis libero libe\",\"bn\":\"\"}', '2nd_hand', 1, 1, 1, 1, 1, 1, 'replacement_warrenty', '', NULL, 1, 1, NULL, 'published', NULL, 1, 1, 516, 2576, 3, 1, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://oms.test/storage/product/fi/1_fi_2021_03_16_010455_57799413.jpg', NULL, 132, NULL, '23432.00', '234.00', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-14 01:16:35', '2021-05-26 00:39:03'),
(2, 1, 13, 4, '{\"en\":\"Nostrum libero aliqu\",\"bn\":\"\"}', '{\"en\":\"Ea provident do nih\",\"bn\":\"\"}', '{\"en\":\"Eum officia omnis au\",\"bn\":\"\"}', '{\"en\":\"Dolore ut eiusmod do\",\"bn\":\"\"}', 'used', 1, 0, 0, 0, 0, 0, 'service_warrenty', '', NULL, 1, 1, NULL, 'published', NULL, 1, 1, 516, 2576, 3, 1, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://oms.test/storage/product/fi/2_fi_2021_06_03_123859_72571762.png', NULL, 2, NULL, '23.00', '10.00', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-18 07:18:26', '2021-06-03 06:38:59'),
(3, 4, 16, 4, '{\"en\":\"Obcaecati velit labo\",\"bn\":\"\"}', '{\"en\":\"Incididunt iure dolo\",\"bn\":\"\"}', '{\"en\":\"Consectetur velit qu\",\"bn\":\"\"}', '{\"bn\":\"\",\"en\":\"Praesentium voluptat\"}', 'used', 0, 1, 1, 0, 0, 1, 'service_warrenty', '', NULL, 1, 1, NULL, 'published', NULL, 1, 1, 516, 2576, 3, 1, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://oms.test/storage/product/fi/3_fi_2021_03_20_110052_63341345.jpg', NULL, 3, NULL, '34.00', '15.00', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-20 05:00:39', '2021-05-26 00:40:43'),
(4, 5, 17, 5, '{\"en\":\"Autem voluptas paria\",\"bn\":\"\"}', '{\"en\":\"Quis consectetur au\",\"bn\":\"\"}', '{\"en\":\"Quam irure quia volu\",\"bn\":\"\"}', '{\"bn\":\"\",\"en\":\"Consequatur Incidid\"}', '2nd_hand', 0, 0, 1, 1, 1, 0, 'service_warrenty', '', NULL, 1, 1, NULL, 'published', NULL, 1, 1, 516, 2576, 3, 1, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://cpnew.test/storage/product/fi/4_fi_2021_03_21_083846_46280315.jpg', NULL, 4, NULL, '34.00', '200.00', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-21 02:38:34', '2021-05-26 00:40:54'),
(6, 1, 7, 5, '{\"en\":\"In eos laudantium a\",\"bn\":\"\"}', '{\"en\":\"Rerum natus iure vol\",\"bn\":\"\"}', '{\"en\":\"Dicta error officia\",\"bn\":\"\"}', '{\"bn\":\"\",\"en\":\"In quis consectetur\"}', 'new', 1, 0, 1, 0, 1, 0, 'replacement_warrenty', '', NULL, 1, 1, NULL, 'published', NULL, 1, 1, 516, 2576, 3, 1, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://cpnew.test/storage/product/fi/6_fi_2021_03_23_042854_45495230.jpeg', NULL, 2422, NULL, '342.00', '234.00', '234.00', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-22 22:16:59', '2021-05-26 00:41:00'),
(7, 9, 24, 5, '{\"en\":\"Sit esse ipsum recu\",\"bn\":\"\"}', '{\"en\":\"Reiciendis error non\",\"bn\":\"\"}', '{\"en\":\"Possimus tempora ut\",\"bn\":\"\"}', '{\"bn\":\"\",\"en\":\"Optio veniam offic\"}', 'used', 0, 0, 0, 1, 0, 0, 'replacement_warrenty', '', NULL, 1, 1, NULL, 'published', NULL, 1, 1, 516, 2576, 3, 1, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://cpnew.test/storage/product/fi/7_fi_2021_03_25_043615_26933862.jpg', NULL, 2343, NULL, '234.00', '23423.00', '23423.00', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-24 22:35:44', '2021-05-26 00:41:07'),
(8, 5, 17, 7, '{\"en\":\"Provident nihil nec\",\"bn\":\"\"}', '{\"en\":\"Enim dolor quo debit\",\"bn\":\"\"}', '{\"en\":\"Ipsum cum eum molest\",\"bn\":\"\"}', '{\"bn\":\"\",\"en\":\"Sed inventore mollit\"}', 'custom', 1, 0, 1, 1, 0, 1, 'service_warrenty', '', NULL, 1, 1, NULL, 'published', NULL, 1, 1, 516, 2576, 3, 1, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://cpnew.test/storage/product/fi/8_fi_2021_03_25_045618_55971337.jpg', NULL, 2342, NULL, '234.00', '23424.00', '234234.00', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-24 22:56:02', '2021-05-26 04:16:17'),
(9, 1, 6, 4, '{\"en\":\"Non ab labore laudan\",\"bn\":\"\"}', '{\"en\":\"Hic natus quisquam n\",\"bn\":\"\"}', '{\"en\":\"Quisquam in quaerat\",\"bn\":\"\"}', '{\"bn\":\"\",\"en\":\"Eiusmod eu fugiat es\"}', 'brand_new', 1, 0, 1, 1, 0, 0, 'service_warrenty', '', NULL, 1, 1, NULL, 'published', NULL, 1, 1, 516, 2576, 3, 1, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://cpnew.test/storage/product/fi/9_fi_2021_03_25_050131_27325717.jpg', NULL, 234, NULL, '2342.00', '234.00', '23423.00', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-24 23:01:12', '2021-05-26 00:41:13'),
(10, 4, 18, 4, '{\"en\":\"Consequuntur autem f\",\"bn\":\"\"}', '{\"en\":\"Velit in sit dolor\",\"bn\":\"\"}', '{\"en\":\"Aut facilis nostrud\",\"bn\":\"\"}', '{\"bn\":\"\",\"en\":\"Maiores voluptatem s\"}', 'reconditioned', 1, 0, 1, 0, 1, 1, 'replacement_warrenty', '', NULL, 1, 1, NULL, 'published', NULL, 1, 1, 516, 2576, 3, 1, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://cpnew.test/storage/product/fi/10_fi_2021_03_25_050342_57183392.jpg', NULL, 234, NULL, '2342.00', '2342.00', '234234.00', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-24 23:03:33', '2021-05-26 00:41:17'),
(11, 9, 24, 1, '{\"en\":\"Molestiae voluptatem\",\"bn\":\"\"}', '{\"en\":\"Hic dignissimos quo\",\"bn\":\"\"}', '{\"en\":\"Qui iusto exercitati\",\"bn\":\"\"}', '{\"bn\":\"\",\"en\":\"Placeat lorem harum\"}', 'custom', 0, 0, 0, 1, 0, 0, 'service_warrenty', '', NULL, 1, 1, NULL, 'published', NULL, 1, 1, 516, 2576, 3, 1, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://cpnew.test/storage/product/fi/11_fi_2021_03_25_050511_99934806.jpg', NULL, 2307, NULL, '23432.00', '234232.00', '342.00', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-24 23:05:03', '2021-05-26 00:41:23'),
(12, 5, 25, 9, '{\"en\":\"Ut nulla tempore no\",\"bn\":\"\"}', '{\"en\":\"Illo velit accusanti\",\"bn\":\"\"}', '{\"en\":\"Qui tempore tempor\",\"bn\":\"\"}', '{\"bn\":\"\",\"en\":\"Laboris eos in quia\"}', 'brand_new', 1, 1, 1, 1, 0, 1, 'replacement_warrenty', '', NULL, 1, 1, NULL, 'published', NULL, 1, 1, 516, 2576, 3, 1, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://cpnew.test/storage/product/fi/12_fi_2021_04_03_124336_11391197.jpg', NULL, 10, NULL, '123.00', '150.00', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-25 04:09:23', '2021-05-27 02:20:45'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, '1', NULL, NULL, 1, 1, NULL, 'temp', NULL, 1, 1, 516, 2576, 3, 1, 516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-04-17 04:02:12', '2021-04-17 04:02:12'),
(14, NULL, NULL, 4, '{\"en\":\"Samson Mcdowell\",\"bn\":\"\"}', '{\"en\":\"Quasi voluptatem re\",\"bn\":\"\"}', '{\"en\":\"Ut molestias eiusmod\",\"bn\":\"\"}', '{\"en\":\"Magnam officia ut do\",\"bn\":\"\"}', NULL, 0, 1, 0, 1, 0, 1, '1', NULL, NULL, 1, 1, NULL, 'published', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://oms.test/storage/product/fi/14_fi_2021_06_03_124032_66654112.png', NULL, 581, NULL, '310.00', '245.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, '2021-06-03 06:40:16', '2021-06-18 22:35:19'),
(15, NULL, NULL, 4, '{\"en\":\"Anastasia Hurst\",\"bn\":\"\"}', '{\"en\":\"Consectetur debitis\",\"bn\":\"\"}', '{\"en\":\"Placeat nostrud quo\",\"bn\":\"\"}', '{\"en\":\"Ut possimus nostrum\",\"bn\":\"\"}', NULL, 0, 1, 1, 1, 0, 1, '1', NULL, NULL, 1, 1, NULL, 'published', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 382, NULL, '56.00', '270.00', NULL, 0, NULL, 'ml', 'number', 'D', '450', 0, 0, 1, NULL, '2021-06-20 09:20:47', '2021-06-20 10:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_product_media`
--

CREATE TABLE `ecommerce_product_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ecommerce_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_product_prices`
--

CREATE TABLE `ecommerce_product_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `min_unit` int(10) UNSIGNED DEFAULT NULL,
  `purchase_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `sale_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecommerce_product_prices`
--

INSERT INTO `ecommerce_product_prices` (`id`, `product_id`, `min_unit`, `purchase_price`, `sale_price`, `created_at`, `updated_at`) VALUES
(3, 6, 43533, '123.00', '223.00', '2021-03-23 05:20:56', '2021-04-11 23:11:11'),
(4, 12, 160, '90.00', '110.00', '2021-04-03 06:45:20', '2021-04-03 06:45:20'),
(5, 12, 100, '100.00', '120.00', '2021-04-03 06:45:20', '2021-04-03 06:45:20'),
(6, 6, 2342, '234.00', '234234.00', '2021-04-11 23:32:54', '2021-04-11 23:32:54'),
(7, 6, 23, '42.00', '423.00', '2021-04-12 06:03:54', '2021-04-12 06:03:54'),
(8, 8, 23423, '23423.00', '234234.00', '2021-04-12 06:11:32', '2021-04-12 06:11:32'),
(9, 8, 23234, '234234.00', '234234.00', '2021-04-12 06:12:37', '2021-04-12 06:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_sales_list_products`
--

CREATE TABLE `ecommerce_sales_list_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_list_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecommerce_sales_list_products`
--

INSERT INTO `ecommerce_sales_list_products` (`id`, `sales_list_id`, `product_id`, `position`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(3, 11, 2, NULL, 1, NULL, '2021-04-11 22:01:17', '2021-04-11 22:01:17'),
(4, 11, 1, NULL, 1, NULL, '2021-04-11 22:08:26', '2021-04-11 22:08:26'),
(5, 11, 3, NULL, 1, NULL, '2021-04-11 22:08:26', '2021-04-11 22:08:26'),
(6, 11, 6, NULL, 1, NULL, '2021-04-11 22:08:26', '2021-04-11 22:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_shop_categories`
--

CREATE TABLE `ecommerce_shop_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_sources`
--

CREATE TABLE `ecommerce_sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_optional` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `initial_amount` decimal(13,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `monthly_target` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_sale` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_sale_commission` decimal(15,2) NOT NULL DEFAULT '0.00',
  `current_sale` decimal(15,2) NOT NULL DEFAULT '0.00',
  `current_sale_commission` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_collection` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_collection_commission` decimal(15,2) NOT NULL DEFAULT '0.00',
  `current_collection` decimal(15,2) NOT NULL DEFAULT '0.00',
  `current_commission` decimal(15,2) NOT NULL DEFAULT '0.00',
  `cover_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `market_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `balance` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `seller_commission` int(11) NOT NULL DEFAULT '10',
  `pos` tinyint(1) NOT NULL DEFAULT '0',
  `self_domain` tinyint(1) NOT NULL DEFAULT '0',
  `sale_to_cp` tinyint(1) NOT NULL DEFAULT '1',
  `sale_from_cp` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecommerce_sources`
--

INSERT INTO `ecommerce_sources` (`id`, `user_id`, `addedby_id`, `editedby_id`, `email`, `mobile`, `mobile_optional`, `name`, `owner_name`, `slogan`, `description`, `address`, `initial_amount`, `due_amount`, `monthly_target`, `total_sale`, `total_sale_commission`, `current_sale`, `current_sale_commission`, `total_collection`, `total_collection_commission`, `current_collection`, `current_commission`, `cover_img`, `logo`, `type`, `mobile_country`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `market_id`, `lat`, `lng`, `active`, `balance`, `seller_commission`, `pos`, `self_domain`, `sale_to_cp`, `sale_from_cp`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, NULL, NULL, '97534534534', NULL, '{\"en\":\"Molestiae doloribus\"}', 'Esse culpa aut aut d', '{\"bn\":\"\"}', '{\"en\":\"Amet dolor ipsam ex\"}', '{\"en\":\"Ducimus sit beatae\"}', '28434.00', '28434.00', '234234234.00', '114736.00', '28684.00', '0.00', '0.00', '114736.00', '28684.00', '360.00', '0.00', NULL, NULL, 'flagship_distributor', NULL, 1, 1, 1, 1, 8, 5, 165, NULL, NULL, NULL, 1, '0.0000', 10, 0, 0, 1, 0, 'normal', '2021-05-31 05:46:10', '2021-07-13 07:30:13'),
(2, NULL, 18, NULL, NULL, '1212132311', NULL, '{\"en\":\"asd\",\"bn\":\"\"}', 'asdasd', NULL, '{\"en\":\"asdasdasdasd\",\"bn\":\"\"}', '{\"en\":\"asdsadsad\",\"bn\":\"\"}', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 'distributor', NULL, 1, 1, 1, 3, 8, 5, 165, NULL, NULL, NULL, 0, '0.0000', 10, 0, 0, 1, 0, 'normal', '2021-07-14 11:04:29', '2021-07-14 11:04:29');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `name`, `address`, `lat`, `lng`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": \"Temporary Market Name 1-1\"}', '{\"en\": null}', NULL, NULL, 15, 34, 1, 1, 1, 34, 1, 1, 1, 1, '2021-02-21 10:09:01', '2021-02-21 10:09:01'),
(2, '{\"en\": \"Temporary Market Name 1-2\"}', '{\"en\": null}', NULL, NULL, 15, 34, 1, 2, 1, 34, 1, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(3, '{\"en\": \"Temporary Market Name 1-3\"}', '{\"en\": null}', NULL, NULL, 15, 34, 1, 3, 1, 34, 1, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(4, '{\"en\": \"Temporary Market Name 1-4\"}', '{\"en\": null}', NULL, NULL, 15, 34, 1, 4, 1, 34, 1, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(5, '{\"en\": \"Temporary Market Name 1-5\"}', '{\"en\": null}', NULL, NULL, 15, 34, 1, 5, 1, 34, 1, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(6, '{\"en\": \"Temporary Market Name 2-1\"}', '{\"en\": null}', NULL, NULL, 15, 34, 2, 1, 1, 34, 2, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(7, '{\"en\": \"Temporary Market Name 2-2\"}', '{\"en\": null}', NULL, NULL, 15, 34, 2, 2, 1, 34, 2, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(8, '{\"en\": \"Temporary Market Name 2-3\"}', '{\"en\": null}', NULL, NULL, 15, 34, 2, 3, 1, 34, 2, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(9, '{\"en\": \"Temporary Market Name 2-4\"}', '{\"en\": null}', NULL, NULL, 15, 34, 2, 4, 1, 34, 2, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(10, '{\"en\": \"Temporary Market Name 2-5\"}', '{\"en\": null}', NULL, NULL, 15, 34, 2, 5, 1, 34, 2, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(11, '{\"en\": \"Temporary Market Name 3-1\"}', '{\"en\": null}', NULL, NULL, 15, 34, 3, 1, 1, 34, 3, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(12, '{\"en\": \"Temporary Market Name 3-2\"}', '{\"en\": null}', NULL, NULL, 15, 34, 3, 2, 1, 34, 3, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(13, '{\"en\": \"Temporary Market Name 3-3\"}', '{\"en\": null}', NULL, NULL, 15, 34, 3, 3, 1, 34, 3, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(14, '{\"en\": \"Temporary Market Name 3-4\"}', '{\"en\": null}', NULL, NULL, 15, 34, 3, 4, 1, 34, 3, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(15, '{\"en\": \"Temporary Market Name 3-5\"}', '{\"en\": null}', NULL, NULL, 15, 34, 3, 5, 1, 34, 3, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(16, '{\"en\": \"Temporary Market Name 4-1\"}', '{\"en\": null}', NULL, NULL, 15, 34, 4, 1, 1, 34, 4, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(17, '{\"en\": \"Temporary Market Name 4-2\"}', '{\"en\": null}', NULL, NULL, 15, 34, 4, 2, 1, 34, 4, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(18, '{\"en\": \"Temporary Market Name 4-3\"}', '{\"en\": null}', NULL, NULL, 15, 34, 4, 3, 1, 34, 4, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(19, '{\"en\": \"Temporary Market Name 4-4\"}', '{\"en\": null}', NULL, NULL, 15, 34, 4, 4, 1, 34, 4, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(20, '{\"en\": \"Temporary Market Name 4-5\"}', '{\"en\": null}', NULL, NULL, 15, 34, 4, 5, 1, 34, 4, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(21, '{\"en\": \"Temporary Market Name 5-1\"}', '{\"en\": null}', NULL, NULL, 15, 34, 5, 1, 1, 34, 5, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(22, '{\"en\": \"Temporary Market Name 5-2\"}', '{\"en\": null}', NULL, NULL, 15, 34, 5, 2, 1, 34, 5, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(23, '{\"en\": \"Temporary Market Name 5-3\"}', '{\"en\": null}', NULL, NULL, 15, 34, 5, 3, 1, 34, 5, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(24, '{\"en\": \"Temporary Market Name 5-4\"}', '{\"en\": null}', NULL, NULL, 15, 34, 5, 4, 1, 34, 5, 1, 1, 1, '2021-02-21 10:09:02', '2021-02-21 10:09:02'),
(25, '{\"en\": \"Temporary Market Name 5-5\"}', '{\"en\": null}', NULL, NULL, 15, 34, 5, 5, 1, 34, 5, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(26, '{\"en\": \"Temporary Market Name 6-1\"}', '{\"en\": null}', NULL, NULL, 15, 34, 6, 1, 1, 34, 6, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(27, '{\"en\": \"Temporary Market Name 6-2\"}', '{\"en\": null}', NULL, NULL, 15, 34, 6, 2, 1, 34, 6, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(28, '{\"en\": \"Temporary Market Name 6-3\"}', '{\"en\": null}', NULL, NULL, 15, 34, 6, 3, 1, 34, 6, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(29, '{\"en\": \"Temporary Market Name 6-4\"}', '{\"en\": null}', NULL, NULL, 15, 34, 6, 4, 1, 34, 6, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(30, '{\"en\": \"Temporary Market Name 6-5\"}', '{\"en\": null}', NULL, NULL, 15, 34, 6, 5, 1, 34, 6, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(31, '{\"en\": \"Temporary Market Name 7-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 7, 1, 1, 35, 7, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(32, '{\"en\": \"Temporary Market Name 7-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 7, 2, 1, 35, 7, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(33, '{\"en\": \"Temporary Market Name 7-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 7, 3, 1, 35, 7, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(34, '{\"en\": \"Temporary Market Name 7-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 7, 4, 1, 35, 7, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(35, '{\"en\": \"Temporary Market Name 7-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 7, 5, 1, 35, 7, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(36, '{\"en\": \"Temporary Market Name 8-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 8, 1, 1, 35, 8, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(37, '{\"en\": \"Temporary Market Name 8-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 8, 2, 1, 35, 8, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(38, '{\"en\": \"Temporary Market Name 8-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 8, 3, 1, 35, 8, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(39, '{\"en\": \"Temporary Market Name 8-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 8, 4, 1, 35, 8, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(40, '{\"en\": \"Temporary Market Name 8-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 8, 5, 1, 35, 8, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(41, '{\"en\": \"Temporary Market Name 9-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 9, 1, 1, 35, 9, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(42, '{\"en\": \"Temporary Market Name 9-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 9, 2, 1, 35, 9, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(43, '{\"en\": \"Temporary Market Name 9-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 9, 3, 1, 35, 9, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(44, '{\"en\": \"Temporary Market Name 9-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 9, 4, 1, 35, 9, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(45, '{\"en\": \"Temporary Market Name 9-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 9, 5, 1, 35, 9, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(46, '{\"en\": \"Temporary Market Name 10-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 10, 1, 1, 35, 10, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(47, '{\"en\": \"Temporary Market Name 10-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 10, 2, 1, 35, 10, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(48, '{\"en\": \"Temporary Market Name 10-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 10, 3, 1, 35, 10, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(49, '{\"en\": \"Temporary Market Name 10-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 10, 4, 1, 35, 10, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(50, '{\"en\": \"Temporary Market Name 10-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 10, 5, 1, 35, 10, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(51, '{\"en\": \"Temporary Market Name 11-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 11, 1, 1, 35, 11, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(52, '{\"en\": \"Temporary Market Name 11-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 11, 2, 1, 35, 11, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(53, '{\"en\": \"Temporary Market Name 11-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 11, 3, 1, 35, 11, 1, 1, 1, '2021-02-21 10:09:03', '2021-02-21 10:09:03'),
(54, '{\"en\": \"Temporary Market Name 11-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 11, 4, 1, 35, 11, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(55, '{\"en\": \"Temporary Market Name 11-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 11, 5, 1, 35, 11, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(56, '{\"en\": \"Temporary Market Name 12-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 12, 1, 1, 35, 12, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(57, '{\"en\": \"Temporary Market Name 12-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 12, 2, 1, 35, 12, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(58, '{\"en\": \"Temporary Market Name 12-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 12, 3, 1, 35, 12, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(59, '{\"en\": \"Temporary Market Name 12-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 12, 4, 1, 35, 12, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(60, '{\"en\": \"Temporary Market Name 12-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 12, 5, 1, 35, 12, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(61, '{\"en\": \"Temporary Market Name 13-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 13, 1, 1, 35, 13, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(62, '{\"en\": \"Temporary Market Name 13-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 13, 2, 1, 35, 13, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(63, '{\"en\": \"Temporary Market Name 13-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 13, 3, 1, 35, 13, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(64, '{\"en\": \"Temporary Market Name 13-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 13, 4, 1, 35, 13, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(65, '{\"en\": \"Temporary Market Name 13-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 13, 5, 1, 35, 13, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(66, '{\"en\": \"Temporary Market Name 14-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 14, 1, 1, 35, 14, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(67, '{\"en\": \"Temporary Market Name 14-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 14, 2, 1, 35, 14, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(68, '{\"en\": \"Temporary Market Name 14-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 14, 3, 1, 35, 14, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(69, '{\"en\": \"Temporary Market Name 14-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 14, 4, 1, 35, 14, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(70, '{\"en\": \"Temporary Market Name 14-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 14, 5, 1, 35, 14, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(71, '{\"en\": \"Temporary Market Name 15-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 15, 1, 1, 35, 15, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(72, '{\"en\": \"Temporary Market Name 15-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 15, 2, 1, 35, 15, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(73, '{\"en\": \"Temporary Market Name 15-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 15, 3, 1, 35, 15, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(74, '{\"en\": \"Temporary Market Name 15-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 15, 4, 1, 35, 15, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(75, '{\"en\": \"Temporary Market Name 15-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 15, 5, 1, 35, 15, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(76, '{\"en\": \"Temporary Market Name 16-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 16, 1, 1, 35, 16, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(77, '{\"en\": \"Temporary Market Name 16-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 16, 2, 1, 35, 16, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(78, '{\"en\": \"Temporary Market Name 16-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 16, 3, 1, 35, 16, 1, 1, 1, '2021-02-21 10:09:04', '2021-02-21 10:09:04'),
(79, '{\"en\": \"Temporary Market Name 16-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 16, 4, 1, 35, 16, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(80, '{\"en\": \"Temporary Market Name 16-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 16, 5, 1, 35, 16, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(81, '{\"en\": \"Temporary Market Name 17-1\"}', '{\"en\": null}', NULL, NULL, 15, 36, 17, 1, 1, 36, 17, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(82, '{\"en\": \"Temporary Market Name 17-2\"}', '{\"en\": null}', NULL, NULL, 15, 36, 17, 2, 1, 36, 17, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(83, '{\"en\": \"Temporary Market Name 17-3\"}', '{\"en\": null}', NULL, NULL, 15, 36, 17, 3, 1, 36, 17, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(84, '{\"en\": \"Temporary Market Name 17-4\"}', '{\"en\": null}', NULL, NULL, 15, 36, 17, 4, 1, 36, 17, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(85, '{\"en\": \"Temporary Market Name 17-5\"}', '{\"en\": null}', NULL, NULL, 15, 36, 17, 5, 1, 36, 17, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(86, '{\"en\": \"Temporary Market Name 18-1\"}', '{\"en\": null}', NULL, NULL, 15, 36, 18, 1, 1, 36, 18, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(87, '{\"en\": \"Temporary Market Name 18-2\"}', '{\"en\": null}', NULL, NULL, 15, 36, 18, 2, 1, 36, 18, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(88, '{\"en\": \"Temporary Market Name 18-3\"}', '{\"en\": null}', NULL, NULL, 15, 36, 18, 3, 1, 36, 18, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(89, '{\"en\": \"Temporary Market Name 18-4\"}', '{\"en\": null}', NULL, NULL, 15, 36, 18, 4, 1, 36, 18, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(90, '{\"en\": \"Temporary Market Name 18-5\"}', '{\"en\": null}', NULL, NULL, 15, 36, 18, 5, 1, 36, 18, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(91, '{\"en\": \"Temporary Market Name 19-1\"}', '{\"en\": null}', NULL, NULL, 15, 36, 19, 1, 1, 36, 19, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(92, '{\"en\": \"Temporary Market Name 19-2\"}', '{\"en\": null}', NULL, NULL, 15, 36, 19, 2, 1, 36, 19, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(93, '{\"en\": \"Temporary Market Name 19-3\"}', '{\"en\": null}', NULL, NULL, 15, 36, 19, 3, 1, 36, 19, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(94, '{\"en\": \"Temporary Market Name 19-4\"}', '{\"en\": null}', NULL, NULL, 15, 36, 19, 4, 1, 36, 19, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(95, '{\"en\": \"Temporary Market Name 19-5\"}', '{\"en\": null}', NULL, NULL, 15, 36, 19, 5, 1, 36, 19, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(96, '{\"en\": \"Temporary Market Name 20-1\"}', '{\"en\": null}', NULL, NULL, 15, 36, 20, 1, 1, 36, 20, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(97, '{\"en\": \"Temporary Market Name 20-2\"}', '{\"en\": null}', NULL, NULL, 15, 36, 20, 2, 1, 36, 20, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(98, '{\"en\": \"Temporary Market Name 20-3\"}', '{\"en\": null}', NULL, NULL, 15, 36, 20, 3, 1, 36, 20, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(99, '{\"en\": \"Temporary Market Name 20-4\"}', '{\"en\": null}', NULL, NULL, 15, 36, 20, 4, 1, 36, 20, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(100, '{\"en\": \"Temporary Market Name 20-5\"}', '{\"en\": null}', NULL, NULL, 15, 36, 20, 5, 1, 36, 20, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(101, '{\"en\": \"Temporary Market Name 21-1\"}', '{\"en\": null}', NULL, NULL, 15, 36, 21, 1, 1, 36, 21, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(102, '{\"en\": \"Temporary Market Name 21-2\"}', '{\"en\": null}', NULL, NULL, 15, 36, 21, 2, 1, 36, 21, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(103, '{\"en\": \"Temporary Market Name 21-3\"}', '{\"en\": null}', NULL, NULL, 15, 36, 21, 3, 1, 36, 21, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(104, '{\"en\": \"Temporary Market Name 21-4\"}', '{\"en\": null}', NULL, NULL, 15, 36, 21, 4, 1, 36, 21, 1, 1, 1, '2021-02-21 10:09:05', '2021-02-21 10:09:05'),
(105, '{\"en\": \"Temporary Market Name 21-5\"}', '{\"en\": null}', NULL, NULL, 15, 36, 21, 5, 1, 36, 21, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(106, '{\"en\": \"Temporary Market Name 22-1\"}', '{\"en\": null}', NULL, NULL, 15, 36, 22, 1, 1, 36, 22, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(107, '{\"en\": \"Temporary Market Name 22-2\"}', '{\"en\": null}', NULL, NULL, 15, 36, 22, 2, 1, 36, 22, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(108, '{\"en\": \"Temporary Market Name 22-3\"}', '{\"en\": null}', NULL, NULL, 15, 36, 22, 3, 1, 36, 22, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(109, '{\"en\": \"Temporary Market Name 22-4\"}', '{\"en\": null}', NULL, NULL, 15, 36, 22, 4, 1, 36, 22, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(110, '{\"en\": \"Temporary Market Name 22-5\"}', '{\"en\": null}', NULL, NULL, 15, 36, 22, 5, 1, 36, 22, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(111, '{\"en\": \"Temporary Market Name 23-1\"}', '{\"en\": null}', NULL, NULL, 15, 36, 23, 1, 1, 36, 23, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(112, '{\"en\": \"Temporary Market Name 23-2\"}', '{\"en\": null}', NULL, NULL, 15, 36, 23, 2, 1, 36, 23, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(113, '{\"en\": \"Temporary Market Name 23-3\"}', '{\"en\": null}', NULL, NULL, 15, 36, 23, 3, 1, 36, 23, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(114, '{\"en\": \"Temporary Market Name 23-4\"}', '{\"en\": null}', NULL, NULL, 15, 36, 23, 4, 1, 36, 23, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(115, '{\"en\": \"Temporary Market Name 23-5\"}', '{\"en\": null}', NULL, NULL, 15, 36, 23, 5, 1, 36, 23, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(116, '{\"en\": \"Temporary Market Name 24-1\"}', '{\"en\": null}', NULL, NULL, 15, 37, 24, 1, 1, 37, 24, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(117, '{\"en\": \"Temporary Market Name 24-2\"}', '{\"en\": null}', NULL, NULL, 15, 37, 24, 2, 1, 37, 24, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(118, '{\"en\": \"Temporary Market Name 24-3\"}', '{\"en\": null}', NULL, NULL, 15, 37, 24, 3, 1, 37, 24, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(119, '{\"en\": \"Temporary Market Name 24-4\"}', '{\"en\": null}', NULL, NULL, 15, 37, 24, 4, 1, 37, 24, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(120, '{\"en\": \"Temporary Market Name 24-5\"}', '{\"en\": null}', NULL, NULL, 15, 37, 24, 5, 1, 37, 24, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(121, '{\"en\": \"Temporary Market Name 25-1\"}', '{\"en\": null}', NULL, NULL, 15, 37, 25, 1, 1, 37, 25, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(122, '{\"en\": \"Temporary Market Name 25-2\"}', '{\"en\": null}', NULL, NULL, 15, 37, 25, 2, 1, 37, 25, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(123, '{\"en\": \"Temporary Market Name 25-3\"}', '{\"en\": null}', NULL, NULL, 15, 37, 25, 3, 1, 37, 25, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(124, '{\"en\": \"Temporary Market Name 25-4\"}', '{\"en\": null}', NULL, NULL, 15, 37, 25, 4, 1, 37, 25, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(125, '{\"en\": \"Temporary Market Name 25-5\"}', '{\"en\": null}', NULL, NULL, 15, 37, 25, 5, 1, 37, 25, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(126, '{\"en\": \"Temporary Market Name 26-1\"}', '{\"en\": null}', NULL, NULL, 15, 37, 26, 1, 1, 37, 26, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(127, '{\"en\": \"Temporary Market Name 26-2\"}', '{\"en\": null}', NULL, NULL, 15, 37, 26, 2, 1, 37, 26, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(128, '{\"en\": \"Temporary Market Name 26-3\"}', '{\"en\": null}', NULL, NULL, 15, 37, 26, 3, 1, 37, 26, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(129, '{\"en\": \"Temporary Market Name 26-4\"}', '{\"en\": null}', NULL, NULL, 15, 37, 26, 4, 1, 37, 26, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(130, '{\"en\": \"Temporary Market Name 26-5\"}', '{\"en\": null}', NULL, NULL, 15, 37, 26, 5, 1, 37, 26, 1, 1, 1, '2021-02-21 10:09:06', '2021-02-21 10:09:06'),
(131, '{\"en\": \"Temporary Market Name 27-1\"}', '{\"en\": null}', NULL, NULL, 15, 37, 27, 1, 1, 37, 27, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(132, '{\"en\": \"Temporary Market Name 27-2\"}', '{\"en\": null}', NULL, NULL, 15, 37, 27, 2, 1, 37, 27, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(133, '{\"en\": \"Temporary Market Name 27-3\"}', '{\"en\": null}', NULL, NULL, 15, 37, 27, 3, 1, 37, 27, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(134, '{\"en\": \"Temporary Market Name 27-4\"}', '{\"en\": null}', NULL, NULL, 15, 37, 27, 4, 1, 37, 27, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(135, '{\"en\": \"Temporary Market Name 27-5\"}', '{\"en\": null}', NULL, NULL, 15, 37, 27, 5, 1, 37, 27, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(136, '{\"en\": \"Temporary Market Name 28-1\"}', '{\"en\": null}', NULL, NULL, 15, 38, 28, 1, 1, 38, 28, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(137, '{\"en\": \"Temporary Market Name 28-2\"}', '{\"en\": null}', NULL, NULL, 15, 38, 28, 2, 1, 38, 28, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(138, '{\"en\": \"Temporary Market Name 28-3\"}', '{\"en\": null}', NULL, NULL, 15, 38, 28, 3, 1, 38, 28, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(139, '{\"en\": \"Temporary Market Name 28-4\"}', '{\"en\": null}', NULL, NULL, 15, 38, 28, 4, 1, 38, 28, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(140, '{\"en\": \"Temporary Market Name 28-5\"}', '{\"en\": null}', NULL, NULL, 15, 38, 28, 5, 1, 38, 28, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(141, '{\"en\": \"Temporary Market Name 29-1\"}', '{\"en\": null}', NULL, NULL, 15, 38, 29, 1, 1, 38, 29, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(142, '{\"en\": \"Temporary Market Name 29-2\"}', '{\"en\": null}', NULL, NULL, 15, 38, 29, 2, 1, 38, 29, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(143, '{\"en\": \"Temporary Market Name 29-3\"}', '{\"en\": null}', NULL, NULL, 15, 38, 29, 3, 1, 38, 29, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(144, '{\"en\": \"Temporary Market Name 29-4\"}', '{\"en\": null}', NULL, NULL, 15, 38, 29, 4, 1, 38, 29, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(145, '{\"en\": \"Temporary Market Name 29-5\"}', '{\"en\": null}', NULL, NULL, 15, 38, 29, 5, 1, 38, 29, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(146, '{\"en\": \"Temporary Market Name 30-1\"}', '{\"en\": null}', NULL, NULL, 15, 38, 30, 1, 1, 38, 30, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(147, '{\"en\": \"Temporary Market Name 30-2\"}', '{\"en\": null}', NULL, NULL, 15, 38, 30, 2, 1, 38, 30, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(148, '{\"en\": \"Temporary Market Name 30-3\"}', '{\"en\": null}', NULL, NULL, 15, 38, 30, 3, 1, 38, 30, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(149, '{\"en\": \"Temporary Market Name 30-4\"}', '{\"en\": null}', NULL, NULL, 15, 38, 30, 4, 1, 38, 30, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(150, '{\"en\": \"Temporary Market Name 30-5\"}', '{\"en\": null}', NULL, NULL, 15, 38, 30, 5, 1, 38, 30, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(151, '{\"en\": \"Temporary Market Name 31-1\"}', '{\"en\": null}', NULL, NULL, 15, 38, 31, 1, 1, 38, 31, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(152, '{\"en\": \"Temporary Market Name 31-2\"}', '{\"en\": null}', NULL, NULL, 15, 38, 31, 2, 1, 38, 31, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(153, '{\"en\": \"Temporary Market Name 31-3\"}', '{\"en\": null}', NULL, NULL, 15, 38, 31, 3, 1, 38, 31, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(154, '{\"en\": \"Temporary Market Name 31-4\"}', '{\"en\": null}', NULL, NULL, 15, 38, 31, 4, 1, 38, 31, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(155, '{\"en\": \"Temporary Market Name 31-5\"}', '{\"en\": null}', NULL, NULL, 15, 38, 31, 5, 1, 38, 31, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(156, '{\"en\": \"Temporary Market Name 32-1\"}', '{\"en\": null}', NULL, NULL, 15, 38, 32, 1, 1, 38, 32, 1, 1, 1, '2021-02-21 10:09:07', '2021-02-21 10:09:07'),
(157, '{\"en\": \"Temporary Market Name 32-2\"}', '{\"en\": null}', NULL, NULL, 15, 38, 32, 2, 1, 38, 32, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(158, '{\"en\": \"Temporary Market Name 32-3\"}', '{\"en\": null}', NULL, NULL, 15, 38, 32, 3, 1, 38, 32, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(159, '{\"en\": \"Temporary Market Name 32-4\"}', '{\"en\": null}', NULL, NULL, 15, 38, 32, 4, 1, 38, 32, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(160, '{\"en\": \"Temporary Market Name 32-5\"}', '{\"en\": null}', NULL, NULL, 15, 38, 32, 5, 1, 38, 32, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(161, '{\"en\": \"Temporary Market Name 33-1\"}', '{\"en\": null}', NULL, NULL, 15, 38, 33, 1, 1, 38, 33, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(162, '{\"en\": \"Temporary Market Name 33-2\"}', '{\"en\": null}', NULL, NULL, 15, 38, 33, 2, 1, 38, 33, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(163, '{\"en\": \"Temporary Market Name 33-3\"}', '{\"en\": null}', NULL, NULL, 15, 38, 33, 3, 1, 38, 33, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(164, '{\"en\": \"Temporary Market Name 33-4\"}', '{\"en\": null}', NULL, NULL, 15, 38, 33, 4, 1, 38, 33, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(165, '{\"en\": \"Temporary Market Name 33-5\"}', '{\"en\": null}', NULL, NULL, 15, 38, 33, 5, 1, 38, 33, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(166, '{\"en\": \"Temporary Market Name 34-1\"}', '{\"en\": null}', NULL, NULL, 15, 38, 34, 1, 1, 38, 34, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(167, '{\"en\": \"Temporary Market Name 34-2\"}', '{\"en\": null}', NULL, NULL, 15, 38, 34, 2, 1, 38, 34, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(168, '{\"en\": \"Temporary Market Name 34-3\"}', '{\"en\": null}', NULL, NULL, 15, 38, 34, 3, 1, 38, 34, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(169, '{\"en\": \"Temporary Market Name 34-4\"}', '{\"en\": null}', NULL, NULL, 15, 38, 34, 4, 1, 38, 34, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(170, '{\"en\": \"Temporary Market Name 34-5\"}', '{\"en\": null}', NULL, NULL, 15, 38, 34, 5, 1, 38, 34, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(171, '{\"en\": \"Temporary Market Name 35-1\"}', '{\"en\": null}', NULL, NULL, 15, 38, 35, 1, 1, 38, 35, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(172, '{\"en\": \"Temporary Market Name 35-2\"}', '{\"en\": null}', NULL, NULL, 15, 38, 35, 2, 1, 38, 35, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(173, '{\"en\": \"Temporary Market Name 35-3\"}', '{\"en\": null}', NULL, NULL, 15, 38, 35, 3, 1, 38, 35, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(174, '{\"en\": \"Temporary Market Name 35-4\"}', '{\"en\": null}', NULL, NULL, 15, 38, 35, 4, 1, 38, 35, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(175, '{\"en\": \"Temporary Market Name 35-5\"}', '{\"en\": null}', NULL, NULL, 15, 38, 35, 5, 1, 38, 35, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(176, '{\"en\": \"Temporary Market Name 36-1\"}', '{\"en\": null}', NULL, NULL, 15, 39, 36, 1, 1, 39, 36, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(177, '{\"en\": \"Temporary Market Name 36-2\"}', '{\"en\": null}', NULL, NULL, 15, 39, 36, 2, 1, 39, 36, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(178, '{\"en\": \"Temporary Market Name 36-3\"}', '{\"en\": null}', NULL, NULL, 15, 39, 36, 3, 1, 39, 36, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(179, '{\"en\": \"Temporary Market Name 36-4\"}', '{\"en\": null}', NULL, NULL, 15, 39, 36, 4, 1, 39, 36, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(180, '{\"en\": \"Temporary Market Name 36-5\"}', '{\"en\": null}', NULL, NULL, 15, 39, 36, 5, 1, 39, 36, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(181, '{\"en\": \"Temporary Market Name 37-1\"}', '{\"en\": null}', NULL, NULL, 15, 39, 37, 1, 1, 39, 37, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(182, '{\"en\": \"Temporary Market Name 37-2\"}', '{\"en\": null}', NULL, NULL, 15, 39, 37, 2, 1, 39, 37, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(183, '{\"en\": \"Temporary Market Name 37-3\"}', '{\"en\": null}', NULL, NULL, 15, 39, 37, 3, 1, 39, 37, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(184, '{\"en\": \"Temporary Market Name 37-4\"}', '{\"en\": null}', NULL, NULL, 15, 39, 37, 4, 1, 39, 37, 1, 1, 1, '2021-02-21 10:09:08', '2021-02-21 10:09:08'),
(185, '{\"en\": \"Temporary Market Name 37-5\"}', '{\"en\": null}', NULL, NULL, 15, 39, 37, 5, 1, 39, 37, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(186, '{\"en\": \"Temporary Market Name 38-1\"}', '{\"en\": null}', NULL, NULL, 15, 39, 38, 1, 1, 39, 38, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(187, '{\"en\": \"Temporary Market Name 38-2\"}', '{\"en\": null}', NULL, NULL, 15, 39, 38, 2, 1, 39, 38, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(188, '{\"en\": \"Temporary Market Name 38-3\"}', '{\"en\": null}', NULL, NULL, 15, 39, 38, 3, 1, 39, 38, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(189, '{\"en\": \"Temporary Market Name 38-4\"}', '{\"en\": null}', NULL, NULL, 15, 39, 38, 4, 1, 39, 38, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(190, '{\"en\": \"Temporary Market Name 38-5\"}', '{\"en\": null}', NULL, NULL, 15, 39, 38, 5, 1, 39, 38, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(191, '{\"en\": \"Temporary Market Name 39-1\"}', '{\"en\": null}', NULL, NULL, 15, 39, 39, 1, 1, 39, 39, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(192, '{\"en\": \"Temporary Market Name 39-2\"}', '{\"en\": null}', NULL, NULL, 15, 39, 39, 2, 1, 39, 39, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(193, '{\"en\": \"Temporary Market Name 39-3\"}', '{\"en\": null}', NULL, NULL, 15, 39, 39, 3, 1, 39, 39, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(194, '{\"en\": \"Temporary Market Name 39-4\"}', '{\"en\": null}', NULL, NULL, 15, 39, 39, 4, 1, 39, 39, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(195, '{\"en\": \"Temporary Market Name 39-5\"}', '{\"en\": null}', NULL, NULL, 15, 39, 39, 5, 1, 39, 39, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(196, '{\"en\": \"Temporary Market Name 40-1\"}', '{\"en\": null}', NULL, NULL, 15, 39, 40, 1, 1, 39, 40, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(197, '{\"en\": \"Temporary Market Name 40-2\"}', '{\"en\": null}', NULL, NULL, 15, 39, 40, 2, 1, 39, 40, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(198, '{\"en\": \"Temporary Market Name 40-3\"}', '{\"en\": null}', NULL, NULL, 15, 39, 40, 3, 1, 39, 40, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(199, '{\"en\": \"Temporary Market Name 40-4\"}', '{\"en\": null}', NULL, NULL, 15, 39, 40, 4, 1, 39, 40, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(200, '{\"en\": \"Temporary Market Name 40-5\"}', '{\"en\": null}', NULL, NULL, 15, 39, 40, 5, 1, 39, 40, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(201, '{\"en\": \"Temporary Market Name 41-1\"}', '{\"en\": null}', NULL, NULL, 15, 39, 41, 1, 1, 39, 41, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(202, '{\"en\": \"Temporary Market Name 41-2\"}', '{\"en\": null}', NULL, NULL, 15, 39, 41, 2, 1, 39, 41, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(203, '{\"en\": \"Temporary Market Name 41-3\"}', '{\"en\": null}', NULL, NULL, 15, 39, 41, 3, 1, 39, 41, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(204, '{\"en\": \"Temporary Market Name 41-4\"}', '{\"en\": null}', NULL, NULL, 15, 39, 41, 4, 1, 39, 41, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(205, '{\"en\": \"Temporary Market Name 41-5\"}', '{\"en\": null}', NULL, NULL, 15, 39, 41, 5, 1, 39, 41, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(206, '{\"en\": \"Temporary Market Name 42-1\"}', '{\"en\": null}', NULL, NULL, 15, 39, 42, 1, 1, 39, 42, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(207, '{\"en\": \"Temporary Market Name 42-2\"}', '{\"en\": null}', NULL, NULL, 15, 39, 42, 2, 1, 39, 42, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(208, '{\"en\": \"Temporary Market Name 42-3\"}', '{\"en\": null}', NULL, NULL, 15, 39, 42, 3, 1, 39, 42, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(209, '{\"en\": \"Temporary Market Name 42-4\"}', '{\"en\": null}', NULL, NULL, 15, 39, 42, 4, 1, 39, 42, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(210, '{\"en\": \"Temporary Market Name 42-5\"}', '{\"en\": null}', NULL, NULL, 15, 39, 42, 5, 1, 39, 42, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(211, '{\"en\": \"Temporary Market Name 43-1\"}', '{\"en\": null}', NULL, NULL, 6, 40, 43, 1, 2, 40, 43, 1, 1, 1, '2021-02-21 10:09:09', '2021-02-21 10:09:09'),
(212, '{\"en\": \"Temporary Market Name 43-2\"}', '{\"en\": null}', NULL, NULL, 6, 40, 43, 2, 2, 40, 43, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(213, '{\"en\": \"Temporary Market Name 43-3\"}', '{\"en\": null}', NULL, NULL, 6, 40, 43, 3, 2, 40, 43, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(214, '{\"en\": \"Temporary Market Name 43-4\"}', '{\"en\": null}', NULL, NULL, 6, 40, 43, 4, 2, 40, 43, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(215, '{\"en\": \"Temporary Market Name 43-5\"}', '{\"en\": null}', NULL, NULL, 6, 40, 43, 5, 2, 40, 43, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(216, '{\"en\": \"Temporary Market Name 44-1\"}', '{\"en\": null}', NULL, NULL, 6, 40, 44, 1, 2, 40, 44, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(217, '{\"en\": \"Temporary Market Name 44-2\"}', '{\"en\": null}', NULL, NULL, 6, 40, 44, 2, 2, 40, 44, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(218, '{\"en\": \"Temporary Market Name 44-3\"}', '{\"en\": null}', NULL, NULL, 6, 40, 44, 3, 2, 40, 44, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(219, '{\"en\": \"Temporary Market Name 44-4\"}', '{\"en\": null}', NULL, NULL, 6, 40, 44, 4, 2, 40, 44, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(220, '{\"en\": \"Temporary Market Name 44-5\"}', '{\"en\": null}', NULL, NULL, 6, 40, 44, 5, 2, 40, 44, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(221, '{\"en\": \"Temporary Market Name 45-1\"}', '{\"en\": null}', NULL, NULL, 6, 40, 45, 1, 2, 40, 45, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(222, '{\"en\": \"Temporary Market Name 45-2\"}', '{\"en\": null}', NULL, NULL, 6, 40, 45, 2, 2, 40, 45, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(223, '{\"en\": \"Temporary Market Name 45-3\"}', '{\"en\": null}', NULL, NULL, 6, 40, 45, 3, 2, 40, 45, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(224, '{\"en\": \"Temporary Market Name 45-4\"}', '{\"en\": null}', NULL, NULL, 6, 40, 45, 4, 2, 40, 45, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(225, '{\"en\": \"Temporary Market Name 45-5\"}', '{\"en\": null}', NULL, NULL, 6, 40, 45, 5, 2, 40, 45, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(226, '{\"en\": \"Temporary Market Name 46-1\"}', '{\"en\": null}', NULL, NULL, 6, 40, 46, 1, 2, 40, 46, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(227, '{\"en\": \"Temporary Market Name 46-2\"}', '{\"en\": null}', NULL, NULL, 6, 40, 46, 2, 2, 40, 46, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(228, '{\"en\": \"Temporary Market Name 46-3\"}', '{\"en\": null}', NULL, NULL, 6, 40, 46, 3, 2, 40, 46, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(229, '{\"en\": \"Temporary Market Name 46-4\"}', '{\"en\": null}', NULL, NULL, 6, 40, 46, 4, 2, 40, 46, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(230, '{\"en\": \"Temporary Market Name 46-5\"}', '{\"en\": null}', NULL, NULL, 6, 40, 46, 5, 2, 40, 46, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(231, '{\"en\": \"Temporary Market Name 47-1\"}', '{\"en\": null}', NULL, NULL, 6, 40, 47, 1, 2, 40, 47, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(232, '{\"en\": \"Temporary Market Name 47-2\"}', '{\"en\": null}', NULL, NULL, 6, 40, 47, 2, 2, 40, 47, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(233, '{\"en\": \"Temporary Market Name 47-3\"}', '{\"en\": null}', NULL, NULL, 6, 40, 47, 3, 2, 40, 47, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(234, '{\"en\": \"Temporary Market Name 47-4\"}', '{\"en\": null}', NULL, NULL, 6, 40, 47, 4, 2, 40, 47, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(235, '{\"en\": \"Temporary Market Name 47-5\"}', '{\"en\": null}', NULL, NULL, 6, 40, 47, 5, 2, 40, 47, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(236, '{\"en\": \"Temporary Market Name 48-1\"}', '{\"en\": null}', NULL, NULL, 6, 40, 48, 1, 2, 40, 48, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(237, '{\"en\": \"Temporary Market Name 48-2\"}', '{\"en\": null}', NULL, NULL, 6, 40, 48, 2, 2, 40, 48, 1, 1, 1, '2021-02-21 10:09:10', '2021-02-21 10:09:10'),
(238, '{\"en\": \"Temporary Market Name 48-3\"}', '{\"en\": null}', NULL, NULL, 6, 40, 48, 3, 2, 40, 48, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(239, '{\"en\": \"Temporary Market Name 48-4\"}', '{\"en\": null}', NULL, NULL, 6, 40, 48, 4, 2, 40, 48, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(240, '{\"en\": \"Temporary Market Name 48-5\"}', '{\"en\": null}', NULL, NULL, 6, 40, 48, 5, 2, 40, 48, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(241, '{\"en\": \"Temporary Market Name 49-1\"}', '{\"en\": null}', NULL, NULL, 6, 40, 49, 1, 2, 40, 49, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(242, '{\"en\": \"Temporary Market Name 49-2\"}', '{\"en\": null}', NULL, NULL, 6, 40, 49, 2, 2, 40, 49, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(243, '{\"en\": \"Temporary Market Name 49-3\"}', '{\"en\": null}', NULL, NULL, 6, 40, 49, 3, 2, 40, 49, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(244, '{\"en\": \"Temporary Market Name 49-4\"}', '{\"en\": null}', NULL, NULL, 6, 40, 49, 4, 2, 40, 49, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(245, '{\"en\": \"Temporary Market Name 49-5\"}', '{\"en\": null}', NULL, NULL, 6, 40, 49, 5, 2, 40, 49, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(246, '{\"en\": \"Temporary Market Name 50-1\"}', '{\"en\": null}', NULL, NULL, 6, 41, 50, 1, 2, 41, 50, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(247, '{\"en\": \"Temporary Market Name 50-2\"}', '{\"en\": null}', NULL, NULL, 6, 41, 50, 2, 2, 41, 50, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(248, '{\"en\": \"Temporary Market Name 50-3\"}', '{\"en\": null}', NULL, NULL, 6, 41, 50, 3, 2, 41, 50, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(249, '{\"en\": \"Temporary Market Name 50-4\"}', '{\"en\": null}', NULL, NULL, 6, 41, 50, 4, 2, 41, 50, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(250, '{\"en\": \"Temporary Market Name 50-5\"}', '{\"en\": null}', NULL, NULL, 6, 41, 50, 5, 2, 41, 50, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(251, '{\"en\": \"Temporary Market Name 51-1\"}', '{\"en\": null}', NULL, NULL, 6, 41, 51, 1, 2, 41, 51, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(252, '{\"en\": \"Temporary Market Name 51-2\"}', '{\"en\": null}', NULL, NULL, 6, 41, 51, 2, 2, 41, 51, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(253, '{\"en\": \"Temporary Market Name 51-3\"}', '{\"en\": null}', NULL, NULL, 6, 41, 51, 3, 2, 41, 51, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(254, '{\"en\": \"Temporary Market Name 51-4\"}', '{\"en\": null}', NULL, NULL, 6, 41, 51, 4, 2, 41, 51, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(255, '{\"en\": \"Temporary Market Name 51-5\"}', '{\"en\": null}', NULL, NULL, 6, 41, 51, 5, 2, 41, 51, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(256, '{\"en\": \"Temporary Market Name 52-1\"}', '{\"en\": null}', NULL, NULL, 6, 41, 52, 1, 2, 41, 52, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(257, '{\"en\": \"Temporary Market Name 52-2\"}', '{\"en\": null}', NULL, NULL, 6, 41, 52, 2, 2, 41, 52, 1, 1, 1, '2021-02-21 10:09:11', '2021-02-21 10:09:11'),
(258, '{\"en\": \"Temporary Market Name 52-3\"}', '{\"en\": null}', NULL, NULL, 6, 41, 52, 3, 2, 41, 52, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(259, '{\"en\": \"Temporary Market Name 52-4\"}', '{\"en\": null}', NULL, NULL, 6, 41, 52, 4, 2, 41, 52, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(260, '{\"en\": \"Temporary Market Name 52-5\"}', '{\"en\": null}', NULL, NULL, 6, 41, 52, 5, 2, 41, 52, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(261, '{\"en\": \"Temporary Market Name 53-1\"}', '{\"en\": null}', NULL, NULL, 6, 41, 53, 1, 2, 41, 53, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(262, '{\"en\": \"Temporary Market Name 53-2\"}', '{\"en\": null}', NULL, NULL, 6, 41, 53, 2, 2, 41, 53, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(263, '{\"en\": \"Temporary Market Name 53-3\"}', '{\"en\": null}', NULL, NULL, 6, 41, 53, 3, 2, 41, 53, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(264, '{\"en\": \"Temporary Market Name 53-4\"}', '{\"en\": null}', NULL, NULL, 6, 41, 53, 4, 2, 41, 53, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(265, '{\"en\": \"Temporary Market Name 53-5\"}', '{\"en\": null}', NULL, NULL, 6, 41, 53, 5, 2, 41, 53, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(266, '{\"en\": \"Temporary Market Name 54-1\"}', '{\"en\": null}', NULL, NULL, 6, 41, 54, 1, 2, 41, 54, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(267, '{\"en\": \"Temporary Market Name 54-2\"}', '{\"en\": null}', NULL, NULL, 6, 41, 54, 2, 2, 41, 54, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(268, '{\"en\": \"Temporary Market Name 54-3\"}', '{\"en\": null}', NULL, NULL, 6, 41, 54, 3, 2, 41, 54, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(269, '{\"en\": \"Temporary Market Name 54-4\"}', '{\"en\": null}', NULL, NULL, 6, 41, 54, 4, 2, 41, 54, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(270, '{\"en\": \"Temporary Market Name 54-5\"}', '{\"en\": null}', NULL, NULL, 6, 41, 54, 5, 2, 41, 54, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(271, '{\"en\": \"Temporary Market Name 55-1\"}', '{\"en\": null}', NULL, NULL, 6, 41, 55, 1, 2, 41, 55, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(272, '{\"en\": \"Temporary Market Name 55-2\"}', '{\"en\": null}', NULL, NULL, 6, 41, 55, 2, 2, 41, 55, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(273, '{\"en\": \"Temporary Market Name 55-3\"}', '{\"en\": null}', NULL, NULL, 6, 41, 55, 3, 2, 41, 55, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(274, '{\"en\": \"Temporary Market Name 55-4\"}', '{\"en\": null}', NULL, NULL, 6, 41, 55, 4, 2, 41, 55, 1, 1, 1, '2021-02-21 10:09:12', '2021-02-21 10:09:12'),
(275, '{\"en\": \"Temporary Market Name 55-5\"}', '{\"en\": null}', NULL, NULL, 6, 41, 55, 5, 2, 41, 55, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(276, '{\"en\": \"Temporary Market Name 56-1\"}', '{\"en\": null}', NULL, NULL, 6, 41, 56, 1, 2, 41, 56, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(277, '{\"en\": \"Temporary Market Name 56-2\"}', '{\"en\": null}', NULL, NULL, 6, 41, 56, 2, 2, 41, 56, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(278, '{\"en\": \"Temporary Market Name 56-3\"}', '{\"en\": null}', NULL, NULL, 6, 41, 56, 3, 2, 41, 56, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(279, '{\"en\": \"Temporary Market Name 56-4\"}', '{\"en\": null}', NULL, NULL, 6, 41, 56, 4, 2, 41, 56, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(280, '{\"en\": \"Temporary Market Name 56-5\"}', '{\"en\": null}', NULL, NULL, 6, 41, 56, 5, 2, 41, 56, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(281, '{\"en\": \"Temporary Market Name 57-1\"}', '{\"en\": null}', NULL, NULL, 6, 41, 57, 1, 2, 41, 57, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(282, '{\"en\": \"Temporary Market Name 57-2\"}', '{\"en\": null}', NULL, NULL, 6, 41, 57, 2, 2, 41, 57, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(283, '{\"en\": \"Temporary Market Name 57-3\"}', '{\"en\": null}', NULL, NULL, 6, 41, 57, 3, 2, 41, 57, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(284, '{\"en\": \"Temporary Market Name 57-4\"}', '{\"en\": null}', NULL, NULL, 6, 41, 57, 4, 2, 41, 57, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(285, '{\"en\": \"Temporary Market Name 57-5\"}', '{\"en\": null}', NULL, NULL, 6, 41, 57, 5, 2, 41, 57, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(286, '{\"en\": \"Temporary Market Name 58-1\"}', '{\"en\": null}', NULL, NULL, 6, 41, 58, 1, 2, 41, 58, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(287, '{\"en\": \"Temporary Market Name 58-2\"}', '{\"en\": null}', NULL, NULL, 6, 41, 58, 2, 2, 41, 58, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(288, '{\"en\": \"Temporary Market Name 58-3\"}', '{\"en\": null}', NULL, NULL, 6, 41, 58, 3, 2, 41, 58, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(289, '{\"en\": \"Temporary Market Name 58-4\"}', '{\"en\": null}', NULL, NULL, 6, 41, 58, 4, 2, 41, 58, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(290, '{\"en\": \"Temporary Market Name 58-5\"}', '{\"en\": null}', NULL, NULL, 6, 41, 58, 5, 2, 41, 58, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(291, '{\"en\": \"Temporary Market Name 59-1\"}', '{\"en\": null}', NULL, NULL, 6, 41, 59, 1, 2, 41, 59, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(292, '{\"en\": \"Temporary Market Name 59-2\"}', '{\"en\": null}', NULL, NULL, 6, 41, 59, 2, 2, 41, 59, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(293, '{\"en\": \"Temporary Market Name 59-3\"}', '{\"en\": null}', NULL, NULL, 6, 41, 59, 3, 2, 41, 59, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(294, '{\"en\": \"Temporary Market Name 59-4\"}', '{\"en\": null}', NULL, NULL, 6, 41, 59, 4, 2, 41, 59, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(295, '{\"en\": \"Temporary Market Name 59-5\"}', '{\"en\": null}', NULL, NULL, 6, 41, 59, 5, 2, 41, 59, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(296, '{\"en\": \"Temporary Market Name 60-1\"}', '{\"en\": null}', NULL, NULL, 6, 42, 60, 1, 2, 42, 60, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(297, '{\"en\": \"Temporary Market Name 60-2\"}', '{\"en\": null}', NULL, NULL, 6, 42, 60, 2, 2, 42, 60, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(298, '{\"en\": \"Temporary Market Name 60-3\"}', '{\"en\": null}', NULL, NULL, 6, 42, 60, 3, 2, 42, 60, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(299, '{\"en\": \"Temporary Market Name 60-4\"}', '{\"en\": null}', NULL, NULL, 6, 42, 60, 4, 2, 42, 60, 1, 1, 1, '2021-02-21 10:09:13', '2021-02-21 10:09:13'),
(300, '{\"en\": \"Temporary Market Name 60-5\"}', '{\"en\": null}', NULL, NULL, 6, 42, 60, 5, 2, 42, 60, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(301, '{\"en\": \"Temporary Market Name 61-1\"}', '{\"en\": null}', NULL, NULL, 6, 42, 61, 1, 2, 42, 61, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(302, '{\"en\": \"Temporary Market Name 61-2\"}', '{\"en\": null}', NULL, NULL, 6, 42, 61, 2, 2, 42, 61, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(303, '{\"en\": \"Temporary Market Name 61-3\"}', '{\"en\": null}', NULL, NULL, 6, 42, 61, 3, 2, 42, 61, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(304, '{\"en\": \"Temporary Market Name 61-4\"}', '{\"en\": null}', NULL, NULL, 6, 42, 61, 4, 2, 42, 61, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(305, '{\"en\": \"Temporary Market Name 61-5\"}', '{\"en\": null}', NULL, NULL, 6, 42, 61, 5, 2, 42, 61, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(306, '{\"en\": \"Temporary Market Name 62-1\"}', '{\"en\": null}', NULL, NULL, 6, 42, 62, 1, 2, 42, 62, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(307, '{\"en\": \"Temporary Market Name 62-2\"}', '{\"en\": null}', NULL, NULL, 6, 42, 62, 2, 2, 42, 62, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(308, '{\"en\": \"Temporary Market Name 62-3\"}', '{\"en\": null}', NULL, NULL, 6, 42, 62, 3, 2, 42, 62, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(309, '{\"en\": \"Temporary Market Name 62-4\"}', '{\"en\": null}', NULL, NULL, 6, 42, 62, 4, 2, 42, 62, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(310, '{\"en\": \"Temporary Market Name 62-5\"}', '{\"en\": null}', NULL, NULL, 6, 42, 62, 5, 2, 42, 62, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(311, '{\"en\": \"Temporary Market Name 63-1\"}', '{\"en\": null}', NULL, NULL, 6, 42, 63, 1, 2, 42, 63, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(312, '{\"en\": \"Temporary Market Name 63-2\"}', '{\"en\": null}', NULL, NULL, 6, 42, 63, 2, 2, 42, 63, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(313, '{\"en\": \"Temporary Market Name 63-3\"}', '{\"en\": null}', NULL, NULL, 6, 42, 63, 3, 2, 42, 63, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14');
INSERT INTO `markets` (`id`, `name`, `address`, `lat`, `lng`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(314, '{\"en\": \"Temporary Market Name 63-4\"}', '{\"en\": null}', NULL, NULL, 6, 42, 63, 4, 2, 42, 63, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(315, '{\"en\": \"Temporary Market Name 63-5\"}', '{\"en\": null}', NULL, NULL, 6, 42, 63, 5, 2, 42, 63, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(316, '{\"en\": \"Temporary Market Name 64-1\"}', '{\"en\": null}', NULL, NULL, 6, 42, 64, 1, 2, 42, 64, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(317, '{\"en\": \"Temporary Market Name 64-2\"}', '{\"en\": null}', NULL, NULL, 6, 42, 64, 2, 2, 42, 64, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(318, '{\"en\": \"Temporary Market Name 64-3\"}', '{\"en\": null}', NULL, NULL, 6, 42, 64, 3, 2, 42, 64, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(319, '{\"en\": \"Temporary Market Name 64-4\"}', '{\"en\": null}', NULL, NULL, 6, 42, 64, 4, 2, 42, 64, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(320, '{\"en\": \"Temporary Market Name 64-5\"}', '{\"en\": null}', NULL, NULL, 6, 42, 64, 5, 2, 42, 64, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(321, '{\"en\": \"Temporary Market Name 65-1\"}', '{\"en\": null}', NULL, NULL, 6, 42, 65, 1, 2, 42, 65, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(322, '{\"en\": \"Temporary Market Name 65-2\"}', '{\"en\": null}', NULL, NULL, 6, 42, 65, 2, 2, 42, 65, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(323, '{\"en\": \"Temporary Market Name 65-3\"}', '{\"en\": null}', NULL, NULL, 6, 42, 65, 3, 2, 42, 65, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(324, '{\"en\": \"Temporary Market Name 65-4\"}', '{\"en\": null}', NULL, NULL, 6, 42, 65, 4, 2, 42, 65, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(325, '{\"en\": \"Temporary Market Name 65-5\"}', '{\"en\": null}', NULL, NULL, 6, 42, 65, 5, 2, 42, 65, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(326, '{\"en\": \"Temporary Market Name 66-1\"}', '{\"en\": null}', NULL, NULL, 6, 42, 66, 1, 2, 42, 66, 1, 1, 1, '2021-02-21 10:09:14', '2021-02-21 10:09:14'),
(327, '{\"en\": \"Temporary Market Name 66-2\"}', '{\"en\": null}', NULL, NULL, 6, 42, 66, 2, 2, 42, 66, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(328, '{\"en\": \"Temporary Market Name 66-3\"}', '{\"en\": null}', NULL, NULL, 6, 42, 66, 3, 2, 42, 66, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(329, '{\"en\": \"Temporary Market Name 66-4\"}', '{\"en\": null}', NULL, NULL, 6, 42, 66, 4, 2, 42, 66, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(330, '{\"en\": \"Temporary Market Name 66-5\"}', '{\"en\": null}', NULL, NULL, 6, 42, 66, 5, 2, 42, 66, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(331, '{\"en\": \"Temporary Market Name 67-1\"}', '{\"en\": null}', NULL, NULL, 6, 42, 67, 1, 2, 42, 67, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(332, '{\"en\": \"Temporary Market Name 67-2\"}', '{\"en\": null}', NULL, NULL, 6, 42, 67, 2, 2, 42, 67, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(333, '{\"en\": \"Temporary Market Name 67-3\"}', '{\"en\": null}', NULL, NULL, 6, 42, 67, 3, 2, 42, 67, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(334, '{\"en\": \"Temporary Market Name 67-4\"}', '{\"en\": null}', NULL, NULL, 6, 42, 67, 4, 2, 42, 67, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(335, '{\"en\": \"Temporary Market Name 67-5\"}', '{\"en\": null}', NULL, NULL, 6, 42, 67, 5, 2, 42, 67, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(336, '{\"en\": \"Temporary Market Name 68-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 68, 1, 2, 43, 68, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(337, '{\"en\": \"Temporary Market Name 68-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 68, 2, 2, 43, 68, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(338, '{\"en\": \"Temporary Market Name 68-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 68, 3, 2, 43, 68, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(339, '{\"en\": \"Temporary Market Name 68-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 68, 4, 2, 43, 68, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(340, '{\"en\": \"Temporary Market Name 68-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 68, 5, 2, 43, 68, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(341, '{\"en\": \"Temporary Market Name 69-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 69, 1, 2, 43, 69, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(342, '{\"en\": \"Temporary Market Name 69-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 69, 2, 2, 43, 69, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(343, '{\"en\": \"Temporary Market Name 69-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 69, 3, 2, 43, 69, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(344, '{\"en\": \"Temporary Market Name 69-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 69, 4, 2, 43, 69, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(345, '{\"en\": \"Temporary Market Name 69-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 69, 5, 2, 43, 69, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(346, '{\"en\": \"Temporary Market Name 70-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 70, 1, 2, 43, 70, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(347, '{\"en\": \"Temporary Market Name 70-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 70, 2, 2, 43, 70, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(348, '{\"en\": \"Temporary Market Name 70-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 70, 3, 2, 43, 70, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(349, '{\"en\": \"Temporary Market Name 70-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 70, 4, 2, 43, 70, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(350, '{\"en\": \"Temporary Market Name 70-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 70, 5, 2, 43, 70, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(351, '{\"en\": \"Temporary Market Name 71-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 71, 1, 2, 43, 71, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(352, '{\"en\": \"Temporary Market Name 71-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 71, 2, 2, 43, 71, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(353, '{\"en\": \"Temporary Market Name 71-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 71, 3, 2, 43, 71, 1, 1, 1, '2021-02-21 10:09:15', '2021-02-21 10:09:15'),
(354, '{\"en\": \"Temporary Market Name 71-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 71, 4, 2, 43, 71, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(355, '{\"en\": \"Temporary Market Name 71-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 71, 5, 2, 43, 71, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(356, '{\"en\": \"Temporary Market Name 72-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 72, 1, 2, 43, 72, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(357, '{\"en\": \"Temporary Market Name 72-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 72, 2, 2, 43, 72, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(358, '{\"en\": \"Temporary Market Name 72-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 72, 3, 2, 43, 72, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(359, '{\"en\": \"Temporary Market Name 72-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 72, 4, 2, 43, 72, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(360, '{\"en\": \"Temporary Market Name 72-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 72, 5, 2, 43, 72, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(361, '{\"en\": \"Temporary Market Name 73-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 73, 1, 2, 43, 73, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(362, '{\"en\": \"Temporary Market Name 73-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 73, 2, 2, 43, 73, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(363, '{\"en\": \"Temporary Market Name 73-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 73, 3, 2, 43, 73, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(364, '{\"en\": \"Temporary Market Name 73-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 73, 4, 2, 43, 73, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(365, '{\"en\": \"Temporary Market Name 73-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 73, 5, 2, 43, 73, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(366, '{\"en\": \"Temporary Market Name 74-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 74, 1, 2, 43, 74, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(367, '{\"en\": \"Temporary Market Name 74-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 74, 2, 2, 43, 74, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(368, '{\"en\": \"Temporary Market Name 74-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 74, 3, 2, 43, 74, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(369, '{\"en\": \"Temporary Market Name 74-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 74, 4, 2, 43, 74, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(370, '{\"en\": \"Temporary Market Name 74-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 74, 5, 2, 43, 74, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(371, '{\"en\": \"Temporary Market Name 75-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 75, 1, 2, 43, 75, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(372, '{\"en\": \"Temporary Market Name 75-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 75, 2, 2, 43, 75, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(373, '{\"en\": \"Temporary Market Name 75-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 75, 3, 2, 43, 75, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(374, '{\"en\": \"Temporary Market Name 75-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 75, 4, 2, 43, 75, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(375, '{\"en\": \"Temporary Market Name 75-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 75, 5, 2, 43, 75, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(376, '{\"en\": \"Temporary Market Name 76-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 76, 1, 2, 43, 76, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(377, '{\"en\": \"Temporary Market Name 76-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 76, 2, 2, 43, 76, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(378, '{\"en\": \"Temporary Market Name 76-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 76, 3, 2, 43, 76, 1, 1, 1, '2021-02-21 10:09:16', '2021-02-21 10:09:16'),
(379, '{\"en\": \"Temporary Market Name 76-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 76, 4, 2, 43, 76, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(380, '{\"en\": \"Temporary Market Name 76-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 76, 5, 2, 43, 76, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(381, '{\"en\": \"Temporary Market Name 77-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 77, 1, 2, 43, 77, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(382, '{\"en\": \"Temporary Market Name 77-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 77, 2, 2, 43, 77, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(383, '{\"en\": \"Temporary Market Name 77-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 77, 3, 2, 43, 77, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(384, '{\"en\": \"Temporary Market Name 77-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 77, 4, 2, 43, 77, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(385, '{\"en\": \"Temporary Market Name 77-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 77, 5, 2, 43, 77, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(386, '{\"en\": \"Temporary Market Name 78-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 78, 1, 2, 43, 78, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(387, '{\"en\": \"Temporary Market Name 78-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 78, 2, 2, 43, 78, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(388, '{\"en\": \"Temporary Market Name 78-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 78, 3, 2, 43, 78, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(389, '{\"en\": \"Temporary Market Name 78-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 78, 4, 2, 43, 78, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(390, '{\"en\": \"Temporary Market Name 78-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 78, 5, 2, 43, 78, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(391, '{\"en\": \"Temporary Market Name 79-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 79, 1, 2, 43, 79, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(392, '{\"en\": \"Temporary Market Name 79-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 79, 2, 2, 43, 79, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(393, '{\"en\": \"Temporary Market Name 79-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 79, 3, 2, 43, 79, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(394, '{\"en\": \"Temporary Market Name 79-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 79, 4, 2, 43, 79, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(395, '{\"en\": \"Temporary Market Name 79-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 79, 5, 2, 43, 79, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(396, '{\"en\": \"Temporary Market Name 80-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 80, 1, 2, 43, 80, 1, 1, 1, '2021-02-21 10:09:17', '2021-02-21 10:09:17'),
(397, '{\"en\": \"Temporary Market Name 80-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 80, 2, 2, 43, 80, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(398, '{\"en\": \"Temporary Market Name 80-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 80, 3, 2, 43, 80, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(399, '{\"en\": \"Temporary Market Name 80-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 80, 4, 2, 43, 80, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(400, '{\"en\": \"Temporary Market Name 80-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 80, 5, 2, 43, 80, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(401, '{\"en\": \"Temporary Market Name 81-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 81, 1, 2, 43, 81, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(402, '{\"en\": \"Temporary Market Name 81-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 81, 2, 2, 43, 81, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(403, '{\"en\": \"Temporary Market Name 81-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 81, 3, 2, 43, 81, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(404, '{\"en\": \"Temporary Market Name 81-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 81, 4, 2, 43, 81, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(405, '{\"en\": \"Temporary Market Name 81-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 81, 5, 2, 43, 81, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(406, '{\"en\": \"Temporary Market Name 82-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 82, 1, 2, 44, 82, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(407, '{\"en\": \"Temporary Market Name 82-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 82, 2, 2, 44, 82, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(408, '{\"en\": \"Temporary Market Name 82-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 82, 3, 2, 44, 82, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(409, '{\"en\": \"Temporary Market Name 82-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 82, 4, 2, 44, 82, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(410, '{\"en\": \"Temporary Market Name 82-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 82, 5, 2, 44, 82, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(411, '{\"en\": \"Temporary Market Name 83-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 83, 1, 2, 44, 83, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(412, '{\"en\": \"Temporary Market Name 83-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 83, 2, 2, 44, 83, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(413, '{\"en\": \"Temporary Market Name 83-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 83, 3, 2, 44, 83, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(414, '{\"en\": \"Temporary Market Name 83-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 83, 4, 2, 44, 83, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(415, '{\"en\": \"Temporary Market Name 83-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 83, 5, 2, 44, 83, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(416, '{\"en\": \"Temporary Market Name 84-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 84, 1, 2, 44, 84, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(417, '{\"en\": \"Temporary Market Name 84-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 84, 2, 2, 44, 84, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(418, '{\"en\": \"Temporary Market Name 84-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 84, 3, 2, 44, 84, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(419, '{\"en\": \"Temporary Market Name 84-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 84, 4, 2, 44, 84, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(420, '{\"en\": \"Temporary Market Name 84-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 84, 5, 2, 44, 84, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(421, '{\"en\": \"Temporary Market Name 85-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 85, 1, 2, 44, 85, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(422, '{\"en\": \"Temporary Market Name 85-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 85, 2, 2, 44, 85, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(423, '{\"en\": \"Temporary Market Name 85-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 85, 3, 2, 44, 85, 1, 1, 1, '2021-02-21 10:09:18', '2021-02-21 10:09:18'),
(424, '{\"en\": \"Temporary Market Name 85-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 85, 4, 2, 44, 85, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(425, '{\"en\": \"Temporary Market Name 85-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 85, 5, 2, 44, 85, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(426, '{\"en\": \"Temporary Market Name 86-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 86, 1, 2, 44, 86, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(427, '{\"en\": \"Temporary Market Name 86-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 86, 2, 2, 44, 86, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(428, '{\"en\": \"Temporary Market Name 86-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 86, 3, 2, 44, 86, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(429, '{\"en\": \"Temporary Market Name 86-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 86, 4, 2, 44, 86, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(430, '{\"en\": \"Temporary Market Name 86-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 86, 5, 2, 44, 86, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(431, '{\"en\": \"Temporary Market Name 87-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 87, 1, 2, 44, 87, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(432, '{\"en\": \"Temporary Market Name 87-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 87, 2, 2, 44, 87, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(433, '{\"en\": \"Temporary Market Name 87-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 87, 3, 2, 44, 87, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(434, '{\"en\": \"Temporary Market Name 87-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 87, 4, 2, 44, 87, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(435, '{\"en\": \"Temporary Market Name 87-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 87, 5, 2, 44, 87, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(436, '{\"en\": \"Temporary Market Name 88-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 88, 1, 2, 44, 88, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(437, '{\"en\": \"Temporary Market Name 88-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 88, 2, 2, 44, 88, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(438, '{\"en\": \"Temporary Market Name 88-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 88, 3, 2, 44, 88, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(439, '{\"en\": \"Temporary Market Name 88-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 88, 4, 2, 44, 88, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(440, '{\"en\": \"Temporary Market Name 88-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 88, 5, 2, 44, 88, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(441, '{\"en\": \"Temporary Market Name 89-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 89, 1, 2, 44, 89, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(442, '{\"en\": \"Temporary Market Name 89-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 89, 2, 2, 44, 89, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(443, '{\"en\": \"Temporary Market Name 89-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 89, 3, 2, 44, 89, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(444, '{\"en\": \"Temporary Market Name 89-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 89, 4, 2, 44, 89, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(445, '{\"en\": \"Temporary Market Name 89-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 89, 5, 2, 44, 89, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(446, '{\"en\": \"Temporary Market Name 90-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 90, 1, 2, 44, 90, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(447, '{\"en\": \"Temporary Market Name 90-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 90, 2, 2, 44, 90, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(448, '{\"en\": \"Temporary Market Name 90-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 90, 3, 2, 44, 90, 1, 1, 1, '2021-02-21 10:09:19', '2021-02-21 10:09:19'),
(449, '{\"en\": \"Temporary Market Name 90-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 90, 4, 2, 44, 90, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(450, '{\"en\": \"Temporary Market Name 90-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 90, 5, 2, 44, 90, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(451, '{\"en\": \"Temporary Market Name 91-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 91, 1, 2, 44, 91, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(452, '{\"en\": \"Temporary Market Name 91-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 91, 2, 2, 44, 91, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(453, '{\"en\": \"Temporary Market Name 91-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 91, 3, 2, 44, 91, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(454, '{\"en\": \"Temporary Market Name 91-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 91, 4, 2, 44, 91, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(455, '{\"en\": \"Temporary Market Name 91-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 91, 5, 2, 44, 91, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(456, '{\"en\": \"Temporary Market Name 92-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 92, 1, 2, 44, 92, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(457, '{\"en\": \"Temporary Market Name 92-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 92, 2, 2, 44, 92, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(458, '{\"en\": \"Temporary Market Name 92-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 92, 3, 2, 44, 92, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(459, '{\"en\": \"Temporary Market Name 92-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 92, 4, 2, 44, 92, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(460, '{\"en\": \"Temporary Market Name 92-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 92, 5, 2, 44, 92, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(461, '{\"en\": \"Temporary Market Name 93-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 93, 1, 2, 44, 93, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(462, '{\"en\": \"Temporary Market Name 93-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 93, 2, 2, 44, 93, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(463, '{\"en\": \"Temporary Market Name 93-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 93, 3, 2, 44, 93, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(464, '{\"en\": \"Temporary Market Name 93-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 93, 4, 2, 44, 93, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(465, '{\"en\": \"Temporary Market Name 93-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 93, 5, 2, 44, 93, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(466, '{\"en\": \"Temporary Market Name 94-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 94, 1, 2, 44, 94, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(467, '{\"en\": \"Temporary Market Name 94-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 94, 2, 2, 44, 94, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(468, '{\"en\": \"Temporary Market Name 94-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 94, 3, 2, 44, 94, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(469, '{\"en\": \"Temporary Market Name 94-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 94, 4, 2, 44, 94, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(470, '{\"en\": \"Temporary Market Name 94-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 94, 5, 2, 44, 94, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(471, '{\"en\": \"Temporary Market Name 95-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 95, 1, 2, 44, 95, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(472, '{\"en\": \"Temporary Market Name 95-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 95, 2, 2, 44, 95, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(473, '{\"en\": \"Temporary Market Name 95-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 95, 3, 2, 44, 95, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(474, '{\"en\": \"Temporary Market Name 95-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 95, 4, 2, 44, 95, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(475, '{\"en\": \"Temporary Market Name 95-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 95, 5, 2, 44, 95, 1, 1, 1, '2021-02-21 10:09:20', '2021-02-21 10:09:20'),
(476, '{\"en\": \"Temporary Market Name 96-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 96, 1, 2, 44, 96, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(477, '{\"en\": \"Temporary Market Name 96-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 96, 2, 2, 44, 96, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(478, '{\"en\": \"Temporary Market Name 96-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 96, 3, 2, 44, 96, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(479, '{\"en\": \"Temporary Market Name 96-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 96, 4, 2, 44, 96, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(480, '{\"en\": \"Temporary Market Name 96-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 96, 5, 2, 44, 96, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(481, '{\"en\": \"Temporary Market Name 97-1\"}', '{\"en\": null}', NULL, NULL, 6, 44, 97, 1, 2, 44, 97, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(482, '{\"en\": \"Temporary Market Name 97-2\"}', '{\"en\": null}', NULL, NULL, 6, 44, 97, 2, 2, 44, 97, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(483, '{\"en\": \"Temporary Market Name 97-3\"}', '{\"en\": null}', NULL, NULL, 6, 44, 97, 3, 2, 44, 97, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(484, '{\"en\": \"Temporary Market Name 97-4\"}', '{\"en\": null}', NULL, NULL, 6, 44, 97, 4, 2, 44, 97, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(485, '{\"en\": \"Temporary Market Name 97-5\"}', '{\"en\": null}', NULL, NULL, 6, 44, 97, 5, 2, 44, 97, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(486, '{\"en\": \"Temporary Market Name 98-1\"}', '{\"en\": null}', NULL, NULL, 6, 45, 98, 1, 2, 45, 98, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(487, '{\"en\": \"Temporary Market Name 98-2\"}', '{\"en\": null}', NULL, NULL, 6, 45, 98, 2, 2, 45, 98, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(488, '{\"en\": \"Temporary Market Name 98-3\"}', '{\"en\": null}', NULL, NULL, 6, 45, 98, 3, 2, 45, 98, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(489, '{\"en\": \"Temporary Market Name 98-4\"}', '{\"en\": null}', NULL, NULL, 6, 45, 98, 4, 2, 45, 98, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(490, '{\"en\": \"Temporary Market Name 98-5\"}', '{\"en\": null}', NULL, NULL, 6, 45, 98, 5, 2, 45, 98, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(491, '{\"en\": \"Temporary Market Name 99-1\"}', '{\"en\": null}', NULL, NULL, 6, 45, 99, 1, 2, 45, 99, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(492, '{\"en\": \"Temporary Market Name 99-2\"}', '{\"en\": null}', NULL, NULL, 6, 45, 99, 2, 2, 45, 99, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(493, '{\"en\": \"Temporary Market Name 99-3\"}', '{\"en\": null}', NULL, NULL, 6, 45, 99, 3, 2, 45, 99, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(494, '{\"en\": \"Temporary Market Name 99-4\"}', '{\"en\": null}', NULL, NULL, 6, 45, 99, 4, 2, 45, 99, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(495, '{\"en\": \"Temporary Market Name 99-5\"}', '{\"en\": null}', NULL, NULL, 6, 45, 99, 5, 2, 45, 99, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(496, '{\"en\": \"Temporary Market Name 100-1\"}', '{\"en\": null}', NULL, NULL, 6, 45, 100, 1, 2, 45, 100, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(497, '{\"en\": \"Temporary Market Name 100-2\"}', '{\"en\": null}', NULL, NULL, 6, 45, 100, 2, 2, 45, 100, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(498, '{\"en\": \"Temporary Market Name 100-3\"}', '{\"en\": null}', NULL, NULL, 6, 45, 100, 3, 2, 45, 100, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(499, '{\"en\": \"Temporary Market Name 100-4\"}', '{\"en\": null}', NULL, NULL, 6, 45, 100, 4, 2, 45, 100, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(500, '{\"en\": \"Temporary Market Name 100-5\"}', '{\"en\": null}', NULL, NULL, 6, 45, 100, 5, 2, 45, 100, 1, 1, 1, '2021-02-21 10:09:21', '2021-02-21 10:09:21'),
(501, '{\"en\": \"Temporary Market Name 101-1\"}', '{\"en\": null}', NULL, NULL, 6, 45, 101, 1, 2, 45, 101, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(502, '{\"en\": \"Temporary Market Name 101-2\"}', '{\"en\": null}', NULL, NULL, 6, 45, 101, 2, 2, 45, 101, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(503, '{\"en\": \"Temporary Market Name 101-3\"}', '{\"en\": null}', NULL, NULL, 6, 45, 101, 3, 2, 45, 101, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(504, '{\"en\": \"Temporary Market Name 101-4\"}', '{\"en\": null}', NULL, NULL, 6, 45, 101, 4, 2, 45, 101, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(505, '{\"en\": \"Temporary Market Name 101-5\"}', '{\"en\": null}', NULL, NULL, 6, 45, 101, 5, 2, 45, 101, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(506, '{\"en\": \"Temporary Market Name 102-1\"}', '{\"en\": null}', NULL, NULL, 6, 45, 102, 1, 2, 45, 102, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(507, '{\"en\": \"Temporary Market Name 102-2\"}', '{\"en\": null}', NULL, NULL, 6, 45, 102, 2, 2, 45, 102, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(508, '{\"en\": \"Temporary Market Name 102-3\"}', '{\"en\": null}', NULL, NULL, 6, 45, 102, 3, 2, 45, 102, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(509, '{\"en\": \"Temporary Market Name 102-4\"}', '{\"en\": null}', NULL, NULL, 6, 45, 102, 4, 2, 45, 102, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(510, '{\"en\": \"Temporary Market Name 102-5\"}', '{\"en\": null}', NULL, NULL, 6, 45, 102, 5, 2, 45, 102, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(511, '{\"en\": \"Temporary Market Name 103-1\"}', '{\"en\": null}', NULL, NULL, 6, 45, 103, 1, 2, 45, 103, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(512, '{\"en\": \"Temporary Market Name 103-2\"}', '{\"en\": null}', NULL, NULL, 6, 45, 103, 2, 2, 45, 103, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(513, '{\"en\": \"Temporary Market Name 103-3\"}', '{\"en\": null}', NULL, NULL, 6, 45, 103, 3, 2, 45, 103, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(514, '{\"en\": \"Temporary Market Name 103-4\"}', '{\"en\": null}', NULL, NULL, 6, 45, 103, 4, 2, 45, 103, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(515, '{\"en\": \"Temporary Market Name 103-5\"}', '{\"en\": null}', NULL, NULL, 6, 45, 103, 5, 2, 45, 103, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(516, '{\"en\": \"Temporary Market Name 104-1\"}', '{\"en\": null}', NULL, NULL, 6, 45, 104, 1, 2, 45, 104, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(517, '{\"en\": \"Temporary Market Name 104-2\"}', '{\"en\": null}', NULL, NULL, 6, 45, 104, 2, 2, 45, 104, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(518, '{\"en\": \"Temporary Market Name 104-3\"}', '{\"en\": null}', NULL, NULL, 6, 45, 104, 3, 2, 45, 104, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(519, '{\"en\": \"Temporary Market Name 104-4\"}', '{\"en\": null}', NULL, NULL, 6, 45, 104, 4, 2, 45, 104, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(520, '{\"en\": \"Temporary Market Name 104-5\"}', '{\"en\": null}', NULL, NULL, 6, 45, 104, 5, 2, 45, 104, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(521, '{\"en\": \"Temporary Market Name 105-1\"}', '{\"en\": null}', NULL, NULL, 6, 45, 105, 1, 2, 45, 105, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(522, '{\"en\": \"Temporary Market Name 105-2\"}', '{\"en\": null}', NULL, NULL, 6, 45, 105, 2, 2, 45, 105, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(523, '{\"en\": \"Temporary Market Name 105-3\"}', '{\"en\": null}', NULL, NULL, 6, 45, 105, 3, 2, 45, 105, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(524, '{\"en\": \"Temporary Market Name 105-4\"}', '{\"en\": null}', NULL, NULL, 6, 45, 105, 4, 2, 45, 105, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(525, '{\"en\": \"Temporary Market Name 105-5\"}', '{\"en\": null}', NULL, NULL, 6, 45, 105, 5, 2, 45, 105, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(526, '{\"en\": \"Temporary Market Name 106-1\"}', '{\"en\": null}', NULL, NULL, 6, 45, 106, 1, 2, 45, 106, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(527, '{\"en\": \"Temporary Market Name 106-2\"}', '{\"en\": null}', NULL, NULL, 6, 45, 106, 2, 2, 45, 106, 1, 1, 1, '2021-02-21 10:09:22', '2021-02-21 10:09:22'),
(528, '{\"en\": \"Temporary Market Name 106-3\"}', '{\"en\": null}', NULL, NULL, 6, 45, 106, 3, 2, 45, 106, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(529, '{\"en\": \"Temporary Market Name 106-4\"}', '{\"en\": null}', NULL, NULL, 6, 45, 106, 4, 2, 45, 106, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(530, '{\"en\": \"Temporary Market Name 106-5\"}', '{\"en\": null}', NULL, NULL, 6, 45, 106, 5, 2, 45, 106, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(531, '{\"en\": \"Temporary Market Name 107-1\"}', '{\"en\": null}', NULL, NULL, 6, 46, 107, 1, 2, 46, 107, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(532, '{\"en\": \"Temporary Market Name 107-2\"}', '{\"en\": null}', NULL, NULL, 6, 46, 107, 2, 2, 46, 107, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(533, '{\"en\": \"Temporary Market Name 107-3\"}', '{\"en\": null}', NULL, NULL, 6, 46, 107, 3, 2, 46, 107, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(534, '{\"en\": \"Temporary Market Name 107-4\"}', '{\"en\": null}', NULL, NULL, 6, 46, 107, 4, 2, 46, 107, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(535, '{\"en\": \"Temporary Market Name 107-5\"}', '{\"en\": null}', NULL, NULL, 6, 46, 107, 5, 2, 46, 107, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(536, '{\"en\": \"Temporary Market Name 108-1\"}', '{\"en\": null}', NULL, NULL, 6, 46, 108, 1, 2, 46, 108, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(537, '{\"en\": \"Temporary Market Name 108-2\"}', '{\"en\": null}', NULL, NULL, 6, 46, 108, 2, 2, 46, 108, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(538, '{\"en\": \"Temporary Market Name 108-3\"}', '{\"en\": null}', NULL, NULL, 6, 46, 108, 3, 2, 46, 108, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(539, '{\"en\": \"Temporary Market Name 108-4\"}', '{\"en\": null}', NULL, NULL, 6, 46, 108, 4, 2, 46, 108, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(540, '{\"en\": \"Temporary Market Name 108-5\"}', '{\"en\": null}', NULL, NULL, 6, 46, 108, 5, 2, 46, 108, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(541, '{\"en\": \"Temporary Market Name 109-1\"}', '{\"en\": null}', NULL, NULL, 6, 46, 109, 1, 2, 46, 109, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(542, '{\"en\": \"Temporary Market Name 109-2\"}', '{\"en\": null}', NULL, NULL, 6, 46, 109, 2, 2, 46, 109, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(543, '{\"en\": \"Temporary Market Name 109-3\"}', '{\"en\": null}', NULL, NULL, 6, 46, 109, 3, 2, 46, 109, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(544, '{\"en\": \"Temporary Market Name 109-4\"}', '{\"en\": null}', NULL, NULL, 6, 46, 109, 4, 2, 46, 109, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(545, '{\"en\": \"Temporary Market Name 109-5\"}', '{\"en\": null}', NULL, NULL, 6, 46, 109, 5, 2, 46, 109, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(546, '{\"en\": \"Temporary Market Name 110-1\"}', '{\"en\": null}', NULL, NULL, 6, 46, 110, 1, 2, 46, 110, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(547, '{\"en\": \"Temporary Market Name 110-2\"}', '{\"en\": null}', NULL, NULL, 6, 46, 110, 2, 2, 46, 110, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(548, '{\"en\": \"Temporary Market Name 110-3\"}', '{\"en\": null}', NULL, NULL, 6, 46, 110, 3, 2, 46, 110, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(549, '{\"en\": \"Temporary Market Name 110-4\"}', '{\"en\": null}', NULL, NULL, 6, 46, 110, 4, 2, 46, 110, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(550, '{\"en\": \"Temporary Market Name 110-5\"}', '{\"en\": null}', NULL, NULL, 6, 46, 110, 5, 2, 46, 110, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(551, '{\"en\": \"Temporary Market Name 111-1\"}', '{\"en\": null}', NULL, NULL, 6, 46, 111, 1, 2, 46, 111, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(552, '{\"en\": \"Temporary Market Name 111-2\"}', '{\"en\": null}', NULL, NULL, 6, 46, 111, 2, 2, 46, 111, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(553, '{\"en\": \"Temporary Market Name 111-3\"}', '{\"en\": null}', NULL, NULL, 6, 46, 111, 3, 2, 46, 111, 1, 1, 1, '2021-02-21 10:09:23', '2021-02-21 10:09:23'),
(554, '{\"en\": \"Temporary Market Name 111-4\"}', '{\"en\": null}', NULL, NULL, 6, 46, 111, 4, 2, 46, 111, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(555, '{\"en\": \"Temporary Market Name 111-5\"}', '{\"en\": null}', NULL, NULL, 6, 46, 111, 5, 2, 46, 111, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(556, '{\"en\": \"Temporary Market Name 112-1\"}', '{\"en\": null}', NULL, NULL, 6, 46, 112, 1, 2, 46, 112, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(557, '{\"en\": \"Temporary Market Name 112-2\"}', '{\"en\": null}', NULL, NULL, 6, 46, 112, 2, 2, 46, 112, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(558, '{\"en\": \"Temporary Market Name 112-3\"}', '{\"en\": null}', NULL, NULL, 6, 46, 112, 3, 2, 46, 112, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(559, '{\"en\": \"Temporary Market Name 112-4\"}', '{\"en\": null}', NULL, NULL, 6, 46, 112, 4, 2, 46, 112, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(560, '{\"en\": \"Temporary Market Name 112-5\"}', '{\"en\": null}', NULL, NULL, 6, 46, 112, 5, 2, 46, 112, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(561, '{\"en\": \"Temporary Market Name 113-1\"}', '{\"en\": null}', NULL, NULL, 6, 47, 113, 1, 2, 47, 113, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(562, '{\"en\": \"Temporary Market Name 113-2\"}', '{\"en\": null}', NULL, NULL, 6, 47, 113, 2, 2, 47, 113, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(563, '{\"en\": \"Temporary Market Name 113-3\"}', '{\"en\": null}', NULL, NULL, 6, 47, 113, 3, 2, 47, 113, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(564, '{\"en\": \"Temporary Market Name 113-4\"}', '{\"en\": null}', NULL, NULL, 6, 47, 113, 4, 2, 47, 113, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(565, '{\"en\": \"Temporary Market Name 113-5\"}', '{\"en\": null}', NULL, NULL, 6, 47, 113, 5, 2, 47, 113, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(566, '{\"en\": \"Temporary Market Name 114-1\"}', '{\"en\": null}', NULL, NULL, 6, 47, 114, 1, 2, 47, 114, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(567, '{\"en\": \"Temporary Market Name 114-2\"}', '{\"en\": null}', NULL, NULL, 6, 47, 114, 2, 2, 47, 114, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(568, '{\"en\": \"Temporary Market Name 114-3\"}', '{\"en\": null}', NULL, NULL, 6, 47, 114, 3, 2, 47, 114, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(569, '{\"en\": \"Temporary Market Name 114-4\"}', '{\"en\": null}', NULL, NULL, 6, 47, 114, 4, 2, 47, 114, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(570, '{\"en\": \"Temporary Market Name 114-5\"}', '{\"en\": null}', NULL, NULL, 6, 47, 114, 5, 2, 47, 114, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(571, '{\"en\": \"Temporary Market Name 115-1\"}', '{\"en\": null}', NULL, NULL, 6, 47, 115, 1, 2, 47, 115, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(572, '{\"en\": \"Temporary Market Name 115-2\"}', '{\"en\": null}', NULL, NULL, 6, 47, 115, 2, 2, 47, 115, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(573, '{\"en\": \"Temporary Market Name 115-3\"}', '{\"en\": null}', NULL, NULL, 6, 47, 115, 3, 2, 47, 115, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(574, '{\"en\": \"Temporary Market Name 115-4\"}', '{\"en\": null}', NULL, NULL, 6, 47, 115, 4, 2, 47, 115, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(575, '{\"en\": \"Temporary Market Name 115-5\"}', '{\"en\": null}', NULL, NULL, 6, 47, 115, 5, 2, 47, 115, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(576, '{\"en\": \"Temporary Market Name 116-1\"}', '{\"en\": null}', NULL, NULL, 6, 47, 116, 1, 2, 47, 116, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(577, '{\"en\": \"Temporary Market Name 116-2\"}', '{\"en\": null}', NULL, NULL, 6, 47, 116, 2, 2, 47, 116, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(578, '{\"en\": \"Temporary Market Name 116-3\"}', '{\"en\": null}', NULL, NULL, 6, 47, 116, 3, 2, 47, 116, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(579, '{\"en\": \"Temporary Market Name 116-4\"}', '{\"en\": null}', NULL, NULL, 6, 47, 116, 4, 2, 47, 116, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(580, '{\"en\": \"Temporary Market Name 116-5\"}', '{\"en\": null}', NULL, NULL, 6, 47, 116, 5, 2, 47, 116, 1, 1, 1, '2021-02-21 10:09:24', '2021-02-21 10:09:24'),
(581, '{\"en\": \"Temporary Market Name 117-1\"}', '{\"en\": null}', NULL, NULL, 6, 47, 117, 1, 2, 47, 117, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(582, '{\"en\": \"Temporary Market Name 117-2\"}', '{\"en\": null}', NULL, NULL, 6, 47, 117, 2, 2, 47, 117, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(583, '{\"en\": \"Temporary Market Name 117-3\"}', '{\"en\": null}', NULL, NULL, 6, 47, 117, 3, 2, 47, 117, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(584, '{\"en\": \"Temporary Market Name 117-4\"}', '{\"en\": null}', NULL, NULL, 6, 47, 117, 4, 2, 47, 117, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(585, '{\"en\": \"Temporary Market Name 117-5\"}', '{\"en\": null}', NULL, NULL, 6, 47, 117, 5, 2, 47, 117, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(586, '{\"en\": \"Temporary Market Name 118-1\"}', '{\"en\": null}', NULL, NULL, 6, 47, 118, 1, 2, 47, 118, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(587, '{\"en\": \"Temporary Market Name 118-2\"}', '{\"en\": null}', NULL, NULL, 6, 47, 118, 2, 2, 47, 118, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(588, '{\"en\": \"Temporary Market Name 118-3\"}', '{\"en\": null}', NULL, NULL, 6, 47, 118, 3, 2, 47, 118, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(589, '{\"en\": \"Temporary Market Name 118-4\"}', '{\"en\": null}', NULL, NULL, 6, 47, 118, 4, 2, 47, 118, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(590, '{\"en\": \"Temporary Market Name 118-5\"}', '{\"en\": null}', NULL, NULL, 6, 47, 118, 5, 2, 47, 118, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(591, '{\"en\": \"Temporary Market Name 119-1\"}', '{\"en\": null}', NULL, NULL, 6, 47, 119, 1, 2, 47, 119, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(592, '{\"en\": \"Temporary Market Name 119-2\"}', '{\"en\": null}', NULL, NULL, 6, 47, 119, 2, 2, 47, 119, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(593, '{\"en\": \"Temporary Market Name 119-3\"}', '{\"en\": null}', NULL, NULL, 6, 47, 119, 3, 2, 47, 119, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(594, '{\"en\": \"Temporary Market Name 119-4\"}', '{\"en\": null}', NULL, NULL, 6, 47, 119, 4, 2, 47, 119, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(595, '{\"en\": \"Temporary Market Name 119-5\"}', '{\"en\": null}', NULL, NULL, 6, 47, 119, 5, 2, 47, 119, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(596, '{\"en\": \"Temporary Market Name 120-1\"}', '{\"en\": null}', NULL, NULL, 6, 47, 120, 1, 2, 47, 120, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(597, '{\"en\": \"Temporary Market Name 120-2\"}', '{\"en\": null}', NULL, NULL, 6, 47, 120, 2, 2, 47, 120, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(598, '{\"en\": \"Temporary Market Name 120-3\"}', '{\"en\": null}', NULL, NULL, 6, 47, 120, 3, 2, 47, 120, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(599, '{\"en\": \"Temporary Market Name 120-4\"}', '{\"en\": null}', NULL, NULL, 6, 47, 120, 4, 2, 47, 120, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(600, '{\"en\": \"Temporary Market Name 120-5\"}', '{\"en\": null}', NULL, NULL, 6, 47, 120, 5, 2, 47, 120, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(601, '{\"en\": \"Temporary Market Name 121-1\"}', '{\"en\": null}', NULL, NULL, 6, 48, 121, 1, 2, 48, 121, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(602, '{\"en\": \"Temporary Market Name 121-2\"}', '{\"en\": null}', NULL, NULL, 6, 48, 121, 2, 2, 48, 121, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(603, '{\"en\": \"Temporary Market Name 121-3\"}', '{\"en\": null}', NULL, NULL, 6, 48, 121, 3, 2, 48, 121, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(604, '{\"en\": \"Temporary Market Name 121-4\"}', '{\"en\": null}', NULL, NULL, 6, 48, 121, 4, 2, 48, 121, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(605, '{\"en\": \"Temporary Market Name 121-5\"}', '{\"en\": null}', NULL, NULL, 6, 48, 121, 5, 2, 48, 121, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(606, '{\"en\": \"Temporary Market Name 122-1\"}', '{\"en\": null}', NULL, NULL, 6, 48, 122, 1, 2, 48, 122, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(607, '{\"en\": \"Temporary Market Name 122-2\"}', '{\"en\": null}', NULL, NULL, 6, 48, 122, 2, 2, 48, 122, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(608, '{\"en\": \"Temporary Market Name 122-3\"}', '{\"en\": null}', NULL, NULL, 6, 48, 122, 3, 2, 48, 122, 1, 1, 1, '2021-02-21 10:09:25', '2021-02-21 10:09:25'),
(609, '{\"en\": \"Temporary Market Name 122-4\"}', '{\"en\": null}', NULL, NULL, 6, 48, 122, 4, 2, 48, 122, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(610, '{\"en\": \"Temporary Market Name 122-5\"}', '{\"en\": null}', NULL, NULL, 6, 48, 122, 5, 2, 48, 122, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(611, '{\"en\": \"Temporary Market Name 123-1\"}', '{\"en\": null}', NULL, NULL, 6, 48, 123, 1, 2, 48, 123, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(612, '{\"en\": \"Temporary Market Name 123-2\"}', '{\"en\": null}', NULL, NULL, 6, 48, 123, 2, 2, 48, 123, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(613, '{\"en\": \"Temporary Market Name 123-3\"}', '{\"en\": null}', NULL, NULL, 6, 48, 123, 3, 2, 48, 123, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(614, '{\"en\": \"Temporary Market Name 123-4\"}', '{\"en\": null}', NULL, NULL, 6, 48, 123, 4, 2, 48, 123, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(615, '{\"en\": \"Temporary Market Name 123-5\"}', '{\"en\": null}', NULL, NULL, 6, 48, 123, 5, 2, 48, 123, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(616, '{\"en\": \"Temporary Market Name 124-1\"}', '{\"en\": null}', NULL, NULL, 6, 48, 124, 1, 2, 48, 124, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(617, '{\"en\": \"Temporary Market Name 124-2\"}', '{\"en\": null}', NULL, NULL, 6, 48, 124, 2, 2, 48, 124, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(618, '{\"en\": \"Temporary Market Name 124-3\"}', '{\"en\": null}', NULL, NULL, 6, 48, 124, 3, 2, 48, 124, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(619, '{\"en\": \"Temporary Market Name 124-4\"}', '{\"en\": null}', NULL, NULL, 6, 48, 124, 4, 2, 48, 124, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(620, '{\"en\": \"Temporary Market Name 124-5\"}', '{\"en\": null}', NULL, NULL, 6, 48, 124, 5, 2, 48, 124, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(621, '{\"en\": \"Temporary Market Name 125-1\"}', '{\"en\": null}', NULL, NULL, 6, 48, 125, 1, 2, 48, 125, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(622, '{\"en\": \"Temporary Market Name 125-2\"}', '{\"en\": null}', NULL, NULL, 6, 48, 125, 2, 2, 48, 125, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(623, '{\"en\": \"Temporary Market Name 125-3\"}', '{\"en\": null}', NULL, NULL, 6, 48, 125, 3, 2, 48, 125, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26');
INSERT INTO `markets` (`id`, `name`, `address`, `lat`, `lng`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(624, '{\"en\": \"Temporary Market Name 125-4\"}', '{\"en\": null}', NULL, NULL, 6, 48, 125, 4, 2, 48, 125, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(625, '{\"en\": \"Temporary Market Name 125-5\"}', '{\"en\": null}', NULL, NULL, 6, 48, 125, 5, 2, 48, 125, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(626, '{\"en\": \"Temporary Market Name 126-1\"}', '{\"en\": null}', NULL, NULL, 6, 49, 126, 1, 2, 49, 126, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(627, '{\"en\": \"Temporary Market Name 126-2\"}', '{\"en\": null}', NULL, NULL, 6, 49, 126, 2, 2, 49, 126, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(628, '{\"en\": \"Temporary Market Name 126-3\"}', '{\"en\": null}', NULL, NULL, 6, 49, 126, 3, 2, 49, 126, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(629, '{\"en\": \"Temporary Market Name 126-4\"}', '{\"en\": null}', NULL, NULL, 6, 49, 126, 4, 2, 49, 126, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(630, '{\"en\": \"Temporary Market Name 126-5\"}', '{\"en\": null}', NULL, NULL, 6, 49, 126, 5, 2, 49, 126, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(631, '{\"en\": \"Temporary Market Name 127-1\"}', '{\"en\": null}', NULL, NULL, 6, 49, 127, 1, 2, 49, 127, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(632, '{\"en\": \"Temporary Market Name 127-2\"}', '{\"en\": null}', NULL, NULL, 6, 49, 127, 2, 2, 49, 127, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(633, '{\"en\": \"Temporary Market Name 127-3\"}', '{\"en\": null}', NULL, NULL, 6, 49, 127, 3, 2, 49, 127, 1, 1, 1, '2021-02-21 10:09:26', '2021-02-21 10:09:26'),
(634, '{\"en\": \"Temporary Market Name 127-4\"}', '{\"en\": null}', NULL, NULL, 6, 49, 127, 4, 2, 49, 127, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(635, '{\"en\": \"Temporary Market Name 127-5\"}', '{\"en\": null}', NULL, NULL, 6, 49, 127, 5, 2, 49, 127, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(636, '{\"en\": \"Temporary Market Name 128-1\"}', '{\"en\": null}', NULL, NULL, 6, 49, 128, 1, 2, 49, 128, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(637, '{\"en\": \"Temporary Market Name 128-2\"}', '{\"en\": null}', NULL, NULL, 6, 49, 128, 2, 2, 49, 128, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(638, '{\"en\": \"Temporary Market Name 128-3\"}', '{\"en\": null}', NULL, NULL, 6, 49, 128, 3, 2, 49, 128, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(639, '{\"en\": \"Temporary Market Name 128-4\"}', '{\"en\": null}', NULL, NULL, 6, 49, 128, 4, 2, 49, 128, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(640, '{\"en\": \"Temporary Market Name 128-5\"}', '{\"en\": null}', NULL, NULL, 6, 49, 128, 5, 2, 49, 128, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(641, '{\"en\": \"Temporary Market Name 129-1\"}', '{\"en\": null}', NULL, NULL, 6, 49, 129, 1, 2, 49, 129, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(642, '{\"en\": \"Temporary Market Name 129-2\"}', '{\"en\": null}', NULL, NULL, 6, 49, 129, 2, 2, 49, 129, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(643, '{\"en\": \"Temporary Market Name 129-3\"}', '{\"en\": null}', NULL, NULL, 6, 49, 129, 3, 2, 49, 129, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(644, '{\"en\": \"Temporary Market Name 129-4\"}', '{\"en\": null}', NULL, NULL, 6, 49, 129, 4, 2, 49, 129, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(645, '{\"en\": \"Temporary Market Name 129-5\"}', '{\"en\": null}', NULL, NULL, 6, 49, 129, 5, 2, 49, 129, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(646, '{\"en\": \"Temporary Market Name 130-1\"}', '{\"en\": null}', NULL, NULL, 6, 49, 130, 1, 2, 49, 130, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(647, '{\"en\": \"Temporary Market Name 130-2\"}', '{\"en\": null}', NULL, NULL, 6, 49, 130, 2, 2, 49, 130, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(648, '{\"en\": \"Temporary Market Name 130-3\"}', '{\"en\": null}', NULL, NULL, 6, 49, 130, 3, 2, 49, 130, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(649, '{\"en\": \"Temporary Market Name 130-4\"}', '{\"en\": null}', NULL, NULL, 6, 49, 130, 4, 2, 49, 130, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(650, '{\"en\": \"Temporary Market Name 130-5\"}', '{\"en\": null}', NULL, NULL, 6, 49, 130, 5, 2, 49, 130, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(651, '{\"en\": \"Temporary Market Name 131-1\"}', '{\"en\": null}', NULL, NULL, 6, 49, 131, 1, 2, 49, 131, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(652, '{\"en\": \"Temporary Market Name 131-2\"}', '{\"en\": null}', NULL, NULL, 6, 49, 131, 2, 2, 49, 131, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(653, '{\"en\": \"Temporary Market Name 131-3\"}', '{\"en\": null}', NULL, NULL, 6, 49, 131, 3, 2, 49, 131, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(654, '{\"en\": \"Temporary Market Name 131-4\"}', '{\"en\": null}', NULL, NULL, 6, 49, 131, 4, 2, 49, 131, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(655, '{\"en\": \"Temporary Market Name 131-5\"}', '{\"en\": null}', NULL, NULL, 6, 49, 131, 5, 2, 49, 131, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(656, '{\"en\": \"Temporary Market Name 132-1\"}', '{\"en\": null}', NULL, NULL, 6, 49, 132, 1, 2, 49, 132, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(657, '{\"en\": \"Temporary Market Name 132-2\"}', '{\"en\": null}', NULL, NULL, 6, 49, 132, 2, 2, 49, 132, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(658, '{\"en\": \"Temporary Market Name 132-3\"}', '{\"en\": null}', NULL, NULL, 6, 49, 132, 3, 2, 49, 132, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(659, '{\"en\": \"Temporary Market Name 132-4\"}', '{\"en\": null}', NULL, NULL, 6, 49, 132, 4, 2, 49, 132, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(660, '{\"en\": \"Temporary Market Name 132-5\"}', '{\"en\": null}', NULL, NULL, 6, 49, 132, 5, 2, 49, 132, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(661, '{\"en\": \"Temporary Market Name 133-1\"}', '{\"en\": null}', NULL, NULL, 6, 49, 133, 1, 2, 49, 133, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(662, '{\"en\": \"Temporary Market Name 133-2\"}', '{\"en\": null}', NULL, NULL, 6, 49, 133, 2, 2, 49, 133, 1, 1, 1, '2021-02-21 10:09:27', '2021-02-21 10:09:27'),
(663, '{\"en\": \"Temporary Market Name 133-3\"}', '{\"en\": null}', NULL, NULL, 6, 49, 133, 3, 2, 49, 133, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(664, '{\"en\": \"Temporary Market Name 133-4\"}', '{\"en\": null}', NULL, NULL, 6, 49, 133, 4, 2, 49, 133, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(665, '{\"en\": \"Temporary Market Name 133-5\"}', '{\"en\": null}', NULL, NULL, 6, 49, 133, 5, 2, 49, 133, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(666, '{\"en\": \"Temporary Market Name 134-1\"}', '{\"en\": null}', NULL, NULL, 6, 49, 134, 1, 2, 49, 134, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(667, '{\"en\": \"Temporary Market Name 134-2\"}', '{\"en\": null}', NULL, NULL, 6, 49, 134, 2, 2, 49, 134, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(668, '{\"en\": \"Temporary Market Name 134-3\"}', '{\"en\": null}', NULL, NULL, 6, 49, 134, 3, 2, 49, 134, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(669, '{\"en\": \"Temporary Market Name 134-4\"}', '{\"en\": null}', NULL, NULL, 6, 49, 134, 4, 2, 49, 134, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(670, '{\"en\": \"Temporary Market Name 134-5\"}', '{\"en\": null}', NULL, NULL, 6, 49, 134, 5, 2, 49, 134, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(671, '{\"en\": \"Temporary Market Name 135-1\"}', '{\"en\": null}', NULL, NULL, 6, 50, 135, 1, 2, 50, 135, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(672, '{\"en\": \"Temporary Market Name 135-2\"}', '{\"en\": null}', NULL, NULL, 6, 50, 135, 2, 2, 50, 135, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(673, '{\"en\": \"Temporary Market Name 135-3\"}', '{\"en\": null}', NULL, NULL, 6, 50, 135, 3, 2, 50, 135, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(674, '{\"en\": \"Temporary Market Name 135-4\"}', '{\"en\": null}', NULL, NULL, 6, 50, 135, 4, 2, 50, 135, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(675, '{\"en\": \"Temporary Market Name 135-5\"}', '{\"en\": null}', NULL, NULL, 6, 50, 135, 5, 2, 50, 135, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(676, '{\"en\": \"Temporary Market Name 136-1\"}', '{\"en\": null}', NULL, NULL, 6, 50, 136, 1, 2, 50, 136, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(677, '{\"en\": \"Temporary Market Name 136-2\"}', '{\"en\": null}', NULL, NULL, 6, 50, 136, 2, 2, 50, 136, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(678, '{\"en\": \"Temporary Market Name 136-3\"}', '{\"en\": null}', NULL, NULL, 6, 50, 136, 3, 2, 50, 136, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(679, '{\"en\": \"Temporary Market Name 136-4\"}', '{\"en\": null}', NULL, NULL, 6, 50, 136, 4, 2, 50, 136, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(680, '{\"en\": \"Temporary Market Name 136-5\"}', '{\"en\": null}', NULL, NULL, 6, 50, 136, 5, 2, 50, 136, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(681, '{\"en\": \"Temporary Market Name 137-1\"}', '{\"en\": null}', NULL, NULL, 6, 50, 137, 1, 2, 50, 137, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(682, '{\"en\": \"Temporary Market Name 137-2\"}', '{\"en\": null}', NULL, NULL, 6, 50, 137, 2, 2, 50, 137, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(683, '{\"en\": \"Temporary Market Name 137-3\"}', '{\"en\": null}', NULL, NULL, 6, 50, 137, 3, 2, 50, 137, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(684, '{\"en\": \"Temporary Market Name 137-4\"}', '{\"en\": null}', NULL, NULL, 6, 50, 137, 4, 2, 50, 137, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(685, '{\"en\": \"Temporary Market Name 137-5\"}', '{\"en\": null}', NULL, NULL, 6, 50, 137, 5, 2, 50, 137, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(686, '{\"en\": \"Temporary Market Name 138-1\"}', '{\"en\": null}', NULL, NULL, 6, 50, 138, 1, 2, 50, 138, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(687, '{\"en\": \"Temporary Market Name 138-2\"}', '{\"en\": null}', NULL, NULL, 6, 50, 138, 2, 2, 50, 138, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(688, '{\"en\": \"Temporary Market Name 138-3\"}', '{\"en\": null}', NULL, NULL, 6, 50, 138, 3, 2, 50, 138, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(689, '{\"en\": \"Temporary Market Name 138-4\"}', '{\"en\": null}', NULL, NULL, 6, 50, 138, 4, 2, 50, 138, 1, 1, 1, '2021-02-21 10:09:28', '2021-02-21 10:09:28'),
(690, '{\"en\": \"Temporary Market Name 138-5\"}', '{\"en\": null}', NULL, NULL, 6, 50, 138, 5, 2, 50, 138, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(691, '{\"en\": \"Temporary Market Name 139-1\"}', '{\"en\": null}', NULL, NULL, 6, 50, 139, 1, 2, 50, 139, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(692, '{\"en\": \"Temporary Market Name 139-2\"}', '{\"en\": null}', NULL, NULL, 6, 50, 139, 2, 2, 50, 139, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(693, '{\"en\": \"Temporary Market Name 139-3\"}', '{\"en\": null}', NULL, NULL, 6, 50, 139, 3, 2, 50, 139, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(694, '{\"en\": \"Temporary Market Name 139-4\"}', '{\"en\": null}', NULL, NULL, 6, 50, 139, 4, 2, 50, 139, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(695, '{\"en\": \"Temporary Market Name 139-5\"}', '{\"en\": null}', NULL, NULL, 6, 50, 139, 5, 2, 50, 139, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(696, '{\"en\": \"Temporary Market Name 140-1\"}', '{\"en\": null}', NULL, NULL, 6, 50, 140, 1, 2, 50, 140, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(697, '{\"en\": \"Temporary Market Name 140-2\"}', '{\"en\": null}', NULL, NULL, 6, 50, 140, 2, 2, 50, 140, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(698, '{\"en\": \"Temporary Market Name 140-3\"}', '{\"en\": null}', NULL, NULL, 6, 50, 140, 3, 2, 50, 140, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(699, '{\"en\": \"Temporary Market Name 140-4\"}', '{\"en\": null}', NULL, NULL, 6, 50, 140, 4, 2, 50, 140, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(700, '{\"en\": \"Temporary Market Name 140-5\"}', '{\"en\": null}', NULL, NULL, 6, 50, 140, 5, 2, 50, 140, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(701, '{\"en\": \"Temporary Market Name 141-1\"}', '{\"en\": null}', NULL, NULL, 6, 50, 141, 1, 2, 50, 141, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(702, '{\"en\": \"Temporary Market Name 141-2\"}', '{\"en\": null}', NULL, NULL, 6, 50, 141, 2, 2, 50, 141, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(703, '{\"en\": \"Temporary Market Name 141-3\"}', '{\"en\": null}', NULL, NULL, 6, 50, 141, 3, 2, 50, 141, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(704, '{\"en\": \"Temporary Market Name 141-4\"}', '{\"en\": null}', NULL, NULL, 6, 50, 141, 4, 2, 50, 141, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(705, '{\"en\": \"Temporary Market Name 141-5\"}', '{\"en\": null}', NULL, NULL, 6, 50, 141, 5, 2, 50, 141, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(706, '{\"en\": \"Temporary Market Name 142-1\"}', '{\"en\": null}', NULL, NULL, 6, 50, 142, 1, 2, 50, 142, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(707, '{\"en\": \"Temporary Market Name 142-2\"}', '{\"en\": null}', NULL, NULL, 6, 50, 142, 2, 2, 50, 142, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(708, '{\"en\": \"Temporary Market Name 142-3\"}', '{\"en\": null}', NULL, NULL, 6, 50, 142, 3, 2, 50, 142, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(709, '{\"en\": \"Temporary Market Name 142-4\"}', '{\"en\": null}', NULL, NULL, 6, 50, 142, 4, 2, 50, 142, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(710, '{\"en\": \"Temporary Market Name 142-5\"}', '{\"en\": null}', NULL, NULL, 6, 50, 142, 5, 2, 50, 142, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(711, '{\"en\": \"Temporary Market Name 143-1\"}', '{\"en\": null}', NULL, NULL, 6, 50, 143, 1, 2, 50, 143, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(712, '{\"en\": \"Temporary Market Name 143-2\"}', '{\"en\": null}', NULL, NULL, 6, 50, 143, 2, 2, 50, 143, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(713, '{\"en\": \"Temporary Market Name 143-3\"}', '{\"en\": null}', NULL, NULL, 6, 50, 143, 3, 2, 50, 143, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(714, '{\"en\": \"Temporary Market Name 143-4\"}', '{\"en\": null}', NULL, NULL, 6, 50, 143, 4, 2, 50, 143, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(715, '{\"en\": \"Temporary Market Name 143-5\"}', '{\"en\": null}', NULL, NULL, 6, 50, 143, 5, 2, 50, 143, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(716, '{\"en\": \"Temporary Market Name 144-1\"}', '{\"en\": null}', NULL, NULL, 6, 50, 144, 1, 2, 50, 144, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(717, '{\"en\": \"Temporary Market Name 144-2\"}', '{\"en\": null}', NULL, NULL, 6, 50, 144, 2, 2, 50, 144, 1, 1, 1, '2021-02-21 10:09:29', '2021-02-21 10:09:29'),
(718, '{\"en\": \"Temporary Market Name 144-3\"}', '{\"en\": null}', NULL, NULL, 6, 50, 144, 3, 2, 50, 144, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(719, '{\"en\": \"Temporary Market Name 144-4\"}', '{\"en\": null}', NULL, NULL, 6, 50, 144, 4, 2, 50, 144, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(720, '{\"en\": \"Temporary Market Name 144-5\"}', '{\"en\": null}', NULL, NULL, 6, 50, 144, 5, 2, 50, 144, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(721, '{\"en\": \"Temporary Market Name 145-1\"}', '{\"en\": null}', NULL, NULL, 1, 2, 145, 1, 3, 2, 145, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(722, '{\"en\": \"Temporary Market Name 145-2\"}', '{\"en\": null}', NULL, NULL, 1, 2, 145, 2, 3, 2, 145, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(723, '{\"en\": \"Temporary Market Name 145-3\"}', '{\"en\": null}', NULL, NULL, 1, 2, 145, 3, 3, 2, 145, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(724, '{\"en\": \"Temporary Market Name 145-4\"}', '{\"en\": null}', NULL, NULL, 1, 2, 145, 4, 3, 2, 145, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(725, '{\"en\": \"Temporary Market Name 145-5\"}', '{\"en\": null}', NULL, NULL, 1, 2, 145, 5, 3, 2, 145, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(726, '{\"en\": \"Temporary Market Name 146-1\"}', '{\"en\": null}', NULL, NULL, 1, 2, 146, 1, 3, 2, 146, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(727, '{\"en\": \"Temporary Market Name 146-2\"}', '{\"en\": null}', NULL, NULL, 1, 2, 146, 2, 3, 2, 146, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(728, '{\"en\": \"Temporary Market Name 146-3\"}', '{\"en\": null}', NULL, NULL, 1, 2, 146, 3, 3, 2, 146, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(729, '{\"en\": \"Temporary Market Name 146-4\"}', '{\"en\": null}', NULL, NULL, 1, 2, 146, 4, 3, 2, 146, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(730, '{\"en\": \"Temporary Market Name 146-5\"}', '{\"en\": null}', NULL, NULL, 1, 2, 146, 5, 3, 2, 146, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(731, '{\"en\": \"Temporary Market Name 147-1\"}', '{\"en\": null}', NULL, NULL, 1, 2, 147, 1, 3, 2, 147, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(732, '{\"en\": \"Temporary Market Name 147-2\"}', '{\"en\": null}', NULL, NULL, 1, 2, 147, 2, 3, 2, 147, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(733, '{\"en\": \"Temporary Market Name 147-3\"}', '{\"en\": null}', NULL, NULL, 1, 2, 147, 3, 3, 2, 147, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(734, '{\"en\": \"Temporary Market Name 147-4\"}', '{\"en\": null}', NULL, NULL, 1, 2, 147, 4, 3, 2, 147, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(735, '{\"en\": \"Temporary Market Name 147-5\"}', '{\"en\": null}', NULL, NULL, 1, 2, 147, 5, 3, 2, 147, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(736, '{\"en\": \"Temporary Market Name 148-1\"}', '{\"en\": null}', NULL, NULL, 1, 2, 148, 1, 3, 2, 148, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(737, '{\"en\": \"Temporary Market Name 148-2\"}', '{\"en\": null}', NULL, NULL, 1, 2, 148, 2, 3, 2, 148, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(738, '{\"en\": \"Temporary Market Name 148-3\"}', '{\"en\": null}', NULL, NULL, 1, 2, 148, 3, 3, 2, 148, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(739, '{\"en\": \"Temporary Market Name 148-4\"}', '{\"en\": null}', NULL, NULL, 1, 2, 148, 4, 3, 2, 148, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(740, '{\"en\": \"Temporary Market Name 148-5\"}', '{\"en\": null}', NULL, NULL, 1, 2, 148, 5, 3, 2, 148, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(741, '{\"en\": \"Temporary Market Name 149-1\"}', '{\"en\": null}', NULL, NULL, 1, 2, 149, 1, 3, 2, 149, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(742, '{\"en\": \"Temporary Market Name 149-2\"}', '{\"en\": null}', NULL, NULL, 1, 2, 149, 2, 3, 2, 149, 1, 1, 1, '2021-02-21 10:09:30', '2021-02-21 10:09:30'),
(743, '{\"en\": \"Temporary Market Name 149-3\"}', '{\"en\": null}', NULL, NULL, 1, 2, 149, 3, 3, 2, 149, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(744, '{\"en\": \"Temporary Market Name 149-4\"}', '{\"en\": null}', NULL, NULL, 1, 2, 149, 4, 3, 2, 149, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(745, '{\"en\": \"Temporary Market Name 149-5\"}', '{\"en\": null}', NULL, NULL, 1, 2, 149, 5, 3, 2, 149, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(746, '{\"en\": \"Temporary Market Name 150-1\"}', '{\"en\": null}', NULL, NULL, 1, 2, 150, 1, 3, 2, 150, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(747, '{\"en\": \"Temporary Market Name 150-2\"}', '{\"en\": null}', NULL, NULL, 1, 2, 150, 2, 3, 2, 150, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(748, '{\"en\": \"Temporary Market Name 150-3\"}', '{\"en\": null}', NULL, NULL, 1, 2, 150, 3, 3, 2, 150, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(749, '{\"en\": \"Temporary Market Name 150-4\"}', '{\"en\": null}', NULL, NULL, 1, 2, 150, 4, 3, 2, 150, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(750, '{\"en\": \"Temporary Market Name 150-5\"}', '{\"en\": null}', NULL, NULL, 1, 2, 150, 5, 3, 2, 150, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(751, '{\"en\": \"Temporary Market Name 151-1\"}', '{\"en\": null}', NULL, NULL, 1, 2, 151, 1, 3, 2, 151, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(752, '{\"en\": \"Temporary Market Name 151-2\"}', '{\"en\": null}', NULL, NULL, 1, 2, 151, 2, 3, 2, 151, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(753, '{\"en\": \"Temporary Market Name 151-3\"}', '{\"en\": null}', NULL, NULL, 1, 2, 151, 3, 3, 2, 151, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(754, '{\"en\": \"Temporary Market Name 151-4\"}', '{\"en\": null}', NULL, NULL, 1, 2, 151, 4, 3, 2, 151, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(755, '{\"en\": \"Temporary Market Name 151-5\"}', '{\"en\": null}', NULL, NULL, 1, 2, 151, 5, 3, 2, 151, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(756, '{\"en\": \"Temporary Market Name 152-1\"}', '{\"en\": null}', NULL, NULL, 1, 2, 152, 1, 3, 2, 152, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(757, '{\"en\": \"Temporary Market Name 152-2\"}', '{\"en\": null}', NULL, NULL, 1, 2, 152, 2, 3, 2, 152, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(758, '{\"en\": \"Temporary Market Name 152-3\"}', '{\"en\": null}', NULL, NULL, 1, 2, 152, 3, 3, 2, 152, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(759, '{\"en\": \"Temporary Market Name 152-4\"}', '{\"en\": null}', NULL, NULL, 1, 2, 152, 4, 3, 2, 152, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(760, '{\"en\": \"Temporary Market Name 152-5\"}', '{\"en\": null}', NULL, NULL, 1, 2, 152, 5, 3, 2, 152, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(761, '{\"en\": \"Temporary Market Name 153-1\"}', '{\"en\": null}', NULL, NULL, 1, 2, 153, 1, 3, 2, 153, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(762, '{\"en\": \"Temporary Market Name 153-2\"}', '{\"en\": null}', NULL, NULL, 1, 2, 153, 2, 3, 2, 153, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(763, '{\"en\": \"Temporary Market Name 153-3\"}', '{\"en\": null}', NULL, NULL, 1, 2, 153, 3, 3, 2, 153, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(764, '{\"en\": \"Temporary Market Name 153-4\"}', '{\"en\": null}', NULL, NULL, 1, 2, 153, 4, 3, 2, 153, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(765, '{\"en\": \"Temporary Market Name 153-5\"}', '{\"en\": null}', NULL, NULL, 1, 2, 153, 5, 3, 2, 153, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(766, '{\"en\": \"Temporary Market Name 154-1\"}', '{\"en\": null}', NULL, NULL, 1, 3, 154, 1, 3, 3, 154, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(767, '{\"en\": \"Temporary Market Name 154-2\"}', '{\"en\": null}', NULL, NULL, 1, 3, 154, 2, 3, 3, 154, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(768, '{\"en\": \"Temporary Market Name 154-3\"}', '{\"en\": null}', NULL, NULL, 1, 3, 154, 3, 3, 3, 154, 1, 1, 1, '2021-02-21 10:09:31', '2021-02-21 10:09:31'),
(769, '{\"en\": \"Temporary Market Name 154-4\"}', '{\"en\": null}', NULL, NULL, 1, 3, 154, 4, 3, 3, 154, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(770, '{\"en\": \"Temporary Market Name 154-5\"}', '{\"en\": null}', NULL, NULL, 1, 3, 154, 5, 3, 3, 154, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(771, '{\"en\": \"Temporary Market Name 155-1\"}', '{\"en\": null}', NULL, NULL, 1, 3, 155, 1, 3, 3, 155, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(772, '{\"en\": \"Temporary Market Name 155-2\"}', '{\"en\": null}', NULL, NULL, 1, 3, 155, 2, 3, 3, 155, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(773, '{\"en\": \"Temporary Market Name 155-3\"}', '{\"en\": null}', NULL, NULL, 1, 3, 155, 3, 3, 3, 155, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(774, '{\"en\": \"Temporary Market Name 155-4\"}', '{\"en\": null}', NULL, NULL, 1, 3, 155, 4, 3, 3, 155, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(775, '{\"en\": \"Temporary Market Name 155-5\"}', '{\"en\": null}', NULL, NULL, 1, 3, 155, 5, 3, 3, 155, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(776, '{\"en\": \"Temporary Market Name 156-1\"}', '{\"en\": null}', NULL, NULL, 1, 3, 156, 1, 3, 3, 156, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(777, '{\"en\": \"Temporary Market Name 156-2\"}', '{\"en\": null}', NULL, NULL, 1, 3, 156, 2, 3, 3, 156, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(778, '{\"en\": \"Temporary Market Name 156-3\"}', '{\"en\": null}', NULL, NULL, 1, 3, 156, 3, 3, 3, 156, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(779, '{\"en\": \"Temporary Market Name 156-4\"}', '{\"en\": null}', NULL, NULL, 1, 3, 156, 4, 3, 3, 156, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(780, '{\"en\": \"Temporary Market Name 156-5\"}', '{\"en\": null}', NULL, NULL, 1, 3, 156, 5, 3, 3, 156, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(781, '{\"en\": \"Temporary Market Name 157-1\"}', '{\"en\": null}', NULL, NULL, 1, 3, 157, 1, 3, 3, 157, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(782, '{\"en\": \"Temporary Market Name 157-2\"}', '{\"en\": null}', NULL, NULL, 1, 3, 157, 2, 3, 3, 157, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(783, '{\"en\": \"Temporary Market Name 157-3\"}', '{\"en\": null}', NULL, NULL, 1, 3, 157, 3, 3, 3, 157, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(784, '{\"en\": \"Temporary Market Name 157-4\"}', '{\"en\": null}', NULL, NULL, 1, 3, 157, 4, 3, 3, 157, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(785, '{\"en\": \"Temporary Market Name 157-5\"}', '{\"en\": null}', NULL, NULL, 1, 3, 157, 5, 3, 3, 157, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(786, '{\"en\": \"Temporary Market Name 158-1\"}', '{\"en\": null}', NULL, NULL, 1, 3, 158, 1, 3, 3, 158, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(787, '{\"en\": \"Temporary Market Name 158-2\"}', '{\"en\": null}', NULL, NULL, 1, 3, 158, 2, 3, 3, 158, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(788, '{\"en\": \"Temporary Market Name 158-3\"}', '{\"en\": null}', NULL, NULL, 1, 3, 158, 3, 3, 3, 158, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(789, '{\"en\": \"Temporary Market Name 158-4\"}', '{\"en\": null}', NULL, NULL, 1, 3, 158, 4, 3, 3, 158, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(790, '{\"en\": \"Temporary Market Name 158-5\"}', '{\"en\": null}', NULL, NULL, 1, 3, 158, 5, 3, 3, 158, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(791, '{\"en\": \"Temporary Market Name 159-1\"}', '{\"en\": null}', NULL, NULL, 1, 3, 159, 1, 3, 3, 159, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(792, '{\"en\": \"Temporary Market Name 159-2\"}', '{\"en\": null}', NULL, NULL, 1, 3, 159, 2, 3, 3, 159, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(793, '{\"en\": \"Temporary Market Name 159-3\"}', '{\"en\": null}', NULL, NULL, 1, 3, 159, 3, 3, 3, 159, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(794, '{\"en\": \"Temporary Market Name 159-4\"}', '{\"en\": null}', NULL, NULL, 1, 3, 159, 4, 3, 3, 159, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(795, '{\"en\": \"Temporary Market Name 159-5\"}', '{\"en\": null}', NULL, NULL, 1, 3, 159, 5, 3, 3, 159, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(796, '{\"en\": \"Temporary Market Name 160-1\"}', '{\"en\": null}', NULL, NULL, 1, 4, 160, 1, 3, 4, 160, 1, 1, 1, '2021-02-21 10:09:32', '2021-02-21 10:09:32'),
(797, '{\"en\": \"Temporary Market Name 160-2\"}', '{\"en\": null}', NULL, NULL, 1, 4, 160, 2, 3, 4, 160, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(798, '{\"en\": \"Temporary Market Name 160-3\"}', '{\"en\": null}', NULL, NULL, 1, 4, 160, 3, 3, 4, 160, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(799, '{\"en\": \"Temporary Market Name 160-4\"}', '{\"en\": null}', NULL, NULL, 1, 4, 160, 4, 3, 4, 160, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(800, '{\"en\": \"Temporary Market Name 160-5\"}', '{\"en\": null}', NULL, NULL, 1, 4, 160, 5, 3, 4, 160, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(801, '{\"en\": \"Temporary Market Name 161-1\"}', '{\"en\": null}', NULL, NULL, 1, 4, 161, 1, 3, 4, 161, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(802, '{\"en\": \"Temporary Market Name 161-2\"}', '{\"en\": null}', NULL, NULL, 1, 4, 161, 2, 3, 4, 161, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(803, '{\"en\": \"Temporary Market Name 161-3\"}', '{\"en\": null}', NULL, NULL, 1, 4, 161, 3, 3, 4, 161, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(804, '{\"en\": \"Temporary Market Name 161-4\"}', '{\"en\": null}', NULL, NULL, 1, 4, 161, 4, 3, 4, 161, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(805, '{\"en\": \"Temporary Market Name 161-5\"}', '{\"en\": null}', NULL, NULL, 1, 4, 161, 5, 3, 4, 161, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(806, '{\"en\": \"Temporary Market Name 162-1\"}', '{\"en\": null}', NULL, NULL, 1, 4, 162, 1, 3, 4, 162, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(807, '{\"en\": \"Temporary Market Name 162-2\"}', '{\"en\": null}', NULL, NULL, 1, 4, 162, 2, 3, 4, 162, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(808, '{\"en\": \"Temporary Market Name 162-3\"}', '{\"en\": null}', NULL, NULL, 1, 4, 162, 3, 3, 4, 162, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(809, '{\"en\": \"Temporary Market Name 162-4\"}', '{\"en\": null}', NULL, NULL, 1, 4, 162, 4, 3, 4, 162, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(810, '{\"en\": \"Temporary Market Name 162-5\"}', '{\"en\": null}', NULL, NULL, 1, 4, 162, 5, 3, 4, 162, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(811, '{\"en\": \"Temporary Market Name 163-1\"}', '{\"en\": null}', NULL, NULL, 1, 4, 163, 1, 3, 4, 163, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(812, '{\"en\": \"Temporary Market Name 163-2\"}', '{\"en\": null}', NULL, NULL, 1, 4, 163, 2, 3, 4, 163, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(813, '{\"en\": \"Temporary Market Name 163-3\"}', '{\"en\": null}', NULL, NULL, 1, 4, 163, 3, 3, 4, 163, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(814, '{\"en\": \"Temporary Market Name 163-4\"}', '{\"en\": null}', NULL, NULL, 1, 4, 163, 4, 3, 4, 163, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(815, '{\"en\": \"Temporary Market Name 163-5\"}', '{\"en\": null}', NULL, NULL, 1, 4, 163, 5, 3, 4, 163, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(816, '{\"en\": \"Temporary Market Name 164-1\"}', '{\"en\": null}', NULL, NULL, 1, 4, 164, 1, 3, 4, 164, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(817, '{\"en\": \"Temporary Market Name 164-2\"}', '{\"en\": null}', NULL, NULL, 1, 4, 164, 2, 3, 4, 164, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(818, '{\"en\": \"Temporary Market Name 164-3\"}', '{\"en\": null}', NULL, NULL, 1, 4, 164, 3, 3, 4, 164, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(819, '{\"en\": \"Temporary Market Name 164-4\"}', '{\"en\": null}', NULL, NULL, 1, 4, 164, 4, 3, 4, 164, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(820, '{\"en\": \"Temporary Market Name 164-5\"}', '{\"en\": null}', NULL, NULL, 1, 4, 164, 5, 3, 4, 164, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(821, '{\"en\": \"Temporary Market Name 165-1\"}', '{\"en\": null}', NULL, NULL, 20, 5, 165, 1, 8, 5, 165, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(822, '{\"en\": \"Temporary Market Name 165-2\"}', '{\"en\": null}', NULL, NULL, 20, 5, 165, 2, 8, 5, 165, 1, 1, 1, '2021-02-21 10:09:33', '2021-02-21 10:09:33'),
(823, '{\"en\": \"Temporary Market Name 165-3\"}', '{\"en\": null}', NULL, NULL, 20, 5, 165, 3, 8, 5, 165, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(824, '{\"en\": \"Temporary Market Name 165-4\"}', '{\"en\": null}', NULL, NULL, 20, 5, 165, 4, 8, 5, 165, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(825, '{\"en\": \"Temporary Market Name 165-5\"}', '{\"en\": null}', NULL, NULL, 20, 5, 165, 5, 8, 5, 165, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(826, '{\"en\": \"Temporary Market Name 166-1\"}', '{\"en\": null}', NULL, NULL, 20, 5, 166, 1, 8, 5, 166, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(827, '{\"en\": \"Temporary Market Name 166-2\"}', '{\"en\": null}', NULL, NULL, 20, 5, 166, 2, 8, 5, 166, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(828, '{\"en\": \"Temporary Market Name 166-3\"}', '{\"en\": null}', NULL, NULL, 20, 5, 166, 3, 8, 5, 166, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(829, '{\"en\": \"Temporary Market Name 166-4\"}', '{\"en\": null}', NULL, NULL, 20, 5, 166, 4, 8, 5, 166, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(830, '{\"en\": \"Temporary Market Name 166-5\"}', '{\"en\": null}', NULL, NULL, 20, 5, 166, 5, 8, 5, 166, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(831, '{\"en\": \"Temporary Market Name 167-1\"}', '{\"en\": null}', NULL, NULL, 20, 5, 167, 1, 8, 5, 167, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(832, '{\"en\": \"Temporary Market Name 167-2\"}', '{\"en\": null}', NULL, NULL, 20, 5, 167, 2, 8, 5, 167, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(833, '{\"en\": \"Temporary Market Name 167-3\"}', '{\"en\": null}', NULL, NULL, 20, 5, 167, 3, 8, 5, 167, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(834, '{\"en\": \"Temporary Market Name 167-4\"}', '{\"en\": null}', NULL, NULL, 20, 5, 167, 4, 8, 5, 167, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(835, '{\"en\": \"Temporary Market Name 167-5\"}', '{\"en\": null}', NULL, NULL, 20, 5, 167, 5, 8, 5, 167, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(836, '{\"en\": \"Temporary Market Name 168-1\"}', '{\"en\": null}', NULL, NULL, 20, 5, 168, 1, 8, 5, 168, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(837, '{\"en\": \"Temporary Market Name 168-2\"}', '{\"en\": null}', NULL, NULL, 20, 5, 168, 2, 8, 5, 168, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(838, '{\"en\": \"Temporary Market Name 168-3\"}', '{\"en\": null}', NULL, NULL, 20, 5, 168, 3, 8, 5, 168, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(839, '{\"en\": \"Temporary Market Name 168-4\"}', '{\"en\": null}', NULL, NULL, 20, 5, 168, 4, 8, 5, 168, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(840, '{\"en\": \"Temporary Market Name 168-5\"}', '{\"en\": null}', NULL, NULL, 20, 5, 168, 5, 8, 5, 168, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(841, '{\"en\": \"Temporary Market Name 169-1\"}', '{\"en\": null}', NULL, NULL, 20, 5, 169, 1, 8, 5, 169, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(842, '{\"en\": \"Temporary Market Name 169-2\"}', '{\"en\": null}', NULL, NULL, 20, 5, 169, 2, 8, 5, 169, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(843, '{\"en\": \"Temporary Market Name 169-3\"}', '{\"en\": null}', NULL, NULL, 20, 5, 169, 3, 8, 5, 169, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(844, '{\"en\": \"Temporary Market Name 169-4\"}', '{\"en\": null}', NULL, NULL, 20, 5, 169, 4, 8, 5, 169, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(845, '{\"en\": \"Temporary Market Name 169-5\"}', '{\"en\": null}', NULL, NULL, 20, 5, 169, 5, 8, 5, 169, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(846, '{\"en\": \"Temporary Market Name 170-1\"}', '{\"en\": null}', NULL, NULL, 20, 5, 170, 1, 8, 5, 170, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(847, '{\"en\": \"Temporary Market Name 170-2\"}', '{\"en\": null}', NULL, NULL, 20, 5, 170, 2, 8, 5, 170, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(848, '{\"en\": \"Temporary Market Name 170-3\"}', '{\"en\": null}', NULL, NULL, 20, 5, 170, 3, 8, 5, 170, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(849, '{\"en\": \"Temporary Market Name 170-4\"}', '{\"en\": null}', NULL, NULL, 20, 5, 170, 4, 8, 5, 170, 1, 1, 1, '2021-02-21 10:09:34', '2021-02-21 10:09:34'),
(850, '{\"en\": \"Temporary Market Name 170-5\"}', '{\"en\": null}', NULL, NULL, 20, 5, 170, 5, 8, 5, 170, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(851, '{\"en\": \"Temporary Market Name 171-1\"}', '{\"en\": null}', NULL, NULL, 20, 5, 171, 1, 8, 5, 171, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(852, '{\"en\": \"Temporary Market Name 171-2\"}', '{\"en\": null}', NULL, NULL, 20, 5, 171, 2, 8, 5, 171, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(853, '{\"en\": \"Temporary Market Name 171-3\"}', '{\"en\": null}', NULL, NULL, 20, 5, 171, 3, 8, 5, 171, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(854, '{\"en\": \"Temporary Market Name 171-4\"}', '{\"en\": null}', NULL, NULL, 20, 5, 171, 4, 8, 5, 171, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(855, '{\"en\": \"Temporary Market Name 171-5\"}', '{\"en\": null}', NULL, NULL, 20, 5, 171, 5, 8, 5, 171, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(856, '{\"en\": \"Temporary Market Name 172-1\"}', '{\"en\": null}', NULL, NULL, 20, 5, 172, 1, 8, 5, 172, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(857, '{\"en\": \"Temporary Market Name 172-2\"}', '{\"en\": null}', NULL, NULL, 20, 5, 172, 2, 8, 5, 172, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(858, '{\"en\": \"Temporary Market Name 172-3\"}', '{\"en\": null}', NULL, NULL, 20, 5, 172, 3, 8, 5, 172, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(859, '{\"en\": \"Temporary Market Name 172-4\"}', '{\"en\": null}', NULL, NULL, 20, 5, 172, 4, 8, 5, 172, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(860, '{\"en\": \"Temporary Market Name 172-5\"}', '{\"en\": null}', NULL, NULL, 20, 5, 172, 5, 8, 5, 172, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(861, '{\"en\": \"Temporary Market Name 173-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 173, 1, 3, 6, 173, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(862, '{\"en\": \"Temporary Market Name 173-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 173, 2, 3, 6, 173, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(863, '{\"en\": \"Temporary Market Name 173-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 173, 3, 3, 6, 173, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(864, '{\"en\": \"Temporary Market Name 173-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 173, 4, 3, 6, 173, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(865, '{\"en\": \"Temporary Market Name 173-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 173, 5, 3, 6, 173, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(866, '{\"en\": \"Temporary Market Name 174-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 174, 1, 3, 6, 174, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(867, '{\"en\": \"Temporary Market Name 174-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 174, 2, 3, 6, 174, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(868, '{\"en\": \"Temporary Market Name 174-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 174, 3, 3, 6, 174, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(869, '{\"en\": \"Temporary Market Name 174-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 174, 4, 3, 6, 174, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(870, '{\"en\": \"Temporary Market Name 174-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 174, 5, 3, 6, 174, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(871, '{\"en\": \"Temporary Market Name 175-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 175, 1, 3, 6, 175, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(872, '{\"en\": \"Temporary Market Name 175-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 175, 2, 3, 6, 175, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(873, '{\"en\": \"Temporary Market Name 175-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 175, 3, 3, 6, 175, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(874, '{\"en\": \"Temporary Market Name 175-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 175, 4, 3, 6, 175, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(875, '{\"en\": \"Temporary Market Name 175-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 175, 5, 3, 6, 175, 1, 1, 1, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(876, '{\"en\": \"Temporary Market Name 176-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 176, 1, 3, 6, 176, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(877, '{\"en\": \"Temporary Market Name 176-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 176, 2, 3, 6, 176, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(878, '{\"en\": \"Temporary Market Name 176-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 176, 3, 3, 6, 176, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(879, '{\"en\": \"Temporary Market Name 176-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 176, 4, 3, 6, 176, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(880, '{\"en\": \"Temporary Market Name 176-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 176, 5, 3, 6, 176, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(881, '{\"en\": \"Temporary Market Name 177-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 177, 1, 3, 6, 177, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(882, '{\"en\": \"Temporary Market Name 177-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 177, 2, 3, 6, 177, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(883, '{\"en\": \"Temporary Market Name 177-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 177, 3, 3, 6, 177, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(884, '{\"en\": \"Temporary Market Name 177-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 177, 4, 3, 6, 177, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(885, '{\"en\": \"Temporary Market Name 177-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 177, 5, 3, 6, 177, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(886, '{\"en\": \"Temporary Market Name 178-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 178, 1, 3, 6, 178, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(887, '{\"en\": \"Temporary Market Name 178-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 178, 2, 3, 6, 178, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(888, '{\"en\": \"Temporary Market Name 178-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 178, 3, 3, 6, 178, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(889, '{\"en\": \"Temporary Market Name 178-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 178, 4, 3, 6, 178, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(890, '{\"en\": \"Temporary Market Name 178-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 178, 5, 3, 6, 178, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(891, '{\"en\": \"Temporary Market Name 179-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 179, 1, 3, 6, 179, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(892, '{\"en\": \"Temporary Market Name 179-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 179, 2, 3, 6, 179, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(893, '{\"en\": \"Temporary Market Name 179-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 179, 3, 3, 6, 179, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(894, '{\"en\": \"Temporary Market Name 179-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 179, 4, 3, 6, 179, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(895, '{\"en\": \"Temporary Market Name 179-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 179, 5, 3, 6, 179, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(896, '{\"en\": \"Temporary Market Name 180-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 180, 1, 3, 6, 180, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(897, '{\"en\": \"Temporary Market Name 180-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 180, 2, 3, 6, 180, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(898, '{\"en\": \"Temporary Market Name 180-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 180, 3, 3, 6, 180, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(899, '{\"en\": \"Temporary Market Name 180-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 180, 4, 3, 6, 180, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(900, '{\"en\": \"Temporary Market Name 180-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 180, 5, 3, 6, 180, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(901, '{\"en\": \"Temporary Market Name 181-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 181, 1, 3, 6, 181, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(902, '{\"en\": \"Temporary Market Name 181-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 181, 2, 3, 6, 181, 1, 1, 1, '2021-02-21 10:09:36', '2021-02-21 10:09:36'),
(903, '{\"en\": \"Temporary Market Name 181-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 181, 3, 3, 6, 181, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(904, '{\"en\": \"Temporary Market Name 181-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 181, 4, 3, 6, 181, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(905, '{\"en\": \"Temporary Market Name 181-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 181, 5, 3, 6, 181, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(906, '{\"en\": \"Temporary Market Name 182-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 182, 1, 3, 6, 182, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(907, '{\"en\": \"Temporary Market Name 182-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 182, 2, 3, 6, 182, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(908, '{\"en\": \"Temporary Market Name 182-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 182, 3, 3, 6, 182, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(909, '{\"en\": \"Temporary Market Name 182-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 182, 4, 3, 6, 182, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(910, '{\"en\": \"Temporary Market Name 182-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 182, 5, 3, 6, 182, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(911, '{\"en\": \"Temporary Market Name 183-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 183, 1, 3, 6, 183, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(912, '{\"en\": \"Temporary Market Name 183-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 183, 2, 3, 6, 183, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(913, '{\"en\": \"Temporary Market Name 183-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 183, 3, 3, 6, 183, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(914, '{\"en\": \"Temporary Market Name 183-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 183, 4, 3, 6, 183, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(915, '{\"en\": \"Temporary Market Name 183-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 183, 5, 3, 6, 183, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(916, '{\"en\": \"Temporary Market Name 184-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 184, 1, 3, 6, 184, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(917, '{\"en\": \"Temporary Market Name 184-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 184, 2, 3, 6, 184, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(918, '{\"en\": \"Temporary Market Name 184-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 184, 3, 3, 6, 184, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(919, '{\"en\": \"Temporary Market Name 184-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 184, 4, 3, 6, 184, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(920, '{\"en\": \"Temporary Market Name 184-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 184, 5, 3, 6, 184, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(921, '{\"en\": \"Temporary Market Name 185-1\"}', '{\"en\": null}', NULL, NULL, 1, 6, 185, 1, 3, 6, 185, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(922, '{\"en\": \"Temporary Market Name 185-2\"}', '{\"en\": null}', NULL, NULL, 1, 6, 185, 2, 3, 6, 185, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(923, '{\"en\": \"Temporary Market Name 185-3\"}', '{\"en\": null}', NULL, NULL, 1, 6, 185, 3, 3, 6, 185, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(924, '{\"en\": \"Temporary Market Name 185-4\"}', '{\"en\": null}', NULL, NULL, 1, 6, 185, 4, 3, 6, 185, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(925, '{\"en\": \"Temporary Market Name 185-5\"}', '{\"en\": null}', NULL, NULL, 1, 6, 185, 5, 3, 6, 185, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(926, '{\"en\": \"Temporary Market Name 186-1\"}', '{\"en\": null}', NULL, NULL, 1, 7, 186, 1, 3, 7, 186, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(927, '{\"en\": \"Temporary Market Name 186-2\"}', '{\"en\": null}', NULL, NULL, 1, 7, 186, 2, 3, 7, 186, 1, 1, 1, '2021-02-21 10:09:37', '2021-02-21 10:09:37'),
(928, '{\"en\": \"Temporary Market Name 186-3\"}', '{\"en\": null}', NULL, NULL, 1, 7, 186, 3, 3, 7, 186, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(929, '{\"en\": \"Temporary Market Name 186-4\"}', '{\"en\": null}', NULL, NULL, 1, 7, 186, 4, 3, 7, 186, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(930, '{\"en\": \"Temporary Market Name 186-5\"}', '{\"en\": null}', NULL, NULL, 1, 7, 186, 5, 3, 7, 186, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(931, '{\"en\": \"Temporary Market Name 187-1\"}', '{\"en\": null}', NULL, NULL, 1, 7, 187, 1, 3, 7, 187, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(932, '{\"en\": \"Temporary Market Name 187-2\"}', '{\"en\": null}', NULL, NULL, 1, 7, 187, 2, 3, 7, 187, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38');
INSERT INTO `markets` (`id`, `name`, `address`, `lat`, `lng`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(933, '{\"en\": \"Temporary Market Name 187-3\"}', '{\"en\": null}', NULL, NULL, 1, 7, 187, 3, 3, 7, 187, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(934, '{\"en\": \"Temporary Market Name 187-4\"}', '{\"en\": null}', NULL, NULL, 1, 7, 187, 4, 3, 7, 187, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(935, '{\"en\": \"Temporary Market Name 187-5\"}', '{\"en\": null}', NULL, NULL, 1, 7, 187, 5, 3, 7, 187, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(936, '{\"en\": \"Temporary Market Name 188-1\"}', '{\"en\": null}', NULL, NULL, 1, 7, 188, 1, 3, 7, 188, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(937, '{\"en\": \"Temporary Market Name 188-2\"}', '{\"en\": null}', NULL, NULL, 1, 7, 188, 2, 3, 7, 188, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(938, '{\"en\": \"Temporary Market Name 188-3\"}', '{\"en\": null}', NULL, NULL, 1, 7, 188, 3, 3, 7, 188, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(939, '{\"en\": \"Temporary Market Name 188-4\"}', '{\"en\": null}', NULL, NULL, 1, 7, 188, 4, 3, 7, 188, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(940, '{\"en\": \"Temporary Market Name 188-5\"}', '{\"en\": null}', NULL, NULL, 1, 7, 188, 5, 3, 7, 188, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(941, '{\"en\": \"Temporary Market Name 189-1\"}', '{\"en\": null}', NULL, NULL, 1, 7, 189, 1, 3, 7, 189, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(942, '{\"en\": \"Temporary Market Name 189-2\"}', '{\"en\": null}', NULL, NULL, 1, 7, 189, 2, 3, 7, 189, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(943, '{\"en\": \"Temporary Market Name 189-3\"}', '{\"en\": null}', NULL, NULL, 1, 7, 189, 3, 3, 7, 189, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(944, '{\"en\": \"Temporary Market Name 189-4\"}', '{\"en\": null}', NULL, NULL, 1, 7, 189, 4, 3, 7, 189, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(945, '{\"en\": \"Temporary Market Name 189-5\"}', '{\"en\": null}', NULL, NULL, 1, 7, 189, 5, 3, 7, 189, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(946, '{\"en\": \"Temporary Market Name 190-1\"}', '{\"en\": null}', NULL, NULL, 1, 8, 190, 1, 3, 8, 190, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(947, '{\"en\": \"Temporary Market Name 190-2\"}', '{\"en\": null}', NULL, NULL, 1, 8, 190, 2, 3, 8, 190, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(948, '{\"en\": \"Temporary Market Name 190-3\"}', '{\"en\": null}', NULL, NULL, 1, 8, 190, 3, 3, 8, 190, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(949, '{\"en\": \"Temporary Market Name 190-4\"}', '{\"en\": null}', NULL, NULL, 1, 8, 190, 4, 3, 8, 190, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(950, '{\"en\": \"Temporary Market Name 190-5\"}', '{\"en\": null}', NULL, NULL, 1, 8, 190, 5, 3, 8, 190, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(951, '{\"en\": \"Temporary Market Name 191-1\"}', '{\"en\": null}', NULL, NULL, 1, 8, 191, 1, 3, 8, 191, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(952, '{\"en\": \"Temporary Market Name 191-2\"}', '{\"en\": null}', NULL, NULL, 1, 8, 191, 2, 3, 8, 191, 1, 1, 1, '2021-02-21 10:09:38', '2021-02-21 10:09:38'),
(953, '{\"en\": \"Temporary Market Name 191-3\"}', '{\"en\": null}', NULL, NULL, 1, 8, 191, 3, 3, 8, 191, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(954, '{\"en\": \"Temporary Market Name 191-4\"}', '{\"en\": null}', NULL, NULL, 1, 8, 191, 4, 3, 8, 191, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(955, '{\"en\": \"Temporary Market Name 191-5\"}', '{\"en\": null}', NULL, NULL, 1, 8, 191, 5, 3, 8, 191, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(956, '{\"en\": \"Temporary Market Name 192-1\"}', '{\"en\": null}', NULL, NULL, 1, 8, 192, 1, 3, 8, 192, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(957, '{\"en\": \"Temporary Market Name 192-2\"}', '{\"en\": null}', NULL, NULL, 1, 8, 192, 2, 3, 8, 192, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(958, '{\"en\": \"Temporary Market Name 192-3\"}', '{\"en\": null}', NULL, NULL, 1, 8, 192, 3, 3, 8, 192, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(959, '{\"en\": \"Temporary Market Name 192-4\"}', '{\"en\": null}', NULL, NULL, 1, 8, 192, 4, 3, 8, 192, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(960, '{\"en\": \"Temporary Market Name 192-5\"}', '{\"en\": null}', NULL, NULL, 1, 8, 192, 5, 3, 8, 192, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(961, '{\"en\": \"Temporary Market Name 193-1\"}', '{\"en\": null}', NULL, NULL, 1, 8, 193, 1, 3, 8, 193, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(962, '{\"en\": \"Temporary Market Name 193-2\"}', '{\"en\": null}', NULL, NULL, 1, 8, 193, 2, 3, 8, 193, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(963, '{\"en\": \"Temporary Market Name 193-3\"}', '{\"en\": null}', NULL, NULL, 1, 8, 193, 3, 3, 8, 193, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(964, '{\"en\": \"Temporary Market Name 193-4\"}', '{\"en\": null}', NULL, NULL, 1, 8, 193, 4, 3, 8, 193, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(965, '{\"en\": \"Temporary Market Name 193-5\"}', '{\"en\": null}', NULL, NULL, 1, 8, 193, 5, 3, 8, 193, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(966, '{\"en\": \"Temporary Market Name 194-1\"}', '{\"en\": null}', NULL, NULL, 1, 8, 194, 1, 3, 8, 194, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(967, '{\"en\": \"Temporary Market Name 194-2\"}', '{\"en\": null}', NULL, NULL, 1, 8, 194, 2, 3, 8, 194, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(968, '{\"en\": \"Temporary Market Name 194-3\"}', '{\"en\": null}', NULL, NULL, 1, 8, 194, 3, 3, 8, 194, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(969, '{\"en\": \"Temporary Market Name 194-4\"}', '{\"en\": null}', NULL, NULL, 1, 8, 194, 4, 3, 8, 194, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(970, '{\"en\": \"Temporary Market Name 194-5\"}', '{\"en\": null}', NULL, NULL, 1, 8, 194, 5, 3, 8, 194, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(971, '{\"en\": \"Temporary Market Name 195-1\"}', '{\"en\": null}', NULL, NULL, 1, 8, 195, 1, 3, 8, 195, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(972, '{\"en\": \"Temporary Market Name 195-2\"}', '{\"en\": null}', NULL, NULL, 1, 8, 195, 2, 3, 8, 195, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(973, '{\"en\": \"Temporary Market Name 195-3\"}', '{\"en\": null}', NULL, NULL, 1, 8, 195, 3, 3, 8, 195, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(974, '{\"en\": \"Temporary Market Name 195-4\"}', '{\"en\": null}', NULL, NULL, 1, 8, 195, 4, 3, 8, 195, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(975, '{\"en\": \"Temporary Market Name 195-5\"}', '{\"en\": null}', NULL, NULL, 1, 8, 195, 5, 3, 8, 195, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(976, '{\"en\": \"Temporary Market Name 196-1\"}', '{\"en\": null}', NULL, NULL, 1, 8, 196, 1, 3, 8, 196, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(977, '{\"en\": \"Temporary Market Name 196-2\"}', '{\"en\": null}', NULL, NULL, 1, 8, 196, 2, 3, 8, 196, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(978, '{\"en\": \"Temporary Market Name 196-3\"}', '{\"en\": null}', NULL, NULL, 1, 8, 196, 3, 3, 8, 196, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(979, '{\"en\": \"Temporary Market Name 196-4\"}', '{\"en\": null}', NULL, NULL, 1, 8, 196, 4, 3, 8, 196, 1, 1, 1, '2021-02-21 10:09:39', '2021-02-21 10:09:39'),
(980, '{\"en\": \"Temporary Market Name 196-5\"}', '{\"en\": null}', NULL, NULL, 1, 8, 196, 5, 3, 8, 196, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(981, '{\"en\": \"Temporary Market Name 197-1\"}', '{\"en\": null}', NULL, NULL, 1, 9, 197, 1, 3, 9, 197, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(982, '{\"en\": \"Temporary Market Name 197-2\"}', '{\"en\": null}', NULL, NULL, 1, 9, 197, 2, 3, 9, 197, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(983, '{\"en\": \"Temporary Market Name 197-3\"}', '{\"en\": null}', NULL, NULL, 1, 9, 197, 3, 3, 9, 197, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(984, '{\"en\": \"Temporary Market Name 197-4\"}', '{\"en\": null}', NULL, NULL, 1, 9, 197, 4, 3, 9, 197, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(985, '{\"en\": \"Temporary Market Name 197-5\"}', '{\"en\": null}', NULL, NULL, 1, 9, 197, 5, 3, 9, 197, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(986, '{\"en\": \"Temporary Market Name 198-1\"}', '{\"en\": null}', NULL, NULL, 1, 9, 198, 1, 3, 9, 198, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(987, '{\"en\": \"Temporary Market Name 198-2\"}', '{\"en\": null}', NULL, NULL, 1, 9, 198, 2, 3, 9, 198, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(988, '{\"en\": \"Temporary Market Name 198-3\"}', '{\"en\": null}', NULL, NULL, 1, 9, 198, 3, 3, 9, 198, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(989, '{\"en\": \"Temporary Market Name 198-4\"}', '{\"en\": null}', NULL, NULL, 1, 9, 198, 4, 3, 9, 198, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(990, '{\"en\": \"Temporary Market Name 198-5\"}', '{\"en\": null}', NULL, NULL, 1, 9, 198, 5, 3, 9, 198, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(991, '{\"en\": \"Temporary Market Name 199-1\"}', '{\"en\": null}', NULL, NULL, 1, 9, 199, 1, 3, 9, 199, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(992, '{\"en\": \"Temporary Market Name 199-2\"}', '{\"en\": null}', NULL, NULL, 1, 9, 199, 2, 3, 9, 199, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(993, '{\"en\": \"Temporary Market Name 199-3\"}', '{\"en\": null}', NULL, NULL, 1, 9, 199, 3, 3, 9, 199, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(994, '{\"en\": \"Temporary Market Name 199-4\"}', '{\"en\": null}', NULL, NULL, 1, 9, 199, 4, 3, 9, 199, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(995, '{\"en\": \"Temporary Market Name 199-5\"}', '{\"en\": null}', NULL, NULL, 1, 9, 199, 5, 3, 9, 199, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(996, '{\"en\": \"Temporary Market Name 200-1\"}', '{\"en\": null}', NULL, NULL, 1, 9, 200, 1, 3, 9, 200, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(997, '{\"en\": \"Temporary Market Name 200-2\"}', '{\"en\": null}', NULL, NULL, 1, 9, 200, 2, 3, 9, 200, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(998, '{\"en\": \"Temporary Market Name 200-3\"}', '{\"en\": null}', NULL, NULL, 1, 9, 200, 3, 3, 9, 200, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(999, '{\"en\": \"Temporary Market Name 200-4\"}', '{\"en\": null}', NULL, NULL, 1, 9, 200, 4, 3, 9, 200, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(1000, '{\"en\": \"Temporary Market Name 200-5\"}', '{\"en\": null}', NULL, NULL, 1, 9, 200, 5, 3, 9, 200, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(1001, '{\"en\": \"Temporary Market Name 201-1\"}', '{\"en\": null}', NULL, NULL, 1, 9, 201, 1, 3, 9, 201, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(1002, '{\"en\": \"Temporary Market Name 201-2\"}', '{\"en\": null}', NULL, NULL, 1, 9, 201, 2, 3, 9, 201, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(1003, '{\"en\": \"Temporary Market Name 201-3\"}', '{\"en\": null}', NULL, NULL, 1, 9, 201, 3, 3, 9, 201, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(1004, '{\"en\": \"Temporary Market Name 201-4\"}', '{\"en\": null}', NULL, NULL, 1, 9, 201, 4, 3, 9, 201, 1, 1, 1, '2021-02-21 10:09:40', '2021-02-21 10:09:40'),
(1005, '{\"en\": \"Temporary Market Name 201-5\"}', '{\"en\": null}', NULL, NULL, 1, 9, 201, 5, 3, 9, 201, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1006, '{\"en\": \"Temporary Market Name 202-1\"}', '{\"en\": null}', NULL, NULL, 1, 9, 202, 1, 3, 9, 202, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1007, '{\"en\": \"Temporary Market Name 202-2\"}', '{\"en\": null}', NULL, NULL, 1, 9, 202, 2, 3, 9, 202, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1008, '{\"en\": \"Temporary Market Name 202-3\"}', '{\"en\": null}', NULL, NULL, 1, 9, 202, 3, 3, 9, 202, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1009, '{\"en\": \"Temporary Market Name 202-4\"}', '{\"en\": null}', NULL, NULL, 1, 9, 202, 4, 3, 9, 202, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1010, '{\"en\": \"Temporary Market Name 202-5\"}', '{\"en\": null}', NULL, NULL, 1, 9, 202, 5, 3, 9, 202, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1011, '{\"en\": \"Temporary Market Name 203-1\"}', '{\"en\": null}', NULL, NULL, 20, 10, 203, 1, 8, 10, 203, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1012, '{\"en\": \"Temporary Market Name 203-2\"}', '{\"en\": null}', NULL, NULL, 20, 10, 203, 2, 8, 10, 203, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1013, '{\"en\": \"Temporary Market Name 203-3\"}', '{\"en\": null}', NULL, NULL, 20, 10, 203, 3, 8, 10, 203, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1014, '{\"en\": \"Temporary Market Name 203-4\"}', '{\"en\": null}', NULL, NULL, 20, 10, 203, 4, 8, 10, 203, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1015, '{\"en\": \"Temporary Market Name 203-5\"}', '{\"en\": null}', NULL, NULL, 20, 10, 203, 5, 8, 10, 203, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1016, '{\"en\": \"Temporary Market Name 204-1\"}', '{\"en\": null}', NULL, NULL, 20, 10, 204, 1, 8, 10, 204, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1017, '{\"en\": \"Temporary Market Name 204-2\"}', '{\"en\": null}', NULL, NULL, 20, 10, 204, 2, 8, 10, 204, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1018, '{\"en\": \"Temporary Market Name 204-3\"}', '{\"en\": null}', NULL, NULL, 20, 10, 204, 3, 8, 10, 204, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1019, '{\"en\": \"Temporary Market Name 204-4\"}', '{\"en\": null}', NULL, NULL, 20, 10, 204, 4, 8, 10, 204, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1020, '{\"en\": \"Temporary Market Name 204-5\"}', '{\"en\": null}', NULL, NULL, 20, 10, 204, 5, 8, 10, 204, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1021, '{\"en\": \"Temporary Market Name 205-1\"}', '{\"en\": null}', NULL, NULL, 20, 10, 205, 1, 8, 10, 205, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1022, '{\"en\": \"Temporary Market Name 205-2\"}', '{\"en\": null}', NULL, NULL, 20, 10, 205, 2, 8, 10, 205, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1023, '{\"en\": \"Temporary Market Name 205-3\"}', '{\"en\": null}', NULL, NULL, 20, 10, 205, 3, 8, 10, 205, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1024, '{\"en\": \"Temporary Market Name 205-4\"}', '{\"en\": null}', NULL, NULL, 20, 10, 205, 4, 8, 10, 205, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1025, '{\"en\": \"Temporary Market Name 205-5\"}', '{\"en\": null}', NULL, NULL, 20, 10, 205, 5, 8, 10, 205, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1026, '{\"en\": \"Temporary Market Name 206-1\"}', '{\"en\": null}', NULL, NULL, 20, 10, 206, 1, 8, 10, 206, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1027, '{\"en\": \"Temporary Market Name 206-2\"}', '{\"en\": null}', NULL, NULL, 20, 10, 206, 2, 8, 10, 206, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1028, '{\"en\": \"Temporary Market Name 206-3\"}', '{\"en\": null}', NULL, NULL, 20, 10, 206, 3, 8, 10, 206, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1029, '{\"en\": \"Temporary Market Name 206-4\"}', '{\"en\": null}', NULL, NULL, 20, 10, 206, 4, 8, 10, 206, 1, 1, 1, '2021-02-21 10:09:41', '2021-02-21 10:09:41'),
(1030, '{\"en\": \"Temporary Market Name 206-5\"}', '{\"en\": null}', NULL, NULL, 20, 10, 206, 5, 8, 10, 206, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1031, '{\"en\": \"Temporary Market Name 207-1\"}', '{\"en\": null}', NULL, NULL, 20, 10, 207, 1, 8, 10, 207, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1032, '{\"en\": \"Temporary Market Name 207-2\"}', '{\"en\": null}', NULL, NULL, 20, 10, 207, 2, 8, 10, 207, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1033, '{\"en\": \"Temporary Market Name 207-3\"}', '{\"en\": null}', NULL, NULL, 20, 10, 207, 3, 8, 10, 207, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1034, '{\"en\": \"Temporary Market Name 207-4\"}', '{\"en\": null}', NULL, NULL, 20, 10, 207, 4, 8, 10, 207, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1035, '{\"en\": \"Temporary Market Name 207-5\"}', '{\"en\": null}', NULL, NULL, 20, 10, 207, 5, 8, 10, 207, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1036, '{\"en\": \"Temporary Market Name 208-1\"}', '{\"en\": null}', NULL, NULL, 20, 10, 208, 1, 8, 10, 208, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1037, '{\"en\": \"Temporary Market Name 208-2\"}', '{\"en\": null}', NULL, NULL, 20, 10, 208, 2, 8, 10, 208, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1038, '{\"en\": \"Temporary Market Name 208-3\"}', '{\"en\": null}', NULL, NULL, 20, 10, 208, 3, 8, 10, 208, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1039, '{\"en\": \"Temporary Market Name 208-4\"}', '{\"en\": null}', NULL, NULL, 20, 10, 208, 4, 8, 10, 208, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1040, '{\"en\": \"Temporary Market Name 208-5\"}', '{\"en\": null}', NULL, NULL, 20, 10, 208, 5, 8, 10, 208, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1041, '{\"en\": \"Temporary Market Name 209-1\"}', '{\"en\": null}', NULL, NULL, 20, 10, 209, 1, 8, 10, 209, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1042, '{\"en\": \"Temporary Market Name 209-2\"}', '{\"en\": null}', NULL, NULL, 20, 10, 209, 2, 8, 10, 209, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1043, '{\"en\": \"Temporary Market Name 209-3\"}', '{\"en\": null}', NULL, NULL, 20, 10, 209, 3, 8, 10, 209, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1044, '{\"en\": \"Temporary Market Name 209-4\"}', '{\"en\": null}', NULL, NULL, 20, 10, 209, 4, 8, 10, 209, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1045, '{\"en\": \"Temporary Market Name 209-5\"}', '{\"en\": null}', NULL, NULL, 20, 10, 209, 5, 8, 10, 209, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1046, '{\"en\": \"Temporary Market Name 210-1\"}', '{\"en\": null}', NULL, NULL, 20, 10, 210, 1, 8, 10, 210, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1047, '{\"en\": \"Temporary Market Name 210-2\"}', '{\"en\": null}', NULL, NULL, 20, 10, 210, 2, 8, 10, 210, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1048, '{\"en\": \"Temporary Market Name 210-3\"}', '{\"en\": null}', NULL, NULL, 20, 10, 210, 3, 8, 10, 210, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1049, '{\"en\": \"Temporary Market Name 210-4\"}', '{\"en\": null}', NULL, NULL, 20, 10, 210, 4, 8, 10, 210, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1050, '{\"en\": \"Temporary Market Name 210-5\"}', '{\"en\": null}', NULL, NULL, 20, 10, 210, 5, 8, 10, 210, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1051, '{\"en\": \"Temporary Market Name 211-1\"}', '{\"en\": null}', NULL, NULL, 20, 10, 211, 1, 8, 10, 211, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1052, '{\"en\": \"Temporary Market Name 211-2\"}', '{\"en\": null}', NULL, NULL, 20, 10, 211, 2, 8, 10, 211, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1053, '{\"en\": \"Temporary Market Name 211-3\"}', '{\"en\": null}', NULL, NULL, 20, 10, 211, 3, 8, 10, 211, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1054, '{\"en\": \"Temporary Market Name 211-4\"}', '{\"en\": null}', NULL, NULL, 20, 10, 211, 4, 8, 10, 211, 1, 1, 1, '2021-02-21 10:09:42', '2021-02-21 10:09:42'),
(1055, '{\"en\": \"Temporary Market Name 211-5\"}', '{\"en\": null}', NULL, NULL, 20, 10, 211, 5, 8, 10, 211, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1056, '{\"en\": \"Temporary Market Name 212-1\"}', '{\"en\": null}', NULL, NULL, 20, 10, 212, 1, 8, 10, 212, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1057, '{\"en\": \"Temporary Market Name 212-2\"}', '{\"en\": null}', NULL, NULL, 20, 10, 212, 2, 8, 10, 212, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1058, '{\"en\": \"Temporary Market Name 212-3\"}', '{\"en\": null}', NULL, NULL, 20, 10, 212, 3, 8, 10, 212, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1059, '{\"en\": \"Temporary Market Name 212-4\"}', '{\"en\": null}', NULL, NULL, 20, 10, 212, 4, 8, 10, 212, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1060, '{\"en\": \"Temporary Market Name 212-5\"}', '{\"en\": null}', NULL, NULL, 20, 10, 212, 5, 8, 10, 212, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1061, '{\"en\": \"Temporary Market Name 213-1\"}', '{\"en\": null}', NULL, NULL, 20, 10, 213, 1, 8, 10, 213, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1062, '{\"en\": \"Temporary Market Name 213-2\"}', '{\"en\": null}', NULL, NULL, 20, 10, 213, 2, 8, 10, 213, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1063, '{\"en\": \"Temporary Market Name 213-3\"}', '{\"en\": null}', NULL, NULL, 20, 10, 213, 3, 8, 10, 213, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1064, '{\"en\": \"Temporary Market Name 213-4\"}', '{\"en\": null}', NULL, NULL, 20, 10, 213, 4, 8, 10, 213, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1065, '{\"en\": \"Temporary Market Name 213-5\"}', '{\"en\": null}', NULL, NULL, 20, 10, 213, 5, 8, 10, 213, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1066, '{\"en\": \"Temporary Market Name 214-1\"}', '{\"en\": null}', NULL, NULL, 20, 10, 214, 1, 8, 10, 214, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1067, '{\"en\": \"Temporary Market Name 214-2\"}', '{\"en\": null}', NULL, NULL, 20, 10, 214, 2, 8, 10, 214, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1068, '{\"en\": \"Temporary Market Name 214-3\"}', '{\"en\": null}', NULL, NULL, 20, 10, 214, 3, 8, 10, 214, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1069, '{\"en\": \"Temporary Market Name 214-4\"}', '{\"en\": null}', NULL, NULL, 20, 10, 214, 4, 8, 10, 214, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1070, '{\"en\": \"Temporary Market Name 214-5\"}', '{\"en\": null}', NULL, NULL, 20, 10, 214, 5, 8, 10, 214, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1071, '{\"en\": \"Temporary Market Name 215-1\"}', '{\"en\": null}', NULL, NULL, 1, 11, 215, 1, 3, 11, 215, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1072, '{\"en\": \"Temporary Market Name 215-2\"}', '{\"en\": null}', NULL, NULL, 1, 11, 215, 2, 3, 11, 215, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1073, '{\"en\": \"Temporary Market Name 215-3\"}', '{\"en\": null}', NULL, NULL, 1, 11, 215, 3, 3, 11, 215, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1074, '{\"en\": \"Temporary Market Name 215-4\"}', '{\"en\": null}', NULL, NULL, 1, 11, 215, 4, 3, 11, 215, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1075, '{\"en\": \"Temporary Market Name 215-5\"}', '{\"en\": null}', NULL, NULL, 1, 11, 215, 5, 3, 11, 215, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1076, '{\"en\": \"Temporary Market Name 216-1\"}', '{\"en\": null}', NULL, NULL, 1, 11, 216, 1, 3, 11, 216, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1077, '{\"en\": \"Temporary Market Name 216-2\"}', '{\"en\": null}', NULL, NULL, 1, 11, 216, 2, 3, 11, 216, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1078, '{\"en\": \"Temporary Market Name 216-3\"}', '{\"en\": null}', NULL, NULL, 1, 11, 216, 3, 3, 11, 216, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1079, '{\"en\": \"Temporary Market Name 216-4\"}', '{\"en\": null}', NULL, NULL, 1, 11, 216, 4, 3, 11, 216, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1080, '{\"en\": \"Temporary Market Name 216-5\"}', '{\"en\": null}', NULL, NULL, 1, 11, 216, 5, 3, 11, 216, 1, 1, 1, '2021-02-21 10:09:43', '2021-02-21 10:09:43'),
(1081, '{\"en\": \"Temporary Market Name 217-1\"}', '{\"en\": null}', NULL, NULL, 1, 11, 217, 1, 3, 11, 217, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1082, '{\"en\": \"Temporary Market Name 217-2\"}', '{\"en\": null}', NULL, NULL, 1, 11, 217, 2, 3, 11, 217, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1083, '{\"en\": \"Temporary Market Name 217-3\"}', '{\"en\": null}', NULL, NULL, 1, 11, 217, 3, 3, 11, 217, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1084, '{\"en\": \"Temporary Market Name 217-4\"}', '{\"en\": null}', NULL, NULL, 1, 11, 217, 4, 3, 11, 217, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1085, '{\"en\": \"Temporary Market Name 217-5\"}', '{\"en\": null}', NULL, NULL, 1, 11, 217, 5, 3, 11, 217, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1086, '{\"en\": \"Temporary Market Name 218-1\"}', '{\"en\": null}', NULL, NULL, 1, 11, 218, 1, 3, 11, 218, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1087, '{\"en\": \"Temporary Market Name 218-2\"}', '{\"en\": null}', NULL, NULL, 1, 11, 218, 2, 3, 11, 218, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1088, '{\"en\": \"Temporary Market Name 218-3\"}', '{\"en\": null}', NULL, NULL, 1, 11, 218, 3, 3, 11, 218, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1089, '{\"en\": \"Temporary Market Name 218-4\"}', '{\"en\": null}', NULL, NULL, 1, 11, 218, 4, 3, 11, 218, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1090, '{\"en\": \"Temporary Market Name 218-5\"}', '{\"en\": null}', NULL, NULL, 1, 11, 218, 5, 3, 11, 218, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1091, '{\"en\": \"Temporary Market Name 219-1\"}', '{\"en\": null}', NULL, NULL, 1, 11, 219, 1, 3, 11, 219, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1092, '{\"en\": \"Temporary Market Name 219-2\"}', '{\"en\": null}', NULL, NULL, 1, 11, 219, 2, 3, 11, 219, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1093, '{\"en\": \"Temporary Market Name 219-3\"}', '{\"en\": null}', NULL, NULL, 1, 11, 219, 3, 3, 11, 219, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1094, '{\"en\": \"Temporary Market Name 219-4\"}', '{\"en\": null}', NULL, NULL, 1, 11, 219, 4, 3, 11, 219, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1095, '{\"en\": \"Temporary Market Name 219-5\"}', '{\"en\": null}', NULL, NULL, 1, 11, 219, 5, 3, 11, 219, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1096, '{\"en\": \"Temporary Market Name 220-1\"}', '{\"en\": null}', NULL, NULL, 1, 11, 220, 1, 3, 11, 220, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1097, '{\"en\": \"Temporary Market Name 220-2\"}', '{\"en\": null}', NULL, NULL, 1, 11, 220, 2, 3, 11, 220, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1098, '{\"en\": \"Temporary Market Name 220-3\"}', '{\"en\": null}', NULL, NULL, 1, 11, 220, 3, 3, 11, 220, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1099, '{\"en\": \"Temporary Market Name 220-4\"}', '{\"en\": null}', NULL, NULL, 1, 11, 220, 4, 3, 11, 220, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1100, '{\"en\": \"Temporary Market Name 220-5\"}', '{\"en\": null}', NULL, NULL, 1, 11, 220, 5, 3, 11, 220, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1101, '{\"en\": \"Temporary Market Name 221-1\"}', '{\"en\": null}', NULL, NULL, 1, 12, 221, 1, 3, 12, 221, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1102, '{\"en\": \"Temporary Market Name 221-2\"}', '{\"en\": null}', NULL, NULL, 1, 12, 221, 2, 3, 12, 221, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1103, '{\"en\": \"Temporary Market Name 221-3\"}', '{\"en\": null}', NULL, NULL, 1, 12, 221, 3, 3, 12, 221, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1104, '{\"en\": \"Temporary Market Name 221-4\"}', '{\"en\": null}', NULL, NULL, 1, 12, 221, 4, 3, 12, 221, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1105, '{\"en\": \"Temporary Market Name 221-5\"}', '{\"en\": null}', NULL, NULL, 1, 12, 221, 5, 3, 12, 221, 1, 1, 1, '2021-02-21 10:09:44', '2021-02-21 10:09:44'),
(1106, '{\"en\": \"Temporary Market Name 222-1\"}', '{\"en\": null}', NULL, NULL, 1, 12, 222, 1, 3, 12, 222, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1107, '{\"en\": \"Temporary Market Name 222-2\"}', '{\"en\": null}', NULL, NULL, 1, 12, 222, 2, 3, 12, 222, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1108, '{\"en\": \"Temporary Market Name 222-3\"}', '{\"en\": null}', NULL, NULL, 1, 12, 222, 3, 3, 12, 222, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1109, '{\"en\": \"Temporary Market Name 222-4\"}', '{\"en\": null}', NULL, NULL, 1, 12, 222, 4, 3, 12, 222, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1110, '{\"en\": \"Temporary Market Name 222-5\"}', '{\"en\": null}', NULL, NULL, 1, 12, 222, 5, 3, 12, 222, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1111, '{\"en\": \"Temporary Market Name 223-1\"}', '{\"en\": null}', NULL, NULL, 1, 12, 223, 1, 3, 12, 223, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1112, '{\"en\": \"Temporary Market Name 223-2\"}', '{\"en\": null}', NULL, NULL, 1, 12, 223, 2, 3, 12, 223, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1113, '{\"en\": \"Temporary Market Name 223-3\"}', '{\"en\": null}', NULL, NULL, 1, 12, 223, 3, 3, 12, 223, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1114, '{\"en\": \"Temporary Market Name 223-4\"}', '{\"en\": null}', NULL, NULL, 1, 12, 223, 4, 3, 12, 223, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1115, '{\"en\": \"Temporary Market Name 223-5\"}', '{\"en\": null}', NULL, NULL, 1, 12, 223, 5, 3, 12, 223, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1116, '{\"en\": \"Temporary Market Name 224-1\"}', '{\"en\": null}', NULL, NULL, 1, 12, 224, 1, 3, 12, 224, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1117, '{\"en\": \"Temporary Market Name 224-2\"}', '{\"en\": null}', NULL, NULL, 1, 12, 224, 2, 3, 12, 224, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1118, '{\"en\": \"Temporary Market Name 224-3\"}', '{\"en\": null}', NULL, NULL, 1, 12, 224, 3, 3, 12, 224, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1119, '{\"en\": \"Temporary Market Name 224-4\"}', '{\"en\": null}', NULL, NULL, 1, 12, 224, 4, 3, 12, 224, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1120, '{\"en\": \"Temporary Market Name 224-5\"}', '{\"en\": null}', NULL, NULL, 1, 12, 224, 5, 3, 12, 224, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1121, '{\"en\": \"Temporary Market Name 225-1\"}', '{\"en\": null}', NULL, NULL, 1, 12, 225, 1, 3, 12, 225, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1122, '{\"en\": \"Temporary Market Name 225-2\"}', '{\"en\": null}', NULL, NULL, 1, 12, 225, 2, 3, 12, 225, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1123, '{\"en\": \"Temporary Market Name 225-3\"}', '{\"en\": null}', NULL, NULL, 1, 12, 225, 3, 3, 12, 225, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1124, '{\"en\": \"Temporary Market Name 225-4\"}', '{\"en\": null}', NULL, NULL, 1, 12, 225, 4, 3, 12, 225, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1125, '{\"en\": \"Temporary Market Name 225-5\"}', '{\"en\": null}', NULL, NULL, 1, 12, 225, 5, 3, 12, 225, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1126, '{\"en\": \"Temporary Market Name 226-1\"}', '{\"en\": null}', NULL, NULL, 1, 12, 226, 1, 3, 12, 226, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1127, '{\"en\": \"Temporary Market Name 226-2\"}', '{\"en\": null}', NULL, NULL, 1, 12, 226, 2, 3, 12, 226, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1128, '{\"en\": \"Temporary Market Name 226-3\"}', '{\"en\": null}', NULL, NULL, 1, 12, 226, 3, 3, 12, 226, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1129, '{\"en\": \"Temporary Market Name 226-4\"}', '{\"en\": null}', NULL, NULL, 1, 12, 226, 4, 3, 12, 226, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1130, '{\"en\": \"Temporary Market Name 226-5\"}', '{\"en\": null}', NULL, NULL, 1, 12, 226, 5, 3, 12, 226, 1, 1, 1, '2021-02-21 10:09:45', '2021-02-21 10:09:45'),
(1131, '{\"en\": \"Temporary Market Name 227-1\"}', '{\"en\": null}', NULL, NULL, 20, 13, 227, 1, 8, 13, 227, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1132, '{\"en\": \"Temporary Market Name 227-2\"}', '{\"en\": null}', NULL, NULL, 20, 13, 227, 2, 8, 13, 227, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1133, '{\"en\": \"Temporary Market Name 227-3\"}', '{\"en\": null}', NULL, NULL, 20, 13, 227, 3, 8, 13, 227, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1134, '{\"en\": \"Temporary Market Name 227-4\"}', '{\"en\": null}', NULL, NULL, 20, 13, 227, 4, 8, 13, 227, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1135, '{\"en\": \"Temporary Market Name 227-5\"}', '{\"en\": null}', NULL, NULL, 20, 13, 227, 5, 8, 13, 227, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1136, '{\"en\": \"Temporary Market Name 228-1\"}', '{\"en\": null}', NULL, NULL, 20, 13, 228, 1, 8, 13, 228, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1137, '{\"en\": \"Temporary Market Name 228-2\"}', '{\"en\": null}', NULL, NULL, 20, 13, 228, 2, 8, 13, 228, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1138, '{\"en\": \"Temporary Market Name 228-3\"}', '{\"en\": null}', NULL, NULL, 20, 13, 228, 3, 8, 13, 228, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1139, '{\"en\": \"Temporary Market Name 228-4\"}', '{\"en\": null}', NULL, NULL, 20, 13, 228, 4, 8, 13, 228, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1140, '{\"en\": \"Temporary Market Name 228-5\"}', '{\"en\": null}', NULL, NULL, 20, 13, 228, 5, 8, 13, 228, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1141, '{\"en\": \"Temporary Market Name 229-1\"}', '{\"en\": null}', NULL, NULL, 20, 13, 229, 1, 8, 13, 229, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1142, '{\"en\": \"Temporary Market Name 229-2\"}', '{\"en\": null}', NULL, NULL, 20, 13, 229, 2, 8, 13, 229, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1143, '{\"en\": \"Temporary Market Name 229-3\"}', '{\"en\": null}', NULL, NULL, 20, 13, 229, 3, 8, 13, 229, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1144, '{\"en\": \"Temporary Market Name 229-4\"}', '{\"en\": null}', NULL, NULL, 20, 13, 229, 4, 8, 13, 229, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1145, '{\"en\": \"Temporary Market Name 229-5\"}', '{\"en\": null}', NULL, NULL, 20, 13, 229, 5, 8, 13, 229, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1146, '{\"en\": \"Temporary Market Name 230-1\"}', '{\"en\": null}', NULL, NULL, 20, 13, 230, 1, 8, 13, 230, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1147, '{\"en\": \"Temporary Market Name 230-2\"}', '{\"en\": null}', NULL, NULL, 20, 13, 230, 2, 8, 13, 230, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1148, '{\"en\": \"Temporary Market Name 230-3\"}', '{\"en\": null}', NULL, NULL, 20, 13, 230, 3, 8, 13, 230, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1149, '{\"en\": \"Temporary Market Name 230-4\"}', '{\"en\": null}', NULL, NULL, 20, 13, 230, 4, 8, 13, 230, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1150, '{\"en\": \"Temporary Market Name 230-5\"}', '{\"en\": null}', NULL, NULL, 20, 13, 230, 5, 8, 13, 230, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1151, '{\"en\": \"Temporary Market Name 231-1\"}', '{\"en\": null}', NULL, NULL, 20, 13, 231, 1, 8, 13, 231, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1152, '{\"en\": \"Temporary Market Name 231-2\"}', '{\"en\": null}', NULL, NULL, 20, 13, 231, 2, 8, 13, 231, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1153, '{\"en\": \"Temporary Market Name 231-3\"}', '{\"en\": null}', NULL, NULL, 20, 13, 231, 3, 8, 13, 231, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1154, '{\"en\": \"Temporary Market Name 231-4\"}', '{\"en\": null}', NULL, NULL, 20, 13, 231, 4, 8, 13, 231, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1155, '{\"en\": \"Temporary Market Name 231-5\"}', '{\"en\": null}', NULL, NULL, 20, 13, 231, 5, 8, 13, 231, 1, 1, 1, '2021-02-21 10:09:46', '2021-02-21 10:09:46'),
(1156, '{\"en\": \"Temporary Market Name 232-1\"}', '{\"en\": null}', NULL, NULL, 20, 13, 232, 1, 8, 13, 232, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1157, '{\"en\": \"Temporary Market Name 232-2\"}', '{\"en\": null}', NULL, NULL, 20, 13, 232, 2, 8, 13, 232, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1158, '{\"en\": \"Temporary Market Name 232-3\"}', '{\"en\": null}', NULL, NULL, 20, 13, 232, 3, 8, 13, 232, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1159, '{\"en\": \"Temporary Market Name 232-4\"}', '{\"en\": null}', NULL, NULL, 20, 13, 232, 4, 8, 13, 232, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1160, '{\"en\": \"Temporary Market Name 232-5\"}', '{\"en\": null}', NULL, NULL, 20, 13, 232, 5, 8, 13, 232, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1161, '{\"en\": \"Temporary Market Name 233-1\"}', '{\"en\": null}', NULL, NULL, 20, 13, 233, 1, 8, 13, 233, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1162, '{\"en\": \"Temporary Market Name 233-2\"}', '{\"en\": null}', NULL, NULL, 20, 13, 233, 2, 8, 13, 233, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1163, '{\"en\": \"Temporary Market Name 233-3\"}', '{\"en\": null}', NULL, NULL, 20, 13, 233, 3, 8, 13, 233, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1164, '{\"en\": \"Temporary Market Name 233-4\"}', '{\"en\": null}', NULL, NULL, 20, 13, 233, 4, 8, 13, 233, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1165, '{\"en\": \"Temporary Market Name 233-5\"}', '{\"en\": null}', NULL, NULL, 20, 13, 233, 5, 8, 13, 233, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1166, '{\"en\": \"Temporary Market Name 234-1\"}', '{\"en\": null}', NULL, NULL, 20, 13, 234, 1, 8, 13, 234, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1167, '{\"en\": \"Temporary Market Name 234-2\"}', '{\"en\": null}', NULL, NULL, 20, 13, 234, 2, 8, 13, 234, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1168, '{\"en\": \"Temporary Market Name 234-3\"}', '{\"en\": null}', NULL, NULL, 20, 13, 234, 3, 8, 13, 234, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1169, '{\"en\": \"Temporary Market Name 234-4\"}', '{\"en\": null}', NULL, NULL, 20, 13, 234, 4, 8, 13, 234, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1170, '{\"en\": \"Temporary Market Name 234-5\"}', '{\"en\": null}', NULL, NULL, 20, 13, 234, 5, 8, 13, 234, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1171, '{\"en\": \"Temporary Market Name 235-1\"}', '{\"en\": null}', NULL, NULL, 20, 13, 235, 1, 8, 13, 235, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1172, '{\"en\": \"Temporary Market Name 235-2\"}', '{\"en\": null}', NULL, NULL, 20, 13, 235, 2, 8, 13, 235, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1173, '{\"en\": \"Temporary Market Name 235-3\"}', '{\"en\": null}', NULL, NULL, 20, 13, 235, 3, 8, 13, 235, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1174, '{\"en\": \"Temporary Market Name 235-4\"}', '{\"en\": null}', NULL, NULL, 20, 13, 235, 4, 8, 13, 235, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1175, '{\"en\": \"Temporary Market Name 235-5\"}', '{\"en\": null}', NULL, NULL, 20, 13, 235, 5, 8, 13, 235, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1176, '{\"en\": \"Temporary Market Name 236-1\"}', '{\"en\": null}', NULL, NULL, 20, 13, 236, 1, 8, 13, 236, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1177, '{\"en\": \"Temporary Market Name 236-2\"}', '{\"en\": null}', NULL, NULL, 20, 13, 236, 2, 8, 13, 236, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1178, '{\"en\": \"Temporary Market Name 236-3\"}', '{\"en\": null}', NULL, NULL, 20, 13, 236, 3, 8, 13, 236, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1179, '{\"en\": \"Temporary Market Name 236-4\"}', '{\"en\": null}', NULL, NULL, 20, 13, 236, 4, 8, 13, 236, 1, 1, 1, '2021-02-21 10:09:47', '2021-02-21 10:09:47'),
(1180, '{\"en\": \"Temporary Market Name 236-5\"}', '{\"en\": null}', NULL, NULL, 20, 13, 236, 5, 8, 13, 236, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1181, '{\"en\": \"Temporary Market Name 237-1\"}', '{\"en\": null}', NULL, NULL, 1, 14, 237, 1, 3, 14, 237, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1182, '{\"en\": \"Temporary Market Name 237-2\"}', '{\"en\": null}', NULL, NULL, 1, 14, 237, 2, 3, 14, 237, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1183, '{\"en\": \"Temporary Market Name 237-3\"}', '{\"en\": null}', NULL, NULL, 1, 14, 237, 3, 3, 14, 237, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1184, '{\"en\": \"Temporary Market Name 237-4\"}', '{\"en\": null}', NULL, NULL, 1, 14, 237, 4, 3, 14, 237, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1185, '{\"en\": \"Temporary Market Name 237-5\"}', '{\"en\": null}', NULL, NULL, 1, 14, 237, 5, 3, 14, 237, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1186, '{\"en\": \"Temporary Market Name 238-1\"}', '{\"en\": null}', NULL, NULL, 1, 14, 238, 1, 3, 14, 238, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1187, '{\"en\": \"Temporary Market Name 238-2\"}', '{\"en\": null}', NULL, NULL, 1, 14, 238, 2, 3, 14, 238, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1188, '{\"en\": \"Temporary Market Name 238-3\"}', '{\"en\": null}', NULL, NULL, 1, 14, 238, 3, 3, 14, 238, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1189, '{\"en\": \"Temporary Market Name 238-4\"}', '{\"en\": null}', NULL, NULL, 1, 14, 238, 4, 3, 14, 238, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1190, '{\"en\": \"Temporary Market Name 238-5\"}', '{\"en\": null}', NULL, NULL, 1, 14, 238, 5, 3, 14, 238, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1191, '{\"en\": \"Temporary Market Name 239-1\"}', '{\"en\": null}', NULL, NULL, 1, 14, 239, 1, 3, 14, 239, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1192, '{\"en\": \"Temporary Market Name 239-2\"}', '{\"en\": null}', NULL, NULL, 1, 14, 239, 2, 3, 14, 239, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1193, '{\"en\": \"Temporary Market Name 239-3\"}', '{\"en\": null}', NULL, NULL, 1, 14, 239, 3, 3, 14, 239, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1194, '{\"en\": \"Temporary Market Name 239-4\"}', '{\"en\": null}', NULL, NULL, 1, 14, 239, 4, 3, 14, 239, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1195, '{\"en\": \"Temporary Market Name 239-5\"}', '{\"en\": null}', NULL, NULL, 1, 14, 239, 5, 3, 14, 239, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1196, '{\"en\": \"Temporary Market Name 240-1\"}', '{\"en\": null}', NULL, NULL, 1, 14, 240, 1, 3, 14, 240, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1197, '{\"en\": \"Temporary Market Name 240-2\"}', '{\"en\": null}', NULL, NULL, 1, 14, 240, 2, 3, 14, 240, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1198, '{\"en\": \"Temporary Market Name 240-3\"}', '{\"en\": null}', NULL, NULL, 1, 14, 240, 3, 3, 14, 240, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1199, '{\"en\": \"Temporary Market Name 240-4\"}', '{\"en\": null}', NULL, NULL, 1, 14, 240, 4, 3, 14, 240, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1200, '{\"en\": \"Temporary Market Name 240-5\"}', '{\"en\": null}', NULL, NULL, 1, 14, 240, 5, 3, 14, 240, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1201, '{\"en\": \"Temporary Market Name 241-1\"}', '{\"en\": null}', NULL, NULL, 1, 14, 241, 1, 3, 14, 241, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1202, '{\"en\": \"Temporary Market Name 241-2\"}', '{\"en\": null}', NULL, NULL, 1, 14, 241, 2, 3, 14, 241, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1203, '{\"en\": \"Temporary Market Name 241-3\"}', '{\"en\": null}', NULL, NULL, 1, 14, 241, 3, 3, 14, 241, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1204, '{\"en\": \"Temporary Market Name 241-4\"}', '{\"en\": null}', NULL, NULL, 1, 14, 241, 4, 3, 14, 241, 1, 1, 1, '2021-02-21 10:09:48', '2021-02-21 10:09:48'),
(1205, '{\"en\": \"Temporary Market Name 241-5\"}', '{\"en\": null}', NULL, NULL, 1, 14, 241, 5, 3, 14, 241, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1206, '{\"en\": \"Temporary Market Name 242-1\"}', '{\"en\": null}', NULL, NULL, 1, 15, 242, 1, 3, 15, 242, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1207, '{\"en\": \"Temporary Market Name 242-2\"}', '{\"en\": null}', NULL, NULL, 1, 15, 242, 2, 3, 15, 242, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1208, '{\"en\": \"Temporary Market Name 242-3\"}', '{\"en\": null}', NULL, NULL, 1, 15, 242, 3, 3, 15, 242, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1209, '{\"en\": \"Temporary Market Name 242-4\"}', '{\"en\": null}', NULL, NULL, 1, 15, 242, 4, 3, 15, 242, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1210, '{\"en\": \"Temporary Market Name 242-5\"}', '{\"en\": null}', NULL, NULL, 1, 15, 242, 5, 3, 15, 242, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1211, '{\"en\": \"Temporary Market Name 243-1\"}', '{\"en\": null}', NULL, NULL, 1, 15, 243, 1, 3, 15, 243, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1212, '{\"en\": \"Temporary Market Name 243-2\"}', '{\"en\": null}', NULL, NULL, 1, 15, 243, 2, 3, 15, 243, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1213, '{\"en\": \"Temporary Market Name 243-3\"}', '{\"en\": null}', NULL, NULL, 1, 15, 243, 3, 3, 15, 243, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1214, '{\"en\": \"Temporary Market Name 243-4\"}', '{\"en\": null}', NULL, NULL, 1, 15, 243, 4, 3, 15, 243, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1215, '{\"en\": \"Temporary Market Name 243-5\"}', '{\"en\": null}', NULL, NULL, 1, 15, 243, 5, 3, 15, 243, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1216, '{\"en\": \"Temporary Market Name 244-1\"}', '{\"en\": null}', NULL, NULL, 1, 15, 244, 1, 3, 15, 244, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1217, '{\"en\": \"Temporary Market Name 244-2\"}', '{\"en\": null}', NULL, NULL, 1, 15, 244, 2, 3, 15, 244, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1218, '{\"en\": \"Temporary Market Name 244-3\"}', '{\"en\": null}', NULL, NULL, 1, 15, 244, 3, 3, 15, 244, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1219, '{\"en\": \"Temporary Market Name 244-4\"}', '{\"en\": null}', NULL, NULL, 1, 15, 244, 4, 3, 15, 244, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1220, '{\"en\": \"Temporary Market Name 244-5\"}', '{\"en\": null}', NULL, NULL, 1, 15, 244, 5, 3, 15, 244, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1221, '{\"en\": \"Temporary Market Name 245-1\"}', '{\"en\": null}', NULL, NULL, 1, 15, 245, 1, 3, 15, 245, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1222, '{\"en\": \"Temporary Market Name 245-2\"}', '{\"en\": null}', NULL, NULL, 1, 15, 245, 2, 3, 15, 245, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1223, '{\"en\": \"Temporary Market Name 245-3\"}', '{\"en\": null}', NULL, NULL, 1, 15, 245, 3, 3, 15, 245, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1224, '{\"en\": \"Temporary Market Name 245-4\"}', '{\"en\": null}', NULL, NULL, 1, 15, 245, 4, 3, 15, 245, 1, 1, 1, '2021-02-21 10:09:49', '2021-02-21 10:09:49'),
(1225, '{\"en\": \"Temporary Market Name 245-5\"}', '{\"en\": null}', NULL, NULL, 1, 15, 245, 5, 3, 15, 245, 1, 1, 1, '2021-02-21 10:09:50', '2021-02-21 10:09:50'),
(1226, '{\"en\": \"Temporary Market Name 246-1\"}', '{\"en\": null}', NULL, NULL, 1, 15, 246, 1, 3, 15, 246, 1, 1, 1, '2021-02-21 10:09:50', '2021-02-21 10:09:50'),
(1227, '{\"en\": \"Temporary Market Name 246-2\"}', '{\"en\": null}', NULL, NULL, 1, 15, 246, 2, 3, 15, 246, 1, 1, 1, '2021-02-21 10:09:50', '2021-02-21 10:09:50'),
(1228, '{\"en\": \"Temporary Market Name 246-3\"}', '{\"en\": null}', NULL, NULL, 1, 15, 246, 3, 3, 15, 246, 1, 1, 1, '2021-02-21 10:09:50', '2021-02-21 10:09:50'),
(1229, '{\"en\": \"Temporary Market Name 246-4\"}', '{\"en\": null}', NULL, NULL, 1, 15, 246, 4, 3, 15, 246, 1, 1, 1, '2021-02-21 10:09:50', '2021-02-21 10:09:50'),
(1230, '{\"en\": \"Temporary Market Name 246-5\"}', '{\"en\": null}', NULL, NULL, 1, 15, 246, 5, 3, 15, 246, 1, 1, 1, '2021-02-21 10:09:50', '2021-02-21 10:09:50'),
(1231, '{\"en\": \"Temporary Market Name 247-1\"}', '{\"en\": null}', NULL, NULL, 1, 15, 247, 1, 3, 15, 247, 1, 1, 1, '2021-02-21 10:09:50', '2021-02-21 10:09:50'),
(1232, '{\"en\": \"Temporary Market Name 247-2\"}', '{\"en\": null}', NULL, NULL, 1, 15, 247, 2, 3, 15, 247, 1, 1, 1, '2021-02-21 10:09:50', '2021-02-21 10:09:50'),
(1233, '{\"en\": \"Temporary Market Name 247-3\"}', '{\"en\": null}', NULL, NULL, 1, 15, 247, 3, 3, 15, 247, 1, 1, 1, '2021-02-21 10:09:50', '2021-02-21 10:09:50'),
(1234, '{\"en\": \"Temporary Market Name 247-4\"}', '{\"en\": null}', NULL, NULL, 1, 15, 247, 4, 3, 15, 247, 1, 1, 1, '2021-02-21 10:09:50', '2021-02-21 10:09:50'),
(1235, '{\"en\": \"Temporary Market Name 247-5\"}', '{\"en\": null}', NULL, NULL, 1, 15, 247, 5, 3, 15, 247, 1, 1, 1, '2021-02-21 10:09:50', '2021-02-21 10:09:50'),
(1236, '{\"en\": \"Temporary Market Name 248-1\"}', '{\"en\": null}', NULL, NULL, 20, 16, 248, 1, 8, 16, 248, 1, 1, 1, '2021-02-21 10:09:50', '2021-02-21 10:09:50'),
(1237, '{\"en\": \"Temporary Market Name 248-2\"}', '{\"en\": null}', NULL, NULL, 20, 16, 248, 2, 8, 16, 248, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51');
INSERT INTO `markets` (`id`, `name`, `address`, `lat`, `lng`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1238, '{\"en\": \"Temporary Market Name 248-3\"}', '{\"en\": null}', NULL, NULL, 20, 16, 248, 3, 8, 16, 248, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1239, '{\"en\": \"Temporary Market Name 248-4\"}', '{\"en\": null}', NULL, NULL, 20, 16, 248, 4, 8, 16, 248, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1240, '{\"en\": \"Temporary Market Name 248-5\"}', '{\"en\": null}', NULL, NULL, 20, 16, 248, 5, 8, 16, 248, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1241, '{\"en\": \"Temporary Market Name 249-1\"}', '{\"en\": null}', NULL, NULL, 20, 16, 249, 1, 8, 16, 249, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1242, '{\"en\": \"Temporary Market Name 249-2\"}', '{\"en\": null}', NULL, NULL, 20, 16, 249, 2, 8, 16, 249, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1243, '{\"en\": \"Temporary Market Name 249-3\"}', '{\"en\": null}', NULL, NULL, 20, 16, 249, 3, 8, 16, 249, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1244, '{\"en\": \"Temporary Market Name 249-4\"}', '{\"en\": null}', NULL, NULL, 20, 16, 249, 4, 8, 16, 249, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1245, '{\"en\": \"Temporary Market Name 249-5\"}', '{\"en\": null}', NULL, NULL, 20, 16, 249, 5, 8, 16, 249, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1246, '{\"en\": \"Temporary Market Name 250-1\"}', '{\"en\": null}', NULL, NULL, 20, 16, 250, 1, 8, 16, 250, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1247, '{\"en\": \"Temporary Market Name 250-2\"}', '{\"en\": null}', NULL, NULL, 20, 16, 250, 2, 8, 16, 250, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1248, '{\"en\": \"Temporary Market Name 250-3\"}', '{\"en\": null}', NULL, NULL, 20, 16, 250, 3, 8, 16, 250, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1249, '{\"en\": \"Temporary Market Name 250-4\"}', '{\"en\": null}', NULL, NULL, 20, 16, 250, 4, 8, 16, 250, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1250, '{\"en\": \"Temporary Market Name 250-5\"}', '{\"en\": null}', NULL, NULL, 20, 16, 250, 5, 8, 16, 250, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1251, '{\"en\": \"Temporary Market Name 251-1\"}', '{\"en\": null}', NULL, NULL, 20, 16, 251, 1, 8, 16, 251, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1252, '{\"en\": \"Temporary Market Name 251-2\"}', '{\"en\": null}', NULL, NULL, 20, 16, 251, 2, 8, 16, 251, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1253, '{\"en\": \"Temporary Market Name 251-3\"}', '{\"en\": null}', NULL, NULL, 20, 16, 251, 3, 8, 16, 251, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1254, '{\"en\": \"Temporary Market Name 251-4\"}', '{\"en\": null}', NULL, NULL, 20, 16, 251, 4, 8, 16, 251, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1255, '{\"en\": \"Temporary Market Name 251-5\"}', '{\"en\": null}', NULL, NULL, 20, 16, 251, 5, 8, 16, 251, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1256, '{\"en\": \"Temporary Market Name 252-1\"}', '{\"en\": null}', NULL, NULL, 20, 16, 252, 1, 8, 16, 252, 1, 1, 1, '2021-02-21 10:09:51', '2021-02-21 10:09:51'),
(1257, '{\"en\": \"Temporary Market Name 252-2\"}', '{\"en\": null}', NULL, NULL, 20, 16, 252, 2, 8, 16, 252, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1258, '{\"en\": \"Temporary Market Name 252-3\"}', '{\"en\": null}', NULL, NULL, 20, 16, 252, 3, 8, 16, 252, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1259, '{\"en\": \"Temporary Market Name 252-4\"}', '{\"en\": null}', NULL, NULL, 20, 16, 252, 4, 8, 16, 252, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1260, '{\"en\": \"Temporary Market Name 252-5\"}', '{\"en\": null}', NULL, NULL, 20, 16, 252, 5, 8, 16, 252, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1261, '{\"en\": \"Temporary Market Name 253-1\"}', '{\"en\": null}', NULL, NULL, 1, 17, 253, 1, 3, 17, 253, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1262, '{\"en\": \"Temporary Market Name 253-2\"}', '{\"en\": null}', NULL, NULL, 1, 17, 253, 2, 3, 17, 253, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1263, '{\"en\": \"Temporary Market Name 253-3\"}', '{\"en\": null}', NULL, NULL, 1, 17, 253, 3, 3, 17, 253, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1264, '{\"en\": \"Temporary Market Name 253-4\"}', '{\"en\": null}', NULL, NULL, 1, 17, 253, 4, 3, 17, 253, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1265, '{\"en\": \"Temporary Market Name 253-5\"}', '{\"en\": null}', NULL, NULL, 1, 17, 253, 5, 3, 17, 253, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1266, '{\"en\": \"Temporary Market Name 254-1\"}', '{\"en\": null}', NULL, NULL, 1, 17, 254, 1, 3, 17, 254, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1267, '{\"en\": \"Temporary Market Name 254-2\"}', '{\"en\": null}', NULL, NULL, 1, 17, 254, 2, 3, 17, 254, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1268, '{\"en\": \"Temporary Market Name 254-3\"}', '{\"en\": null}', NULL, NULL, 1, 17, 254, 3, 3, 17, 254, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1269, '{\"en\": \"Temporary Market Name 254-4\"}', '{\"en\": null}', NULL, NULL, 1, 17, 254, 4, 3, 17, 254, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1270, '{\"en\": \"Temporary Market Name 254-5\"}', '{\"en\": null}', NULL, NULL, 1, 17, 254, 5, 3, 17, 254, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1271, '{\"en\": \"Temporary Market Name 255-1\"}', '{\"en\": null}', NULL, NULL, 1, 17, 255, 1, 3, 17, 255, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1272, '{\"en\": \"Temporary Market Name 255-2\"}', '{\"en\": null}', NULL, NULL, 1, 17, 255, 2, 3, 17, 255, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1273, '{\"en\": \"Temporary Market Name 255-3\"}', '{\"en\": null}', NULL, NULL, 1, 17, 255, 3, 3, 17, 255, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1274, '{\"en\": \"Temporary Market Name 255-4\"}', '{\"en\": null}', NULL, NULL, 1, 17, 255, 4, 3, 17, 255, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1275, '{\"en\": \"Temporary Market Name 255-5\"}', '{\"en\": null}', NULL, NULL, 1, 17, 255, 5, 3, 17, 255, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1276, '{\"en\": \"Temporary Market Name 256-1\"}', '{\"en\": null}', NULL, NULL, 1, 17, 256, 1, 3, 17, 256, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1277, '{\"en\": \"Temporary Market Name 256-2\"}', '{\"en\": null}', NULL, NULL, 1, 17, 256, 2, 3, 17, 256, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1278, '{\"en\": \"Temporary Market Name 256-3\"}', '{\"en\": null}', NULL, NULL, 1, 17, 256, 3, 3, 17, 256, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1279, '{\"en\": \"Temporary Market Name 256-4\"}', '{\"en\": null}', NULL, NULL, 1, 17, 256, 4, 3, 17, 256, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1280, '{\"en\": \"Temporary Market Name 256-5\"}', '{\"en\": null}', NULL, NULL, 1, 17, 256, 5, 3, 17, 256, 1, 1, 1, '2021-02-21 10:09:52', '2021-02-21 10:09:52'),
(1281, '{\"en\": \"Temporary Market Name 257-1\"}', '{\"en\": null}', NULL, NULL, 1, 17, 257, 1, 3, 17, 257, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1282, '{\"en\": \"Temporary Market Name 257-2\"}', '{\"en\": null}', NULL, NULL, 1, 17, 257, 2, 3, 17, 257, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1283, '{\"en\": \"Temporary Market Name 257-3\"}', '{\"en\": null}', NULL, NULL, 1, 17, 257, 3, 3, 17, 257, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1284, '{\"en\": \"Temporary Market Name 257-4\"}', '{\"en\": null}', NULL, NULL, 1, 17, 257, 4, 3, 17, 257, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1285, '{\"en\": \"Temporary Market Name 257-5\"}', '{\"en\": null}', NULL, NULL, 1, 17, 257, 5, 3, 17, 257, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1286, '{\"en\": \"Temporary Market Name 258-1\"}', '{\"en\": null}', NULL, NULL, 1, 17, 258, 1, 3, 17, 258, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1287, '{\"en\": \"Temporary Market Name 258-2\"}', '{\"en\": null}', NULL, NULL, 1, 17, 258, 2, 3, 17, 258, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1288, '{\"en\": \"Temporary Market Name 258-3\"}', '{\"en\": null}', NULL, NULL, 1, 17, 258, 3, 3, 17, 258, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1289, '{\"en\": \"Temporary Market Name 258-4\"}', '{\"en\": null}', NULL, NULL, 1, 17, 258, 4, 3, 17, 258, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1290, '{\"en\": \"Temporary Market Name 258-5\"}', '{\"en\": null}', NULL, NULL, 1, 17, 258, 5, 3, 17, 258, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1291, '{\"en\": \"Temporary Market Name 259-1\"}', '{\"en\": null}', NULL, NULL, 1, 17, 259, 1, 3, 17, 259, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1292, '{\"en\": \"Temporary Market Name 259-2\"}', '{\"en\": null}', NULL, NULL, 1, 17, 259, 2, 3, 17, 259, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1293, '{\"en\": \"Temporary Market Name 259-3\"}', '{\"en\": null}', NULL, NULL, 1, 17, 259, 3, 3, 17, 259, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1294, '{\"en\": \"Temporary Market Name 259-4\"}', '{\"en\": null}', NULL, NULL, 1, 17, 259, 4, 3, 17, 259, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1295, '{\"en\": \"Temporary Market Name 259-5\"}', '{\"en\": null}', NULL, NULL, 1, 17, 259, 5, 3, 17, 259, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1296, '{\"en\": \"Temporary Market Name 260-1\"}', '{\"en\": null}', NULL, NULL, 1, 17, 260, 1, 3, 17, 260, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1297, '{\"en\": \"Temporary Market Name 260-2\"}', '{\"en\": null}', NULL, NULL, 1, 17, 260, 2, 3, 17, 260, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1298, '{\"en\": \"Temporary Market Name 260-3\"}', '{\"en\": null}', NULL, NULL, 1, 17, 260, 3, 3, 17, 260, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1299, '{\"en\": \"Temporary Market Name 260-4\"}', '{\"en\": null}', NULL, NULL, 1, 17, 260, 4, 3, 17, 260, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1300, '{\"en\": \"Temporary Market Name 260-5\"}', '{\"en\": null}', NULL, NULL, 1, 17, 260, 5, 3, 17, 260, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1301, '{\"en\": \"Temporary Market Name 261-1\"}', '{\"en\": null}', NULL, NULL, 1, 17, 261, 1, 3, 17, 261, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1302, '{\"en\": \"Temporary Market Name 261-2\"}', '{\"en\": null}', NULL, NULL, 1, 17, 261, 2, 3, 17, 261, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1303, '{\"en\": \"Temporary Market Name 261-3\"}', '{\"en\": null}', NULL, NULL, 1, 17, 261, 3, 3, 17, 261, 1, 1, 1, '2021-02-21 10:09:53', '2021-02-21 10:09:53'),
(1304, '{\"en\": \"Temporary Market Name 261-4\"}', '{\"en\": null}', NULL, NULL, 1, 17, 261, 4, 3, 17, 261, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1305, '{\"en\": \"Temporary Market Name 261-5\"}', '{\"en\": null}', NULL, NULL, 1, 17, 261, 5, 3, 17, 261, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1306, '{\"en\": \"Temporary Market Name 262-1\"}', '{\"en\": null}', NULL, NULL, 1, 17, 262, 1, 3, 17, 262, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1307, '{\"en\": \"Temporary Market Name 262-2\"}', '{\"en\": null}', NULL, NULL, 1, 17, 262, 2, 3, 17, 262, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1308, '{\"en\": \"Temporary Market Name 262-3\"}', '{\"en\": null}', NULL, NULL, 1, 17, 262, 3, 3, 17, 262, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1309, '{\"en\": \"Temporary Market Name 262-4\"}', '{\"en\": null}', NULL, NULL, 1, 17, 262, 4, 3, 17, 262, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1310, '{\"en\": \"Temporary Market Name 262-5\"}', '{\"en\": null}', NULL, NULL, 1, 17, 262, 5, 3, 17, 262, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1311, '{\"en\": \"Temporary Market Name 263-1\"}', '{\"en\": null}', NULL, NULL, 1, 17, 263, 1, 3, 17, 263, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1312, '{\"en\": \"Temporary Market Name 263-2\"}', '{\"en\": null}', NULL, NULL, 1, 17, 263, 2, 3, 17, 263, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1313, '{\"en\": \"Temporary Market Name 263-3\"}', '{\"en\": null}', NULL, NULL, 1, 17, 263, 3, 3, 17, 263, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1314, '{\"en\": \"Temporary Market Name 263-4\"}', '{\"en\": null}', NULL, NULL, 1, 17, 263, 4, 3, 17, 263, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1315, '{\"en\": \"Temporary Market Name 263-5\"}', '{\"en\": null}', NULL, NULL, 1, 17, 263, 5, 3, 17, 263, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1316, '{\"en\": \"Temporary Market Name 264-1\"}', '{\"en\": null}', NULL, NULL, 1, 17, 264, 1, 3, 17, 264, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1317, '{\"en\": \"Temporary Market Name 264-2\"}', '{\"en\": null}', NULL, NULL, 1, 17, 264, 2, 3, 17, 264, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1318, '{\"en\": \"Temporary Market Name 264-3\"}', '{\"en\": null}', NULL, NULL, 1, 17, 264, 3, 3, 17, 264, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1319, '{\"en\": \"Temporary Market Name 264-4\"}', '{\"en\": null}', NULL, NULL, 1, 17, 264, 4, 3, 17, 264, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1320, '{\"en\": \"Temporary Market Name 264-5\"}', '{\"en\": null}', NULL, NULL, 1, 17, 264, 5, 3, 17, 264, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1321, '{\"en\": \"Temporary Market Name 265-1\"}', '{\"en\": null}', NULL, NULL, 13, 55, 265, 1, 4, 55, 265, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1322, '{\"en\": \"Temporary Market Name 265-2\"}', '{\"en\": null}', NULL, NULL, 13, 55, 265, 2, 4, 55, 265, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1323, '{\"en\": \"Temporary Market Name 265-3\"}', '{\"en\": null}', NULL, NULL, 13, 55, 265, 3, 4, 55, 265, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1324, '{\"en\": \"Temporary Market Name 265-4\"}', '{\"en\": null}', NULL, NULL, 13, 55, 265, 4, 4, 55, 265, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1325, '{\"en\": \"Temporary Market Name 265-5\"}', '{\"en\": null}', NULL, NULL, 13, 55, 265, 5, 4, 55, 265, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1326, '{\"en\": \"Temporary Market Name 266-1\"}', '{\"en\": null}', NULL, NULL, 13, 55, 266, 1, 4, 55, 266, 1, 1, 1, '2021-02-21 10:09:54', '2021-02-21 10:09:54'),
(1327, '{\"en\": \"Temporary Market Name 266-2\"}', '{\"en\": null}', NULL, NULL, 13, 55, 266, 2, 4, 55, 266, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1328, '{\"en\": \"Temporary Market Name 266-3\"}', '{\"en\": null}', NULL, NULL, 13, 55, 266, 3, 4, 55, 266, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1329, '{\"en\": \"Temporary Market Name 266-4\"}', '{\"en\": null}', NULL, NULL, 13, 55, 266, 4, 4, 55, 266, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1330, '{\"en\": \"Temporary Market Name 266-5\"}', '{\"en\": null}', NULL, NULL, 13, 55, 266, 5, 4, 55, 266, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1331, '{\"en\": \"Temporary Market Name 267-1\"}', '{\"en\": null}', NULL, NULL, 13, 55, 267, 1, 4, 55, 267, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1332, '{\"en\": \"Temporary Market Name 267-2\"}', '{\"en\": null}', NULL, NULL, 13, 55, 267, 2, 4, 55, 267, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1333, '{\"en\": \"Temporary Market Name 267-3\"}', '{\"en\": null}', NULL, NULL, 13, 55, 267, 3, 4, 55, 267, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1334, '{\"en\": \"Temporary Market Name 267-4\"}', '{\"en\": null}', NULL, NULL, 13, 55, 267, 4, 4, 55, 267, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1335, '{\"en\": \"Temporary Market Name 267-5\"}', '{\"en\": null}', NULL, NULL, 13, 55, 267, 5, 4, 55, 267, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1336, '{\"en\": \"Temporary Market Name 268-1\"}', '{\"en\": null}', NULL, NULL, 13, 55, 268, 1, 4, 55, 268, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1337, '{\"en\": \"Temporary Market Name 268-2\"}', '{\"en\": null}', NULL, NULL, 13, 55, 268, 2, 4, 55, 268, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1338, '{\"en\": \"Temporary Market Name 268-3\"}', '{\"en\": null}', NULL, NULL, 13, 55, 268, 3, 4, 55, 268, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1339, '{\"en\": \"Temporary Market Name 268-4\"}', '{\"en\": null}', NULL, NULL, 13, 55, 268, 4, 4, 55, 268, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1340, '{\"en\": \"Temporary Market Name 268-5\"}', '{\"en\": null}', NULL, NULL, 13, 55, 268, 5, 4, 55, 268, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1341, '{\"en\": \"Temporary Market Name 269-1\"}', '{\"en\": null}', NULL, NULL, 13, 55, 269, 1, 4, 55, 269, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1342, '{\"en\": \"Temporary Market Name 269-2\"}', '{\"en\": null}', NULL, NULL, 13, 55, 269, 2, 4, 55, 269, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1343, '{\"en\": \"Temporary Market Name 269-3\"}', '{\"en\": null}', NULL, NULL, 13, 55, 269, 3, 4, 55, 269, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1344, '{\"en\": \"Temporary Market Name 269-4\"}', '{\"en\": null}', NULL, NULL, 13, 55, 269, 4, 4, 55, 269, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1345, '{\"en\": \"Temporary Market Name 269-5\"}', '{\"en\": null}', NULL, NULL, 13, 55, 269, 5, 4, 55, 269, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1346, '{\"en\": \"Temporary Market Name 270-1\"}', '{\"en\": null}', NULL, NULL, 13, 55, 270, 1, 4, 55, 270, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1347, '{\"en\": \"Temporary Market Name 270-2\"}', '{\"en\": null}', NULL, NULL, 13, 55, 270, 2, 4, 55, 270, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1348, '{\"en\": \"Temporary Market Name 270-3\"}', '{\"en\": null}', NULL, NULL, 13, 55, 270, 3, 4, 55, 270, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1349, '{\"en\": \"Temporary Market Name 270-4\"}', '{\"en\": null}', NULL, NULL, 13, 55, 270, 4, 4, 55, 270, 1, 1, 1, '2021-02-21 10:09:55', '2021-02-21 10:09:55'),
(1350, '{\"en\": \"Temporary Market Name 270-5\"}', '{\"en\": null}', NULL, NULL, 13, 55, 270, 5, 4, 55, 270, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1351, '{\"en\": \"Temporary Market Name 271-1\"}', '{\"en\": null}', NULL, NULL, 13, 55, 271, 1, 4, 55, 271, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1352, '{\"en\": \"Temporary Market Name 271-2\"}', '{\"en\": null}', NULL, NULL, 13, 55, 271, 2, 4, 55, 271, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1353, '{\"en\": \"Temporary Market Name 271-3\"}', '{\"en\": null}', NULL, NULL, 13, 55, 271, 3, 4, 55, 271, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1354, '{\"en\": \"Temporary Market Name 271-4\"}', '{\"en\": null}', NULL, NULL, 13, 55, 271, 4, 4, 55, 271, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1355, '{\"en\": \"Temporary Market Name 271-5\"}', '{\"en\": null}', NULL, NULL, 13, 55, 271, 5, 4, 55, 271, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1356, '{\"en\": \"Temporary Market Name 272-1\"}', '{\"en\": null}', NULL, NULL, 13, 55, 272, 1, 4, 55, 272, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1357, '{\"en\": \"Temporary Market Name 272-2\"}', '{\"en\": null}', NULL, NULL, 13, 55, 272, 2, 4, 55, 272, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1358, '{\"en\": \"Temporary Market Name 272-3\"}', '{\"en\": null}', NULL, NULL, 13, 55, 272, 3, 4, 55, 272, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1359, '{\"en\": \"Temporary Market Name 272-4\"}', '{\"en\": null}', NULL, NULL, 13, 55, 272, 4, 4, 55, 272, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1360, '{\"en\": \"Temporary Market Name 272-5\"}', '{\"en\": null}', NULL, NULL, 13, 55, 272, 5, 4, 55, 272, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1361, '{\"en\": \"Temporary Market Name 273-1\"}', '{\"en\": null}', NULL, NULL, 13, 55, 273, 1, 4, 55, 273, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1362, '{\"en\": \"Temporary Market Name 273-2\"}', '{\"en\": null}', NULL, NULL, 13, 55, 273, 2, 4, 55, 273, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1363, '{\"en\": \"Temporary Market Name 273-3\"}', '{\"en\": null}', NULL, NULL, 13, 55, 273, 3, 4, 55, 273, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1364, '{\"en\": \"Temporary Market Name 273-4\"}', '{\"en\": null}', NULL, NULL, 13, 55, 273, 4, 4, 55, 273, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1365, '{\"en\": \"Temporary Market Name 273-5\"}', '{\"en\": null}', NULL, NULL, 13, 55, 273, 5, 4, 55, 273, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1366, '{\"en\": \"Temporary Market Name 274-1\"}', '{\"en\": null}', NULL, NULL, 13, 56, 274, 1, 4, 56, 274, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1367, '{\"en\": \"Temporary Market Name 274-2\"}', '{\"en\": null}', NULL, NULL, 13, 56, 274, 2, 4, 56, 274, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1368, '{\"en\": \"Temporary Market Name 274-3\"}', '{\"en\": null}', NULL, NULL, 13, 56, 274, 3, 4, 56, 274, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1369, '{\"en\": \"Temporary Market Name 274-4\"}', '{\"en\": null}', NULL, NULL, 13, 56, 274, 4, 4, 56, 274, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1370, '{\"en\": \"Temporary Market Name 274-5\"}', '{\"en\": null}', NULL, NULL, 13, 56, 274, 5, 4, 56, 274, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1371, '{\"en\": \"Temporary Market Name 275-1\"}', '{\"en\": null}', NULL, NULL, 13, 56, 275, 1, 4, 56, 275, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1372, '{\"en\": \"Temporary Market Name 275-2\"}', '{\"en\": null}', NULL, NULL, 13, 56, 275, 2, 4, 56, 275, 1, 1, 1, '2021-02-21 10:09:56', '2021-02-21 10:09:56'),
(1373, '{\"en\": \"Temporary Market Name 275-3\"}', '{\"en\": null}', NULL, NULL, 13, 56, 275, 3, 4, 56, 275, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1374, '{\"en\": \"Temporary Market Name 275-4\"}', '{\"en\": null}', NULL, NULL, 13, 56, 275, 4, 4, 56, 275, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1375, '{\"en\": \"Temporary Market Name 275-5\"}', '{\"en\": null}', NULL, NULL, 13, 56, 275, 5, 4, 56, 275, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1376, '{\"en\": \"Temporary Market Name 276-1\"}', '{\"en\": null}', NULL, NULL, 13, 56, 276, 1, 4, 56, 276, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1377, '{\"en\": \"Temporary Market Name 276-2\"}', '{\"en\": null}', NULL, NULL, 13, 56, 276, 2, 4, 56, 276, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1378, '{\"en\": \"Temporary Market Name 276-3\"}', '{\"en\": null}', NULL, NULL, 13, 56, 276, 3, 4, 56, 276, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1379, '{\"en\": \"Temporary Market Name 276-4\"}', '{\"en\": null}', NULL, NULL, 13, 56, 276, 4, 4, 56, 276, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1380, '{\"en\": \"Temporary Market Name 276-5\"}', '{\"en\": null}', NULL, NULL, 13, 56, 276, 5, 4, 56, 276, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1381, '{\"en\": \"Temporary Market Name 277-1\"}', '{\"en\": null}', NULL, NULL, 13, 56, 277, 1, 4, 56, 277, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1382, '{\"en\": \"Temporary Market Name 277-2\"}', '{\"en\": null}', NULL, NULL, 13, 56, 277, 2, 4, 56, 277, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1383, '{\"en\": \"Temporary Market Name 277-3\"}', '{\"en\": null}', NULL, NULL, 13, 56, 277, 3, 4, 56, 277, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1384, '{\"en\": \"Temporary Market Name 277-4\"}', '{\"en\": null}', NULL, NULL, 13, 56, 277, 4, 4, 56, 277, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1385, '{\"en\": \"Temporary Market Name 277-5\"}', '{\"en\": null}', NULL, NULL, 13, 56, 277, 5, 4, 56, 277, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1386, '{\"en\": \"Temporary Market Name 278-1\"}', '{\"en\": null}', NULL, NULL, 13, 57, 278, 1, 4, 57, 278, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1387, '{\"en\": \"Temporary Market Name 278-2\"}', '{\"en\": null}', NULL, NULL, 13, 57, 278, 2, 4, 57, 278, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1388, '{\"en\": \"Temporary Market Name 278-3\"}', '{\"en\": null}', NULL, NULL, 13, 57, 278, 3, 4, 57, 278, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1389, '{\"en\": \"Temporary Market Name 278-4\"}', '{\"en\": null}', NULL, NULL, 13, 57, 278, 4, 4, 57, 278, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1390, '{\"en\": \"Temporary Market Name 278-5\"}', '{\"en\": null}', NULL, NULL, 13, 57, 278, 5, 4, 57, 278, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1391, '{\"en\": \"Temporary Market Name 279-1\"}', '{\"en\": null}', NULL, NULL, 13, 57, 279, 1, 4, 57, 279, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1392, '{\"en\": \"Temporary Market Name 279-2\"}', '{\"en\": null}', NULL, NULL, 13, 57, 279, 2, 4, 57, 279, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1393, '{\"en\": \"Temporary Market Name 279-3\"}', '{\"en\": null}', NULL, NULL, 13, 57, 279, 3, 4, 57, 279, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1394, '{\"en\": \"Temporary Market Name 279-4\"}', '{\"en\": null}', NULL, NULL, 13, 57, 279, 4, 4, 57, 279, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1395, '{\"en\": \"Temporary Market Name 279-5\"}', '{\"en\": null}', NULL, NULL, 13, 57, 279, 5, 4, 57, 279, 1, 1, 1, '2021-02-21 10:09:57', '2021-02-21 10:09:57'),
(1396, '{\"en\": \"Temporary Market Name 280-1\"}', '{\"en\": null}', NULL, NULL, 13, 57, 280, 1, 4, 57, 280, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1397, '{\"en\": \"Temporary Market Name 280-2\"}', '{\"en\": null}', NULL, NULL, 13, 57, 280, 2, 4, 57, 280, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1398, '{\"en\": \"Temporary Market Name 280-3\"}', '{\"en\": null}', NULL, NULL, 13, 57, 280, 3, 4, 57, 280, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1399, '{\"en\": \"Temporary Market Name 280-4\"}', '{\"en\": null}', NULL, NULL, 13, 57, 280, 4, 4, 57, 280, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1400, '{\"en\": \"Temporary Market Name 280-5\"}', '{\"en\": null}', NULL, NULL, 13, 57, 280, 5, 4, 57, 280, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1401, '{\"en\": \"Temporary Market Name 281-1\"}', '{\"en\": null}', NULL, NULL, 13, 57, 281, 1, 4, 57, 281, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1402, '{\"en\": \"Temporary Market Name 281-2\"}', '{\"en\": null}', NULL, NULL, 13, 57, 281, 2, 4, 57, 281, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1403, '{\"en\": \"Temporary Market Name 281-3\"}', '{\"en\": null}', NULL, NULL, 13, 57, 281, 3, 4, 57, 281, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1404, '{\"en\": \"Temporary Market Name 281-4\"}', '{\"en\": null}', NULL, NULL, 13, 57, 281, 4, 4, 57, 281, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1405, '{\"en\": \"Temporary Market Name 281-5\"}', '{\"en\": null}', NULL, NULL, 13, 57, 281, 5, 4, 57, 281, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1406, '{\"en\": \"Temporary Market Name 282-1\"}', '{\"en\": null}', NULL, NULL, 13, 57, 282, 1, 4, 57, 282, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1407, '{\"en\": \"Temporary Market Name 282-2\"}', '{\"en\": null}', NULL, NULL, 13, 57, 282, 2, 4, 57, 282, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1408, '{\"en\": \"Temporary Market Name 282-3\"}', '{\"en\": null}', NULL, NULL, 13, 57, 282, 3, 4, 57, 282, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1409, '{\"en\": \"Temporary Market Name 282-4\"}', '{\"en\": null}', NULL, NULL, 13, 57, 282, 4, 4, 57, 282, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1410, '{\"en\": \"Temporary Market Name 282-5\"}', '{\"en\": null}', NULL, NULL, 13, 57, 282, 5, 4, 57, 282, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1411, '{\"en\": \"Temporary Market Name 283-1\"}', '{\"en\": null}', NULL, NULL, 13, 57, 283, 1, 4, 57, 283, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1412, '{\"en\": \"Temporary Market Name 283-2\"}', '{\"en\": null}', NULL, NULL, 13, 57, 283, 2, 4, 57, 283, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1413, '{\"en\": \"Temporary Market Name 283-3\"}', '{\"en\": null}', NULL, NULL, 13, 57, 283, 3, 4, 57, 283, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1414, '{\"en\": \"Temporary Market Name 283-4\"}', '{\"en\": null}', NULL, NULL, 13, 57, 283, 4, 4, 57, 283, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1415, '{\"en\": \"Temporary Market Name 283-5\"}', '{\"en\": null}', NULL, NULL, 13, 57, 283, 5, 4, 57, 283, 1, 1, 1, '2021-02-21 10:09:58', '2021-02-21 10:09:58'),
(1416, '{\"en\": \"Temporary Market Name 284-1\"}', '{\"en\": null}', NULL, NULL, 13, 57, 284, 1, 4, 57, 284, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1417, '{\"en\": \"Temporary Market Name 284-2\"}', '{\"en\": null}', NULL, NULL, 13, 57, 284, 2, 4, 57, 284, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1418, '{\"en\": \"Temporary Market Name 284-3\"}', '{\"en\": null}', NULL, NULL, 13, 57, 284, 3, 4, 57, 284, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1419, '{\"en\": \"Temporary Market Name 284-4\"}', '{\"en\": null}', NULL, NULL, 13, 57, 284, 4, 4, 57, 284, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1420, '{\"en\": \"Temporary Market Name 284-5\"}', '{\"en\": null}', NULL, NULL, 13, 57, 284, 5, 4, 57, 284, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1421, '{\"en\": \"Temporary Market Name 285-1\"}', '{\"en\": null}', NULL, NULL, 13, 57, 285, 1, 4, 57, 285, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1422, '{\"en\": \"Temporary Market Name 285-2\"}', '{\"en\": null}', NULL, NULL, 13, 57, 285, 2, 4, 57, 285, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1423, '{\"en\": \"Temporary Market Name 285-3\"}', '{\"en\": null}', NULL, NULL, 13, 57, 285, 3, 4, 57, 285, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1424, '{\"en\": \"Temporary Market Name 285-4\"}', '{\"en\": null}', NULL, NULL, 13, 57, 285, 4, 4, 57, 285, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1425, '{\"en\": \"Temporary Market Name 285-5\"}', '{\"en\": null}', NULL, NULL, 13, 57, 285, 5, 4, 57, 285, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1426, '{\"en\": \"Temporary Market Name 286-1\"}', '{\"en\": null}', NULL, NULL, 13, 58, 286, 1, 4, 58, 286, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1427, '{\"en\": \"Temporary Market Name 286-2\"}', '{\"en\": null}', NULL, NULL, 13, 58, 286, 2, 4, 58, 286, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1428, '{\"en\": \"Temporary Market Name 286-3\"}', '{\"en\": null}', NULL, NULL, 13, 58, 286, 3, 4, 58, 286, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1429, '{\"en\": \"Temporary Market Name 286-4\"}', '{\"en\": null}', NULL, NULL, 13, 58, 286, 4, 4, 58, 286, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1430, '{\"en\": \"Temporary Market Name 286-5\"}', '{\"en\": null}', NULL, NULL, 13, 58, 286, 5, 4, 58, 286, 1, 1, 1, '2021-02-21 10:09:59', '2021-02-21 10:09:59'),
(1431, '{\"en\": \"Temporary Market Name 287-1\"}', '{\"en\": null}', NULL, NULL, 13, 58, 287, 1, 4, 58, 287, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1432, '{\"en\": \"Temporary Market Name 287-2\"}', '{\"en\": null}', NULL, NULL, 13, 58, 287, 2, 4, 58, 287, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1433, '{\"en\": \"Temporary Market Name 287-3\"}', '{\"en\": null}', NULL, NULL, 13, 58, 287, 3, 4, 58, 287, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1434, '{\"en\": \"Temporary Market Name 287-4\"}', '{\"en\": null}', NULL, NULL, 13, 58, 287, 4, 4, 58, 287, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1435, '{\"en\": \"Temporary Market Name 287-5\"}', '{\"en\": null}', NULL, NULL, 13, 58, 287, 5, 4, 58, 287, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1436, '{\"en\": \"Temporary Market Name 288-1\"}', '{\"en\": null}', NULL, NULL, 13, 58, 288, 1, 4, 58, 288, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1437, '{\"en\": \"Temporary Market Name 288-2\"}', '{\"en\": null}', NULL, NULL, 13, 58, 288, 2, 4, 58, 288, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1438, '{\"en\": \"Temporary Market Name 288-3\"}', '{\"en\": null}', NULL, NULL, 13, 58, 288, 3, 4, 58, 288, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1439, '{\"en\": \"Temporary Market Name 288-4\"}', '{\"en\": null}', NULL, NULL, 13, 58, 288, 4, 4, 58, 288, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1440, '{\"en\": \"Temporary Market Name 288-5\"}', '{\"en\": null}', NULL, NULL, 13, 58, 288, 5, 4, 58, 288, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1441, '{\"en\": \"Temporary Market Name 289-1\"}', '{\"en\": null}', NULL, NULL, 13, 58, 289, 1, 4, 58, 289, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1442, '{\"en\": \"Temporary Market Name 289-2\"}', '{\"en\": null}', NULL, NULL, 13, 58, 289, 2, 4, 58, 289, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1443, '{\"en\": \"Temporary Market Name 289-3\"}', '{\"en\": null}', NULL, NULL, 13, 58, 289, 3, 4, 58, 289, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1444, '{\"en\": \"Temporary Market Name 289-4\"}', '{\"en\": null}', NULL, NULL, 13, 58, 289, 4, 4, 58, 289, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1445, '{\"en\": \"Temporary Market Name 289-5\"}', '{\"en\": null}', NULL, NULL, 13, 58, 289, 5, 4, 58, 289, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1446, '{\"en\": \"Temporary Market Name 290-1\"}', '{\"en\": null}', NULL, NULL, 13, 58, 290, 1, 4, 58, 290, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1447, '{\"en\": \"Temporary Market Name 290-2\"}', '{\"en\": null}', NULL, NULL, 13, 58, 290, 2, 4, 58, 290, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1448, '{\"en\": \"Temporary Market Name 290-3\"}', '{\"en\": null}', NULL, NULL, 13, 58, 290, 3, 4, 58, 290, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1449, '{\"en\": \"Temporary Market Name 290-4\"}', '{\"en\": null}', NULL, NULL, 13, 58, 290, 4, 4, 58, 290, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1450, '{\"en\": \"Temporary Market Name 290-5\"}', '{\"en\": null}', NULL, NULL, 13, 58, 290, 5, 4, 58, 290, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1451, '{\"en\": \"Temporary Market Name 291-1\"}', '{\"en\": null}', NULL, NULL, 13, 58, 291, 1, 4, 58, 291, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1452, '{\"en\": \"Temporary Market Name 291-2\"}', '{\"en\": null}', NULL, NULL, 13, 58, 291, 2, 4, 58, 291, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1453, '{\"en\": \"Temporary Market Name 291-3\"}', '{\"en\": null}', NULL, NULL, 13, 58, 291, 3, 4, 58, 291, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1454, '{\"en\": \"Temporary Market Name 291-4\"}', '{\"en\": null}', NULL, NULL, 13, 58, 291, 4, 4, 58, 291, 1, 1, 1, '2021-02-21 10:10:00', '2021-02-21 10:10:00'),
(1455, '{\"en\": \"Temporary Market Name 291-5\"}', '{\"en\": null}', NULL, NULL, 13, 58, 291, 5, 4, 58, 291, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1456, '{\"en\": \"Temporary Market Name 292-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 292, 1, 4, 59, 292, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1457, '{\"en\": \"Temporary Market Name 292-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 292, 2, 4, 59, 292, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1458, '{\"en\": \"Temporary Market Name 292-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 292, 3, 4, 59, 292, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1459, '{\"en\": \"Temporary Market Name 292-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 292, 4, 4, 59, 292, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1460, '{\"en\": \"Temporary Market Name 292-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 292, 5, 4, 59, 292, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1461, '{\"en\": \"Temporary Market Name 293-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 293, 1, 4, 59, 293, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1462, '{\"en\": \"Temporary Market Name 293-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 293, 2, 4, 59, 293, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1463, '{\"en\": \"Temporary Market Name 293-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 293, 3, 4, 59, 293, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1464, '{\"en\": \"Temporary Market Name 293-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 293, 4, 4, 59, 293, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1465, '{\"en\": \"Temporary Market Name 293-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 293, 5, 4, 59, 293, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1466, '{\"en\": \"Temporary Market Name 294-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 294, 1, 4, 59, 294, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1467, '{\"en\": \"Temporary Market Name 294-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 294, 2, 4, 59, 294, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1468, '{\"en\": \"Temporary Market Name 294-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 294, 3, 4, 59, 294, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1469, '{\"en\": \"Temporary Market Name 294-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 294, 4, 4, 59, 294, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1470, '{\"en\": \"Temporary Market Name 294-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 294, 5, 4, 59, 294, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1471, '{\"en\": \"Temporary Market Name 295-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 295, 1, 4, 59, 295, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1472, '{\"en\": \"Temporary Market Name 295-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 295, 2, 4, 59, 295, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1473, '{\"en\": \"Temporary Market Name 295-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 295, 3, 4, 59, 295, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1474, '{\"en\": \"Temporary Market Name 295-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 295, 4, 4, 59, 295, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1475, '{\"en\": \"Temporary Market Name 295-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 295, 5, 4, 59, 295, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1476, '{\"en\": \"Temporary Market Name 296-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 296, 1, 4, 59, 296, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1477, '{\"en\": \"Temporary Market Name 296-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 296, 2, 4, 59, 296, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1478, '{\"en\": \"Temporary Market Name 296-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 296, 3, 4, 59, 296, 1, 1, 1, '2021-02-21 10:10:01', '2021-02-21 10:10:01'),
(1479, '{\"en\": \"Temporary Market Name 296-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 296, 4, 4, 59, 296, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1480, '{\"en\": \"Temporary Market Name 296-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 296, 5, 4, 59, 296, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1481, '{\"en\": \"Temporary Market Name 297-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 297, 1, 4, 59, 297, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1482, '{\"en\": \"Temporary Market Name 297-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 297, 2, 4, 59, 297, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1483, '{\"en\": \"Temporary Market Name 297-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 297, 3, 4, 59, 297, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1484, '{\"en\": \"Temporary Market Name 297-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 297, 4, 4, 59, 297, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1485, '{\"en\": \"Temporary Market Name 297-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 297, 5, 4, 59, 297, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1486, '{\"en\": \"Temporary Market Name 298-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 298, 1, 4, 59, 298, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1487, '{\"en\": \"Temporary Market Name 298-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 298, 2, 4, 59, 298, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1488, '{\"en\": \"Temporary Market Name 298-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 298, 3, 4, 59, 298, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1489, '{\"en\": \"Temporary Market Name 298-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 298, 4, 4, 59, 298, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1490, '{\"en\": \"Temporary Market Name 298-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 298, 5, 4, 59, 298, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1491, '{\"en\": \"Temporary Market Name 299-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 299, 1, 4, 59, 299, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1492, '{\"en\": \"Temporary Market Name 299-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 299, 2, 4, 59, 299, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1493, '{\"en\": \"Temporary Market Name 299-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 299, 3, 4, 59, 299, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1494, '{\"en\": \"Temporary Market Name 299-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 299, 4, 4, 59, 299, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1495, '{\"en\": \"Temporary Market Name 299-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 299, 5, 4, 59, 299, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1496, '{\"en\": \"Temporary Market Name 300-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 300, 1, 4, 59, 300, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1497, '{\"en\": \"Temporary Market Name 300-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 300, 2, 4, 59, 300, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1498, '{\"en\": \"Temporary Market Name 300-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 300, 3, 4, 59, 300, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1499, '{\"en\": \"Temporary Market Name 300-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 300, 4, 4, 59, 300, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1500, '{\"en\": \"Temporary Market Name 300-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 300, 5, 4, 59, 300, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1501, '{\"en\": \"Temporary Market Name 301-1\"}', '{\"en\": null}', NULL, NULL, 13, 60, 301, 1, 4, 60, 301, 1, 1, 1, '2021-02-21 10:10:02', '2021-02-21 10:10:02'),
(1502, '{\"en\": \"Temporary Market Name 301-2\"}', '{\"en\": null}', NULL, NULL, 13, 60, 301, 2, 4, 60, 301, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1503, '{\"en\": \"Temporary Market Name 301-3\"}', '{\"en\": null}', NULL, NULL, 13, 60, 301, 3, 4, 60, 301, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1504, '{\"en\": \"Temporary Market Name 301-4\"}', '{\"en\": null}', NULL, NULL, 13, 60, 301, 4, 4, 60, 301, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1505, '{\"en\": \"Temporary Market Name 301-5\"}', '{\"en\": null}', NULL, NULL, 13, 60, 301, 5, 4, 60, 301, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1506, '{\"en\": \"Temporary Market Name 302-1\"}', '{\"en\": null}', NULL, NULL, 13, 60, 302, 1, 4, 60, 302, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1507, '{\"en\": \"Temporary Market Name 302-2\"}', '{\"en\": null}', NULL, NULL, 13, 60, 302, 2, 4, 60, 302, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1508, '{\"en\": \"Temporary Market Name 302-3\"}', '{\"en\": null}', NULL, NULL, 13, 60, 302, 3, 4, 60, 302, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1509, '{\"en\": \"Temporary Market Name 302-4\"}', '{\"en\": null}', NULL, NULL, 13, 60, 302, 4, 4, 60, 302, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1510, '{\"en\": \"Temporary Market Name 302-5\"}', '{\"en\": null}', NULL, NULL, 13, 60, 302, 5, 4, 60, 302, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1511, '{\"en\": \"Temporary Market Name 303-1\"}', '{\"en\": null}', NULL, NULL, 13, 60, 303, 1, 4, 60, 303, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1512, '{\"en\": \"Temporary Market Name 303-2\"}', '{\"en\": null}', NULL, NULL, 13, 60, 303, 2, 4, 60, 303, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1513, '{\"en\": \"Temporary Market Name 303-3\"}', '{\"en\": null}', NULL, NULL, 13, 60, 303, 3, 4, 60, 303, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1514, '{\"en\": \"Temporary Market Name 303-4\"}', '{\"en\": null}', NULL, NULL, 13, 60, 303, 4, 4, 60, 303, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1515, '{\"en\": \"Temporary Market Name 303-5\"}', '{\"en\": null}', NULL, NULL, 13, 60, 303, 5, 4, 60, 303, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1516, '{\"en\": \"Temporary Market Name 304-1\"}', '{\"en\": null}', NULL, NULL, 13, 60, 304, 1, 4, 60, 304, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1517, '{\"en\": \"Temporary Market Name 304-2\"}', '{\"en\": null}', NULL, NULL, 13, 60, 304, 2, 4, 60, 304, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1518, '{\"en\": \"Temporary Market Name 304-3\"}', '{\"en\": null}', NULL, NULL, 13, 60, 304, 3, 4, 60, 304, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1519, '{\"en\": \"Temporary Market Name 304-4\"}', '{\"en\": null}', NULL, NULL, 13, 60, 304, 4, 4, 60, 304, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1520, '{\"en\": \"Temporary Market Name 304-5\"}', '{\"en\": null}', NULL, NULL, 13, 60, 304, 5, 4, 60, 304, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1521, '{\"en\": \"Temporary Market Name 305-1\"}', '{\"en\": null}', NULL, NULL, 13, 60, 305, 1, 4, 60, 305, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1522, '{\"en\": \"Temporary Market Name 305-2\"}', '{\"en\": null}', NULL, NULL, 13, 60, 305, 2, 4, 60, 305, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1523, '{\"en\": \"Temporary Market Name 305-3\"}', '{\"en\": null}', NULL, NULL, 13, 60, 305, 3, 4, 60, 305, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1524, '{\"en\": \"Temporary Market Name 305-4\"}', '{\"en\": null}', NULL, NULL, 13, 60, 305, 4, 4, 60, 305, 1, 1, 1, '2021-02-21 10:10:03', '2021-02-21 10:10:03'),
(1525, '{\"en\": \"Temporary Market Name 305-5\"}', '{\"en\": null}', NULL, NULL, 13, 60, 305, 5, 4, 60, 305, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1526, '{\"en\": \"Temporary Market Name 306-1\"}', '{\"en\": null}', NULL, NULL, 13, 60, 306, 1, 4, 60, 306, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1527, '{\"en\": \"Temporary Market Name 306-2\"}', '{\"en\": null}', NULL, NULL, 13, 60, 306, 2, 4, 60, 306, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1528, '{\"en\": \"Temporary Market Name 306-3\"}', '{\"en\": null}', NULL, NULL, 13, 60, 306, 3, 4, 60, 306, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1529, '{\"en\": \"Temporary Market Name 306-4\"}', '{\"en\": null}', NULL, NULL, 13, 60, 306, 4, 4, 60, 306, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1530, '{\"en\": \"Temporary Market Name 306-5\"}', '{\"en\": null}', NULL, NULL, 13, 60, 306, 5, 4, 60, 306, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1531, '{\"en\": \"Temporary Market Name 307-1\"}', '{\"en\": null}', NULL, NULL, 13, 61, 307, 1, 4, 61, 307, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1532, '{\"en\": \"Temporary Market Name 307-2\"}', '{\"en\": null}', NULL, NULL, 13, 61, 307, 2, 4, 61, 307, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1533, '{\"en\": \"Temporary Market Name 307-3\"}', '{\"en\": null}', NULL, NULL, 13, 61, 307, 3, 4, 61, 307, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1534, '{\"en\": \"Temporary Market Name 307-4\"}', '{\"en\": null}', NULL, NULL, 13, 61, 307, 4, 4, 61, 307, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1535, '{\"en\": \"Temporary Market Name 307-5\"}', '{\"en\": null}', NULL, NULL, 13, 61, 307, 5, 4, 61, 307, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1536, '{\"en\": \"Temporary Market Name 308-1\"}', '{\"en\": null}', NULL, NULL, 13, 61, 308, 1, 4, 61, 308, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1537, '{\"en\": \"Temporary Market Name 308-2\"}', '{\"en\": null}', NULL, NULL, 13, 61, 308, 2, 4, 61, 308, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1538, '{\"en\": \"Temporary Market Name 308-3\"}', '{\"en\": null}', NULL, NULL, 13, 61, 308, 3, 4, 61, 308, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1539, '{\"en\": \"Temporary Market Name 308-4\"}', '{\"en\": null}', NULL, NULL, 13, 61, 308, 4, 4, 61, 308, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1540, '{\"en\": \"Temporary Market Name 308-5\"}', '{\"en\": null}', NULL, NULL, 13, 61, 308, 5, 4, 61, 308, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04');
INSERT INTO `markets` (`id`, `name`, `address`, `lat`, `lng`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1541, '{\"en\": \"Temporary Market Name 309-1\"}', '{\"en\": null}', NULL, NULL, 13, 61, 309, 1, 4, 61, 309, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1542, '{\"en\": \"Temporary Market Name 309-2\"}', '{\"en\": null}', NULL, NULL, 13, 61, 309, 2, 4, 61, 309, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1543, '{\"en\": \"Temporary Market Name 309-3\"}', '{\"en\": null}', NULL, NULL, 13, 61, 309, 3, 4, 61, 309, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1544, '{\"en\": \"Temporary Market Name 309-4\"}', '{\"en\": null}', NULL, NULL, 13, 61, 309, 4, 4, 61, 309, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1545, '{\"en\": \"Temporary Market Name 309-5\"}', '{\"en\": null}', NULL, NULL, 13, 61, 309, 5, 4, 61, 309, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1546, '{\"en\": \"Temporary Market Name 310-1\"}', '{\"en\": null}', NULL, NULL, 13, 61, 310, 1, 4, 61, 310, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1547, '{\"en\": \"Temporary Market Name 310-2\"}', '{\"en\": null}', NULL, NULL, 13, 61, 310, 2, 4, 61, 310, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1548, '{\"en\": \"Temporary Market Name 310-3\"}', '{\"en\": null}', NULL, NULL, 13, 61, 310, 3, 4, 61, 310, 1, 1, 1, '2021-02-21 10:10:04', '2021-02-21 10:10:04'),
(1549, '{\"en\": \"Temporary Market Name 310-4\"}', '{\"en\": null}', NULL, NULL, 13, 61, 310, 4, 4, 61, 310, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1550, '{\"en\": \"Temporary Market Name 310-5\"}', '{\"en\": null}', NULL, NULL, 13, 61, 310, 5, 4, 61, 310, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1551, '{\"en\": \"Temporary Market Name 311-1\"}', '{\"en\": null}', NULL, NULL, 13, 62, 311, 1, 4, 62, 311, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1552, '{\"en\": \"Temporary Market Name 311-2\"}', '{\"en\": null}', NULL, NULL, 13, 62, 311, 2, 4, 62, 311, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1553, '{\"en\": \"Temporary Market Name 311-3\"}', '{\"en\": null}', NULL, NULL, 13, 62, 311, 3, 4, 62, 311, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1554, '{\"en\": \"Temporary Market Name 311-4\"}', '{\"en\": null}', NULL, NULL, 13, 62, 311, 4, 4, 62, 311, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1555, '{\"en\": \"Temporary Market Name 311-5\"}', '{\"en\": null}', NULL, NULL, 13, 62, 311, 5, 4, 62, 311, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1556, '{\"en\": \"Temporary Market Name 312-1\"}', '{\"en\": null}', NULL, NULL, 13, 62, 312, 1, 4, 62, 312, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1557, '{\"en\": \"Temporary Market Name 312-2\"}', '{\"en\": null}', NULL, NULL, 13, 62, 312, 2, 4, 62, 312, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1558, '{\"en\": \"Temporary Market Name 312-3\"}', '{\"en\": null}', NULL, NULL, 13, 62, 312, 3, 4, 62, 312, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1559, '{\"en\": \"Temporary Market Name 312-4\"}', '{\"en\": null}', NULL, NULL, 13, 62, 312, 4, 4, 62, 312, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1560, '{\"en\": \"Temporary Market Name 312-5\"}', '{\"en\": null}', NULL, NULL, 13, 62, 312, 5, 4, 62, 312, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1561, '{\"en\": \"Temporary Market Name 313-1\"}', '{\"en\": null}', NULL, NULL, 13, 62, 313, 1, 4, 62, 313, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1562, '{\"en\": \"Temporary Market Name 313-2\"}', '{\"en\": null}', NULL, NULL, 13, 62, 313, 2, 4, 62, 313, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1563, '{\"en\": \"Temporary Market Name 313-3\"}', '{\"en\": null}', NULL, NULL, 13, 62, 313, 3, 4, 62, 313, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1564, '{\"en\": \"Temporary Market Name 313-4\"}', '{\"en\": null}', NULL, NULL, 13, 62, 313, 4, 4, 62, 313, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1565, '{\"en\": \"Temporary Market Name 313-5\"}', '{\"en\": null}', NULL, NULL, 13, 62, 313, 5, 4, 62, 313, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1566, '{\"en\": \"Temporary Market Name 314-1\"}', '{\"en\": null}', NULL, NULL, 13, 63, 314, 1, 4, 63, 314, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1567, '{\"en\": \"Temporary Market Name 314-2\"}', '{\"en\": null}', NULL, NULL, 13, 63, 314, 2, 4, 63, 314, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1568, '{\"en\": \"Temporary Market Name 314-3\"}', '{\"en\": null}', NULL, NULL, 13, 63, 314, 3, 4, 63, 314, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1569, '{\"en\": \"Temporary Market Name 314-4\"}', '{\"en\": null}', NULL, NULL, 13, 63, 314, 4, 4, 63, 314, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1570, '{\"en\": \"Temporary Market Name 314-5\"}', '{\"en\": null}', NULL, NULL, 13, 63, 314, 5, 4, 63, 314, 1, 1, 1, '2021-02-21 10:10:05', '2021-02-21 10:10:05'),
(1571, '{\"en\": \"Temporary Market Name 315-1\"}', '{\"en\": null}', NULL, NULL, 13, 63, 315, 1, 4, 63, 315, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1572, '{\"en\": \"Temporary Market Name 315-2\"}', '{\"en\": null}', NULL, NULL, 13, 63, 315, 2, 4, 63, 315, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1573, '{\"en\": \"Temporary Market Name 315-3\"}', '{\"en\": null}', NULL, NULL, 13, 63, 315, 3, 4, 63, 315, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1574, '{\"en\": \"Temporary Market Name 315-4\"}', '{\"en\": null}', NULL, NULL, 13, 63, 315, 4, 4, 63, 315, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1575, '{\"en\": \"Temporary Market Name 315-5\"}', '{\"en\": null}', NULL, NULL, 13, 63, 315, 5, 4, 63, 315, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1576, '{\"en\": \"Temporary Market Name 316-1\"}', '{\"en\": null}', NULL, NULL, 13, 63, 316, 1, 4, 63, 316, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1577, '{\"en\": \"Temporary Market Name 316-2\"}', '{\"en\": null}', NULL, NULL, 13, 63, 316, 2, 4, 63, 316, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1578, '{\"en\": \"Temporary Market Name 316-3\"}', '{\"en\": null}', NULL, NULL, 13, 63, 316, 3, 4, 63, 316, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1579, '{\"en\": \"Temporary Market Name 316-4\"}', '{\"en\": null}', NULL, NULL, 13, 63, 316, 4, 4, 63, 316, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1580, '{\"en\": \"Temporary Market Name 316-5\"}', '{\"en\": null}', NULL, NULL, 13, 63, 316, 5, 4, 63, 316, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1581, '{\"en\": \"Temporary Market Name 317-1\"}', '{\"en\": null}', NULL, NULL, 13, 64, 317, 1, 4, 64, 317, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1582, '{\"en\": \"Temporary Market Name 317-2\"}', '{\"en\": null}', NULL, NULL, 13, 64, 317, 2, 4, 64, 317, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1583, '{\"en\": \"Temporary Market Name 317-3\"}', '{\"en\": null}', NULL, NULL, 13, 64, 317, 3, 4, 64, 317, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1584, '{\"en\": \"Temporary Market Name 317-4\"}', '{\"en\": null}', NULL, NULL, 13, 64, 317, 4, 4, 64, 317, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1585, '{\"en\": \"Temporary Market Name 317-5\"}', '{\"en\": null}', NULL, NULL, 13, 64, 317, 5, 4, 64, 317, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1586, '{\"en\": \"Temporary Market Name 318-1\"}', '{\"en\": null}', NULL, NULL, 13, 64, 318, 1, 4, 64, 318, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1587, '{\"en\": \"Temporary Market Name 318-2\"}', '{\"en\": null}', NULL, NULL, 13, 64, 318, 2, 4, 64, 318, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1588, '{\"en\": \"Temporary Market Name 318-3\"}', '{\"en\": null}', NULL, NULL, 13, 64, 318, 3, 4, 64, 318, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1589, '{\"en\": \"Temporary Market Name 318-4\"}', '{\"en\": null}', NULL, NULL, 13, 64, 318, 4, 4, 64, 318, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1590, '{\"en\": \"Temporary Market Name 318-5\"}', '{\"en\": null}', NULL, NULL, 13, 64, 318, 5, 4, 64, 318, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1591, '{\"en\": \"Temporary Market Name 319-1\"}', '{\"en\": null}', NULL, NULL, 13, 64, 319, 1, 4, 64, 319, 1, 1, 1, '2021-02-21 10:10:06', '2021-02-21 10:10:06'),
(1592, '{\"en\": \"Temporary Market Name 319-2\"}', '{\"en\": null}', NULL, NULL, 13, 64, 319, 2, 4, 64, 319, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1593, '{\"en\": \"Temporary Market Name 319-3\"}', '{\"en\": null}', NULL, NULL, 13, 64, 319, 3, 4, 64, 319, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1594, '{\"en\": \"Temporary Market Name 319-4\"}', '{\"en\": null}', NULL, NULL, 13, 64, 319, 4, 4, 64, 319, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1595, '{\"en\": \"Temporary Market Name 319-5\"}', '{\"en\": null}', NULL, NULL, 13, 64, 319, 5, 4, 64, 319, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1596, '{\"en\": \"Temporary Market Name 320-1\"}', '{\"en\": null}', NULL, NULL, 13, 64, 320, 1, 4, 64, 320, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1597, '{\"en\": \"Temporary Market Name 320-2\"}', '{\"en\": null}', NULL, NULL, 13, 64, 320, 2, 4, 64, 320, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1598, '{\"en\": \"Temporary Market Name 320-3\"}', '{\"en\": null}', NULL, NULL, 13, 64, 320, 3, 4, 64, 320, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1599, '{\"en\": \"Temporary Market Name 320-4\"}', '{\"en\": null}', NULL, NULL, 13, 64, 320, 4, 4, 64, 320, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1600, '{\"en\": \"Temporary Market Name 320-5\"}', '{\"en\": null}', NULL, NULL, 13, 64, 320, 5, 4, 64, 320, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1601, '{\"en\": \"Temporary Market Name 321-1\"}', '{\"en\": null}', NULL, NULL, 13, 64, 321, 1, 4, 64, 321, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1602, '{\"en\": \"Temporary Market Name 321-2\"}', '{\"en\": null}', NULL, NULL, 13, 64, 321, 2, 4, 64, 321, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1603, '{\"en\": \"Temporary Market Name 321-3\"}', '{\"en\": null}', NULL, NULL, 13, 64, 321, 3, 4, 64, 321, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1604, '{\"en\": \"Temporary Market Name 321-4\"}', '{\"en\": null}', NULL, NULL, 13, 64, 321, 4, 4, 64, 321, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1605, '{\"en\": \"Temporary Market Name 321-5\"}', '{\"en\": null}', NULL, NULL, 13, 64, 321, 5, 4, 64, 321, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1606, '{\"en\": \"Temporary Market Name 322-1\"}', '{\"en\": null}', NULL, NULL, 13, 64, 322, 1, 4, 64, 322, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1607, '{\"en\": \"Temporary Market Name 322-2\"}', '{\"en\": null}', NULL, NULL, 13, 64, 322, 2, 4, 64, 322, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1608, '{\"en\": \"Temporary Market Name 322-3\"}', '{\"en\": null}', NULL, NULL, 13, 64, 322, 3, 4, 64, 322, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1609, '{\"en\": \"Temporary Market Name 322-4\"}', '{\"en\": null}', NULL, NULL, 13, 64, 322, 4, 4, 64, 322, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1610, '{\"en\": \"Temporary Market Name 322-5\"}', '{\"en\": null}', NULL, NULL, 13, 64, 322, 5, 4, 64, 322, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1611, '{\"en\": \"Temporary Market Name 323-1\"}', '{\"en\": null}', NULL, NULL, 13, 64, 323, 1, 4, 64, 323, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1612, '{\"en\": \"Temporary Market Name 323-2\"}', '{\"en\": null}', NULL, NULL, 13, 64, 323, 2, 4, 64, 323, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1613, '{\"en\": \"Temporary Market Name 323-3\"}', '{\"en\": null}', NULL, NULL, 13, 64, 323, 3, 4, 64, 323, 1, 1, 1, '2021-02-21 10:10:07', '2021-02-21 10:10:07'),
(1614, '{\"en\": \"Temporary Market Name 323-4\"}', '{\"en\": null}', NULL, NULL, 13, 64, 323, 4, 4, 64, 323, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1615, '{\"en\": \"Temporary Market Name 323-5\"}', '{\"en\": null}', NULL, NULL, 13, 64, 323, 5, 4, 64, 323, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1616, '{\"en\": \"Temporary Market Name 324-1\"}', '{\"en\": null}', NULL, NULL, 11, 18, 324, 1, 5, 18, 324, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1617, '{\"en\": \"Temporary Market Name 324-2\"}', '{\"en\": null}', NULL, NULL, 11, 18, 324, 2, 5, 18, 324, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1618, '{\"en\": \"Temporary Market Name 324-3\"}', '{\"en\": null}', NULL, NULL, 11, 18, 324, 3, 5, 18, 324, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1619, '{\"en\": \"Temporary Market Name 324-4\"}', '{\"en\": null}', NULL, NULL, 11, 18, 324, 4, 5, 18, 324, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1620, '{\"en\": \"Temporary Market Name 324-5\"}', '{\"en\": null}', NULL, NULL, 11, 18, 324, 5, 5, 18, 324, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1621, '{\"en\": \"Temporary Market Name 325-1\"}', '{\"en\": null}', NULL, NULL, 11, 18, 325, 1, 5, 18, 325, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1622, '{\"en\": \"Temporary Market Name 325-2\"}', '{\"en\": null}', NULL, NULL, 11, 18, 325, 2, 5, 18, 325, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1623, '{\"en\": \"Temporary Market Name 325-3\"}', '{\"en\": null}', NULL, NULL, 11, 18, 325, 3, 5, 18, 325, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1624, '{\"en\": \"Temporary Market Name 325-4\"}', '{\"en\": null}', NULL, NULL, 11, 18, 325, 4, 5, 18, 325, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1625, '{\"en\": \"Temporary Market Name 325-5\"}', '{\"en\": null}', NULL, NULL, 11, 18, 325, 5, 5, 18, 325, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1626, '{\"en\": \"Temporary Market Name 326-1\"}', '{\"en\": null}', NULL, NULL, 11, 18, 326, 1, 5, 18, 326, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1627, '{\"en\": \"Temporary Market Name 326-2\"}', '{\"en\": null}', NULL, NULL, 11, 18, 326, 2, 5, 18, 326, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1628, '{\"en\": \"Temporary Market Name 326-3\"}', '{\"en\": null}', NULL, NULL, 11, 18, 326, 3, 5, 18, 326, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1629, '{\"en\": \"Temporary Market Name 326-4\"}', '{\"en\": null}', NULL, NULL, 11, 18, 326, 4, 5, 18, 326, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1630, '{\"en\": \"Temporary Market Name 326-5\"}', '{\"en\": null}', NULL, NULL, 11, 18, 326, 5, 5, 18, 326, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1631, '{\"en\": \"Temporary Market Name 327-1\"}', '{\"en\": null}', NULL, NULL, 11, 18, 327, 1, 5, 18, 327, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1632, '{\"en\": \"Temporary Market Name 327-2\"}', '{\"en\": null}', NULL, NULL, 11, 18, 327, 2, 5, 18, 327, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1633, '{\"en\": \"Temporary Market Name 327-3\"}', '{\"en\": null}', NULL, NULL, 11, 18, 327, 3, 5, 18, 327, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1634, '{\"en\": \"Temporary Market Name 327-4\"}', '{\"en\": null}', NULL, NULL, 11, 18, 327, 4, 5, 18, 327, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1635, '{\"en\": \"Temporary Market Name 327-5\"}', '{\"en\": null}', NULL, NULL, 11, 18, 327, 5, 5, 18, 327, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1636, '{\"en\": \"Temporary Market Name 328-1\"}', '{\"en\": null}', NULL, NULL, 11, 18, 328, 1, 5, 18, 328, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1637, '{\"en\": \"Temporary Market Name 328-2\"}', '{\"en\": null}', NULL, NULL, 11, 18, 328, 2, 5, 18, 328, 1, 1, 1, '2021-02-21 10:10:08', '2021-02-21 10:10:08'),
(1638, '{\"en\": \"Temporary Market Name 328-3\"}', '{\"en\": null}', NULL, NULL, 11, 18, 328, 3, 5, 18, 328, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1639, '{\"en\": \"Temporary Market Name 328-4\"}', '{\"en\": null}', NULL, NULL, 11, 18, 328, 4, 5, 18, 328, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1640, '{\"en\": \"Temporary Market Name 328-5\"}', '{\"en\": null}', NULL, NULL, 11, 18, 328, 5, 5, 18, 328, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1641, '{\"en\": \"Temporary Market Name 329-1\"}', '{\"en\": null}', NULL, NULL, 11, 18, 329, 1, 5, 18, 329, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1642, '{\"en\": \"Temporary Market Name 329-2\"}', '{\"en\": null}', NULL, NULL, 11, 18, 329, 2, 5, 18, 329, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1643, '{\"en\": \"Temporary Market Name 329-3\"}', '{\"en\": null}', NULL, NULL, 11, 18, 329, 3, 5, 18, 329, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1644, '{\"en\": \"Temporary Market Name 329-4\"}', '{\"en\": null}', NULL, NULL, 11, 18, 329, 4, 5, 18, 329, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1645, '{\"en\": \"Temporary Market Name 329-5\"}', '{\"en\": null}', NULL, NULL, 11, 18, 329, 5, 5, 18, 329, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1646, '{\"en\": \"Temporary Market Name 330-1\"}', '{\"en\": null}', NULL, NULL, 11, 18, 330, 1, 5, 18, 330, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1647, '{\"en\": \"Temporary Market Name 330-2\"}', '{\"en\": null}', NULL, NULL, 11, 18, 330, 2, 5, 18, 330, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1648, '{\"en\": \"Temporary Market Name 330-3\"}', '{\"en\": null}', NULL, NULL, 11, 18, 330, 3, 5, 18, 330, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1649, '{\"en\": \"Temporary Market Name 330-4\"}', '{\"en\": null}', NULL, NULL, 11, 18, 330, 4, 5, 18, 330, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1650, '{\"en\": \"Temporary Market Name 330-5\"}', '{\"en\": null}', NULL, NULL, 11, 18, 330, 5, 5, 18, 330, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1651, '{\"en\": \"Temporary Market Name 331-1\"}', '{\"en\": null}', NULL, NULL, 11, 18, 331, 1, 5, 18, 331, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1652, '{\"en\": \"Temporary Market Name 331-2\"}', '{\"en\": null}', NULL, NULL, 11, 18, 331, 2, 5, 18, 331, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1653, '{\"en\": \"Temporary Market Name 331-3\"}', '{\"en\": null}', NULL, NULL, 11, 18, 331, 3, 5, 18, 331, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1654, '{\"en\": \"Temporary Market Name 331-4\"}', '{\"en\": null}', NULL, NULL, 11, 18, 331, 4, 5, 18, 331, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1655, '{\"en\": \"Temporary Market Name 331-5\"}', '{\"en\": null}', NULL, NULL, 11, 18, 331, 5, 5, 18, 331, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1656, '{\"en\": \"Temporary Market Name 332-1\"}', '{\"en\": null}', NULL, NULL, 11, 18, 332, 1, 5, 18, 332, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1657, '{\"en\": \"Temporary Market Name 332-2\"}', '{\"en\": null}', NULL, NULL, 11, 18, 332, 2, 5, 18, 332, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1658, '{\"en\": \"Temporary Market Name 332-3\"}', '{\"en\": null}', NULL, NULL, 11, 18, 332, 3, 5, 18, 332, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1659, '{\"en\": \"Temporary Market Name 332-4\"}', '{\"en\": null}', NULL, NULL, 11, 18, 332, 4, 5, 18, 332, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1660, '{\"en\": \"Temporary Market Name 332-5\"}', '{\"en\": null}', NULL, NULL, 11, 18, 332, 5, 5, 18, 332, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1661, '{\"en\": \"Temporary Market Name 333-1\"}', '{\"en\": null}', NULL, NULL, 11, 18, 333, 1, 5, 18, 333, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1662, '{\"en\": \"Temporary Market Name 333-2\"}', '{\"en\": null}', NULL, NULL, 11, 18, 333, 2, 5, 18, 333, 1, 1, 1, '2021-02-21 10:10:09', '2021-02-21 10:10:09'),
(1663, '{\"en\": \"Temporary Market Name 333-3\"}', '{\"en\": null}', NULL, NULL, 11, 18, 333, 3, 5, 18, 333, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1664, '{\"en\": \"Temporary Market Name 333-4\"}', '{\"en\": null}', NULL, NULL, 11, 18, 333, 4, 5, 18, 333, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1665, '{\"en\": \"Temporary Market Name 333-5\"}', '{\"en\": null}', NULL, NULL, 11, 18, 333, 5, 5, 18, 333, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1666, '{\"en\": \"Temporary Market Name 334-1\"}', '{\"en\": null}', NULL, NULL, 11, 18, 334, 1, 5, 18, 334, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1667, '{\"en\": \"Temporary Market Name 334-2\"}', '{\"en\": null}', NULL, NULL, 11, 18, 334, 2, 5, 18, 334, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1668, '{\"en\": \"Temporary Market Name 334-3\"}', '{\"en\": null}', NULL, NULL, 11, 18, 334, 3, 5, 18, 334, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1669, '{\"en\": \"Temporary Market Name 334-4\"}', '{\"en\": null}', NULL, NULL, 11, 18, 334, 4, 5, 18, 334, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1670, '{\"en\": \"Temporary Market Name 334-5\"}', '{\"en\": null}', NULL, NULL, 11, 18, 334, 5, 5, 18, 334, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1671, '{\"en\": \"Temporary Market Name 335-1\"}', '{\"en\": null}', NULL, NULL, 11, 18, 335, 1, 5, 18, 335, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1672, '{\"en\": \"Temporary Market Name 335-2\"}', '{\"en\": null}', NULL, NULL, 11, 18, 335, 2, 5, 18, 335, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1673, '{\"en\": \"Temporary Market Name 335-3\"}', '{\"en\": null}', NULL, NULL, 11, 18, 335, 3, 5, 18, 335, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1674, '{\"en\": \"Temporary Market Name 335-4\"}', '{\"en\": null}', NULL, NULL, 11, 18, 335, 4, 5, 18, 335, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1675, '{\"en\": \"Temporary Market Name 335-5\"}', '{\"en\": null}', NULL, NULL, 11, 18, 335, 5, 5, 18, 335, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1676, '{\"en\": \"Temporary Market Name 336-1\"}', '{\"en\": null}', NULL, NULL, 11, 19, 336, 1, 5, 19, 336, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1677, '{\"en\": \"Temporary Market Name 336-2\"}', '{\"en\": null}', NULL, NULL, 11, 19, 336, 2, 5, 19, 336, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1678, '{\"en\": \"Temporary Market Name 336-3\"}', '{\"en\": null}', NULL, NULL, 11, 19, 336, 3, 5, 19, 336, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1679, '{\"en\": \"Temporary Market Name 336-4\"}', '{\"en\": null}', NULL, NULL, 11, 19, 336, 4, 5, 19, 336, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1680, '{\"en\": \"Temporary Market Name 336-5\"}', '{\"en\": null}', NULL, NULL, 11, 19, 336, 5, 5, 19, 336, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1681, '{\"en\": \"Temporary Market Name 337-1\"}', '{\"en\": null}', NULL, NULL, 11, 19, 337, 1, 5, 19, 337, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1682, '{\"en\": \"Temporary Market Name 337-2\"}', '{\"en\": null}', NULL, NULL, 11, 19, 337, 2, 5, 19, 337, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1683, '{\"en\": \"Temporary Market Name 337-3\"}', '{\"en\": null}', NULL, NULL, 11, 19, 337, 3, 5, 19, 337, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1684, '{\"en\": \"Temporary Market Name 337-4\"}', '{\"en\": null}', NULL, NULL, 11, 19, 337, 4, 5, 19, 337, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1685, '{\"en\": \"Temporary Market Name 337-5\"}', '{\"en\": null}', NULL, NULL, 11, 19, 337, 5, 5, 19, 337, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1686, '{\"en\": \"Temporary Market Name 338-1\"}', '{\"en\": null}', NULL, NULL, 11, 19, 338, 1, 5, 19, 338, 1, 1, 1, '2021-02-21 10:10:10', '2021-02-21 10:10:10'),
(1687, '{\"en\": \"Temporary Market Name 338-2\"}', '{\"en\": null}', NULL, NULL, 11, 19, 338, 2, 5, 19, 338, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1688, '{\"en\": \"Temporary Market Name 338-3\"}', '{\"en\": null}', NULL, NULL, 11, 19, 338, 3, 5, 19, 338, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1689, '{\"en\": \"Temporary Market Name 338-4\"}', '{\"en\": null}', NULL, NULL, 11, 19, 338, 4, 5, 19, 338, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1690, '{\"en\": \"Temporary Market Name 338-5\"}', '{\"en\": null}', NULL, NULL, 11, 19, 338, 5, 5, 19, 338, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1691, '{\"en\": \"Temporary Market Name 339-1\"}', '{\"en\": null}', NULL, NULL, 11, 19, 339, 1, 5, 19, 339, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1692, '{\"en\": \"Temporary Market Name 339-2\"}', '{\"en\": null}', NULL, NULL, 11, 19, 339, 2, 5, 19, 339, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1693, '{\"en\": \"Temporary Market Name 339-3\"}', '{\"en\": null}', NULL, NULL, 11, 19, 339, 3, 5, 19, 339, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1694, '{\"en\": \"Temporary Market Name 339-4\"}', '{\"en\": null}', NULL, NULL, 11, 19, 339, 4, 5, 19, 339, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1695, '{\"en\": \"Temporary Market Name 339-5\"}', '{\"en\": null}', NULL, NULL, 11, 19, 339, 5, 5, 19, 339, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1696, '{\"en\": \"Temporary Market Name 340-1\"}', '{\"en\": null}', NULL, NULL, 11, 19, 340, 1, 5, 19, 340, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1697, '{\"en\": \"Temporary Market Name 340-2\"}', '{\"en\": null}', NULL, NULL, 11, 19, 340, 2, 5, 19, 340, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1698, '{\"en\": \"Temporary Market Name 340-3\"}', '{\"en\": null}', NULL, NULL, 11, 19, 340, 3, 5, 19, 340, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1699, '{\"en\": \"Temporary Market Name 340-4\"}', '{\"en\": null}', NULL, NULL, 11, 19, 340, 4, 5, 19, 340, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1700, '{\"en\": \"Temporary Market Name 340-5\"}', '{\"en\": null}', NULL, NULL, 11, 19, 340, 5, 5, 19, 340, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1701, '{\"en\": \"Temporary Market Name 341-1\"}', '{\"en\": null}', NULL, NULL, 11, 20, 341, 1, 5, 20, 341, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1702, '{\"en\": \"Temporary Market Name 341-2\"}', '{\"en\": null}', NULL, NULL, 11, 20, 341, 2, 5, 20, 341, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1703, '{\"en\": \"Temporary Market Name 341-3\"}', '{\"en\": null}', NULL, NULL, 11, 20, 341, 3, 5, 20, 341, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1704, '{\"en\": \"Temporary Market Name 341-4\"}', '{\"en\": null}', NULL, NULL, 11, 20, 341, 4, 5, 20, 341, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1705, '{\"en\": \"Temporary Market Name 341-5\"}', '{\"en\": null}', NULL, NULL, 11, 20, 341, 5, 5, 20, 341, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1706, '{\"en\": \"Temporary Market Name 342-1\"}', '{\"en\": null}', NULL, NULL, 11, 20, 342, 1, 5, 20, 342, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1707, '{\"en\": \"Temporary Market Name 342-2\"}', '{\"en\": null}', NULL, NULL, 11, 20, 342, 2, 5, 20, 342, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1708, '{\"en\": \"Temporary Market Name 342-3\"}', '{\"en\": null}', NULL, NULL, 11, 20, 342, 3, 5, 20, 342, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1709, '{\"en\": \"Temporary Market Name 342-4\"}', '{\"en\": null}', NULL, NULL, 11, 20, 342, 4, 5, 20, 342, 1, 1, 1, '2021-02-21 10:10:11', '2021-02-21 10:10:11'),
(1710, '{\"en\": \"Temporary Market Name 342-5\"}', '{\"en\": null}', NULL, NULL, 11, 20, 342, 5, 5, 20, 342, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1711, '{\"en\": \"Temporary Market Name 343-1\"}', '{\"en\": null}', NULL, NULL, 11, 20, 343, 1, 5, 20, 343, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1712, '{\"en\": \"Temporary Market Name 343-2\"}', '{\"en\": null}', NULL, NULL, 11, 20, 343, 2, 5, 20, 343, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1713, '{\"en\": \"Temporary Market Name 343-3\"}', '{\"en\": null}', NULL, NULL, 11, 20, 343, 3, 5, 20, 343, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1714, '{\"en\": \"Temporary Market Name 343-4\"}', '{\"en\": null}', NULL, NULL, 11, 20, 343, 4, 5, 20, 343, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1715, '{\"en\": \"Temporary Market Name 343-5\"}', '{\"en\": null}', NULL, NULL, 11, 20, 343, 5, 5, 20, 343, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1716, '{\"en\": \"Temporary Market Name 344-1\"}', '{\"en\": null}', NULL, NULL, 11, 20, 344, 1, 5, 20, 344, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1717, '{\"en\": \"Temporary Market Name 344-2\"}', '{\"en\": null}', NULL, NULL, 11, 20, 344, 2, 5, 20, 344, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1718, '{\"en\": \"Temporary Market Name 344-3\"}', '{\"en\": null}', NULL, NULL, 11, 20, 344, 3, 5, 20, 344, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1719, '{\"en\": \"Temporary Market Name 344-4\"}', '{\"en\": null}', NULL, NULL, 11, 20, 344, 4, 5, 20, 344, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1720, '{\"en\": \"Temporary Market Name 344-5\"}', '{\"en\": null}', NULL, NULL, 11, 20, 344, 5, 5, 20, 344, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1721, '{\"en\": \"Temporary Market Name 345-1\"}', '{\"en\": null}', NULL, NULL, 11, 20, 345, 1, 5, 20, 345, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1722, '{\"en\": \"Temporary Market Name 345-2\"}', '{\"en\": null}', NULL, NULL, 11, 20, 345, 2, 5, 20, 345, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1723, '{\"en\": \"Temporary Market Name 345-3\"}', '{\"en\": null}', NULL, NULL, 11, 20, 345, 3, 5, 20, 345, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1724, '{\"en\": \"Temporary Market Name 345-4\"}', '{\"en\": null}', NULL, NULL, 11, 20, 345, 4, 5, 20, 345, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1725, '{\"en\": \"Temporary Market Name 345-5\"}', '{\"en\": null}', NULL, NULL, 11, 20, 345, 5, 5, 20, 345, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1726, '{\"en\": \"Temporary Market Name 346-1\"}', '{\"en\": null}', NULL, NULL, 11, 20, 346, 1, 5, 20, 346, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1727, '{\"en\": \"Temporary Market Name 346-2\"}', '{\"en\": null}', NULL, NULL, 11, 20, 346, 2, 5, 20, 346, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1728, '{\"en\": \"Temporary Market Name 346-3\"}', '{\"en\": null}', NULL, NULL, 11, 20, 346, 3, 5, 20, 346, 1, 1, 1, '2021-02-21 10:10:12', '2021-02-21 10:10:12'),
(1729, '{\"en\": \"Temporary Market Name 346-4\"}', '{\"en\": null}', NULL, NULL, 11, 20, 346, 4, 5, 20, 346, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1730, '{\"en\": \"Temporary Market Name 346-5\"}', '{\"en\": null}', NULL, NULL, 11, 20, 346, 5, 5, 20, 346, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1731, '{\"en\": \"Temporary Market Name 347-1\"}', '{\"en\": null}', NULL, NULL, 11, 20, 347, 1, 5, 20, 347, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1732, '{\"en\": \"Temporary Market Name 347-2\"}', '{\"en\": null}', NULL, NULL, 11, 20, 347, 2, 5, 20, 347, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1733, '{\"en\": \"Temporary Market Name 347-3\"}', '{\"en\": null}', NULL, NULL, 11, 20, 347, 3, 5, 20, 347, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1734, '{\"en\": \"Temporary Market Name 347-4\"}', '{\"en\": null}', NULL, NULL, 11, 20, 347, 4, 5, 20, 347, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1735, '{\"en\": \"Temporary Market Name 347-5\"}', '{\"en\": null}', NULL, NULL, 11, 20, 347, 5, 5, 20, 347, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1736, '{\"en\": \"Temporary Market Name 348-1\"}', '{\"en\": null}', NULL, NULL, 11, 20, 348, 1, 5, 20, 348, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1737, '{\"en\": \"Temporary Market Name 348-2\"}', '{\"en\": null}', NULL, NULL, 11, 20, 348, 2, 5, 20, 348, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1738, '{\"en\": \"Temporary Market Name 348-3\"}', '{\"en\": null}', NULL, NULL, 11, 20, 348, 3, 5, 20, 348, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1739, '{\"en\": \"Temporary Market Name 348-4\"}', '{\"en\": null}', NULL, NULL, 11, 20, 348, 4, 5, 20, 348, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1740, '{\"en\": \"Temporary Market Name 348-5\"}', '{\"en\": null}', NULL, NULL, 11, 20, 348, 5, 5, 20, 348, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1741, '{\"en\": \"Temporary Market Name 349-1\"}', '{\"en\": null}', NULL, NULL, 11, 20, 349, 1, 5, 20, 349, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1742, '{\"en\": \"Temporary Market Name 349-2\"}', '{\"en\": null}', NULL, NULL, 11, 20, 349, 2, 5, 20, 349, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1743, '{\"en\": \"Temporary Market Name 349-3\"}', '{\"en\": null}', NULL, NULL, 11, 20, 349, 3, 5, 20, 349, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1744, '{\"en\": \"Temporary Market Name 349-4\"}', '{\"en\": null}', NULL, NULL, 11, 20, 349, 4, 5, 20, 349, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1745, '{\"en\": \"Temporary Market Name 349-5\"}', '{\"en\": null}', NULL, NULL, 11, 20, 349, 5, 5, 20, 349, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1746, '{\"en\": \"Temporary Market Name 350-1\"}', '{\"en\": null}', NULL, NULL, 11, 20, 350, 1, 5, 20, 350, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1747, '{\"en\": \"Temporary Market Name 350-2\"}', '{\"en\": null}', NULL, NULL, 11, 20, 350, 2, 5, 20, 350, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1748, '{\"en\": \"Temporary Market Name 350-3\"}', '{\"en\": null}', NULL, NULL, 11, 20, 350, 3, 5, 20, 350, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1749, '{\"en\": \"Temporary Market Name 350-4\"}', '{\"en\": null}', NULL, NULL, 11, 20, 350, 4, 5, 20, 350, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1750, '{\"en\": \"Temporary Market Name 350-5\"}', '{\"en\": null}', NULL, NULL, 11, 20, 350, 5, 5, 20, 350, 1, 1, 1, '2021-02-21 10:10:13', '2021-02-21 10:10:13'),
(1751, '{\"en\": \"Temporary Market Name 351-1\"}', '{\"en\": null}', NULL, NULL, 11, 20, 351, 1, 5, 20, 351, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1752, '{\"en\": \"Temporary Market Name 351-2\"}', '{\"en\": null}', NULL, NULL, 11, 20, 351, 2, 5, 20, 351, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1753, '{\"en\": \"Temporary Market Name 351-3\"}', '{\"en\": null}', NULL, NULL, 11, 20, 351, 3, 5, 20, 351, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1754, '{\"en\": \"Temporary Market Name 351-4\"}', '{\"en\": null}', NULL, NULL, 11, 20, 351, 4, 5, 20, 351, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1755, '{\"en\": \"Temporary Market Name 351-5\"}', '{\"en\": null}', NULL, NULL, 11, 20, 351, 5, 5, 20, 351, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1756, '{\"en\": \"Temporary Market Name 352-1\"}', '{\"en\": null}', NULL, NULL, 11, 21, 352, 1, 5, 21, 352, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1757, '{\"en\": \"Temporary Market Name 352-2\"}', '{\"en\": null}', NULL, NULL, 11, 21, 352, 2, 5, 21, 352, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1758, '{\"en\": \"Temporary Market Name 352-3\"}', '{\"en\": null}', NULL, NULL, 11, 21, 352, 3, 5, 21, 352, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1759, '{\"en\": \"Temporary Market Name 352-4\"}', '{\"en\": null}', NULL, NULL, 11, 21, 352, 4, 5, 21, 352, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1760, '{\"en\": \"Temporary Market Name 352-5\"}', '{\"en\": null}', NULL, NULL, 11, 21, 352, 5, 5, 21, 352, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1761, '{\"en\": \"Temporary Market Name 353-1\"}', '{\"en\": null}', NULL, NULL, 11, 21, 353, 1, 5, 21, 353, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1762, '{\"en\": \"Temporary Market Name 353-2\"}', '{\"en\": null}', NULL, NULL, 11, 21, 353, 2, 5, 21, 353, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1763, '{\"en\": \"Temporary Market Name 353-3\"}', '{\"en\": null}', NULL, NULL, 11, 21, 353, 3, 5, 21, 353, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1764, '{\"en\": \"Temporary Market Name 353-4\"}', '{\"en\": null}', NULL, NULL, 11, 21, 353, 4, 5, 21, 353, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1765, '{\"en\": \"Temporary Market Name 353-5\"}', '{\"en\": null}', NULL, NULL, 11, 21, 353, 5, 5, 21, 353, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1766, '{\"en\": \"Temporary Market Name 354-1\"}', '{\"en\": null}', NULL, NULL, 11, 21, 354, 1, 5, 21, 354, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1767, '{\"en\": \"Temporary Market Name 354-2\"}', '{\"en\": null}', NULL, NULL, 11, 21, 354, 2, 5, 21, 354, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1768, '{\"en\": \"Temporary Market Name 354-3\"}', '{\"en\": null}', NULL, NULL, 11, 21, 354, 3, 5, 21, 354, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1769, '{\"en\": \"Temporary Market Name 354-4\"}', '{\"en\": null}', NULL, NULL, 11, 21, 354, 4, 5, 21, 354, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1770, '{\"en\": \"Temporary Market Name 354-5\"}', '{\"en\": null}', NULL, NULL, 11, 21, 354, 5, 5, 21, 354, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1771, '{\"en\": \"Temporary Market Name 355-1\"}', '{\"en\": null}', NULL, NULL, 11, 21, 355, 1, 5, 21, 355, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1772, '{\"en\": \"Temporary Market Name 355-2\"}', '{\"en\": null}', NULL, NULL, 11, 21, 355, 2, 5, 21, 355, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1773, '{\"en\": \"Temporary Market Name 355-3\"}', '{\"en\": null}', NULL, NULL, 11, 21, 355, 3, 5, 21, 355, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1774, '{\"en\": \"Temporary Market Name 355-4\"}', '{\"en\": null}', NULL, NULL, 11, 21, 355, 4, 5, 21, 355, 1, 1, 1, '2021-02-21 10:10:14', '2021-02-21 10:10:14'),
(1775, '{\"en\": \"Temporary Market Name 355-5\"}', '{\"en\": null}', NULL, NULL, 11, 21, 355, 5, 5, 21, 355, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1776, '{\"en\": \"Temporary Market Name 356-1\"}', '{\"en\": null}', NULL, NULL, 11, 21, 356, 1, 5, 21, 356, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1777, '{\"en\": \"Temporary Market Name 356-2\"}', '{\"en\": null}', NULL, NULL, 11, 21, 356, 2, 5, 21, 356, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1778, '{\"en\": \"Temporary Market Name 356-3\"}', '{\"en\": null}', NULL, NULL, 11, 21, 356, 3, 5, 21, 356, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1779, '{\"en\": \"Temporary Market Name 356-4\"}', '{\"en\": null}', NULL, NULL, 11, 21, 356, 4, 5, 21, 356, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1780, '{\"en\": \"Temporary Market Name 356-5\"}', '{\"en\": null}', NULL, NULL, 11, 21, 356, 5, 5, 21, 356, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1781, '{\"en\": \"Temporary Market Name 357-1\"}', '{\"en\": null}', NULL, NULL, 11, 21, 357, 1, 5, 21, 357, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1782, '{\"en\": \"Temporary Market Name 357-2\"}', '{\"en\": null}', NULL, NULL, 11, 21, 357, 2, 5, 21, 357, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1783, '{\"en\": \"Temporary Market Name 357-3\"}', '{\"en\": null}', NULL, NULL, 11, 21, 357, 3, 5, 21, 357, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1784, '{\"en\": \"Temporary Market Name 357-4\"}', '{\"en\": null}', NULL, NULL, 11, 21, 357, 4, 5, 21, 357, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1785, '{\"en\": \"Temporary Market Name 357-5\"}', '{\"en\": null}', NULL, NULL, 11, 21, 357, 5, 5, 21, 357, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1786, '{\"en\": \"Temporary Market Name 358-1\"}', '{\"en\": null}', NULL, NULL, 11, 22, 358, 1, 5, 22, 358, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1787, '{\"en\": \"Temporary Market Name 358-2\"}', '{\"en\": null}', NULL, NULL, 11, 22, 358, 2, 5, 22, 358, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1788, '{\"en\": \"Temporary Market Name 358-3\"}', '{\"en\": null}', NULL, NULL, 11, 22, 358, 3, 5, 22, 358, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1789, '{\"en\": \"Temporary Market Name 358-4\"}', '{\"en\": null}', NULL, NULL, 11, 22, 358, 4, 5, 22, 358, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1790, '{\"en\": \"Temporary Market Name 358-5\"}', '{\"en\": null}', NULL, NULL, 11, 22, 358, 5, 5, 22, 358, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1791, '{\"en\": \"Temporary Market Name 359-1\"}', '{\"en\": null}', NULL, NULL, 11, 22, 359, 1, 5, 22, 359, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1792, '{\"en\": \"Temporary Market Name 359-2\"}', '{\"en\": null}', NULL, NULL, 11, 22, 359, 2, 5, 22, 359, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1793, '{\"en\": \"Temporary Market Name 359-3\"}', '{\"en\": null}', NULL, NULL, 11, 22, 359, 3, 5, 22, 359, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1794, '{\"en\": \"Temporary Market Name 359-4\"}', '{\"en\": null}', NULL, NULL, 11, 22, 359, 4, 5, 22, 359, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1795, '{\"en\": \"Temporary Market Name 359-5\"}', '{\"en\": null}', NULL, NULL, 11, 22, 359, 5, 5, 22, 359, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1796, '{\"en\": \"Temporary Market Name 360-1\"}', '{\"en\": null}', NULL, NULL, 11, 22, 360, 1, 5, 22, 360, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1797, '{\"en\": \"Temporary Market Name 360-2\"}', '{\"en\": null}', NULL, NULL, 11, 22, 360, 2, 5, 22, 360, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1798, '{\"en\": \"Temporary Market Name 360-3\"}', '{\"en\": null}', NULL, NULL, 11, 22, 360, 3, 5, 22, 360, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1799, '{\"en\": \"Temporary Market Name 360-4\"}', '{\"en\": null}', NULL, NULL, 11, 22, 360, 4, 5, 22, 360, 1, 1, 1, '2021-02-21 10:10:15', '2021-02-21 10:10:15'),
(1800, '{\"en\": \"Temporary Market Name 360-5\"}', '{\"en\": null}', NULL, NULL, 11, 22, 360, 5, 5, 22, 360, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1801, '{\"en\": \"Temporary Market Name 361-1\"}', '{\"en\": null}', NULL, NULL, 11, 22, 361, 1, 5, 22, 361, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1802, '{\"en\": \"Temporary Market Name 361-2\"}', '{\"en\": null}', NULL, NULL, 11, 22, 361, 2, 5, 22, 361, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1803, '{\"en\": \"Temporary Market Name 361-3\"}', '{\"en\": null}', NULL, NULL, 11, 22, 361, 3, 5, 22, 361, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1804, '{\"en\": \"Temporary Market Name 361-4\"}', '{\"en\": null}', NULL, NULL, 11, 22, 361, 4, 5, 22, 361, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1805, '{\"en\": \"Temporary Market Name 361-5\"}', '{\"en\": null}', NULL, NULL, 11, 22, 361, 5, 5, 22, 361, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1806, '{\"en\": \"Temporary Market Name 362-1\"}', '{\"en\": null}', NULL, NULL, 11, 22, 362, 1, 5, 22, 362, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1807, '{\"en\": \"Temporary Market Name 362-2\"}', '{\"en\": null}', NULL, NULL, 11, 22, 362, 2, 5, 22, 362, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1808, '{\"en\": \"Temporary Market Name 362-3\"}', '{\"en\": null}', NULL, NULL, 11, 22, 362, 3, 5, 22, 362, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1809, '{\"en\": \"Temporary Market Name 362-4\"}', '{\"en\": null}', NULL, NULL, 11, 22, 362, 4, 5, 22, 362, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1810, '{\"en\": \"Temporary Market Name 362-5\"}', '{\"en\": null}', NULL, NULL, 11, 22, 362, 5, 5, 22, 362, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1811, '{\"en\": \"Temporary Market Name 363-1\"}', '{\"en\": null}', NULL, NULL, 11, 23, 363, 1, 5, 23, 363, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1812, '{\"en\": \"Temporary Market Name 363-2\"}', '{\"en\": null}', NULL, NULL, 11, 23, 363, 2, 5, 23, 363, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1813, '{\"en\": \"Temporary Market Name 363-3\"}', '{\"en\": null}', NULL, NULL, 11, 23, 363, 3, 5, 23, 363, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1814, '{\"en\": \"Temporary Market Name 363-4\"}', '{\"en\": null}', NULL, NULL, 11, 23, 363, 4, 5, 23, 363, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1815, '{\"en\": \"Temporary Market Name 363-5\"}', '{\"en\": null}', NULL, NULL, 11, 23, 363, 5, 5, 23, 363, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1816, '{\"en\": \"Temporary Market Name 364-1\"}', '{\"en\": null}', NULL, NULL, 11, 23, 364, 1, 5, 23, 364, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1817, '{\"en\": \"Temporary Market Name 364-2\"}', '{\"en\": null}', NULL, NULL, 11, 23, 364, 2, 5, 23, 364, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1818, '{\"en\": \"Temporary Market Name 364-3\"}', '{\"en\": null}', NULL, NULL, 11, 23, 364, 3, 5, 23, 364, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1819, '{\"en\": \"Temporary Market Name 364-4\"}', '{\"en\": null}', NULL, NULL, 11, 23, 364, 4, 5, 23, 364, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1820, '{\"en\": \"Temporary Market Name 364-5\"}', '{\"en\": null}', NULL, NULL, 11, 23, 364, 5, 5, 23, 364, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1821, '{\"en\": \"Temporary Market Name 365-1\"}', '{\"en\": null}', NULL, NULL, 11, 23, 365, 1, 5, 23, 365, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1822, '{\"en\": \"Temporary Market Name 365-2\"}', '{\"en\": null}', NULL, NULL, 11, 23, 365, 2, 5, 23, 365, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1823, '{\"en\": \"Temporary Market Name 365-3\"}', '{\"en\": null}', NULL, NULL, 11, 23, 365, 3, 5, 23, 365, 1, 1, 1, '2021-02-21 10:10:16', '2021-02-21 10:10:16'),
(1824, '{\"en\": \"Temporary Market Name 365-4\"}', '{\"en\": null}', NULL, NULL, 11, 23, 365, 4, 5, 23, 365, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1825, '{\"en\": \"Temporary Market Name 365-5\"}', '{\"en\": null}', NULL, NULL, 11, 23, 365, 5, 5, 23, 365, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1826, '{\"en\": \"Temporary Market Name 366-1\"}', '{\"en\": null}', NULL, NULL, 11, 23, 366, 1, 5, 23, 366, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1827, '{\"en\": \"Temporary Market Name 366-2\"}', '{\"en\": null}', NULL, NULL, 11, 23, 366, 2, 5, 23, 366, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1828, '{\"en\": \"Temporary Market Name 366-3\"}', '{\"en\": null}', NULL, NULL, 11, 23, 366, 3, 5, 23, 366, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1829, '{\"en\": \"Temporary Market Name 366-4\"}', '{\"en\": null}', NULL, NULL, 11, 23, 366, 4, 5, 23, 366, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1830, '{\"en\": \"Temporary Market Name 366-5\"}', '{\"en\": null}', NULL, NULL, 11, 23, 366, 5, 5, 23, 366, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1831, '{\"en\": \"Temporary Market Name 367-1\"}', '{\"en\": null}', NULL, NULL, 11, 23, 367, 1, 5, 23, 367, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1832, '{\"en\": \"Temporary Market Name 367-2\"}', '{\"en\": null}', NULL, NULL, 11, 23, 367, 2, 5, 23, 367, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1833, '{\"en\": \"Temporary Market Name 367-3\"}', '{\"en\": null}', NULL, NULL, 11, 23, 367, 3, 5, 23, 367, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1834, '{\"en\": \"Temporary Market Name 367-4\"}', '{\"en\": null}', NULL, NULL, 11, 23, 367, 4, 5, 23, 367, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1835, '{\"en\": \"Temporary Market Name 367-5\"}', '{\"en\": null}', NULL, NULL, 11, 23, 367, 5, 5, 23, 367, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1836, '{\"en\": \"Temporary Market Name 368-1\"}', '{\"en\": null}', NULL, NULL, 11, 23, 368, 1, 5, 23, 368, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1837, '{\"en\": \"Temporary Market Name 368-2\"}', '{\"en\": null}', NULL, NULL, 11, 23, 368, 2, 5, 23, 368, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1838, '{\"en\": \"Temporary Market Name 368-3\"}', '{\"en\": null}', NULL, NULL, 11, 23, 368, 3, 5, 23, 368, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1839, '{\"en\": \"Temporary Market Name 368-4\"}', '{\"en\": null}', NULL, NULL, 11, 23, 368, 4, 5, 23, 368, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1840, '{\"en\": \"Temporary Market Name 368-5\"}', '{\"en\": null}', NULL, NULL, 11, 23, 368, 5, 5, 23, 368, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1841, '{\"en\": \"Temporary Market Name 369-1\"}', '{\"en\": null}', NULL, NULL, 11, 23, 369, 1, 5, 23, 369, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1842, '{\"en\": \"Temporary Market Name 369-2\"}', '{\"en\": null}', NULL, NULL, 11, 23, 369, 2, 5, 23, 369, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1843, '{\"en\": \"Temporary Market Name 369-3\"}', '{\"en\": null}', NULL, NULL, 11, 23, 369, 3, 5, 23, 369, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17');
INSERT INTO `markets` (`id`, `name`, `address`, `lat`, `lng`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1844, '{\"en\": \"Temporary Market Name 369-4\"}', '{\"en\": null}', NULL, NULL, 11, 23, 369, 4, 5, 23, 369, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1845, '{\"en\": \"Temporary Market Name 369-5\"}', '{\"en\": null}', NULL, NULL, 11, 23, 369, 5, 5, 23, 369, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1846, '{\"en\": \"Temporary Market Name 370-1\"}', '{\"en\": null}', NULL, NULL, 11, 23, 370, 1, 5, 23, 370, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1847, '{\"en\": \"Temporary Market Name 370-2\"}', '{\"en\": null}', NULL, NULL, 11, 23, 370, 2, 5, 23, 370, 1, 1, 1, '2021-02-21 10:10:17', '2021-02-21 10:10:17'),
(1848, '{\"en\": \"Temporary Market Name 370-3\"}', '{\"en\": null}', NULL, NULL, 11, 23, 370, 3, 5, 23, 370, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1849, '{\"en\": \"Temporary Market Name 370-4\"}', '{\"en\": null}', NULL, NULL, 11, 23, 370, 4, 5, 23, 370, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1850, '{\"en\": \"Temporary Market Name 370-5\"}', '{\"en\": null}', NULL, NULL, 11, 23, 370, 5, 5, 23, 370, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1851, '{\"en\": \"Temporary Market Name 371-1\"}', '{\"en\": null}', NULL, NULL, 11, 23, 371, 1, 5, 23, 371, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1852, '{\"en\": \"Temporary Market Name 371-2\"}', '{\"en\": null}', NULL, NULL, 11, 23, 371, 2, 5, 23, 371, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1853, '{\"en\": \"Temporary Market Name 371-3\"}', '{\"en\": null}', NULL, NULL, 11, 23, 371, 3, 5, 23, 371, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1854, '{\"en\": \"Temporary Market Name 371-4\"}', '{\"en\": null}', NULL, NULL, 11, 23, 371, 4, 5, 23, 371, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1855, '{\"en\": \"Temporary Market Name 371-5\"}', '{\"en\": null}', NULL, NULL, 11, 23, 371, 5, 5, 23, 371, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1856, '{\"en\": \"Temporary Market Name 372-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 372, 1, 5, 24, 372, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1857, '{\"en\": \"Temporary Market Name 372-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 372, 2, 5, 24, 372, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1858, '{\"en\": \"Temporary Market Name 372-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 372, 3, 5, 24, 372, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1859, '{\"en\": \"Temporary Market Name 372-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 372, 4, 5, 24, 372, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1860, '{\"en\": \"Temporary Market Name 372-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 372, 5, 5, 24, 372, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1861, '{\"en\": \"Temporary Market Name 373-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 373, 1, 5, 24, 373, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1862, '{\"en\": \"Temporary Market Name 373-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 373, 2, 5, 24, 373, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1863, '{\"en\": \"Temporary Market Name 373-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 373, 3, 5, 24, 373, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1864, '{\"en\": \"Temporary Market Name 373-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 373, 4, 5, 24, 373, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1865, '{\"en\": \"Temporary Market Name 373-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 373, 5, 5, 24, 373, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1866, '{\"en\": \"Temporary Market Name 374-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 374, 1, 5, 24, 374, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1867, '{\"en\": \"Temporary Market Name 374-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 374, 2, 5, 24, 374, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1868, '{\"en\": \"Temporary Market Name 374-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 374, 3, 5, 24, 374, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1869, '{\"en\": \"Temporary Market Name 374-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 374, 4, 5, 24, 374, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1870, '{\"en\": \"Temporary Market Name 374-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 374, 5, 5, 24, 374, 1, 1, 1, '2021-02-21 10:10:18', '2021-02-21 10:10:18'),
(1871, '{\"en\": \"Temporary Market Name 375-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 375, 1, 5, 24, 375, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1872, '{\"en\": \"Temporary Market Name 375-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 375, 2, 5, 24, 375, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1873, '{\"en\": \"Temporary Market Name 375-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 375, 3, 5, 24, 375, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1874, '{\"en\": \"Temporary Market Name 375-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 375, 4, 5, 24, 375, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1875, '{\"en\": \"Temporary Market Name 375-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 375, 5, 5, 24, 375, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1876, '{\"en\": \"Temporary Market Name 376-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 376, 1, 5, 24, 376, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1877, '{\"en\": \"Temporary Market Name 376-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 376, 2, 5, 24, 376, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1878, '{\"en\": \"Temporary Market Name 376-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 376, 3, 5, 24, 376, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1879, '{\"en\": \"Temporary Market Name 376-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 376, 4, 5, 24, 376, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1880, '{\"en\": \"Temporary Market Name 376-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 376, 5, 5, 24, 376, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1881, '{\"en\": \"Temporary Market Name 377-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 377, 1, 5, 24, 377, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1882, '{\"en\": \"Temporary Market Name 377-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 377, 2, 5, 24, 377, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1883, '{\"en\": \"Temporary Market Name 377-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 377, 3, 5, 24, 377, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1884, '{\"en\": \"Temporary Market Name 377-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 377, 4, 5, 24, 377, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1885, '{\"en\": \"Temporary Market Name 377-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 377, 5, 5, 24, 377, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1886, '{\"en\": \"Temporary Market Name 378-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 378, 1, 5, 24, 378, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1887, '{\"en\": \"Temporary Market Name 378-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 378, 2, 5, 24, 378, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1888, '{\"en\": \"Temporary Market Name 378-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 378, 3, 5, 24, 378, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1889, '{\"en\": \"Temporary Market Name 378-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 378, 4, 5, 24, 378, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1890, '{\"en\": \"Temporary Market Name 378-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 378, 5, 5, 24, 378, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1891, '{\"en\": \"Temporary Market Name 379-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 379, 1, 5, 24, 379, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1892, '{\"en\": \"Temporary Market Name 379-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 379, 2, 5, 24, 379, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1893, '{\"en\": \"Temporary Market Name 379-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 379, 3, 5, 24, 379, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1894, '{\"en\": \"Temporary Market Name 379-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 379, 4, 5, 24, 379, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1895, '{\"en\": \"Temporary Market Name 379-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 379, 5, 5, 24, 379, 1, 1, 1, '2021-02-21 10:10:19', '2021-02-21 10:10:19'),
(1896, '{\"en\": \"Temporary Market Name 380-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 380, 1, 5, 24, 380, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1897, '{\"en\": \"Temporary Market Name 380-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 380, 2, 5, 24, 380, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1898, '{\"en\": \"Temporary Market Name 380-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 380, 3, 5, 24, 380, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1899, '{\"en\": \"Temporary Market Name 380-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 380, 4, 5, 24, 380, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1900, '{\"en\": \"Temporary Market Name 380-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 380, 5, 5, 24, 380, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1901, '{\"en\": \"Temporary Market Name 381-1\"}', '{\"en\": null}', NULL, NULL, 11, 25, 381, 1, 5, 25, 381, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1902, '{\"en\": \"Temporary Market Name 381-2\"}', '{\"en\": null}', NULL, NULL, 11, 25, 381, 2, 5, 25, 381, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1903, '{\"en\": \"Temporary Market Name 381-3\"}', '{\"en\": null}', NULL, NULL, 11, 25, 381, 3, 5, 25, 381, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1904, '{\"en\": \"Temporary Market Name 381-4\"}', '{\"en\": null}', NULL, NULL, 11, 25, 381, 4, 5, 25, 381, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1905, '{\"en\": \"Temporary Market Name 381-5\"}', '{\"en\": null}', NULL, NULL, 11, 25, 381, 5, 5, 25, 381, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1906, '{\"en\": \"Temporary Market Name 382-1\"}', '{\"en\": null}', NULL, NULL, 11, 25, 382, 1, 5, 25, 382, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1907, '{\"en\": \"Temporary Market Name 382-2\"}', '{\"en\": null}', NULL, NULL, 11, 25, 382, 2, 5, 25, 382, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1908, '{\"en\": \"Temporary Market Name 382-3\"}', '{\"en\": null}', NULL, NULL, 11, 25, 382, 3, 5, 25, 382, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1909, '{\"en\": \"Temporary Market Name 382-4\"}', '{\"en\": null}', NULL, NULL, 11, 25, 382, 4, 5, 25, 382, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1910, '{\"en\": \"Temporary Market Name 382-5\"}', '{\"en\": null}', NULL, NULL, 11, 25, 382, 5, 5, 25, 382, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1911, '{\"en\": \"Temporary Market Name 383-1\"}', '{\"en\": null}', NULL, NULL, 11, 25, 383, 1, 5, 25, 383, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1912, '{\"en\": \"Temporary Market Name 383-2\"}', '{\"en\": null}', NULL, NULL, 11, 25, 383, 2, 5, 25, 383, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1913, '{\"en\": \"Temporary Market Name 383-3\"}', '{\"en\": null}', NULL, NULL, 11, 25, 383, 3, 5, 25, 383, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1914, '{\"en\": \"Temporary Market Name 383-4\"}', '{\"en\": null}', NULL, NULL, 11, 25, 383, 4, 5, 25, 383, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1915, '{\"en\": \"Temporary Market Name 383-5\"}', '{\"en\": null}', NULL, NULL, 11, 25, 383, 5, 5, 25, 383, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1916, '{\"en\": \"Temporary Market Name 384-1\"}', '{\"en\": null}', NULL, NULL, 11, 25, 384, 1, 5, 25, 384, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1917, '{\"en\": \"Temporary Market Name 384-2\"}', '{\"en\": null}', NULL, NULL, 11, 25, 384, 2, 5, 25, 384, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1918, '{\"en\": \"Temporary Market Name 384-3\"}', '{\"en\": null}', NULL, NULL, 11, 25, 384, 3, 5, 25, 384, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1919, '{\"en\": \"Temporary Market Name 384-4\"}', '{\"en\": null}', NULL, NULL, 11, 25, 384, 4, 5, 25, 384, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1920, '{\"en\": \"Temporary Market Name 384-5\"}', '{\"en\": null}', NULL, NULL, 11, 25, 384, 5, 5, 25, 384, 1, 1, 1, '2021-02-21 10:10:20', '2021-02-21 10:10:20'),
(1921, '{\"en\": \"Temporary Market Name 385-1\"}', '{\"en\": null}', NULL, NULL, 11, 25, 385, 1, 5, 25, 385, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1922, '{\"en\": \"Temporary Market Name 385-2\"}', '{\"en\": null}', NULL, NULL, 11, 25, 385, 2, 5, 25, 385, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1923, '{\"en\": \"Temporary Market Name 385-3\"}', '{\"en\": null}', NULL, NULL, 11, 25, 385, 3, 5, 25, 385, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1924, '{\"en\": \"Temporary Market Name 385-4\"}', '{\"en\": null}', NULL, NULL, 11, 25, 385, 4, 5, 25, 385, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1925, '{\"en\": \"Temporary Market Name 385-5\"}', '{\"en\": null}', NULL, NULL, 11, 25, 385, 5, 5, 25, 385, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1926, '{\"en\": \"Temporary Market Name 386-1\"}', '{\"en\": null}', NULL, NULL, 11, 25, 386, 1, 5, 25, 386, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1927, '{\"en\": \"Temporary Market Name 386-2\"}', '{\"en\": null}', NULL, NULL, 11, 25, 386, 2, 5, 25, 386, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1928, '{\"en\": \"Temporary Market Name 386-3\"}', '{\"en\": null}', NULL, NULL, 11, 25, 386, 3, 5, 25, 386, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1929, '{\"en\": \"Temporary Market Name 386-4\"}', '{\"en\": null}', NULL, NULL, 11, 25, 386, 4, 5, 25, 386, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1930, '{\"en\": \"Temporary Market Name 386-5\"}', '{\"en\": null}', NULL, NULL, 11, 25, 386, 5, 5, 25, 386, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1931, '{\"en\": \"Temporary Market Name 387-1\"}', '{\"en\": null}', NULL, NULL, 11, 25, 387, 1, 5, 25, 387, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1932, '{\"en\": \"Temporary Market Name 387-2\"}', '{\"en\": null}', NULL, NULL, 11, 25, 387, 2, 5, 25, 387, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1933, '{\"en\": \"Temporary Market Name 387-3\"}', '{\"en\": null}', NULL, NULL, 11, 25, 387, 3, 5, 25, 387, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1934, '{\"en\": \"Temporary Market Name 387-4\"}', '{\"en\": null}', NULL, NULL, 11, 25, 387, 4, 5, 25, 387, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1935, '{\"en\": \"Temporary Market Name 387-5\"}', '{\"en\": null}', NULL, NULL, 11, 25, 387, 5, 5, 25, 387, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1936, '{\"en\": \"Temporary Market Name 388-1\"}', '{\"en\": null}', NULL, NULL, 11, 25, 388, 1, 5, 25, 388, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1937, '{\"en\": \"Temporary Market Name 388-2\"}', '{\"en\": null}', NULL, NULL, 11, 25, 388, 2, 5, 25, 388, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1938, '{\"en\": \"Temporary Market Name 388-3\"}', '{\"en\": null}', NULL, NULL, 11, 25, 388, 3, 5, 25, 388, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1939, '{\"en\": \"Temporary Market Name 388-4\"}', '{\"en\": null}', NULL, NULL, 11, 25, 388, 4, 5, 25, 388, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1940, '{\"en\": \"Temporary Market Name 388-5\"}', '{\"en\": null}', NULL, NULL, 11, 25, 388, 5, 5, 25, 388, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1941, '{\"en\": \"Temporary Market Name 389-1\"}', '{\"en\": null}', NULL, NULL, 11, 25, 389, 1, 5, 25, 389, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1942, '{\"en\": \"Temporary Market Name 389-2\"}', '{\"en\": null}', NULL, NULL, 11, 25, 389, 2, 5, 25, 389, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1943, '{\"en\": \"Temporary Market Name 389-3\"}', '{\"en\": null}', NULL, NULL, 11, 25, 389, 3, 5, 25, 389, 1, 1, 1, '2021-02-21 10:10:21', '2021-02-21 10:10:21'),
(1944, '{\"en\": \"Temporary Market Name 389-4\"}', '{\"en\": null}', NULL, NULL, 11, 25, 389, 4, 5, 25, 389, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1945, '{\"en\": \"Temporary Market Name 389-5\"}', '{\"en\": null}', NULL, NULL, 11, 25, 389, 5, 5, 25, 389, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1946, '{\"en\": \"Temporary Market Name 390-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 390, 1, 6, 26, 390, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1947, '{\"en\": \"Temporary Market Name 390-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 390, 2, 6, 26, 390, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1948, '{\"en\": \"Temporary Market Name 390-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 390, 3, 6, 26, 390, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1949, '{\"en\": \"Temporary Market Name 390-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 390, 4, 6, 26, 390, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1950, '{\"en\": \"Temporary Market Name 390-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 390, 5, 6, 26, 390, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1951, '{\"en\": \"Temporary Market Name 391-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 391, 1, 6, 26, 391, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1952, '{\"en\": \"Temporary Market Name 391-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 391, 2, 6, 26, 391, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1953, '{\"en\": \"Temporary Market Name 391-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 391, 3, 6, 26, 391, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1954, '{\"en\": \"Temporary Market Name 391-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 391, 4, 6, 26, 391, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1955, '{\"en\": \"Temporary Market Name 391-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 391, 5, 6, 26, 391, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1956, '{\"en\": \"Temporary Market Name 392-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 392, 1, 6, 26, 392, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1957, '{\"en\": \"Temporary Market Name 392-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 392, 2, 6, 26, 392, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1958, '{\"en\": \"Temporary Market Name 392-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 392, 3, 6, 26, 392, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1959, '{\"en\": \"Temporary Market Name 392-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 392, 4, 6, 26, 392, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1960, '{\"en\": \"Temporary Market Name 392-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 392, 5, 6, 26, 392, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1961, '{\"en\": \"Temporary Market Name 393-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 393, 1, 6, 26, 393, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1962, '{\"en\": \"Temporary Market Name 393-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 393, 2, 6, 26, 393, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1963, '{\"en\": \"Temporary Market Name 393-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 393, 3, 6, 26, 393, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1964, '{\"en\": \"Temporary Market Name 393-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 393, 4, 6, 26, 393, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1965, '{\"en\": \"Temporary Market Name 393-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 393, 5, 6, 26, 393, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1966, '{\"en\": \"Temporary Market Name 394-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 394, 1, 6, 26, 394, 1, 1, 1, '2021-02-21 10:10:22', '2021-02-21 10:10:22'),
(1967, '{\"en\": \"Temporary Market Name 394-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 394, 2, 6, 26, 394, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1968, '{\"en\": \"Temporary Market Name 394-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 394, 3, 6, 26, 394, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1969, '{\"en\": \"Temporary Market Name 394-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 394, 4, 6, 26, 394, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1970, '{\"en\": \"Temporary Market Name 394-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 394, 5, 6, 26, 394, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1971, '{\"en\": \"Temporary Market Name 395-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 395, 1, 6, 26, 395, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1972, '{\"en\": \"Temporary Market Name 395-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 395, 2, 6, 26, 395, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1973, '{\"en\": \"Temporary Market Name 395-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 395, 3, 6, 26, 395, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1974, '{\"en\": \"Temporary Market Name 395-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 395, 4, 6, 26, 395, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1975, '{\"en\": \"Temporary Market Name 395-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 395, 5, 6, 26, 395, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1976, '{\"en\": \"Temporary Market Name 396-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 396, 1, 6, 26, 396, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1977, '{\"en\": \"Temporary Market Name 396-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 396, 2, 6, 26, 396, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1978, '{\"en\": \"Temporary Market Name 396-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 396, 3, 6, 26, 396, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1979, '{\"en\": \"Temporary Market Name 396-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 396, 4, 6, 26, 396, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1980, '{\"en\": \"Temporary Market Name 396-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 396, 5, 6, 26, 396, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1981, '{\"en\": \"Temporary Market Name 397-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 397, 1, 6, 26, 397, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1982, '{\"en\": \"Temporary Market Name 397-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 397, 2, 6, 26, 397, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1983, '{\"en\": \"Temporary Market Name 397-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 397, 3, 6, 26, 397, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1984, '{\"en\": \"Temporary Market Name 397-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 397, 4, 6, 26, 397, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1985, '{\"en\": \"Temporary Market Name 397-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 397, 5, 6, 26, 397, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1986, '{\"en\": \"Temporary Market Name 398-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 398, 1, 6, 26, 398, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1987, '{\"en\": \"Temporary Market Name 398-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 398, 2, 6, 26, 398, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1988, '{\"en\": \"Temporary Market Name 398-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 398, 3, 6, 26, 398, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1989, '{\"en\": \"Temporary Market Name 398-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 398, 4, 6, 26, 398, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1990, '{\"en\": \"Temporary Market Name 398-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 398, 5, 6, 26, 398, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1991, '{\"en\": \"Temporary Market Name 399-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 399, 1, 6, 26, 399, 1, 1, 1, '2021-02-21 10:10:23', '2021-02-21 10:10:23'),
(1992, '{\"en\": \"Temporary Market Name 399-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 399, 2, 6, 26, 399, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(1993, '{\"en\": \"Temporary Market Name 399-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 399, 3, 6, 26, 399, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(1994, '{\"en\": \"Temporary Market Name 399-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 399, 4, 6, 26, 399, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(1995, '{\"en\": \"Temporary Market Name 399-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 399, 5, 6, 26, 399, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(1996, '{\"en\": \"Temporary Market Name 400-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 400, 1, 6, 26, 400, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(1997, '{\"en\": \"Temporary Market Name 400-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 400, 2, 6, 26, 400, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(1998, '{\"en\": \"Temporary Market Name 400-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 400, 3, 6, 26, 400, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(1999, '{\"en\": \"Temporary Market Name 400-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 400, 4, 6, 26, 400, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2000, '{\"en\": \"Temporary Market Name 400-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 400, 5, 6, 26, 400, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2001, '{\"en\": \"Temporary Market Name 401-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 401, 1, 6, 26, 401, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2002, '{\"en\": \"Temporary Market Name 401-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 401, 2, 6, 26, 401, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2003, '{\"en\": \"Temporary Market Name 401-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 401, 3, 6, 26, 401, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2004, '{\"en\": \"Temporary Market Name 401-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 401, 4, 6, 26, 401, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2005, '{\"en\": \"Temporary Market Name 401-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 401, 5, 6, 26, 401, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2006, '{\"en\": \"Temporary Market Name 402-1\"}', '{\"en\": null}', NULL, NULL, 19, 26, 402, 1, 6, 26, 402, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2007, '{\"en\": \"Temporary Market Name 402-2\"}', '{\"en\": null}', NULL, NULL, 19, 26, 402, 2, 6, 26, 402, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2008, '{\"en\": \"Temporary Market Name 402-3\"}', '{\"en\": null}', NULL, NULL, 19, 26, 402, 3, 6, 26, 402, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2009, '{\"en\": \"Temporary Market Name 402-4\"}', '{\"en\": null}', NULL, NULL, 19, 26, 402, 4, 6, 26, 402, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2010, '{\"en\": \"Temporary Market Name 402-5\"}', '{\"en\": null}', NULL, NULL, 19, 26, 402, 5, 6, 26, 402, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2011, '{\"en\": \"Temporary Market Name 403-1\"}', '{\"en\": null}', NULL, NULL, 19, 27, 403, 1, 6, 27, 403, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2012, '{\"en\": \"Temporary Market Name 403-2\"}', '{\"en\": null}', NULL, NULL, 19, 27, 403, 2, 6, 27, 403, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2013, '{\"en\": \"Temporary Market Name 403-3\"}', '{\"en\": null}', NULL, NULL, 19, 27, 403, 3, 6, 27, 403, 1, 1, 1, '2021-02-21 10:10:24', '2021-02-21 10:10:24'),
(2014, '{\"en\": \"Temporary Market Name 403-4\"}', '{\"en\": null}', NULL, NULL, 19, 27, 403, 4, 6, 27, 403, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2015, '{\"en\": \"Temporary Market Name 403-5\"}', '{\"en\": null}', NULL, NULL, 19, 27, 403, 5, 6, 27, 403, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2016, '{\"en\": \"Temporary Market Name 404-1\"}', '{\"en\": null}', NULL, NULL, 19, 27, 404, 1, 6, 27, 404, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2017, '{\"en\": \"Temporary Market Name 404-2\"}', '{\"en\": null}', NULL, NULL, 19, 27, 404, 2, 6, 27, 404, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2018, '{\"en\": \"Temporary Market Name 404-3\"}', '{\"en\": null}', NULL, NULL, 19, 27, 404, 3, 6, 27, 404, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2019, '{\"en\": \"Temporary Market Name 404-4\"}', '{\"en\": null}', NULL, NULL, 19, 27, 404, 4, 6, 27, 404, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2020, '{\"en\": \"Temporary Market Name 404-5\"}', '{\"en\": null}', NULL, NULL, 19, 27, 404, 5, 6, 27, 404, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2021, '{\"en\": \"Temporary Market Name 405-1\"}', '{\"en\": null}', NULL, NULL, 19, 27, 405, 1, 6, 27, 405, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2022, '{\"en\": \"Temporary Market Name 405-2\"}', '{\"en\": null}', NULL, NULL, 19, 27, 405, 2, 6, 27, 405, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2023, '{\"en\": \"Temporary Market Name 405-3\"}', '{\"en\": null}', NULL, NULL, 19, 27, 405, 3, 6, 27, 405, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2024, '{\"en\": \"Temporary Market Name 405-4\"}', '{\"en\": null}', NULL, NULL, 19, 27, 405, 4, 6, 27, 405, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2025, '{\"en\": \"Temporary Market Name 405-5\"}', '{\"en\": null}', NULL, NULL, 19, 27, 405, 5, 6, 27, 405, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2026, '{\"en\": \"Temporary Market Name 406-1\"}', '{\"en\": null}', NULL, NULL, 19, 27, 406, 1, 6, 27, 406, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2027, '{\"en\": \"Temporary Market Name 406-2\"}', '{\"en\": null}', NULL, NULL, 19, 27, 406, 2, 6, 27, 406, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2028, '{\"en\": \"Temporary Market Name 406-3\"}', '{\"en\": null}', NULL, NULL, 19, 27, 406, 3, 6, 27, 406, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2029, '{\"en\": \"Temporary Market Name 406-4\"}', '{\"en\": null}', NULL, NULL, 19, 27, 406, 4, 6, 27, 406, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2030, '{\"en\": \"Temporary Market Name 406-5\"}', '{\"en\": null}', NULL, NULL, 19, 27, 406, 5, 6, 27, 406, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2031, '{\"en\": \"Temporary Market Name 407-1\"}', '{\"en\": null}', NULL, NULL, 19, 27, 407, 1, 6, 27, 407, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2032, '{\"en\": \"Temporary Market Name 407-2\"}', '{\"en\": null}', NULL, NULL, 19, 27, 407, 2, 6, 27, 407, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2033, '{\"en\": \"Temporary Market Name 407-3\"}', '{\"en\": null}', NULL, NULL, 19, 27, 407, 3, 6, 27, 407, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2034, '{\"en\": \"Temporary Market Name 407-4\"}', '{\"en\": null}', NULL, NULL, 19, 27, 407, 4, 6, 27, 407, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2035, '{\"en\": \"Temporary Market Name 407-5\"}', '{\"en\": null}', NULL, NULL, 19, 27, 407, 5, 6, 27, 407, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2036, '{\"en\": \"Temporary Market Name 408-1\"}', '{\"en\": null}', NULL, NULL, 19, 27, 408, 1, 6, 27, 408, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2037, '{\"en\": \"Temporary Market Name 408-2\"}', '{\"en\": null}', NULL, NULL, 19, 27, 408, 2, 6, 27, 408, 1, 1, 1, '2021-02-21 10:10:25', '2021-02-21 10:10:25'),
(2038, '{\"en\": \"Temporary Market Name 408-3\"}', '{\"en\": null}', NULL, NULL, 19, 27, 408, 3, 6, 27, 408, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2039, '{\"en\": \"Temporary Market Name 408-4\"}', '{\"en\": null}', NULL, NULL, 19, 27, 408, 4, 6, 27, 408, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2040, '{\"en\": \"Temporary Market Name 408-5\"}', '{\"en\": null}', NULL, NULL, 19, 27, 408, 5, 6, 27, 408, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2041, '{\"en\": \"Temporary Market Name 409-1\"}', '{\"en\": null}', NULL, NULL, 19, 27, 409, 1, 6, 27, 409, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2042, '{\"en\": \"Temporary Market Name 409-2\"}', '{\"en\": null}', NULL, NULL, 19, 27, 409, 2, 6, 27, 409, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2043, '{\"en\": \"Temporary Market Name 409-3\"}', '{\"en\": null}', NULL, NULL, 19, 27, 409, 3, 6, 27, 409, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2044, '{\"en\": \"Temporary Market Name 409-4\"}', '{\"en\": null}', NULL, NULL, 19, 27, 409, 4, 6, 27, 409, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2045, '{\"en\": \"Temporary Market Name 409-5\"}', '{\"en\": null}', NULL, NULL, 19, 27, 409, 5, 6, 27, 409, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2046, '{\"en\": \"Temporary Market Name 410-1\"}', '{\"en\": null}', NULL, NULL, 19, 28, 410, 1, 6, 28, 410, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2047, '{\"en\": \"Temporary Market Name 410-2\"}', '{\"en\": null}', NULL, NULL, 19, 28, 410, 2, 6, 28, 410, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2048, '{\"en\": \"Temporary Market Name 410-3\"}', '{\"en\": null}', NULL, NULL, 19, 28, 410, 3, 6, 28, 410, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2049, '{\"en\": \"Temporary Market Name 410-4\"}', '{\"en\": null}', NULL, NULL, 19, 28, 410, 4, 6, 28, 410, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2050, '{\"en\": \"Temporary Market Name 410-5\"}', '{\"en\": null}', NULL, NULL, 19, 28, 410, 5, 6, 28, 410, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2051, '{\"en\": \"Temporary Market Name 411-1\"}', '{\"en\": null}', NULL, NULL, 19, 28, 411, 1, 6, 28, 411, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2052, '{\"en\": \"Temporary Market Name 411-2\"}', '{\"en\": null}', NULL, NULL, 19, 28, 411, 2, 6, 28, 411, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2053, '{\"en\": \"Temporary Market Name 411-3\"}', '{\"en\": null}', NULL, NULL, 19, 28, 411, 3, 6, 28, 411, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2054, '{\"en\": \"Temporary Market Name 411-4\"}', '{\"en\": null}', NULL, NULL, 19, 28, 411, 4, 6, 28, 411, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2055, '{\"en\": \"Temporary Market Name 411-5\"}', '{\"en\": null}', NULL, NULL, 19, 28, 411, 5, 6, 28, 411, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2056, '{\"en\": \"Temporary Market Name 412-1\"}', '{\"en\": null}', NULL, NULL, 19, 28, 412, 1, 6, 28, 412, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2057, '{\"en\": \"Temporary Market Name 412-2\"}', '{\"en\": null}', NULL, NULL, 19, 28, 412, 2, 6, 28, 412, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2058, '{\"en\": \"Temporary Market Name 412-3\"}', '{\"en\": null}', NULL, NULL, 19, 28, 412, 3, 6, 28, 412, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2059, '{\"en\": \"Temporary Market Name 412-4\"}', '{\"en\": null}', NULL, NULL, 19, 28, 412, 4, 6, 28, 412, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2060, '{\"en\": \"Temporary Market Name 412-5\"}', '{\"en\": null}', NULL, NULL, 19, 28, 412, 5, 6, 28, 412, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2061, '{\"en\": \"Temporary Market Name 413-1\"}', '{\"en\": null}', NULL, NULL, 19, 28, 413, 1, 6, 28, 413, 1, 1, 1, '2021-02-21 10:10:26', '2021-02-21 10:10:26'),
(2062, '{\"en\": \"Temporary Market Name 413-2\"}', '{\"en\": null}', NULL, NULL, 19, 28, 413, 2, 6, 28, 413, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2063, '{\"en\": \"Temporary Market Name 413-3\"}', '{\"en\": null}', NULL, NULL, 19, 28, 413, 3, 6, 28, 413, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2064, '{\"en\": \"Temporary Market Name 413-4\"}', '{\"en\": null}', NULL, NULL, 19, 28, 413, 4, 6, 28, 413, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2065, '{\"en\": \"Temporary Market Name 413-5\"}', '{\"en\": null}', NULL, NULL, 19, 28, 413, 5, 6, 28, 413, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2066, '{\"en\": \"Temporary Market Name 414-1\"}', '{\"en\": null}', NULL, NULL, 19, 28, 414, 1, 6, 28, 414, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2067, '{\"en\": \"Temporary Market Name 414-2\"}', '{\"en\": null}', NULL, NULL, 19, 28, 414, 2, 6, 28, 414, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2068, '{\"en\": \"Temporary Market Name 414-3\"}', '{\"en\": null}', NULL, NULL, 19, 28, 414, 3, 6, 28, 414, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2069, '{\"en\": \"Temporary Market Name 414-4\"}', '{\"en\": null}', NULL, NULL, 19, 28, 414, 4, 6, 28, 414, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2070, '{\"en\": \"Temporary Market Name 414-5\"}', '{\"en\": null}', NULL, NULL, 19, 28, 414, 5, 6, 28, 414, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2071, '{\"en\": \"Temporary Market Name 415-1\"}', '{\"en\": null}', NULL, NULL, 19, 28, 415, 1, 6, 28, 415, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2072, '{\"en\": \"Temporary Market Name 415-2\"}', '{\"en\": null}', NULL, NULL, 19, 28, 415, 2, 6, 28, 415, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2073, '{\"en\": \"Temporary Market Name 415-3\"}', '{\"en\": null}', NULL, NULL, 19, 28, 415, 3, 6, 28, 415, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2074, '{\"en\": \"Temporary Market Name 415-4\"}', '{\"en\": null}', NULL, NULL, 19, 28, 415, 4, 6, 28, 415, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2075, '{\"en\": \"Temporary Market Name 415-5\"}', '{\"en\": null}', NULL, NULL, 19, 28, 415, 5, 6, 28, 415, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2076, '{\"en\": \"Temporary Market Name 416-1\"}', '{\"en\": null}', NULL, NULL, 19, 28, 416, 1, 6, 28, 416, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2077, '{\"en\": \"Temporary Market Name 416-2\"}', '{\"en\": null}', NULL, NULL, 19, 28, 416, 2, 6, 28, 416, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2078, '{\"en\": \"Temporary Market Name 416-3\"}', '{\"en\": null}', NULL, NULL, 19, 28, 416, 3, 6, 28, 416, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2079, '{\"en\": \"Temporary Market Name 416-4\"}', '{\"en\": null}', NULL, NULL, 19, 28, 416, 4, 6, 28, 416, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2080, '{\"en\": \"Temporary Market Name 416-5\"}', '{\"en\": null}', NULL, NULL, 19, 28, 416, 5, 6, 28, 416, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2081, '{\"en\": \"Temporary Market Name 417-1\"}', '{\"en\": null}', NULL, NULL, 19, 28, 417, 1, 6, 28, 417, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2082, '{\"en\": \"Temporary Market Name 417-2\"}', '{\"en\": null}', NULL, NULL, 19, 28, 417, 2, 6, 28, 417, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2083, '{\"en\": \"Temporary Market Name 417-3\"}', '{\"en\": null}', NULL, NULL, 19, 28, 417, 3, 6, 28, 417, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2084, '{\"en\": \"Temporary Market Name 417-4\"}', '{\"en\": null}', NULL, NULL, 19, 28, 417, 4, 6, 28, 417, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2085, '{\"en\": \"Temporary Market Name 417-5\"}', '{\"en\": null}', NULL, NULL, 19, 28, 417, 5, 6, 28, 417, 1, 1, 1, '2021-02-21 10:10:27', '2021-02-21 10:10:27'),
(2086, '{\"en\": \"Temporary Market Name 418-1\"}', '{\"en\": null}', NULL, NULL, 19, 28, 418, 1, 6, 28, 418, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2087, '{\"en\": \"Temporary Market Name 418-2\"}', '{\"en\": null}', NULL, NULL, 19, 28, 418, 2, 6, 28, 418, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2088, '{\"en\": \"Temporary Market Name 418-3\"}', '{\"en\": null}', NULL, NULL, 19, 28, 418, 3, 6, 28, 418, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2089, '{\"en\": \"Temporary Market Name 418-4\"}', '{\"en\": null}', NULL, NULL, 19, 28, 418, 4, 6, 28, 418, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2090, '{\"en\": \"Temporary Market Name 418-5\"}', '{\"en\": null}', NULL, NULL, 19, 28, 418, 5, 6, 28, 418, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2091, '{\"en\": \"Temporary Market Name 419-1\"}', '{\"en\": null}', NULL, NULL, 19, 29, 419, 1, 6, 29, 419, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2092, '{\"en\": \"Temporary Market Name 419-2\"}', '{\"en\": null}', NULL, NULL, 19, 29, 419, 2, 6, 29, 419, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2093, '{\"en\": \"Temporary Market Name 419-3\"}', '{\"en\": null}', NULL, NULL, 19, 29, 419, 3, 6, 29, 419, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2094, '{\"en\": \"Temporary Market Name 419-4\"}', '{\"en\": null}', NULL, NULL, 19, 29, 419, 4, 6, 29, 419, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2095, '{\"en\": \"Temporary Market Name 419-5\"}', '{\"en\": null}', NULL, NULL, 19, 29, 419, 5, 6, 29, 419, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2096, '{\"en\": \"Temporary Market Name 420-1\"}', '{\"en\": null}', NULL, NULL, 19, 29, 420, 1, 6, 29, 420, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2097, '{\"en\": \"Temporary Market Name 420-2\"}', '{\"en\": null}', NULL, NULL, 19, 29, 420, 2, 6, 29, 420, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2098, '{\"en\": \"Temporary Market Name 420-3\"}', '{\"en\": null}', NULL, NULL, 19, 29, 420, 3, 6, 29, 420, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2099, '{\"en\": \"Temporary Market Name 420-4\"}', '{\"en\": null}', NULL, NULL, 19, 29, 420, 4, 6, 29, 420, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2100, '{\"en\": \"Temporary Market Name 420-5\"}', '{\"en\": null}', NULL, NULL, 19, 29, 420, 5, 6, 29, 420, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2101, '{\"en\": \"Temporary Market Name 421-1\"}', '{\"en\": null}', NULL, NULL, 19, 29, 421, 1, 6, 29, 421, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2102, '{\"en\": \"Temporary Market Name 421-2\"}', '{\"en\": null}', NULL, NULL, 19, 29, 421, 2, 6, 29, 421, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2103, '{\"en\": \"Temporary Market Name 421-3\"}', '{\"en\": null}', NULL, NULL, 19, 29, 421, 3, 6, 29, 421, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2104, '{\"en\": \"Temporary Market Name 421-4\"}', '{\"en\": null}', NULL, NULL, 19, 29, 421, 4, 6, 29, 421, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2105, '{\"en\": \"Temporary Market Name 421-5\"}', '{\"en\": null}', NULL, NULL, 19, 29, 421, 5, 6, 29, 421, 1, 1, 1, '2021-02-21 10:10:28', '2021-02-21 10:10:28'),
(2106, '{\"en\": \"Temporary Market Name 422-1\"}', '{\"en\": null}', NULL, NULL, 19, 29, 422, 1, 6, 29, 422, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2107, '{\"en\": \"Temporary Market Name 422-2\"}', '{\"en\": null}', NULL, NULL, 19, 29, 422, 2, 6, 29, 422, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2108, '{\"en\": \"Temporary Market Name 422-3\"}', '{\"en\": null}', NULL, NULL, 19, 29, 422, 3, 6, 29, 422, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2109, '{\"en\": \"Temporary Market Name 422-4\"}', '{\"en\": null}', NULL, NULL, 19, 29, 422, 4, 6, 29, 422, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2110, '{\"en\": \"Temporary Market Name 422-5\"}', '{\"en\": null}', NULL, NULL, 19, 29, 422, 5, 6, 29, 422, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2111, '{\"en\": \"Temporary Market Name 423-1\"}', '{\"en\": null}', NULL, NULL, 19, 29, 423, 1, 6, 29, 423, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2112, '{\"en\": \"Temporary Market Name 423-2\"}', '{\"en\": null}', NULL, NULL, 19, 29, 423, 2, 6, 29, 423, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2113, '{\"en\": \"Temporary Market Name 423-3\"}', '{\"en\": null}', NULL, NULL, 19, 29, 423, 3, 6, 29, 423, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2114, '{\"en\": \"Temporary Market Name 423-4\"}', '{\"en\": null}', NULL, NULL, 19, 29, 423, 4, 6, 29, 423, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2115, '{\"en\": \"Temporary Market Name 423-5\"}', '{\"en\": null}', NULL, NULL, 19, 29, 423, 5, 6, 29, 423, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2116, '{\"en\": \"Temporary Market Name 424-1\"}', '{\"en\": null}', NULL, NULL, 19, 30, 424, 1, 6, 30, 424, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2117, '{\"en\": \"Temporary Market Name 424-2\"}', '{\"en\": null}', NULL, NULL, 19, 30, 424, 2, 6, 30, 424, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2118, '{\"en\": \"Temporary Market Name 424-3\"}', '{\"en\": null}', NULL, NULL, 19, 30, 424, 3, 6, 30, 424, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2119, '{\"en\": \"Temporary Market Name 424-4\"}', '{\"en\": null}', NULL, NULL, 19, 30, 424, 4, 6, 30, 424, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2120, '{\"en\": \"Temporary Market Name 424-5\"}', '{\"en\": null}', NULL, NULL, 19, 30, 424, 5, 6, 30, 424, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2121, '{\"en\": \"Temporary Market Name 425-1\"}', '{\"en\": null}', NULL, NULL, 19, 30, 425, 1, 6, 30, 425, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2122, '{\"en\": \"Temporary Market Name 425-2\"}', '{\"en\": null}', NULL, NULL, 19, 30, 425, 2, 6, 30, 425, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2123, '{\"en\": \"Temporary Market Name 425-3\"}', '{\"en\": null}', NULL, NULL, 19, 30, 425, 3, 6, 30, 425, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2124, '{\"en\": \"Temporary Market Name 425-4\"}', '{\"en\": null}', NULL, NULL, 19, 30, 425, 4, 6, 30, 425, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2125, '{\"en\": \"Temporary Market Name 425-5\"}', '{\"en\": null}', NULL, NULL, 19, 30, 425, 5, 6, 30, 425, 1, 1, 1, '2021-02-21 10:10:29', '2021-02-21 10:10:29'),
(2126, '{\"en\": \"Temporary Market Name 426-1\"}', '{\"en\": null}', NULL, NULL, 19, 30, 426, 1, 6, 30, 426, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2127, '{\"en\": \"Temporary Market Name 426-2\"}', '{\"en\": null}', NULL, NULL, 19, 30, 426, 2, 6, 30, 426, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2128, '{\"en\": \"Temporary Market Name 426-3\"}', '{\"en\": null}', NULL, NULL, 19, 30, 426, 3, 6, 30, 426, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2129, '{\"en\": \"Temporary Market Name 426-4\"}', '{\"en\": null}', NULL, NULL, 19, 30, 426, 4, 6, 30, 426, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2130, '{\"en\": \"Temporary Market Name 426-5\"}', '{\"en\": null}', NULL, NULL, 19, 30, 426, 5, 6, 30, 426, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2131, '{\"en\": \"Temporary Market Name 427-1\"}', '{\"en\": null}', NULL, NULL, 19, 30, 427, 1, 6, 30, 427, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2132, '{\"en\": \"Temporary Market Name 427-2\"}', '{\"en\": null}', NULL, NULL, 19, 30, 427, 2, 6, 30, 427, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2133, '{\"en\": \"Temporary Market Name 427-3\"}', '{\"en\": null}', NULL, NULL, 19, 30, 427, 3, 6, 30, 427, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2134, '{\"en\": \"Temporary Market Name 427-4\"}', '{\"en\": null}', NULL, NULL, 19, 30, 427, 4, 6, 30, 427, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2135, '{\"en\": \"Temporary Market Name 427-5\"}', '{\"en\": null}', NULL, NULL, 19, 30, 427, 5, 6, 30, 427, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2136, '{\"en\": \"Temporary Market Name 428-1\"}', '{\"en\": null}', NULL, NULL, 19, 30, 428, 1, 6, 30, 428, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2137, '{\"en\": \"Temporary Market Name 428-2\"}', '{\"en\": null}', NULL, NULL, 19, 30, 428, 2, 6, 30, 428, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2138, '{\"en\": \"Temporary Market Name 428-3\"}', '{\"en\": null}', NULL, NULL, 19, 30, 428, 3, 6, 30, 428, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2139, '{\"en\": \"Temporary Market Name 428-4\"}', '{\"en\": null}', NULL, NULL, 19, 30, 428, 4, 6, 30, 428, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2140, '{\"en\": \"Temporary Market Name 428-5\"}', '{\"en\": null}', NULL, NULL, 19, 30, 428, 5, 6, 30, 428, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2141, '{\"en\": \"Temporary Market Name 429-1\"}', '{\"en\": null}', NULL, NULL, 19, 30, 429, 1, 6, 30, 429, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2142, '{\"en\": \"Temporary Market Name 429-2\"}', '{\"en\": null}', NULL, NULL, 19, 30, 429, 2, 6, 30, 429, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2143, '{\"en\": \"Temporary Market Name 429-3\"}', '{\"en\": null}', NULL, NULL, 19, 30, 429, 3, 6, 30, 429, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2144, '{\"en\": \"Temporary Market Name 429-4\"}', '{\"en\": null}', NULL, NULL, 19, 30, 429, 4, 6, 30, 429, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2145, '{\"en\": \"Temporary Market Name 429-5\"}', '{\"en\": null}', NULL, NULL, 19, 30, 429, 5, 6, 30, 429, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2146, '{\"en\": \"Temporary Market Name 430-1\"}', '{\"en\": null}', NULL, NULL, 19, 31, 430, 1, 6, 31, 430, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30');
INSERT INTO `markets` (`id`, `name`, `address`, `lat`, `lng`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(2147, '{\"en\": \"Temporary Market Name 430-2\"}', '{\"en\": null}', NULL, NULL, 19, 31, 430, 2, 6, 31, 430, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2148, '{\"en\": \"Temporary Market Name 430-3\"}', '{\"en\": null}', NULL, NULL, 19, 31, 430, 3, 6, 31, 430, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2149, '{\"en\": \"Temporary Market Name 430-4\"}', '{\"en\": null}', NULL, NULL, 19, 31, 430, 4, 6, 31, 430, 1, 1, 1, '2021-02-21 10:10:30', '2021-02-21 10:10:30'),
(2150, '{\"en\": \"Temporary Market Name 430-5\"}', '{\"en\": null}', NULL, NULL, 19, 31, 430, 5, 6, 31, 430, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2151, '{\"en\": \"Temporary Market Name 431-1\"}', '{\"en\": null}', NULL, NULL, 19, 31, 431, 1, 6, 31, 431, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2152, '{\"en\": \"Temporary Market Name 431-2\"}', '{\"en\": null}', NULL, NULL, 19, 31, 431, 2, 6, 31, 431, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2153, '{\"en\": \"Temporary Market Name 431-3\"}', '{\"en\": null}', NULL, NULL, 19, 31, 431, 3, 6, 31, 431, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2154, '{\"en\": \"Temporary Market Name 431-4\"}', '{\"en\": null}', NULL, NULL, 19, 31, 431, 4, 6, 31, 431, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2155, '{\"en\": \"Temporary Market Name 431-5\"}', '{\"en\": null}', NULL, NULL, 19, 31, 431, 5, 6, 31, 431, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2156, '{\"en\": \"Temporary Market Name 432-1\"}', '{\"en\": null}', NULL, NULL, 19, 31, 432, 1, 6, 31, 432, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2157, '{\"en\": \"Temporary Market Name 432-2\"}', '{\"en\": null}', NULL, NULL, 19, 31, 432, 2, 6, 31, 432, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2158, '{\"en\": \"Temporary Market Name 432-3\"}', '{\"en\": null}', NULL, NULL, 19, 31, 432, 3, 6, 31, 432, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2159, '{\"en\": \"Temporary Market Name 432-4\"}', '{\"en\": null}', NULL, NULL, 19, 31, 432, 4, 6, 31, 432, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2160, '{\"en\": \"Temporary Market Name 432-5\"}', '{\"en\": null}', NULL, NULL, 19, 31, 432, 5, 6, 31, 432, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2161, '{\"en\": \"Temporary Market Name 433-1\"}', '{\"en\": null}', NULL, NULL, 19, 31, 433, 1, 6, 31, 433, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2162, '{\"en\": \"Temporary Market Name 433-2\"}', '{\"en\": null}', NULL, NULL, 19, 31, 433, 2, 6, 31, 433, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2163, '{\"en\": \"Temporary Market Name 433-3\"}', '{\"en\": null}', NULL, NULL, 19, 31, 433, 3, 6, 31, 433, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2164, '{\"en\": \"Temporary Market Name 433-4\"}', '{\"en\": null}', NULL, NULL, 19, 31, 433, 4, 6, 31, 433, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2165, '{\"en\": \"Temporary Market Name 433-5\"}', '{\"en\": null}', NULL, NULL, 19, 31, 433, 5, 6, 31, 433, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2166, '{\"en\": \"Temporary Market Name 434-1\"}', '{\"en\": null}', NULL, NULL, 19, 31, 434, 1, 6, 31, 434, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2167, '{\"en\": \"Temporary Market Name 434-2\"}', '{\"en\": null}', NULL, NULL, 19, 31, 434, 2, 6, 31, 434, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2168, '{\"en\": \"Temporary Market Name 434-3\"}', '{\"en\": null}', NULL, NULL, 19, 31, 434, 3, 6, 31, 434, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2169, '{\"en\": \"Temporary Market Name 434-4\"}', '{\"en\": null}', NULL, NULL, 19, 31, 434, 4, 6, 31, 434, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2170, '{\"en\": \"Temporary Market Name 434-5\"}', '{\"en\": null}', NULL, NULL, 19, 31, 434, 5, 6, 31, 434, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2171, '{\"en\": \"Temporary Market Name 435-1\"}', '{\"en\": null}', NULL, NULL, 19, 32, 435, 1, 6, 32, 435, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2172, '{\"en\": \"Temporary Market Name 435-2\"}', '{\"en\": null}', NULL, NULL, 19, 32, 435, 2, 6, 32, 435, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2173, '{\"en\": \"Temporary Market Name 435-3\"}', '{\"en\": null}', NULL, NULL, 19, 32, 435, 3, 6, 32, 435, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2174, '{\"en\": \"Temporary Market Name 435-4\"}', '{\"en\": null}', NULL, NULL, 19, 32, 435, 4, 6, 32, 435, 1, 1, 1, '2021-02-21 10:10:31', '2021-02-21 10:10:31'),
(2175, '{\"en\": \"Temporary Market Name 435-5\"}', '{\"en\": null}', NULL, NULL, 19, 32, 435, 5, 6, 32, 435, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2176, '{\"en\": \"Temporary Market Name 436-1\"}', '{\"en\": null}', NULL, NULL, 19, 32, 436, 1, 6, 32, 436, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2177, '{\"en\": \"Temporary Market Name 436-2\"}', '{\"en\": null}', NULL, NULL, 19, 32, 436, 2, 6, 32, 436, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2178, '{\"en\": \"Temporary Market Name 436-3\"}', '{\"en\": null}', NULL, NULL, 19, 32, 436, 3, 6, 32, 436, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2179, '{\"en\": \"Temporary Market Name 436-4\"}', '{\"en\": null}', NULL, NULL, 19, 32, 436, 4, 6, 32, 436, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2180, '{\"en\": \"Temporary Market Name 436-5\"}', '{\"en\": null}', NULL, NULL, 19, 32, 436, 5, 6, 32, 436, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2181, '{\"en\": \"Temporary Market Name 437-1\"}', '{\"en\": null}', NULL, NULL, 19, 32, 437, 1, 6, 32, 437, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2182, '{\"en\": \"Temporary Market Name 437-2\"}', '{\"en\": null}', NULL, NULL, 19, 32, 437, 2, 6, 32, 437, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2183, '{\"en\": \"Temporary Market Name 437-3\"}', '{\"en\": null}', NULL, NULL, 19, 32, 437, 3, 6, 32, 437, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2184, '{\"en\": \"Temporary Market Name 437-4\"}', '{\"en\": null}', NULL, NULL, 19, 32, 437, 4, 6, 32, 437, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2185, '{\"en\": \"Temporary Market Name 437-5\"}', '{\"en\": null}', NULL, NULL, 19, 32, 437, 5, 6, 32, 437, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2186, '{\"en\": \"Temporary Market Name 438-1\"}', '{\"en\": null}', NULL, NULL, 19, 32, 438, 1, 6, 32, 438, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2187, '{\"en\": \"Temporary Market Name 438-2\"}', '{\"en\": null}', NULL, NULL, 19, 32, 438, 2, 6, 32, 438, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2188, '{\"en\": \"Temporary Market Name 438-3\"}', '{\"en\": null}', NULL, NULL, 19, 32, 438, 3, 6, 32, 438, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2189, '{\"en\": \"Temporary Market Name 438-4\"}', '{\"en\": null}', NULL, NULL, 19, 32, 438, 4, 6, 32, 438, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2190, '{\"en\": \"Temporary Market Name 438-5\"}', '{\"en\": null}', NULL, NULL, 19, 32, 438, 5, 6, 32, 438, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2191, '{\"en\": \"Temporary Market Name 439-1\"}', '{\"en\": null}', NULL, NULL, 19, 32, 439, 1, 6, 32, 439, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2192, '{\"en\": \"Temporary Market Name 439-2\"}', '{\"en\": null}', NULL, NULL, 19, 32, 439, 2, 6, 32, 439, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2193, '{\"en\": \"Temporary Market Name 439-3\"}', '{\"en\": null}', NULL, NULL, 19, 32, 439, 3, 6, 32, 439, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2194, '{\"en\": \"Temporary Market Name 439-4\"}', '{\"en\": null}', NULL, NULL, 19, 32, 439, 4, 6, 32, 439, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2195, '{\"en\": \"Temporary Market Name 439-5\"}', '{\"en\": null}', NULL, NULL, 19, 32, 439, 5, 6, 32, 439, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2196, '{\"en\": \"Temporary Market Name 440-1\"}', '{\"en\": null}', NULL, NULL, 19, 32, 440, 1, 6, 32, 440, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2197, '{\"en\": \"Temporary Market Name 440-2\"}', '{\"en\": null}', NULL, NULL, 19, 32, 440, 2, 6, 32, 440, 1, 1, 1, '2021-02-21 10:10:32', '2021-02-21 10:10:32'),
(2198, '{\"en\": \"Temporary Market Name 440-3\"}', '{\"en\": null}', NULL, NULL, 19, 32, 440, 3, 6, 32, 440, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2199, '{\"en\": \"Temporary Market Name 440-4\"}', '{\"en\": null}', NULL, NULL, 19, 32, 440, 4, 6, 32, 440, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2200, '{\"en\": \"Temporary Market Name 440-5\"}', '{\"en\": null}', NULL, NULL, 19, 32, 440, 5, 6, 32, 440, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2201, '{\"en\": \"Temporary Market Name 441-1\"}', '{\"en\": null}', NULL, NULL, 19, 32, 441, 1, 6, 32, 441, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2202, '{\"en\": \"Temporary Market Name 441-2\"}', '{\"en\": null}', NULL, NULL, 19, 32, 441, 2, 6, 32, 441, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2203, '{\"en\": \"Temporary Market Name 441-3\"}', '{\"en\": null}', NULL, NULL, 19, 32, 441, 3, 6, 32, 441, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2204, '{\"en\": \"Temporary Market Name 441-4\"}', '{\"en\": null}', NULL, NULL, 19, 32, 441, 4, 6, 32, 441, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2205, '{\"en\": \"Temporary Market Name 441-5\"}', '{\"en\": null}', NULL, NULL, 19, 32, 441, 5, 6, 32, 441, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2206, '{\"en\": \"Temporary Market Name 442-1\"}', '{\"en\": null}', NULL, NULL, 19, 32, 442, 1, 6, 32, 442, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2207, '{\"en\": \"Temporary Market Name 442-2\"}', '{\"en\": null}', NULL, NULL, 19, 32, 442, 2, 6, 32, 442, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2208, '{\"en\": \"Temporary Market Name 442-3\"}', '{\"en\": null}', NULL, NULL, 19, 32, 442, 3, 6, 32, 442, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2209, '{\"en\": \"Temporary Market Name 442-4\"}', '{\"en\": null}', NULL, NULL, 19, 32, 442, 4, 6, 32, 442, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2210, '{\"en\": \"Temporary Market Name 442-5\"}', '{\"en\": null}', NULL, NULL, 19, 32, 442, 5, 6, 32, 442, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2211, '{\"en\": \"Temporary Market Name 443-1\"}', '{\"en\": null}', NULL, NULL, 19, 33, 443, 1, 6, 33, 443, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2212, '{\"en\": \"Temporary Market Name 443-2\"}', '{\"en\": null}', NULL, NULL, 19, 33, 443, 2, 6, 33, 443, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2213, '{\"en\": \"Temporary Market Name 443-3\"}', '{\"en\": null}', NULL, NULL, 19, 33, 443, 3, 6, 33, 443, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2214, '{\"en\": \"Temporary Market Name 443-4\"}', '{\"en\": null}', NULL, NULL, 19, 33, 443, 4, 6, 33, 443, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2215, '{\"en\": \"Temporary Market Name 443-5\"}', '{\"en\": null}', NULL, NULL, 19, 33, 443, 5, 6, 33, 443, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2216, '{\"en\": \"Temporary Market Name 444-1\"}', '{\"en\": null}', NULL, NULL, 19, 33, 444, 1, 6, 33, 444, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2217, '{\"en\": \"Temporary Market Name 444-2\"}', '{\"en\": null}', NULL, NULL, 19, 33, 444, 2, 6, 33, 444, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2218, '{\"en\": \"Temporary Market Name 444-3\"}', '{\"en\": null}', NULL, NULL, 19, 33, 444, 3, 6, 33, 444, 1, 1, 1, '2021-02-21 10:10:33', '2021-02-21 10:10:33'),
(2219, '{\"en\": \"Temporary Market Name 444-4\"}', '{\"en\": null}', NULL, NULL, 19, 33, 444, 4, 6, 33, 444, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2220, '{\"en\": \"Temporary Market Name 444-5\"}', '{\"en\": null}', NULL, NULL, 19, 33, 444, 5, 6, 33, 444, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2221, '{\"en\": \"Temporary Market Name 445-1\"}', '{\"en\": null}', NULL, NULL, 19, 33, 445, 1, 6, 33, 445, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2222, '{\"en\": \"Temporary Market Name 445-2\"}', '{\"en\": null}', NULL, NULL, 19, 33, 445, 2, 6, 33, 445, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2223, '{\"en\": \"Temporary Market Name 445-3\"}', '{\"en\": null}', NULL, NULL, 19, 33, 445, 3, 6, 33, 445, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2224, '{\"en\": \"Temporary Market Name 445-4\"}', '{\"en\": null}', NULL, NULL, 19, 33, 445, 4, 6, 33, 445, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2225, '{\"en\": \"Temporary Market Name 445-5\"}', '{\"en\": null}', NULL, NULL, 19, 33, 445, 5, 6, 33, 445, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2226, '{\"en\": \"Temporary Market Name 446-1\"}', '{\"en\": null}', NULL, NULL, 19, 33, 446, 1, 6, 33, 446, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2227, '{\"en\": \"Temporary Market Name 446-2\"}', '{\"en\": null}', NULL, NULL, 19, 33, 446, 2, 6, 33, 446, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2228, '{\"en\": \"Temporary Market Name 446-3\"}', '{\"en\": null}', NULL, NULL, 19, 33, 446, 3, 6, 33, 446, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2229, '{\"en\": \"Temporary Market Name 446-4\"}', '{\"en\": null}', NULL, NULL, 19, 33, 446, 4, 6, 33, 446, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2230, '{\"en\": \"Temporary Market Name 446-5\"}', '{\"en\": null}', NULL, NULL, 19, 33, 446, 5, 6, 33, 446, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2231, '{\"en\": \"Temporary Market Name 447-1\"}', '{\"en\": null}', NULL, NULL, 19, 33, 447, 1, 6, 33, 447, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2232, '{\"en\": \"Temporary Market Name 447-2\"}', '{\"en\": null}', NULL, NULL, 19, 33, 447, 2, 6, 33, 447, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2233, '{\"en\": \"Temporary Market Name 447-3\"}', '{\"en\": null}', NULL, NULL, 19, 33, 447, 3, 6, 33, 447, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2234, '{\"en\": \"Temporary Market Name 447-4\"}', '{\"en\": null}', NULL, NULL, 19, 33, 447, 4, 6, 33, 447, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2235, '{\"en\": \"Temporary Market Name 447-5\"}', '{\"en\": null}', NULL, NULL, 19, 33, 447, 5, 6, 33, 447, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2236, '{\"en\": \"Temporary Market Name 448-1\"}', '{\"en\": null}', NULL, NULL, 17, 51, 448, 1, 7, 51, 448, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2237, '{\"en\": \"Temporary Market Name 448-2\"}', '{\"en\": null}', NULL, NULL, 17, 51, 448, 2, 7, 51, 448, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2238, '{\"en\": \"Temporary Market Name 448-3\"}', '{\"en\": null}', NULL, NULL, 17, 51, 448, 3, 7, 51, 448, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2239, '{\"en\": \"Temporary Market Name 448-4\"}', '{\"en\": null}', NULL, NULL, 17, 51, 448, 4, 7, 51, 448, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2240, '{\"en\": \"Temporary Market Name 448-5\"}', '{\"en\": null}', NULL, NULL, 17, 51, 448, 5, 7, 51, 448, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2241, '{\"en\": \"Temporary Market Name 449-1\"}', '{\"en\": null}', NULL, NULL, 17, 51, 449, 1, 7, 51, 449, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2242, '{\"en\": \"Temporary Market Name 449-2\"}', '{\"en\": null}', NULL, NULL, 17, 51, 449, 2, 7, 51, 449, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2243, '{\"en\": \"Temporary Market Name 449-3\"}', '{\"en\": null}', NULL, NULL, 17, 51, 449, 3, 7, 51, 449, 1, 1, 1, '2021-02-21 10:10:34', '2021-02-21 10:10:34'),
(2244, '{\"en\": \"Temporary Market Name 449-4\"}', '{\"en\": null}', NULL, NULL, 17, 51, 449, 4, 7, 51, 449, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2245, '{\"en\": \"Temporary Market Name 449-5\"}', '{\"en\": null}', NULL, NULL, 17, 51, 449, 5, 7, 51, 449, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2246, '{\"en\": \"Temporary Market Name 450-1\"}', '{\"en\": null}', NULL, NULL, 17, 51, 450, 1, 7, 51, 450, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2247, '{\"en\": \"Temporary Market Name 450-2\"}', '{\"en\": null}', NULL, NULL, 17, 51, 450, 2, 7, 51, 450, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2248, '{\"en\": \"Temporary Market Name 450-3\"}', '{\"en\": null}', NULL, NULL, 17, 51, 450, 3, 7, 51, 450, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2249, '{\"en\": \"Temporary Market Name 450-4\"}', '{\"en\": null}', NULL, NULL, 17, 51, 450, 4, 7, 51, 450, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2250, '{\"en\": \"Temporary Market Name 450-5\"}', '{\"en\": null}', NULL, NULL, 17, 51, 450, 5, 7, 51, 450, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2251, '{\"en\": \"Temporary Market Name 451-1\"}', '{\"en\": null}', NULL, NULL, 17, 51, 451, 1, 7, 51, 451, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2252, '{\"en\": \"Temporary Market Name 451-2\"}', '{\"en\": null}', NULL, NULL, 17, 51, 451, 2, 7, 51, 451, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2253, '{\"en\": \"Temporary Market Name 451-3\"}', '{\"en\": null}', NULL, NULL, 17, 51, 451, 3, 7, 51, 451, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2254, '{\"en\": \"Temporary Market Name 451-4\"}', '{\"en\": null}', NULL, NULL, 17, 51, 451, 4, 7, 51, 451, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2255, '{\"en\": \"Temporary Market Name 451-5\"}', '{\"en\": null}', NULL, NULL, 17, 51, 451, 5, 7, 51, 451, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2256, '{\"en\": \"Temporary Market Name 452-1\"}', '{\"en\": null}', NULL, NULL, 17, 51, 452, 1, 7, 51, 452, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2257, '{\"en\": \"Temporary Market Name 452-2\"}', '{\"en\": null}', NULL, NULL, 17, 51, 452, 2, 7, 51, 452, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2258, '{\"en\": \"Temporary Market Name 452-3\"}', '{\"en\": null}', NULL, NULL, 17, 51, 452, 3, 7, 51, 452, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2259, '{\"en\": \"Temporary Market Name 452-4\"}', '{\"en\": null}', NULL, NULL, 17, 51, 452, 4, 7, 51, 452, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2260, '{\"en\": \"Temporary Market Name 452-5\"}', '{\"en\": null}', NULL, NULL, 17, 51, 452, 5, 7, 51, 452, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2261, '{\"en\": \"Temporary Market Name 453-1\"}', '{\"en\": null}', NULL, NULL, 17, 51, 453, 1, 7, 51, 453, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2262, '{\"en\": \"Temporary Market Name 453-2\"}', '{\"en\": null}', NULL, NULL, 17, 51, 453, 2, 7, 51, 453, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2263, '{\"en\": \"Temporary Market Name 453-3\"}', '{\"en\": null}', NULL, NULL, 17, 51, 453, 3, 7, 51, 453, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2264, '{\"en\": \"Temporary Market Name 453-4\"}', '{\"en\": null}', NULL, NULL, 17, 51, 453, 4, 7, 51, 453, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2265, '{\"en\": \"Temporary Market Name 453-5\"}', '{\"en\": null}', NULL, NULL, 17, 51, 453, 5, 7, 51, 453, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2266, '{\"en\": \"Temporary Market Name 454-1\"}', '{\"en\": null}', NULL, NULL, 17, 51, 454, 1, 7, 51, 454, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2267, '{\"en\": \"Temporary Market Name 454-2\"}', '{\"en\": null}', NULL, NULL, 17, 51, 454, 2, 7, 51, 454, 1, 1, 1, '2021-02-21 10:10:35', '2021-02-21 10:10:35'),
(2268, '{\"en\": \"Temporary Market Name 454-3\"}', '{\"en\": null}', NULL, NULL, 17, 51, 454, 3, 7, 51, 454, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2269, '{\"en\": \"Temporary Market Name 454-4\"}', '{\"en\": null}', NULL, NULL, 17, 51, 454, 4, 7, 51, 454, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2270, '{\"en\": \"Temporary Market Name 454-5\"}', '{\"en\": null}', NULL, NULL, 17, 51, 454, 5, 7, 51, 454, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2271, '{\"en\": \"Temporary Market Name 455-1\"}', '{\"en\": null}', NULL, NULL, 17, 51, 455, 1, 7, 51, 455, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2272, '{\"en\": \"Temporary Market Name 455-2\"}', '{\"en\": null}', NULL, NULL, 17, 51, 455, 2, 7, 51, 455, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2273, '{\"en\": \"Temporary Market Name 455-3\"}', '{\"en\": null}', NULL, NULL, 17, 51, 455, 3, 7, 51, 455, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2274, '{\"en\": \"Temporary Market Name 455-4\"}', '{\"en\": null}', NULL, NULL, 17, 51, 455, 4, 7, 51, 455, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2275, '{\"en\": \"Temporary Market Name 455-5\"}', '{\"en\": null}', NULL, NULL, 17, 51, 455, 5, 7, 51, 455, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2276, '{\"en\": \"Temporary Market Name 456-1\"}', '{\"en\": null}', NULL, NULL, 17, 51, 456, 1, 7, 51, 456, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2277, '{\"en\": \"Temporary Market Name 456-2\"}', '{\"en\": null}', NULL, NULL, 17, 51, 456, 2, 7, 51, 456, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2278, '{\"en\": \"Temporary Market Name 456-3\"}', '{\"en\": null}', NULL, NULL, 17, 51, 456, 3, 7, 51, 456, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2279, '{\"en\": \"Temporary Market Name 456-4\"}', '{\"en\": null}', NULL, NULL, 17, 51, 456, 4, 7, 51, 456, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2280, '{\"en\": \"Temporary Market Name 456-5\"}', '{\"en\": null}', NULL, NULL, 17, 51, 456, 5, 7, 51, 456, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2281, '{\"en\": \"Temporary Market Name 457-1\"}', '{\"en\": null}', NULL, NULL, 17, 52, 457, 1, 7, 52, 457, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2282, '{\"en\": \"Temporary Market Name 457-2\"}', '{\"en\": null}', NULL, NULL, 17, 52, 457, 2, 7, 52, 457, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2283, '{\"en\": \"Temporary Market Name 457-3\"}', '{\"en\": null}', NULL, NULL, 17, 52, 457, 3, 7, 52, 457, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2284, '{\"en\": \"Temporary Market Name 457-4\"}', '{\"en\": null}', NULL, NULL, 17, 52, 457, 4, 7, 52, 457, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2285, '{\"en\": \"Temporary Market Name 457-5\"}', '{\"en\": null}', NULL, NULL, 17, 52, 457, 5, 7, 52, 457, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2286, '{\"en\": \"Temporary Market Name 458-1\"}', '{\"en\": null}', NULL, NULL, 17, 52, 458, 1, 7, 52, 458, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2287, '{\"en\": \"Temporary Market Name 458-2\"}', '{\"en\": null}', NULL, NULL, 17, 52, 458, 2, 7, 52, 458, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2288, '{\"en\": \"Temporary Market Name 458-3\"}', '{\"en\": null}', NULL, NULL, 17, 52, 458, 3, 7, 52, 458, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2289, '{\"en\": \"Temporary Market Name 458-4\"}', '{\"en\": null}', NULL, NULL, 17, 52, 458, 4, 7, 52, 458, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2290, '{\"en\": \"Temporary Market Name 458-5\"}', '{\"en\": null}', NULL, NULL, 17, 52, 458, 5, 7, 52, 458, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2291, '{\"en\": \"Temporary Market Name 459-1\"}', '{\"en\": null}', NULL, NULL, 17, 52, 459, 1, 7, 52, 459, 1, 1, 1, '2021-02-21 10:10:36', '2021-02-21 10:10:36'),
(2292, '{\"en\": \"Temporary Market Name 459-2\"}', '{\"en\": null}', NULL, NULL, 17, 52, 459, 2, 7, 52, 459, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2293, '{\"en\": \"Temporary Market Name 459-3\"}', '{\"en\": null}', NULL, NULL, 17, 52, 459, 3, 7, 52, 459, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2294, '{\"en\": \"Temporary Market Name 459-4\"}', '{\"en\": null}', NULL, NULL, 17, 52, 459, 4, 7, 52, 459, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2295, '{\"en\": \"Temporary Market Name 459-5\"}', '{\"en\": null}', NULL, NULL, 17, 52, 459, 5, 7, 52, 459, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2296, '{\"en\": \"Temporary Market Name 460-1\"}', '{\"en\": null}', NULL, NULL, 17, 52, 460, 1, 7, 52, 460, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2297, '{\"en\": \"Temporary Market Name 460-2\"}', '{\"en\": null}', NULL, NULL, 17, 52, 460, 2, 7, 52, 460, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2298, '{\"en\": \"Temporary Market Name 460-3\"}', '{\"en\": null}', NULL, NULL, 17, 52, 460, 3, 7, 52, 460, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2299, '{\"en\": \"Temporary Market Name 460-4\"}', '{\"en\": null}', NULL, NULL, 17, 52, 460, 4, 7, 52, 460, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2300, '{\"en\": \"Temporary Market Name 460-5\"}', '{\"en\": null}', NULL, NULL, 17, 52, 460, 5, 7, 52, 460, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2301, '{\"en\": \"Temporary Market Name 461-1\"}', '{\"en\": null}', NULL, NULL, 17, 52, 461, 1, 7, 52, 461, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2302, '{\"en\": \"Temporary Market Name 461-2\"}', '{\"en\": null}', NULL, NULL, 17, 52, 461, 2, 7, 52, 461, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2303, '{\"en\": \"Temporary Market Name 461-3\"}', '{\"en\": null}', NULL, NULL, 17, 52, 461, 3, 7, 52, 461, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2304, '{\"en\": \"Temporary Market Name 461-4\"}', '{\"en\": null}', NULL, NULL, 17, 52, 461, 4, 7, 52, 461, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2305, '{\"en\": \"Temporary Market Name 461-5\"}', '{\"en\": null}', NULL, NULL, 17, 52, 461, 5, 7, 52, 461, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2306, '{\"en\": \"Temporary Market Name 462-1\"}', '{\"en\": null}', NULL, NULL, 17, 52, 462, 1, 7, 52, 462, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2307, '{\"en\": \"Temporary Market Name 462-2\"}', '{\"en\": null}', NULL, NULL, 17, 52, 462, 2, 7, 52, 462, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2308, '{\"en\": \"Temporary Market Name 462-3\"}', '{\"en\": null}', NULL, NULL, 17, 52, 462, 3, 7, 52, 462, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2309, '{\"en\": \"Temporary Market Name 462-4\"}', '{\"en\": null}', NULL, NULL, 17, 52, 462, 4, 7, 52, 462, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2310, '{\"en\": \"Temporary Market Name 462-5\"}', '{\"en\": null}', NULL, NULL, 17, 52, 462, 5, 7, 52, 462, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2311, '{\"en\": \"Temporary Market Name 463-1\"}', '{\"en\": null}', NULL, NULL, 17, 52, 463, 1, 7, 52, 463, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2312, '{\"en\": \"Temporary Market Name 463-2\"}', '{\"en\": null}', NULL, NULL, 17, 52, 463, 2, 7, 52, 463, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2313, '{\"en\": \"Temporary Market Name 463-3\"}', '{\"en\": null}', NULL, NULL, 17, 52, 463, 3, 7, 52, 463, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2314, '{\"en\": \"Temporary Market Name 463-4\"}', '{\"en\": null}', NULL, NULL, 17, 52, 463, 4, 7, 52, 463, 1, 1, 1, '2021-02-21 10:10:37', '2021-02-21 10:10:37'),
(2315, '{\"en\": \"Temporary Market Name 463-5\"}', '{\"en\": null}', NULL, NULL, 17, 52, 463, 5, 7, 52, 463, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2316, '{\"en\": \"Temporary Market Name 464-1\"}', '{\"en\": null}', NULL, NULL, 17, 53, 464, 1, 7, 53, 464, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2317, '{\"en\": \"Temporary Market Name 464-2\"}', '{\"en\": null}', NULL, NULL, 17, 53, 464, 2, 7, 53, 464, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2318, '{\"en\": \"Temporary Market Name 464-3\"}', '{\"en\": null}', NULL, NULL, 17, 53, 464, 3, 7, 53, 464, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2319, '{\"en\": \"Temporary Market Name 464-4\"}', '{\"en\": null}', NULL, NULL, 17, 53, 464, 4, 7, 53, 464, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2320, '{\"en\": \"Temporary Market Name 464-5\"}', '{\"en\": null}', NULL, NULL, 17, 53, 464, 5, 7, 53, 464, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2321, '{\"en\": \"Temporary Market Name 465-1\"}', '{\"en\": null}', NULL, NULL, 17, 53, 465, 1, 7, 53, 465, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2322, '{\"en\": \"Temporary Market Name 465-2\"}', '{\"en\": null}', NULL, NULL, 17, 53, 465, 2, 7, 53, 465, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2323, '{\"en\": \"Temporary Market Name 465-3\"}', '{\"en\": null}', NULL, NULL, 17, 53, 465, 3, 7, 53, 465, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2324, '{\"en\": \"Temporary Market Name 465-4\"}', '{\"en\": null}', NULL, NULL, 17, 53, 465, 4, 7, 53, 465, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2325, '{\"en\": \"Temporary Market Name 465-5\"}', '{\"en\": null}', NULL, NULL, 17, 53, 465, 5, 7, 53, 465, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2326, '{\"en\": \"Temporary Market Name 466-1\"}', '{\"en\": null}', NULL, NULL, 17, 53, 466, 1, 7, 53, 466, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2327, '{\"en\": \"Temporary Market Name 466-2\"}', '{\"en\": null}', NULL, NULL, 17, 53, 466, 2, 7, 53, 466, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2328, '{\"en\": \"Temporary Market Name 466-3\"}', '{\"en\": null}', NULL, NULL, 17, 53, 466, 3, 7, 53, 466, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2329, '{\"en\": \"Temporary Market Name 466-4\"}', '{\"en\": null}', NULL, NULL, 17, 53, 466, 4, 7, 53, 466, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2330, '{\"en\": \"Temporary Market Name 466-5\"}', '{\"en\": null}', NULL, NULL, 17, 53, 466, 5, 7, 53, 466, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2331, '{\"en\": \"Temporary Market Name 467-1\"}', '{\"en\": null}', NULL, NULL, 17, 53, 467, 1, 7, 53, 467, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2332, '{\"en\": \"Temporary Market Name 467-2\"}', '{\"en\": null}', NULL, NULL, 17, 53, 467, 2, 7, 53, 467, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2333, '{\"en\": \"Temporary Market Name 467-3\"}', '{\"en\": null}', NULL, NULL, 17, 53, 467, 3, 7, 53, 467, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2334, '{\"en\": \"Temporary Market Name 467-4\"}', '{\"en\": null}', NULL, NULL, 17, 53, 467, 4, 7, 53, 467, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2335, '{\"en\": \"Temporary Market Name 467-5\"}', '{\"en\": null}', NULL, NULL, 17, 53, 467, 5, 7, 53, 467, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2336, '{\"en\": \"Temporary Market Name 468-1\"}', '{\"en\": null}', NULL, NULL, 17, 53, 468, 1, 7, 53, 468, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2337, '{\"en\": \"Temporary Market Name 468-2\"}', '{\"en\": null}', NULL, NULL, 17, 53, 468, 2, 7, 53, 468, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2338, '{\"en\": \"Temporary Market Name 468-3\"}', '{\"en\": null}', NULL, NULL, 17, 53, 468, 3, 7, 53, 468, 1, 1, 1, '2021-02-21 10:10:38', '2021-02-21 10:10:38'),
(2339, '{\"en\": \"Temporary Market Name 468-4\"}', '{\"en\": null}', NULL, NULL, 17, 53, 468, 4, 7, 53, 468, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2340, '{\"en\": \"Temporary Market Name 468-5\"}', '{\"en\": null}', NULL, NULL, 17, 53, 468, 5, 7, 53, 468, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2341, '{\"en\": \"Temporary Market Name 469-1\"}', '{\"en\": null}', NULL, NULL, 17, 53, 469, 1, 7, 53, 469, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2342, '{\"en\": \"Temporary Market Name 469-2\"}', '{\"en\": null}', NULL, NULL, 17, 53, 469, 2, 7, 53, 469, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2343, '{\"en\": \"Temporary Market Name 469-3\"}', '{\"en\": null}', NULL, NULL, 17, 53, 469, 3, 7, 53, 469, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2344, '{\"en\": \"Temporary Market Name 469-4\"}', '{\"en\": null}', NULL, NULL, 17, 53, 469, 4, 7, 53, 469, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2345, '{\"en\": \"Temporary Market Name 469-5\"}', '{\"en\": null}', NULL, NULL, 17, 53, 469, 5, 7, 53, 469, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2346, '{\"en\": \"Temporary Market Name 470-1\"}', '{\"en\": null}', NULL, NULL, 17, 53, 470, 1, 7, 53, 470, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2347, '{\"en\": \"Temporary Market Name 470-2\"}', '{\"en\": null}', NULL, NULL, 17, 53, 470, 2, 7, 53, 470, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2348, '{\"en\": \"Temporary Market Name 470-3\"}', '{\"en\": null}', NULL, NULL, 17, 53, 470, 3, 7, 53, 470, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2349, '{\"en\": \"Temporary Market Name 470-4\"}', '{\"en\": null}', NULL, NULL, 17, 53, 470, 4, 7, 53, 470, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2350, '{\"en\": \"Temporary Market Name 470-5\"}', '{\"en\": null}', NULL, NULL, 17, 53, 470, 5, 7, 53, 470, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2351, '{\"en\": \"Temporary Market Name 471-1\"}', '{\"en\": null}', NULL, NULL, 17, 53, 471, 1, 7, 53, 471, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2352, '{\"en\": \"Temporary Market Name 471-2\"}', '{\"en\": null}', NULL, NULL, 17, 53, 471, 2, 7, 53, 471, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2353, '{\"en\": \"Temporary Market Name 471-3\"}', '{\"en\": null}', NULL, NULL, 17, 53, 471, 3, 7, 53, 471, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2354, '{\"en\": \"Temporary Market Name 471-4\"}', '{\"en\": null}', NULL, NULL, 17, 53, 471, 4, 7, 53, 471, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2355, '{\"en\": \"Temporary Market Name 471-5\"}', '{\"en\": null}', NULL, NULL, 17, 53, 471, 5, 7, 53, 471, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2356, '{\"en\": \"Temporary Market Name 472-1\"}', '{\"en\": null}', NULL, NULL, 17, 53, 472, 1, 7, 53, 472, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2357, '{\"en\": \"Temporary Market Name 472-2\"}', '{\"en\": null}', NULL, NULL, 17, 53, 472, 2, 7, 53, 472, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2358, '{\"en\": \"Temporary Market Name 472-3\"}', '{\"en\": null}', NULL, NULL, 17, 53, 472, 3, 7, 53, 472, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2359, '{\"en\": \"Temporary Market Name 472-4\"}', '{\"en\": null}', NULL, NULL, 17, 53, 472, 4, 7, 53, 472, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2360, '{\"en\": \"Temporary Market Name 472-5\"}', '{\"en\": null}', NULL, NULL, 17, 53, 472, 5, 7, 53, 472, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2361, '{\"en\": \"Temporary Market Name 473-1\"}', '{\"en\": null}', NULL, NULL, 17, 53, 473, 1, 7, 53, 473, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2362, '{\"en\": \"Temporary Market Name 473-2\"}', '{\"en\": null}', NULL, NULL, 17, 53, 473, 2, 7, 53, 473, 1, 1, 1, '2021-02-21 10:10:39', '2021-02-21 10:10:39'),
(2363, '{\"en\": \"Temporary Market Name 473-3\"}', '{\"en\": null}', NULL, NULL, 17, 53, 473, 3, 7, 53, 473, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2364, '{\"en\": \"Temporary Market Name 473-4\"}', '{\"en\": null}', NULL, NULL, 17, 53, 473, 4, 7, 53, 473, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2365, '{\"en\": \"Temporary Market Name 473-5\"}', '{\"en\": null}', NULL, NULL, 17, 53, 473, 5, 7, 53, 473, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2366, '{\"en\": \"Temporary Market Name 474-1\"}', '{\"en\": null}', NULL, NULL, 17, 53, 474, 1, 7, 53, 474, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2367, '{\"en\": \"Temporary Market Name 474-2\"}', '{\"en\": null}', NULL, NULL, 17, 53, 474, 2, 7, 53, 474, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2368, '{\"en\": \"Temporary Market Name 474-3\"}', '{\"en\": null}', NULL, NULL, 17, 53, 474, 3, 7, 53, 474, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2369, '{\"en\": \"Temporary Market Name 474-4\"}', '{\"en\": null}', NULL, NULL, 17, 53, 474, 4, 7, 53, 474, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2370, '{\"en\": \"Temporary Market Name 474-5\"}', '{\"en\": null}', NULL, NULL, 17, 53, 474, 5, 7, 53, 474, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2371, '{\"en\": \"Temporary Market Name 475-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 475, 1, 7, 54, 475, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2372, '{\"en\": \"Temporary Market Name 475-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 475, 2, 7, 54, 475, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2373, '{\"en\": \"Temporary Market Name 475-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 475, 3, 7, 54, 475, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2374, '{\"en\": \"Temporary Market Name 475-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 475, 4, 7, 54, 475, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2375, '{\"en\": \"Temporary Market Name 475-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 475, 5, 7, 54, 475, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2376, '{\"en\": \"Temporary Market Name 476-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 476, 1, 7, 54, 476, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2377, '{\"en\": \"Temporary Market Name 476-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 476, 2, 7, 54, 476, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2378, '{\"en\": \"Temporary Market Name 476-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 476, 3, 7, 54, 476, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2379, '{\"en\": \"Temporary Market Name 476-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 476, 4, 7, 54, 476, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2380, '{\"en\": \"Temporary Market Name 476-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 476, 5, 7, 54, 476, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2381, '{\"en\": \"Temporary Market Name 477-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 477, 1, 7, 54, 477, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2382, '{\"en\": \"Temporary Market Name 477-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 477, 2, 7, 54, 477, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2383, '{\"en\": \"Temporary Market Name 477-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 477, 3, 7, 54, 477, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2384, '{\"en\": \"Temporary Market Name 477-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 477, 4, 7, 54, 477, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2385, '{\"en\": \"Temporary Market Name 477-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 477, 5, 7, 54, 477, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2386, '{\"en\": \"Temporary Market Name 478-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 478, 1, 7, 54, 478, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2387, '{\"en\": \"Temporary Market Name 478-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 478, 2, 7, 54, 478, 1, 1, 1, '2021-02-21 10:10:40', '2021-02-21 10:10:40'),
(2388, '{\"en\": \"Temporary Market Name 478-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 478, 3, 7, 54, 478, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2389, '{\"en\": \"Temporary Market Name 478-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 478, 4, 7, 54, 478, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2390, '{\"en\": \"Temporary Market Name 478-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 478, 5, 7, 54, 478, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2391, '{\"en\": \"Temporary Market Name 479-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 479, 1, 7, 54, 479, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2392, '{\"en\": \"Temporary Market Name 479-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 479, 2, 7, 54, 479, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2393, '{\"en\": \"Temporary Market Name 479-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 479, 3, 7, 54, 479, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2394, '{\"en\": \"Temporary Market Name 479-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 479, 4, 7, 54, 479, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2395, '{\"en\": \"Temporary Market Name 479-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 479, 5, 7, 54, 479, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2396, '{\"en\": \"Temporary Market Name 480-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 480, 1, 7, 54, 480, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2397, '{\"en\": \"Temporary Market Name 480-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 480, 2, 7, 54, 480, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2398, '{\"en\": \"Temporary Market Name 480-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 480, 3, 7, 54, 480, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2399, '{\"en\": \"Temporary Market Name 480-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 480, 4, 7, 54, 480, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2400, '{\"en\": \"Temporary Market Name 480-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 480, 5, 7, 54, 480, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2401, '{\"en\": \"Temporary Market Name 481-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 481, 1, 7, 54, 481, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2402, '{\"en\": \"Temporary Market Name 481-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 481, 2, 7, 54, 481, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2403, '{\"en\": \"Temporary Market Name 481-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 481, 3, 7, 54, 481, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2404, '{\"en\": \"Temporary Market Name 481-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 481, 4, 7, 54, 481, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2405, '{\"en\": \"Temporary Market Name 481-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 481, 5, 7, 54, 481, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2406, '{\"en\": \"Temporary Market Name 482-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 482, 1, 7, 54, 482, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2407, '{\"en\": \"Temporary Market Name 482-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 482, 2, 7, 54, 482, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2408, '{\"en\": \"Temporary Market Name 482-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 482, 3, 7, 54, 482, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2409, '{\"en\": \"Temporary Market Name 482-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 482, 4, 7, 54, 482, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2410, '{\"en\": \"Temporary Market Name 482-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 482, 5, 7, 54, 482, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2411, '{\"en\": \"Temporary Market Name 483-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 483, 1, 7, 54, 483, 1, 1, 1, '2021-02-21 10:10:41', '2021-02-21 10:10:41'),
(2412, '{\"en\": \"Temporary Market Name 483-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 483, 2, 7, 54, 483, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2413, '{\"en\": \"Temporary Market Name 483-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 483, 3, 7, 54, 483, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2414, '{\"en\": \"Temporary Market Name 483-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 483, 4, 7, 54, 483, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2415, '{\"en\": \"Temporary Market Name 483-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 483, 5, 7, 54, 483, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2416, '{\"en\": \"Temporary Market Name 484-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 484, 1, 7, 54, 484, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2417, '{\"en\": \"Temporary Market Name 484-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 484, 2, 7, 54, 484, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2418, '{\"en\": \"Temporary Market Name 484-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 484, 3, 7, 54, 484, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2419, '{\"en\": \"Temporary Market Name 484-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 484, 4, 7, 54, 484, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2420, '{\"en\": \"Temporary Market Name 484-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 484, 5, 7, 54, 484, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2421, '{\"en\": \"Temporary Market Name 485-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 485, 1, 7, 54, 485, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2422, '{\"en\": \"Temporary Market Name 485-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 485, 2, 7, 54, 485, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2423, '{\"en\": \"Temporary Market Name 485-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 485, 3, 7, 54, 485, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2424, '{\"en\": \"Temporary Market Name 485-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 485, 4, 7, 54, 485, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2425, '{\"en\": \"Temporary Market Name 485-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 485, 5, 7, 54, 485, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2426, '{\"en\": \"Temporary Market Name 486-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 486, 1, 7, 54, 486, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2427, '{\"en\": \"Temporary Market Name 486-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 486, 2, 7, 54, 486, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2428, '{\"en\": \"Temporary Market Name 486-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 486, 3, 7, 54, 486, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2429, '{\"en\": \"Temporary Market Name 486-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 486, 4, 7, 54, 486, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2430, '{\"en\": \"Temporary Market Name 486-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 486, 5, 7, 54, 486, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2431, '{\"en\": \"Temporary Market Name 487-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 487, 1, 7, 54, 487, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2432, '{\"en\": \"Temporary Market Name 487-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 487, 2, 7, 54, 487, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2433, '{\"en\": \"Temporary Market Name 487-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 487, 3, 7, 54, 487, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2434, '{\"en\": \"Temporary Market Name 487-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 487, 4, 7, 54, 487, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2435, '{\"en\": \"Temporary Market Name 487-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 487, 5, 7, 54, 487, 1, 1, 1, '2021-02-21 10:10:42', '2021-02-21 10:10:42'),
(2436, '{\"en\": \"Temporary Market Name 488-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 488, 1, 3, 1, 488, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2437, '{\"en\": \"Temporary Market Name 488-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 488, 2, 3, 1, 488, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2438, '{\"en\": \"Temporary Market Name 488-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 488, 3, 3, 1, 488, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2439, '{\"en\": \"Temporary Market Name 488-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 488, 4, 3, 1, 488, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2440, '{\"en\": \"Temporary Market Name 488-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 488, 5, 3, 1, 488, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2441, '{\"en\": \"Temporary Market Name 489-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 489, 1, 3, 1, 489, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2442, '{\"en\": \"Temporary Market Name 489-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 489, 2, 3, 1, 489, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2443, '{\"en\": \"Temporary Market Name 489-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 489, 3, 3, 1, 489, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2444, '{\"en\": \"Temporary Market Name 489-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 489, 4, 3, 1, 489, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2445, '{\"en\": \"Temporary Market Name 489-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 489, 5, 3, 1, 489, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2446, '{\"en\": \"Temporary Market Name 490-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 490, 1, 3, 1, 490, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2447, '{\"en\": \"Temporary Market Name 490-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 490, 2, 3, 1, 490, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2448, '{\"en\": \"Temporary Market Name 490-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 490, 3, 3, 1, 490, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2449, '{\"en\": \"Temporary Market Name 490-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 490, 4, 3, 1, 490, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43');
INSERT INTO `markets` (`id`, `name`, `address`, `lat`, `lng`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(2450, '{\"en\": \"Temporary Market Name 490-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 490, 5, 3, 1, 490, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2451, '{\"en\": \"Temporary Market Name 491-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 491, 1, 3, 1, 491, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2452, '{\"en\": \"Temporary Market Name 491-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 491, 2, 3, 1, 491, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2453, '{\"en\": \"Temporary Market Name 491-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 491, 3, 3, 1, 491, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2454, '{\"en\": \"Temporary Market Name 491-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 491, 4, 3, 1, 491, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2455, '{\"en\": \"Temporary Market Name 491-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 491, 5, 3, 1, 491, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2456, '{\"en\": \"Temporary Market Name 492-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 492, 1, 3, 1, 492, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2457, '{\"en\": \"Temporary Market Name 492-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 492, 2, 3, 1, 492, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2458, '{\"en\": \"Temporary Market Name 492-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 492, 3, 3, 1, 492, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2459, '{\"en\": \"Temporary Market Name 492-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 492, 4, 3, 1, 492, 1, 1, 1, '2021-02-21 10:10:43', '2021-02-21 10:10:43'),
(2460, '{\"en\": \"Temporary Market Name 492-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 492, 5, 3, 1, 492, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2461, '{\"en\": \"Temporary Market Name 493-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 493, 1, 3, 1, 493, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2462, '{\"en\": \"Temporary Market Name 493-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 493, 2, 3, 1, 493, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2463, '{\"en\": \"Temporary Market Name 493-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 493, 3, 3, 1, 493, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2464, '{\"en\": \"Temporary Market Name 493-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 493, 4, 3, 1, 493, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2465, '{\"en\": \"Temporary Market Name 493-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 493, 5, 3, 1, 493, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2466, '{\"en\": \"Temporary Market Name 494-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 494, 1, 3, 1, 494, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2467, '{\"en\": \"Temporary Market Name 494-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 494, 2, 3, 1, 494, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2468, '{\"en\": \"Temporary Market Name 494-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 494, 3, 3, 1, 494, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2469, '{\"en\": \"Temporary Market Name 494-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 494, 4, 3, 1, 494, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2470, '{\"en\": \"Temporary Market Name 494-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 494, 5, 3, 1, 494, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2471, '{\"en\": \"Temporary Market Name 495-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 495, 1, 3, 1, 495, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2472, '{\"en\": \"Temporary Market Name 495-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 495, 2, 3, 1, 495, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2473, '{\"en\": \"Temporary Market Name 495-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 495, 3, 3, 1, 495, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2474, '{\"en\": \"Temporary Market Name 495-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 495, 4, 3, 1, 495, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2475, '{\"en\": \"Temporary Market Name 495-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 495, 5, 3, 1, 495, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2476, '{\"en\": \"Temporary Market Name 496-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 496, 1, 3, 1, 496, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2477, '{\"en\": \"Temporary Market Name 496-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 496, 2, 3, 1, 496, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2478, '{\"en\": \"Temporary Market Name 496-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 496, 3, 3, 1, 496, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2479, '{\"en\": \"Temporary Market Name 496-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 496, 4, 3, 1, 496, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2480, '{\"en\": \"Temporary Market Name 496-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 496, 5, 3, 1, 496, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2481, '{\"en\": \"Temporary Market Name 497-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 497, 1, 3, 1, 497, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2482, '{\"en\": \"Temporary Market Name 497-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 497, 2, 3, 1, 497, 1, 1, 1, '2021-02-21 10:10:44', '2021-02-21 10:10:44'),
(2483, '{\"en\": \"Temporary Market Name 497-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 497, 3, 3, 1, 497, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2484, '{\"en\": \"Temporary Market Name 497-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 497, 4, 3, 1, 497, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2485, '{\"en\": \"Temporary Market Name 497-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 497, 5, 3, 1, 497, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2486, '{\"en\": \"Temporary Market Name 498-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 498, 1, 3, 1, 498, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2487, '{\"en\": \"Temporary Market Name 498-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 498, 2, 3, 1, 498, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2488, '{\"en\": \"Temporary Market Name 498-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 498, 3, 3, 1, 498, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2489, '{\"en\": \"Temporary Market Name 498-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 498, 4, 3, 1, 498, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2490, '{\"en\": \"Temporary Market Name 498-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 498, 5, 3, 1, 498, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2491, '{\"en\": \"Temporary Market Name 499-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 499, 1, 3, 1, 499, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2492, '{\"en\": \"Temporary Market Name 499-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 499, 2, 3, 1, 499, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2493, '{\"en\": \"Temporary Market Name 499-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 499, 3, 3, 1, 499, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2494, '{\"en\": \"Temporary Market Name 499-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 499, 4, 3, 1, 499, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2495, '{\"en\": \"Temporary Market Name 499-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 499, 5, 3, 1, 499, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2496, '{\"en\": \"Temporary Market Name 500-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 500, 1, 3, 1, 500, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2497, '{\"en\": \"Temporary Market Name 500-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 500, 2, 3, 1, 500, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2498, '{\"en\": \"Temporary Market Name 500-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 500, 3, 3, 1, 500, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2499, '{\"en\": \"Temporary Market Name 500-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 500, 4, 3, 1, 500, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2500, '{\"en\": \"Temporary Market Name 500-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 500, 5, 3, 1, 500, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2501, '{\"en\": \"Temporary Market Name 501-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 501, 1, 3, 1, 501, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2502, '{\"en\": \"Temporary Market Name 501-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 501, 2, 3, 1, 501, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2503, '{\"en\": \"Temporary Market Name 501-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 501, 3, 3, 1, 501, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2504, '{\"en\": \"Temporary Market Name 501-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 501, 4, 3, 1, 501, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2505, '{\"en\": \"Temporary Market Name 501-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 501, 5, 3, 1, 501, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2506, '{\"en\": \"Temporary Market Name 502-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 502, 1, 3, 1, 502, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2507, '{\"en\": \"Temporary Market Name 502-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 502, 2, 3, 1, 502, 1, 1, 1, '2021-02-21 10:10:45', '2021-02-21 10:10:45'),
(2508, '{\"en\": \"Temporary Market Name 502-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 502, 3, 3, 1, 502, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2509, '{\"en\": \"Temporary Market Name 502-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 502, 4, 3, 1, 502, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2510, '{\"en\": \"Temporary Market Name 502-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 502, 5, 3, 1, 502, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2511, '{\"en\": \"Temporary Market Name 503-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 503, 1, 3, 1, 503, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2512, '{\"en\": \"Temporary Market Name 503-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 503, 2, 3, 1, 503, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2513, '{\"en\": \"Temporary Market Name 503-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 503, 3, 3, 1, 503, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2514, '{\"en\": \"Temporary Market Name 503-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 503, 4, 3, 1, 503, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2515, '{\"en\": \"Temporary Market Name 503-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 503, 5, 3, 1, 503, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2516, '{\"en\": \"Temporary Market Name 504-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 504, 1, 3, 1, 504, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2517, '{\"en\": \"Temporary Market Name 504-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 504, 2, 3, 1, 504, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2518, '{\"en\": \"Temporary Market Name 504-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 504, 3, 3, 1, 504, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2519, '{\"en\": \"Temporary Market Name 504-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 504, 4, 3, 1, 504, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2520, '{\"en\": \"Temporary Market Name 504-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 504, 5, 3, 1, 504, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2521, '{\"en\": \"Temporary Market Name 505-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 505, 1, 3, 1, 505, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2522, '{\"en\": \"Temporary Market Name 505-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 505, 2, 3, 1, 505, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2523, '{\"en\": \"Temporary Market Name 505-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 505, 3, 3, 1, 505, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2524, '{\"en\": \"Temporary Market Name 505-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 505, 4, 3, 1, 505, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2525, '{\"en\": \"Temporary Market Name 505-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 505, 5, 3, 1, 505, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2526, '{\"en\": \"Temporary Market Name 506-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 506, 1, 3, 1, 506, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2527, '{\"en\": \"Temporary Market Name 506-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 506, 2, 3, 1, 506, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2528, '{\"en\": \"Temporary Market Name 506-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 506, 3, 3, 1, 506, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2529, '{\"en\": \"Temporary Market Name 506-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 506, 4, 3, 1, 506, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2530, '{\"en\": \"Temporary Market Name 506-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 506, 5, 3, 1, 506, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2531, '{\"en\": \"Temporary Market Name 507-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 507, 1, 3, 1, 507, 1, 1, 1, '2021-02-21 10:10:46', '2021-02-21 10:10:46'),
(2532, '{\"en\": \"Temporary Market Name 507-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 507, 2, 3, 1, 507, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2533, '{\"en\": \"Temporary Market Name 507-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 507, 3, 3, 1, 507, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2534, '{\"en\": \"Temporary Market Name 507-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 507, 4, 3, 1, 507, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2535, '{\"en\": \"Temporary Market Name 507-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 507, 5, 3, 1, 507, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2536, '{\"en\": \"Temporary Market Name 508-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 508, 1, 3, 1, 508, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2537, '{\"en\": \"Temporary Market Name 508-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 508, 2, 3, 1, 508, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2538, '{\"en\": \"Temporary Market Name 508-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 508, 3, 3, 1, 508, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2539, '{\"en\": \"Temporary Market Name 508-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 508, 4, 3, 1, 508, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2540, '{\"en\": \"Temporary Market Name 508-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 508, 5, 3, 1, 508, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2541, '{\"en\": \"Temporary Market Name 509-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 509, 1, 3, 1, 509, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2542, '{\"en\": \"Temporary Market Name 509-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 509, 2, 3, 1, 509, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2543, '{\"en\": \"Temporary Market Name 509-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 509, 3, 3, 1, 509, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2544, '{\"en\": \"Temporary Market Name 509-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 509, 4, 3, 1, 509, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2545, '{\"en\": \"Temporary Market Name 509-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 509, 5, 3, 1, 509, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2546, '{\"en\": \"Temporary Market Name 510-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 510, 1, 3, 1, 510, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2547, '{\"en\": \"Temporary Market Name 510-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 510, 2, 3, 1, 510, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2548, '{\"en\": \"Temporary Market Name 510-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 510, 3, 3, 1, 510, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2549, '{\"en\": \"Temporary Market Name 510-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 510, 4, 3, 1, 510, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2550, '{\"en\": \"Temporary Market Name 510-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 510, 5, 3, 1, 510, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2551, '{\"en\": \"Temporary Market Name 511-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 511, 1, 3, 1, 511, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2552, '{\"en\": \"Temporary Market Name 511-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 511, 2, 3, 1, 511, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2553, '{\"en\": \"Temporary Market Name 511-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 511, 3, 3, 1, 511, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2554, '{\"en\": \"Temporary Market Name 511-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 511, 4, 3, 1, 511, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2555, '{\"en\": \"Temporary Market Name 511-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 511, 5, 3, 1, 511, 1, 1, 1, '2021-02-21 10:10:47', '2021-02-21 10:10:47'),
(2556, '{\"en\": \"Temporary Market Name 512-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 512, 1, 3, 1, 512, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2557, '{\"en\": \"Temporary Market Name 512-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 512, 2, 3, 1, 512, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2558, '{\"en\": \"Temporary Market Name 512-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 512, 3, 3, 1, 512, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2559, '{\"en\": \"Temporary Market Name 512-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 512, 4, 3, 1, 512, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2560, '{\"en\": \"Temporary Market Name 512-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 512, 5, 3, 1, 512, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2561, '{\"en\": \"Temporary Market Name 513-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 513, 1, 3, 1, 513, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2562, '{\"en\": \"Temporary Market Name 513-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 513, 2, 3, 1, 513, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2563, '{\"en\": \"Temporary Market Name 513-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 513, 3, 3, 1, 513, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2564, '{\"en\": \"Temporary Market Name 513-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 513, 4, 3, 1, 513, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2565, '{\"en\": \"Temporary Market Name 513-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 513, 5, 3, 1, 513, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2566, '{\"en\": \"Temporary Market Name 514-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 514, 1, 3, 1, 514, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2567, '{\"en\": \"Temporary Market Name 514-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 514, 2, 3, 1, 514, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2568, '{\"en\": \"Temporary Market Name 514-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 514, 3, 3, 1, 514, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2569, '{\"en\": \"Temporary Market Name 514-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 514, 4, 3, 1, 514, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2570, '{\"en\": \"Temporary Market Name 514-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 514, 5, 3, 1, 514, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2571, '{\"en\": \"Temporary Market Name 515-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 515, 1, 3, 1, 515, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2572, '{\"en\": \"Temporary Market Name 515-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 515, 2, 3, 1, 515, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2573, '{\"en\": \"Temporary Market Name 515-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 515, 3, 3, 1, 515, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2574, '{\"en\": \"Temporary Market Name 515-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 515, 4, 3, 1, 515, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2575, '{\"en\": \"Temporary Market Name 515-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 515, 5, 3, 1, 515, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2576, '{\"en\": \"Temporary Market Name 516-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 516, 1, 3, 1, 516, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2577, '{\"en\": \"Temporary Market Name 516-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 516, 2, 3, 1, 516, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2578, '{\"en\": \"Temporary Market Name 516-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 516, 3, 3, 1, 516, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2579, '{\"en\": \"Temporary Market Name 516-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 516, 4, 3, 1, 516, 1, 1, 1, '2021-02-21 10:10:48', '2021-02-21 10:10:48'),
(2580, '{\"en\": \"Temporary Market Name 516-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 516, 5, 3, 1, 516, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2581, '{\"en\": \"Temporary Market Name 517-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 517, 1, 3, 1, 517, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2582, '{\"en\": \"Temporary Market Name 517-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 517, 2, 3, 1, 517, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2583, '{\"en\": \"Temporary Market Name 517-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 517, 3, 3, 1, 517, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2584, '{\"en\": \"Temporary Market Name 517-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 517, 4, 3, 1, 517, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2585, '{\"en\": \"Temporary Market Name 517-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 517, 5, 3, 1, 517, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2586, '{\"en\": \"Temporary Market Name 518-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 518, 1, 3, 1, 518, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2587, '{\"en\": \"Temporary Market Name 518-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 518, 2, 3, 1, 518, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2588, '{\"en\": \"Temporary Market Name 518-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 518, 3, 3, 1, 518, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2589, '{\"en\": \"Temporary Market Name 518-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 518, 4, 3, 1, 518, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2590, '{\"en\": \"Temporary Market Name 518-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 518, 5, 3, 1, 518, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2591, '{\"en\": \"Temporary Market Name 519-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 519, 1, 3, 1, 519, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2592, '{\"en\": \"Temporary Market Name 519-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 519, 2, 3, 1, 519, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2593, '{\"en\": \"Temporary Market Name 519-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 519, 3, 3, 1, 519, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2594, '{\"en\": \"Temporary Market Name 519-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 519, 4, 3, 1, 519, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2595, '{\"en\": \"Temporary Market Name 519-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 519, 5, 3, 1, 519, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2596, '{\"en\": \"Temporary Market Name 520-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 520, 1, 3, 1, 520, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2597, '{\"en\": \"Temporary Market Name 520-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 520, 2, 3, 1, 520, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2598, '{\"en\": \"Temporary Market Name 520-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 520, 3, 3, 1, 520, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2599, '{\"en\": \"Temporary Market Name 520-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 520, 4, 3, 1, 520, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2600, '{\"en\": \"Temporary Market Name 520-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 520, 5, 3, 1, 520, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2601, '{\"en\": \"Temporary Market Name 521-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 521, 1, 3, 1, 521, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2602, '{\"en\": \"Temporary Market Name 521-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 521, 2, 3, 1, 521, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2603, '{\"en\": \"Temporary Market Name 521-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 521, 3, 3, 1, 521, 1, 1, 1, '2021-02-21 10:10:49', '2021-02-21 10:10:49'),
(2604, '{\"en\": \"Temporary Market Name 521-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 521, 4, 3, 1, 521, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2605, '{\"en\": \"Temporary Market Name 521-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 521, 5, 3, 1, 521, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2606, '{\"en\": \"Temporary Market Name 522-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 522, 1, 3, 1, 522, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2607, '{\"en\": \"Temporary Market Name 522-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 522, 2, 3, 1, 522, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2608, '{\"en\": \"Temporary Market Name 522-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 522, 3, 3, 1, 522, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2609, '{\"en\": \"Temporary Market Name 522-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 522, 4, 3, 1, 522, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2610, '{\"en\": \"Temporary Market Name 522-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 522, 5, 3, 1, 522, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2611, '{\"en\": \"Temporary Market Name 523-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 523, 1, 3, 1, 523, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2612, '{\"en\": \"Temporary Market Name 523-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 523, 2, 3, 1, 523, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2613, '{\"en\": \"Temporary Market Name 523-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 523, 3, 3, 1, 523, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2614, '{\"en\": \"Temporary Market Name 523-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 523, 4, 3, 1, 523, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2615, '{\"en\": \"Temporary Market Name 523-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 523, 5, 3, 1, 523, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2616, '{\"en\": \"Temporary Market Name 524-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 524, 1, 3, 1, 524, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2617, '{\"en\": \"Temporary Market Name 524-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 524, 2, 3, 1, 524, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2618, '{\"en\": \"Temporary Market Name 524-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 524, 3, 3, 1, 524, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2619, '{\"en\": \"Temporary Market Name 524-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 524, 4, 3, 1, 524, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2620, '{\"en\": \"Temporary Market Name 524-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 524, 5, 3, 1, 524, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2621, '{\"en\": \"Temporary Market Name 525-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 525, 1, 3, 1, 525, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2622, '{\"en\": \"Temporary Market Name 525-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 525, 2, 3, 1, 525, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2623, '{\"en\": \"Temporary Market Name 525-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 525, 3, 3, 1, 525, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2624, '{\"en\": \"Temporary Market Name 525-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 525, 4, 3, 1, 525, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2625, '{\"en\": \"Temporary Market Name 525-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 525, 5, 3, 1, 525, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2626, '{\"en\": \"Temporary Market Name 526-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 526, 1, 3, 1, 526, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2627, '{\"en\": \"Temporary Market Name 526-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 526, 2, 3, 1, 526, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2628, '{\"en\": \"Temporary Market Name 526-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 526, 3, 3, 1, 526, 1, 1, 1, '2021-02-21 10:10:50', '2021-02-21 10:10:50'),
(2629, '{\"en\": \"Temporary Market Name 526-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 526, 4, 3, 1, 526, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2630, '{\"en\": \"Temporary Market Name 526-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 526, 5, 3, 1, 526, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2631, '{\"en\": \"Temporary Market Name 527-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 527, 1, 3, 1, 527, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2632, '{\"en\": \"Temporary Market Name 527-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 527, 2, 3, 1, 527, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2633, '{\"en\": \"Temporary Market Name 527-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 527, 3, 3, 1, 527, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2634, '{\"en\": \"Temporary Market Name 527-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 527, 4, 3, 1, 527, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2635, '{\"en\": \"Temporary Market Name 527-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 527, 5, 3, 1, 527, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2636, '{\"en\": \"Temporary Market Name 528-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 528, 1, 3, 1, 528, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2637, '{\"en\": \"Temporary Market Name 528-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 528, 2, 3, 1, 528, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2638, '{\"en\": \"Temporary Market Name 528-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 528, 3, 3, 1, 528, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2639, '{\"en\": \"Temporary Market Name 528-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 528, 4, 3, 1, 528, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2640, '{\"en\": \"Temporary Market Name 528-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 528, 5, 3, 1, 528, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2641, '{\"en\": \"Temporary Market Name 529-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 529, 1, 3, 1, 529, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2642, '{\"en\": \"Temporary Market Name 529-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 529, 2, 3, 1, 529, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2643, '{\"en\": \"Temporary Market Name 529-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 529, 3, 3, 1, 529, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2644, '{\"en\": \"Temporary Market Name 529-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 529, 4, 3, 1, 529, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2645, '{\"en\": \"Temporary Market Name 529-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 529, 5, 3, 1, 529, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2646, '{\"en\": \"Temporary Market Name 530-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 530, 1, 3, 1, 530, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2647, '{\"en\": \"Temporary Market Name 530-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 530, 2, 3, 1, 530, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2648, '{\"en\": \"Temporary Market Name 530-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 530, 3, 3, 1, 530, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2649, '{\"en\": \"Temporary Market Name 530-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 530, 4, 3, 1, 530, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2650, '{\"en\": \"Temporary Market Name 530-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 530, 5, 3, 1, 530, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2651, '{\"en\": \"Temporary Market Name 531-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 531, 1, 3, 1, 531, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2652, '{\"en\": \"Temporary Market Name 531-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 531, 2, 3, 1, 531, 1, 1, 1, '2021-02-21 10:10:51', '2021-02-21 10:10:51'),
(2653, '{\"en\": \"Temporary Market Name 531-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 531, 3, 3, 1, 531, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2654, '{\"en\": \"Temporary Market Name 531-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 531, 4, 3, 1, 531, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2655, '{\"en\": \"Temporary Market Name 531-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 531, 5, 3, 1, 531, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2656, '{\"en\": \"Temporary Market Name 532-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 532, 1, 3, 1, 532, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2657, '{\"en\": \"Temporary Market Name 532-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 532, 2, 3, 1, 532, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2658, '{\"en\": \"Temporary Market Name 532-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 532, 3, 3, 1, 532, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2659, '{\"en\": \"Temporary Market Name 532-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 532, 4, 3, 1, 532, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2660, '{\"en\": \"Temporary Market Name 532-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 532, 5, 3, 1, 532, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2661, '{\"en\": \"Temporary Market Name 533-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 533, 1, 3, 1, 533, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2662, '{\"en\": \"Temporary Market Name 533-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 533, 2, 3, 1, 533, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2663, '{\"en\": \"Temporary Market Name 533-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 533, 3, 3, 1, 533, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2664, '{\"en\": \"Temporary Market Name 533-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 533, 4, 3, 1, 533, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2665, '{\"en\": \"Temporary Market Name 533-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 533, 5, 3, 1, 533, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2666, '{\"en\": \"Temporary Market Name 534-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 534, 1, 3, 1, 534, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2667, '{\"en\": \"Temporary Market Name 534-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 534, 2, 3, 1, 534, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2668, '{\"en\": \"Temporary Market Name 534-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 534, 3, 3, 1, 534, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2669, '{\"en\": \"Temporary Market Name 534-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 534, 4, 3, 1, 534, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2670, '{\"en\": \"Temporary Market Name 534-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 534, 5, 3, 1, 534, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2671, '{\"en\": \"Temporary Market Name 535-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 535, 1, 3, 1, 535, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2672, '{\"en\": \"Temporary Market Name 535-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 535, 2, 3, 1, 535, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2673, '{\"en\": \"Temporary Market Name 535-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 535, 3, 3, 1, 535, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2674, '{\"en\": \"Temporary Market Name 535-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 535, 4, 3, 1, 535, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2675, '{\"en\": \"Temporary Market Name 535-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 535, 5, 3, 1, 535, 1, 1, 1, '2021-02-21 10:10:52', '2021-02-21 10:10:52'),
(2676, '{\"en\": \"Temporary Market Name 536-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 536, 1, 3, 1, 536, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2677, '{\"en\": \"Temporary Market Name 536-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 536, 2, 3, 1, 536, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2678, '{\"en\": \"Temporary Market Name 536-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 536, 3, 3, 1, 536, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2679, '{\"en\": \"Temporary Market Name 536-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 536, 4, 3, 1, 536, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2680, '{\"en\": \"Temporary Market Name 536-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 536, 5, 3, 1, 536, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2681, '{\"en\": \"Temporary Market Name 537-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 537, 1, 3, 1, 537, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2682, '{\"en\": \"Temporary Market Name 537-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 537, 2, 3, 1, 537, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2683, '{\"en\": \"Temporary Market Name 537-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 537, 3, 3, 1, 537, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2684, '{\"en\": \"Temporary Market Name 537-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 537, 4, 3, 1, 537, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2685, '{\"en\": \"Temporary Market Name 537-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 537, 5, 3, 1, 537, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2686, '{\"en\": \"Temporary Market Name 538-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 538, 1, 3, 1, 538, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2687, '{\"en\": \"Temporary Market Name 538-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 538, 2, 3, 1, 538, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2688, '{\"en\": \"Temporary Market Name 538-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 538, 3, 3, 1, 538, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2689, '{\"en\": \"Temporary Market Name 538-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 538, 4, 3, 1, 538, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2690, '{\"en\": \"Temporary Market Name 538-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 538, 5, 3, 1, 538, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2691, '{\"en\": \"Temporary Market Name 539-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 539, 1, 3, 1, 539, 1, 1, 1, '2021-02-21 10:10:53', '2021-02-21 10:10:53'),
(2692, '{\"en\": \"Temporary Market Name 539-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 539, 2, 3, 1, 539, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2693, '{\"en\": \"Temporary Market Name 539-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 539, 3, 3, 1, 539, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2694, '{\"en\": \"Temporary Market Name 539-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 539, 4, 3, 1, 539, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2695, '{\"en\": \"Temporary Market Name 539-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 539, 5, 3, 1, 539, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2696, '{\"en\": \"Temporary Market Name 540-1\"}', '{\"en\": null}', NULL, NULL, 1, 1, 540, 1, 3, 1, 540, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2697, '{\"en\": \"Temporary Market Name 540-2\"}', '{\"en\": null}', NULL, NULL, 1, 1, 540, 2, 3, 1, 540, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2698, '{\"en\": \"Temporary Market Name 540-3\"}', '{\"en\": null}', NULL, NULL, 1, 1, 540, 3, 3, 1, 540, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2699, '{\"en\": \"Temporary Market Name 540-4\"}', '{\"en\": null}', NULL, NULL, 1, 1, 540, 4, 3, 1, 540, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2700, '{\"en\": \"Temporary Market Name 540-5\"}', '{\"en\": null}', NULL, NULL, 1, 1, 540, 5, 3, 1, 540, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2701, '{\"en\": \"Temporary Market Name 541-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 541, 1, 1, 35, 541, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2702, '{\"en\": \"Temporary Market Name 541-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 541, 2, 1, 35, 541, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2703, '{\"en\": \"Temporary Market Name 541-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 541, 3, 1, 35, 541, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2704, '{\"en\": \"Temporary Market Name 541-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 541, 4, 1, 35, 541, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2705, '{\"en\": \"Temporary Market Name 541-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 541, 5, 1, 35, 541, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2706, '{\"en\": \"Temporary Market Name 542-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 542, 1, 1, 35, 542, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2707, '{\"en\": \"Temporary Market Name 542-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 542, 2, 1, 35, 542, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2708, '{\"en\": \"Temporary Market Name 542-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 542, 3, 1, 35, 542, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2709, '{\"en\": \"Temporary Market Name 542-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 542, 4, 1, 35, 542, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2710, '{\"en\": \"Temporary Market Name 542-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 542, 5, 1, 35, 542, 1, 1, 1, '2021-02-21 10:10:54', '2021-02-21 10:10:54'),
(2711, '{\"en\": \"Temporary Market Name 543-1\"}', '{\"en\": null}', NULL, NULL, 15, 35, 543, 1, 1, 35, 543, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2712, '{\"en\": \"Temporary Market Name 543-2\"}', '{\"en\": null}', NULL, NULL, 15, 35, 543, 2, 1, 35, 543, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2713, '{\"en\": \"Temporary Market Name 543-3\"}', '{\"en\": null}', NULL, NULL, 15, 35, 543, 3, 1, 35, 543, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2714, '{\"en\": \"Temporary Market Name 543-4\"}', '{\"en\": null}', NULL, NULL, 15, 35, 543, 4, 1, 35, 543, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2715, '{\"en\": \"Temporary Market Name 543-5\"}', '{\"en\": null}', NULL, NULL, 15, 35, 543, 5, 1, 35, 543, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2716, '{\"en\": \"Temporary Market Name 544-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 544, 1, 5, 24, 544, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2717, '{\"en\": \"Temporary Market Name 544-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 544, 2, 5, 24, 544, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2718, '{\"en\": \"Temporary Market Name 544-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 544, 3, 5, 24, 544, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2719, '{\"en\": \"Temporary Market Name 544-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 544, 4, 5, 24, 544, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2720, '{\"en\": \"Temporary Market Name 544-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 544, 5, 5, 24, 544, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2721, '{\"en\": \"Temporary Market Name 545-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 545, 1, 5, 24, 545, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2722, '{\"en\": \"Temporary Market Name 545-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 545, 2, 5, 24, 545, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2723, '{\"en\": \"Temporary Market Name 545-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 545, 3, 5, 24, 545, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2724, '{\"en\": \"Temporary Market Name 545-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 545, 4, 5, 24, 545, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2725, '{\"en\": \"Temporary Market Name 545-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 545, 5, 5, 24, 545, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2726, '{\"en\": \"Temporary Market Name 546-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 546, 1, 5, 24, 546, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2727, '{\"en\": \"Temporary Market Name 546-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 546, 2, 5, 24, 546, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2728, '{\"en\": \"Temporary Market Name 546-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 546, 3, 5, 24, 546, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2729, '{\"en\": \"Temporary Market Name 546-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 546, 4, 5, 24, 546, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2730, '{\"en\": \"Temporary Market Name 546-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 546, 5, 5, 24, 546, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2731, '{\"en\": \"Temporary Market Name 547-1\"}', '{\"en\": null}', NULL, NULL, 11, 24, 547, 1, 5, 24, 547, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2732, '{\"en\": \"Temporary Market Name 547-2\"}', '{\"en\": null}', NULL, NULL, 11, 24, 547, 2, 5, 24, 547, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2733, '{\"en\": \"Temporary Market Name 547-3\"}', '{\"en\": null}', NULL, NULL, 11, 24, 547, 3, 5, 24, 547, 1, 1, 1, '2021-02-21 10:10:55', '2021-02-21 10:10:55'),
(2734, '{\"en\": \"Temporary Market Name 547-4\"}', '{\"en\": null}', NULL, NULL, 11, 24, 547, 4, 5, 24, 547, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2735, '{\"en\": \"Temporary Market Name 547-5\"}', '{\"en\": null}', NULL, NULL, 11, 24, 547, 5, 5, 24, 547, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2736, '{\"en\": \"Temporary Market Name 548-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 548, 1, 2, 43, 548, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2737, '{\"en\": \"Temporary Market Name 548-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 548, 2, 2, 43, 548, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2738, '{\"en\": \"Temporary Market Name 548-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 548, 3, 2, 43, 548, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2739, '{\"en\": \"Temporary Market Name 548-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 548, 4, 2, 43, 548, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2740, '{\"en\": \"Temporary Market Name 548-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 548, 5, 2, 43, 548, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2741, '{\"en\": \"Temporary Market Name 549-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 549, 1, 2, 43, 549, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2742, '{\"en\": \"Temporary Market Name 549-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 549, 2, 2, 43, 549, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2743, '{\"en\": \"Temporary Market Name 549-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 549, 3, 2, 43, 549, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2744, '{\"en\": \"Temporary Market Name 549-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 549, 4, 2, 43, 549, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2745, '{\"en\": \"Temporary Market Name 549-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 549, 5, 2, 43, 549, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2746, '{\"en\": \"Temporary Market Name 550-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 550, 1, 2, 43, 550, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2747, '{\"en\": \"Temporary Market Name 550-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 550, 2, 2, 43, 550, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2748, '{\"en\": \"Temporary Market Name 550-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 550, 3, 2, 43, 550, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2749, '{\"en\": \"Temporary Market Name 550-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 550, 4, 2, 43, 550, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2750, '{\"en\": \"Temporary Market Name 550-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 550, 5, 2, 43, 550, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2751, '{\"en\": \"Temporary Market Name 551-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 551, 1, 2, 43, 551, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2752, '{\"en\": \"Temporary Market Name 551-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 551, 2, 2, 43, 551, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2753, '{\"en\": \"Temporary Market Name 551-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 551, 3, 2, 43, 551, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2754, '{\"en\": \"Temporary Market Name 551-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 551, 4, 2, 43, 551, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2755, '{\"en\": \"Temporary Market Name 551-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 551, 5, 2, 43, 551, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2756, '{\"en\": \"Temporary Market Name 552-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 552, 1, 2, 43, 552, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56'),
(2757, '{\"en\": \"Temporary Market Name 552-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 552, 2, 2, 43, 552, 1, 1, 1, '2021-02-21 10:10:56', '2021-02-21 10:10:56');
INSERT INTO `markets` (`id`, `name`, `address`, `lat`, `lng`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(2758, '{\"en\": \"Temporary Market Name 552-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 552, 3, 2, 43, 552, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2759, '{\"en\": \"Temporary Market Name 552-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 552, 4, 2, 43, 552, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2760, '{\"en\": \"Temporary Market Name 552-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 552, 5, 2, 43, 552, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2761, '{\"en\": \"Temporary Market Name 553-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 553, 1, 2, 43, 553, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2762, '{\"en\": \"Temporary Market Name 553-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 553, 2, 2, 43, 553, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2763, '{\"en\": \"Temporary Market Name 553-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 553, 3, 2, 43, 553, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2764, '{\"en\": \"Temporary Market Name 553-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 553, 4, 2, 43, 553, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2765, '{\"en\": \"Temporary Market Name 553-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 553, 5, 2, 43, 553, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2766, '{\"en\": \"Temporary Market Name 554-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 554, 1, 2, 43, 554, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2767, '{\"en\": \"Temporary Market Name 554-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 554, 2, 2, 43, 554, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2768, '{\"en\": \"Temporary Market Name 554-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 554, 3, 2, 43, 554, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2769, '{\"en\": \"Temporary Market Name 554-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 554, 4, 2, 43, 554, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2770, '{\"en\": \"Temporary Market Name 554-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 554, 5, 2, 43, 554, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2771, '{\"en\": \"Temporary Market Name 555-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 555, 1, 2, 43, 555, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2772, '{\"en\": \"Temporary Market Name 555-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 555, 2, 2, 43, 555, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2773, '{\"en\": \"Temporary Market Name 555-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 555, 3, 2, 43, 555, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2774, '{\"en\": \"Temporary Market Name 555-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 555, 4, 2, 43, 555, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2775, '{\"en\": \"Temporary Market Name 555-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 555, 5, 2, 43, 555, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2776, '{\"en\": \"Temporary Market Name 556-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 556, 1, 2, 43, 556, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2777, '{\"en\": \"Temporary Market Name 556-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 556, 2, 2, 43, 556, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2778, '{\"en\": \"Temporary Market Name 556-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 556, 3, 2, 43, 556, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2779, '{\"en\": \"Temporary Market Name 556-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 556, 4, 2, 43, 556, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2780, '{\"en\": \"Temporary Market Name 556-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 556, 5, 2, 43, 556, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2781, '{\"en\": \"Temporary Market Name 557-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 557, 1, 2, 43, 557, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2782, '{\"en\": \"Temporary Market Name 557-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 557, 2, 2, 43, 557, 1, 1, 1, '2021-02-21 10:10:57', '2021-02-21 10:10:57'),
(2783, '{\"en\": \"Temporary Market Name 557-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 557, 3, 2, 43, 557, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2784, '{\"en\": \"Temporary Market Name 557-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 557, 4, 2, 43, 557, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2785, '{\"en\": \"Temporary Market Name 557-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 557, 5, 2, 43, 557, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2786, '{\"en\": \"Temporary Market Name 558-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 558, 1, 2, 43, 558, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2787, '{\"en\": \"Temporary Market Name 558-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 558, 2, 2, 43, 558, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2788, '{\"en\": \"Temporary Market Name 558-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 558, 3, 2, 43, 558, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2789, '{\"en\": \"Temporary Market Name 558-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 558, 4, 2, 43, 558, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2790, '{\"en\": \"Temporary Market Name 558-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 558, 5, 2, 43, 558, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2791, '{\"en\": \"Temporary Market Name 559-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 559, 1, 2, 43, 559, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2792, '{\"en\": \"Temporary Market Name 559-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 559, 2, 2, 43, 559, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2793, '{\"en\": \"Temporary Market Name 559-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 559, 3, 2, 43, 559, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2794, '{\"en\": \"Temporary Market Name 559-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 559, 4, 2, 43, 559, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2795, '{\"en\": \"Temporary Market Name 559-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 559, 5, 2, 43, 559, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2796, '{\"en\": \"Temporary Market Name 560-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 560, 1, 2, 43, 560, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2797, '{\"en\": \"Temporary Market Name 560-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 560, 2, 2, 43, 560, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2798, '{\"en\": \"Temporary Market Name 560-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 560, 3, 2, 43, 560, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2799, '{\"en\": \"Temporary Market Name 560-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 560, 4, 2, 43, 560, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2800, '{\"en\": \"Temporary Market Name 560-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 560, 5, 2, 43, 560, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2801, '{\"en\": \"Temporary Market Name 561-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 561, 1, 2, 43, 561, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2802, '{\"en\": \"Temporary Market Name 561-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 561, 2, 2, 43, 561, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2803, '{\"en\": \"Temporary Market Name 561-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 561, 3, 2, 43, 561, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2804, '{\"en\": \"Temporary Market Name 561-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 561, 4, 2, 43, 561, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2805, '{\"en\": \"Temporary Market Name 561-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 561, 5, 2, 43, 561, 1, 1, 1, '2021-02-21 10:10:58', '2021-02-21 10:10:58'),
(2806, '{\"en\": \"Temporary Market Name 562-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 562, 1, 2, 43, 562, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2807, '{\"en\": \"Temporary Market Name 562-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 562, 2, 2, 43, 562, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2808, '{\"en\": \"Temporary Market Name 562-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 562, 3, 2, 43, 562, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2809, '{\"en\": \"Temporary Market Name 562-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 562, 4, 2, 43, 562, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2810, '{\"en\": \"Temporary Market Name 562-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 562, 5, 2, 43, 562, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2811, '{\"en\": \"Temporary Market Name 563-1\"}', '{\"en\": null}', NULL, NULL, 6, 43, 563, 1, 2, 43, 563, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2812, '{\"en\": \"Temporary Market Name 563-2\"}', '{\"en\": null}', NULL, NULL, 6, 43, 563, 2, 2, 43, 563, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2813, '{\"en\": \"Temporary Market Name 563-3\"}', '{\"en\": null}', NULL, NULL, 6, 43, 563, 3, 2, 43, 563, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2814, '{\"en\": \"Temporary Market Name 563-4\"}', '{\"en\": null}', NULL, NULL, 6, 43, 563, 4, 2, 43, 563, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2815, '{\"en\": \"Temporary Market Name 563-5\"}', '{\"en\": null}', NULL, NULL, 6, 43, 563, 5, 2, 43, 563, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2816, '{\"en\": \"Temporary Market Name 564-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 564, 1, 4, 59, 564, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2817, '{\"en\": \"Temporary Market Name 564-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 564, 2, 4, 59, 564, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2818, '{\"en\": \"Temporary Market Name 564-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 564, 3, 4, 59, 564, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2819, '{\"en\": \"Temporary Market Name 564-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 564, 4, 4, 59, 564, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2820, '{\"en\": \"Temporary Market Name 564-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 564, 5, 4, 59, 564, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2821, '{\"en\": \"Temporary Market Name 565-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 565, 1, 4, 59, 565, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2822, '{\"en\": \"Temporary Market Name 565-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 565, 2, 4, 59, 565, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2823, '{\"en\": \"Temporary Market Name 565-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 565, 3, 4, 59, 565, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2824, '{\"en\": \"Temporary Market Name 565-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 565, 4, 4, 59, 565, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2825, '{\"en\": \"Temporary Market Name 565-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 565, 5, 4, 59, 565, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2826, '{\"en\": \"Temporary Market Name 566-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 566, 1, 4, 59, 566, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2827, '{\"en\": \"Temporary Market Name 566-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 566, 2, 4, 59, 566, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2828, '{\"en\": \"Temporary Market Name 566-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 566, 3, 4, 59, 566, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2829, '{\"en\": \"Temporary Market Name 566-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 566, 4, 4, 59, 566, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2830, '{\"en\": \"Temporary Market Name 566-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 566, 5, 4, 59, 566, 1, 1, 1, '2021-02-21 10:10:59', '2021-02-21 10:10:59'),
(2831, '{\"en\": \"Temporary Market Name 567-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 567, 1, 4, 59, 567, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2832, '{\"en\": \"Temporary Market Name 567-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 567, 2, 4, 59, 567, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2833, '{\"en\": \"Temporary Market Name 567-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 567, 3, 4, 59, 567, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2834, '{\"en\": \"Temporary Market Name 567-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 567, 4, 4, 59, 567, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2835, '{\"en\": \"Temporary Market Name 567-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 567, 5, 4, 59, 567, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2836, '{\"en\": \"Temporary Market Name 568-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 568, 1, 4, 59, 568, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2837, '{\"en\": \"Temporary Market Name 568-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 568, 2, 4, 59, 568, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2838, '{\"en\": \"Temporary Market Name 568-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 568, 3, 4, 59, 568, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2839, '{\"en\": \"Temporary Market Name 568-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 568, 4, 4, 59, 568, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2840, '{\"en\": \"Temporary Market Name 568-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 568, 5, 4, 59, 568, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2841, '{\"en\": \"Temporary Market Name 569-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 569, 1, 4, 59, 569, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2842, '{\"en\": \"Temporary Market Name 569-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 569, 2, 4, 59, 569, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2843, '{\"en\": \"Temporary Market Name 569-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 569, 3, 4, 59, 569, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2844, '{\"en\": \"Temporary Market Name 569-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 569, 4, 4, 59, 569, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2845, '{\"en\": \"Temporary Market Name 569-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 569, 5, 4, 59, 569, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2846, '{\"en\": \"Temporary Market Name 570-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 570, 1, 4, 59, 570, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2847, '{\"en\": \"Temporary Market Name 570-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 570, 2, 4, 59, 570, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2848, '{\"en\": \"Temporary Market Name 570-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 570, 3, 4, 59, 570, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2849, '{\"en\": \"Temporary Market Name 570-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 570, 4, 4, 59, 570, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2850, '{\"en\": \"Temporary Market Name 570-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 570, 5, 4, 59, 570, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2851, '{\"en\": \"Temporary Market Name 571-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 571, 1, 4, 59, 571, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2852, '{\"en\": \"Temporary Market Name 571-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 571, 2, 4, 59, 571, 1, 1, 1, '2021-02-21 10:11:00', '2021-02-21 10:11:00'),
(2853, '{\"en\": \"Temporary Market Name 571-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 571, 3, 4, 59, 571, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2854, '{\"en\": \"Temporary Market Name 571-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 571, 4, 4, 59, 571, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2855, '{\"en\": \"Temporary Market Name 571-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 571, 5, 4, 59, 571, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2856, '{\"en\": \"Temporary Market Name 572-1\"}', '{\"en\": null}', NULL, NULL, 13, 59, 572, 1, 4, 59, 572, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2857, '{\"en\": \"Temporary Market Name 572-2\"}', '{\"en\": null}', NULL, NULL, 13, 59, 572, 2, 4, 59, 572, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2858, '{\"en\": \"Temporary Market Name 572-3\"}', '{\"en\": null}', NULL, NULL, 13, 59, 572, 3, 4, 59, 572, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2859, '{\"en\": \"Temporary Market Name 572-4\"}', '{\"en\": null}', NULL, NULL, 13, 59, 572, 4, 4, 59, 572, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2860, '{\"en\": \"Temporary Market Name 572-5\"}', '{\"en\": null}', NULL, NULL, 13, 59, 572, 5, 4, 59, 572, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2861, '{\"en\": \"Temporary Market Name 573-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 573, 1, 7, 54, 573, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2862, '{\"en\": \"Temporary Market Name 573-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 573, 2, 7, 54, 573, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2863, '{\"en\": \"Temporary Market Name 573-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 573, 3, 7, 54, 573, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2864, '{\"en\": \"Temporary Market Name 573-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 573, 4, 7, 54, 573, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2865, '{\"en\": \"Temporary Market Name 573-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 573, 5, 7, 54, 573, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2866, '{\"en\": \"Temporary Market Name 574-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 574, 1, 7, 54, 574, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2867, '{\"en\": \"Temporary Market Name 574-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 574, 2, 7, 54, 574, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2868, '{\"en\": \"Temporary Market Name 574-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 574, 3, 7, 54, 574, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2869, '{\"en\": \"Temporary Market Name 574-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 574, 4, 7, 54, 574, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2870, '{\"en\": \"Temporary Market Name 574-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 574, 5, 7, 54, 574, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2871, '{\"en\": \"Temporary Market Name 575-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 575, 1, 7, 54, 575, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2872, '{\"en\": \"Temporary Market Name 575-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 575, 2, 7, 54, 575, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2873, '{\"en\": \"Temporary Market Name 575-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 575, 3, 7, 54, 575, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2874, '{\"en\": \"Temporary Market Name 575-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 575, 4, 7, 54, 575, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2875, '{\"en\": \"Temporary Market Name 575-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 575, 5, 7, 54, 575, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2876, '{\"en\": \"Temporary Market Name 576-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 576, 1, 7, 54, 576, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2877, '{\"en\": \"Temporary Market Name 576-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 576, 2, 7, 54, 576, 1, 1, 1, '2021-02-21 10:11:01', '2021-02-21 10:11:01'),
(2878, '{\"en\": \"Temporary Market Name 576-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 576, 3, 7, 54, 576, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2879, '{\"en\": \"Temporary Market Name 576-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 576, 4, 7, 54, 576, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2880, '{\"en\": \"Temporary Market Name 576-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 576, 5, 7, 54, 576, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2881, '{\"en\": \"Temporary Market Name 577-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 577, 1, 7, 54, 577, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2882, '{\"en\": \"Temporary Market Name 577-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 577, 2, 7, 54, 577, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2883, '{\"en\": \"Temporary Market Name 577-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 577, 3, 7, 54, 577, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2884, '{\"en\": \"Temporary Market Name 577-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 577, 4, 7, 54, 577, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2885, '{\"en\": \"Temporary Market Name 577-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 577, 5, 7, 54, 577, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2886, '{\"en\": \"Temporary Market Name 578-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 578, 1, 7, 54, 578, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2887, '{\"en\": \"Temporary Market Name 578-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 578, 2, 7, 54, 578, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2888, '{\"en\": \"Temporary Market Name 578-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 578, 3, 7, 54, 578, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2889, '{\"en\": \"Temporary Market Name 578-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 578, 4, 7, 54, 578, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2890, '{\"en\": \"Temporary Market Name 578-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 578, 5, 7, 54, 578, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2891, '{\"en\": \"Temporary Market Name 579-1\"}', '{\"en\": null}', NULL, NULL, 17, 54, 579, 1, 7, 54, 579, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2892, '{\"en\": \"Temporary Market Name 579-2\"}', '{\"en\": null}', NULL, NULL, 17, 54, 579, 2, 7, 54, 579, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2893, '{\"en\": \"Temporary Market Name 579-3\"}', '{\"en\": null}', NULL, NULL, 17, 54, 579, 3, 7, 54, 579, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2894, '{\"en\": \"Temporary Market Name 579-4\"}', '{\"en\": null}', NULL, NULL, 17, 54, 579, 4, 7, 54, 579, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2895, '{\"en\": \"Temporary Market Name 579-5\"}', '{\"en\": null}', NULL, NULL, 17, 54, 579, 5, 7, 54, 579, 1, 1, 1, '2021-02-21 10:11:02', '2021-02-21 10:11:02'),
(2896, '{\"bn\": \"Test Market banglas\", \"en\": \"Test Markets\"}', NULL, NULL, NULL, 1, 1, 516, 2576, 3, 1, 516, 1, 1, 1, '2021-02-24 05:42:30', '2021-02-24 05:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `member_accounts`
--

CREATE TABLE `member_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `referral_withdrawable_comm` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `balance` decimal(12,2) NOT NULL DEFAULT '0.00',
  `refer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `verified_by_agent` tinyint(1) NOT NULL DEFAULT '0',
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci,
  `permanent_address` text COLLATE utf8mb4_unicode_ci,
  `nominee_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominee_dob` date DEFAULT NULL,
  `relation_with_nominee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_02_17_061917_setup_countries_table', 1),
(10, '2021_02_17_061919_charify_countries_table', 1),
(11, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(12, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(13, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(14, '2016_06_01_000004_create_oauth_clients_table', 2),
(15, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(16, '2021_02_17_073503_create_my_roles_table', 3),
(17, '2021_02_17_103758_create_member_accounts_table', 4),
(18, '2021_02_18_141459_create_depos_table', 5),
(19, '2021_02_18_141513_create_dealers_table', 6),
(20, '2021_02_18_141527_create_distributors_table', 6),
(21, '2021_02_18_141547_create_agents_table', 6),
(22, '2021_02_20_130021_create_website_balances_table', 7),
(28, '2021_02_20_141051_create_role_payments_table', 8),
(34, '2021_02_20_154313_create_sales_lists_table', 9),
(36, '2021_02_21_132310_create_markets_table', 9),
(37, '2021_02_20_154114_create_ecommerce_categories_table', 10),
(38, '2021_02_20_154514_create_ecommerce_products_table', 10),
(39, '2021_02_27_110121_create_projects_table', 10),
(40, '2021_02_27_113258_create_project_subscribers_table', 10),
(41, '2021_03_02_041553_create_ecommerce_shop_categories_table', 10),
(42, '2021_03_02_042041_create_ecommerce_cat_shops_table', 10),
(43, '2021_03_02_060546_create_ecommerce_sources_table', 10),
(44, '2021_03_02_062310_create_project_domains_table', 10),
(45, '2021_03_02_111450_create_ecommerce_orders_table', 10),
(46, '2021_03_02_123058_create_ecommerce_order_items_table', 10),
(47, '2021_03_06_081317_create_ecommerce_order_payments_table', 10),
(49, '2021_03_16_102207_create_ecommerce_product_media_table', 11),
(50, '2021_03_17_054736_create_ecommerce_cat_products_table', 12),
(51, '2021_03_23_101951_create_ecommerce_product_prices_table', 13),
(52, '2021_03_29_065422_create_ecommerce_carts_table', 14),
(54, '2021_04_11_103317_create_ecommerce_sales_list_products_table', 15),
(56, '2021_04_18_050455_create_ecommerce_payment_collections_table', 16),
(58, '2021_05_03_201341_create_shipments_table', 17),
(59, '2021_05_03_201521_create_shipment_items_table', 17),
(65, '2021_05_24_055058_create_sr_commissions_table', 19),
(66, '2021_05_24_055720_create_shop_commissions_table', 19),
(67, '2021_05_27_041541_create_sale_commissions_table', 20),
(68, '2021_05_27_061201_create_sr_orders_table', 21),
(69, '2021_05_27_061305_create_sr_order_items_table', 21),
(72, '2021_05_15_153532_create_shipment_returns_table', 22),
(73, '2021_05_29_094946_create_shipment_return_items_table', 22),
(74, '2021_06_01_151141_create_product_replacements_table', 23),
(75, '2021_06_02_045156_create_product_replacement_items_table', 23),
(76, '2021_06_08_062447_create_sr_locations_table', 24),
(78, '2021_06_09_050144_create_sr_salaries_table', 25);

-- --------------------------------------------------------

--
-- Table structure for table `my_roles`
--

CREATE TABLE `my_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addedby_id` int(10) UNSIGNED NOT NULL,
  `editedby_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_roles`
--

INSERT INTO `my_roles` (`id`, `user_id`, `role_name`, `role_value`, `nid`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'Admin', NULL, 1, 1, '2021-02-17 12:52:32', '2021-02-17 12:52:32'),
(2, 1, 'factory', 'Factory', NULL, 1, NULL, '2021-05-12 12:58:42', '2021-05-12 12:58:42'),
(3, 19, 'admin', 'Admin', NULL, 1, NULL, '2021-07-11 04:39:46', '2021-07-11 04:39:46'),
(4, 19, 'common', 'Admin', NULL, 1, NULL, '2021-07-11 04:39:46', '2021-07-11 04:39:46'),
(5, 21, 'factory', 'Factory', NULL, 1, NULL, '2021-07-11 06:33:26', '2021-07-11 06:33:26'),
(6, 47, 'admin', 'Admin', '9555222224', 1, NULL, '2021-07-13 04:38:03', '2021-07-13 04:38:03'),
(7, 47, 'common', 'Admin', NULL, 1, NULL, '2021-07-13 04:38:03', '2021-07-13 04:38:03'),
(8, 48, 'admin', 'Admin', '9555222224', 1, NULL, '2021-07-13 04:40:05', '2021-07-13 04:40:05'),
(9, 48, 'common', 'Admin', NULL, 1, NULL, '2021-07-13 04:40:05', '2021-07-13 04:40:05'),
(10, 49, 'factory', 'Factory', '9555222224', 1, NULL, '2021-07-13 04:40:51', '2021-07-13 04:40:51'),
(11, 50, 'factory', 'Factory', '9555222224', 1, NULL, '2021-07-13 04:45:13', '2021-07-13 04:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ConnectingPark Personal Access Client', 'iq5axdFlWuzGOCwTPm5qFTQPUTs3Rg9NVh3fs0B2', NULL, 'http://localhost', 1, 0, 0, '2021-02-17 00:53:41', '2021-02-17 00:53:41'),
(2, NULL, 'ConnectingPark Password Grant Client', 'i3B67oM3Xuitdfxh2DLjL9vKBzjw4onhm2I9AquX', 'users', 'http://localhost', 0, 1, 0, '2021-02-17 00:53:41', '2021-02-17 00:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-02-17 00:53:41', '2021-02-17 00:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `product_replacements`
--

CREATE TABLE `product_replacements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipment_return_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `return_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `approvedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_due` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_shipment_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_return_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_replacement_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `return_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `received_at` timestamp NULL DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_replacements`
--

INSERT INTO `product_replacements` (`id`, `shipment_return_id`, `shipment_id`, `order_id`, `agent_id`, `source_id`, `mobile`, `address`, `reason`, `completed`, `return_status`, `approvedby_id`, `total_quantity`, `total_price`, `total_weight`, `total_paid`, `total_due`, `total_shipment_price`, `total_return_price`, `total_replacement_price`, `return_at`, `approved_at`, `shipped_at`, `received_at`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 1, 1, '97534534534', 'Ducimus sit beatae', NULL, 0, 'pending', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '1075.00', '630.00', '630.00', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-07 23:00:20', '2021-06-07 23:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_replacement_items`
--

CREATE TABLE `product_replacement_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_replacement_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_return_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_return_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyer_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `market_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approvedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `return_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_reason` text COLLATE utf8mb4_unicode_ci,
  `order_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipment_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `return_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `replace_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(13,2) NOT NULL DEFAULT '0.00',
  `shipment_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `return_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `replace_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `unit_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price_after_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `affiliate_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `final_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `return_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `received_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_replacement_items`
--

INSERT INTO `product_replacement_items` (`id`, `product_replacement_id`, `shipment_return_id`, `shipment_return_item_id`, `shipment_id`, `shipment_item_id`, `order_id`, `order_item_id`, `product_id`, `product_name`, `confirmed`, `completed`, `user_id`, `seller_source_id`, `buyer_source_id`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `market_id`, `approvedby_id`, `return_type`, `return_reason`, `order_quantity`, `shipment_quantity`, `return_quantity`, `replace_quantity`, `unit_price`, `shipment_amount`, `return_amount`, `replace_amount`, `unit_discount`, `total_discount`, `total_price_after_discount`, `affiliate_price`, `final_price`, `total_weight`, `addedby_id`, `editedby_id`, `return_at`, `approved_at`, `shipped_at`, `received_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2, 1, 1, 1, 3, 'Obcaecati velit labo', 0, 0, NULL, 1, 1, 1, 1, 1, 1, 8, 5, 165, NULL, NULL, NULL, NULL, '5.00', '5.00', '2.00', '2.00', '15.00', '75.00', '30.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2021-06-07 22:57:47', NULL, NULL, NULL, '2021-06-07 23:00:20', '2021-06-07 23:00:20'),
(2, 1, 1, 2, 2, 2, 1, 2, 4, 'Autem voluptas paria', 0, 0, NULL, 1, 1, 1, 1, 1, 1, 8, 5, 165, NULL, NULL, NULL, NULL, '5.00', '5.00', '3.00', '3.00', '200.00', '1000.00', '600.00', '600.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2021-06-07 22:57:47', NULL, NULL, NULL, '2021-06-07 23:00:20', '2021-06-07 23:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `feature_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `edited_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_domains`
--

CREATE TABLE `project_domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domainable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `domainable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_subscribers`
--

CREATE TABLE `project_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `referral_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pinned` tinyint(1) DEFAULT '0',
  `drag_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_payments`
--

CREATE TABLE `role_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roleto_id` bigint(20) UNSIGNED DEFAULT NULL,
  `roleto_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roleby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `roleby_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `previous_balance` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `transfer_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `current_balance` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_lists`
--

CREATE TABLE `sales_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_lists`
--

INSERT INTO `sales_lists` (`id`, `name`, `description`, `img_name`, `banner_name`, `position`, `active`, `featured`, `_lft`, `_rgt`, `parent_id`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(4, '{\"en\":\"August Harmon\",\"bn\":\"Irma Griffith\"}', '{\"en\":\"Mollitia atque labor\",\"bn\":\"Omnis esse sunt id\"}', NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2021-04-11 21:41:51', '2021-04-11 21:41:51'),
(5, '{\"en\":\"Kerry Poole\",\"bn\":\"Ori Petty\"}', '{\"en\":\"Sed sed est pariatur\",\"bn\":\"Velit culpa veniam\"}', NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2021-04-11 21:47:30', '2021-04-11 21:47:30'),
(6, '{\"en\":\"Kerry Poole\",\"bn\":\"Ori Petty\"}', '{\"en\":\"Sed sed est pariatur\",\"bn\":\"Velit culpa veniam\"}', NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2021-04-11 21:47:41', '2021-04-11 21:47:41'),
(7, '{\"en\":\"Kerry Poole\",\"bn\":\"Ori Petty\"}', '{\"en\":\"Sed sed est pariatur\",\"bn\":\"Velit culpa veniam\"}', NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2021-04-11 21:47:52', '2021-04-11 21:47:52'),
(8, '{\"en\":\"Kerry Poole\",\"bn\":\"Ori Petty\"}', '{\"en\":\"Sed sed est pariatur\",\"bn\":\"Velit culpa veniam\"}', NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2021-04-11 21:48:03', '2021-04-11 21:48:03'),
(9, '{\"en\":\"Kerry Poole\",\"bn\":\"Ori Petty\"}', '{\"en\":\"Sed sed est pariatur\",\"bn\":\"Velit culpa veniam\"}', NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2021-04-11 21:48:10', '2021-04-11 21:48:10'),
(10, '{\"en\":\"Kerry Poole\",\"bn\":\"Ori Petty\"}', '{\"en\":\"Sed sed est pariatur\",\"bn\":\"Velit culpa veniam\"}', NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2021-04-11 21:48:59', '2021-04-11 21:48:59'),
(11, '{\"en\":\"Phelan Fowler\",\"bn\":\"\"}', '{\"en\":\"Sapiente labore expl\",\"bn\":\"\"}', 'http://127.0.0.1:8000/storage/salesList/phelan-fowler_2021-04-12-040826', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2021-04-11 22:01:17', '2021-04-11 22:08:26'),
(12, '{\"en\":\"Hayes Goff\",\"bn\":\"\"}', '{\"en\":\"Consequat In molest\",\"bn\":\"\"}', 'http://127.0.0.1:8000/storage/salesList/hayes-goff_2021-04-12-040245', 'http://127.0.0.1:8000/storage/salesList/hayes-goff_2021-04-12-054124', 0, 0, 0, 0, 0, NULL, NULL, NULL, '2021-04-11 22:02:45', '2021-04-11 23:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `sale_commissions`
--

CREATE TABLE `sale_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivered_quantity` decimal(13,2) UNSIGNED DEFAULT NULL,
  `total_price` decimal(15,2) UNSIGNED DEFAULT NULL,
  `collection_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sr_commission` decimal(5,2) UNSIGNED DEFAULT NULL,
  `sr_monthly_target` decimal(15,2) UNSIGNED DEFAULT NULL,
  `sr_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `shop_commission` decimal(5,2) UNSIGNED DEFAULT NULL,
  `shop_monthly_target` decimal(15,2) UNSIGNED DEFAULT NULL,
  `shop_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `system_balance` decimal(15,2) UNSIGNED DEFAULT NULL,
  `tr_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_commissions`
--

INSERT INTO `sale_commissions` (`id`, `order_id`, `order_item_id`, `shipment_id`, `shipment_item_id`, `agent_id`, `source_id`, `product_id`, `delivered_quantity`, `total_price`, `collection_amount`, `sr_commission`, `sr_monthly_target`, `sr_amount`, `shop_commission`, `shop_monthly_target`, `shop_amount`, `system_balance`, `tr_date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, 1, 1, 3, '5.00', '75.00', '60.00', '10.00', '345432.00', '6.00', '20.00', '234234234.00', '15.00', '54.00', '2021-06-07', '2021-06-07 07:58:54', '2021-06-07 07:58:54'),
(2, 1, 2, 2, 2, 1, 1, 4, '5.00', '1000.00', '800.00', '15.00', '345432.00', '120.00', '20.00', '234234234.00', '200.00', '680.00', '2021-06-07', '2021-06-07 07:58:54', '2021-06-07 07:58:54'),
(3, 3, 4, 4, 4, 1, 1, 14, '581.00', '142345.00', '113876.00', '10.00', '345432.00', '11387.60', '20.00', '234234234.00', '28469.00', '102488.40', '2021-07-13', '2021-07-13 06:22:39', '2021-07-13 06:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `replacement_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `market_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approvedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_collection_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `shipment_price` decimal(15,2) UNSIGNED DEFAULT NULL,
  `total_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_due` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pending_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `processing_at` timestamp NULL DEFAULT NULL,
  `ready_to_ship_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `collected_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `returned_at` timestamp NULL DEFAULT NULL,
  `undelivered_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipment_items`
--

CREATE TABLE `shipment_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyer_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `market_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approvedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_description` text COLLATE utf8mb4_unicode_ci,
  `total_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipment_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `returned_quantity` decimal(10,2) UNSIGNED DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipment_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `collection_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `unit_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price_after_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `affiliate_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `final_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stock_minimized` tinyint(1) NOT NULL DEFAULT '0',
  `pending_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `processing_at` timestamp NULL DEFAULT NULL,
  `ready_to_ship_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `returned_at` timestamp NULL DEFAULT NULL,
  `undelivered_at` timestamp NULL DEFAULT NULL,
  `paid_to_seller_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipment_returns`
--

CREATE TABLE `shipment_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `return_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `approvedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_due` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_shipment_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_return_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `return_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `processing_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `received_at` timestamp NULL DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipment_returns`
--

INSERT INTO `shipment_returns` (`id`, `shipment_id`, `order_id`, `agent_id`, `source_id`, `mobile`, `address`, `reason`, `return_status`, `approvedby_id`, `total_quantity`, `total_price`, `total_weight`, `total_paid`, `total_due`, `total_shipment_price`, `total_return_price`, `return_at`, `approved_at`, `processing_at`, `shipped_at`, `received_at`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, '97534534534', 'Ducimus sit beatae', '', 'accepted', 1, '0.00', '1075.00', '0.00', '0.00', '0.00', '1075.00', '630.00', '2021-06-07 22:57:47', '2021-06-07 23:00:20', NULL, '2021-06-07 07:58:39', NULL, 1, 1, '2021-06-07 22:57:47', '2021-06-07 23:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `shipment_return_items`
--

CREATE TABLE `shipment_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipment_return_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyer_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `market_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approvedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `return_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_reason` text COLLATE utf8mb4_unicode_ci,
  `image_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipment_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `return_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(13,2) NOT NULL DEFAULT '0.00',
  `shipment_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `return_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `unit_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price_after_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `affiliate_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `final_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `return_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `received_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_commissions`
--

CREATE TABLE `shop_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `commission` decimal(5,2) UNSIGNED DEFAULT '5.00',
  `active` tinyint(1) DEFAULT '0',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_commissions`
--

INSERT INTO `shop_commissions` (`id`, `user_id`, `source_id`, `category_id`, `commission`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 28, 1, '25.00', 0, NULL, 1, '2021-05-25 06:06:04', '2021-05-25 06:06:04'),
(2, NULL, 28, 4, '20.00', 0, NULL, 1, '2021-05-25 06:06:04', '2021-05-25 06:06:04'),
(3, NULL, 28, 5, '20.00', 0, NULL, 1, '2021-05-25 06:06:04', '2021-05-25 06:06:04'),
(4, NULL, 16, 1, '25.00', 0, NULL, 1, '2021-05-25 06:21:13', '2021-05-25 06:21:13'),
(5, NULL, 16, 4, '20.00', 0, NULL, 1, '2021-05-25 06:21:13', '2021-05-25 06:21:13'),
(6, NULL, 16, 5, '20.00', 0, NULL, 1, '2021-05-25 06:21:13', '2021-05-25 06:21:13'),
(7, NULL, 23, 1, '25.00', 0, NULL, 1, '2021-05-25 06:22:05', '2021-05-25 06:22:05'),
(8, NULL, 23, 4, '20.00', 0, NULL, 1, '2021-05-25 06:22:05', '2021-05-25 06:22:05'),
(9, NULL, 23, 5, '20.00', 0, NULL, 1, '2021-05-25 06:22:05', '2021-05-25 06:22:05'),
(10, NULL, 27, 1, '25.00', 0, NULL, 1, '2021-05-25 23:36:14', '2021-05-25 23:36:14'),
(11, NULL, 27, 4, '20.00', 0, NULL, 1, '2021-05-25 23:36:14', '2021-05-25 23:36:14'),
(12, NULL, 27, 5, '20.00', 0, NULL, 1, '2021-05-25 23:36:14', '2021-05-25 23:36:14'),
(13, NULL, 26, 1, '25.00', 0, NULL, 1, '2021-05-26 03:53:34', '2021-05-26 03:53:34'),
(14, NULL, 26, 4, '20.00', 0, NULL, 1, '2021-05-26 03:53:34', '2021-05-26 03:53:34'),
(15, NULL, 26, 5, '20.00', 0, NULL, 1, '2021-05-26 03:53:34', '2021-05-26 03:53:34'),
(16, NULL, 4, 1, '25.00', 0, NULL, 1, '2021-05-26 04:03:30', '2021-05-26 04:03:30'),
(17, NULL, 4, 4, '20.00', 0, NULL, 1, '2021-05-26 04:03:30', '2021-05-26 04:03:30'),
(18, NULL, 4, 5, '20.00', 0, NULL, 1, '2021-05-26 04:03:30', '2021-05-26 04:03:30'),
(19, NULL, 29, 1, '25.00', 0, NULL, 1, '2021-05-26 04:11:06', '2021-05-26 04:11:06'),
(20, NULL, 29, 4, '20.00', 0, NULL, 1, '2021-05-26 04:11:06', '2021-05-26 04:11:06'),
(21, NULL, 29, 5, '20.00', 0, NULL, 1, '2021-05-26 04:11:06', '2021-05-26 04:11:06'),
(22, NULL, 30, 1, '25.00', 0, NULL, 1, '2021-05-26 04:21:14', '2021-05-26 04:21:14'),
(23, NULL, 30, 4, '20.00', 0, NULL, 1, '2021-05-26 04:21:14', '2021-05-26 04:21:14'),
(24, NULL, 30, 5, '20.00', 0, NULL, 1, '2021-05-26 04:21:14', '2021-05-26 04:21:14'),
(25, NULL, 30, 6, '24.00', 0, NULL, 1, '2021-05-26 04:21:25', '2021-05-26 04:21:25'),
(26, NULL, 28, 7, '20.00', 0, NULL, 1, '2021-05-27 02:17:18', '2021-05-27 02:17:18'),
(27, NULL, 28, 9, '20.00', 0, NULL, 1, '2021-05-27 02:17:18', '2021-05-27 02:17:18'),
(28, NULL, 30, 7, '20.00', 0, NULL, 1, '2021-05-27 02:18:22', '2021-05-27 02:18:22'),
(29, NULL, 30, 9, '20.00', 0, NULL, 1, '2021-05-27 02:18:22', '2021-05-27 02:18:22'),
(30, NULL, 32, 1, '25.00', 0, NULL, 1, '2021-05-30 09:05:13', '2021-05-30 09:05:13'),
(31, NULL, 32, 4, '20.00', 0, NULL, 1, '2021-05-30 09:05:13', '2021-05-30 09:05:13'),
(32, NULL, 32, 5, '20.00', 0, NULL, 1, '2021-05-30 09:05:13', '2021-05-30 09:05:13'),
(33, NULL, 32, 7, '20.00', 0, NULL, 1, '2021-05-30 09:05:13', '2021-05-30 09:05:13'),
(34, NULL, 32, 9, '20.00', 0, NULL, 1, '2021-05-30 09:05:13', '2021-05-30 09:05:13'),
(35, NULL, 1, 1, '25.00', 0, NULL, 1, '2021-05-31 05:54:27', '2021-05-31 05:54:27'),
(36, NULL, 1, 4, '20.00', 0, NULL, 1, '2021-05-31 05:54:27', '2021-05-31 05:54:27'),
(37, NULL, 1, 5, '20.00', 0, NULL, 1, '2021-05-31 05:54:27', '2021-05-31 05:54:27'),
(38, NULL, 1, 6, '20.00', 0, NULL, 1, '2021-06-27 13:12:38', '2021-06-27 13:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `sr_commissions`
--

CREATE TABLE `sr_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `commission` decimal(5,2) UNSIGNED DEFAULT '5.00',
  `active` tinyint(1) DEFAULT '0',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sr_commissions`
--

INSERT INTO `sr_commissions` (`id`, `user_id`, `agent_id`, `category_id`, `commission`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 19, 2902, 1, '10.00', 0, 1, NULL, '2021-05-24 01:07:30', '2021-05-24 01:07:30'),
(2, 19, 2902, 4, '10.00', 0, 1, NULL, '2021-05-24 01:07:30', '2021-05-24 01:07:30'),
(3, 34, 2903, 1, '15.00', 0, 1, 1, '2021-05-24 01:12:31', '2021-05-24 06:38:51'),
(4, 34, 2903, 4, '10.00', 0, 1, 1, '2021-05-24 01:12:31', '2021-05-24 06:38:51'),
(5, 34, 2903, 5, '10.00', 0, 1, 1, '2021-05-24 01:12:31', '2021-05-24 06:38:51'),
(6, 34, 2903, 6, '20.00', 0, NULL, 1, '2021-05-24 06:38:51', '2021-05-24 06:38:51'),
(7, 34, 2903, 7, '21.00', 0, NULL, 1, '2021-05-24 06:38:51', '2021-05-24 06:44:13'),
(8, 4, 2, 1, '12.00', 0, NULL, 1, '2021-05-26 23:37:00', '2021-05-26 23:37:00'),
(9, 4, 2, 4, '10.00', 0, NULL, 1, '2021-05-26 23:37:00', '2021-05-26 23:37:00'),
(10, 4, 2, 5, '15.00', 0, NULL, 1, '2021-05-26 23:37:00', '2021-05-26 23:37:00'),
(11, 35, 2904, 1, '12.00', 0, 1, NULL, '2021-05-30 09:02:36', '2021-05-30 09:02:36'),
(12, 35, 2904, 4, '10.00', 0, 1, NULL, '2021-05-30 09:02:36', '2021-05-30 09:02:36'),
(13, 35, 2904, 5, '15.00', 0, 1, NULL, '2021-05-30 09:02:36', '2021-05-30 09:02:36'),
(14, 35, 2904, 7, '10.00', 0, 1, NULL, '2021-05-30 09:02:36', '2021-05-30 09:02:36'),
(15, 37, 2905, 1, '12.00', 0, 1, NULL, '2021-05-30 22:58:36', '2021-05-30 22:58:36'),
(16, 37, 2905, 4, '10.00', 0, 1, NULL, '2021-05-30 22:58:36', '2021-05-30 22:58:36'),
(17, 37, 2905, 5, '15.00', 0, 1, NULL, '2021-05-30 22:58:36', '2021-05-30 22:58:36'),
(18, 37, 2905, 7, '10.00', 0, 1, NULL, '2021-05-30 22:58:36', '2021-05-30 22:58:36'),
(19, 37, 2905, 9, '10.00', 0, 1, NULL, '2021-05-30 22:58:36', '2021-05-30 22:58:36'),
(20, 41, 2906, 1, '18.00', 0, 1, NULL, '2021-05-30 23:39:45', '2021-05-30 23:39:45'),
(21, 41, 2906, 4, '50.00', 0, 1, NULL, '2021-05-30 23:39:45', '2021-05-30 23:39:45'),
(22, 41, 2906, 5, '38.00', 0, 1, NULL, '2021-05-30 23:39:45', '2021-05-30 23:39:45'),
(23, 41, 2906, 6, '32.00', 0, 1, NULL, '2021-05-30 23:39:46', '2021-05-30 23:39:46'),
(24, 41, 2906, 7, '18.00', 0, 1, NULL, '2021-05-30 23:39:46', '2021-05-30 23:39:46'),
(25, 41, 2906, 8, '13.00', 0, 1, NULL, '2021-05-30 23:39:46', '2021-05-30 23:39:46'),
(26, 41, 2906, 9, '66.00', 0, 1, NULL, '2021-05-30 23:39:46', '2021-05-30 23:39:46'),
(27, 41, 2906, 10, '53.00', 0, 1, NULL, '2021-05-30 23:39:46', '2021-05-30 23:39:46'),
(28, 41, 2906, 11, '74.00', 0, 1, NULL, '2021-05-30 23:39:46', '2021-05-30 23:39:46'),
(29, 1, 1, 1, '12.00', 0, 1, NULL, '2021-05-31 03:44:40', '2021-05-31 03:44:40'),
(30, 1, 1, 4, '10.00', 0, 1, NULL, '2021-05-31 03:44:40', '2021-05-31 03:44:40'),
(31, 1, 1, 5, '15.00', 0, 1, NULL, '2021-05-31 03:44:40', '2021-05-31 03:44:40'),
(32, 1, 1, 7, '10.00', 0, 1, NULL, '2021-05-31 03:44:40', '2021-05-31 03:44:40'),
(33, 1, 1, 9, '10.00', 0, 1, NULL, '2021-05-31 03:44:40', '2021-05-31 03:44:40'),
(34, 5, 2, 1, '10.00', 0, 1, NULL, '2021-06-26 07:19:23', '2021-06-26 07:19:23'),
(35, 5, 2, 4, '10.00', 0, 1, NULL, '2021-06-26 07:19:23', '2021-06-26 07:19:23'),
(36, 5, 2, 5, '15.00', 0, 1, NULL, '2021-06-26 07:19:23', '2021-06-26 07:19:23'),
(37, 5, 2, 6, '10.00', 0, 1, NULL, '2021-06-26 07:19:23', '2021-06-26 07:19:23'),
(38, 4, 3, 1, '12.00', 0, 1, NULL, '2021-07-11 05:09:17', '2021-07-11 05:09:17'),
(39, 4, 3, 4, '10.00', 0, 1, NULL, '2021-07-11 05:09:17', '2021-07-11 05:09:17'),
(40, 4, 3, 5, '15.00', 0, 1, NULL, '2021-07-11 05:09:17', '2021-07-11 05:09:17'),
(41, 4, 3, 6, '10.00', 0, 1, NULL, '2021-07-11 05:09:17', '2021-07-11 05:09:17'),
(42, 18, 4, 1, '12.00', 0, 1, NULL, '2021-07-14 06:46:14', '2021-07-14 06:46:14'),
(43, 18, 4, 4, '10.00', 0, 1, NULL, '2021-07-14 06:46:14', '2021-07-14 06:46:14'),
(44, 18, 4, 5, '15.00', 0, 1, NULL, '2021-07-14 06:46:14', '2021-07-14 06:46:14'),
(45, 18, 4, 6, '10.00', 0, 1, NULL, '2021-07-14 06:46:14', '2021-07-14 06:46:14'),
(46, 60, 5, 1, '12.00', 0, 1, 1, '2021-12-30 06:22:18', '2021-12-30 06:23:11'),
(47, 60, 5, 4, '67.00', 0, 1, NULL, '2021-12-30 06:22:18', '2021-12-30 06:22:18'),
(48, 60, 5, 5, '75.00', 0, 1, NULL, '2021-12-30 06:22:18', '2021-12-30 06:22:18'),
(49, 60, 5, 6, '96.00', 0, 1, NULL, '2021-12-30 06:22:18', '2021-12-30 06:22:18'),
(50, 61, 6, 1, '12.00', 0, 1, NULL, '2021-12-30 08:19:10', '2021-12-30 08:19:10'),
(51, 61, 6, 4, '10.00', 0, 1, NULL, '2021-12-30 08:19:10', '2021-12-30 08:19:10'),
(52, 61, 6, 5, '15.00', 0, 1, NULL, '2021-12-30 08:19:10', '2021-12-30 08:19:10'),
(53, 61, 6, 6, '10.00', 0, 1, NULL, '2021-12-30 08:19:10', '2021-12-30 08:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `sr_locations`
--

CREATE TABLE `sr_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sr_locations`
--

INSERT INTO `sr_locations` (`id`, `user_id`, `agent_id`, `lat`, `lng`, `location`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 's', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sr_orders`
--

CREATE TABLE `sr_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `market_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approvedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `total_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_collection_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_due` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pending_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `processing_at` timestamp NULL DEFAULT NULL,
  `ready_to_ship_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `collected_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `returned_at` timestamp NULL DEFAULT NULL,
  `undelivered_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sr_orders`
--

INSERT INTO `sr_orders` (`id`, `user_id`, `order_id`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `market_id`, `source_id`, `approvedby_id`, `mobile`, `address`, `order_status`, `payment_status`, `total_quantity`, `total_price`, `total_collection_amount`, `total_weight`, `total_paid`, `total_due`, `addedby_id`, `editedby_id`, `pending_at`, `confirmed_at`, `processing_at`, `ready_to_ship_at`, `shipped_at`, `collected_at`, `delivered_at`, `cancelled_at`, `returned_at`, `undelivered_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 1, 1, 1, 8, 5, 165, NULL, 1, NULL, '97534534534', 'Ducimus sit beatae', 'pending', 'unpaid', '0.00', '2000.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2021-06-01 04:53:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01 04:53:04', '2021-06-01 04:53:04'),
(2, NULL, 2, 1, 1, 1, 1, 8, 5, 165, NULL, 1, NULL, '97534534534', 'Ducimus sit beatae', 'pending', 'unpaid', '0.00', '1000.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, '2021-06-01 04:58:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01 04:58:10', '2021-06-01 04:58:10'),
(3, NULL, 1, 1, 1, 1, 1, 8, 5, 165, NULL, 1, NULL, '97534534534', 'Ducimus sit beatae', 'pending', 'unpaid', '0.00', '1075.00', '860.00', '0.00', '0.00', '0.00', NULL, NULL, '2021-06-07 07:53:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-07 07:53:59', '2021-06-07 07:53:59'),
(4, NULL, 2, 1, 1, 1, 1, 8, 5, 165, NULL, 1, NULL, '97534534534', 'Ducimus sit beatae', 'pending', 'unpaid', '0.00', '142345.00', '113876.00', '0.00', '0.00', '0.00', NULL, NULL, '2021-07-12 05:16:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-12 05:16:24', '2021-07-12 05:16:25'),
(5, NULL, 3, 1, 1, 1, 1, 8, 5, 165, NULL, 1, NULL, '97534534534', 'Ducimus sit beatae', 'pending', 'unpaid', '0.00', '142345.00', '113876.00', '0.00', '0.00', '0.00', NULL, NULL, '2021-07-13 06:21:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-13 06:21:02', '2021-07-13 06:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `sr_order_items`
--

CREATE TABLE `sr_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sr_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyer_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `market_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approvedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_description` text COLLATE utf8mb4_unicode_ci,
  `total_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipment_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(13,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(13,2) NOT NULL DEFAULT '0.00',
  `collection_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `unit_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price_after_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `affiliate_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `final_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stock_minimized` tinyint(1) NOT NULL DEFAULT '0',
  `pending_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `processing_at` timestamp NULL DEFAULT NULL,
  `ready_to_ship_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `returned_at` timestamp NULL DEFAULT NULL,
  `undelivered_at` timestamp NULL DEFAULT NULL,
  `paid_to_seller_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sr_order_items`
--

INSERT INTO `sr_order_items` (`id`, `sr_order_id`, `order_id`, `order_item_id`, `product_id`, `product_name`, `user_id`, `seller_source_id`, `buyer_source_id`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `market_id`, `approvedby_id`, `order_status`, `color`, `size`, `sale_type`, `extra_description`, `total_quantity`, `shipment_quantity`, `unit_price`, `total_price`, `collection_amount`, `unit_discount`, `total_discount`, `total_price_after_discount`, `affiliate_price`, `final_price`, `total_weight`, `addedby_id`, `editedby_id`, `stock_minimized`, `pending_at`, `confirmed_at`, `processing_at`, `ready_to_ship_at`, `shipped_at`, `delivered_at`, `cancelled_at`, `returned_at`, `undelivered_at`, `paid_to_seller_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 4, 'Autem voluptas paria', NULL, 1, 1, 1, 1, 1, 1, 8, 5, 165, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, '10.00', '0.00', '200.00', '2000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01 04:53:04', '2021-06-01 04:53:04'),
(2, 2, 2, NULL, 4, 'Autem voluptas paria', NULL, 1, 1, 1, 1, 1, 1, 8, 5, 165, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, '5.00', '0.00', '200.00', '1000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01 04:58:10', '2021-06-01 04:58:10'),
(3, 3, 1, NULL, 3, 'Obcaecati velit labo', NULL, 1, 1, 1, 1, 1, 1, 8, 5, 165, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, '5.00', '0.00', '15.00', '75.00', '60.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-07 07:53:59', '2021-06-07 07:53:59'),
(4, 3, 1, NULL, 4, 'Autem voluptas paria', NULL, 1, 1, 1, 1, 1, 1, 8, 5, 165, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, '5.00', '0.00', '200.00', '1000.00', '800.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-07 07:53:59', '2021-06-07 07:53:59'),
(5, 4, 2, NULL, 14, 'Samson Mcdowell', NULL, 1, 1, 1, 1, 1, 1, 8, 5, 165, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, '581.00', '0.00', '245.00', '142345.00', '113876.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-12 05:16:25', '2021-07-12 05:16:25'),
(6, 5, 3, NULL, 14, 'Samson Mcdowell', NULL, 1, 1, 1, 1, 1, 1, 8, 5, 165, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, '581.00', '0.00', '245.00', '142345.00', '113876.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-13 06:21:02', '2021-07-13 06:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `sr_salaries`
--

CREATE TABLE `sr_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) DEFAULT NULL,
  `previous_income` decimal(15,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `current_income` decimal(15,2) NOT NULL DEFAULT '0.00',
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trans_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sr_salaries`
--

INSERT INTO `sr_salaries` (`id`, `agent_id`, `previous_income`, `paid_amount`, `current_income`, `addedby_id`, `editedby_id`, `trans_date`, `created_at`, `updated_at`) VALUES
(1, 1, '50.00', '40.00', '10.00', 1, NULL, '2021-06-09', '2021-06-09 00:04:56', '2021-06-09 00:04:56'),
(2, 1, '50.00', '30.00', '20.00', 1, NULL, '2021-06-09', '2021-06-09 00:08:00', '2021-06-09 00:08:00'),
(3, 1, '20.00', '10.00', '10.00', 1, NULL, '2021-06-09', '2021-06-09 00:08:07', '2021-06-09 00:08:07'),
(4, 1, '10.00', '10.00', '0.00', 1, NULL, '2021-06-09', '2021-06-09 00:08:12', '2021-06-09 00:08:12'),
(5, 1, '11296.39', '100.00', '11196.39', 1, NULL, '2021-12-22', '2021-12-22 06:33:01', '2021-12-22 06:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bn_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `division_id`, `name`, `bn_name`, `created_at`, `updated_at`) VALUES
(1, 34, 1, 'Amtali', 'আমতলী', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(2, 34, 1, 'Bamna ', 'বামনা', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(3, 34, 1, 'Barguna Sadar ', 'বরগুনা সদর', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(4, 34, 1, 'Betagi ', 'বেতাগি', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(5, 34, 1, 'Patharghata ', 'পাথরঘাটা', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(6, 34, 1, 'Taltali ', 'তালতলী', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(7, 35, 1, 'Muladi ', 'মুলাদি', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(8, 35, 1, 'Babuganj ', 'বাবুগঞ্জ', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(9, 35, 1, 'Agailjhara ', 'আগাইলঝরা', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(10, 35, 1, 'Barisal Sadar ', 'বরিশাল সদর', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(11, 35, 1, 'Bakerganj ', 'বাকেরগঞ্জ', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(12, 35, 1, 'Banaripara ', 'বানাড়িপারা', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(13, 35, 1, 'Gaurnadi ', 'গৌরনদী', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(14, 35, 1, 'Hizla ', 'হিজলা', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(15, 35, 1, 'Mehendiganj ', 'মেহেদিগঞ্জ ', '2018-09-27 07:12:17', '2018-09-27 07:12:17'),
(16, 35, 1, 'Wazirpur ', 'ওয়াজিরপুর', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(17, 36, 1, 'Bhola Sadar ', 'ভোলা সদর', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(18, 36, 1, 'Burhanuddin ', 'বুরহানউদ্দিন', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(19, 36, 1, 'Char Fasson ', 'চর ফ্যাশন', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(20, 36, 1, 'Daulatkhan ', 'দৌলতখান', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(21, 36, 1, 'Lalmohan ', 'লালমোহন', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(22, 36, 1, 'Manpura ', 'মনপুরা', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(23, 36, 1, 'Tazumuddin ', 'তাজুমুদ্দিন', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(24, 37, 1, 'Jhalokati Sadar ', 'ঝালকাঠি সদর', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(25, 37, 1, 'Kathalia ', 'কাঁঠালিয়া', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(26, 37, 1, 'Nalchity ', 'নালচিতি', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(27, 37, 1, 'Rajapur ', 'রাজাপুর', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(28, 38, 1, 'Bauphal ', 'বাউফল', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(29, 38, 1, 'Dashmina ', 'দশমিনা', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(30, 38, 1, 'Galachipa ', 'গলাচিপা', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(31, 38, 1, 'Kalapara ', 'কালাপারা', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(32, 38, 1, 'Mirzaganj ', 'মির্জাগঞ্জ ', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(33, 38, 1, 'Patuakhali Sadar ', 'পটুয়াখালী সদর', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(34, 38, 1, 'Dumki ', 'ডুমকি', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(35, 38, 1, 'Rangabali ', 'রাঙ্গাবালি', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(36, 39, 1, 'Bhandaria', 'ভ্যান্ডারিয়া', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(37, 39, 1, 'Kaukhali', 'কাউখালি', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(38, 39, 1, 'Mathbaria', 'মাঠবাড়িয়া', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(39, 39, 1, 'Nazirpur', 'নাজিরপুর', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(40, 39, 1, 'Nesarabad', 'নেসারাবাদ', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(41, 39, 1, 'Pirojpur Sadar', 'পিরোজপুর সদর', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(42, 39, 1, 'Zianagar', 'জিয়ানগর', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(43, 40, 2, 'Bandarban Sadar', 'বান্দরবন সদর', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(44, 40, 2, 'Thanchi', 'থানচি', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(45, 40, 2, 'Lama', 'লামা', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(46, 40, 2, 'Naikhongchhari', 'নাইখংছড়ি ', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(47, 40, 2, 'Ali kadam', 'আলী কদম', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(48, 40, 2, 'Rowangchhari', 'রউয়াংছড়ি ', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(49, 40, 2, 'Ruma', 'রুমা', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(50, 41, 2, 'Brahmanbaria Sadar ', 'ব্রাহ্মণবাড়িয়া সদর', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(51, 41, 2, 'Ashuganj ', 'আশুগঞ্জ', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(52, 41, 2, 'Nasirnagar ', 'নাসির নগর', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(53, 41, 2, 'Nabinagar ', 'নবীনগর', '2018-09-27 07:12:18', '2018-09-27 07:12:18'),
(54, 41, 2, 'Sarail ', 'সরাইল', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(55, 41, 2, 'Shahbazpur Town', 'শাহবাজপুর টাউন', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(56, 41, 2, 'Kasba ', 'কসবা', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(57, 41, 2, 'Akhaura ', 'আখাউরা', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(58, 41, 2, 'Bancharampur ', 'বাঞ্ছারামপুর', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(59, 41, 2, 'Bijoynagar ', 'বিজয় নগর', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(60, 42, 2, 'Chandpur Sadar', 'চাঁদপুর সদর', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(61, 42, 2, 'Faridganj', 'ফরিদগঞ্জ', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(62, 42, 2, 'Haimchar', 'হাইমচর', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(63, 42, 2, 'Haziganj', 'হাজীগঞ্জ', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(64, 42, 2, 'Kachua', 'কচুয়া', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(65, 42, 2, 'Matlab Uttar', 'মতলব উত্তর', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(66, 42, 2, 'Matlab Dakkhin', 'মতলব দক্ষিণ', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(67, 42, 2, 'Shahrasti', 'শাহরাস্তি', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(68, 43, 2, 'Anwara ', 'আনোয়ারা', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(69, 43, 2, 'Banshkhali ', 'বাশখালি', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(70, 43, 2, 'Boalkhali ', 'বোয়ালখালি', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(71, 43, 2, 'Chandanaish ', 'চন্দনাইশ', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(72, 43, 2, 'Fatikchhari ', 'ফটিকছড়ি', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(73, 43, 2, 'Hathazari ', 'হাঠহাজারী', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(74, 43, 2, 'Lohagara ', 'লোহাগারা', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(75, 43, 2, 'Mirsharai ', 'মিরসরাই', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(76, 43, 2, 'Patiya ', 'পটিয়া', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(77, 43, 2, 'Rangunia ', 'রাঙ্গুনিয়া', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(78, 43, 2, 'Raozan ', 'রাউজান', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(79, 43, 2, 'Sandwip ', 'সন্দ্বীপ', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(80, 43, 2, 'Satkania ', 'সাতকানিয়া', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(81, 43, 2, 'Sitakunda ', 'সীতাকুণ্ড', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(82, 44, 2, 'Barura ', 'বড়ুরা', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(83, 44, 2, 'Brahmanpara ', 'ব্রাহ্মণপাড়া', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(84, 44, 2, 'Burichong ', 'বুড়িচং', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(85, 44, 2, 'Chandina ', 'চান্দিনা', '2018-09-27 07:12:19', '2018-09-27 07:12:19'),
(86, 44, 2, 'Chauddagram ', 'চৌদ্দগ্রাম', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(87, 44, 2, 'Daudkandi ', 'দাউদকান্দি', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(88, 44, 2, 'Debidwar ', 'দেবীদ্বার', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(89, 44, 2, 'Homna ', 'হোমনা', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(90, 44, 2, 'Comilla Sadar ', 'কুমিল্লা সদর', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(91, 44, 2, 'Laksam ', 'লাকসাম', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(92, 44, 2, 'Monohorgonj ', 'মনোহরগঞ্জ', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(93, 44, 2, 'Meghna ', 'মেঘনা', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(94, 44, 2, 'Muradnagar ', 'মুরাদনগর', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(95, 44, 2, 'Nangalkot ', 'নাঙ্গালকোট', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(96, 44, 2, 'Comilla Sadar South ', 'কুমিল্লা সদর দক্ষিণ', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(97, 44, 2, 'Titas ', 'তিতাস', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(98, 45, 2, 'Chakaria ', 'চকরিয়া', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(99, 45, 2, 'Chakaria ', 'চকরিয়া', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(100, 45, 2, 'Cox\'s Bazar Sadar ', 'কক্স বাজার সদর', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(101, 45, 2, 'Kutubdia ', 'কুতুবদিয়া', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(102, 45, 2, 'Maheshkhali ', 'মহেশখালী', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(103, 45, 2, 'Ramu ', 'রামু', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(104, 45, 2, 'Teknaf ', 'টেকনাফ', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(105, 45, 2, 'Ukhia ', 'উখিয়া', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(106, 45, 2, 'Pekua ', 'পেকুয়া', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(107, 46, 2, 'Feni Sadar', 'ফেনী সদর', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(108, 46, 2, 'Chagalnaiya', 'ছাগল নাইয়া', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(109, 46, 2, 'Daganbhyan', 'দাগানভিয়া', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(110, 46, 2, 'Parshuram', 'পরশুরাম', '2018-09-27 07:12:20', '2018-09-27 07:12:20'),
(111, 46, 2, 'Fhulgazi', 'ফুলগাজি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(112, 46, 2, 'Sonagazi', 'সোনাগাজি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(113, 47, 2, 'Dighinala ', 'দিঘিনালা ', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(114, 47, 2, 'Khagrachhari ', 'খাগড়াছড়ি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(115, 47, 2, 'Lakshmichhari ', 'লক্ষ্মীছড়ি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(116, 47, 2, 'Mahalchhari ', 'মহলছড়ি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(117, 47, 2, 'Manikchhari ', 'মানিকছড়ি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(118, 47, 2, 'Matiranga ', 'মাটিরাঙ্গা', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(119, 47, 2, 'Panchhari ', 'পানছড়ি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(120, 47, 2, 'Ramgarh ', 'রামগড়', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(121, 48, 2, 'Lakshmipur Sadar ', 'লক্ষ্মীপুর সদর', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(122, 48, 2, 'Raipur ', 'রায়পুর', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(123, 48, 2, 'Ramganj ', 'রামগঞ্জ', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(124, 48, 2, 'Ramgati ', 'রামগতি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(125, 48, 2, 'Komol Nagar ', 'কমল নগর', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(126, 49, 2, 'Noakhali Sadar ', 'নোয়াখালী সদর', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(127, 49, 2, 'Begumganj ', 'বেগমগঞ্জ', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(128, 49, 2, 'Chatkhil ', 'চাটখিল', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(129, 49, 2, 'Companyganj ', 'কোম্পানীগঞ্জ', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(130, 49, 2, 'Shenbag ', 'শেনবাগ', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(131, 49, 2, 'Hatia ', 'হাতিয়া', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(132, 49, 2, 'Kobirhat ', 'কবিরহাট ', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(133, 49, 2, 'Sonaimuri ', 'সোনাইমুরি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(134, 49, 2, 'Suborno Char ', 'সুবর্ণ চর ', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(135, 50, 2, 'Rangamati Sadar ', 'রাঙ্গামাটি সদর', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(136, 50, 2, 'Belaichhari ', 'বেলাইছড়ি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(137, 50, 2, 'Bagaichhari ', 'বাঘাইছড়ি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(138, 50, 2, 'Barkal ', 'বরকল', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(139, 50, 2, 'Juraichhari ', 'জুরাইছড়ি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(140, 50, 2, 'Rajasthali ', 'রাজাস্থলি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(141, 50, 2, 'Kaptai ', 'কাপ্তাই', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(142, 50, 2, 'Langadu ', 'লাঙ্গাডু', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(143, 50, 2, 'Nannerchar ', 'নান্নেরচর ', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(144, 50, 2, 'Kaukhali ', 'কাউখালি', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(145, 2, 3, 'Faridpur Sadar ', 'ফরিদপুর সদর', '2018-09-27 07:12:21', '2018-09-27 07:12:21'),
(146, 2, 3, 'Boalmari ', 'বোয়ালমারী', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(147, 2, 3, 'Alfadanga ', 'আলফাডাঙ্গা', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(148, 2, 3, 'Madhukhali ', 'মধুখালি', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(149, 2, 3, 'Bhanga ', 'ভাঙ্গা', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(150, 2, 3, 'Nagarkanda ', 'নগরকান্ড', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(151, 2, 3, 'Charbhadrasan ', 'চরভদ্রাসন ', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(152, 2, 3, 'Sadarpur ', 'সদরপুর', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(153, 2, 3, 'Shaltha ', 'শালথা', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(154, 3, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(155, 3, 3, 'Kaliakior', 'কালিয়াকৈর', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(156, 3, 3, 'Kapasia', 'কাপাসিয়া', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(157, 3, 3, 'Sripur', 'শ্রীপুর', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(158, 3, 3, 'Kaliganj', 'কালীগঞ্জ', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(159, 3, 3, 'Tongi', 'টঙ্গি', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(160, 4, 3, 'Gopalganj Sadar ', 'গোপালগঞ্জ সদর', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(161, 4, 3, 'Kashiani ', 'কাশিয়ানি', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(162, 4, 3, 'Kotalipara ', 'কোটালিপাড়া', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(163, 4, 3, 'Muksudpur ', 'মুকসুদপুর', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(164, 4, 3, 'Tungipara ', 'টুঙ্গিপাড়া', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(165, 5, 8, 'Dewanganj ', 'দেওয়ানগঞ্জ', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(166, 5, 8, 'Baksiganj ', 'বকসিগঞ্জ', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(167, 5, 8, 'Islampur ', 'ইসলামপুর', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(168, 5, 8, 'Jamalpur Sadar ', 'জামালপুর সদর', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(169, 5, 8, 'Madarganj ', 'মাদারগঞ্জ', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(170, 5, 8, 'Melandaha ', 'মেলানদাহা', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(171, 5, 8, 'Sarishabari ', 'সরিষাবাড়ি ', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(172, 5, 8, 'Narundi Police I.C', 'নারুন্দি', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(173, 6, 3, 'Astagram ', 'অষ্টগ্রাম', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(174, 6, 3, 'Bajitpur ', 'বাজিতপুর', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(175, 6, 3, 'Bhairab ', 'ভৈরব', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(176, 6, 3, 'Hossainpur ', 'হোসেনপুর ', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(177, 6, 3, 'Itna ', 'ইটনা', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(178, 6, 3, 'Karimganj ', 'করিমগঞ্জ', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(179, 6, 3, 'Katiadi ', 'কতিয়াদি', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(180, 6, 3, 'Kishoreganj Sadar ', 'কিশোরগঞ্জ সদর', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(181, 6, 3, 'Kuliarchar ', 'কুলিয়ারচর', '2018-09-27 07:12:22', '2018-09-27 07:12:22'),
(182, 6, 3, 'Mithamain ', 'মিঠামাইন', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(183, 6, 3, 'Nikli ', 'নিকলি', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(184, 6, 3, 'Pakundia ', 'পাকুন্ডা', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(185, 6, 3, 'Tarail ', 'তাড়াইল', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(186, 7, 3, 'Madaripur Sadar', 'মাদারীপুর সদর', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(187, 7, 3, 'Kalkini', 'কালকিনি', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(188, 7, 3, 'Rajoir', 'রাজইর', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(189, 7, 3, 'Shibchar', 'শিবচর', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(190, 8, 3, 'Manikganj Sadar ', 'মানিকগঞ্জ সদর', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(191, 8, 3, 'Singair ', 'সিঙ্গাইর', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(192, 8, 3, 'Shibalaya ', 'শিবালয়', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(193, 8, 3, 'Saturia ', 'সাঠুরিয়া', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(194, 8, 3, 'Harirampur ', 'হরিরামপুর', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(195, 8, 3, 'Ghior ', 'ঘিওর', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(196, 8, 3, 'Daulatpur ', 'দৌলতপুর', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(197, 9, 3, 'Lohajang ', 'লোহাজং', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(198, 9, 3, 'Sreenagar ', 'শ্রীনগর', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(199, 9, 3, 'Munshiganj Sadar ', 'মুন্সিগঞ্জ সদর', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(200, 9, 3, 'Sirajdikhan ', 'সিরাজদিখান', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(201, 9, 3, 'Tongibari ', 'টঙ্গিবাড়ি', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(202, 9, 3, 'Gazaria ', 'গজারিয়া', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(203, 10, 8, 'Bhaluka', 'ভালুকা', '2018-09-27 07:12:23', '2018-09-27 07:12:23'),
(204, 10, 8, 'Trishal', 'ত্রিশাল', '2018-09-27 07:12:24', '2018-09-27 07:12:24'),
(205, 10, 8, 'Haluaghat', 'হালুয়াঘাট', '2018-09-27 07:12:24', '2018-09-27 07:12:24'),
(206, 10, 8, 'Muktagachha', 'মুক্তাগাছা', '2018-09-27 07:12:24', '2018-09-27 07:12:24'),
(207, 10, 8, 'Dhobaura', 'ধবারুয়া', '2018-09-27 07:12:24', '2018-09-27 07:12:24'),
(208, 10, 8, 'Fulbaria', 'ফুলবাড়িয়া', '2018-09-27 07:12:24', '2018-09-27 07:12:24'),
(209, 10, 8, 'Gaffargaon', 'গফরগাঁও', '2018-09-27 07:12:24', '2018-09-27 07:12:24'),
(210, 10, 8, 'Gauripur', 'গৌরিপুর', '2018-09-27 07:12:24', '2018-09-27 07:12:24'),
(211, 10, 8, 'Ishwarganj', 'ঈশ্বরগঞ্জ', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(212, 10, 8, 'Mymensingh Sadar', 'ময়মনসিং সদর', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(213, 10, 8, 'Nandail', 'নন্দাইল', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(214, 10, 8, 'Phulpur', 'ফুলপুর', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(215, 11, 3, 'Araihazar ', 'আড়াইহাজার', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(216, 11, 3, 'Sonargaon ', 'সোনারগাঁও', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(217, 11, 3, 'Bandar', 'বান্দার', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(218, 11, 3, 'Naryanganj Sadar ', 'নারায়ানগঞ্জ সদর', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(219, 11, 3, 'Rupganj ', 'রূপগঞ্জ', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(220, 11, 3, 'Siddirgonj ', 'সিদ্ধিরগঞ্জ', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(221, 12, 3, 'Belabo ', 'বেলাবো', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(222, 12, 3, 'Monohardi ', 'মনোহরদি', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(223, 12, 3, 'Narsingdi Sadar ', 'নরসিংদী সদর', '2018-09-27 07:12:25', '2018-09-27 07:12:25'),
(224, 12, 3, 'Palash ', 'পলাশ', '2018-09-27 07:12:26', '2018-09-27 07:12:26'),
(225, 12, 3, 'Raipura , Narsingdi', 'রায়পুর', '2018-09-27 07:12:26', '2018-09-27 07:12:26'),
(226, 12, 3, 'Shibpur ', 'শিবপুর', '2018-09-27 07:12:26', '2018-09-27 07:12:26'),
(227, 13, 8, 'Kendua Upazilla', 'কেন্দুয়া', '2018-09-27 07:12:26', '2018-09-27 07:12:26'),
(228, 13, 8, 'Atpara Upazilla', 'আটপাড়া', '2018-09-27 07:12:26', '2018-09-27 07:12:26'),
(229, 13, 8, 'Barhatta Upazilla', 'বরহাট্টা', '2018-09-27 07:12:27', '2018-09-27 07:12:27'),
(230, 13, 8, 'Durgapur Upazilla', 'দুর্গাপুর', '2018-09-27 07:12:27', '2018-09-27 07:12:27'),
(231, 13, 8, 'Kalmakanda Upazilla', 'কলমাকান্দা', '2018-09-27 07:12:27', '2018-09-27 07:12:27'),
(232, 13, 8, 'Madan Upazilla', 'মদন', '2018-09-27 07:12:27', '2018-09-27 07:12:27'),
(233, 13, 8, 'Mohanganj Upazilla', 'মোহনগঞ্জ', '2018-09-27 07:12:27', '2018-09-27 07:12:27'),
(234, 13, 8, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর', '2018-09-27 07:12:27', '2018-09-27 07:12:27'),
(235, 13, 8, 'Purbadhala Upazilla', 'পূর্বধলা', '2018-09-27 07:12:27', '2018-09-27 07:12:27'),
(236, 13, 8, 'Khaliajuri Upazilla', 'খালিয়াজুরি', '2018-09-27 07:12:27', '2018-09-27 07:12:27'),
(237, 14, 3, 'Baliakandi ', 'বালিয়াকান্দি', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(238, 14, 3, 'Goalandaghat ', 'গোয়ালন্দ ঘাট', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(239, 14, 3, 'Pangsha ', 'পাংশা', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(240, 14, 3, 'Kalukhali ', 'কালুখালি', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(241, 14, 3, 'Rajbari Sadar ', 'রাজবাড়ি সদর', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(242, 15, 3, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর ', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(243, 15, 3, 'Damudya ', 'দামুদিয়া', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(244, 15, 3, 'Naria ', 'নড়িয়া', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(245, 15, 3, 'Jajira ', 'জাজিরা', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(246, 15, 3, 'Bhedarganj ', 'ভেদারগঞ্জ', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(247, 15, 3, 'Gosairhat ', 'গোসাইর হাট ', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(248, 16, 8, 'Jhenaigati ', 'ঝিনাইগাতি', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(249, 16, 8, 'Nakla ', 'নাকলা', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(250, 16, 8, 'Nalitabari ', 'নালিতাবাড়ি', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(251, 16, 8, 'Sherpur Sadar ', 'শেরপুর সদর', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(252, 16, 8, 'Sreebardi ', 'শ্রীবরদি', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(253, 17, 3, 'Tangail Sadar ', 'টাঙ্গাইল সদর', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(254, 17, 3, 'Sakhipur ', 'সখিপুর', '2018-09-27 07:12:28', '2018-09-27 07:12:28'),
(255, 17, 3, 'Basail ', 'বসাইল', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(256, 17, 3, 'Madhupur ', 'মধুপুর', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(257, 17, 3, 'Ghatail ', 'ঘাটাইল', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(258, 17, 3, 'Kalihati ', 'কালিহাতি', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(259, 17, 3, 'Nagarpur ', 'নগরপুর', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(260, 17, 3, 'Mirzapur ', 'মির্জাপুর', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(261, 17, 3, 'Gopalpur ', 'গোপালপুর', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(262, 17, 3, 'Delduar ', 'দেলদুয়ার', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(263, 17, 3, 'Bhuapur ', 'ভুয়াপুর', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(264, 17, 3, 'Dhanbari ', 'ধানবাড়ি', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(265, 55, 4, 'Bagerhat Sadar ', 'বাগেরহাট সদর', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(266, 55, 4, 'Chitalmari ', 'চিতলমাড়ি', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(267, 55, 4, 'Fakirhat ', 'ফকিরহাট', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(268, 55, 4, 'Kachua ', 'কচুয়া', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(269, 55, 4, 'Mollahat ', 'মোল্লাহাট ', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(270, 55, 4, 'Mongla ', 'মংলা', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(271, 55, 4, 'Morrelganj ', 'মরেলগঞ্জ', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(272, 55, 4, 'Rampal ', 'রামপাল', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(273, 55, 4, 'Sarankhola ', 'স্মরণখোলা', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(274, 56, 4, 'Damurhuda ', 'দামুরহুদা', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(275, 56, 4, 'Chuadanga-S ', 'চুয়াডাঙ্গা সদর', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(276, 56, 4, 'Jibannagar ', 'জীবন নগর ', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(277, 56, 4, 'Alamdanga ', 'আলমডাঙ্গা', '2018-09-27 07:12:29', '2018-09-27 07:12:29'),
(278, 57, 4, 'Abhaynagar ', 'অভয়নগর', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(279, 57, 4, 'Keshabpur ', 'কেশবপুর', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(280, 57, 4, 'Bagherpara ', 'বাঘের পাড়া ', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(281, 57, 4, 'Jessore Sadar ', 'যশোর সদর', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(282, 57, 4, 'Chaugachha ', 'চৌগাছা', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(283, 57, 4, 'Manirampur ', 'মনিরামপুর ', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(284, 57, 4, 'Jhikargachha ', 'ঝিকরগাছা', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(285, 57, 4, 'Sharsha ', 'সারশা', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(286, 58, 4, 'Jhenaidah Sadar ', 'ঝিনাইদহ সদর', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(287, 58, 4, 'Maheshpur ', 'মহেশপুর', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(288, 58, 4, 'Kaliganj ', 'কালীগঞ্জ', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(289, 58, 4, 'Kotchandpur ', 'কোট চাঁদপুর ', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(290, 58, 4, 'Shailkupa ', 'শৈলকুপা', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(291, 58, 4, 'Harinakunda ', 'হাড়িনাকুন্দা', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(292, 59, 4, 'Terokhada ', 'তেরোখাদা', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(293, 59, 4, 'Batiaghata ', 'বাটিয়াঘাটা ', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(294, 59, 4, 'Dacope ', 'ডাকপে', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(295, 59, 4, 'Dumuria ', 'ডুমুরিয়া', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(296, 59, 4, 'Dighalia ', 'দিঘলিয়া', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(297, 59, 4, 'Koyra ', 'কয়ড়া', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(298, 59, 4, 'Paikgachha ', 'পাইকগাছা', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(299, 59, 4, 'Phultala ', 'ফুলতলা', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(300, 59, 4, 'Rupsa ', 'রূপসা', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(301, 60, 4, 'Kushtia Sadar', 'কুষ্টিয়া সদর', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(302, 60, 4, 'Kumarkhali', 'কুমারখালি', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(303, 60, 4, 'Daulatpur', 'দৌলতপুর', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(304, 60, 4, 'Mirpur', 'মিরপুর', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(305, 60, 4, 'Bheramara', 'ভেরামারা', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(306, 60, 4, 'Khoksa', 'খোকসা', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(307, 61, 4, 'Magura Sadar ', 'মাগুরা সদর', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(308, 61, 4, 'Mohammadpur ', 'মোহাম্মাদপুর', '2018-09-27 07:12:30', '2018-09-27 07:12:30'),
(309, 61, 4, 'Shalikha ', 'শালিখা', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(310, 61, 4, 'Sreepur ', 'শ্রীপুর', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(311, 62, 4, 'angni ', 'আংনি', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(312, 62, 4, 'Mujib Nagar ', 'মুজিব নগর', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(313, 62, 4, 'Meherpur-S ', 'মেহেরপুর সদর', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(314, 63, 4, 'Narail-S Upazilla', 'নড়াইল সদর', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(315, 63, 4, 'Lohagara Upazilla', 'লোহাগাড়া', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(316, 63, 4, 'Kalia Upazilla', 'কালিয়া', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(317, 64, 4, 'Satkhira Sadar ', 'সাতক্ষীরা সদর', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(318, 64, 4, 'Assasuni ', 'আসসাশুনি ', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(319, 64, 4, 'Debhata ', 'দেভাটা', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(320, 64, 4, 'Tala ', 'তালা', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(321, 64, 4, 'Kalaroa ', 'কলরোয়া', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(322, 64, 4, 'Kaliganj ', 'কালীগঞ্জ', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(323, 64, 4, 'Shyamnagar ', 'শ্যামনগর', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(324, 18, 5, 'Adamdighi', 'আদমদিঘী', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(325, 18, 5, 'Bogra Sadar', 'বগুড়া সদর', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(326, 18, 5, 'Sherpur', 'শেরপুর', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(327, 18, 5, 'Dhunat', 'ধুনট', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(328, 18, 5, 'Dhupchanchia', 'দুপচাচিয়া', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(329, 18, 5, 'Gabtali', 'গাবতলি', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(330, 18, 5, 'Kahaloo', 'কাহালু', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(331, 18, 5, 'Nandigram', 'নন্দিগ্রাম', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(332, 18, 5, 'Sahajanpur', 'শাহজাহানপুর', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(333, 18, 5, 'Sariakandi', 'সারিয়াকান্দি', '2018-09-27 07:12:31', '2018-09-27 07:12:31'),
(334, 18, 5, 'Shibganj', 'শিবগঞ্জ', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(335, 18, 5, 'Sonatala', 'সোনাতলা', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(336, 19, 5, 'Joypurhat S', 'জয়পুরহাট সদর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(337, 19, 5, 'Akkelpur', 'আক্কেলপুর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(338, 19, 5, 'Kalai', 'কালাই', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(339, 19, 5, 'Khetlal', 'খেতলাল', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(340, 19, 5, 'Panchbibi', 'পাঁচবিবি', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(341, 20, 5, 'Naogaon Sadar ', 'নওগাঁ সদর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(342, 20, 5, 'Mohadevpur ', 'মহাদেবপুর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(343, 20, 5, 'Manda ', 'মান্দা', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(344, 20, 5, 'Niamatpur ', 'নিয়ামতপুর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(345, 20, 5, 'Atrai ', 'আত্রাই', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(346, 20, 5, 'Raninagar ', 'রাণীনগর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(347, 20, 5, 'Patnitala ', 'পত্নীতলা', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(348, 20, 5, 'Dhamoirhat ', 'ধামইরহাট ', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(349, 20, 5, 'Sapahar ', 'সাপাহার', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(350, 20, 5, 'Porsha ', 'পোরশা', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(351, 20, 5, 'Badalgachhi ', 'বদলগাছি', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(352, 21, 5, 'Natore Sadar ', 'নাটোর সদর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(353, 21, 5, 'Baraigram ', 'বড়াইগ্রাম', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(354, 21, 5, 'Bagatipara ', 'বাগাতিপাড়া', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(355, 21, 5, 'Lalpur ', 'লালপুর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(356, 21, 5, 'Natore Sadar ', 'নাটোর সদর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(357, 21, 5, 'Baraigram ', 'বড়াই গ্রাম', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(358, 22, 5, 'Bholahat ', 'ভোলাহাট', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(359, 22, 5, 'Gomastapur ', 'গোমস্তাপুর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(360, 22, 5, 'Nachole ', 'নাচোল', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(361, 22, 5, 'Nawabganj Sadar ', 'নবাবগঞ্জ সদর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(362, 22, 5, 'Shibganj ', 'শিবগঞ্জ', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(363, 23, 5, 'Atgharia ', 'আটঘরিয়া', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(364, 23, 5, 'Bera ', 'বেড়া', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(365, 23, 5, 'Bhangura ', 'ভাঙ্গুরা', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(366, 23, 5, 'Chatmohar ', 'চাটমোহর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(367, 23, 5, 'Faridpur ', 'ফরিদপুর', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(368, 23, 5, 'Ishwardi ', 'ঈশ্বরদী', '2018-09-27 07:12:32', '2018-09-27 07:12:32'),
(369, 23, 5, 'Pabna Sadar ', 'পাবনা সদর', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(370, 23, 5, 'Santhia ', 'সাথিয়া', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(371, 23, 5, 'Sujanagar ', 'সুজানগর', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(372, 24, 5, 'Bagha', 'বাঘা', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(373, 24, 5, 'Bagmara', 'বাগমারা', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(374, 24, 5, 'Charghat', 'চারঘাট', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(375, 24, 5, 'Durgapur', 'দুর্গাপুর', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(376, 24, 5, 'Godagari', 'গোদাগারি', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(377, 24, 5, 'Mohanpur', 'মোহনপুর', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(378, 24, 5, 'Paba', 'পবা', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(379, 24, 5, 'Puthia', 'পুঠিয়া', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(380, 24, 5, 'Tanore', 'তানোর', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(381, 25, 5, 'Sirajganj Sadar ', 'সিরাজগঞ্জ সদর', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(382, 25, 5, 'Belkuchi ', 'বেলকুচি', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(383, 25, 5, 'Chauhali ', 'চৌহালি', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(384, 25, 5, 'Kamarkhanda ', 'কামারখান্দা', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(385, 25, 5, 'Kazipur ', 'কাজীপুর', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(386, 25, 5, 'Raiganj ', 'রায়গঞ্জ', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(387, 25, 5, 'Shahjadpur ', 'শাহজাদপুর', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(388, 25, 5, 'Tarash ', 'তারাশ', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(389, 25, 5, 'Ullahpara ', 'উল্লাপাড়া', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(390, 26, 6, 'Birampur ', 'বিরামপুর', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(391, 26, 6, 'Birganj', 'বীরগঞ্জ', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(392, 26, 6, 'Biral ', 'বিড়াল', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(393, 26, 6, 'Bochaganj ', 'বোচাগঞ্জ', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(394, 26, 6, 'Chirirbandar ', 'চিরিরবন্দর', '2018-09-27 07:12:33', '2018-09-27 07:12:33'),
(395, 26, 6, 'Phulbari ', 'ফুলবাড়ি', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(396, 26, 6, 'Ghoraghat ', 'ঘোড়াঘাট', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(397, 26, 6, 'Hakimpur ', 'হাকিমপুর', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(398, 26, 6, 'Kaharole ', 'কাহারোল', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(399, 26, 6, 'Khansama ', 'খানসামা', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(400, 26, 6, 'Dinajpur Sadar ', 'দিনাজপুর সদর', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(401, 26, 6, 'Nawabganj', 'নবাবগঞ্জ', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(402, 26, 6, 'Parbatipur ', 'পার্বতীপুর', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(403, 27, 6, 'Fulchhari', 'ফুলছড়ি', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(404, 27, 6, 'Gaibandha sadar', 'গাইবান্ধা সদর', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(405, 27, 6, 'Gobindaganj', 'গোবিন্দগঞ্জ', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(406, 27, 6, 'Palashbari', 'পলাশবাড়ী', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(407, 27, 6, 'Sadullapur', 'সাদুল্যাপুর', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(408, 27, 6, 'Saghata', 'সাঘাটা', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(409, 27, 6, 'Sundarganj', 'সুন্দরগঞ্জ', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(410, 28, 6, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(411, 28, 6, 'Nageshwari', 'নাগেশ্বরী', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(412, 28, 6, 'Bhurungamari', 'ভুরুঙ্গামারি', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(413, 28, 6, 'Phulbari', 'ফুলবাড়ি', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(414, 28, 6, 'Rajarhat', 'রাজারহাট', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(415, 28, 6, 'Ulipur', 'উলিপুর', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(416, 28, 6, 'Chilmari', 'চিলমারি', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(417, 28, 6, 'Rowmari', 'রউমারি', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(418, 28, 6, 'Char Rajibpur', 'চর রাজিবপুর', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(419, 29, 6, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(420, 29, 6, 'Aditmari', 'আদিতমারি', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(421, 29, 6, 'Kaliganj', 'কালীগঞ্জ', '2018-09-27 07:12:34', '2018-09-27 07:12:34'),
(422, 29, 6, 'Hatibandha', 'হাতিবান্ধা', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(423, 29, 6, 'Patgram', 'পাটগ্রাম', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(424, 30, 6, 'Nilphamari Sadar', 'নীলফামারী সদর', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(425, 30, 6, 'Saidpur', 'সৈয়দপুর', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(426, 30, 6, 'Jaldhaka', 'জলঢাকা', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(427, 30, 6, 'Kishoreganj', 'কিশোরগঞ্জ', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(428, 30, 6, 'Domar', 'ডোমার', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(429, 30, 6, 'Dimla', 'ডিমলা', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(430, 31, 6, 'Panchagarh Sadar', 'পঞ্চগড় সদর', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(431, 31, 6, 'Debiganj', 'দেবীগঞ্জ', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(432, 31, 6, 'Boda', 'বোদা', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(433, 31, 6, 'Atwari', 'আটোয়ারি', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(434, 31, 6, 'Tetulia', 'তেতুলিয়া', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(435, 32, 6, 'Badarganj', 'বদরগঞ্জ', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(436, 32, 6, 'Mithapukur', 'মিঠাপুকুর', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(437, 32, 6, 'Gangachara', 'গঙ্গাচরা', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(438, 32, 6, 'Kaunia', 'কাউনিয়া', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(439, 32, 6, 'Rangpur Sadar', 'রংপুর সদর', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(440, 32, 6, 'Pirgachha', 'পীরগাছা', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(441, 32, 6, 'Pirganj', 'পীরগঞ্জ', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(442, 32, 6, 'Taraganj', 'তারাগঞ্জ', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(443, 33, 6, 'Thakurgaon Sadar ', 'ঠাকুরগাঁও সদর', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(444, 33, 6, 'Pirganj ', 'পীরগঞ্জ', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(445, 33, 6, 'Baliadangi ', 'বালিয়াডাঙ্গি', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(446, 33, 6, 'Haripur ', 'হরিপুর', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(447, 33, 6, 'Ranisankail ', 'রাণীসংকইল', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(448, 51, 7, 'Ajmiriganj', 'আজমিরিগঞ্জ', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(449, 51, 7, 'Baniachang', 'বানিয়াচং', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(450, 51, 7, 'Bahubal', 'বাহুবল', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(451, 51, 7, 'Chunarughat', 'চুনারুঘাট', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(452, 51, 7, 'Habiganj Sadar', 'হবিগঞ্জ সদর', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(453, 51, 7, 'Lakhai', 'লাক্ষাই', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(454, 51, 7, 'Madhabpur', 'মাধবপুর', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(455, 51, 7, 'Nabiganj', 'নবীগঞ্জ', '2018-09-27 07:12:35', '2018-09-27 07:12:35'),
(456, 51, 7, 'Shaistagonj ', 'শায়েস্তাগঞ্জ', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(457, 52, 7, 'Moulvibazar Sadar', 'মৌলভীবাজার', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(458, 52, 7, 'Barlekha', 'বড়লেখা', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(459, 52, 7, 'Juri', 'জুড়ি', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(460, 52, 7, 'Kamalganj', 'কামালগঞ্জ', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(461, 52, 7, 'Kulaura', 'কুলাউরা', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(462, 52, 7, 'Rajnagar', 'রাজনগর', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(463, 52, 7, 'Sreemangal', 'শ্রীমঙ্গল', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(464, 53, 7, 'Bishwamvarpur', 'বিসশম্ভারপুর', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(465, 53, 7, 'Chhatak', 'ছাতক', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(466, 53, 7, 'Derai', 'দেড়াই', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(467, 53, 7, 'Dharampasha', 'ধরমপাশা', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(468, 53, 7, 'Dowarabazar', 'দোয়ারাবাজার', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(469, 53, 7, 'Jagannathpur', 'জগন্নাথপুর', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(470, 53, 7, 'Jamalganj', 'জামালগঞ্জ', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(471, 53, 7, 'Sulla', 'সুল্লা', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(472, 53, 7, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(473, 53, 7, 'Shanthiganj', 'শান্তিগঞ্জ', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(474, 53, 7, 'Tahirpur', 'তাহিরপুর', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(475, 54, 7, 'Sylhet Sadar', 'সিলেট সদর', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(476, 54, 7, 'Beanibazar', 'বেয়ানিবাজার', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(477, 54, 7, 'Bishwanath', 'বিশ্বনাথ', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(478, 54, 7, 'Dakshin Surma ', 'দক্ষিণ সুরমা', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(479, 54, 7, 'Balaganj', 'বালাগঞ্জ', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(480, 54, 7, 'Companiganj', 'কোম্পানিগঞ্জ', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(481, 54, 7, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(482, 54, 7, 'Golapganj', 'গোলাপগঞ্জ', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(483, 54, 7, 'Gowainghat', 'গোয়াইনঘাট', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(484, 54, 7, 'Jaintiapur', 'জয়ন্তপুর', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(485, 54, 7, 'Kanaighat', 'কানাইঘাট', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(486, 54, 7, 'Zakiganj', 'জাকিগঞ্জ', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(487, 54, 7, 'Nobigonj', 'নবীগঞ্জ', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(488, 1, 3, 'Adabor', 'আদাবর', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(489, 1, 3, 'Airport', 'এয়ারপোর্ট', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(490, 1, 3, 'Badda', 'বাড্ডা', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(491, 1, 3, 'Banani', 'বনানী', '2018-09-27 07:12:36', '2018-09-27 07:12:36'),
(492, 1, 3, 'Bangshal', 'বংশাল', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(493, 1, 3, 'Bhashantek', 'ভাসানটেক', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(494, 1, 3, 'Cantonment', 'ক্যান্টনমেন্ট', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(495, 1, 3, 'Chackbazar', 'চকবাজার', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(496, 1, 3, 'Darussalam', 'দারুসসালাম', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(497, 1, 3, 'Daskhinkhan', 'দক্ষিণখান', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(498, 1, 3, 'Demra', 'ডেমরা', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(499, 1, 3, 'Dhamrai', 'ঢামরাই', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(500, 1, 3, 'Dhanmondi', 'ধানমন্ডি', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(501, 1, 3, 'Dohar', 'দোহার', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(502, 1, 3, 'Gandaria', 'গেন্ডারিয়া', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(503, 1, 3, 'Gulshan', 'গুলশান', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(504, 1, 3, 'Hazaribag', 'হাজারীবাগ', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(505, 1, 3, 'Jatrabari', 'যাত্রাবাড়ী', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(506, 1, 3, 'Kafrul', 'কাফরুল', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(507, 1, 3, 'Kalabagan', 'কলাবাগান', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(508, 1, 3, 'Kamrangirchar', 'কামরাংগীরচর', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(509, 1, 3, 'Keraniganj', 'কেরানীগঞ্জ', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(510, 1, 3, 'Khilgaon', 'খিলগাও', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(511, 1, 3, 'Khilkhet', 'খিলখেত', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(512, 1, 3, 'Kotwali', 'কোতয়ালী', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(513, 1, 3, 'Lalbag', 'লালবাগ', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(514, 1, 3, 'Mirpur Model', 'মিরপুর মডেল', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(515, 1, 3, 'Mohammadpur', 'মোহাম্মদপুর', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(516, 1, 3, 'Motijheel', 'মতিঝিল', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(517, 1, 3, 'Mugda', 'মুগদা', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(518, 1, 3, 'Nawabganj', 'নবাবগঞ্জ', '2018-09-27 07:12:37', '2018-09-27 07:12:37'),
(519, 1, 3, 'New Market', 'নিউমার্কেট', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(520, 1, 3, 'Pallabi', 'পল্লবী', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(521, 1, 3, 'Paltan', 'পল্টন', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(522, 1, 3, 'Ramna', 'রমনা', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(523, 1, 3, 'Rampura', 'রামপুরা', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(524, 1, 3, 'Rupnagar', 'রূপনগর', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(525, 1, 3, 'Sabujbag', 'সবুজবাগ', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(526, 1, 3, 'Savar', 'সাভার', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(527, 1, 3, 'Shah Ali', 'শাহআলী', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(528, 1, 3, 'Shahbag', 'শাহবাগ', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(529, 1, 3, 'Shahjahanpur', 'শাহজাহানপুর', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(530, 1, 3, 'Sherebanglanagar', 'শেরেবাংলানগর', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(531, 1, 3, 'Shyampur', 'শ্যামলী', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(532, 1, 3, 'Sutrapur', 'সুত্রাপুর', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(533, 1, 3, 'Tejgaon', 'তেজগাঁও', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(534, 1, 3, 'Tejgaon I/A', 'তেজগাঁও ইন্ডাস্ট্রিয়াল এরিয়া', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(535, 1, 3, 'Turag', 'তুরাগ', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(536, 1, 3, 'Uttara', 'উত্তরা', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(537, 1, 3, 'Uttara West', 'উত্তরা (উত্তর)', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(538, 1, 3, 'Uttarkhan', 'উত্তরখান', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(539, 1, 3, 'Vatara', 'ভাটারা', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(540, 1, 3, 'Wari', 'ওয়ারী', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(541, 35, 1, 'Airport', 'এয়ারপোর্ট', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(542, 35, 1, 'Kawnia', 'কাউনিয়া', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(543, 35, 1, 'Bondor', 'বন্দর', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(544, 24, 5, 'Boalia', 'বোয়ালিয়া', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(545, 24, 5, 'Motihar', 'মতিহার', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(546, 24, 5, 'Shahmokhdum', 'শাহ্ মকখদুম ', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(547, 24, 5, 'Rajpara', 'রাজপারা ', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(548, 43, 2, 'Akborsha', 'Akborsha', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(549, 43, 2, 'Baijid bostami', 'বাইজিদ বোস্তামী', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(550, 43, 2, 'Bakolia', 'বাকোলিয়া', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(551, 43, 2, 'Bandar', 'বন্দর', '2018-09-27 07:12:38', '2018-09-27 07:12:38'),
(552, 43, 2, 'Chandgaon', 'চাঁদগাও', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(553, 43, 2, 'Chokbazar', 'চকবাজার', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(554, 43, 2, 'Doublemooring', 'ডাবল মুরিং', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(555, 43, 2, 'EPZ', 'ইপিজেড', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(556, 43, 2, 'Hali Shohor', 'হলী শহর', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(557, 43, 2, 'Kornafuli', 'কর্ণফুলি', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(558, 43, 2, 'Kotwali', 'কোতোয়ালী', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(559, 43, 2, 'Kulshi', 'কুলশি', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(560, 43, 2, 'Pahartali', 'পাহাড়তলী', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(561, 43, 2, 'Panchlaish', 'পাঁচলাইশ', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(562, 43, 2, 'Potenga', 'পতেঙ্গা', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(563, 43, 2, 'Shodhorgat', 'সদরঘাট', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(564, 59, 4, 'Aranghata', 'আড়াংঘাটা', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(565, 59, 4, 'Daulatpur', 'দৌলতপুর', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(566, 59, 4, 'Harintana', 'হারিন্তানা ', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(567, 59, 4, 'Horintana', 'হরিণতানা ', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(568, 59, 4, 'Khalishpur', 'খালিশপুর', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(569, 59, 4, 'Khanjahan Ali', 'খানজাহান আলী', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(570, 59, 4, 'Khulna Sadar', 'খুলনা সদর', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(571, 59, 4, 'Labanchora', 'লাবানছোরা', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(572, 59, 4, 'Sonadanga', 'সোনাডাঙ্গা', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(573, 54, 7, 'Airport', 'বিমানবন্দর', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(574, 54, 7, 'Hazrat Shah Paran', 'হযরত শাহ পরাণ', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(575, 54, 7, 'Jalalabad', 'জালালাবাদ', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(576, 54, 7, 'Kowtali', 'কোতোয়ালী', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(577, 54, 7, 'Moglabazar', 'মোগলাবাজার', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(578, 54, 7, 'Osmani Nagar', 'ওসমানী নগর', '2018-09-27 07:12:39', '2018-09-27 07:12:39'),
(579, 54, 7, 'South Surma', 'দক্ষিণ সুরমা', '2018-09-27 07:12:39', '2018-09-27 07:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calling_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_temp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `addedby_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `loggedin_at` timestamp NULL DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verify_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `mobile`, `mobile_country`, `calling_code`, `currency_code`, `nid`, `img_name`, `gender`, `dob`, `password`, `password_temp`, `remember_token`, `active`, `addedby_type`, `addedby_id`, `user_status`, `created_at`, `updated_at`, `loggedin_at`, `mobile_verified_at`, `mobile_verify_code`, `email_verified_at`, `deleted_at`) VALUES
(1, 'Masud Hasan', NULL, 'masudbdm@gmail.com', '8801518643843', NULL, NULL, NULL, '9555222224', 'http://oms.test/storage/user/pp/1_fi_2021_06_19_064016_17189735.png', 'male', '1998-10-19', '$2y$10$O8vdajLPF07s6AVdGQWcxulZnNzfM3YNuGYGxhTRhuPExB7T2HPoa', NULL, 'WOiQgoBxmG6I4IMODygTDrzPHi13Zwe7bpDfx9gTlpjKe9lJ7Q2gKcocq2wb', 1, NULL, NULL, 1, '2021-02-17 05:35:41', '2021-06-19 12:40:17', NULL, NULL, NULL, NULL, NULL),
(2, 'test', NULL, NULL, '13456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oI5rw/GIV8lQgJwjmrSrVeo7fOHdSrbrkpbxb.L6JQiU9oldI6az.', '774957', NULL, 1, NULL, NULL, 1, '2021-03-20 06:15:39', '2021-03-20 06:15:39', NULL, NULL, NULL, NULL, NULL),
(3, 'hihiughigu', NULL, NULL, '21432432442342', NULL, NULL, NULL, '46464655464644', NULL, NULL, NULL, '$2y$10$rN2GKAA68g/RJrMvzvbkPOUNBJYfqkNAyAtb.Eo2Yt83keB8rQm0u', '337175', NULL, 1, NULL, NULL, 1, '2021-03-20 06:20:18', '2021-06-09 08:45:30', NULL, NULL, NULL, NULL, NULL),
(4, 'Testing', NULL, 'user@user.com', '64694964964', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jW48f3AMVmkeqSS7alaRauml8Th1JjFkEHTwkx4OPSQt/8myHqCRO', '11112222', NULL, 1, NULL, NULL, 1, '2021-03-21 02:38:01', '2021-07-11 05:26:06', NULL, NULL, NULL, NULL, NULL),
(5, 'Testing', NULL, 'user2@user.com', '46998498498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Ptk0FGrR2GzabP15KoJ1xuQ4R63TnA6fBJWS6MgqWAB46D5TJ14kS', '392966', NULL, 1, NULL, NULL, 1, '2021-03-21 02:41:31', '2021-03-21 02:41:31', NULL, NULL, NULL, NULL, NULL),
(6, 'tgafawd', NULL, NULL, '3859834795874395', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tiqJcTgN3UaplL2BkKVwT.3/e675Pxy1svKFK16ODpK46NAoSIbkW', '685652', NULL, 1, NULL, NULL, 1, '2021-03-22 01:50:13', '2021-03-22 01:50:13', NULL, NULL, NULL, NULL, NULL),
(7, 'awaweawe', NULL, NULL, '6549849849+8498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$a55s/F5VmETcddYKkujdm.MU9vu67djuQ0etm7cMlfg3Kg8HHPHWu', '142769', NULL, 1, NULL, NULL, 1, '2021-03-22 01:53:51', '2021-03-22 01:53:51', NULL, NULL, NULL, NULL, NULL),
(8, '23wrse', NULL, NULL, '2343534534', NULL, NULL, NULL, '4165464654', NULL, NULL, NULL, '$2y$10$fMxXaZ6ZCVIqf53kjNVIEeKXjiHHzE2LAugydv3pP/IEZkte7bW0S', '677674', NULL, 1, NULL, NULL, 1, '2021-03-22 01:55:20', '2021-06-09 08:45:47', NULL, NULL, NULL, NULL, NULL),
(9, 'wrser', NULL, NULL, '5465465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IkZxIUQn47a9QPG43LXg6Ot7Yqu7GvCJMEyU6W7Lawglax1L1FaX2', '747423', NULL, 1, NULL, NULL, 1, '2021-03-22 02:04:01', '2021-03-22 02:04:01', NULL, NULL, NULL, NULL, NULL),
(10, 'aadawd', NULL, NULL, '234234234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3245irFz8ys7e9ieQE/OPum2tyHIxLd1ACyoOBIo8KQX2ezdHUOkW', '724835', NULL, 1, NULL, NULL, 1, '2021-03-22 02:29:10', '2021-03-22 02:29:10', NULL, NULL, NULL, NULL, NULL),
(11, 'awdawdaw', NULL, NULL, '23423423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FZhfkPX9aCH6Hr1l7lyBLe7i1hCFP4kR.gkgBJrow/Ba1tC/ZgaxS', '330704', NULL, 1, NULL, NULL, 1, '2021-03-22 02:35:21', '2021-03-22 02:35:21', NULL, NULL, NULL, NULL, NULL),
(12, 'awdaw', NULL, NULL, '234325324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3hJrR6WUC8Req5EpTJEbVei4B8eXEyyvKCVGcuBXX7c7gCXu2Dpva', '170425', NULL, 1, NULL, NULL, 1, '2021-03-22 02:40:59', '2021-03-22 02:40:59', NULL, NULL, NULL, NULL, NULL),
(13, 'sfsef', NULL, NULL, '234234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Es73TJ2ZDa/vLlQshrO17Os/0/DMUq0hVR/6BmwTbICSGwAsp6vVq', '859155', NULL, 1, NULL, NULL, 1, '2021-03-22 02:43:19', '2021-03-22 02:43:19', NULL, NULL, NULL, NULL, NULL),
(14, 'wasfawf234', NULL, NULL, '2342342343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FyBqrW6Y1izeXUKITvmmuO5TPiCjODESkX.JcWyTA4U.atPYv.xFS', '320477', NULL, 1, NULL, NULL, 1, '2021-03-22 02:45:47', '2021-03-22 02:45:47', NULL, NULL, NULL, NULL, NULL),
(15, 'rsfsfs', NULL, NULL, '323423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kvhCXJ/TNlVQcNI/9wkGJerIYzmLHDVzZgxRHjNcJ61N.kUHMyqj.', '302103', NULL, 1, NULL, NULL, 1, '2021-03-22 02:46:36', '2021-03-22 02:46:36', NULL, NULL, NULL, NULL, NULL),
(16, 'adaw', NULL, NULL, '23423421', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0cH2tVRL7tOzI5PshsRlp.Q7oL4ngDGduFDQG4IGJl7xeZNghuK46', '160961', NULL, 1, NULL, NULL, 1, '2021-03-22 04:02:17', '2021-03-22 04:02:17', NULL, NULL, NULL, NULL, NULL),
(17, '4ertewrs', NULL, NULL, '34234233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fZ5hJ5t3xNdjVThEsrk6ierOMHos.u5Jsi9vAstwCF59yU.ZijNKi', '441504', NULL, 1, NULL, NULL, 1, '2021-03-22 04:04:56', '2021-03-22 04:04:56', NULL, NULL, NULL, NULL, NULL),
(18, 'zeqejun@mailinator.com', NULL, 'zesaj@mailinator.com', '8801671820622', NULL, NULL, NULL, '9555222224', NULL, NULL, '2021-07-15', '$2y$10$xEA3TUFVPIEhYBd0Lp4a6Ox5HoB4exB9myLYJEIlA4BcBxPcoa0.2', '11112222', 'RHWtSJE5nF90OIRJHbGD4sN49Lg41DwAs9QYD0Z5tNqAsNbhI2ak6qKR90n0', 1, 'App\\Models\\Role\\Agent', 2576, 1, '2021-04-20 22:09:18', '2021-07-14 06:39:21', NULL, NULL, NULL, NULL, NULL),
(19, 'feqidyxy@mailinator.com', NULL, 'gehyve@mailinator.com', '75786436485485648', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$US6YHpWAPHSCWjGMLInsxOq1HYG.gjo5vn1dv/ITvrR31yiKMknR2', '864757', NULL, 1, 'App\\Models\\Role\\Agent', 2576, 1, '2021-04-20 22:24:36', '2021-04-20 22:24:36', NULL, NULL, NULL, NULL, NULL),
(20, 'Xantha Bates', NULL, 'user@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2PVC8wKFK6K18OFUjfz4Vuv1t5q9DpE6sGd1PIJKkbvK.hc/tZ1f.', NULL, NULL, 1, NULL, NULL, 1, '2021-04-27 21:57:39', '2021-04-27 21:57:39', NULL, NULL, NULL, NULL, NULL),
(21, 'Claire Robbins', NULL, 'user3@user.com', '0151376843', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$md.haQnOK36h6W1F9kMnMuKfWyrrgdPaIJCkoIKnD2nwr1pZT7vZ2', '11112222', NULL, 1, NULL, NULL, 1, '2021-04-27 22:43:53', '2021-07-11 06:30:15', NULL, NULL, NULL, NULL, NULL),
(22, 'Scott Pugh', NULL, NULL, '4565465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.bV/cbSQGpMJowpJ3lPKMe4BjX0ywum.WICQlq6vtS84xiXa1Uya.', '937192', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 00:44:08', '2021-05-22 00:44:08', NULL, NULL, NULL, NULL, NULL),
(23, 'TT', NULL, NULL, '1258523', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xE6RDGKOC/XlpB4IIElP8ON4Ys4fzXZEKkVtRAM3UY8VcL8y5m9uC', '473852', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 01:04:53', '2021-05-22 01:04:53', NULL, NULL, NULL, NULL, NULL),
(24, 'RaA', NULL, NULL, '1478963', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pn4dMQdkTzwKkziusu2bVuFVPCA80GylXX6UNZDC/ZV5G25pEEqvu', '514952', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 01:37:59', '2021-05-22 01:37:59', NULL, NULL, NULL, NULL, NULL),
(25, 'awedaw', NULL, NULL, '14789632', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tqaERddrRiwuW87fHYrhmuTyaL.agK1/Crx0a0Tcc2wVfClACGyKe', '252288', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 01:39:11', '2021-05-22 01:39:11', NULL, NULL, NULL, NULL, NULL),
(26, 'srtr', NULL, NULL, '123654789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QpcOrXxTRu8KxYieI6x/demOeor4E/mzBeEDXzT.cG5lus8l8.lpi', '802049', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 03:19:09', '2021-05-22 03:19:09', NULL, NULL, NULL, NULL, NULL),
(27, 'aaassss', NULL, NULL, '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZQoeT9XAp0D1CE1jINe8zuKEaRqpnmDHe5/u7A5jFaCqKevHFFHNC', '974811', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 03:22:05', '2021-05-22 03:22:05', NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, '1234567895', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$j1rO0.RKKL5uGAubKSmYTO.P5aIaIOeownGr8l2qGXP6D5eMOE8.i', '786562', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 03:23:14', '2021-05-22 03:23:14', NULL, NULL, NULL, NULL, NULL),
(29, 'rtetreter', NULL, NULL, '234355677567567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1dBDHP58pb0CLSI2hNyqYeBbIcH5Rk4bUM3rAyeP4/lD1GYRqiiw6', '884498', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 04:00:53', '2021-05-22 04:00:53', NULL, NULL, NULL, NULL, NULL),
(30, 'SMO', NULL, NULL, '123123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/dnoWs4N5CVsQeVrwwjMOuX2Rz5Ek6IZ4jQv1QFd9NtKFTFZLlPYK', '994799', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 04:06:56', '2021-05-22 04:06:56', NULL, NULL, NULL, NULL, NULL),
(31, 'SMO 2', NULL, NULL, '4654654654654654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ITI.kDSdZ805GBi8QJO20uADsX9ctojdlO0.D8kR20y8Kus4dR9TK', '234355', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 04:41:11', '2021-05-22 04:41:11', NULL, NULL, NULL, NULL, NULL),
(32, 'adawd', NULL, NULL, '2432423423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IKvVMPr59Yb1BIYi4Paj8OcWX07D6mhZdkx.7pF2SybKQRJXPlQ0K', '361982', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 04:57:10', '2021-05-22 04:57:10', NULL, NULL, NULL, NULL, NULL),
(33, 'Abdur Rob', NULL, NULL, '456546465879798', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5avyBjlesCn9q7suzJEtkuT7jTwCvSOG.LM0DYNzLvTuBQZomt/oS', '359109', NULL, 1, 'App\\Models\\Role\\Agent', 2576, 1, '2021-05-23 00:00:29', '2021-05-23 00:00:29', NULL, NULL, NULL, NULL, NULL),
(34, 'khkhkjh', NULL, NULL, '5687687687', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$a6vh.E8/lGYnIYglrELyHe3Z5idsjYutIb.tV7FZvoVJbcWbXhDgG', '597873', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-24 01:12:31', '2021-05-24 01:12:31', NULL, NULL, NULL, NULL, NULL),
(35, 'Name', NULL, NULL, '23453465767', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oeDKBQ2FP4Mp.bxLjVd8pOFcvvXE8avMEduAsfQ33v0e/6Aoegrr2', '857656', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-30 09:02:36', '2021-05-30 09:02:36', NULL, NULL, NULL, NULL, NULL),
(36, 'User', NULL, NULL, '435345454645', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5bcrHsYgh50i0PsIg2kdq.niCP2kAtghX1If.cKXwa/t82EiOWGKm', '402414', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-30 22:41:18', '2021-05-30 22:41:18', NULL, NULL, NULL, NULL, NULL),
(37, 'sdfasd', NULL, NULL, '345465345345345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YhcQ6s2F/5OaypAmBkUir.2CRI0pHYrAClIjX4AwoQS1XboQ/LE3y', '715360', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-30 22:58:36', '2021-05-30 22:58:36', NULL, NULL, NULL, NULL, NULL),
(38, 'User', NULL, NULL, '123113211313213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2qU2ZFMPGc2jxoKe1SiwHeZJEUX8LU9zvZEedBkqKxPswxVjhqcNm', '337346', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-30 23:32:01', '2021-05-30 23:32:01', NULL, NULL, NULL, NULL, NULL),
(39, 'asdasda', NULL, NULL, '34567865', NULL, NULL, NULL, '342354435657', NULL, NULL, NULL, '$2y$10$lft1KzmUqHMb.jb1I22f.uNblSO5m7fk3qYhffGjaQv9VsAt.u/T.', '1234567', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-30 23:36:44', '2021-06-02 06:13:47', NULL, NULL, NULL, NULL, NULL),
(40, 'sfse', NULL, NULL, '2354354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Oa4qtSEpqto75cvWpCBo6uaJz1G2J6xTbtgkH420UyXLlxJjGcrA.', '506383', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-30 23:38:01', '2021-05-30 23:38:01', NULL, NULL, NULL, NULL, NULL),
(41, 'Christian Newman', NULL, NULL, 'Omnis veniam dolor', NULL, NULL, NULL, '456787654', NULL, NULL, NULL, '$2y$10$l66CpDnE2SKuKAwRnP411elK6T2dnN0zuUGFc4TEKMKcawme8cTCe', '671283', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-30 23:39:45', '2021-05-30 23:39:45', NULL, NULL, NULL, NULL, NULL),
(42, 'Caesar Gilmore', NULL, NULL, '466777656756756', NULL, NULL, NULL, '567567567', NULL, NULL, NULL, '$2y$10$KGqtbZ2uVkt6r67owCka4eRlF7Pf/Kmw4SZzdjoqq8aVnAvn9J6TG', '990017', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-30 23:53:01', '2021-05-30 23:53:01', NULL, NULL, NULL, NULL, NULL),
(43, 'User', NULL, NULL, '0191851567', NULL, NULL, NULL, '9555222224', NULL, NULL, NULL, '$2y$10$LsEh3zDjKO5OK3.So4X.B.gMs5cuFkGK2Ww9icJUR4ZINRlGn/K5C', '614340', NULL, 1, 'App\\Models\\User', 4, 1, '2021-07-11 05:11:54', '2021-07-11 05:11:54', NULL, NULL, NULL, NULL, NULL),
(44, 'asdhjahd0012', NULL, NULL, '1112223336665554', NULL, NULL, NULL, '9555222224999', NULL, NULL, NULL, '$2y$10$sEH3N6qMphzl8bKlKHrhJOAdFMRGermyW7Iwlg6Kc8PIeB1VO0DUe', '203699', NULL, 1, 'App\\Models\\User', 4, 1, '2021-07-11 05:13:06', '2021-07-11 05:13:06', NULL, NULL, NULL, NULL, NULL),
(45, 'sdfdsfdfsdf', NULL, NULL, '34543553453454', NULL, NULL, NULL, '9555222224', NULL, NULL, NULL, '$2y$10$mGTlIwRX5lir1aaWlNWRMukKlHGWTyRFkyYktZVDCSHVTg30Q3En6', '142832', NULL, 1, 'App\\Models\\User', 4, 1, '2021-07-11 05:16:53', '2021-07-11 05:16:53', NULL, NULL, NULL, NULL, NULL),
(46, '543545345345', NULL, NULL, '3453454534', NULL, NULL, NULL, '34543545345', NULL, NULL, NULL, '$2y$10$/jUGFJ9.w7fvQ0U8kzb7nuQWNqN.um0e0XjjyMPMkaFnkHCIQWz6O', '825561', NULL, 1, 'App\\Models\\User', 4, 1, '2021-07-11 05:19:49', '2021-07-11 05:19:49', NULL, NULL, NULL, NULL, NULL),
(47, 'User33', NULL, NULL, '88012345678912', NULL, NULL, NULL, '9555222224', NULL, NULL, NULL, '$2y$10$eTjDcPSYqK7JRe8bXbEcaOAFAk8KV5p3oKNA/GHam26MbEilvIWZK', '612084', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-13 04:38:03', '2021-07-13 04:38:03', NULL, NULL, NULL, NULL, NULL),
(48, 'atiq', NULL, NULL, '8801518643843', NULL, NULL, NULL, '9555222224', NULL, NULL, NULL, '$2y$10$8zmqWmqazHWnfhhmypuPWORThEllU7myvrniKOSbsZbP8SgHqIQY6', '141051', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-13 04:40:04', '2021-07-13 04:40:04', NULL, NULL, NULL, NULL, NULL),
(49, 'User', NULL, NULL, '015184368431', NULL, NULL, NULL, '9555222224', NULL, NULL, NULL, '$2y$10$Bp61CH08wLA3AiYcH1/NRe9TpCgo8URyernI7L2lLpGzN1/pTu8LW', '650072', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-13 04:40:51', '2021-07-13 04:40:51', NULL, NULL, NULL, NULL, NULL),
(50, 'User', NULL, NULL, '88099999999999', NULL, NULL, NULL, '9555222224', NULL, NULL, NULL, '$2y$10$yNPH/MkUo6Hl0CQRbN9Tz.mJumMpCwSJ0Se3NTWgqZEED6YMOccI6', '501312', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-13 04:45:13', '2021-07-13 04:45:13', NULL, NULL, NULL, NULL, NULL),
(51, 'hajkshdjksahd', NULL, NULL, '019188156711', NULL, NULL, NULL, '9555222224', NULL, NULL, NULL, '$2y$10$VJDuduQ3ibaJa1nZuF/eW.TPffStVKMe2FkaXrfqnQKFssd8T0WTS', '357750', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-13 04:52:42', '2021-07-13 04:52:42', NULL, NULL, NULL, NULL, NULL),
(52, 'User 22', NULL, NULL, '8801918515999', NULL, NULL, NULL, '9555222224', NULL, NULL, NULL, '$2y$10$OGZwqCIP1sjA6J833fQpt.UaJzfpDSr1q45WbiCX6OupKNluh8xfO', '194115', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-13 04:57:20', '2021-07-13 04:57:20', NULL, NULL, NULL, NULL, NULL),
(53, 'alksdj', NULL, NULL, '8801712345552', NULL, NULL, NULL, '9555222224', NULL, NULL, NULL, '$2y$10$L3KIh8DIPwHseb/WfTWecevCsmVzbAGlF7nkygJRNZo3F7ih3fCgW', '803786', 'y8zN8vD0OXCAfb2oJNChtDcoTJbwOvBiWfV6ORdhqRXP4geOYQRWcHudzOVt', 1, 'App\\Models\\User', 1, 1, '2021-07-13 05:00:03', '2021-07-13 05:00:03', NULL, NULL, NULL, NULL, NULL),
(54, 'User', NULL, NULL, '8801712345552', NULL, NULL, NULL, '9555222224', NULL, NULL, NULL, '$2y$10$Pj3l8/FsWqIxtzTEqS7E8uy/Luk8Ys44W/Nkv/j1DToslbCcIUi/6', '872560', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-13 05:00:34', '2021-07-13 05:00:34', NULL, NULL, NULL, NULL, NULL),
(55, 'User888', NULL, NULL, '8801712345552', NULL, NULL, NULL, '9555222224', NULL, NULL, NULL, '$2y$10$qk4eVRCDKPC.JVU9LwmkPunKaVfhTyZS18/WKiB8YQRzhaBkZS5dW', '588481', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-13 05:17:04', '2021-07-13 05:17:04', NULL, NULL, NULL, NULL, NULL),
(56, 'User', NULL, NULL, '8801712345552', NULL, NULL, NULL, '549649649485', NULL, NULL, NULL, '$2y$10$T8rzzifixbp7bDeLKQBjKufpsqJ7PRpKoO/szQQFwKlRhXKJ755Iq', '942772', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-13 05:18:06', '2021-07-13 05:18:06', NULL, NULL, NULL, NULL, NULL),
(57, 'Raya Riggs', NULL, NULL, '88012345', NULL, NULL, NULL, 'Duis dolor doloribus', NULL, NULL, NULL, '$2y$10$/faNNJM8DzJDB/1LmQ0DTuqwpWv3NR1GTed.gLOfCt69DJ/nLQxSm', '598054', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-13 05:27:08', '2021-07-13 05:27:08', NULL, NULL, NULL, NULL, NULL),
(58, 'GM44', NULL, 'gm@gmail.com', '01711454545', NULL, NULL, NULL, '9555222224', 'http://oms.test/storage/user/pp/1_fi_2021_06_19_064016_17189735.png', 'male', '1998-10-19', '$2y$10$8/.fnviHVTWor2Lh.WO8VeNZRzaZ25PNbpWTobhi3JsO6jVUD8ZaG', '12345678', 'WOiQgoBxmG6I4IMODygTDrzPHi13Zwe7bpDfx9gTlpjKe9lJ7Q2gKcocq2wb', 1, NULL, NULL, 1, '2021-02-17 05:35:41', '2021-12-21 05:58:44', NULL, NULL, NULL, NULL, NULL),
(59, 'Robin', NULL, NULL, '01788999966', NULL, NULL, NULL, '01788999966', NULL, NULL, NULL, '$2y$10$Aypm6heKKb4HG.Jyyh2QBerr3kgvbHq940zquhLI4UTVsUtyGQD2a', '825251', 'AXliNpCNDOCQIWHBgRd2Pb62y5hkEYHJAisIiwTXBQsdJ5eh1SfnMckH7aZ0', 1, 'App\\Models\\User', 1, 1, '2021-12-30 05:16:45', '2021-12-30 05:16:45', NULL, NULL, NULL, NULL, NULL),
(60, 'Howard Nieves', NULL, NULL, '01788552233', NULL, NULL, NULL, '01788552233', NULL, NULL, NULL, '$2y$10$T4tBjKgfxC7P/LvW49DqR.4kXq7APC5OSA3y/mBx9tiZVwSUGv2Hq', '394580', NULL, 1, 'App\\Models\\User', 1, 1, '2021-12-30 06:22:18', '2021-12-30 06:22:18', NULL, NULL, NULL, NULL, NULL),
(61, 'DEVID', NULL, NULL, '01744223366', NULL, NULL, NULL, '01744223366', NULL, NULL, NULL, '$2y$10$tsHPBbrudhhkSfDU3vDfUOnrGxPtDc4K1xZNBWm4IbwYlkGovubwG', '295295', 'WuF8tT4Gq99TJ0LTJQZo6TE1Sd329K8lVEdI0nkvpk8U36aiCzPSwRfVfP0n', 1, 'App\\Models\\User', 1, 1, '2021-12-30 08:19:10', '2021-12-30 08:19:10', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `website_balances`
--

CREATE TABLE `website_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `system_balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `system_balance_comm` decimal(10,2) NOT NULL DEFAULT '0.00',
  `depo_balance` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `distributor_balance` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `dealer_balance` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `agent_balance` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_balances`
--

INSERT INTO `website_balances` (`id`, `system_balance`, `system_balance_comm`, `depo_balance`, `distributor_balance`, `dealer_balance`, `agent_balance`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, '102488.40', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, '2021-07-13 06:22:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id_index` (`id`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depos`
--
ALTER TABLE `depos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributors`
--
ALTER TABLE `distributors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_carts`
--
ALTER TABLE `ecommerce_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_categories`
--
ALTER TABLE `ecommerce_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ecommerce_categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `ecommerce_cat_products`
--
ALTER TABLE `ecommerce_cat_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_cat_shops`
--
ALTER TABLE `ecommerce_cat_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_orders`
--
ALTER TABLE `ecommerce_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_order_items`
--
ALTER TABLE `ecommerce_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_order_payments`
--
ALTER TABLE `ecommerce_order_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_payment_collections`
--
ALTER TABLE `ecommerce_payment_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_products`
--
ALTER TABLE `ecommerce_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_product_media`
--
ALTER TABLE `ecommerce_product_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_product_prices`
--
ALTER TABLE `ecommerce_product_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_sales_list_products`
--
ALTER TABLE `ecommerce_sales_list_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_shop_categories`
--
ALTER TABLE `ecommerce_shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_sources`
--
ALTER TABLE `ecommerce_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_accounts`
--
ALTER TABLE `member_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_roles`
--
ALTER TABLE `my_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product_replacements`
--
ALTER TABLE `product_replacements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_replacement_items`
--
ALTER TABLE `product_replacement_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_domains`
--
ALTER TABLE `project_domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_subscribers`
--
ALTER TABLE `project_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_subscribers_mobile_unique` (`mobile`);

--
-- Indexes for table `role_payments`
--
ALTER TABLE `role_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_lists`
--
ALTER TABLE `sales_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_lists__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `sale_commissions`
--
ALTER TABLE `sale_commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipment_returns`
--
ALTER TABLE `shipment_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipment_return_items`
--
ALTER TABLE `shipment_return_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_commissions`
--
ALTER TABLE `shop_commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_commissions`
--
ALTER TABLE `sr_commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_locations`
--
ALTER TABLE `sr_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_orders`
--
ALTER TABLE `sr_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_order_items`
--
ALTER TABLE `sr_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_salaries`
--
ALTER TABLE `sr_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_name_index` (`name`),
  ADD KEY `users_username_index` (`username`),
  ADD KEY `users_email_index` (`email`),
  ADD KEY `users_mobile_index` (`mobile`);

--
-- Indexes for table `website_balances`
--
ALTER TABLE `website_balances`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `depos`
--
ALTER TABLE `depos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `distributors`
--
ALTER TABLE `distributors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ecommerce_carts`
--
ALTER TABLE `ecommerce_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_categories`
--
ALTER TABLE `ecommerce_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ecommerce_cat_products`
--
ALTER TABLE `ecommerce_cat_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ecommerce_cat_shops`
--
ALTER TABLE `ecommerce_cat_shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_orders`
--
ALTER TABLE `ecommerce_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_order_items`
--
ALTER TABLE `ecommerce_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_order_payments`
--
ALTER TABLE `ecommerce_order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_payment_collections`
--
ALTER TABLE `ecommerce_payment_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ecommerce_products`
--
ALTER TABLE `ecommerce_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ecommerce_product_media`
--
ALTER TABLE `ecommerce_product_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_product_prices`
--
ALTER TABLE `ecommerce_product_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ecommerce_sales_list_products`
--
ALTER TABLE `ecommerce_sales_list_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ecommerce_shop_categories`
--
ALTER TABLE `ecommerce_shop_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_sources`
--
ALTER TABLE `ecommerce_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2897;

--
-- AUTO_INCREMENT for table `member_accounts`
--
ALTER TABLE `member_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `my_roles`
--
ALTER TABLE `my_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_replacements`
--
ALTER TABLE `product_replacements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_replacement_items`
--
ALTER TABLE `product_replacement_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_domains`
--
ALTER TABLE `project_domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_subscribers`
--
ALTER TABLE `project_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_payments`
--
ALTER TABLE `role_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_lists`
--
ALTER TABLE `sales_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sale_commissions`
--
ALTER TABLE `sale_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipment_items`
--
ALTER TABLE `shipment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipment_returns`
--
ALTER TABLE `shipment_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipment_return_items`
--
ALTER TABLE `shipment_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_commissions`
--
ALTER TABLE `shop_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sr_commissions`
--
ALTER TABLE `sr_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `sr_locations`
--
ALTER TABLE `sr_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sr_orders`
--
ALTER TABLE `sr_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sr_order_items`
--
ALTER TABLE `sr_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sr_salaries`
--
ALTER TABLE `sr_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `website_balances`
--
ALTER TABLE `website_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
