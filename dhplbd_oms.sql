-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 21, 2021 at 07:40 PM
-- Server version: 10.6.5-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhplbd_oms`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` int(11) DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`name`)),
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `monthly_target` decimal(13,2) NOT NULL DEFAULT 0.00,
  `total_sale` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_sale_commission` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_sale` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_sale_commission` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_collection` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_collection_commission` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_collection` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_commission` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_income` decimal(15,2) NOT NULL DEFAULT 0.00,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`address`)),
  `contact_numbers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `user_id`, `depo_id`, `distributor_id`, `dealer_id`, `name`, `division_id`, `district_id`, `upazila_id`, `active`, `nid`, `balance`, `monthly_target`, `total_sale`, `total_sale_commission`, `current_sale`, `current_sale_commission`, `total_collection`, `total_collection_commission`, `current_collection`, `current_commission`, `current_income`, `address`, `contact_numbers`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 32, 1, 1, 1, '{\"en\":\"Test SR\"}', 3, 1, 523, 0, 'Vgjjjjj', 0.0000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '{\"en\":null}', NULL, 1, 1, '2021-05-27 04:45:37', '2021-07-05 19:36:47'),
(2, 35, 1, 1, 1, '{\"en\":\"SR\"}', 3, 1, 523, 1, '19652696827764183', 0.0000, 1000000.00, 3472.00, 459.20, 280.00, 31.64, 3192.00, 427.56, 0.00, 0.00, 267.56, '{\"en\":null}', NULL, 1, 1, '2021-05-27 04:46:03', '2021-12-21 06:12:09'),
(3, 35, 1, 1, 1, '{\"en\":\"SR Shahin\"}', 3, 1, 523, 1, '1234567812', 0.0000, 500000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '{\"en\":\"dhaka\"}', '01222323232,01858565656', 1, 1, '2021-06-14 04:18:54', '2021-07-10 09:29:07'),
(4, 40, 3, 2, 2, '{\"en\":\"Sales Representative\"}', 5, 23, 369, 1, '9831309713197', 0.0000, 200000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '{\"en\":\"pabnaaaa\"}', '8978189161896', 1, 1, '2021-07-05 18:50:06', '2021-07-05 18:50:06'),
(5, 4, 1, 1, 1, '{\"en\":\"Part 3\"}', 3, 1, 523, 1, '223656696633', 0.0000, 1000.00, 2415.20, 241.52, 895.20, 89.52, 1520.00, 152.00, 0.00, 0.00, 152.00, '{\"en\":\"Rampura,Dhaka-1212\"}', '01678112364', 1, 1, '2021-07-10 05:54:28', '2021-07-10 06:34:40'),
(6, 41, 1, 1, 1, '{\"en\":\"Part 2\"}', 3, 1, 523, 1, '9966253666558', 0.0000, 1000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '{\"en\":\"King Santoshpur, Dhanpur, Chauddagram, Comilla\"}', '01516843943', 1, 1, '2021-07-10 09:33:58', '2021-07-10 09:33:58'),
(7, 35, 1, 1, 1, '{\"en\":\"sr test\"}', 3, 1, 523, 1, '0986263116312631283', 0.0000, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '{\"en\":\"hgfjhg\"}', '647658768', 1, 1, '2021-07-10 12:29:33', '2021-07-15 07:24:50'),
(8, 48, 7, 3, 4, '{\"en\":\"New SR\"}', 2, 40, 43, 1, '01711447791', 0.0000, 100000.00, 1359.50, 179.42, 0.00, 0.00, 1359.50, 179.42, 0.00, 0.00, 179.42, '{\"en\":\"01711447791\"}', '01711447791', 1, 1, '2021-12-21 06:58:15', '2021-12-21 07:30:53');

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
  `eea` tinyint(1) NOT NULL DEFAULT 0,
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
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`name`)),
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`address`)),
  `contact_numbers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dealers`
--

INSERT INTO `dealers` (`id`, `user_id`, `depo_id`, `distributor_id`, `name`, `division_id`, `district_id`, `upazila_id`, `active`, `nid`, `balance`, `address`, `contact_numbers`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '{\"en\":\"SMO Rampura\"}', 3, 1, 523, 1, NULL, 0.0000, '{\"en\":null}', NULL, 1, 1, '2021-05-27 04:27:58', '2021-05-27 04:27:58'),
(2, 39, 3, 2, '{\"en\":\"manage the sales\"}', 5, 23, 369, 1, '87346792e26e12896e', 0.0000, '{\"en\":\"pabnaaa\"}', '88888888888888888888', 1, 1, '2021-07-05 18:48:35', '2021-07-05 18:48:35'),
(3, 4, 1, 1, '{\"en\":\"01303252904\"}', 3, 1, 488, 1, '01303252904', 0.0000, '{\"en\":\"01303252904\"}', '01303252904', 1, 1, '2021-12-21 05:36:41', '2021-12-21 05:36:41'),
(4, 47, 7, 3, '{\"en\":\"New SMO\"}', 2, 40, 43, 1, '01711447790', 0.0000, '{\"en\":\"01711447790\"}', '01711447790', 1, 1, '2021-12-21 06:56:01', '2021-12-21 06:56:01');

-- --------------------------------------------------------

--
-- Table structure for table `depos`
--

CREATE TABLE `depos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`name`)),
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`address`)),
  `contact_numbers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `depos`
--

INSERT INTO `depos` (`id`, `user_id`, `name`, `address`, `contact_numbers`, `nid`, `balance`, `division_id`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"en\":\"Dhaka GM\"}', '{\"en\":null}', NULL, NULL, 0.0000, 3, 1, 1, 1, '2021-05-27 04:26:58', '2021-05-27 04:26:58'),
(2, 34, '{\"en\":\"adf\"}', '{\"en\":\"adfasdf\"}', 'adsfasdf', '9555222224', 0.0000, 4, 1, 1, 1, '2021-06-12 07:38:17', '2021-06-12 07:38:17'),
(3, 37, '{\"en\":\"sales management\"}', '{\"en\":\"motijheel\"}', '017777777777777777777', '01444444444444444', 0.0000, 5, 1, 1, 1, '2021-07-05 18:44:46', '2021-07-05 18:44:46'),
(4, 4, '{\"en\":\"Part 3\"}', '{\"en\":\"Recusandae Amet no\"}', '01678112364', '9555222224', 0.0000, 1, 1, 4, 4, '2021-07-10 05:37:52', '2021-07-10 05:37:52'),
(5, 42, '{\"en\":\"gm sales\"}', '{\"en\":\"hjgfgjhhlkjlk\"}', '78658779987098', 'hgfjhgkjhlkkljlkkjhghj', 0.0000, 2, 1, 1, 1, '2021-07-10 12:17:39', '2021-07-10 12:17:39'),
(6, 42, '{\"en\":\"gm sales\"}', '{\"en\":\"jhgkjjhklk\"}', '8978189161896', 'gfjhhgkjhkljhjhf', 0.0000, 1, 1, 1, 1, '2021-07-10 12:20:33', '2021-07-10 12:20:33'),
(7, 45, '{\"en\":\"New GM\"}', '{\"en\":\"Aliquam rem est lau\"}', '01711447788', '89789448', 0.0000, 2, 1, 1, 1, '2021-12-21 06:51:58', '2021-12-21 06:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `distributors`
--

CREATE TABLE `distributors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `depo_id` int(11) DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`name`)),
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`address`)),
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_numbers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `balance` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distributors`
--

INSERT INTO `distributors` (`id`, `user_id`, `depo_id`, `name`, `address`, `nid`, `contact_numbers`, `division_id`, `district_id`, `active`, `balance`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '{\"en\":\"Dhaka Distributor\"}', '{\"en\":null}', NULL, NULL, 3, 1, 1, 0.0000, 1, 1, '2021-05-27 04:27:24', '2021-05-27 04:27:24'),
(2, 38, 3, '{\"en\":\"premium sales\"}', '{\"en\":\"pabnaa\"}', '011111111111111111', '09999999999999', 5, 23, 1, 0.0000, 1, 1, '2021-07-05 18:46:31', '2021-07-05 18:46:31'),
(3, 46, 7, '{\"en\":\"new Distributors\"}', '{\"en\":\"new Distributors\"}', '01711447789', '01711447789', 2, 40, 1, 0.0000, 1, 1, '2021-12-21 06:54:27', '2021-12-21 06:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bn_name` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

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
  `name` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bn_name` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

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
  `cookie` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
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
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`name`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sr_commission` decimal(5,2) UNSIGNED DEFAULT NULL,
  `shop_commission` decimal(5,2) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
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
(1, '{\"en\":\"Homoeopathic Medicine (In Dosege Form)\"}', '{\"en\":\"gfgf\"}', NULL, NULL, 0, 20.00, 30.00, 1, 0, 1, 2, NULL, NULL, 1, '2021-03-06 06:34:59', '2021-12-21 09:01:48'),
(4, '{\"en\":\"Combination & Brand Name (Syrup)\"}', '{\"en\": null}', NULL, NULL, 1, 10.00, 20.00, 1, 0, 3, 6, NULL, NULL, 1, '2021-03-06 06:36:18', '2021-12-21 09:05:42'),
(8, '{\"en\":\"Combination Medicine in Brand Name (Tab)\"}', '{\"en\":null}', NULL, NULL, 0, 10.00, 20.00, 1, 0, 7, 8, NULL, NULL, 1, '2021-03-16 07:25:21', '2021-12-21 09:06:49'),
(16, '{\"en\":\"Homoeopathic Mother Tincture\"}', '{\"en\":null}', NULL, NULL, 0, 10.00, 20.00, 1, 0, 9, 10, NULL, NULL, 1, '2021-12-21 09:04:24', '2021-12-21 09:07:45'),
(17, '{\"en\":\"Homoeopathic Mother Tincture (Fixt Price)\"}', '{\"en\":null}', NULL, NULL, 0, 10.00, 20.00, 1, 0, 11, 12, NULL, NULL, 1, '2021-12-21 09:07:52', '2021-12-21 09:08:55'),
(18, '{\"en\":\"Potency Medicine (Dialution) Local Bottle\"}', '{\"en\":null}', NULL, NULL, 0, 10.00, 20.00, 1, 0, 13, 14, NULL, NULL, 1, '2021-12-21 09:08:58', '2021-12-21 09:10:06'),
(19, '{\"en\":\"Potency Medicine (Dialution) Germany Style Bottle\"}', '{\"en\":null}', NULL, NULL, 0, 10.00, 20.00, 1, 0, 15, 16, NULL, NULL, 1, '2021-12-21 09:10:09', '2021-12-21 09:11:00'),
(20, '{\"en\":\"Bio-Chemic Medicine (Plastic Pot)\"}', '{\"en\":null}', NULL, NULL, 0, 10.00, 20.00, 1, 0, 17, 18, NULL, NULL, 1, '2021-12-21 09:11:05', '2021-12-21 09:12:45'),
(21, '{\"en\":\"Blanck Tablet\"}', '{\"en\":null}', NULL, NULL, 0, 10.00, 20.00, 1, 0, 19, 20, NULL, NULL, 1, '2021-12-21 09:12:48', '2021-12-21 09:13:29'),
(22, '{\"en\":\"Trituration 3x Medicine (Tab.)\"}', '{\"en\":null}', NULL, NULL, 0, 10.00, 20.00, 1, 0, 21, 22, NULL, NULL, 1, '2021-12-21 09:13:34', '2021-12-21 09:14:47'),
(23, '{\"en\":\"Five (5) Phos Tablet\"}', '{\"en\":null}', NULL, NULL, 0, 10.00, 20.00, 1, 0, 23, 24, NULL, NULL, 1, '2021-12-21 09:14:51', '2021-12-21 09:15:40'),
(24, '{\"en\":\"Combination Medicine In Drop\"}', '{\"en\":null}', NULL, NULL, 0, 10.00, 20.00, 1, 0, 25, 26, NULL, NULL, 1, '2021-12-21 09:15:47', '2021-12-21 09:16:24'),
(25, '{\"en\":\"Ointment Medicine\"}', '{\"en\":null}', NULL, NULL, 0, 10.00, 20.00, 1, 0, 27, 28, NULL, NULL, 1, '2021-12-21 09:16:32', '2021-12-21 09:17:06'),
(26, '{\"en\":\"D-plagen Tablet (Bioplagen)\"}', '{\"en\":null}', NULL, NULL, 0, 10.00, 20.00, 1, 0, 29, 30, NULL, NULL, 1, '2021-12-21 09:17:09', '2021-12-21 09:18:03');

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
(25, 9, 14, NULL, 1, NULL, '2021-05-23 03:44:13', '2021-05-23 03:44:13'),
(26, 6, 15, NULL, 1, NULL, '2021-05-23 03:45:32', '2021-05-23 03:45:32'),
(27, 1, 1, NULL, 1, NULL, '2021-06-14 04:57:02', '2021-06-14 04:57:02'),
(28, 4, 2, NULL, 1, NULL, '2021-06-14 04:57:18', '2021-06-14 04:57:18'),
(29, 1, 3, NULL, 1, NULL, '2021-06-14 04:57:40', '2021-06-14 04:57:40'),
(30, 4, 4, NULL, 1, NULL, '2021-07-10 06:16:50', '2021-07-10 06:16:50'),
(31, 1, 5, NULL, 1, NULL, '2021-07-10 06:18:33', '2021-07-10 06:18:33'),
(32, 1, 6, NULL, 1, NULL, '2021-12-21 09:32:35', '2021-12-21 09:32:35');

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
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `total_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price` decimal(13,2) NOT NULL DEFAULT 0.00,
  `total_collection_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_paid` decimal(13,2) NOT NULL DEFAULT 0.00,
  `total_due` decimal(13,2) NOT NULL DEFAULT 0.00,
  `completed` tinyint(1) DEFAULT 0,
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

--
-- Dumping data for table `ecommerce_orders`
--

INSERT INTO `ecommerce_orders` (`id`, `user_id`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `market_id`, `source_id`, `approvedby_id`, `mobile`, `address`, `order_status`, `payment_status`, `total_quantity`, `total_price`, `total_collection_amount`, `total_weight`, `total_paid`, `total_due`, `completed`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`, `pending_at`, `confirmed_at`, `processing_at`, `ready_to_ship_at`, `shipped_at`, `collected_at`, `delivered_at`, `cancelled_at`, `returned_at`, `undelivered_at`) VALUES
(1, NULL, 1, 1, 1, 2, 3, 1, 523, NULL, 1, NULL, '01851515151', 'address', 'collected', 'unpaid', 0.00, 5951.00, 4529.60, 0.00, 0.00, 0.00, 1, NULL, NULL, '2021-06-20 20:02:52', '2021-07-05 18:35:05', '2021-06-20 20:02:52', '2021-06-21 04:44:22', '2021-07-05 18:33:27', '2021-07-05 18:33:37', '2021-07-05 18:33:49', '2021-07-05 18:35:03', NULL, NULL, NULL, NULL),
(2, NULL, 3, 2, 2, 4, 5, 23, 369, NULL, 2, NULL, '325665444558', 'Pabna zila sadar', 'collected', 'unpaid', 0.00, 5922.00, 4737.60, 0.00, 0.00, 0.00, 1, NULL, NULL, '2021-07-05 19:05:51', '2021-07-05 19:51:01', '2021-07-05 19:05:51', '2021-07-05 19:07:34', '2021-07-05 19:16:41', '2021-07-05 19:16:51', '2021-07-05 19:19:41', '2021-07-05 19:51:01', NULL, NULL, NULL, NULL),
(3, NULL, 3, 2, 2, 4, 5, 23, 369, NULL, 2, NULL, '325665444558', 'Pabna zila sadar', 'processing', 'unpaid', 0.00, 7249.00, 5799.20, 0.00, 0.00, 0.00, 0, NULL, NULL, '2021-07-05 19:50:40', '2021-12-21 06:09:51', '2021-07-05 19:50:40', '2021-07-06 20:13:11', '2021-12-21 06:09:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, 1, 1, 1, 5, 3, 1, 523, NULL, 3, NULL, '56464897895', 'asdasd', 'delivered', 'unpaid', 0.00, 2369.00, 1895.20, 0.00, 0.00, 0.00, 1, NULL, NULL, '2021-07-10 05:58:44', '2021-07-10 06:01:59', '2021-07-10 05:58:44', '2021-07-10 05:59:13', '2021-07-10 06:00:20', '2021-07-10 06:00:33', '2021-07-10 06:00:54', '2021-07-10 06:01:42', '2021-07-10 06:01:59', NULL, NULL, NULL),
(5, NULL, 1, 1, 1, 5, 3, 1, 523, NULL, 4, NULL, '0188963254', 'asdsdasdd', 'pending', 'unpaid', 0.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0, NULL, NULL, '2021-07-10 06:22:01', '2021-07-10 06:22:02', '2021-07-10 06:22:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 1, 1, 1, 5, 3, 1, 523, NULL, 4, NULL, '0188963254', 'asdsdasdd', 'delivered', 'unpaid', 0.00, 700.00, 520.00, 0.00, 0.00, 0.00, 1, NULL, NULL, '2021-07-10 06:22:24', '2021-07-10 06:28:28', '2021-07-10 06:22:24', '2021-07-10 06:22:43', '2021-07-10 06:27:31', '2021-07-10 06:27:35', '2021-07-10 06:27:59', '2021-07-10 06:28:13', '2021-07-10 06:28:27', NULL, NULL, NULL),
(7, NULL, 1, 1, 1, 5, 3, 1, 523, NULL, 4, NULL, '0188963254', 'asdsdasdd', 'pending', 'unpaid', 0.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0, NULL, NULL, '2021-07-10 06:26:28', '2021-07-10 06:26:28', '2021-07-10 06:26:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 1, 1, 1, 2, 3, 1, 523, NULL, 5, NULL, '1234568909', 'new shop sky', 'delivered', 'unpaid', 0.00, 700.00, 520.00, 0.00, 0.00, 0.00, 1, NULL, NULL, '2021-07-10 10:29:32', '2021-07-10 10:32:20', '2021-07-10 10:29:32', '2021-07-10 10:30:20', '2021-07-10 10:30:42', '2021-07-10 10:30:58', '2021-07-10 10:31:22', '2021-07-10 10:32:04', '2021-07-10 10:32:20', NULL, NULL, NULL),
(9, NULL, 1, 1, 1, 2, 3, 1, 523, NULL, 5, NULL, '1234568909', 'new shop sky', 'delivered', 'unpaid', 0.00, 1100.00, 800.00, 0.00, 0.00, 0.00, 1, NULL, NULL, '2021-07-10 10:53:26', '2021-07-10 11:21:21', '2021-07-10 10:53:26', '2021-07-10 10:54:02', '2021-07-10 11:20:30', '2021-07-10 11:20:36', '2021-07-10 11:20:40', '2021-07-10 11:21:11', '2021-07-10 11:21:21', NULL, NULL, NULL),
(10, NULL, 1, 1, 1, 2, 3, 1, 523, NULL, 6, NULL, '01511253669', 'Madina Madina Madina Madina Madina Madina', 'delivered', 'unpaid', 0.00, 400.00, 280.00, 0.00, 0.00, 0.00, 1, NULL, NULL, '2021-07-15 05:08:20', '2021-07-15 05:09:24', '2021-07-15 05:08:20', '2021-07-15 05:08:39', '2021-07-15 05:09:05', '2021-07-15 05:09:09', '2021-07-15 05:09:12', '2021-07-15 05:09:20', '2021-07-15 05:09:24', NULL, NULL, NULL),
(11, NULL, 1, 1, 1, 2, 3, 1, 523, NULL, 6, NULL, '01511253669', 'Madina Madina Madina Madina Madina Madina', 'pending', 'unpaid', 0.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0, NULL, NULL, '2021-07-15 05:13:33', '2021-07-15 05:13:34', '2021-07-15 05:13:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 1, 1, 1, 2, 3, 1, 523, NULL, 7, NULL, '01303252902', 'Dhaka', 'delivered', 'unpaid', 0.00, 2340.00, 1872.00, 0.00, 0.00, 0.00, 1, NULL, NULL, '2021-12-21 05:59:48', '2021-12-21 06:07:12', '2021-12-21 05:59:48', '2021-12-21 06:00:59', '2021-12-21 06:04:08', '2021-12-21 06:04:24', '2021-12-21 06:04:54', '2021-12-21 06:05:23', '2021-12-21 06:07:12', NULL, NULL, NULL),
(13, NULL, 7, 3, 4, 8, 2, 40, 43, NULL, 8, NULL, '01711447791', 'Dhaka', 'delivered', 'unpaid', 0.00, 1777.00, 1359.50, 0.00, 0.00, 0.00, 1, NULL, NULL, '2021-12-21 07:11:49', '2021-12-21 07:28:32', '2021-12-21 07:11:49', '2021-12-21 07:18:07', '2021-12-21 07:25:52', '2021-12-21 07:26:01', '2021-12-21 07:26:04', '2021-12-21 07:26:55', '2021-12-21 07:28:32', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_order_items`
--

CREATE TABLE `ecommerce_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`product_name`)),
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
  `extra_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_quantity` decimal(13,2) NOT NULL DEFAULT 0.00,
  `total_shipped_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(13,2) NOT NULL DEFAULT 0.00,
  `total_price` decimal(13,2) NOT NULL DEFAULT 0.00,
  `collection_amount` decimal(15,2) DEFAULT 0.00,
  `unit_discount` decimal(13,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(13,2) NOT NULL DEFAULT 0.00,
  `total_price_after_discount` decimal(13,2) NOT NULL DEFAULT 0.00,
  `affiliate_price` decimal(13,2) NOT NULL DEFAULT 0.00,
  `final_price` decimal(13,2) NOT NULL DEFAULT 0.00,
  `total_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stock_minimized` tinyint(1) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `ecommerce_order_items`
--

INSERT INTO `ecommerce_order_items` (`id`, `order_id`, `product_id`, `product_name`, `user_id`, `seller_source_id`, `buyer_source_id`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `market_id`, `approvedby_id`, `order_status`, `color`, `size`, `sale_type`, `extra_description`, `total_quantity`, `total_shipped_quantity`, `unit_price`, `total_price`, `collection_amount`, `unit_discount`, `total_discount`, `total_price_after_discount`, `affiliate_price`, `final_price`, `total_weight`, `addedby_id`, `editedby_id`, `stock_minimized`, `pending_at`, `confirmed_at`, `processing_at`, `ready_to_ship_at`, `shipped_at`, `delivered_at`, `cancelled_at`, `returned_at`, `undelivered_at`, `paid_to_seller_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '{\"en\":\"Kylee Dale\"}', NULL, 1, 1, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 3.00, 3.00, 621.00, 1863.00, 1490.40, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-20 20:02:52', '2021-07-05 18:33:27', NULL),
(2, 1, 2, '{\"en\":\"Kylynn Silva\"}', NULL, 1, 1, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 4.00, 4.00, 578.00, 2312.00, 1618.40, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-20 20:02:52', '2021-07-05 18:33:27', NULL),
(3, 1, 3, '{\"en\":\"Gay Sawyer\"}', NULL, 1, 1, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 3.00, 3.00, 592.00, 1776.00, 1420.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-20 20:02:52', '2021-07-05 18:33:27', NULL),
(4, 2, 1, '{\"en\":\"Kylee Dale\"}', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 2.00, 2.00, 621.00, 1242.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:05:52', '2021-07-05 19:16:41', NULL),
(5, 2, 2, '{\"en\":\"Kylynn Silva\"}', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 4.00, 4.00, 578.00, 2312.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:05:52', '2021-07-05 19:16:41', NULL),
(6, 2, 3, '{\"en\":\"Gay Sawyer\"}', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 4.00, 4.00, 592.00, 2368.00, 473.60, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:05:52', '2021-07-05 19:16:41', NULL),
(7, 3, 1, '{\"en\":\"Kylee Dale\"}', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 5.00, 5.00, 621.00, 3105.00, 2484.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:50:41', '2021-12-21 06:09:53', NULL),
(8, 3, 3, '{\"en\":\"Gay Sawyer\"}', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 7.00, 7.00, 592.00, 4144.00, 3315.20, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:50:41', '2021-12-21 06:09:54', NULL),
(9, 4, 1, '{\"en\":\"Kylee Dale\"}', NULL, 3, 3, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 621.00, 621.00, 496.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 05:58:45', '2021-07-10 06:00:21', NULL),
(10, 4, 2, '{\"en\":\"Kylynn Silva\"}', NULL, 3, 3, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 2.00, 2.00, 578.00, 1156.00, 924.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 05:58:45', '2021-07-10 06:00:21', NULL),
(11, 4, 3, '{\"en\":\"Gay Sawyer\"}', NULL, 3, 3, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 592.00, 592.00, 473.60, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 05:58:46', '2021-07-10 06:00:24', NULL),
(12, 5, 4, '{\"en\":\"test product 2\"}', NULL, 4, 4, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 300.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:22:02', '2021-07-10 06:22:02', NULL),
(13, 6, 5, '{\"en\":\"test product 3\"}', NULL, 4, 4, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 400.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:22:24', '2021-07-10 06:27:32', NULL),
(14, 6, 4, '{\"en\":\"test product 2\"}', NULL, 4, 4, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 300.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:22:24', '2021-07-10 06:27:32', NULL),
(15, 7, 5, '{\"en\":\"test product 3\"}', NULL, 4, 4, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 400.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:26:28', '2021-07-10 06:26:28', NULL),
(16, 8, 5, '{\"en\":\"test product 3\"}', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 400.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:29:32', '2021-07-10 10:30:43', NULL),
(17, 8, 4, '{\"en\":\"test product 2\"}', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 300.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:29:32', '2021-07-10 10:30:43', NULL),
(18, 9, 5, '{\"en\":\"test product 3\"}', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 2.00, 2.00, 400.00, 800.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:53:28', '2021-07-10 11:20:30', NULL),
(19, 9, 4, '{\"en\":\"test product 2\"}', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 300.00, 300.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:53:28', '2021-07-10 11:20:30', NULL),
(20, 10, 5, '{\"en\":\"test product 3\"}', NULL, 6, 6, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 400.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-15 05:08:23', '2021-07-15 05:09:06', NULL),
(21, 11, 4, '{\"en\":\"test product 2\"}', NULL, 6, 6, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 300.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-15 05:13:34', '2021-07-15 05:13:34', NULL),
(22, 12, 2, '{\"en\":\"Kylynn Silva\"}', NULL, 7, 7, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 2.00, 2.00, 578.00, 1156.00, 924.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 05:59:49', '2021-12-21 06:04:08', NULL),
(23, 12, 3, '{\"en\":\"Gay Sawyer\"}', NULL, 7, 7, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 2.00, 2.00, 592.00, 1184.00, 947.20, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 05:59:49', '2021-12-21 06:04:08', NULL),
(24, 13, 1, '{\"en\":\"Kylee Dale\"}', NULL, 8, 8, 7, 3, 4, 8, 2, 40, 43, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 621.00, 621.00, 434.70, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 07:11:49', '2021-12-21 07:25:52', NULL),
(25, 13, 2, '{\"en\":\"Kylynn Silva\"}', NULL, 8, 8, 7, 3, 4, 8, 2, 40, 43, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 2.00, 2.00, 578.00, 1156.00, 924.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 07:11:49', '2021-12-21 07:25:52', NULL);

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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` decimal(13,2) DEFAULT NULL,
  `sr_commission_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
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
(1, '2021-07-10', NULL, 3, 5, 'agent', 'cash', 'varified', 'cash', 'cash', 'cash', NULL, 'cash', 1000.00, 100.00, NULL, 4, 1, '2021-07-10 06:04:01', '2021-07-10 06:06:02'),
(2, '2021-07-10', NULL, 4, 5, 'agent', 'cash', 'varified', 'cash', 'cash', 'cash', 'https://dhplbd.com/storage/paymentCollection/2_2021-07-10-123359png', 'cash', 520.00, 52.00, NULL, 4, 1, '2021-07-10 06:33:57', '2021-07-10 06:34:40'),
(3, '2021-07-10', NULL, 5, 2, 'agent', 'cash', 'varified', 'cash', 'cash', 'cash', NULL, 'cash', 520.00, 80.00, NULL, 1, 1, '2021-07-10 10:34:12', '2021-07-10 10:34:28'),
(4, '2021-07-10', NULL, 5, 2, 'agent', 'mobile_bank', 'varified', 'mobile_bank', 'mobile_bank', 'mobile_bank', 'https://www.dhplbd.com/storage/paymentCollection/4_2021-07-10-165832jpg', 'mobile_bank', 520.00, 80.00, NULL, 1, 1, '2021-07-10 10:58:31', '2021-07-10 11:01:31'),
(5, '2021-07-15', NULL, 6, 2, 'agent', 'cash', 'varified', 'cash', 'cash', 'cash', NULL, 'cash', 280.00, 56.00, NULL, 35, 1, '2021-07-15 05:09:58', '2021-07-15 05:10:19'),
(6, '2021-12-21', NULL, 7, 2, 'agent', 'cash', 'varified', 'cash', 'cash', 'cash', 'https://dhplbd.com/storage/paymentCollection/6_2021-12-21-120901jpg', 'cash', 1872.00, 211.56, NULL, 35, 1, '2021-12-21 06:08:59', '2021-12-21 06:12:09'),
(7, '2021-12-21', NULL, 8, 8, 'agent', 'cash', 'varified', 'cash', 'cash', 'cash', 'https://dhplbd.com/storage/paymentCollection/7_2021-12-21-133002jpg', 'cash', 1359.50, 179.42, NULL, 48, 45, '2021-12-21 07:30:01', '2021-12-21 07:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_products`
--

CREATE TABLE `ecommerce_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`name`)),
  `excerpt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`excerpt`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `what_in_box` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`what_in_box`)),
  `product_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `septic` tinyint(1) NOT NULL DEFAULT 0,
  `liquid` tinyint(1) NOT NULL DEFAULT 0,
  `inflammable` tinyint(1) NOT NULL DEFAULT 0,
  `pre_order` tinyint(1) NOT NULL DEFAULT 0,
  `digital` tinyint(1) NOT NULL DEFAULT 0,
  `refundable` tinyint(1) NOT NULL DEFAULT 1,
  `warrenty_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `warrenty_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ready_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_to_b` tinyint(1) NOT NULL DEFAULT 1,
  `b_to_c` tinyint(1) NOT NULL DEFAULT 1,
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
  `affiliate_commission` int(11) DEFAULT 0,
  `unit_weight` decimal(9,2) DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecommerce_products`
--

INSERT INTO `ecommerce_products` (`id`, `user_id`, `source_id`, `category_id`, `name`, `excerpt`, `description`, `what_in_box`, `product_condition`, `septic`, `liquid`, `inflammable`, `pre_order`, `digital`, `refundable`, `warrenty_type`, `warrenty_period`, `ready_type`, `b_to_b`, `b_to_c`, `mobile`, `status`, `brand_id`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `market_id`, `lat`, `lng`, `publish_date`, `close_date`, `mfg_date`, `exp_date`, `feature_img`, `quantity`, `min_order_quantity`, `max_order_quantity`, `purchase_price`, `sale_price`, `compare_price`, `affiliate_commission`, `unit_weight`, `unit`, `type`, `type_value`, `unit_value`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, '{\"en\":\"Kylee Dale\",\"bn\":\"\"}', '{\"en\":\"Consequatur nulla to\",\"bn\":\"\"}', '{\"en\":\"Doloremque dolorem d\",\"bn\":\"\"}', '{\"en\":\"Molestias possimus\",\"bn\":\"\"}', NULL, 0, 0, 1, 0, 0, 1, '1', NULL, NULL, 1, 1, NULL, 'published', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://dhplbd.com/storage/product/fi/1_fi_2021_06_14_105918_14933586.gif', NULL, 1, NULL, 306.00, 621.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-14 04:57:01', '2021-06-14 04:59:18'),
(2, NULL, NULL, 4, '{\"en\":\"Kylynn Silva\",\"bn\":\"\"}', '{\"en\":\"Cupiditate id aliqu\",\"bn\":\"\"}', '{\"en\":\"Voluptate commodi id\",\"bn\":\"\"}', '{\"en\":\"Aliqua Culpa ratio\",\"bn\":\"\"}', NULL, 1, 0, 0, 1, 0, 1, '1', NULL, NULL, 1, 1, NULL, 'published', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://dhplbd.com/storage/product/fi/2_fi_2021_06_14_105913_89183233.gif', NULL, 2, NULL, 300.00, 578.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-14 04:57:18', '2021-06-14 04:59:13'),
(3, NULL, NULL, 8, '{\"en\":\"Gay Sawyer\",\"bn\":\"\"}', '{\"en\":\"Pariatur Dolores ut\",\"bn\":\"\"}', '{\"en\":\"Ut sit cumque quas o\",\"bn\":\"\"}', '{\"en\":\"Aute odio qui nostru\",\"bn\":\"\"}', NULL, 0, 0, 0, 0, 0, 0, '1', NULL, NULL, 1, 1, NULL, 'published', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://dhplbd.com/storage/product/fi/3_fi_2021_06_14_105909_55108065.gif', NULL, 1, NULL, 300.00, 592.00, NULL, 0, NULL, 'ml', 'number', '230', '450', 1, NULL, '2021-06-14 04:57:39', '2021-06-20 10:42:00'),
(4, NULL, NULL, 4, '{\"en\":\"Alfa syrup\",\"bn\":\"\"}', '{\"en\":\"Alfa syrup\",\"bn\":\"\"}', '{\"en\":\"Alfa syrup\",\"bn\":\"\"}', '{\"en\":\"Alfa syrup\",\"bn\":\"\"}', NULL, 0, 1, 1, 1, 0, 0, '1', NULL, NULL, 1, 1, NULL, 'published', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://dhplbd.com/storage/product/fi/4_fi_2021_07_10_121710_17423336.png', NULL, 1, NULL, 60.00, 85.00, NULL, 0, NULL, 'ml', 'class', NULL, '100', 1, NULL, '2021-07-10 06:16:50', '2021-12-21 09:43:27'),
(5, NULL, NULL, 1, '{\"en\":\"Aconite\",\"bn\":\"\"}', '{\"en\":\"Dolor ab voluptates\",\"bn\":\"\"}', '{\"en\":\"Sunt rem dolor aspe\",\"bn\":\"\"}', '{\"en\":\"Doloribus magni qui\",\"bn\":\"\"}', NULL, 0, 1, 1, 1, 0, 0, '1', NULL, NULL, 1, 1, NULL, 'published', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://dhplbd.com/storage/product/fi/5_fi_2021_07_10_121847_21591791.jpg', NULL, 1, NULL, 55.00, 65.00, NULL, 0, NULL, 'pc', 'number', NULL, '60 ml', 1, NULL, '2021-07-10 06:18:33', '2021-12-21 09:25:08'),
(6, NULL, NULL, 1, '{\"en\":\"Alfalfa-Q\",\"bn\":\"\"}', '{\"en\":\"Details\",\"bn\":\"\"}', '{\"bn\":\"\"}', '{\"bn\":\"\"}', NULL, 0, 1, 1, 1, 0, 0, '1', NULL, NULL, 1, 1, NULL, 'published', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 42.00, 55.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-12-21 09:32:34', '2021-12-21 09:32:34');

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
  `purchase_price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `sale_price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_shop_categories`
--

CREATE TABLE `ecommerce_shop_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`name`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
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
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`name`)),
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`slogan`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`address`)),
  `initial_amount` decimal(13,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `monthly_target` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_sale` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_sale_commission` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_sale` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_sale_commission` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_collection` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_collection_commission` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_collection` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_commission` decimal(15,2) NOT NULL DEFAULT 0.00,
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
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `balance` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `seller_commission` int(11) NOT NULL DEFAULT 10,
  `pos` tinyint(1) NOT NULL DEFAULT 0,
  `self_domain` tinyint(1) NOT NULL DEFAULT 0,
  `sale_to_cp` tinyint(1) NOT NULL DEFAULT 1,
  `sale_from_cp` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecommerce_sources`
--

INSERT INTO `ecommerce_sources` (`id`, `user_id`, `addedby_id`, `editedby_id`, `email`, `mobile`, `mobile_optional`, `name`, `owner_name`, `slogan`, `description`, `address`, `initial_amount`, `due_amount`, `monthly_target`, `total_sale`, `total_sale_commission`, `current_sale`, `current_sale_commission`, `total_collection`, `total_collection_commission`, `current_collection`, `current_commission`, `cover_img`, `logo`, `type`, `mobile_country`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `market_id`, `lat`, `lng`, `active`, `balance`, `seller_commission`, `pos`, `self_domain`, `sale_to_cp`, `sale_from_cp`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, NULL, NULL, '01851515151', NULL, '{\"en\":\"New Shop\"}', 'Shop Owner', NULL, '{\"en\":\"desc\"}', '{\"en\":\"address\"}', 100000.00, 100000.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'distributor', NULL, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, NULL, 1, 0.0000, 10, 0, 0, 1, 0, 'normal', '2021-06-20 20:00:20', '2021-06-20 20:01:24'),
(2, NULL, 40, NULL, NULL, '325665444558', NULL, '{\"en\":\"Punom\"}', 'Rahim', NULL, '{\"en\":\"Premium\"}', '{\"en\":\"Pabna zila sadar\"}', 150000.00, 150000.00, 10000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'flagship_distributor', NULL, 3, 2, 2, 4, 5, 23, 369, NULL, NULL, NULL, 1, 0.0000, 10, 0, 0, 1, 0, 'normal', '2021-07-05 19:00:15', '2021-07-05 19:02:45'),
(3, NULL, 4, NULL, NULL, '56464897895', NULL, '{\"en\":\"asdsadsa\"}', 'asdsadasd', NULL, '{\"en\":\"asdsadsad\"}', '{\"en\":\"asdasd\"}', 1200.00, 1200.00, 0.00, 1895.20, 473.80, 895.20, 223.80, 1000.00, 250.00, 0.00, 0.00, NULL, NULL, 'distributor', NULL, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, NULL, 1, 0.0000, 10, 0, 0, 1, 0, 'normal', '2021-07-10 05:55:20', '2021-07-10 06:06:02'),
(4, NULL, 4, NULL, NULL, '0188963254', NULL, '{\"en\":\"rampura ph\"}', 'asdsd', NULL, '{\"en\":\"asdasd\"}', '{\"en\":\"asdsdasdd\"}', 1000.00, 1000.00, 0.00, 520.00, 180.00, 0.00, 0.00, 520.00, 180.00, 0.00, 0.00, NULL, NULL, 'distributor', NULL, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, NULL, 1, 0.0000, 10, 0, 0, 1, 0, 'normal', '2021-07-10 06:20:30', '2021-07-10 06:34:40'),
(5, NULL, 1, NULL, NULL, '1234568909', NULL, '{\"en\":\"new shop sky\"}', 'test', NULL, '{\"en\":\"new shop sky\"}', '{\"en\":\"new shop sky\"}', 1000.00, 1000.00, 0.00, 1320.00, 480.00, 280.00, 120.00, 1040.00, 360.00, 0.00, 0.00, NULL, NULL, 'distributor', NULL, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, NULL, 1, 0.0000, 10, 0, 0, 1, 0, 'normal', '2021-07-10 10:27:42', '2021-07-10 11:21:22'),
(6, NULL, 35, NULL, NULL, '01511253669', NULL, '{\"en\":\"Madina\"}', 'Madina', NULL, '{\"en\":\"Madina Madina Madina Madina Madina\"}', '{\"en\":\"Madina Madina Madina Madina Madina Madina\"}', 0.00, 0.00, 0.00, 280.00, 120.00, 0.00, 0.00, 280.00, 120.00, 0.00, 0.00, NULL, NULL, 'distributor', NULL, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, NULL, 1, 0.0000, 10, 0, 0, 1, 0, 'normal', '2021-07-14 10:44:48', '2021-07-15 05:10:19'),
(7, NULL, 35, NULL, NULL, '01303252902', NULL, '{\"en\":\"Test Shop\"}', 'Developer', NULL, '{\"en\":\"Description\"}', '{\"en\":\"Dhaka\"}', 0.00, 0.00, 10000.00, 1872.00, 468.00, 0.00, 0.00, 1872.00, 468.00, 0.00, 0.00, NULL, NULL, 'distributor', NULL, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, NULL, 1, 0.0000, 10, 0, 0, 1, 0, 'normal', '2021-12-21 05:22:34', '2021-12-21 06:12:10'),
(8, NULL, 48, NULL, NULL, '01711447791', NULL, '{\"en\":\"Dev Farmacy\"}', 'Dev Azbi', NULL, '{\"en\":\"Nothing to say\"}', '{\"en\":\"Dhaka\"}', 0.00, 0.00, 50000.00, 1359.50, 417.50, 0.00, 0.00, 1359.50, 417.50, 0.00, 0.00, NULL, NULL, 'flagship_distributor', NULL, 7, 3, 4, 8, 2, 40, 43, NULL, NULL, NULL, 1, 0.0000, 10, 0, 0, 1, 0, 'normal', '2021-12-21 06:59:56', '2021-12-21 07:30:54'),
(9, NULL, 48, NULL, NULL, '7256565555', NULL, '{\"en\":\"Qui rerum sit ut ali\"}', 'Ullamco ut obcaecati', NULL, '{\"en\":\"Omnis vel aut do fug\"}', '{\"en\":\"A ut aspernatur dolo\"}', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'flagship_distributor', NULL, 7, 3, 4, 8, 2, 40, 43, NULL, NULL, NULL, 1, 0.0000, 10, 0, 0, 1, 0, 'normal', '2021-12-21 09:57:56', '2021-12-21 10:00:03');

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
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`name`)),
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`address`)),
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `addedby_id` bigint(20) UNSIGNED NOT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_accounts`
--

CREATE TABLE `member_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `referral_withdrawable_comm` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `balance` decimal(12,2) NOT NULL DEFAULT 0.00,
  `refer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `verified_by_agent` tinyint(1) NOT NULL DEFAULT 0,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(56, '2021_04_18_050455_create_ecommerce_payment_collections_table', 16);

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
(2, 1, 'factory', 'Factory', NULL, 1, NULL, '2021-05-09 14:29:30', '2021-05-09 14:29:30'),
(5, 30, 'factory', 'Factory', NULL, 1, NULL, '2021-05-24 07:20:21', '2021-05-24 07:20:21'),
(7, 18, 'factory', 'Factory', NULL, 29, NULL, '2021-05-26 15:26:52', '2021-05-26 15:26:52'),
(13, 4, 'admin', 'Admin', NULL, 1, NULL, '2021-07-10 05:35:43', '2021-07-10 05:35:43'),
(14, 4, 'common', 'Admin', NULL, 1, NULL, '2021-07-10 05:35:43', '2021-07-10 05:35:43'),
(16, 44, 'admin', 'Admin', NULL, 1, 1, '2021-02-17 12:52:32', '2021-02-17 12:52:32'),
(17, 49, 'factory', 'Factory', '01711447792', 1, NULL, '2021-12-21 07:15:32', '2021-12-21 07:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `return_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `approvedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_shipment_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_return_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_replacement_price` decimal(15,2) NOT NULL DEFAULT 0.00,
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
(1, 1, 6, 8, 2, 5, '1234568909', 'new shop sky', NULL, 0, 'pending', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 700.00, 400.00, 400.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:41:04', '2021-07-10 10:41:04'),
(2, 3, 9, 10, 2, 6, '01511253669', 'Madina Madina Madina Madina Madina Madina', NULL, 0, 'pending', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 400.00, 800.00, 800.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-15 05:12:48', '2021-07-15 05:12:48');

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
  `product_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
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
  `return_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipment_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `return_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `replace_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(13,2) NOT NULL DEFAULT 0.00,
  `shipment_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `return_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `replace_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `unit_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price_after_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `affiliate_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `final_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
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
(1, 1, 1, 1, 6, 15, 8, 16, 5, 'test product 3', 0, 0, NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, NULL, 'test', 1.00, 1.00, 1.00, 1.00, 400.00, 400.00, 400.00, 400.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2021-07-10 10:40:08', NULL, NULL, NULL, '2021-07-10 10:41:04', '2021-07-10 10:41:04'),
(2, 2, 3, 4, 9, 21, 10, 20, 5, 'test product 3', 0, 0, NULL, 6, 6, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, NULL, NULL, 1.00, 1.00, 2.00, 2.00, 400.00, 400.00, 800.00, 800.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2021-07-15 05:11:07', NULL, NULL, NULL, '2021-07-15 05:12:48', '2021-07-15 05:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`name`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `feature_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
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
  `pinned` tinyint(1) DEFAULT 0,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_balance` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `transfer_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `current_balance` decimal(12,4) NOT NULL DEFAULT 0.0000,
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
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`name`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `collection_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
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
(1, 4, 9, 4, 10, 5, 3, 1, 1.00, 621.00, 496.80, 10.00, 1000.00, 49.68, 20.00, 0.00, 124.20, 447.12, '2021-07-10', '2021-07-10 06:01:59', '2021-07-10 06:01:59'),
(2, 4, 10, 4, 11, 5, 3, 2, 2.00, 1156.00, 924.80, 10.00, 1000.00, 92.48, 20.00, 0.00, 231.20, 832.32, '2021-07-10', '2021-07-10 06:02:00', '2021-07-10 06:02:00'),
(3, 4, 11, 4, 12, 5, 3, 3, 1.00, 592.00, 473.60, 10.00, 1000.00, 47.36, 20.00, 0.00, 118.40, 426.24, '2021-07-10', '2021-07-10 06:02:00', '2021-07-10 06:02:00'),
(4, 6, 13, 5, 13, 5, 4, 5, 1.00, 400.00, 280.00, 10.00, 1000.00, 28.00, 30.00, 0.00, 120.00, 252.00, '2021-07-10', '2021-07-10 06:28:28', '2021-07-10 06:28:28'),
(5, 6, 14, 5, 14, 5, 4, 4, 1.00, 300.00, 240.00, 10.00, 1000.00, 24.00, 20.00, 0.00, 60.00, 216.00, '2021-07-10', '2021-07-10 06:28:28', '2021-07-10 06:28:28'),
(6, 8, 16, 6, 15, 2, 5, 5, 1.00, 400.00, 280.00, 20.00, 0.00, 56.00, 30.00, 0.00, 120.00, 224.00, '2021-07-10', '2021-07-10 10:32:20', '2021-07-10 10:32:20'),
(7, 8, 17, 6, 16, 2, 5, 4, 1.00, 300.00, 240.00, 10.00, 0.00, 24.00, 20.00, 0.00, 60.00, 216.00, '2021-07-10', '2021-07-10 10:32:20', '2021-07-10 10:32:20'),
(8, 9, 18, 7, 17, 2, 5, 5, 1.00, 400.00, 280.00, 20.00, 0.00, 56.00, 30.00, 0.00, 120.00, 224.00, '2021-07-10', '2021-07-10 10:56:25', '2021-07-10 10:56:25'),
(9, 9, 19, 7, 18, 2, 5, 4, 1.00, 300.00, 240.00, 10.00, 0.00, 24.00, 20.00, 0.00, 60.00, 216.00, '2021-07-10', '2021-07-10 10:56:25', '2021-07-10 10:56:25'),
(10, 9, 18, 8, 19, 2, 5, 5, 1.00, 400.00, 280.00, 20.00, 0.00, 56.00, 30.00, 0.00, 120.00, 224.00, '2021-07-10', '2021-07-10 11:21:21', '2021-07-10 11:21:21'),
(11, 9, 19, 8, 20, 2, 5, 4, 0.00, 0.00, 0.00, 10.00, 0.00, 0.00, 20.00, 0.00, 0.00, 0.00, '2021-07-10', '2021-07-10 11:21:22', '2021-07-10 11:21:22'),
(12, 10, 20, 9, 21, 2, 6, 5, 1.00, 400.00, 280.00, 20.00, 1000000.00, 56.00, 30.00, 0.00, 120.00, 224.00, '2021-07-15', '2021-07-15 05:09:25', '2021-07-15 05:09:25'),
(13, 12, 22, 10, 22, 2, 7, 2, 2.00, 1156.00, 924.80, 10.00, 1000000.00, 92.48, 20.00, 10000.00, 231.20, 832.32, '2021-12-21', '2021-12-21 06:07:12', '2021-12-21 06:07:12'),
(14, 12, 23, 10, 23, 2, 7, 3, 2.00, 1184.00, 947.20, 10.00, 1000000.00, 94.72, 20.00, 10000.00, 236.80, 852.48, '2021-12-21', '2021-12-21 06:07:12', '2021-12-21 06:07:12'),
(15, 13, 24, 12, 26, 8, 8, 1, 1.00, 621.00, 434.70, 20.00, 100000.00, 86.94, 30.00, 50000.00, 186.30, 347.76, '2021-12-21', '2021-12-21 07:28:32', '2021-12-21 07:28:32'),
(16, 13, 25, 12, 27, 8, 8, 2, 2.00, 1156.00, 924.80, 10.00, 100000.00, 92.48, 20.00, 50000.00, 231.20, 832.32, '2021-12-21', '2021-12-21 07:28:32', '2021-12-21 07:28:32');

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
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_collection_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `shipment_price` decimal(15,2) UNSIGNED DEFAULT NULL,
  `total_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_due` decimal(10,2) NOT NULL DEFAULT 0.00,
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
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `user_id`, `order_id`, `replacement_id`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `market_id`, `source_id`, `approvedby_id`, `mobile`, `address`, `order_status`, `payment_status`, `type`, `total_quantity`, `total_price`, `total_collection_amount`, `shipment_price`, `total_weight`, `total_paid`, `total_due`, `addedby_id`, `editedby_id`, `pending_at`, `confirmed_at`, `processing_at`, `ready_to_ship_at`, `shipped_at`, `collected_at`, `delivered_at`, `cancelled_at`, `returned_at`, `undelivered_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, NULL, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 1, '01851515151', NULL, 'collected', 'unpaid', NULL, 0.00, 5951.00, 4529.60, 5951.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2021-07-05 18:33:27', '2021-07-05 18:33:37', '2021-07-05 18:33:49', '2021-07-05 18:35:03', NULL, NULL, NULL, NULL, '2021-07-05 18:33:27', '2021-07-05 18:35:03'),
(2, NULL, 2, NULL, 3, 2, 2, 4, 5, 23, 369, NULL, 2, 1, '325665444558', NULL, 'collected', 'unpaid', NULL, 0.00, 5922.00, 4264.00, 5330.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2021-07-05 19:15:45', '2021-07-05 19:16:01', '2021-07-05 19:16:09', '2021-07-05 19:20:19', NULL, NULL, NULL, NULL, '2021-07-05 19:15:46', '2021-07-05 19:20:19'),
(3, NULL, 2, NULL, 3, 2, 2, 4, 5, 23, 369, NULL, 2, 1, '325665444558', NULL, 'collected', 'unpaid', NULL, 0.00, 5922.00, 473.60, 592.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2021-07-05 19:16:41', '2021-07-05 19:16:51', '2021-07-05 19:19:41', '2021-07-05 19:51:01', NULL, NULL, NULL, NULL, '2021-07-05 19:16:41', '2021-07-05 19:51:01'),
(4, NULL, 4, NULL, 1, 1, 1, 5, 3, 1, 523, NULL, 3, 1, '56464897895', NULL, 'delivered', 'unpaid', NULL, 0.00, 2369.00, 1895.20, 2369.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2021-07-10 06:00:20', '2021-07-10 06:00:33', '2021-07-10 06:00:54', '2021-07-10 06:01:42', '2021-07-10 06:01:59', NULL, NULL, NULL, '2021-07-10 06:00:21', '2021-07-10 06:01:59'),
(5, NULL, 6, NULL, 1, 1, 1, 5, 3, 1, 523, NULL, 4, 1, '0188963254', NULL, 'delivered', 'unpaid', NULL, 0.00, 700.00, 520.00, 700.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2021-07-10 06:27:31', '2021-07-10 06:27:35', '2021-07-10 06:27:59', '2021-07-10 06:28:13', '2021-07-10 06:28:27', NULL, NULL, NULL, '2021-07-10 06:27:32', '2021-07-10 06:28:27'),
(6, NULL, 8, NULL, 1, 1, 1, 2, 3, 1, 523, NULL, 5, 1, '1234568909', NULL, 'delivered', 'unpaid', NULL, 0.00, 700.00, 520.00, 700.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2021-07-10 10:30:42', '2021-07-10 10:30:58', '2021-07-10 10:31:22', '2021-07-10 10:32:04', '2021-07-10 10:32:20', NULL, NULL, NULL, '2021-07-10 10:30:43', '2021-07-10 10:32:20'),
(7, NULL, 9, NULL, 1, 1, 1, 2, 3, 1, 523, NULL, 5, 1, '1234568909', NULL, 'delivered', 'unpaid', NULL, 0.00, 1100.00, 520.00, 700.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2021-07-10 10:54:54', '2021-07-10 10:55:15', '2021-07-10 10:55:27', '2021-07-10 10:56:07', '2021-07-10 10:56:25', NULL, NULL, NULL, '2021-07-10 10:54:54', '2021-07-10 10:56:25'),
(8, NULL, 9, NULL, 1, 1, 1, 2, 3, 1, 523, NULL, 5, 1, '1234568909', NULL, 'delivered', 'unpaid', NULL, 0.00, 1100.00, 280.00, 400.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2021-07-10 11:20:30', '2021-07-10 11:20:36', '2021-07-10 11:20:40', '2021-07-10 11:21:11', '2021-07-10 11:21:21', NULL, NULL, NULL, '2021-07-10 11:20:30', '2021-07-10 11:21:21'),
(9, NULL, 10, NULL, 1, 1, 1, 2, 3, 1, 523, NULL, 6, 1, '01511253669', NULL, 'delivered', 'unpaid', NULL, 0.00, 400.00, 280.00, 400.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2021-07-15 05:09:05', '2021-07-15 05:09:09', '2021-07-15 05:09:12', '2021-07-15 05:09:20', '2021-07-15 05:09:24', NULL, NULL, NULL, '2021-07-15 05:09:05', '2021-07-15 05:09:24'),
(10, NULL, 12, NULL, 1, 1, 1, 2, 3, 1, 523, NULL, 7, 1, '01303252902', NULL, 'delivered', 'unpaid', NULL, 0.00, 2340.00, 1872.00, 2340.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2021-12-21 06:04:08', '2021-12-21 06:04:24', '2021-12-21 06:04:54', '2021-12-21 06:05:23', '2021-12-21 06:07:12', NULL, NULL, NULL, '2021-12-21 06:04:08', '2021-12-21 06:07:12'),
(11, NULL, 3, NULL, 3, 2, 2, 4, 5, 23, 369, NULL, 2, 1, '325665444558', NULL, 'processing', 'unpaid', NULL, 0.00, 7249.00, 5799.20, 7249.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2021-12-21 06:09:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 06:09:51', '2021-12-21 06:09:54'),
(12, NULL, 13, NULL, 7, 3, 4, 8, 2, 40, 43, NULL, 8, 49, '01711447791', NULL, 'delivered', 'unpaid', NULL, 0.00, 1777.00, 1359.50, 1777.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2021-12-21 07:25:52', '2021-12-21 07:26:01', '2021-12-21 07:26:04', '2021-12-21 07:26:55', '2021-12-21 07:28:32', NULL, NULL, NULL, '2021-12-21 07:25:52', '2021-12-21 07:28:32');

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
  `product_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
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
  `extra_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipment_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `returned_quantity` decimal(10,2) UNSIGNED DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipment_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `collection_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `unit_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price_after_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `affiliate_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `final_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stock_minimized` tinyint(1) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `shipment_items`
--

INSERT INTO `shipment_items` (`id`, `shipment_id`, `order_id`, `order_item_id`, `product_id`, `product_name`, `user_id`, `seller_source_id`, `buyer_source_id`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `market_id`, `approvedby_id`, `order_status`, `color`, `size`, `sale_type`, `extra_description`, `total_quantity`, `shipment_quantity`, `returned_quantity`, `unit_price`, `total_price`, `shipment_amount`, `collection_amount`, `unit_discount`, `total_discount`, `total_price_after_discount`, `affiliate_price`, `final_price`, `total_weight`, `addedby_id`, `editedby_id`, `stock_minimized`, `pending_at`, `confirmed_at`, `processing_at`, `ready_to_ship_at`, `shipped_at`, `delivered_at`, `cancelled_at`, `returned_at`, `undelivered_at`, `paid_to_seller_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'Kylee Dale', NULL, 1, 1, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 3.00, 3.00, 0.00, 621.00, 1863.00, 1863.00, 1490.40, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-05 18:33:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 18:33:27', '2021-07-05 18:33:27'),
(2, 1, 1, 2, 2, 'Kylynn Silva', NULL, 1, 1, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 4.00, 4.00, 0.00, 578.00, 2312.00, 2312.00, 1618.40, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-05 18:33:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 18:33:27', '2021-07-05 18:33:27'),
(3, 1, 1, 3, 3, 'Gay Sawyer', NULL, 1, 1, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 3.00, 3.00, 0.00, 592.00, 1776.00, 1776.00, 1420.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-05 18:33:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 18:33:27', '2021-07-05 18:33:27'),
(4, 2, 2, 4, 1, 'Kylee Dale', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 2.00, 2.00, 0.00, 621.00, 1242.00, 1242.00, 993.60, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-05 19:15:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:15:46', '2021-07-05 19:15:46'),
(5, 2, 2, 5, 2, 'Kylynn Silva', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 4.00, 4.00, 0.00, 578.00, 2312.00, 2312.00, 1849.60, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-05 19:15:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:15:46', '2021-07-05 19:15:46'),
(6, 2, 2, 6, 3, 'Gay Sawyer', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 4.00, 3.00, 0.00, 592.00, 2368.00, 1776.00, 1420.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-05 19:15:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:15:46', '2021-07-05 19:15:46'),
(7, 3, 2, 4, 1, 'Kylee Dale', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 2.00, 0.00, 0.00, 621.00, 1242.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-05 19:16:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:16:41', '2021-07-05 19:16:41'),
(8, 3, 2, 5, 2, 'Kylynn Silva', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 4.00, 0.00, 0.00, 578.00, 2312.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-05 19:16:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:16:41', '2021-07-05 19:16:41'),
(9, 3, 2, 6, 3, 'Gay Sawyer', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 4.00, 1.00, 0.00, 592.00, 2368.00, 592.00, 473.60, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-05 19:16:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:16:41', '2021-07-05 19:16:41'),
(10, 4, 4, 9, 1, 'Kylee Dale', NULL, 3, 3, 1, 1, 1, 5, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 0.00, 621.00, 621.00, 621.00, 496.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-10 06:00:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:00:21', '2021-07-10 06:00:21'),
(11, 4, 4, 10, 2, 'Kylynn Silva', NULL, 3, 3, 1, 1, 1, 5, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 2.00, 2.00, 0.00, 578.00, 1156.00, 1156.00, 924.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-10 06:00:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:00:21', '2021-07-10 06:00:21'),
(12, 4, 4, 11, 3, 'Gay Sawyer', NULL, 3, 3, 1, 1, 1, 5, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 0.00, 592.00, 592.00, 592.00, 473.60, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-10 06:00:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:00:23', '2021-07-10 06:00:23'),
(13, 5, 6, 13, 5, 'test product 3', NULL, 4, 4, 1, 1, 1, 5, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 0.00, 400.00, 400.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-10 06:27:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:27:32', '2021-07-10 06:27:32'),
(14, 5, 6, 14, 4, 'test product 2', NULL, 4, 4, 1, 1, 1, 5, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 0.00, 300.00, 300.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-10 06:27:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:27:32', '2021-07-10 06:27:32'),
(15, 6, 8, 16, 5, 'test product 3', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 0.00, 400.00, 400.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-10 10:30:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:30:43', '2021-07-10 10:30:43'),
(16, 6, 8, 17, 4, 'test product 2', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 0.00, 300.00, 300.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-10 10:30:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:30:43', '2021-07-10 10:30:43'),
(17, 7, 9, 18, 5, 'test product 3', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 2.00, 1.00, 0.00, 400.00, 800.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-10 10:54:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:54:54', '2021-07-10 10:54:54'),
(18, 7, 9, 19, 4, 'test product 2', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 0.00, 300.00, 300.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-10 10:54:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:54:55', '2021-07-10 10:54:55'),
(19, 8, 9, 18, 5, 'test product 3', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 2.00, 1.00, 0.00, 400.00, 800.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-10 11:20:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 11:20:30', '2021-07-10 11:20:30'),
(20, 8, 9, 19, 4, 'test product 2', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 0.00, 300.00, 300.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-10 11:20:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 11:20:30', '2021-07-10 11:20:30'),
(21, 9, 10, 20, 5, 'test product 3', NULL, 6, 6, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 0.00, 400.00, 400.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-07-15 05:09:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-15 05:09:06', '2021-07-15 05:09:06'),
(22, 10, 12, 22, 2, 'Kylynn Silva', NULL, 7, 7, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 2.00, 2.00, 0.00, 578.00, 1156.00, 1156.00, 924.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-12-21 06:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 06:04:08', '2021-12-21 06:04:08'),
(23, 10, 12, 23, 3, 'Gay Sawyer', NULL, 7, 7, 1, 1, 1, 2, 3, 1, 523, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 2.00, 2.00, 0.00, 592.00, 1184.00, 1184.00, 947.20, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-12-21 06:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 06:04:08', '2021-12-21 06:04:08'),
(24, 11, 3, 7, 1, 'Kylee Dale', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 5.00, 5.00, 0.00, 621.00, 3105.00, 3105.00, 2484.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-12-21 06:09:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 06:09:52', '2021-12-21 06:09:52'),
(25, 11, 3, 8, 3, 'Gay Sawyer', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, 1, 'pending', NULL, NULL, NULL, NULL, 7.00, 7.00, 0.00, 592.00, 4144.00, 4144.00, 3315.20, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-12-21 06:09:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 06:09:54', '2021-12-21 06:09:54'),
(26, 12, 13, 24, 1, 'Kylee Dale', NULL, 8, 8, 7, 3, 4, 8, 2, 40, 43, NULL, 49, 'pending', NULL, NULL, NULL, NULL, 1.00, 1.00, 0.00, 621.00, 621.00, 621.00, 434.70, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-12-21 07:25:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 07:25:52', '2021-12-21 07:25:52'),
(27, 12, 13, 25, 2, 'Kylynn Silva', NULL, 8, 8, 7, 3, 4, 8, 2, 40, 43, NULL, 49, 'pending', NULL, NULL, NULL, NULL, 2.00, 2.00, 0.00, 578.00, 1156.00, 1156.00, 924.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, '2021-12-21 07:25:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 07:25:52', '2021-12-21 07:25:52');

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
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `approvedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_shipment_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_return_price` decimal(15,2) NOT NULL DEFAULT 0.00,
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
(1, 6, 8, 2, 5, '1234568909', 'new shop sky', '', 'accepted', 1, 0.00, 700.00, 0.00, 0.00, 0.00, 700.00, 400.00, '2021-07-10 10:40:08', '2021-07-10 10:41:03', NULL, '2021-07-10 10:31:22', NULL, 1, 1, '2021-07-10 10:40:08', '2021-07-10 10:41:03'),
(2, 7, 9, 2, 5, '1234568909', 'new shop sky', '', 'pending', NULL, 0.00, 1100.00, 0.00, 0.00, 0.00, 700.00, 700.00, '2021-07-14 10:18:08', NULL, NULL, '2021-07-10 10:55:27', NULL, 35, NULL, '2021-07-14 10:18:08', '2021-07-14 10:18:09'),
(3, 9, 10, 2, 6, '01511253669', 'Madina Madina Madina Madina Madina Madina', '', 'accepted', 1, 0.00, 400.00, 0.00, 0.00, 0.00, 400.00, 800.00, '2021-07-15 05:11:07', '2021-07-15 05:12:48', NULL, '2021-07-15 05:09:12', NULL, 35, 1, '2021-07-15 05:11:07', '2021-07-15 05:12:48');

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
  `product_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
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
  `return_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipment_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `return_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(13,2) NOT NULL DEFAULT 0.00,
  `shipment_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `return_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `unit_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price_after_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `affiliate_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `final_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
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
-- Dumping data for table `shipment_return_items`
--

INSERT INTO `shipment_return_items` (`id`, `shipment_return_id`, `shipment_id`, `shipment_item_id`, `order_id`, `order_item_id`, `product_id`, `product_name`, `confirmed`, `completed`, `user_id`, `seller_source_id`, `buyer_source_id`, `depo_id`, `distributor_id`, `dealer_id`, `agent_id`, `division_id`, `district_id`, `upazila_id`, `market_id`, `approvedby_id`, `return_type`, `return_reason`, `image_1`, `image_2`, `order_quantity`, `shipment_quantity`, `return_quantity`, `unit_price`, `shipment_amount`, `return_amount`, `unit_discount`, `total_discount`, `total_price_after_discount`, `affiliate_price`, `final_price`, `total_weight`, `addedby_id`, `editedby_id`, `return_at`, `approved_at`, `shipped_at`, `received_at`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 15, 8, 16, 5, 'test product 3', 1, 0, NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'replace', 'test', NULL, NULL, 1.00, 1.00, 1.00, 400.00, 400.00, 400.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1, NULL, '2021-07-10 10:40:08', NULL, NULL, NULL, '2021-07-10 10:40:08', '2021-07-10 10:41:04'),
(2, 2, 7, 17, 9, 18, 5, 'test product 3', 0, 0, NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'replace', 'ljlj', NULL, NULL, 2.00, 1.00, 1.00, 400.00, 400.00, 400.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 35, NULL, '2021-07-14 10:18:08', NULL, NULL, NULL, '2021-07-14 10:18:08', '2021-07-14 10:18:08'),
(3, 2, 7, 18, 9, 19, 4, 'test product 2', 0, 0, NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'refund', 'kklj', NULL, NULL, 1.00, 1.00, 1.00, 300.00, 300.00, 300.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 35, NULL, '2021-07-14 10:18:08', NULL, NULL, NULL, '2021-07-14 10:18:09', '2021-07-14 10:18:09'),
(4, 3, 9, 21, 10, 20, 5, 'test product 3', 1, 0, NULL, 6, 6, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'replace', NULL, NULL, NULL, 1.00, 1.00, 2.00, 400.00, 400.00, 800.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 35, NULL, '2021-07-15 05:11:07', NULL, NULL, NULL, '2021-07-15 05:11:08', '2021-07-15 05:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `shop_commissions`
--

CREATE TABLE `shop_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `commission` decimal(5,2) UNSIGNED DEFAULT 5.00,
  `active` tinyint(1) DEFAULT 0,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_commissions`
--

INSERT INTO `shop_commissions` (`id`, `user_id`, `source_id`, `category_id`, `commission`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 20.00, 0, NULL, 1, '2021-06-20 20:01:12', '2021-06-20 20:01:12'),
(2, NULL, 1, 4, 30.00, 0, NULL, 1, '2021-06-20 20:01:12', '2021-06-20 20:01:36'),
(3, NULL, 1, 8, 20.00, 0, NULL, 1, '2021-06-20 20:01:12', '2021-06-20 20:01:12'),
(4, NULL, 2, 1, 20.00, 0, NULL, 1, '2021-07-05 19:02:45', '2021-07-05 19:02:45'),
(5, NULL, 2, 4, 20.00, 0, NULL, 1, '2021-07-05 19:02:45', '2021-07-05 19:02:45'),
(6, NULL, 2, 8, 20.00, 0, NULL, 1, '2021-07-05 19:02:45', '2021-07-05 19:02:45'),
(7, NULL, 3, 1, 20.00, 0, NULL, 1, '2021-07-10 05:58:23', '2021-07-10 05:58:23'),
(8, NULL, 3, 4, 20.00, 0, NULL, 1, '2021-07-10 05:58:23', '2021-07-10 05:58:23'),
(9, NULL, 3, 8, 20.00, 0, NULL, 1, '2021-07-10 05:58:23', '2021-07-10 05:58:23'),
(10, NULL, 4, 1, 30.00, 0, NULL, 1, '2021-07-10 06:21:25', '2021-07-10 06:21:25'),
(11, NULL, 4, 4, 20.00, 0, NULL, 1, '2021-07-10 06:21:25', '2021-07-10 06:21:25'),
(12, NULL, 4, 8, 20.00, 0, NULL, 1, '2021-07-10 06:21:25', '2021-07-10 06:21:25'),
(13, NULL, 5, 1, 30.00, 0, NULL, 1, '2021-07-10 10:28:53', '2021-07-10 10:28:53'),
(14, NULL, 5, 4, 20.00, 0, NULL, 1, '2021-07-10 10:28:54', '2021-07-10 10:28:54'),
(15, NULL, 5, 8, 20.00, 0, NULL, 1, '2021-07-10 10:28:54', '2021-07-10 10:28:54'),
(16, NULL, 6, 1, 30.00, 0, NULL, 1, '2021-07-14 10:45:11', '2021-07-14 10:45:11'),
(17, NULL, 6, 4, 20.00, 0, NULL, 1, '2021-07-14 10:45:12', '2021-07-14 10:45:12'),
(18, NULL, 6, 8, 20.00, 0, NULL, 1, '2021-07-14 10:45:12', '2021-07-14 10:45:12'),
(19, NULL, 7, 1, 30.00, 0, NULL, 1, '2021-12-21 05:59:30', '2021-12-21 05:59:30'),
(20, NULL, 7, 4, 20.00, 0, NULL, 1, '2021-12-21 05:59:30', '2021-12-21 05:59:30'),
(21, NULL, 7, 8, 20.00, 0, NULL, 1, '2021-12-21 05:59:31', '2021-12-21 05:59:31'),
(22, NULL, 8, 1, 30.00, 0, NULL, 45, '2021-12-21 07:11:30', '2021-12-21 07:11:30'),
(23, NULL, 8, 4, 20.00, 0, NULL, 45, '2021-12-21 07:11:30', '2021-12-21 07:11:30'),
(24, NULL, 8, 8, 20.00, 0, NULL, 45, '2021-12-21 07:11:30', '2021-12-21 07:11:30'),
(25, NULL, 9, 1, 30.00, 0, NULL, 45, '2021-12-21 10:00:03', '2021-12-21 10:00:03'),
(26, NULL, 9, 4, 20.00, 0, NULL, 45, '2021-12-21 10:00:04', '2021-12-21 10:00:04'),
(27, NULL, 9, 8, 20.00, 0, NULL, 45, '2021-12-21 10:00:05', '2021-12-21 10:00:05'),
(28, NULL, 9, 16, 20.00, 0, NULL, 45, '2021-12-21 10:00:05', '2021-12-21 10:00:05'),
(29, NULL, 9, 17, 20.00, 0, NULL, 45, '2021-12-21 10:00:05', '2021-12-21 10:00:05'),
(30, NULL, 9, 18, 20.00, 0, NULL, 45, '2021-12-21 10:00:06', '2021-12-21 10:00:06'),
(31, NULL, 9, 19, 20.00, 0, NULL, 45, '2021-12-21 10:00:06', '2021-12-21 10:00:06'),
(32, NULL, 9, 20, 20.00, 0, NULL, 45, '2021-12-21 10:00:06', '2021-12-21 10:00:06'),
(33, NULL, 9, 21, 20.00, 0, NULL, 45, '2021-12-21 10:00:06', '2021-12-21 10:00:06'),
(34, NULL, 9, 22, 20.00, 0, NULL, 45, '2021-12-21 10:00:06', '2021-12-21 10:00:06'),
(35, NULL, 9, 23, 20.00, 0, NULL, 45, '2021-12-21 10:00:07', '2021-12-21 10:00:07'),
(36, NULL, 9, 24, 20.00, 0, NULL, 45, '2021-12-21 10:00:07', '2021-12-21 10:00:07'),
(37, NULL, 9, 25, 20.00, 0, NULL, 45, '2021-12-21 10:00:07', '2021-12-21 10:00:07'),
(38, NULL, 9, 26, 20.00, 0, NULL, 45, '2021-12-21 10:00:07', '2021-12-21 10:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `sr_commissions`
--

CREATE TABLE `sr_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `commission` decimal(5,2) UNSIGNED DEFAULT 5.00,
  `active` tinyint(1) DEFAULT 0,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sr_commissions`
--

INSERT INTO `sr_commissions` (`id`, `user_id`, `agent_id`, `category_id`, `commission`, `active`, `addedby_id`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 40, 4, 1, 10.00, 0, 1, NULL, '2021-07-05 18:50:06', '2021-07-05 18:50:06'),
(2, 40, 4, 4, 10.00, 0, 1, NULL, '2021-07-05 18:50:07', '2021-07-05 18:50:07'),
(3, 40, 4, 8, 10.00, 0, 1, NULL, '2021-07-05 18:50:07', '2021-07-05 18:50:07'),
(4, 4, 5, 1, 10.00, 0, 1, NULL, '2021-07-10 05:54:28', '2021-07-10 05:54:28'),
(5, 4, 5, 4, 10.00, 0, 1, NULL, '2021-07-10 05:54:28', '2021-07-10 05:54:28'),
(6, 4, 5, 8, 10.00, 0, 1, NULL, '2021-07-10 05:54:28', '2021-07-10 05:54:28'),
(7, 41, 6, 1, 20.00, 0, 1, NULL, '2021-07-10 09:33:58', '2021-07-10 09:33:58'),
(8, 41, 6, 4, 10.00, 0, 1, NULL, '2021-07-10 09:33:58', '2021-07-10 09:33:58'),
(9, 41, 6, 8, 10.00, 0, 1, NULL, '2021-07-10 09:33:58', '2021-07-10 09:33:58'),
(10, 42, 7, 1, 20.00, 0, 1, NULL, '2021-07-10 12:29:34', '2021-07-10 12:29:34'),
(11, 42, 7, 4, 10.00, 0, 1, NULL, '2021-07-10 12:29:34', '2021-07-10 12:29:34'),
(12, 42, 7, 8, 10.00, 0, 1, NULL, '2021-07-10 12:29:34', '2021-07-10 12:29:34'),
(13, 35, 2, 1, 20.00, 0, NULL, 1, '2021-07-10 12:39:15', '2021-07-10 12:39:15'),
(14, 35, 2, 4, 10.00, 0, NULL, 1, '2021-07-10 12:39:15', '2021-07-10 12:39:15'),
(15, 48, 8, 1, 20.00, 0, 1, NULL, '2021-12-21 06:58:15', '2021-12-21 06:58:15'),
(16, 48, 8, 4, 10.00, 0, 1, NULL, '2021-12-21 06:58:15', '2021-12-21 06:58:15'),
(17, 48, 8, 8, 10.00, 0, 1, NULL, '2021-12-21 06:58:16', '2021-12-21 06:58:16');

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
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sr_locations`
--

INSERT INTO `sr_locations` (`id`, `user_id`, `agent_id`, `lat`, `lng`, `location`, `created_at`, `updated_at`) VALUES
(1, 35, 3, '23.760008', '90.4187408', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:41:09', '2021-06-19 05:41:10'),
(2, 35, 3, '23.7600111', '90.4187473', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:41:44', '2021-06-19 05:41:46'),
(3, 35, 3, '23.7600111', '90.4187473', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:42:44', '2021-06-19 05:42:46'),
(4, 35, 3, '23.760026', '90.4187569', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:43:02', '2021-06-19 05:43:03'),
(5, 35, 3, '23.760026', '90.4187569', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:43:03', '2021-06-19 05:43:03'),
(6, 35, 3, '23.760026', '90.4187569', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:43:17', '2021-06-19 05:43:17'),
(7, 35, 3, '23.7600434', '90.418761', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:44:18', '2021-06-19 05:44:18'),
(8, 35, 3, '23.7600297', '90.4187525', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:45:18', '2021-06-19 05:45:18'),
(9, 35, 3, '23.7600282', '90.4187449', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:46:18', '2021-06-19 05:46:18'),
(10, 35, 3, '23.7600282', '90.4187449', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:46:50', '2021-06-19 05:46:51'),
(11, 35, 3, '23.7600641', '90.4187418', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:47:51', '2021-06-19 05:47:51'),
(12, 35, 3, '23.7600641', '90.4187418', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:48:50', '2021-06-19 05:48:52'),
(13, 35, 3, '23.7600641', '90.4187418', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:49:50', '2021-06-19 05:49:52'),
(14, 35, 3, '23.7600641', '90.4187418', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:50:51', '2021-06-19 05:50:52'),
(15, 35, 3, '23.7600641', '90.4187418', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:51:50', '2021-06-19 05:51:51'),
(16, 35, 3, '23.7600881', '90.4187307', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:52:51', '2021-06-19 05:52:52'),
(17, 35, 3, '23.7600293', '90.4187691', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:53:57', '2021-06-19 05:53:57'),
(18, 35, 3, '23.7600344', '90.4187773', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:54:52', '2021-06-19 05:54:52'),
(19, 35, 3, '23.7600344', '90.4187773', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:55:50', '2021-06-19 05:55:51'),
(20, 35, 3, '23.7600221', '90.4187632', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:56:51', '2021-06-19 05:56:52'),
(21, 35, 3, '23.7600229', '90.4187716', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:57:51', '2021-06-19 05:57:51'),
(22, 35, 3, '23.7600351', '90.4187694', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:58:51', '2021-06-19 05:58:52'),
(23, 35, 3, '23.7600413', '90.4187725', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 05:59:51', '2021-06-19 05:59:52'),
(24, 35, 3, '23.7600524', '90.4187291', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:21', '2021-06-19 06:12:22'),
(25, 35, 3, '23.7600524', '90.4187291', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:21', '2021-06-19 06:12:22'),
(26, 35, 3, '23.7600524', '90.4187291', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:21', '2021-06-19 06:12:23'),
(27, 35, 3, '23.7600524', '90.4187291', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:21', '2021-06-19 06:12:22'),
(28, 35, 3, '23.7600524', '90.4187291', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:21', '2021-06-19 06:12:29'),
(29, 35, 3, '23.7600524', '90.4187291', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:21', '2021-06-19 06:12:23'),
(30, 35, 3, '23.7600524', '90.4187291', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:21', '2021-06-19 06:12:23'),
(31, 35, 3, '23.7600524', '90.4187291', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:21', '2021-06-19 06:12:23'),
(32, 35, 3, '23.7600524', '90.4187291', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:21', '2021-06-19 06:12:23'),
(33, 35, 3, '23.7600524', '90.4187291', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:21', '2021-06-19 06:12:23'),
(34, 35, 3, '23.7600524', '90.4187291', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:22', '2021-06-19 06:12:24'),
(35, 35, 3, '23.7600524', '90.4187291', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:22', '2021-06-19 06:12:27'),
(36, 35, 3, '23.7600489', '90.418716', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:12:51', '2021-06-19 06:12:52'),
(37, 35, 3, '23.7600534', '90.4187434', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:13:51', '2021-06-19 06:13:51'),
(38, 35, 3, '23.7600603', '90.4187343', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:14:51', '2021-06-19 06:14:51'),
(39, 35, 3, '23.7600531', '90.4187261', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:15:51', '2021-06-19 06:15:53'),
(40, 35, 3, '23.7600531', '90.4187261', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:16:50', '2021-06-19 06:16:52'),
(41, 35, 3, '23.7600557', '90.4187464', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:17:51', '2021-06-19 06:17:52'),
(42, 35, 3, '23.7600461', '90.4187415', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:18:54', '2021-06-19 06:18:55'),
(43, 35, 3, '23.7600309', '90.4187517', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:19:51', '2021-06-19 06:19:51'),
(44, 35, 3, '23.7600102', '90.4187571', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:20:51', '2021-06-19 06:20:51'),
(45, 35, 3, '23.7600319', '90.4187395', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:21:51', '2021-06-19 06:21:52'),
(46, 35, 3, '23.7600319', '90.4187395', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:22:51', '2021-06-19 06:22:51'),
(47, 35, 3, '23.7600319', '90.4187395', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:23:51', '2021-06-19 06:23:51'),
(48, 35, 3, '23.7600453', '90.4187486', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:24:51', '2021-06-19 06:24:52'),
(49, 35, 3, '23.7600453', '90.4187486', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:25:56', '2021-06-19 06:25:56'),
(50, 35, 3, '23.7600943', '90.4187245', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:26:51', '2021-06-19 06:26:52'),
(51, 35, 3, '23.7600943', '90.4187245', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:27:51', '2021-06-19 06:27:51'),
(52, 35, 3, '23.7600317', '90.418742', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:28:51', '2021-06-19 06:28:52'),
(53, 35, 3, '23.7600089', '90.4187238', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:29:51', '2021-06-19 06:29:52'),
(54, 35, 3, '23.7600089', '90.4187238', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:30:51', '2021-06-19 06:30:53'),
(55, 35, 3, '23.7600089', '90.4187238', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:31:51', '2021-06-19 06:31:52'),
(56, 35, 3, '23.7600139', '90.4187675', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:32:51', '2021-06-19 06:32:51'),
(57, 35, 3, '23.7600121', '90.4187568', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:33:51', '2021-06-19 06:33:52'),
(58, 35, 3, '23.7600461', '90.4187697', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:34:51', '2021-06-19 06:34:52'),
(59, 35, 3, '23.7600207', '90.4187736', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:35:51', '2021-06-19 06:35:52'),
(60, 35, 3, '23.7600565', '90.4187382', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:36:57', '2021-06-19 06:36:58'),
(61, 35, 3, '23.7600562', '90.4187557', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:37:51', '2021-06-19 06:37:52'),
(62, 35, 3, '23.7600562', '90.4187557', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:38:51', '2021-06-19 06:38:51'),
(63, 35, 3, '23.7600562', '90.4187557', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:39:53', '2021-06-19 06:39:55'),
(64, 35, 3, '23.7600419', '90.4187191', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:40:51', '2021-06-19 06:40:52'),
(65, 35, 3, '23.7600419', '90.4187191', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:41:51', '2021-06-19 06:41:52'),
(66, 35, 3, '23.7600419', '90.4187191', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:42:57', '2021-06-19 06:42:58'),
(67, 35, 3, '23.7600419', '90.4187191', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:43:51', '2021-06-19 06:43:52'),
(68, 35, 3, '23.760084', '90.4187399', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:44:51', '2021-06-19 06:44:52'),
(69, 35, 3, '23.7600786', '90.4187337', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:45:51', '2021-06-19 06:45:52'),
(70, 35, 3, '23.760089', '90.4187312', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:46:52', '2021-06-19 06:46:52'),
(71, 35, 3, '23.7600744', '90.4187309', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:47:51', '2021-06-19 06:47:51'),
(72, 35, 3, '23.7600744', '90.4187309', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:48:56', '2021-06-19 06:48:57'),
(73, 35, 3, '23.7600347', '90.4187499', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:56:54', '2021-06-19 06:56:55'),
(74, 35, 3, '23.7600347', '90.4187499', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:56:54', '2021-06-19 06:56:58'),
(75, 35, 3, '23.7600347', '90.4187499', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:56:54', '2021-06-19 06:56:58'),
(76, 35, 3, '23.7600347', '90.4187499', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:56:54', '2021-06-19 06:56:55'),
(77, 35, 3, '23.7600347', '90.4187499', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:56:54', '2021-06-19 06:56:58'),
(78, 35, 3, '23.7600347', '90.4187499', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:56:54', '2021-06-19 06:56:56'),
(79, 35, 3, '23.7600347', '90.4187499', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:56:54', '2021-06-19 06:56:55'),
(80, 35, 3, '23.7600347', '90.4187499', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:56:54', '2021-06-19 06:56:55'),
(81, 35, 3, '23.7600254', '90.4187653', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:57:51', '2021-06-19 06:57:52'),
(82, 35, 3, '23.7600254', '90.4187653', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:58:51', '2021-06-19 06:58:51'),
(83, 35, 3, '23.7600038', '90.4187638', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 06:59:51', '2021-06-19 06:59:52'),
(84, 35, 3, '23.7600139', '90.418768', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:00:51', '2021-06-19 07:00:52'),
(85, 35, 3, '23.7600732', '90.4187579', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:01:51', '2021-06-19 07:01:54'),
(86, 35, 3, '23.7600926', '90.4187348', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:02:51', '2021-06-19 07:02:52'),
(87, 35, 3, '23.7600874', '90.4187264', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:03:51', '2021-06-19 07:03:51'),
(88, 35, 3, '23.7600303', '90.4187577', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:04:53', '2021-06-19 07:04:53'),
(89, 35, 3, '23.7600303', '90.4187577', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:05:51', '2021-06-19 07:05:51'),
(90, 35, 3, '23.7600235', '90.4187573', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:06:51', '2021-06-19 07:06:52'),
(91, 35, 3, '23.7600235', '90.4187573', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:07:51', '2021-06-19 07:07:52'),
(92, 35, 3, '23.7600011', '90.41877', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:08:51', '2021-06-19 07:08:52'),
(93, 35, 3, '23.7600011', '90.41877', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:09:51', '2021-06-19 07:09:51'),
(94, 35, 3, '23.7600744', '90.4187299', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:18:21', '2021-06-19 07:18:22'),
(95, 35, 3, '23.7600744', '90.4187299', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:18:21', '2021-06-19 07:18:22'),
(96, 35, 3, '23.7600744', '90.4187299', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:18:21', '2021-06-19 07:18:21'),
(97, 35, 3, '23.7600744', '90.4187299', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:18:21', '2021-06-19 07:18:22'),
(98, 35, 3, '23.7600744', '90.4187299', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:18:21', '2021-06-19 07:18:22'),
(99, 35, 3, '23.7600744', '90.4187299', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:18:21', '2021-06-19 07:18:21'),
(100, 35, 3, '23.7600744', '90.4187299', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:18:21', '2021-06-19 07:18:22'),
(101, 35, 3, '23.7600744', '90.4187299', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:18:21', '2021-06-19 07:18:21'),
(102, 35, 3, '23.7600744', '90.4187299', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:18:50', '2021-06-19 07:18:51'),
(103, 35, 3, '23.760027', '90.4187448', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:19:51', '2021-06-19 07:19:51'),
(104, 35, 3, '23.7600111', '90.4187594', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:20:51', '2021-06-19 07:20:53'),
(105, 35, 3, '23.7600111', '90.4187594', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:21:51', '2021-06-19 07:21:51'),
(106, 35, 3, '23.7600064', '90.4187248', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:22:51', '2021-06-19 07:22:59'),
(107, 35, 3, '23.7600352', '90.4187652', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:23:51', '2021-06-19 07:23:51'),
(108, 35, 3, '23.7600378', '90.4187543', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:24:51', '2021-06-19 07:24:52'),
(109, 35, 3, '23.7600378', '90.4187543', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:25:51', '2021-06-19 07:25:52'),
(110, 35, 3, '23.7600503', '90.4187349', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:26:51', '2021-06-19 07:26:52'),
(111, 35, 3, '23.7600261', '90.4187244', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:27:51', '2021-06-19 07:27:52'),
(112, 35, 3, '23.7600261', '90.4187244', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:28:51', '2021-06-19 07:28:51'),
(113, 35, 3, '23.7600543', '90.4187414', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:29:51', '2021-06-19 07:29:53'),
(114, 35, 3, '23.7600543', '90.4187414', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:30:51', '2021-06-19 07:30:53'),
(115, 35, 3, '23.7600525', '90.4187435', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:31:51', '2021-06-19 07:31:52'),
(116, 35, 3, '23.7600299', '90.4187588', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:32:51', '2021-06-19 07:32:52'),
(117, 35, 3, '23.760056', '90.4187354', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:33:51', '2021-06-19 07:33:51'),
(118, 35, 3, '23.760037', '90.4187391', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:34:51', '2021-06-19 07:34:55'),
(119, 35, 3, '23.760037', '90.4187391', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:35:57', '2021-06-19 07:35:57'),
(120, 35, 3, '23.7600172', '90.4187644', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:36:51', '2021-06-19 07:36:52'),
(121, 35, 3, '23.7600709', '90.4187585', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:37:51', '2021-06-19 07:37:52'),
(122, 35, 3, '23.7600529', '90.418755', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:38:51', '2021-06-19 07:38:52'),
(123, 35, 3, '23.7600563', '90.4187349', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:39:51', '2021-06-19 07:39:52'),
(124, 35, 3, '23.7600326', '90.4187585', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:40:51', '2021-06-19 07:40:52'),
(125, 35, 3, '23.7600306', '90.4187556', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:41:51', '2021-06-19 07:41:52'),
(126, 35, 3, '23.7600565', '90.4187383', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:42:57', '2021-06-19 07:42:58'),
(127, 35, 3, '23.7600014', '90.4187664', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:43:51', '2021-06-19 07:44:03'),
(128, 35, 3, '23.7600014', '90.4187664', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:44:51', '2021-06-19 07:44:51'),
(129, 35, 3, '23.760043', '90.4187438', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 07:45:51', '2021-06-19 07:45:52'),
(130, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:57', '2021-06-19 08:24:59'),
(131, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:57', '2021-06-19 08:24:59'),
(132, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:57', '2021-06-19 08:24:59'),
(133, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:57', '2021-06-19 08:24:59'),
(134, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:57', '2021-06-19 08:24:59'),
(135, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:57', '2021-06-19 08:24:59'),
(136, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:57', '2021-06-19 08:24:59'),
(137, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:57', '2021-06-19 08:24:59'),
(138, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:57', '2021-06-19 08:24:59'),
(139, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:57', '2021-06-19 08:24:59'),
(140, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:25:00'),
(141, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:24:59'),
(142, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:24:59'),
(143, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:24:59'),
(144, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:24:59'),
(145, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:24:59'),
(146, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:24:59'),
(147, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:25:00'),
(148, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:25:00'),
(149, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:25:00'),
(150, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:25:00'),
(151, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:25:01'),
(152, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:24:59', '2021-06-19 08:25:01'),
(153, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:25:51', '2021-06-19 08:25:51'),
(154, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:26:51', '2021-06-19 08:26:52'),
(155, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:27:51', '2021-06-19 08:27:52'),
(156, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:28:51', '2021-06-19 08:28:51'),
(157, 35, 3, '23.7600732', '90.4188687', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:29:51', '2021-06-19 08:29:52'),
(158, 35, 3, '23.7600488', '90.4187525', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:30:51', '2021-06-19 08:30:52'),
(159, 35, 3, '23.7600488', '90.4187525', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:31:51', '2021-06-19 08:31:52'),
(160, 35, 3, '23.7600488', '90.4187525', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:32:51', '2021-06-19 08:32:53'),
(161, 35, 3, '23.7600586', '90.4187372', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:33:51', '2021-06-19 08:33:52'),
(162, 35, 3, '23.7600789', '90.418729', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:34:51', '2021-06-19 08:34:52'),
(163, 35, 3, '23.7600621', '90.4187095', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:35:51', '2021-06-19 08:35:52'),
(164, 35, 3, '23.7600551', '90.4187272', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:36:51', '2021-06-19 08:36:58'),
(165, 35, 3, '23.7600551', '90.4187272', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:37:55', '2021-06-19 08:37:56'),
(166, 35, 3, '23.7600761', '90.4187513', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:38:51', '2021-06-19 08:38:52'),
(167, 35, 3, '23.7600761', '90.4187513', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:39:51', '2021-06-19 08:39:52'),
(168, 35, 3, '23.7600663', '90.4187479', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:40:53', '2021-06-19 08:40:53'),
(169, 35, 3, '23.7600663', '90.4187479', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:41:51', '2021-06-19 08:41:59'),
(170, 35, 3, '23.7600565', '90.4187629', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:42:52', '2021-06-19 08:42:53'),
(171, 35, 3, '23.7600565', '90.4187629', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:43:51', '2021-06-19 08:43:52'),
(172, 35, 3, '23.7600504', '90.4187811', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:44:51', '2021-06-19 08:44:52'),
(173, 35, 3, '23.7600491', '90.4187431', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:45:51', '2021-06-19 08:45:52'),
(174, 35, 3, '23.7600557', '90.4187414', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:46:51', '2021-06-19 08:46:52'),
(175, 35, 3, '23.7600557', '90.4187414', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 08:47:51', '2021-06-19 08:47:51'),
(176, 1, 2, '23.760035', '90.4187787', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:13:08', '2021-06-19 09:13:08'),
(177, 1, 2, '23.7600256', '90.4187888', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:14:09', '2021-06-19 09:14:09'),
(178, 1, 2, '23.7600256', '90.4187888', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:15:08', '2021-06-19 09:15:10'),
(179, 1, 2, '23.7600103', '90.4187777', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:16:13', '2021-06-19 09:16:17'),
(180, 1, 2, '23.760035', '90.4187338', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:17:08', '2021-06-19 09:17:09'),
(181, 1, 2, '23.7600314', '90.4187168', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:18:08', '2021-06-19 09:18:09'),
(182, 1, 2, '23.7600133', '90.4187419', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:19:13', '2021-06-19 09:19:15'),
(183, 1, 2, '23.760005', '90.4187773', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:20:08', '2021-06-19 09:20:11'),
(184, 1, 2, '23.760011', '90.4187846', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:21:09', '2021-06-19 09:21:09'),
(185, 1, 2, '23.760011', '90.4187846', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:22:08', '2021-06-19 09:22:10'),
(186, 1, 2, '23.7600256', '90.4187769', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:23:09', '2021-06-19 09:23:09'),
(187, 1, 2, '23.7600256', '90.4187769', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:24:08', '2021-06-19 09:24:08'),
(188, 1, 2, '23.7600054', '90.4187566', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:25:08', '2021-06-19 09:25:09'),
(189, 1, 2, '23.7600054', '90.4187566', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:26:08', '2021-06-19 09:26:09'),
(190, 1, 2, '23.7600054', '90.4187566', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:27:08', '2021-06-19 09:27:09'),
(191, 1, 2, '23.7600217', '90.4187762', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:28:11', '2021-06-19 09:28:12'),
(192, 1, 2, '23.7600075', '90.4187875', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:29:08', '2021-06-19 09:29:11'),
(193, 1, 2, '23.7600075', '90.4187875', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:30:08', '2021-06-19 09:30:10'),
(194, 1, 2, '23.7600041', '90.4187857', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:31:09', '2021-06-19 09:31:10'),
(195, 1, 2, '23.7600041', '90.4187857', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:32:08', '2021-06-19 09:32:08'),
(196, 1, 2, '23.7600041', '90.4187857', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:33:08', '2021-06-19 09:33:12'),
(197, 1, 2, '23.7600041', '90.4187857', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:34:08', '2021-06-19 09:34:10'),
(198, 1, 2, '23.7600194', '90.4187969', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:35:08', '2021-06-19 09:35:11'),
(199, 1, 2, '23.7600113', '90.418781', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:36:08', '2021-06-19 09:36:10'),
(200, 1, 2, '23.760074', '90.4187232', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:37:08', '2021-06-19 09:37:09'),
(201, 1, 2, '23.760074', '90.4187232', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:38:08', '2021-06-19 09:38:08'),
(202, 1, 2, '23.760041', '90.4187206', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:39:08', '2021-06-19 09:39:09'),
(203, 1, 2, '23.7600403', '90.4187674', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:40:08', '2021-06-19 09:40:09'),
(204, 1, 2, '23.7600093', '90.4187831', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:41:09', '2021-06-19 09:41:10'),
(205, 1, 2, '23.7600442', '90.4187575', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:42:08', '2021-06-19 09:42:08'),
(206, 1, 2, '23.7600442', '90.4187575', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:43:08', '2021-06-19 09:43:08'),
(207, 1, 2, '23.7600202', '90.4187617', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:44:08', '2021-06-19 09:44:09'),
(208, 1, 2, '23.7600202', '90.4187617', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:45:14', '2021-06-19 09:45:15'),
(209, 1, 2, '23.7600543', '90.4187478', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:46:08', '2021-06-19 09:46:09'),
(210, 1, 2, '23.7600543', '90.4187478', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:47:08', '2021-06-19 09:47:08'),
(211, 1, 2, '23.7600562', '90.4187713', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:48:08', '2021-06-19 09:48:09'),
(212, 1, 2, '23.7600562', '90.4187713', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:49:08', '2021-06-19 09:49:09'),
(213, 1, 2, '23.7600071', '90.4187473', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:50:08', '2021-06-19 09:50:09'),
(214, 1, 2, '23.7600071', '90.4187473', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:51:08', '2021-06-19 09:51:10'),
(215, 1, 2, '23.7600433', '90.4187219', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:52:08', '2021-06-19 09:52:09'),
(216, 1, 2, '23.7600023', '90.4187741', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:53:08', '2021-06-19 09:53:09'),
(217, 1, 2, '23.7599986', '90.4187696', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:54:08', '2021-06-19 09:54:09'),
(218, 1, 2, '23.760043', '90.4187696', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:55:08', '2021-06-19 09:55:09'),
(219, 1, 2, '23.7600579', '90.4187333', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:56:08', '2021-06-19 09:56:09'),
(220, 1, 2, '23.7600579', '90.4187333', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:57:08', '2021-06-19 09:57:09'),
(221, 1, 2, '23.7599993', '90.4187551', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:58:08', '2021-06-19 09:58:10'),
(222, 1, 2, '23.7600261', '90.4187508', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 09:59:08', '2021-06-19 09:59:10'),
(223, 1, 2, '23.7600261', '90.4187508', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 10:00:08', '2021-06-19 10:00:10'),
(224, 1, 2, '23.759995', '90.4187489', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 10:01:08', '2021-06-19 10:01:09'),
(225, 1, 2, '23.759995', '90.4187489', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 10:02:08', '2021-06-19 10:02:09'),
(226, 1, 2, '23.759995', '90.4187489', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-06-19 10:03:08', '2021-06-19 10:03:09'),
(227, 35, 3, '23.7600518', '90.4187124', NULL, '2021-07-14 10:13:48', '2021-07-14 10:13:48'),
(228, 35, 3, '23.760017', '90.4186937', NULL, '2021-07-14 10:16:26', '2021-07-14 10:16:26'),
(229, 35, 3, '23.760017', '90.4186937', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:16:26', '2021-07-14 10:16:28'),
(230, 35, 3, '23.760017', '90.4186937', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:16:45', '2021-07-14 10:16:46'),
(231, 35, 2, '23.7600275', '90.4186969', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:17:17', '2021-07-14 10:17:18'),
(232, 35, 2, '23.7600518', '90.4187124', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:18:17', '2021-07-14 10:18:18'),
(233, 35, 2, '23.7600245', '90.4187012', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:19:53', '2021-07-14 10:19:57'),
(234, 35, 2, '23.7600245', '90.4187012', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:20:05', '2021-07-14 10:20:06'),
(235, 35, 3, '23.7600275', '90.4186969', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:20:56', '2021-07-14 10:20:57'),
(236, 35, 3, '23.7600275', '90.4186969', NULL, '2021-07-14 10:20:56', '2021-07-14 10:20:56'),
(237, 35, 3, '23.7600275', '90.4186969', NULL, '2021-07-14 10:20:56', '2021-07-14 10:20:56'),
(238, 35, 3, '23.7600275', '90.4186969', NULL, '2021-07-14 10:20:56', '2021-07-14 10:20:56'),
(239, 35, 2, '23.7599836', '90.4187108', NULL, '2021-07-14 10:22:07', '2021-07-14 10:22:07'),
(240, 35, 2, '23.7599836', '90.4187108', NULL, '2021-07-14 10:22:07', '2021-07-14 10:22:07'),
(241, 35, 2, '23.7599836', '90.4187108', NULL, '2021-07-14 10:22:10', '2021-07-14 10:22:10'),
(242, 35, 2, '23.7600245', '90.4187012', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:26:24', '2021-07-14 10:26:24'),
(243, 35, 2, '23.7600245', '90.4187012', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:26:29', '2021-07-14 10:26:30'),
(244, 35, 2, '23.7600245', '90.4187012', NULL, '2021-07-14 10:26:40', '2021-07-14 10:26:40'),
(245, 35, 2, '23.7600245', '90.4187012', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:26:42', '2021-07-14 10:26:43'),
(246, 35, 2, '23.7600245', '90.4187012', NULL, '2021-07-14 10:26:43', '2021-07-14 10:26:43'),
(247, 35, 2, '23.7600351', '90.4186959', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:33:53', '2021-07-14 10:33:54'),
(248, 35, 2, '23.7600351', '90.4186959', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:33:57', '2021-07-14 10:33:59'),
(249, 35, 2, '23.7600287', '90.4187153', NULL, '2021-07-14 10:34:43', '2021-07-14 10:34:43'),
(250, 35, 2, '23.7600308', '90.4187148', NULL, '2021-07-14 10:35:41', '2021-07-14 10:35:41'),
(251, 35, 2, '23.7599826', '90.4187', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:38:43', '2021-07-14 10:38:45'),
(252, 35, 2, '23.7600248', '90.4186988', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:39:06', '2021-07-14 10:39:07'),
(253, 35, 2, '23.7600287', '90.4187153', NULL, '2021-07-14 10:43:12', '2021-07-14 10:43:12'),
(254, 35, 2, '23.7600287', '90.4187153', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:43:25', '2021-07-14 10:43:26'),
(255, 35, 2, '23.7600275', '90.4186969', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:44:25', '2021-07-14 10:44:25'),
(256, 35, 2, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:06', '2021-07-14 10:46:07'),
(257, 35, 3, '23.7600147', '90.4187446', NULL, '2021-07-14 10:46:33', '2021-07-14 10:46:33'),
(258, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:33', '2021-07-14 10:46:34'),
(259, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:33', '2021-07-14 10:46:34'),
(260, 35, 3, '23.7600147', '90.4187446', NULL, '2021-07-14 10:46:33', '2021-07-14 10:46:33'),
(261, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:33', '2021-07-14 10:46:34'),
(262, 35, 3, '23.7600147', '90.4187446', NULL, '2021-07-14 10:46:33', '2021-07-14 10:46:33'),
(263, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:33', '2021-07-14 10:46:34'),
(264, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:33', '2021-07-14 10:46:34'),
(265, 35, 3, '23.7600147', '90.4187446', NULL, '2021-07-14 10:46:33', '2021-07-14 10:46:33'),
(266, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:33', '2021-07-14 10:46:34'),
(267, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:33', '2021-07-14 10:46:34'),
(268, 35, 3, '23.7600147', '90.4187446', NULL, '2021-07-14 10:46:34', '2021-07-14 10:46:34'),
(269, 35, 3, '23.7600147', '90.4187446', NULL, '2021-07-14 10:46:34', '2021-07-14 10:46:34'),
(270, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:34', '2021-07-14 10:46:34'),
(271, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:34', '2021-07-14 10:46:34'),
(272, 35, 3, '23.7600147', '90.4187446', NULL, '2021-07-14 10:46:34', '2021-07-14 10:46:34'),
(273, 35, 3, '23.7600147', '90.4187446', NULL, '2021-07-14 10:46:34', '2021-07-14 10:46:34'),
(274, 35, 3, '23.7600147', '90.4187446', NULL, '2021-07-14 10:46:34', '2021-07-14 10:46:34'),
(275, 35, 3, '23.7600147', '90.4187446', NULL, '2021-07-14 10:46:34', '2021-07-14 10:46:34'),
(276, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:34', '2021-07-14 10:46:35'),
(277, 35, 3, '23.7600147', '90.4187446', NULL, '2021-07-14 10:46:34', '2021-07-14 10:46:34'),
(278, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:34', '2021-07-14 10:46:35'),
(279, 35, 3, '23.7600147', '90.4187446', NULL, '2021-07-14 10:46:34', '2021-07-14 10:46:34'),
(280, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:34', '2021-07-14 10:46:35'),
(281, 35, 3, '23.7600147', '90.4187446', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 10:46:35', '2021-07-14 10:46:35'),
(282, 35, 2, '23.7600291', '90.4187011', NULL, '2021-07-14 12:25:02', '2021-07-14 12:25:02'),
(283, 35, 2, '23.7600291', '90.4187011', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:25:12', '2021-07-14 12:25:13'),
(284, 35, 2, '23.7600199', '90.4187227', NULL, '2021-07-14 12:25:36', '2021-07-14 12:25:36'),
(285, 35, 2, '23.7599877', '90.4187019', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:32:35', '2021-07-14 12:32:35'),
(286, 35, 2, '23.7600291', '90.4187011', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:33:26', '2021-07-14 12:33:28'),
(287, 35, 2, '23.7600251', '90.4187129', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:34:09', '2021-07-14 12:34:10'),
(288, 35, 2, '23.7600155', '90.4186898', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:35:09', '2021-07-14 12:35:10'),
(289, 35, 2, '23.759993', '90.4187091', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:39:57', '2021-07-14 12:39:59'),
(290, 35, 2, '23.759993', '90.4187091', NULL, '2021-07-14 12:39:57', '2021-07-14 12:39:57'),
(291, 35, 2, '23.759993', '90.4187091', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:39:57', '2021-07-14 12:40:00'),
(292, 35, 2, '23.759993', '90.4187091', NULL, '2021-07-14 12:39:57', '2021-07-14 12:39:57'),
(293, 35, 2, '23.759993', '90.4187091', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:40:12', '2021-07-14 12:40:12'),
(294, 35, 2, '23.7600316', '90.4187103', NULL, '2021-07-14 12:44:39', '2021-07-14 12:44:39'),
(295, 35, 2, '23.7600316', '90.4187103', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:44:39', '2021-07-14 12:44:43'),
(296, 35, 2, '23.7600316', '90.4187103', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:44:39', '2021-07-14 12:44:40'),
(297, 35, 2, '23.7600316', '90.4187103', NULL, '2021-07-14 12:44:39', '2021-07-14 12:44:39'),
(298, 35, 2, '23.7600371', '90.4187195', NULL, '2021-07-14 12:45:44', '2021-07-14 12:45:44'),
(299, 35, 2, '23.7600202', '90.4187208', NULL, '2021-07-14 12:48:07', '2021-07-14 12:48:07'),
(300, 35, 2, '23.7600202', '90.4187208', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:48:07', '2021-07-14 12:48:08'),
(301, 35, 2, '23.7600202', '90.4187208', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:48:08', '2021-07-14 12:48:09'),
(302, 35, 2, '23.7600202', '90.4187208', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:48:12', '2021-07-14 12:48:14'),
(303, 35, 2, '23.7600048', '90.4187029', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 12:49:13', '2021-07-14 12:49:14'),
(304, 35, 2, '23.7600124', '90.4187392', NULL, '2021-07-14 13:03:53', '2021-07-14 13:03:53'),
(305, 35, 2, '23.7600062', '90.4187233', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 13:04:09', '2021-07-14 13:04:11'),
(306, 35, 2, '23.7600202', '90.4187208', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 13:04:32', '2021-07-14 13:04:33'),
(307, 35, 2, '23.760001', '90.4187077', NULL, '2021-07-14 13:05:43', '2021-07-14 13:05:43'),
(308, 35, 2, '23.760001', '90.4187077', NULL, '2021-07-14 13:05:46', '2021-07-14 13:05:46'),
(309, 35, 2, '23.7600372', '90.418724', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 13:19:51', '2021-07-14 13:19:52'),
(310, 35, 2, '23.7599865', '90.4187001', NULL, '2021-07-14 13:21:31', '2021-07-14 13:21:31'),
(311, 35, 2, '23.7600555', '90.4187254', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 13:22:26', '2021-07-14 13:22:26'),
(312, 35, 2, '23.760027', '90.4187091', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 13:25:12', '2021-07-14 13:25:15'),
(313, 35, 2, '23.760027', '90.4187091', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 13:25:12', '2021-07-14 13:25:14'),
(314, 35, 2, '23.7600317', '90.4186968', NULL, '2021-07-14 13:25:50', '2021-07-14 13:25:50'),
(315, 35, 2, '23.7600317', '90.4186968', NULL, '2021-07-14 13:26:36', '2021-07-14 13:26:36'),
(316, 35, 2, '23.7600388', '90.4186818', NULL, '2021-07-14 13:27:14', '2021-07-14 13:27:14'),
(317, 35, 2, '23.7600325', '90.4187073', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 13:29:15', '2021-07-14 13:29:17'),
(318, 35, 2, '23.7600245', '90.418692', 'Wapda Road, Dhaka, Bangladesh', '2021-07-14 14:20:18', '2021-07-14 14:20:21'),
(319, 35, 2, '23.7600245', '90.418692', NULL, '2021-07-14 14:20:23', '2021-07-14 14:20:23'),
(320, 35, 2, '23.7600245', '90.418692', NULL, '2021-07-14 14:20:25', '2021-07-14 14:20:25'),
(321, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:07:41', '2021-07-15 05:07:43'),
(322, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:08:05', '2021-07-15 05:08:05'),
(323, 35, 2, '23.7600391', '90.4187047', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:09:16', '2021-07-15 05:09:17'),
(324, 35, 2, '23.7600391', '90.4187047', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:09:19', '2021-07-15 05:09:19'),
(325, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:10:21', '2021-07-15 05:10:22'),
(326, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:10:23', '2021-07-15 05:10:24'),
(327, 35, 2, '23.7600391', '90.4187047', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:11:23', '2021-07-15 05:11:25'),
(328, 35, 2, '23.7600391', '90.4187047', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:12:23', '2021-07-15 05:12:24'),
(329, 35, 2, '23.7600315', '90.4187129', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:13:24', '2021-07-15 05:13:24'),
(330, 35, 2, '23.7600391', '90.4187047', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:19:53', '2021-07-15 05:19:53'),
(331, 35, 2, '23.7600391', '90.4187047', NULL, '2021-07-15 05:19:53', '2021-07-15 05:19:53'),
(332, 35, 2, '23.7600391', '90.4187047', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:19:53', '2021-07-15 05:19:53'),
(333, 35, 2, '23.7600391', '90.4187047', NULL, '2021-07-15 05:19:53', '2021-07-15 05:19:53'),
(334, 35, 2, '23.7600391', '90.4187047', NULL, '2021-07-15 05:19:53', '2021-07-15 05:19:53'),
(335, 35, 2, '23.7600391', '90.4187047', NULL, '2021-07-15 05:19:53', '2021-07-15 05:19:53'),
(336, 35, 2, '23.7600391', '90.4187047', NULL, '2021-07-15 05:20:26', '2021-07-15 05:20:26'),
(337, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:57:42', '2021-07-15 05:57:43'),
(338, 35, 2, '23.7600373', '90.418695', NULL, '2021-07-15 05:57:42', '2021-07-15 05:57:42'),
(339, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:57:42', '2021-07-15 05:57:43'),
(340, 35, 2, '23.7600373', '90.418695', NULL, '2021-07-15 05:57:42', '2021-07-15 05:57:42'),
(341, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:57:42', '2021-07-15 05:57:43'),
(342, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:57:42', '2021-07-15 05:57:43'),
(343, 35, 2, '23.7600373', '90.418695', NULL, '2021-07-15 05:57:42', '2021-07-15 05:57:42'),
(344, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:57:42', '2021-07-15 05:57:43'),
(345, 35, 2, '23.7600373', '90.418695', NULL, '2021-07-15 05:57:42', '2021-07-15 05:57:42'),
(346, 35, 2, '23.7600373', '90.418695', NULL, '2021-07-15 05:57:42', '2021-07-15 05:57:42'),
(347, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:57:42', '2021-07-15 05:57:43'),
(348, 35, 2, '23.7600373', '90.418695', NULL, '2021-07-15 05:57:43', '2021-07-15 05:57:43'),
(349, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:57:43', '2021-07-15 05:57:43'),
(350, 35, 2, '23.7600373', '90.418695', NULL, '2021-07-15 05:57:43', '2021-07-15 05:57:43'),
(351, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:57:43', '2021-07-15 05:57:43'),
(352, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:57:43', '2021-07-15 05:57:43'),
(353, 35, 2, '23.7600373', '90.418695', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 05:57:43', '2021-07-15 05:57:43'),
(354, 35, 2, '23.7600373', '90.418695', NULL, '2021-07-15 05:57:43', '2021-07-15 05:57:43'),
(355, 35, 2, '23.7600373', '90.418695', NULL, '2021-07-15 05:57:43', '2021-07-15 05:57:43'),
(356, 35, 2, '23.7600373', '90.418695', NULL, '2021-07-15 05:57:43', '2021-07-15 05:57:43'),
(357, 35, 2, '23.7600373', '90.418695', NULL, '2021-07-15 05:57:43', '2021-07-15 05:57:43'),
(358, 35, 2, '23.7555043', '90.4161236', 'ডিআইটি সড়ক, Dhaka, Bangladesh', '2021-07-15 06:16:14', '2021-07-15 06:16:15'),
(359, 35, 7, '23.7390375', '90.4157108', NULL, '2021-07-15 07:25:01', '2021-07-15 07:25:01'),
(360, 35, 2, '24.3800805', '88.5828834', 'Rajshahi, Bangladesh', '2021-07-25 04:15:41', '2021-07-25 04:15:44'),
(361, 35, 2, '24.3800805', '88.5828834', 'Rajshahi, Bangladesh', '2021-07-25 04:16:12', '2021-07-25 04:16:13'),
(362, 35, 2, '24.3800805', '88.5828834', 'Rajshahi, Bangladesh', '2021-07-25 04:16:39', '2021-07-25 04:16:39'),
(363, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:21:53', '2021-12-21 05:21:53'),
(364, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:22:50', '2021-12-21 05:22:50'),
(365, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:23:50', '2021-12-21 05:23:50'),
(366, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:25:00', '2021-12-21 05:25:00'),
(367, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:25:50', '2021-12-21 05:25:50'),
(368, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:26:59', '2021-12-21 05:26:59'),
(369, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:26:59', '2021-12-21 05:26:59'),
(370, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:29:03', '2021-12-21 05:29:03'),
(371, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:29:03', '2021-12-21 05:29:03'),
(372, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:29:03', '2021-12-21 05:29:03'),
(373, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:30:03', '2021-12-21 05:30:03'),
(374, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:30:03', '2021-12-21 05:30:03'),
(375, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:30:03', '2021-12-21 05:30:03'),
(376, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:33:28', '2021-12-21 05:33:28'),
(377, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:33:28', '2021-12-21 05:33:28'),
(378, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:33:28', '2021-12-21 05:33:28'),
(379, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:33:29', '2021-12-21 05:33:29'),
(380, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:36:50', '2021-12-21 05:36:50'),
(381, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:36:50', '2021-12-21 05:36:50'),
(382, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:36:50', '2021-12-21 05:36:50'),
(383, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:36:50', '2021-12-21 05:36:50'),
(384, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:44:29', '2021-12-21 05:44:29'),
(385, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:45:33', '2021-12-21 05:45:33'),
(386, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:46:29', '2021-12-21 05:46:29'),
(387, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:46:29', '2021-12-21 05:46:29'),
(388, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:47:29', '2021-12-21 05:47:29'),
(389, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:47:29', '2021-12-21 05:47:29'),
(390, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:47:35', '2021-12-21 05:47:35'),
(391, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:48:35', '2021-12-21 05:48:35'),
(392, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:50:32', '2021-12-21 05:50:32'),
(393, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:50:32', '2021-12-21 05:50:32'),
(394, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:50:32', '2021-12-21 05:50:32'),
(395, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:51:29', '2021-12-21 05:51:29'),
(396, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:59:36', '2021-12-21 05:59:36'),
(397, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:59:36', '2021-12-21 05:59:36'),
(398, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:59:36', '2021-12-21 05:59:36'),
(399, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:59:36', '2021-12-21 05:59:36'),
(400, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:59:36', '2021-12-21 05:59:36'),
(401, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:59:36', '2021-12-21 05:59:36'),
(402, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:59:36', '2021-12-21 05:59:36'),
(403, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:59:36', '2021-12-21 05:59:36'),
(404, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 05:59:39', '2021-12-21 05:59:39'),
(405, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:00:51', '2021-12-21 06:00:51'),
(406, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:01:09', '2021-12-21 06:01:09'),
(407, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:01:12', '2021-12-21 06:01:12'),
(408, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:02:11', '2021-12-21 06:02:11'),
(409, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:03:53', '2021-12-21 06:03:53'),
(410, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:04:15', '2021-12-21 06:04:15'),
(411, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:04:16', '2021-12-21 06:04:16'),
(412, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:04:19', '2021-12-21 06:04:19'),
(413, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:04:31', '2021-12-21 06:04:31'),
(414, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:05:13', '2021-12-21 06:05:13'),
(415, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:06:14', '2021-12-21 06:06:14'),
(416, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:07:08', '2021-12-21 06:07:08'),
(417, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:08:05', '2021-12-21 06:08:05'),
(418, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:08:18', '2021-12-21 06:08:18'),
(419, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:09:08', '2021-12-21 06:09:08'),
(420, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:10:08', '2021-12-21 06:10:08'),
(421, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:10:13', '2021-12-21 06:10:13'),
(422, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:11:18', '2021-12-21 06:11:18'),
(423, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:12:17', '2021-12-21 06:12:17'),
(424, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:12:17', '2021-12-21 06:12:17'),
(425, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:12:18', '2021-12-21 06:12:18'),
(426, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:13:41', '2021-12-21 06:13:41'),
(427, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:13:43', '2021-12-21 06:13:43'),
(428, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:14:43', '2021-12-21 06:14:43'),
(429, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:16:26', '2021-12-21 06:16:26'),
(430, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:16:26', '2021-12-21 06:16:26'),
(431, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:16:26', '2021-12-21 06:16:26'),
(432, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:21:05', '2021-12-21 06:21:05'),
(433, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:21:05', '2021-12-21 06:21:05'),
(434, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:21:05', '2021-12-21 06:21:05'),
(435, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:21:05', '2021-12-21 06:21:05'),
(436, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:22:34', '2021-12-21 06:22:34'),
(437, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:22:34', '2021-12-21 06:22:34'),
(438, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:23:21', '2021-12-21 06:23:21'),
(439, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:25:50', '2021-12-21 06:25:50'),
(440, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:25:50', '2021-12-21 06:25:50'),
(441, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:26:30', '2021-12-21 06:26:30'),
(442, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:27:31', '2021-12-21 06:27:31'),
(443, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:27:31', '2021-12-21 06:27:31'),
(444, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:27:31', '2021-12-21 06:27:31'),
(445, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:29:27', '2021-12-21 06:29:27'),
(446, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:29:27', '2021-12-21 06:29:27'),
(447, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:29:27', '2021-12-21 06:29:27'),
(448, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:30:20', '2021-12-21 06:30:20'),
(449, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:30:27', '2021-12-21 06:30:27'),
(450, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:30:27', '2021-12-21 06:30:27'),
(451, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:30:27', '2021-12-21 06:30:27'),
(452, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:31:18', '2021-12-21 06:31:18'),
(453, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:32:19', '2021-12-21 06:32:19'),
(454, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:34:05', '2021-12-21 06:34:05'),
(455, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:34:44', '2021-12-21 06:34:44'),
(456, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:35:18', '2021-12-21 06:35:18'),
(457, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:37:06', '2021-12-21 06:37:06'),
(458, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:37:20', '2021-12-21 06:37:20'),
(459, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:39:18', '2021-12-21 06:39:18'),
(460, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:39:18', '2021-12-21 06:39:18'),
(461, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:41:27', '2021-12-21 06:41:27'),
(462, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:41:27', '2021-12-21 06:41:27');
INSERT INTO `sr_locations` (`id`, `user_id`, `agent_id`, `lat`, `lng`, `location`, `created_at`, `updated_at`) VALUES
(463, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:42:23', '2021-12-21 06:42:23'),
(464, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:52:21', '2021-12-21 06:52:21'),
(465, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:52:21', '2021-12-21 06:52:21'),
(466, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:52:21', '2021-12-21 06:52:21'),
(467, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:52:21', '2021-12-21 06:52:21'),
(468, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:52:21', '2021-12-21 06:52:21'),
(469, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:52:21', '2021-12-21 06:52:21'),
(470, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:52:21', '2021-12-21 06:52:21'),
(471, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:52:21', '2021-12-21 06:52:21'),
(472, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:52:21', '2021-12-21 06:52:21'),
(473, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:52:21', '2021-12-21 06:52:21'),
(474, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:53:20', '2021-12-21 06:53:20'),
(475, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:54:33', '2021-12-21 06:54:33'),
(476, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:55:33', '2021-12-21 06:55:33'),
(477, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:56:16', '2021-12-21 06:56:16'),
(478, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:56:24', '2021-12-21 06:56:24'),
(479, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:57:24', '2021-12-21 06:57:24'),
(480, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:57:24', '2021-12-21 06:57:24'),
(481, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:58:28', '2021-12-21 06:58:28'),
(482, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 06:58:28', '2021-12-21 06:58:28'),
(483, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 06:58:48', '2021-12-21 06:58:48'),
(484, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 06:59:46', '2021-12-21 06:59:46'),
(485, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 07:00:04', '2021-12-21 07:00:04'),
(486, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 07:00:24', '2021-12-21 07:00:24'),
(487, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:01:06', '2021-12-21 07:01:06'),
(488, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:01:46', '2021-12-21 07:01:46'),
(489, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 07:01:47', '2021-12-21 07:01:47'),
(490, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:01:49', '2021-12-21 07:01:49'),
(491, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 07:02:18', '2021-12-21 07:02:18'),
(492, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:02:53', '2021-12-21 07:02:53'),
(493, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 07:03:19', '2021-12-21 07:03:19'),
(494, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:03:23', '2021-12-21 07:03:23'),
(495, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:03:37', '2021-12-21 07:03:37'),
(496, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 07:04:20', '2021-12-21 07:04:20'),
(497, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:04:22', '2021-12-21 07:04:22'),
(498, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:05:24', '2021-12-21 07:05:24'),
(499, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 07:05:25', '2021-12-21 07:05:25'),
(500, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:06:33', '2021-12-21 07:06:33'),
(501, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 07:06:33', '2021-12-21 07:06:33'),
(502, 35, 2, '23.7262', '90.4318', NULL, '2021-12-21 07:07:33', '2021-12-21 07:07:33'),
(503, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:07:34', '2021-12-21 07:07:34'),
(504, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:08:34', '2021-12-21 07:08:34'),
(505, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:08:34', '2021-12-21 07:08:34'),
(506, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:11:33', '2021-12-21 07:11:33'),
(507, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:11:33', '2021-12-21 07:11:33'),
(508, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:11:33', '2021-12-21 07:11:33'),
(509, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:11:33', '2021-12-21 07:11:33'),
(510, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:11:36', '2021-12-21 07:11:36'),
(511, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:13:01', '2021-12-21 07:13:01'),
(512, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:15:16', '2021-12-21 07:15:16'),
(513, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:15:16', '2021-12-21 07:15:16'),
(514, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:15:48', '2021-12-21 07:15:48'),
(515, 48, 8, '23.7603218', '90.4324872', NULL, '2021-12-21 07:17:02', '2021-12-21 07:17:02'),
(516, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:26:44', '2021-12-21 07:26:44'),
(517, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:27:44', '2021-12-21 07:27:44'),
(518, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:28:44', '2021-12-21 07:28:44'),
(519, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:29:44', '2021-12-21 07:29:44'),
(520, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:30:58', '2021-12-21 07:30:58'),
(521, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:31:01', '2021-12-21 07:31:01'),
(522, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:32:02', '2021-12-21 07:32:02'),
(523, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:33:01', '2021-12-21 07:33:01'),
(524, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:33:16', '2021-12-21 07:33:16'),
(525, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:34:02', '2021-12-21 07:34:02'),
(526, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:34:06', '2021-12-21 07:34:06'),
(527, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:35:20', '2021-12-21 07:35:20'),
(528, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:36:49', '2021-12-21 07:36:49'),
(529, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:37:50', '2021-12-21 07:37:50'),
(530, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:40:37', '2021-12-21 07:40:37'),
(531, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:40:37', '2021-12-21 07:40:37'),
(532, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:40:37', '2021-12-21 07:40:37'),
(533, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:43:03', '2021-12-21 07:43:03'),
(534, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:43:03', '2021-12-21 07:43:03'),
(535, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:43:03', '2021-12-21 07:43:03'),
(536, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:46:40', '2021-12-21 07:46:40'),
(537, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:46:40', '2021-12-21 07:46:40'),
(538, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:46:40', '2021-12-21 07:46:40'),
(539, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:47:23', '2021-12-21 07:47:23'),
(540, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:51:43', '2021-12-21 07:51:43'),
(541, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:51:43', '2021-12-21 07:51:43'),
(542, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:51:43', '2021-12-21 07:51:43'),
(543, 48, 8, '23.7262', '90.4318', NULL, '2021-12-21 07:51:43', '2021-12-21 07:51:43'),
(544, 48, 8, '23.7529834', '90.4218431', NULL, '2021-12-21 09:57:05', '2021-12-21 09:57:05'),
(545, 48, 8, '23.7529834', '90.4218431', NULL, '2021-12-21 09:57:55', '2021-12-21 09:57:55');

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
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `total_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_collection_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_due` decimal(10,2) NOT NULL DEFAULT 0.00,
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
(1, NULL, 1, 1, 1, 1, 2, 3, 1, 523, NULL, 1, NULL, '01851515151', 'address', 'pending', 'unpaid', 0.00, 5951.00, 4529.60, 0.00, 0.00, 0.00, NULL, NULL, '2021-06-20 20:02:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-20 20:02:52', '2021-06-20 20:02:52'),
(2, NULL, 2, 3, 2, 2, 4, 5, 23, 369, NULL, 2, NULL, '325665444558', 'Pabna zila sadar', 'pending', 'unpaid', 0.00, 7135.00, 5708.00, 0.00, 0.00, 0.00, NULL, NULL, '2021-07-05 19:05:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:05:52', '2021-07-05 19:05:53'),
(3, NULL, 3, 3, 2, 2, 4, 5, 23, 369, NULL, 2, NULL, '325665444558', 'Pabna zila sadar', 'pending', 'unpaid', 0.00, 7249.00, 5799.20, 0.00, 0.00, 0.00, NULL, NULL, '2021-07-05 19:50:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:50:40', '2021-07-05 19:50:43'),
(4, NULL, 4, 1, 1, 1, 5, 3, 1, 523, NULL, 3, NULL, '56464897895', 'asdasd', 'pending', 'unpaid', 0.00, 2369.00, 1895.20, 0.00, 0.00, 0.00, NULL, NULL, '2021-07-10 05:58:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 05:58:45', '2021-07-10 05:58:46'),
(5, NULL, 5, 1, 1, 1, 5, 3, 1, 523, NULL, 4, NULL, '0188963254', 'asdsdasdd', 'pending', 'unpaid', 0.00, 300.00, 240.00, 0.00, 0.00, 0.00, NULL, NULL, '2021-07-10 06:22:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:22:02', '2021-07-10 06:22:02'),
(6, NULL, 6, 1, 1, 1, 5, 3, 1, 523, NULL, 4, NULL, '0188963254', 'asdsdasdd', 'pending', 'unpaid', 0.00, 700.00, 520.00, 0.00, 0.00, 0.00, NULL, NULL, '2021-07-10 06:22:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:22:24', '2021-07-10 06:22:24'),
(7, NULL, 7, 1, 1, 1, 5, 3, 1, 523, NULL, 4, NULL, '0188963254', 'asdsdasdd', 'pending', 'unpaid', 0.00, 400.00, 280.00, 0.00, 0.00, 0.00, NULL, NULL, '2021-07-10 06:26:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:26:28', '2021-07-10 06:26:28'),
(8, NULL, 8, 1, 1, 1, 2, 3, 1, 523, NULL, 5, NULL, '1234568909', 'new shop sky', 'pending', 'unpaid', 0.00, 700.00, 520.00, 0.00, 0.00, 0.00, NULL, NULL, '2021-07-10 10:29:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:29:32', '2021-07-10 10:29:32'),
(9, NULL, 9, 1, 1, 1, 2, 3, 1, 523, NULL, 5, NULL, '1234568909', 'new shop sky', 'pending', 'unpaid', 0.00, 1400.00, 1040.00, 0.00, 0.00, 0.00, NULL, NULL, '2021-07-10 10:53:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:53:27', '2021-07-10 10:53:28'),
(10, NULL, 10, 1, 1, 1, 2, 3, 1, 523, NULL, 6, NULL, '01511253669', 'Madina Madina Madina Madina Madina Madina', 'pending', 'unpaid', 0.00, 400.00, 280.00, 0.00, 0.00, 0.00, NULL, NULL, '2021-07-15 05:08:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-15 05:08:21', '2021-07-15 05:08:24'),
(11, NULL, 11, 1, 1, 1, 2, 3, 1, 523, NULL, 6, NULL, '01511253669', 'Madina Madina Madina Madina Madina Madina', 'pending', 'unpaid', 0.00, 300.00, 240.00, 0.00, 0.00, 0.00, NULL, NULL, '2021-07-15 05:13:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-15 05:13:34', '2021-07-15 05:13:35'),
(12, NULL, 12, 1, 1, 1, 2, 3, 1, 523, NULL, 7, NULL, '01303252902', 'Dhaka', 'pending', 'unpaid', 0.00, 2340.00, 1872.00, 0.00, 0.00, 0.00, NULL, NULL, '2021-12-21 05:59:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 05:59:49', '2021-12-21 05:59:50'),
(13, NULL, 13, 7, 3, 4, 8, 2, 40, 43, NULL, 8, NULL, '01711447791', 'Dhaka', 'pending', 'unpaid', 0.00, 1777.00, 1359.50, 0.00, 0.00, 0.00, NULL, NULL, '2021-12-21 07:11:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 07:11:49', '2021-12-21 07:11:49');

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
  `product_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `extra_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipment_quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(13,2) NOT NULL DEFAULT 0.00,
  `total_price` decimal(13,2) NOT NULL DEFAULT 0.00,
  `collection_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `unit_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price_after_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `affiliate_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `final_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stock_minimized` tinyint(1) NOT NULL DEFAULT 0,
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
(1, 1, 1, NULL, 1, 'Kylee Dale', NULL, 1, 1, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 3.00, 0.00, 621.00, 1863.00, 1490.40, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-20 20:02:52', '2021-06-20 20:02:52'),
(2, 1, 1, NULL, 2, 'Kylynn Silva', NULL, 1, 1, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 4.00, 0.00, 578.00, 2312.00, 1618.40, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-20 20:02:52', '2021-06-20 20:02:52'),
(3, 1, 1, NULL, 3, 'Gay Sawyer', NULL, 1, 1, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 3.00, 0.00, 592.00, 1776.00, 1420.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-20 20:02:52', '2021-06-20 20:02:52'),
(4, 2, 2, NULL, 1, 'Kylee Dale', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 3.00, 0.00, 621.00, 1863.00, 1490.40, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:05:52', '2021-07-05 19:05:52'),
(5, 2, 2, NULL, 2, 'Kylynn Silva', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 4.00, 0.00, 578.00, 2312.00, 1849.60, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:05:52', '2021-07-05 19:05:52'),
(6, 2, 2, NULL, 3, 'Gay Sawyer', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 5.00, 0.00, 592.00, 2960.00, 2368.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:05:53', '2021-07-05 19:05:53'),
(7, 3, 3, NULL, 1, 'Kylee Dale', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 5.00, 0.00, 621.00, 3105.00, 2484.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:50:41', '2021-07-05 19:50:41'),
(8, 3, 3, NULL, 3, 'Gay Sawyer', NULL, 2, 2, 3, 2, 2, 4, 5, 23, 369, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 7.00, 0.00, 592.00, 4144.00, 3315.20, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 19:50:41', '2021-07-05 19:50:41'),
(9, 4, 4, NULL, 1, 'Kylee Dale', NULL, 3, 3, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 621.00, 621.00, 496.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 05:58:45', '2021-07-10 05:58:45'),
(10, 4, 4, NULL, 2, 'Kylynn Silva', NULL, 3, 3, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 2.00, 0.00, 578.00, 1156.00, 924.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 05:58:46', '2021-07-10 05:58:46'),
(11, 4, 4, NULL, 3, 'Gay Sawyer', NULL, 3, 3, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 592.00, 592.00, 473.60, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 05:58:46', '2021-07-10 05:58:46'),
(12, 5, 5, NULL, 4, 'test product 2', NULL, 4, 4, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 300.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:22:02', '2021-07-10 06:22:02'),
(13, 6, 6, NULL, 5, 'test product 3', NULL, 4, 4, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 400.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:22:24', '2021-07-10 06:22:24'),
(14, 6, 6, NULL, 4, 'test product 2', NULL, 4, 4, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 300.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:22:24', '2021-07-10 06:22:24'),
(15, 7, 7, NULL, 5, 'test product 3', NULL, 4, 4, 1, 1, 1, 5, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 400.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 06:26:28', '2021-07-10 06:26:28'),
(16, 8, 8, NULL, 5, 'test product 3', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 400.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:29:32', '2021-07-10 10:29:32'),
(17, 8, 8, NULL, 4, 'test product 2', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 300.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:29:32', '2021-07-10 10:29:32'),
(18, 9, 9, NULL, 5, 'test product 3', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 2.00, 0.00, 400.00, 800.00, 560.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:53:28', '2021-07-10 10:53:28'),
(19, 9, 9, NULL, 4, 'test product 2', NULL, 5, 5, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 2.00, 0.00, 300.00, 600.00, 480.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10 10:53:28', '2021-07-10 10:53:28'),
(20, 10, 10, NULL, 5, 'test product 3', NULL, 6, 6, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 400.00, 400.00, 280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-15 05:08:23', '2021-07-15 05:08:23'),
(21, 11, 11, NULL, 4, 'test product 2', NULL, 6, 6, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 300.00, 300.00, 240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-15 05:13:34', '2021-07-15 05:13:34'),
(22, 12, 12, NULL, 2, 'Kylynn Silva', NULL, 7, 7, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 2.00, 0.00, 578.00, 1156.00, 924.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 05:59:49', '2021-12-21 05:59:49'),
(23, 12, 12, NULL, 3, 'Gay Sawyer', NULL, 7, 7, 1, 1, 1, 2, 3, 1, 523, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 2.00, 0.00, 592.00, 1184.00, 947.20, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 05:59:50', '2021-12-21 05:59:50'),
(24, 13, 13, NULL, 1, 'Kylee Dale', NULL, 8, 8, 7, 3, 4, 8, 2, 40, 43, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 1.00, 0.00, 621.00, 621.00, 434.70, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 07:11:49', '2021-12-21 07:11:49'),
(25, 13, 13, NULL, 2, 'Kylynn Silva', NULL, 8, 8, 7, 3, 4, 8, 2, 40, 43, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, 2.00, 0.00, 578.00, 1156.00, 924.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 07:11:49', '2021-12-21 07:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `sr_salaries`
--

CREATE TABLE `sr_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` decimal(15,2) NOT NULL DEFAULT 0.00,
  `previous_income` decimal(15,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_income` decimal(15,2) NOT NULL DEFAULT 0.00,
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
(1, 2.00, 160.00, 160.00, 0.00, 1, NULL, '2021-07-10', '2021-07-10 11:03:55', '2021-07-10 11:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bn_name` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

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
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `addedby_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_status` int(11) NOT NULL DEFAULT 1,
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
(1, 'Masud Hasan', NULL, 'masudbdm@gmail.com', '8801926665800', NULL, NULL, NULL, '9555222224', 'https://dhplbd.com/storage/user/pp/1_fi_2021_06_19_064149_43325580.png', 'male', '2021-02-16', '$2y$10$5nJ7mz0dH59nUvkIStCtJ.a58u9LtUgr.3MCgEUINBK95aGpApj7u', '11112222', 'ol7DVr4ZUzZX8Vf5uBw4WTqB9DrZDJoviul8dCNZbUaZaYxgJntsR08wc1F6', 1, NULL, NULL, 1, '2021-02-17 05:35:41', '2021-07-05 13:24:25', NULL, NULL, NULL, NULL, NULL),
(2, 'SR', NULL, NULL, '01303252902', NULL, NULL, NULL, '1111222254', NULL, NULL, '2021-12-21', '$2y$10$ehOxWYAki8XZCF9oTLA3Re6izxNgoDxK9A93GjlZ8KlRB8C.wuIzm', '11112222', NULL, 1, NULL, NULL, 1, '2021-03-20 06:15:39', '2021-12-21 05:32:12', NULL, NULL, NULL, NULL, NULL),
(3, 'GM', NULL, NULL, '01303252903', NULL, NULL, NULL, '1111222255', NULL, NULL, '2021-12-21', '$2y$10$EkzO2U.UzNCCrHH3TKNO5.YG.tsdHiN0AsTy9DVmeTeW0T8Ijk5OW', '11112222', NULL, 1, NULL, NULL, 1, '2021-03-20 06:20:18', '2021-12-21 05:32:48', NULL, NULL, NULL, NULL, NULL),
(4, 'SMO', NULL, 'user@user.com', '01303252904', NULL, NULL, NULL, '1111222256', NULL, NULL, NULL, '$2y$10$ZljLPWLCZVEZs4Dq.6ktxelO0wLguYDjD9BCjACaqPotxuMM31FW2', '11112222', NULL, 1, NULL, NULL, 1, '2021-03-21 02:38:01', '2021-12-21 05:33:23', NULL, NULL, NULL, NULL, NULL),
(5, 'Factory', NULL, 'user2@user.com', '01303252905', NULL, NULL, NULL, '01303252904', NULL, NULL, NULL, '$2y$10$t1yA/UL1cDZKE0Aw6FKKduq4hhyWvxI1EG7p6Ic.JI/4.ctJgktvG', '11112222', NULL, 1, NULL, NULL, 1, '2021-03-21 02:41:31', '2021-12-21 05:33:57', NULL, NULL, NULL, NULL, NULL),
(6, 'tgafawd', NULL, NULL, '3859834795874395', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tiqJcTgN3UaplL2BkKVwT.3/e675Pxy1svKFK16ODpK46NAoSIbkW', '685652', NULL, 1, NULL, NULL, 1, '2021-03-22 01:50:13', '2021-03-22 01:50:13', NULL, NULL, NULL, NULL, NULL),
(7, 'awaweawe', NULL, NULL, '6549849849+8498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$a55s/F5VmETcddYKkujdm.MU9vu67djuQ0etm7cMlfg3Kg8HHPHWu', '142769', NULL, 1, NULL, NULL, 1, '2021-03-22 01:53:51', '2021-03-22 01:53:51', NULL, NULL, NULL, NULL, NULL),
(8, '23wrse', NULL, NULL, '2343534534', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fMxXaZ6ZCVIqf53kjNVIEeKXjiHHzE2LAugydv3pP/IEZkte7bW0S', '677674', NULL, 1, NULL, NULL, 1, '2021-03-22 01:55:20', '2021-03-22 01:55:20', NULL, NULL, NULL, NULL, NULL),
(9, 'wrser', NULL, NULL, 'sasefse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IkZxIUQn47a9QPG43LXg6Ot7Yqu7GvCJMEyU6W7Lawglax1L1FaX2', '747423', NULL, 1, NULL, NULL, 1, '2021-03-22 02:04:01', '2021-03-22 02:04:01', NULL, NULL, NULL, NULL, NULL),
(10, 'aadawd', NULL, NULL, '234234234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3245irFz8ys7e9ieQE/OPum2tyHIxLd1ACyoOBIo8KQX2ezdHUOkW', '724835', NULL, 1, NULL, NULL, 1, '2021-03-22 02:29:10', '2021-03-22 02:29:10', NULL, NULL, NULL, NULL, NULL),
(11, 'awdawdaw', NULL, NULL, '23423423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FZhfkPX9aCH6Hr1l7lyBLe7i1hCFP4kR.gkgBJrow/Ba1tC/ZgaxS', '330704', NULL, 1, NULL, NULL, 1, '2021-03-22 02:35:21', '2021-03-22 02:35:21', NULL, NULL, NULL, NULL, NULL),
(12, 'awdaw', NULL, NULL, '234325324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3hJrR6WUC8Req5EpTJEbVei4B8eXEyyvKCVGcuBXX7c7gCXu2Dpva', '170425', NULL, 1, NULL, NULL, 1, '2021-03-22 02:40:59', '2021-03-22 02:40:59', NULL, NULL, NULL, NULL, NULL),
(13, 'sfsef', NULL, NULL, '234234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Es73TJ2ZDa/vLlQshrO17Os/0/DMUq0hVR/6BmwTbICSGwAsp6vVq', '859155', NULL, 1, NULL, NULL, 1, '2021-03-22 02:43:19', '2021-03-22 02:43:19', NULL, NULL, NULL, NULL, NULL),
(14, 'wasfawf234', NULL, NULL, '2342342343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FyBqrW6Y1izeXUKITvmmuO5TPiCjODESkX.JcWyTA4U.atPYv.xFS', '320477', NULL, 1, NULL, NULL, 1, '2021-03-22 02:45:47', '2021-03-22 02:45:47', NULL, NULL, NULL, NULL, NULL),
(15, 'rsfsfs', NULL, NULL, '323423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kvhCXJ/TNlVQcNI/9wkGJerIYzmLHDVzZgxRHjNcJ61N.kUHMyqj.', '302103', NULL, 1, NULL, NULL, 1, '2021-03-22 02:46:36', '2021-03-22 02:46:36', NULL, NULL, NULL, NULL, NULL),
(16, 'adaw', NULL, NULL, '23423421', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0cH2tVRL7tOzI5PshsRlp.Q7oL4ngDGduFDQG4IGJl7xeZNghuK46', '160961', NULL, 1, NULL, NULL, 1, '2021-03-22 04:02:17', '2021-03-22 04:02:17', NULL, NULL, NULL, NULL, NULL),
(17, '4ertewrs', NULL, NULL, '34234233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fZ5hJ5t3xNdjVThEsrk6ierOMHos.u5Jsi9vAstwCF59yU.ZijNKi', '441504', NULL, 1, NULL, NULL, 1, '2021-03-22 04:04:56', '2021-03-22 04:04:56', NULL, NULL, NULL, NULL, NULL),
(18, 'zeqejun@mailinator.com', NULL, 'zesaj@mailinator.com', '1212121212112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$P3w93DIk8lgof2jYEwyI.u4bK0yBQm1kEf7qA/4tmljqfvUcnMHIe', '776052', NULL, 1, 'App\\Models\\Role\\Agent', 2576, 1, '2021-04-20 22:09:18', '2021-04-20 22:09:18', NULL, NULL, NULL, NULL, NULL),
(19, 'feqidyxy@mailinator.com', NULL, 'gehyve@mailinator.com', '75786436485485648', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$US6YHpWAPHSCWjGMLInsxOq1HYG.gjo5vn1dv/ITvrR31yiKMknR2', '864757', NULL, 1, 'App\\Models\\Role\\Agent', 2576, 1, '2021-04-20 22:24:36', '2021-04-20 22:24:36', NULL, NULL, NULL, NULL, NULL),
(20, 'Xantha Bates', NULL, 'user@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2PVC8wKFK6K18OFUjfz4Vuv1t5q9DpE6sGd1PIJKkbvK.hc/tZ1f.', NULL, NULL, 1, NULL, NULL, 1, '2021-04-27 21:57:39', '2021-04-27 21:57:39', NULL, NULL, NULL, NULL, NULL),
(21, 'Claire Robbins', NULL, 'user3@user.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ceCA9nKbra0cMo7mu4M3JO4MhAOClPjgl0HpLLCuZwV2OU2Ql2t56', NULL, NULL, 1, NULL, NULL, 1, '2021-04-27 22:43:53', '2021-04-27 22:43:53', NULL, NULL, NULL, NULL, NULL),
(22, 'dsfgsdfgdf', NULL, NULL, '012222222222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$D4wi3cbESI/Wm3OUVehOCua8dDNICEC08PDb6tQIms640U4aaThXm', '224815', NULL, 1, 'App\\Models\\Role\\Agent', 2576, 1, '2021-05-19 02:50:32', '2021-05-19 02:50:32', NULL, NULL, NULL, NULL, NULL),
(23, 'abc name', NULL, 'test@email.com', '01234444444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7YLNshnqgBqfg75hVakFte/GF5KYaarIkW9OcE43fx0zA7WtPNqxq', '255959', NULL, 1, 'App\\Models\\Role\\Agent', 2576, 1, '2021-05-19 02:52:35', '2021-05-19 02:52:35', NULL, NULL, NULL, NULL, NULL),
(24, 'test customer', NULL, 'testcustomer@email.com', '01999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lMHDti5zpj3BHGE4mbq0UeMx63JjyFqWK0zIDRMy3cKGSG1OnYRJW', '905793', NULL, 1, 'App\\Models\\Role\\Agent', 2896, 1, '2021-05-19 03:09:33', '2021-05-19 03:09:33', NULL, NULL, NULL, NULL, NULL),
(25, 'Test Sr', NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ulwuiUXzM.NyEZN0HBcR6ei0SO1sDq0OpNyLKfxLRQ629zcK/5BQ.', '954091', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 05:38:13', '2021-05-22 05:38:13', NULL, NULL, NULL, NULL, NULL),
(26, 'Suman', NULL, NULL, '01900112233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5nJ7mz0dH59nUvkIStCtJ.a58u9LtUgr.3MCgEUINBK95aGpApj7u', '569514', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 05:58:53', '2021-05-22 05:58:53', NULL, NULL, NULL, NULL, NULL),
(27, 'New User', NULL, NULL, '123165469468413', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$X3cMUv2PeYBZnIccBRCpuuKyCHcBshK22FS/ZTvfDZn/GUmZkxCfS', '397288', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 06:49:43', '2021-05-22 06:49:43', NULL, NULL, NULL, NULL, NULL),
(28, 'GM', NULL, NULL, '46546465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BQER8DgfgRsZa9yJcEidG./zKHaEzu5Bpfg82vrzlztjJ7SQfMZRW', '105952', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-22 06:51:50', '2021-05-22 06:51:50', NULL, NULL, NULL, NULL, NULL),
(29, 'Admin', NULL, 'admin@admin.com', '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gb7jR9ZQbufP8iDqtdwUO.6UHBXp0ggC6dDsaBG1yAZMOvlK4FdPu', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Factory', NULL, 'factory@factory.com', '23456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gb7jR9ZQbufP8iDqtdwUO.6UHBXp0ggC6dDsaBG1yAZMOvlK4FdPu', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'SR', NULL, NULL, '3456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7lXClejG7SyNo3LZhK6gD.O/M4uHAXt2Npp51q/3wNIA3idB.xleK', '969309', NULL, 1, 'App\\Models\\User', 1, 1, '2021-05-24 07:21:22', '2021-05-24 07:21:22', NULL, NULL, NULL, NULL, NULL),
(33, 'rrrrrrrrrr', NULL, NULL, '12121212', NULL, NULL, NULL, 'asdfasdfasdf', NULL, NULL, NULL, '$2y$10$IvYYUIKGJZybiTLSZplPC.UQP92XSAC3t8hspgCeX1kbTSRysfvIK', '696859', NULL, 1, 'App\\Models\\User', 1, 1, '2021-06-12 07:36:26', '2021-06-12 07:36:26', NULL, NULL, NULL, NULL, NULL),
(34, 'Test user', NULL, NULL, '01951515151', NULL, NULL, NULL, '9555222224', NULL, NULL, NULL, '$2y$10$U5T5DpqpWMyZPLFhXGhvdOoIu0QhaMnpBiKQU7X0gR1JRRDW4MqHu', '01951515151', NULL, 1, 'App\\Models\\User', 1, 1, '2021-06-12 07:38:17', '2021-06-12 07:40:48', NULL, NULL, NULL, NULL, NULL),
(35, 'Shahin Alam', NULL, NULL, '8801922023564', NULL, NULL, NULL, 'asdfsadf', NULL, NULL, NULL, '$2y$10$VnFT.5YfTsUONGZSksPQ/e86OKv93lMFIIIM3Va/O2fw9pCullf9y', '11112222', 's4Wg3MBj7koSGdD90L77Po1zmlKUSxomGuVCnvdKslXpFPo4qdbkuS952RkQ', 1, 'App\\Models\\User', 1, 1, '2021-06-14 04:18:54', '2021-07-14 06:35:53', NULL, NULL, NULL, NULL, NULL),
(36, 'Mr.Rokon', NULL, NULL, '01720959085', NULL, NULL, NULL, '0199999999999999', NULL, NULL, NULL, '$2y$10$3G498zf5yFtmqjKZXliEbubpWumsh2b7TmnccySXQhBp9FBZJewt.', '11114444', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-05 18:42:11', '2021-07-05 19:12:31', NULL, NULL, NULL, NULL, NULL),
(37, 'Mr.Morshed', NULL, NULL, '019119137', NULL, NULL, NULL, '01444444444444444', NULL, NULL, NULL, '$2y$10$jfAeT3Ato0TY6YtK2XzoY./lh1qMWb0NWAGekcxnC7oDsu4w26bra', '77777777', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-05 18:44:46', '2021-07-05 19:58:30', NULL, NULL, NULL, NULL, NULL),
(38, 'robiul', NULL, NULL, '0155555555555555', NULL, NULL, NULL, '011111111111111111', NULL, NULL, NULL, '$2y$10$TN.0LI9q4/p4exP6qSVAGupQnbdPGJDpMqj.3LiwMWaJhpY7Rpn12', '573749', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-05 18:46:31', '2021-07-05 18:46:31', NULL, NULL, NULL, NULL, NULL),
(39, 'Mr.Morshed', NULL, NULL, '01788996633', NULL, NULL, NULL, '87346792e26e12896e', NULL, NULL, NULL, '$2y$10$pLrIxUte6lYpzQ676BidZuN6xgvNdUnQTQ8okSFbhnRjdPU0gmk7K', '11112222', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-05 18:48:35', '2021-12-21 05:47:06', NULL, NULL, NULL, NULL, NULL),
(40, 'shorif', NULL, NULL, '00000000', NULL, NULL, NULL, '9831309713197', NULL, NULL, NULL, '$2y$10$QNKF6hKE34ZaNi1JlTf38O1To/DMFDdusiHp0PIABCtT0VMKDoA6K', '11113333', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-05 18:50:06', '2021-07-05 18:56:28', NULL, NULL, NULL, NULL, NULL),
(41, 'frankline', NULL, NULL, '01516843943', NULL, NULL, NULL, '9966253666558', NULL, NULL, NULL, '$2y$10$O6Yst7RFv75TstQ4jtWuzOGmLAwZDpuiHgD0Mi.wtPb4jc6gYPYAS', '297516', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-10 09:33:57', '2021-07-10 09:33:57', NULL, NULL, NULL, NULL, NULL),
(42, 'salam', NULL, NULL, '01230123012', NULL, NULL, NULL, 'hgfjhgkjhlkkljlkkjhghj', NULL, NULL, NULL, '$2y$10$Fm1dHYRZZ3LH1lUdsGnOEuiJNz3KVY8rHsjeps/zZeLt8ghBfiH1.', '245357', NULL, 1, 'App\\Models\\User', 1, 1, '2021-07-10 12:17:39', '2021-07-10 12:17:39', NULL, NULL, NULL, NULL, NULL),
(43, 'SMO1', NULL, 'smo@smo.com', '01303252909', NULL, NULL, NULL, '11112222', NULL, NULL, NULL, '$2y$10$5nJ7mz0dH59nUvkIStCtJ.a58u9LtUgr.3MCgEUINBK95aGpApj7u', '11112222', NULL, 1, NULL, NULL, 1, '2021-03-21 02:38:01', '2021-12-21 05:33:23', NULL, NULL, NULL, NULL, NULL),
(44, 'Masud Hasan 2', NULL, 'masudbdm4@gmail.com', '8801926665801', NULL, NULL, NULL, '9555222224', 'https://dhplbd.com/storage/user/pp/1_fi_2021_06_19_064149_43325580.png', 'male', '2021-02-16', '$2y$10$5nJ7mz0dH59nUvkIStCtJ.a58u9LtUgr.3MCgEUINBK95aGpApj7u', '11112222', 'ZrtHrXeJ7vg9QWLKKrWlB1aXJR7sjSjYdSgL4Q2HiilRHbtqPk7NZS7LX225', 1, NULL, NULL, 1, '2021-02-17 05:35:41', '2021-07-05 13:24:25', NULL, NULL, NULL, NULL, NULL),
(45, 'New GM', NULL, NULL, '8801711447788', NULL, NULL, NULL, '89789448', NULL, NULL, NULL, '$2y$10$pNHDMjKINiJn.ccMONf4FunLtUXdpVkUDEfTCXaoTlcNnd8NclXve', '608147', 'to8oa9Pm6sFXIlRD8edczkCWUGAh5SxaaE750EaXja0t6lnN3mhk3TAG2O1h', 1, 'App\\Models\\User', 1, 1, '2021-12-21 06:51:58', '2021-12-21 06:51:58', NULL, NULL, NULL, NULL, NULL),
(46, 'new Distributors', NULL, NULL, '8801711447789', NULL, NULL, NULL, '01711447789', NULL, NULL, NULL, '$2y$10$ztiM3/v8WV17/3S4YZEYkuRpv4iVRpY73hOtyGYJSW8f63Nq6oQ1q', '613746', 'pKLZEcgjOd3fZrOqa82pANAsJsZ3hqxCZPMQODc9u4IMkn3BrryVzJrxgwyl', 1, 'App\\Models\\User', 1, 1, '2021-12-21 06:54:26', '2021-12-21 06:54:26', NULL, NULL, NULL, NULL, NULL),
(47, 'new SMO', NULL, NULL, '8801711447790', NULL, NULL, NULL, '01711447790', NULL, NULL, NULL, '$2y$10$OfgZo67X9CgR/KhoB2sA2Ozuw9DbhVuiYl4vn2dSN6vB0qWps0/ky', '623998', 'NpP2B7mP8zpLzWBrXRC2MVAzwhEo3FAXzh0JmPKEtnu8n7BQx5nN0DyYU1Me', 1, 'App\\Models\\User', 1, 1, '2021-12-21 06:56:00', '2021-12-21 06:56:00', NULL, NULL, NULL, NULL, NULL),
(48, 'New SR', NULL, NULL, '8801711447791', NULL, NULL, NULL, '01711447791', NULL, NULL, NULL, '$2y$10$SkODk79leG1dKJxCrW3eyuVgOGlzGgLx5fPxmgo9D2.0tmnb0MVxa', '757671', '6mpbySbko1lHIv9trQbCwK5DIIsaMmIW85rmFJSPKsaORrmAFS5KDR9QUYTZ', 1, 'App\\Models\\User', 1, 1, '2021-12-21 06:58:15', '2021-12-21 06:58:15', NULL, NULL, NULL, NULL, NULL),
(49, 'new Factory', NULL, NULL, '8801711447792', NULL, NULL, NULL, '01711447792', NULL, NULL, NULL, '$2y$10$3ERPQK.t1YbNIQuwKN3TfOGtTQvDjDsahbPtVSgMhiCB5OCICaCrq', '431149', 'MBaAQIzrtdENn7lKIUjMtdsmQGQAAPDEbxhrLmYHTXgnO5OheGPl9Acm0Eev', 1, 'App\\Models\\User', 1, 1, '2021-12-21 07:15:32', '2021-12-21 07:15:32', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `website_balances`
--

CREATE TABLE `website_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `system_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `system_balance_comm` decimal(10,2) NOT NULL DEFAULT 0.00,
  `depo_balance` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `distributor_balance` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `dealer_balance` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `agent_balance` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `editedby_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_balances`
--

INSERT INTO `website_balances` (`id`, `system_balance`, `system_balance_comm`, `depo_balance`, `distributor_balance`, `dealer_balance`, `agent_balance`, `editedby_id`, `created_at`, `updated_at`) VALUES
(1, 11858.00, 0.00, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, '2021-12-21 07:28:32');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `depos`
--
ALTER TABLE `depos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `distributors`
--
ALTER TABLE `distributors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ecommerce_cat_products`
--
ALTER TABLE `ecommerce_cat_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ecommerce_cat_shops`
--
ALTER TABLE `ecommerce_cat_shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_orders`
--
ALTER TABLE `ecommerce_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ecommerce_order_items`
--
ALTER TABLE `ecommerce_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ecommerce_order_payments`
--
ALTER TABLE `ecommerce_order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_payment_collections`
--
ALTER TABLE `ecommerce_payment_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ecommerce_products`
--
ALTER TABLE `ecommerce_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ecommerce_product_media`
--
ALTER TABLE `ecommerce_product_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_product_prices`
--
ALTER TABLE `ecommerce_product_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_sales_list_products`
--
ALTER TABLE `ecommerce_sales_list_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_shop_categories`
--
ALTER TABLE `ecommerce_shop_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_sources`
--
ALTER TABLE `ecommerce_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_accounts`
--
ALTER TABLE `member_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `my_roles`
--
ALTER TABLE `my_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_commissions`
--
ALTER TABLE `sale_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shipment_items`
--
ALTER TABLE `shipment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `shipment_returns`
--
ALTER TABLE `shipment_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipment_return_items`
--
ALTER TABLE `shipment_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shop_commissions`
--
ALTER TABLE `shop_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sr_commissions`
--
ALTER TABLE `sr_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sr_locations`
--
ALTER TABLE `sr_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT for table `sr_orders`
--
ALTER TABLE `sr_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sr_order_items`
--
ALTER TABLE `sr_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sr_salaries`
--
ALTER TABLE `sr_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `website_balances`
--
ALTER TABLE `website_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
