-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2021 at 11:44 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qtc_ctp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_account`
--

CREATE TABLE `tbl_admin_account` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_type` int(11) UNSIGNED NOT NULL,
  `account_username` varchar(200) CHARACTER SET utf8 NOT NULL,
  `account_password` varchar(200) CHARACTER SET utf8 NOT NULL,
  `account_fullname` varchar(200) CHARACTER SET utf8 NOT NULL,
  `account_email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `account_phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `account_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `force_sign_out` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin_account`
--

INSERT INTO `tbl_admin_account` (`id`, `id_type`, `account_username`, `account_password`, `account_fullname`, `account_email`, `account_phone`, `account_status`, `force_sign_out`) VALUES
(1, 1, 'crikkard0', 'ZRT1ImzURbY', 'Chilton Rikkard', 'crikkard0@shop-pro.jp', '8164251162', 'Y', '0'),
(2, 1, 'jwatting1', 'ScenH8hfWBYL', 'Jarid Watting', 'jwatting1@cargocollective.com', '3145099911', 'Y', '0'),
(3, 1, 'kcallis2', 'AczoEnaX', 'Kalina Callis', 'kcallis2@51.la', '3869428446', 'Y', '0'),
(4, 1, 'hgodfery3', 'wQMKrAfvR3', 'Herold Godfery', 'hgodfery3@ustream.tv', '5668260934', 'Y', '0'),
(5, 1, 'dfleming4', 'MsEGl9G6JAH', 'Donnamarie Fleming', 'dfleming4@netscape.com', '7739176246', 'Y', '0'),
(6, 2, 'cabramson5', '0CTkg1hHy0VB', 'Carlie Abramson', 'cabramson5@irs.gov', '8257365961', 'Y', '0'),
(7, 2, 'grusling6', 'xohWmn', 'Gonzalo Rusling', 'grusling6@google.ru', '4116440164', 'Y', '0'),
(8, 2, 'tdobble7', 'vNnhCXcgE', 'Tabitha Dobble', 'tdobble7@foxnews.com', '8299419221', 'Y', '0'),
(9, 2, 'alowen8', 'xAExGV0yOtaH', 'Amargo Lowen', 'alowen8@vistaprint.com', '1684741787', 'Y', '0'),
(10, 2, 'iconklin9', 'HrlDLMdnXg', 'Ileane Conklin', 'iconklin9@jalbum.net', '2924055507', 'Y', '0'),
(11, 3, 'egallemorea', '7rxK34', 'Emalia Gallemore', 'egallemorea@alexa.com', '5661164692', 'Y', '0'),
(12, 3, 'eokeevanb', 'bP5Vwx5JWq', 'Ellie O\'Keevan', 'eokeevanb@exblog.jp', '8084990632', 'Y', '0'),
(13, 3, 'aoheynec', 'bT0z8rTrMC', 'Alford O\'Heyne', 'aoheynec@diigo.com', '9661902512', 'Y', '0'),
(14, 4, 'cviegasd', 'sk8jlwKZ6X3a', 'Candra Viegas', 'cviegasd@mtv.com', '6101692309', 'Y', '0'),
(15, 4, 'fcoringtone', 'zJKCMPAcTKRn', 'Farah Corington', 'fcoringtone@oakley.com', '7916424363', 'Y', '0'),
(16, 4, 'byerbornf', 'HgoWZ1mDqJd', 'Batsheva Yerborn', 'byerbornf@state.tx.us', '2632999282', 'Y', '0'),
(17, 4, 'gdodshung', 'Mj0i9mP', 'Gael Dodshun', 'gdodshung@nasa.gov', '1928211072', 'Y', '0'),
(18, 4, 'fpipworthh', 'j2ipjbp8zT4z', 'Flinn Pipworth', 'fpipworthh@addtoany.com', '2044872707', 'Y', '0'),
(19, 4, 'mpepleri', 'ZZzxTDh4GN', 'Mariana Pepler', 'mpepleri@quantcast.com', '6628575314', 'Y', '0'),
(20, 4, 'otitcumbj', 'xASY4Q0ZPc0', 'Orlan Titcumb', 'otitcumbj@tamu.edu', '1651875781', 'Y', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_authorize`
--

CREATE TABLE `tbl_admin_authorize` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL,
  `grant_permission` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin_authorize`
--

INSERT INTO `tbl_admin_authorize` (`id`, `id_admin`, `grant_permission`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 2, 2),
(12, 2, 3),
(13, 3, 3),
(14, 3, 4),
(15, 3, 5),
(16, 3, 7),
(17, 4, 1),
(18, 4, 10),
(19, 5, 2),
(20, 5, 6),
(21, 5, 8),
(22, 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_permission`
--

CREATE TABLE `tbl_admin_permission` (
  `id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(200) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin_permission`
--

INSERT INTO `tbl_admin_permission` (`id`, `permission`, `description`) VALUES
(1, 'module_dashboar', 'Quản lý Slide'),
(2, 'module_customer', 'Quản lý khách hàng'),
(3, 'module_order', 'Quản lý  đơn hàng'),
(4, 'module_storage', 'Quản lý kho hàng'),
(5, 'module_production', 'Quản lý sản xuất'),
(6, 'module_supplier', 'Quản lý nhà cung ứng'),
(7, 'module_product', 'Quản lý sản phẩm'),
(8, 'module_shipping', 'Quản lý vận chuyển'),
(9, 'module_account', 'Quản lý tài khoản'),
(10, 'module_setting', 'Quản lý cài đặt');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_type`
--

CREATE TABLE `tbl_admin_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `type_account` varchar(500) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin_type`
--

INSERT INTO `tbl_admin_type` (`id`, `type_account`, `description`) VALUES
(1, '1', 'Quản lý - Điều hành'),
(2, '2', 'Kho'),
(3, '3', 'Vận  Chuyển'),
(4, '4', 'Sản xuất');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company_slide`
--

CREATE TABLE `tbl_company_slide` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL,
  `slide_order` tinyint(3) UNSIGNED NOT NULL,
  `slide_title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `slide_img` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_company_slide`
--

INSERT INTO `tbl_company_slide` (`id`, `id_admin`, `slide_order`, `slide_title`, `slide_img`) VALUES
(1, 1, 1, 'Sản phẩm đặc trưng 1', 'local'),
(2, 1, 2, 'Sản phẩm đặc trưng 2', 'local'),
(3, 5, 3, 'Sản phẩm đặc trưng 3', 'local');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_customer`
--

CREATE TABLE `tbl_customer_customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `customer_code` varchar(100) DEFAULT '',
  `customer_enterprise` enum('Y','N') NOT NULL DEFAULT 'N',
  `customer_company` varchar(500) DEFAULT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_password` varchar(200) NOT NULL,
  `customer_email` varchar(50) DEFAULT '',
  `customer_register` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `customer_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `force_sign_out` enum('0','1') DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer_customer`
--

INSERT INTO `tbl_customer_customer` (`id`, `id_admin`, `customer_code`, `customer_enterprise`, `customer_company`, `customer_name`, `customer_phone`, `customer_password`, `customer_email`, `customer_register`, `customer_status`, `force_sign_out`) VALUES
(48, 1, '66-403-3775', 'N', 'Kwinu', 'Zorine Chapleo', '6455703066', 'byflWIaZ', 'zchapleo1b@spotify.com', '2020-06-16 00:00:00', 'Y', '0'),
(47, 1, '78-701-7747', 'N', 'Thoughtbridge', 'Giacopo Lester', '8421940271', 'D3HxJqLr4q', 'glester1a@jiathis.com', '2020-04-10 00:00:00', 'N', '0'),
(45, 0, '01-196-1117', 'Y', NULL, 'Cookie Bonas', '3668118658', '8sOfexv', 'cbonas18@storify.com', '2020-07-14 00:00:00', 'N', '0'),
(46, 1, '28-664-1184', 'Y', 'Riffwire', 'Diena Cod', '6275558617', 'jhTSUgI', 'dcod19@imdb.com', '2020-03-02 00:00:00', 'N', '0'),
(44, 0, '21-194-8615', 'N', 'Eare', 'Sara Farragher', '6604642082', 'HIVe3Of', 'sfarragher17@cmu.edu', '2020-09-03 00:00:00', 'N', '0'),
(43, 1, '71-193-0268', 'N', 'Gigaclub', 'Sam Laurance', '1551838973', 'CR7DeD', 'slaurance16@comcast.net', '2021-03-02 00:00:00', 'N', '0'),
(41, 1, '13-127-9382', 'Y', 'Ailane', 'Cristy Maddicks', '5333649695', 'gzqtHaT5cEKj', 'cmaddicks14@theatlantic.com', '2020-10-14 00:00:00', 'Y', '0'),
(42, 0, '93-052-4641', 'Y', 'Photospace', 'Adah Duigenan', '9312141849', 'IwEUHrPpEQlA', 'aduigenan15@trellian.com', '2020-04-16 00:00:00', 'N', '0'),
(40, 1, '72-759-4516', 'N', 'Kazu', 'Alvinia Hutfield', '8761501610', '91WCNMfacOY', 'ahutfield13@examiner.com', '2021-06-01 00:00:00', 'Y', '0'),
(38, 1, '69-421-6559', 'Y', 'Livepath', 'Norri Lampett', '5829601802', 'F5zsnKUF2L', 'nlampett11@auda.org.au', '2021-06-09 00:00:00', 'Y', '0'),
(39, 1, '23-829-5212', 'N', 'Gabvine', 'Sansone Baroc', '4572865413', 'X5pvqEEn9P', 'sbaroc12@wikipedia.org', '2020-06-05 00:00:00', 'Y', '0'),
(37, 1, '16-107-2421', 'Y', 'Digitube', 'Shannon Warnes', '2142527165', '9IyOuG', 'swarnes10@businessweek.com', '2020-12-29 00:00:00', 'N', '0'),
(36, 0, '90-147-4579', 'N', 'Janyx', 'Earle Edgler', '9864316011', 'SKfeeovz36cl', 'eedglerz@businessweek.com', '2021-02-09 00:00:00', 'Y', '0'),
(35, 1, '01-361-6558', 'Y', 'Layo', 'Lexis Moorcroft', '5859367975', 'Kh5oxu1u9on', 'lmoorcrofty@google.com', '2020-08-26 00:00:00', 'Y', '0'),
(34, 0, '42-845-6938', 'Y', 'Trudoo', 'Konstanze Pilsbury', '5392124356', 'zbzUMc7XDh', 'kpilsburyx@dot.gov', '2020-07-28 00:00:00', 'N', '0'),
(33, 1, '75-495-4476', 'Y', 'Ozu', 'Nedi Hallwell', '1194711789', 'IVqUoDfZvE', 'nhallwellw@about.me', '2020-12-09 00:00:00', 'N', '0'),
(32, 1, '14-262-1430', 'Y', 'Fadeo', 'Katheryn Files', '3881239510', 'OvvPkD5qDX', 'kfilesv@livejournal.com', '2021-01-09 00:00:00', 'N', '0'),
(31, 0, '60-213-6528', 'Y', 'Wikido', 'Jeromy Soeiro', '1599299329', 'GJH6BK086EP3', 'jsoeirou@telegraph.co.uk', '2021-05-15 00:00:00', 'Y', '0'),
(30, 0, '52-332-4233', 'N', 'Izio', 'Georgianne Beeckx', '6106537479', 'k0Gwe49f1b', 'gbeeckxt@chicagotribune.com', '2021-05-16 00:00:00', 'N', '0'),
(29, 1, '73-361-5773', 'N', 'Feedbug', 'Wat Lovett', '1462646582', 'Iml3Hxu', 'wlovetts@craigslist.org', '2020-09-08 00:00:00', 'N', '0'),
(28, 0, '99-903-2052', 'N', 'Oozz', 'Geoff Fritschmann', '5867793043', 'l8qGAsCOd', 'gfritschmannr@illinois.edu', '2020-09-28 00:00:00', 'Y', '0'),
(27, 1, '46-505-9314', 'N', 'Muxo', 'Lyndsey Judkins', '1073267178', 'DZO8nCTNhzP', 'ljudkinsq@twitpic.com', '2020-06-20 00:00:00', 'N', '0'),
(26, 0, '44-572-7268', 'Y', 'Realcube', 'Mauricio Cratchley', '4179471186', '6Nwmaq0KM52E', 'mcratchleyp@qq.com', '2020-11-22 00:00:00', 'Y', '0'),
(25, 0, '89-870-2879', 'N', 'Fivebridge', 'Francisca Feander', '6492333026', '3fuVLB', 'ffeandero@fastcompany.com', '2021-05-24 00:00:00', 'Y', '0'),
(24, 0, '78-510-7578', 'N', 'Voolith', 'Axe Baudet', '6831790328', '5EuQXJuQ', 'abaudetn@4shared.com', '2020-05-03 00:00:00', 'Y', '0'),
(23, 0, '43-661-6604', 'Y', 'Jabbercube', 'Sigrid McDool', '2835866916', '8D1j0YXi9ZBg', 'smcdoolm@statcounter.com', '2021-03-28 00:00:00', 'Y', '0'),
(22, 1, '70-168-5963', 'N', 'Divanoodle', 'Teriann Dericut', '9267797002', 'OiOzrod3o', 'tdericutl@is.gd', '2020-06-06 00:00:00', 'Y', '0'),
(21, 1, '29-663-3254', 'Y', NULL, 'Clayborne Rapley', '7176847751', 'yqdl9IpayVl4', 'crapleyk@e-recht24.de', '2020-06-28 00:00:00', 'Y', '0'),
(20, 1, '71-247-5969', 'N', 'Centidel', 'Alexandr Kull', '4737051885', 's8KgEpIgQ', NULL, '2020-08-01 00:00:00', 'N', '0'),
(19, 1, '37-810-7598', 'N', 'Ailane', 'Jonathan MacCague', '4539812991', 'dKZLfPiLg', 'jmaccaguei@infoseek.co.jp', '2020-10-31 00:00:00', 'N', '0'),
(18, 1, '34-195-6913', 'Y', 'Zoomzone', 'Hestia Burnel', '2545181805', 'SjMy1ipM8', 'hburnelh@umich.edu', '2021-03-18 00:00:00', 'N', '0'),
(17, 0, '09-060-6114', 'Y', 'Aimbo', 'Minna Sandilands', '7228274187', '9WQqTDc7', 'msandilandsg@harvard.edu', '2020-06-26 00:00:00', 'N', '0'),
(16, 0, '07-853-6860', 'Y', NULL, 'Laure Townend', '3925144163', 'YaSM7h5Tqh', NULL, '2020-08-07 00:00:00', 'N', '0'),
(15, 0, '64-252-1645', 'N', 'Jamia', 'Lucretia Moughton', '8692431507', 'M3Ra3JsDU26L', 'lmoughtone@utexas.edu', '2020-11-06 00:00:00', 'Y', '0'),
(14, 1, '65-648-8500', 'Y', 'Zoomlounge', 'Niccolo Dymidowski', '6492266845', '4B9EbLKecl', 'ndymidowskid@bigcartel.com', '2020-10-06 00:00:00', 'N', '0'),
(13, 0, '43-617-1056', 'Y', NULL, 'Haily Kenworthy', '2889247888', 'P1QOSoRP8', 'hkenworthyc@nih.gov', '2020-12-31 00:00:00', 'N', '0'),
(11, 0, '42-359-5041', 'Y', 'Agivu', 'Verne Wile', '1252009106', '3Efnji1tBytO', 'vwilea@webmd.com', '2020-09-29 00:00:00', 'Y', '0'),
(12, 1, '36-542-8975', 'Y', 'Fivechat', 'Denice Sweeten', '1452451620', 'eevDEKvv', 'dsweetenb@google.it', '2020-11-01 00:00:00', 'N', '0'),
(10, 0, '92-381-7637', 'N', 'Tavu', 'Adolf Scouller', '5844158481', '1cohPl', 'ascouller9@blog.com', '2021-05-08 00:00:00', 'N', '0'),
(9, 1, '70-896-8524', 'N', 'Leexo', 'Cicily Chyuerton', '3928920388', 'fgTJeeZb63eR', 'cchyuerton8@usa.gov', '2021-02-08 00:00:00', 'Y', '0'),
(8, 0, '80-850-8950', 'Y', 'Jaxnation', 'Amalea Lowis', '5196991905', '7G782Nq0j3', 'alowis7@so-net.ne.jp', '2021-05-12 00:00:00', 'Y', '0'),
(7, 0, '56-300-6204', 'Y', 'Fliptune', 'Lanette Wildman', '4422839620', '7HTjTU', 'lwildman6@intel.com', '2020-11-22 00:00:00', 'Y', '0'),
(6, 1, '55-268-8983', 'N', 'Devify', 'Anselma Husthwaite', '2631322915', 'CO5ppPfMAwE', 'ahusthwaite5@engadget.com', '2020-09-07 00:00:00', 'Y', '0'),
(5, 1, '56-070-2741', 'N', 'Feedmix', 'Leeann Frear', '5226300496', 'Ww1prPPOP', 'lfrear4@over-blog.com', '2020-04-27 00:00:00', 'Y', '0'),
(4, 0, '17-700-7744', 'Y', NULL, 'Joelie Sodor', '9864536999', '0sdiGC', 'jsodor3@spotify.com', '2020-03-12 00:00:00', 'N', '0'),
(3, 0, '34-742-3874', 'Y', 'Linklinks', 'Paulita O\'Boyle', '4694209577', '11gNjRXfsx', NULL, '2020-08-12 00:00:00', 'Y', '0'),
(2, 1, '36-555-2752', 'Y', 'Tagopia', 'Poppy Eeles', '3678452651', 'yMVUoM1', 'peeles1@hibu.com', '2020-08-29 00:00:00', 'N', '0'),
(1, 1, '01-961-6189', 'Y', 'Divape', 'Olympie Thoms', '4033363822', 'Kkpu7WtJJ', NULL, '2020-03-04 00:00:00', 'Y', '0'),
(49, 0, '17-056-6107', 'N', 'Blogpad', 'Cristy Smellie', '1193383510', 'FKBOCMcAix', 'csmellie1c@wikipedia.org', '2021-05-20 00:00:00', 'N', '0'),
(50, 0, '95-737-0239', 'Y', 'Skipstorm', 'Marcellus Dilawey', '6894039421', 'c5pfFfin', 'mdilawey1d@usgs.gov', '2020-12-07 00:00:00', 'N', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_delivery`
--

CREATE TABLE `tbl_customer_delivery` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_customer` int(11) UNSIGNED NOT NULL,
  `delivery_company` varchar(255) CHARACTER SET utf8 NOT NULL,
  `delivery_deputy_person` varchar(255) CHARACTER SET utf8 NOT NULL,
  `delivery_deputy_phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `delivery_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `delivery_default` enum('Y','N') CHARACTER SET utf8 NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer_delivery`
--

INSERT INTO `tbl_customer_delivery` (`id`, `id_customer`, `delivery_company`, `delivery_deputy_person`, `delivery_deputy_phone`, `delivery_address`, `delivery_default`) VALUES
(1, 48, 'Voomm', 'Claudell Gaskell', '1141500845', '197 High Crossing Park', 'N'),
(2, 2, 'Rooxo', 'Cybill La Torre', '2692328070', '96 Delladonna Trail', 'Y'),
(3, 45, 'Voolith', 'Darin Malpass', '5848587935', '5 Raven Hill', 'Y'),
(4, 22, 'Livetube', 'Leland Laise', '6608716269', '585 Pond Court', 'N'),
(5, 20, 'Demimbu', 'Jeniffer Cleator', '9908043772', '48 Jana Trail', 'Y'),
(6, 22, 'Rhynyx', 'Bellanca Gribbin', '9619322493', '11416 Rowland Court', 'N'),
(7, 32, 'Quatz', 'Eberhard Chitson', '4943141658', '152 Becker Court', 'N'),
(8, 10, 'Youfeed', 'Zola Ruspine', '4972962296', '18 Everett Way', 'Y'),
(9, 9, 'Edgeify', 'Bentlee Conahy', '2546395387', '93344 5th Crossing', 'N'),
(10, 22, 'Trupe', 'Beverlee Batchan', '6463414197', '96831 Killdeer Circle', 'Y'),
(11, 50, 'Linktype', 'Laurent Lukasen', '4869426649', '8648 Bonner Court', 'Y'),
(12, 16, 'LiveZ', 'Kristofor Midlane', '4127023971', '56854 Spenser Court', 'Y'),
(13, 41, 'Flipopia', 'Darin Duligal', '3547452734', '9765 Pond Street', 'Y'),
(14, 36, 'Cogibox', 'Phyllys Shovlar', '6096301277', '57 Pond Court', 'Y'),
(15, 15, 'Cogibox', 'Torrey Tydeman', '5559328911', '747 Fulton Junction', 'Y'),
(16, 27, 'Linktype', 'Beau Granger', '5062764231', '9375 Sundown Avenue', 'Y'),
(17, 44, 'Skippad', 'Anni Goodley', '7296140769', '6 Reindahl Circle', 'Y'),
(18, 17, 'Thoughtbeat', 'Marcile Glanders', '9044702267', '59 Buena Vista Way', 'Y'),
(19, 32, 'Oyope', 'Euell Wurst', '4701327561', '30 Muir Road', 'Y'),
(20, 10, 'Eayo', 'Tonnie Bergstram', '9144312038', '08 Holy Cross Street', 'N'),
(21, 7, 'Twiyo', 'Romola Petren', '1725922429', '5999 Farmco Way', 'Y'),
(22, 35, 'Midel', 'Merla Tunnow', '4518312256', '7 Gerald Court', 'N'),
(23, 49, 'Kamba', 'Robyn Ahearne', '8537962885', '43 Logan Trail', 'Y'),
(24, 16, 'Wikibox', 'Benita Iles', '9986583936', '764 Mcguire Court', 'N'),
(25, 33, 'Teklist', 'Kordula Blagbrough', '8879198300', '1 Browning Center', 'Y'),
(26, 39, 'Trilith', 'Caldwell Kirkbride', '2423838540', '94391 Debs Street', 'Y'),
(27, 16, 'Zoovu', 'Nicki Siggens', '5215583929', '2545 Almo Plaza', 'N'),
(28, 38, 'Fivespan', 'Raffarty Caneo', '7969932970', '87 Londonderry Crossing', 'N'),
(29, 25, 'Realbridge', 'Margaret Ianniello', '8598673738', '5724 Bultman Plaza', 'Y'),
(30, 26, 'Flashdog', 'Kylie Aitken', '2539401037', '3 Oriole Crossing', 'Y'),
(31, 2, 'Photospace', 'Petra Keitch', '7553056414', '32270 Stang Street', 'N'),
(32, 14, 'Skibox', 'Neely Crop', '1843748351', '51207 Gulseth Avenue', 'N'),
(33, 49, 'Thoughtstorm', 'Michaela Forrestor', '5917531166', '201 Atwood Alley', 'N'),
(34, 48, 'Cogilith', 'Nata Chalke', '1583708740', '037 Lighthouse Bay Plaza', 'Y'),
(35, 35, 'Eayo', 'Cicily Meadley', '1715364070', '66 Debra Avenue', 'Y'),
(36, 49, 'Edgepulse', 'Viole Jagger', '5993799294', '33464 Leroy Circle', 'N'),
(37, 29, 'Babblestorm', 'Tana Schwandermann', '7462848450', '6 Bultman Park', 'Y'),
(38, 28, 'Meetz', 'Gustave Bestiman', '3518703160', '7 Hagan Road', 'Y'),
(39, 38, 'Yodel', 'Amelia Waldocke', '3789103272', '90549 Katie Parkway', 'Y'),
(40, 24, 'Aibox', 'Kermit D\'Oyly', '2642246193', '9 Crescent Oaks Drive', 'Y'),
(41, 45, 'Tagfeed', 'Klarika Streeting', '3621376097', '09448 Orin Road', 'N'),
(42, 42, 'Flipopia', 'Veronica Elderidge', '7715629056', '714 Scott Plaza', 'Y'),
(43, 2, 'Rhynyx', 'Lizzie Le Breton De La Vieuville', '5933996378', '0042 Waywood Avenue', 'N'),
(44, 40, 'Quamba', 'Debora Sprigg', '8407502662', '61248 Leroy Lane', 'Y'),
(45, 17, 'BlogXS', 'Jacklin Somerled', '5134525899', '553 Carey Avenue', 'N'),
(46, 34, 'Izio', 'Lesli Hurdiss', '6139102459', '1 Waubesa Circle', 'Y'),
(47, 9, 'Twitternation', 'Lenette Stollberger', '5963464032', '3741 Village Green Road', 'Y'),
(48, 21, 'Yakitri', 'Dwayne Squier', '3175687215', '18583 Randy Trail', 'Y'),
(49, 46, 'Skimia', 'Bernadette Cressar', '1108931199', '73 Beilfuss Road', 'Y'),
(50, 15, 'Dabjam', 'Angeli Ludgrove', '4989418254', '55 Del Sol Plaza', 'N'),
(51, 12, 'Avamba', 'Desi Doret', '1269273932', '42 Sherman Avenue', 'Y'),
(52, 12, 'Kare', 'Marlane Geraudel', '7477757750', '6229 International Way', 'N'),
(53, 3, 'Meetz', 'Rainer Mayhow', '9383278057', '38371 Holmberg Parkway', 'Y'),
(54, 14, 'Thoughtworks', 'Bridget Hamly', '7406177033', '7 Sullivan Park', 'Y'),
(55, 37, 'Lajo', 'Stacy Galland', '6006956265', '865 Division Avenue', 'Y'),
(56, 43, 'Mita', 'Eric Seres', '8373599022', '1 Schlimgen Pass', 'Y'),
(57, 45, 'Oloo', 'Templeton Boadby', '8652747238', '5185 Victoria Park', 'N'),
(58, 8, 'Linklinks', 'Shawn Gullen', '5311463583', '917 Melvin Circle', 'Y'),
(59, 9, 'Trupe', 'Rochella de Vaen', '3392943478', '803 Sachs Point', 'N'),
(60, 3, 'Kwilith', 'Allie Kubicka', '7135310057', '182 Sycamore Road', 'N'),
(61, 1, 'Linktypeweuirh', 'Laurent', '2324545457', '86433438 Bonner Court', 'Y'),
(62, 4, 'Thosidlnoc', 'vokea', '2787443455', '123128648 Bonner Court', 'Y'),
(63, 5, 'kviowwdvnmclvk', 'perennc', '6788967452', '78967898648 Bonner Court', 'Y'),
(64, 6, 'vgdvlmwqeuweiqwu', 'jrackkir', '2123433557', '789058648 Bonner Court', 'Y'),
(65, 11, 'werwerwerxsx', 'miyemmc', '1223456552', '3238648 Bonner Court', 'Y'),
(66, 13, 'skjtjieeirrr', 'mia', '6782347733', '18648 Bonner Court', 'Y'),
(67, 18, 'hurasksd', 'kicticcyr', '2347890455', '864823 Bonner Court', 'Y'),
(68, 19, 'monruyuv', 'Gruuroio', '3456678912', '11458648 Bonner Court', 'Y'),
(69, 23, 'tueryscl', 'Monalisa', '2345678789', '234238648 Bonner Court', 'Y'),
(70, 30, 'spemio', 'nutifood', '1234234567', '128648 Bonner Court', 'Y'),
(71, 31, 'lumian j', 'Lucia key', '1233455678', '12348648 Bonner Court', 'Y'),
(72, 47, 'Periternc', 'Perter macr', '7897893452', '8648567 Bonner Court', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_shipping`
--

CREATE TABLE `tbl_customer_shipping` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_customer` int(11) UNSIGNED NOT NULL,
  `shipping_reminiscent_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `shipping_contact_person` varchar(255) CHARACTER SET utf8 NOT NULL,
  `shipping_contact_phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `shipping_default` enum('Y','N') CHARACTER SET utf8 NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer_shipping`
--

INSERT INTO `tbl_customer_shipping` (`id`, `id_customer`, `shipping_reminiscent_name`, `shipping_contact_person`, `shipping_contact_phone`, `shipping_address`, `shipping_default`) VALUES
(1, 1, 'Mybuzz', 'Jacquetta Cordaroy', '4722244921', '176 Thompson Center', 'Y'),
(2, 2, 'Dynazzy', 'Sonnie Pocklington', '1177504328', '2877 Towne Pass', 'Y'),
(3, 3, 'Edgeify', 'Roshelle Timbridge', '7561978340', '870 Brown Plaza', 'Y'),
(4, 4, 'Jayo', 'Chicky Haburne', '3091498882', '7895 Everett Street', 'Y'),
(5, 5, 'Mymm', 'Sallyann Valsler', '1607435050', '99 Lakeland Way', 'Y'),
(6, 6, 'Aimbu', 'Yettie Pretti', '5969701380', '1875 Commercial Crossing', 'Y'),
(7, 7, 'Thoughtblab', 'Molly Tooting', '2108018437', '68399 Arrowood Crossing', 'Y'),
(8, 8, 'Talane', 'Lida Baumber', '6735130095', '4582 Prairieview Circle', 'Y'),
(9, 9, 'Fivespan', 'Rainer Kapelhof', '9213216022', '33100 Waywood Way', 'Y'),
(10, 10, 'Buzzbean', 'Faustine Revington', '9521323598', '8595 Waywood Crossing', 'Y'),
(11, 11, 'Agimba', 'Ario Marklin', '3055531851', '33 Jenna Road', 'Y'),
(12, 12, 'Snaptags', 'Gaby Dentith', '8825352969', '41 Mcbride Park', 'Y'),
(13, 13, 'Fatz', 'Sherwynd Grestye', '8104912089', '39755 Cascade Point', 'Y'),
(14, 14, 'Shuffletag', 'Ranee Wann', '5912620430', '3638 Grim Street', 'Y'),
(15, 15, 'Gevee', 'Batholomew Belsey', '1616419993', '50771 Elmside Park', 'Y'),
(16, 16, 'Eamia', 'Bart Sjostrom', '2995496755', '61442 Bellgrove Crossing', 'Y'),
(17, 17, 'Kwinu', 'Shanan Spears', '6892198227', '9 Dahle Center', 'Y'),
(18, 18, 'Roombo', 'Micheil McLae', '4533820111', '45059 Delaware Pass', 'Y'),
(19, 19, 'Kwimbee', 'Lelia Halpen', '2777434721', '5446 Maple Wood Point', 'Y'),
(20, 20, 'Blogtag', 'Tasia Achromov', '4937142863', '57 Gina Place', 'Y'),
(21, 21, 'Zoonder', 'Tamar Jobb', '6515053055', '1140 Monica Park', 'Y'),
(22, 22, 'Skalith', 'Jacinta Witt', '5629418499', '737 Northview Way', 'Y'),
(23, 23, 'Vidoo', 'Lesley Byforth', '2254714355', '77 Cottonwood Lane', 'Y'),
(24, 24, 'Livefish', 'Elnar Ronchi', '7323229273', '6911 Golf Lane', 'Y'),
(25, 25, 'Jamia', 'Devan McKern', '2515462840', '334 Reindahl Terrace', 'Y'),
(26, 26, 'Babbleset', 'Ebba Bruyns', '4661239707', '19 Derek Junction', 'Y'),
(27, 27, 'Dabfeed', 'Eduard Yglesia', '2325761221', '79 Elgar Parkway', 'Y'),
(28, 28, 'Einti', 'Vernor Antonognoli', '1075825581', '8 Sommers Crossing', 'Y'),
(29, 29, 'Gigazoom', 'Fritz Gaven', '7581648895', '5240 Mccormick Street', 'Y'),
(30, 30, 'Feedfire', 'Darby Blaymires', '3066868786', '14768 School Pass', 'Y'),
(31, 31, 'Kamba', 'Graham Boylin', '3399280105', '50 Rusk Plaza', 'Y'),
(32, 32, 'Jabbersphere', 'Elsie Power', '6354480123', '08804 Norway Maple Parkway', 'Y'),
(33, 33, 'Jamia', 'Francois Frickey', '1785468738', '36 Algoma Park', 'Y'),
(34, 34, 'Zoovu', 'Correna Yurevich', '5854576593', '0 Dahle Place', 'Y'),
(35, 35, 'Fivespan', 'Ruddie Thiem', '5314056966', '3568 Jackson Drive', 'Y'),
(36, 36, 'Cogidoo', 'Jeanna Avard', '7509502490', '389 Havey Road', 'Y'),
(37, 37, 'Yadel', 'Elora Linklater', '4204614876', '219 Almo Lane', 'Y'),
(38, 38, 'Buzzster', 'Federico Emby', '2845994086', '233 Raven Circle', 'Y'),
(39, 39, 'Wordtune', 'Leigh Colleford', '3884172000', '53913 Longview Trail', 'Y'),
(40, 40, 'Fivespan', 'Aurelia Winridge', '5861928966', '603 Scoville Parkway', 'Y'),
(41, 41, 'Realcube', 'Shannah Sindell', '1657262813', '637 Summit Trail', 'Y'),
(42, 42, 'Babbleblab', 'Darryl Bridgewater', '1241907670', '876 Forest Avenue', 'Y'),
(43, 43, 'Eazzy', 'Ariel Schiementz', '8229300983', '7419 Oakridge Court', 'Y'),
(44, 44, 'Layo', 'Raffarty Delap', '7973252697', '99 Veith Circle', 'Y'),
(45, 45, 'Chatterbridge', 'Woodrow Steketee', '8974002354', '0715 Warbler Place', 'Y'),
(46, 46, 'Dabvine', 'Gypsy Larvent', '7578639653', '9 Bay Drive', 'Y'),
(47, 47, 'Linklinks', 'Winfield Jochens', '7511073637', '28 Welch Terrace', 'Y'),
(48, 48, 'Zoozzy', 'Adey Edsall', '2897436870', '15844 Milwaukee Terrace', 'Y'),
(49, 49, 'Cogidoo', 'Billi Pidgeley', '9899324669', '4679 Sherman Avenue', 'Y'),
(50, 50, 'Topiclounge', 'Hamid Hammatt', '6789280077', '463 Kropf Road', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_export_production`
--

CREATE TABLE `tbl_export_production` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_production` int(10) UNSIGNED NOT NULL,
  `material_export_code` varchar(50) NOT NULL,
  `export_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_export_production_material`
--

CREATE TABLE `tbl_export_production_material` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_export_production` int(10) UNSIGNED NOT NULL,
  `id_material` int(10) UNSIGNED NOT NULL,
  `export_quantity` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_export_storage`
--

CREATE TABLE `tbl_export_storage` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_shipping` int(10) UNSIGNED NOT NULL,
  `storage_export_code` varchar(100) NOT NULL,
  `export_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `export_note` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_export_storage_detail`
--

CREATE TABLE `tbl_export_storage_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_export_storage` int(11) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `export_quantity` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_import_production`
--

CREATE TABLE `tbl_import_production` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_production` int(10) UNSIGNED NOT NULL,
  `production_import_code` varchar(200) NOT NULL,
  `import_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_import_production_product`
--

CREATE TABLE `tbl_import_production_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_import_production` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `import_quantity` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_import_supplier`
--

CREATE TABLE `tbl_import_supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `storage_import_code` varchar(100) NOT NULL,
  `storage_import_note` text,
  `import_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_import_supplier_material`
--

CREATE TABLE `tbl_import_supplier_material` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_import_supplier` int(10) UNSIGNED NOT NULL,
  `id_material` int(10) UNSIGNED NOT NULL,
  `import_quantity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_material`
--

CREATE TABLE `tbl_inventory_material` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `inventory_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_material_detail`
--

CREATE TABLE `tbl_inventory_material_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_inventory_material` int(11) UNSIGNED NOT NULL,
  `id_material` int(11) UNSIGNED NOT NULL,
  `current_quantity` varchar(15) CHARACTER SET utf8 NOT NULL,
  `inventory_quantity` varchar(15) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_product`
--

CREATE TABLE `tbl_inventory_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `inventory_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_product_detail`
--

CREATE TABLE `tbl_inventory_product_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_inventory_product` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `current_quantity` varchar(15) CHARACTER SET utf8 NOT NULL,
  `inventory_quantity` varchar(15) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_material_material`
--

CREATE TABLE `tbl_material_material` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_admin` int(11) UNSIGNED NOT NULL,
  `id_supplier` int(11) UNSIGNED NOT NULL,
  `id_unit` int(11) UNSIGNED NOT NULL,
  `material_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `material_code` varchar(200) CHARACTER SET utf8 NOT NULL,
  `material_spec` text CHARACTER SET utf8 NOT NULL,
  `safety_stock` varchar(500) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_material_material`
--

INSERT INTO `tbl_material_material` (`id`, `id_admin`, `id_supplier`, `id_unit`, `material_name`, `material_code`, `material_spec`, `safety_stock`) VALUES
(1, 1, 11, 1, 'Bread - Crumbs, Bulk', '1214', 'Revise Drain Dev in Head & Neck Subcu/Fascia, Open', '83'),
(2, 1, 19, 1, 'Nantuket Peach Orange', '7867', 'Reposition Lumbosacral Plexus, Percutaneous Approach', '64'),
(3, 1, 13, 1, 'Chicken Thigh - Bone Out', '4530', 'Drainage of Tonsils, External Approach, Diagnostic', '48'),
(4, 1, 3, 1, 'Beef - Ground Lean Fresh', '9962', 'Planar Nucl Med Imag of Chest & Neck using Thallium 201', '1'),
(5, 1, 9, 1, 'Cup - Paper 10oz 92959', '7032', 'Replacement of Low Art with Synth Sub, Perc Endo Approach', '28'),
(6, 1, 19, 1, 'Halibut - Fletches', '9139', 'Bypass R Com Iliac Art to R Ext Ilia w Nonaut Sub, Perc Endo', '11'),
(7, 1, 2, 1, 'Potatoes - Yukon Gold 5 Oz', '3865', 'Repair Vagina, External Approach', '21'),
(8, 1, 8, 1, 'Brandy - Orange, Mc Guiness', '1452', 'Introduction of Oth Hormone into Central Art, Open Approach', '0'),
(9, 1, 9, 1, 'Wine - Magnotta - Bel Paese White', '9998', 'Revision of Autologous Tissue Substitute in Bladder, Endo', '41'),
(10, 1, 18, 1, 'Corn Kernels - Frozen', '6531', 'Supplement Abdominal Wall with Synth Sub, Open Approach', '0'),
(11, 1, 1, 1, 'Tea - Herbal Sweet Dreams', '4942', 'Fusion of Left Sacroiliac Joint with Int Fix, Open Approach', '43'),
(12, 1, 3, 1, 'Wine La Vielle Ferme Cote Du', '9532', 'Replacement of Right Breast using DIEP Flap, Open Approach', '7'),
(13, 1, 12, 1, 'Cheese - Swiss', '0619', 'Drainage of R Great Saphenous with Drain Dev, Perc Approach', '63'),
(14, 1, 20, 1, 'Glass Clear 7 Oz Xl', '232', 'Supplement Right Foot Vein with Synth Sub, Open Approach', '36'),
(15, 1, 6, 1, 'Vinegar - Champagne', '2769', 'Restriction of Bladder with Intraluminal Device, Via Opening', '27'),
(16, 1, 3, 1, 'Chevril', '4225', 'Restrict R Hypogast Vein w Extralum Dev, Perc Endo', '50'),
(17, 1, 15, 1, 'Wine - Ej Gallo Sonoma', '8127', 'Extirpation of Matter from Pulmonary Valve, Perc Approach', '23'),
(18, 1, 16, 1, 'Fish - Soup Base, Bouillon', '0111', 'Repair Bilateral Inguinal Region, Perc Endo Approach', '42'),
(19, 1, 18, 1, 'Chickhen - Chicken Phyllo', '8851', 'Supplement Left Renal Vein with Autol Sub, Perc Approach', '15'),
(20, 1, 6, 1, 'Trueblue - Blueberry Cranberry', '8442', 'Extirpation of Matter from R Foot Bursa/Lig, Open Approach', '71');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_material_supplier`
--

CREATE TABLE `tbl_material_supplier` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL,
  `supplier_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `supplier_code` varchar(50) CHARACTER SET utf8 NOT NULL,
  `supplier_address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `supplier_email` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `supplier_phone` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_material_supplier`
--

INSERT INTO `tbl_material_supplier` (`id`, `id_admin`, `supplier_name`, `supplier_code`, `supplier_address`, `supplier_email`, `supplier_phone`) VALUES
(1, 1, 'Ulta Beauty, Inc.', '65-051-7334', '68170 Dorton Park', NULL, '5527849199'),
(2, 1, 'Allegiance Bancshares, Inc.', '61-952-6329', '72 Westport Way', 'aludovici1@pbs.org', '2079693560'),
(3, 1, 'CPI Card Group Inc.', '41-525-6584', '1 David Trail', 'joluney2@dell.com', '6158558989'),
(4, 1, 'Comtech Telecommunications Corp.', '11-787-7772', '2176 Dayton Street', 'aavrahamof3@free.fr', '1007746083'),
(5, 1, 'Qumu Corporation', '29-055-6344', '90593 Bunker Hill Point', 'gflanigan4@mozilla.org', '4705197133'),
(6, 1, 'Transportadora De Gas Sa Ord B', '52-415-7040', '6 Summerview Hill', 'kverrick5@bravesites.com', '6694046522'),
(7, 1, 'SPX FLOW, Inc.', '08-131-8339', '66998 Pond Trail', 'wkuhle6@mtv.com', '8908704462'),
(8, 1, 'Gentex Corporation', '25-682-7371', '0579 Waywood Lane', 'hskip7@ameblo.jp', '2476266192'),
(9, 1, 'Lands\' End, Inc.', '15-450-0548', '80711 Clarendon Court', 'mfirk8@google.com.hk', '6629831287'),
(10, 1, 'STAAR Surgical Company', '02-829-6555', '06204 Monterey Alley', 'kschout9@chicagotribune.com', '9029739702'),
(11, 1, 'CSP Inc.', '56-355-2717', '9 Mcguire Circle', 'jdunninga@mac.com', '3819822966'),
(12, 1, 'Cohu, Inc.', '22-370-5921', '17 Monterey Parkway', 'mlogesdaleb@biglobe.ne.jp', '6517563445'),
(13, 1, 'Roadrunner Transportation Systems, Inc', '44-070-9682', '452 Fisk Trail', 'iimesenc@yahoo.com', '3239349052'),
(14, 1, 'Hawaiian Holdings, Inc.', '61-971-5366', '83 Aberg Park', 'slewseyd@latimes.com', '2177548722'),
(15, 1, 'Western Asset Municipal Defined Opportunity Trust Inc', '95-583-4139', '97 Pine View Road', NULL, '4276222633'),
(16, 1, 'BHP Billiton Limited', '65-779-0569', '65102 David Parkway', 'fdecroixf@hc360.com', '4238258746'),
(17, 1, 'Angie\'s List, Inc.', '78-140-0943', '5928 Porter Street', 'agladdisg@mediafire.com', '7863626029'),
(18, 1, 'Ark Restaurants Corp.', '44-670-6769', '5870 Declaration Street', 'yhendricksonh@bigcartel.com', '4725206010'),
(19, 1, 'WisdomTree U.S. Quality Dividend Growth Fund', '48-698-4006', '3921 Annamark Park', 'kpembryi@rakuten.co.jp', '8144717844'),
(20, 1, 'Grupo Aval Acciones y Valores S.A.', '39-432-4986', '68481 8th Point', 'dhanniganj@intel.com', '5649329481');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `quantity_packet` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_order`
--

CREATE TABLE `tbl_order_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `order_code` varchar(100) NOT NULL,
  `order_date_delivery` date NOT NULL,
  `order_record_delivery` tinytext NOT NULL,
  `order_record_shipping` tinytext NOT NULL,
  `order_record_cancel_note` tinytext NOT NULL,
  `order_status` enum('1','2','3','4','5','6') NOT NULL DEFAULT '1' COMMENT '1: xác nhận ,2: sản xuất,3: đóng gói & giao hàng, 4: thanh toán,5: hoàn tất, 6: huỷ',
  `order_total_cost` varchar(100) DEFAULT NULL,
  `order_note` text,
  `order_date_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_process_log`
--

CREATE TABLE `tbl_order_process_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `order_status` int(11) UNSIGNED NOT NULL,
  `process_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_production_machine`
--

CREATE TABLE `tbl_production_machine` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL,
  `machine_title` varchar(50) NOT NULL,
  `machine_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_production_machine`
--

INSERT INTO `tbl_production_machine` (`id`, `id_admin`, `machine_title`, `machine_description`) VALUES
(1, 1, 'Máy Màng 01', 'Máy cán màng'),
(2, 1, 'Máy Màng 02', 'Máy cán màng'),
(3, 1, 'Máy In 01', 'Máy in'),
(4, 1, 'Máy In 02', 'Máy in'),
(5, 1, 'Máy Ly 01', 'Máy Ly'),
(6, 1, 'Máy Ly 02', 'Máy Ly'),
(7, 1, 'Máy Lọc 01', 'Máy Lọc'),
(8, 1, 'Máy Lọc 02', 'Máy Lọc');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_production_material`
--

CREATE TABLE `tbl_production_material` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_production` int(10) UNSIGNED NOT NULL,
  `id_machine` int(10) UNSIGNED NOT NULL,
  `id_material` int(10) UNSIGNED NOT NULL,
  `shift_time` enum('S','T') NOT NULL DEFAULT 'S' COMMENT 'Ca Sáng ,Ca tối',
  `production_date` varchar(100) NOT NULL,
  `material_quantity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_production_product`
--

CREATE TABLE `tbl_production_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_production` int(10) UNSIGNED NOT NULL,
  `id_machine` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `shift_time` enum('S','T') NOT NULL DEFAULT 'S' COMMENT 'ca sáng ,ca tối',
  `production_date` varchar(100) NOT NULL,
  `product_quantity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_production_production`
--

CREATE TABLE `tbl_production_production` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL,
  `id_machine` int(10) UNSIGNED NOT NULL,
  `production_code` varchar(100) NOT NULL,
  `week_title` varchar(100) NOT NULL,
  `production_begin_date` varchar(50) NOT NULL,
  `production_end_date` varchar(50) DEFAULT NULL,
  `production_note` text,
  `production_status` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT 'Y:hoan thanh, N chưa thực hiện',
  `create_production` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE `tbl_product_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL,
  `category_title` varchar(200) NOT NULL,
  `category_description` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`id`, `id_admin`, `category_title`, `category_description`) VALUES
(1, 1, 'BAO BÌ', 'Bao bì'),
(2, 1, 'Ly Nhựa', 'Ly nhựa'),
(3, 1, 'TÔ NHỰA', 'Tô nhựa'),
(4, 1, 'Túi Nhựa', 'Túi nhựa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_product`
--

CREATE TABLE `tbl_product_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_unit` int(10) UNSIGNED NOT NULL,
  `id_packet` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_description` text NOT NULL,
  `product_img` varchar(500) NOT NULL,
  `product_unit_packet` varchar(20) NOT NULL,
  `safety_stock` varchar(500) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product_product`
--

INSERT INTO `tbl_product_product` (`id`, `id_admin`, `id_customer`, `id_category`, `id_unit`, `id_packet`, `product_code`, `product_name`, `product_description`, `product_img`, `product_unit_packet`, `safety_stock`) VALUES
(48, 1, 37, 4, 7, 6, '001U0J7', 'Beer - Paulaner Hefeweisse', 'Bypass Spinal Canal to Urinary Tract w Synth Sub, Open', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAChSURBVCjPpZExCgIxEEVfZI/jGWy8gFewX6w9h7C1V1iwXRsvYCN4DUEEJ3HzLbIRF4zNZsq8/+bDOPH/zZgKVABHASzdVj0vAp6A4bH60CBEp5s6iV9TZZWAjULO0rqvFekbdq7QQUQisFZKG08Mw+prMwL2JUOkJwIr2Sd/cSMgGdqyIZVcDIbUJBDqR+6QgFPJAGcA5spZz32A3eRrvgFwMGHf7+AlJwAAAABJRU5ErkJggg==', '90', '65'),
(47, 1, 8, 2, 7, 4, '0SWD07Z', 'Lettuce - Romaine', 'Revision of Autol Sub in L Knee Jt, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJeSURBVDjLhZNdSFNhGMc3z9lUREVnGmgzEZa7kGBe6kWYg26syz7uoqKgEOpiUjfdjALJiwmDYKSMburm7EInG8yNttm+UitwQm26sVgrcSPWvtf5977HbSyc9sB/73ne53l+7//snCMCIKIiIVYqlVM6nc6vUCgukZylexWxKpVqwmAweGgP3avN0Z8QWTxEAbMZ8XgcvuVlIQ9VRK83LRahtrG6WqtVDhaJafK5uRlBtxuxWAzbZP3IMDhoahK0JRYjuL4u1GjPVgVQcXcI+NLWBs5oRCQSAbe0hM2eHkS7uxHt6MCH1lZwi4uHNbLuNALsd3ZibWQELwcGYBscRFgux15/P3Z7e7FDQO', '51', '50'),
(46, 1, 4, 4, 7, 6, '09TP4ZZ', 'Soup - Knorr, Ministrone', 'Resection of Accessory Sinus, Perc Endo Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAALcSURBVDjLjZJpSNNxHMb/VhTUi3pjVFoyj+wyPDG1sDUTE7ES1zCPuXRbZjZrSk63qVPzKNuc+ncmHmPOeU3nkYkEmnjhlVdaBPoiddGbMDEoj6clZEYlvnhe/fh8+P4eHgIAsVWE/kdY4wVWC7NqE0yXUZZLeebFvs7mu3+9bwnzvE1pMyrK6lzFYWxOYaSFbFuCYqaxfK7OEfOtbHzty8a81g1zmqOYKLD4vC0B6b8/Wz/SioVuEssjSiz2kJh93YL2FLuZbQn8vG9wJssfrH0ZrcXqVB2WJnTQd8ghCbmo/aeAQ7Vi5bMuLciDqSBDacsRDJtB+cPI73otHx8akqFvFKFLcRdn2adbnG', '511', '2'),
(45, 1, 35, 4, 7, 3, '0D950ZX', 'Chervil - Fresh', 'Drainage of Esophagus, Open Approach, Diagnostic', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAACfSURBVCjPY/jPgB8yUFNBiWDBzOy01PKEmZG7sSrIe5dVDqIjygP/Y1GQm5b2P7kDwvbAZkK6S8L/6P8hM32N/zPYu2C1InJ36P/A/x7/bc+YoSooLy3/D4Px/23+SyC5G8kEf0EIbZSmfdfov9wZDCvc0uzLYWyZ/2J3MRTYppn/14eaIvKOvxxDgUma7ju1M/LlkmnC5bwdNIoL7BAAWzr8P9A5d4gAAAAASUVORK5CYII=', '647', '85'),
(44, 1, 30, 3, 8, 3, '0WWHX3Z', 'Coffee Cup 12oz 5342cd', 'Revision of Infusion Dev in Retroperitoneum, Extern Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHxSURBVDjLpVPJiipBEJyP6n/q+7TL6Km/QERBEfTiRdGDB0+CSB1EEUTcyuWg4r622i4oKuZUFKMyvGEej9cQdFeTEZmRmfVGRG//gz9+tNttpdVq6c1mkzUaDYNzbtRqNVatVvVyuaz8KiDIqiDz5XJJx+ORbrebxOFwoNlsRqVSiReLRfVHgS+yeT6fCQ/eu92OTNOk0+kk/0G0UCiY+Xxe/SbwVTZ/kEejEa3XazIMQ2IwGBCqeogwxngmk1GeAsKv/gjYbDZkt9sFaSjJq9WKrFYb9Xo9ms/nMqbT6VAymdSfAqJZDMooFSSbzS5go36/T4vFQghYJbrdruwHqovH4+wpUK/XDTRru9', '98', '49'),
(43, 1, 32, 1, 7, 5, '0GQ64ZZ', 'Vermacelli - Sprinkles, Assorted', 'Repair Left Carotid Body, Percutaneous Endoscopic Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFySURBVBgZpcE7a1RBGMfh3xwnRziwBlOoBEG28FYriMSU9oKkTop8AcFWEKystRDEL2BnIVbapdVC8EbAYCEokgsL2T05M+/fd9CFRTcYyfMESRxGxK08fHMLOANcAy6BhAiYqKpAFcDMsMz2TNT6+dPHLmPi9s0LAUksP3j9WP/p/tN3ckR+WcQ9WdtkTOxvdWGOD1+2W1ykMJ3it7MnjlKEwFQfv7UUw1FX4yJOUoMT8Ol7y0Eo54CLOJkibnVhjoOybBQRJ1PALd19ycgMEzy/d53PX3eYpj8/iyxTVDiZUfwYdly5eJLNYWKs19T0mppeU9NrasaUMkWFk4liMMp0ErttYlKXRZfFJL', '946', '91'),
(42, 1, 46, 4, 7, 3, '04U737Z', 'Cookie Dough - Oatmeal Rasin', 'Supplement Left Colic Artery with Autol Sub, Perc Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAIzSURBVDjLhZNbbtpQEIazgaygG4nUjXRH3QAySvvSKokEgeaBSBGFXJqAQkMxYCA03EJMzcWxCb6AAYP9d46BhqRURfqw5Zn5z5y5bAHYWufd++hbwkdkCYUYEBXCz2yv/dcDtwmOsL/yIkotHU11irY5g9QfIp5tgdmWPtsvBJbB0YOLCuaOC0kHjtIGvhQMfO9PMSYnh2A25sN8VyIrAY4ZNBvezyTvvUsNn66fIGgOXPpGD+jOwr4U4TwBetkhHLFvYy+loqounE74MfxnKupDeBn06M+k55ThukzAYbHe6TG630lBx8dLBbsXCooSUOsBqapJ15mgPwFkEtAplcEcMIjYoiYcE8gLoo', '962', '11'),
(41, 1, 2, 3, 8, 4, '0KHY0MZ', 'Sultanas', 'Insertion of Stimulator Lead into Low Muscle, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKdSURBVBgZBcFLiFZlGADg5/3OmRlHbbwkpmQ37WZlmBYWIrnRRUnRolVQbcRN7Yp20SLauSvENgaB1C6KdpnlBbHMFl2IMsK7Ntg43mbm/8/53p4nMtO2dw+9Pj4x9koJGzEPAQIZZNXV+vfVK3kgrk29fXjPjgFAZKbnPjh6+NM3N64tJRYnjQQgE9LkjaH9J666dGbu1u+//rH0yJ4dc9BCaeKh0bZZ/Nu/mhJBkJU+q65LM8Pe1gdus+nB1vE6OT/rw1PPvvH1ku8/fH6uQEQszMxmtClGCm3QFJoggiJQrZwYteOple69f2y8nViwDwokAQUlKBFKhBKhRChNuPjfjHsWDj2yNOx85n', '313', '47'),
(40, 1, 30, 3, 7, 6, '0KN34ZZ', 'Rum - Spiced, Captain Morgan', 'Release Left Neck Muscle, Percutaneous Endoscopic Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJcSURBVDjLpZPNS9RRFIaf+5tx/JqxUZGKQtEkyJBKw1ZhG0mSFkW1aVW7Wgpusv4CoX20KIgIKowgZSgwrIVghFQbM2swQRM/xmx05jf33nNaBJNWtKizPJzzcDjv+xpV5X8q+mvDPTdxVXpV6BahQxVUGBchpcL1xEnNbp43my9wz02nCrdMfV+jSXagsRpQj+aW8JkJwg8DaREuVJ/S0d8AbsSc0mTnYLDjPFqxDb8xiYTLqMuDKSMoa8bYgPDzA8KF0dN15/RREWBHTI0qM5HWe3EJ1vD5NNhviAtRn/8BEcWU1hMpbeXr2MWsCA07z+tKAKBCb9DQH9cYSJgGt87I4yWQAvgCL56B2C', '735', '51'),
(39, 1, 40, 4, 8, 3, '0PHB04Z', 'Mangostein', 'Insertion of Int Fix into L Clavicle, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJOSURBVDjLlZLdTxJQGMa96K4/oPUHdFfrpntyZrXsoq25tlbroi6qi7ZuYsuZ0UXRWiv72NS0gjIgDQ1LS0wkwU/UVEREUkEIBBFE+V48ve/ZICza7OLZOTt739/znHPeEgAlhZpyB8+MLa58HHL63H2zy4muycVku8UZahl2TNJ688/6wsbd31yBLps3BNdqFCvrMYRjSURIvOdzzdAcmozWhTaLc+8WADXvHHb6RhYCEdEU2kiIJu/aBtwEywE3k2lQKjz8NB7Sjs7vygPMDu9ddogmUliNxsWaSGfwM5sViqcy+BHeFCl4r6YkzwzTnXlA9/SSh924md25qFDszMnmfGuga4pEd3QjiT', '714', '55'),
(38, 1, 48, 2, 8, 3, '0Y6N0Z4', 'Veal - Kidney', 'Detachment at Left Foot, Complete 1st Ray, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJZSURBVDjLtZNfSFNRHMdvzHqPIEIo8qEgKIrwIa4PE+ceZo0cC8Ymtq3duz/un7uz7spkxe022dx0e9OxgUqSQdlLYLZemkEhPvRQCGlxqAaW5kutovDbuTeUwgIjOvDlHH7w/fy+v8M5DADmX8T8N0Ay2WuVZenNXwNSqaSGmqVEQq5K0mX8zkR8Akec/loVkMmk2UymT1VfX4ql5ueFQh4TEzcRj1/cACCezu4lXxDE4ppRAel0CrlcFtlsPwYG+jE6Oozx8XGMjAwjJp79BUDcYZ6c9h6s2FxYbnOC6M1+GrkX5fIDlEolTE1NoVgsQpIkCsxCiITWAYQLcUu8H+SUI0ZOWEPLZhtIw/', '161', '73'),
(37, 1, 11, 1, 8, 3, '021V49P', 'Sauce - Plum', 'Bypass Sup Vena Cava to Pulm Trunk w Autol Vn, Perc Endo', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAANpSURBVDjLfdPdb1N1AMbx5/ScvtHTZbSwDcrWlXXIUOdkZiRmioQXSYgX82p4YUKMkJjswpkRjCJckUWDhBCZGoJhYrwYMIUQzbhReZOZLtvqateVgdKVjYV2W3t+b+fl5wWSwI3fP+CT5+ZRpJR43LHkYZ1bopsJsZMJ2sYEB+NsmDLxkyo2HamUnd7Pd0cInkh5DBwdP7SZm+KbjZXtMVXzwVRsVPlXYiqXwoWJ7/siypdJYVo9Qth7Tu1t+PUp4LOxgx117viFcGA1ZsRDjJZTUKULL+sv4rvfvy74rY62oLJtuC2uhybuLuHv++U3B/Y3DwKA69PRgyEmWH+VXoeRcga/LdzEgrmIuD', '501', '40'),
(36, 1, 12, 3, 8, 6, '04S24ZZ', 'Steam Pan - Half Size Deep', 'Reposition Gastric Artery, Percutaneous Endoscopic Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAI3SURBVDjLfZM7aFRBGIW/mXt3swmuaMjGBwqCBlQsRPCB2GknCIpgJSKKkNZGxM7CQrSw0Ngp2vsoLBS0srERUSMiKkFRYkLMO7t778x/LO7VxFdOMWc4//xn5j8wThL/wqnz9w6BrgIrhQNBuSzEQMp/odtnjm7t6m00cC5FQG4OK2rEkHHuyuP+/xpIdDV6GvRfvsWGvr5feuIdn96+4sLpfkxikReA9yl969exZecuEp/gkwreeyqJxwzMFjEwCQM6OmrUOpfAH1kJEU2k7x5sf1Fbunmzc/73sg4QDJ6/HmZUQ4UaiwQ+v/nKsb0QzEid/Ma1e25UnFuQtHPEh3eQwCdVfNJRBlBSpY', '997', '15'),
(35, 1, 41, 1, 8, 4, '037B3F6', 'Wine - Chateau Aqueria Tavel', 'Dilate R Radial Art, Bifurc, w 3 Intralum Dev, Perc', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKOSURBVDjLdVNNTxphEH5YVhZFRCCNmB6UYmgIRSJJD6QcS0QTT7145NT/4KUXY4yJHjzzB/gDJl68NE0IJCbaA+GzJBQBQ1RU1ALLbmfeAqmJTjJ5331n5pl5Zmah6zpYSQw+n+/z4eFhxuv1xuhb5rehyqFQKJJIJFLsw2+jOHEpGwx6i72OjvB2ZQW/T0+hbWzgDf4J25TjY7iWl9E4O0NvfV3YPLpukAwk7GRRFFhsNgwGA0zb7Zg0GmGXJKFmcjFbrcI2OTMD8xCYY6XhHWZZRq5cFk75YhEagXRmZ9GZnsbAbEYunxe2XKEwBsCIYwnQbJT95/w8ip0Olii7m6hJFKD3++iqKn7RWS', '288', '37'),
(34, 1, 38, 1, 9, 6, '047P0DZ', 'Flower - Commercial Spider', 'Dilation of R Ant Tib Art with Intralum Dev, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAIuSURBVBgZpcHNi01hAMfx73PmzHWUO0QmbiOhyQyZMYWGRhbYSfkLpKwYpSRTSikLxE7IxsrGSmJBGtSQnXfJ5CUvg+G699x5u/ec53l+zilFNtR8PkYS0xEwTQHTFJJ5dX3to6hlxQpjAn4TjbHXH5ytrgca/MmQm1i+7akNyRgFHYv6LjYbY0BkBMZg69+Xfn109INA/NJUaJFcOjr+efAgcDkkZ1XHJzMaX87hkiYIWjCmSFTaTGndiQIS4EEeECaYtWD4at8R4HJILjWBfIJLCsgLP/WedOIr46N3aI4WglLwCZIFLMWOQwXkF5MJyRlF3k6RTIKSCdKxGsWOnUTzOgEDCPAgAcKEc8', '145', '47'),
(33, 1, 8, 4, 8, 6, '0CQ60ZZ', 'Scallops - 20/30', 'Repair Lower Gingiva, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAALKSURBVDjLjZJbTNIBGMWpth7soa2th24PStZD2bronPPByB6aa805iTFFYonGTC3Imk6YeEGnmXJVCg0UhFIMDf8Sm8IcNa9LEdF0y2kqvKU524rwBDZNW3M+nKfvO7+d7+wjASDtpsLk46zxuvCVBd0JfFaH+l7mhjXcig47uDnf1ZybcDJ+tjnUv9hyDNulzCLX7gnQwDwqWWyPxJKFje/91VgyxmJRfwquOvLXPQEUyYerPaMWrLxXwDeqweoHBRY+ErCVXJrdEyAp4XaGW8td/zbWBv9kO9ZcJnjsEhSnXTX+F5BBCWfJWddWJAwKFHfifRxaxLDkSdZPj5GHLx1CeDr5cNTfxwX2OS', '561', '40'),
(32, 1, 8, 2, 8, 5, '0U160K6', 'Flour - Strong', 'Bypass L Fallopian Tube to L Fallop w Nonaut Sub, Open', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKbSURBVDjLpZNdSNNRGMb/EcjsxiCkMKhGCEaxTAoh60qyIiKaiDTNUklTWatwoLnSbbiaa5vDMefGcv/+29gHa3ObqWvpprTp5kckrpvu2q0XhVZU7OlsF2I32sfFe/G85zy/l/c5HAoA9T+15eHS0lJOIpHI/ScA//liXYd55vOLUGxN6l1Zu8ssNPwxgJgr2x3zENpnofC9Q3fgPTK6VhGo3BZAzBy+OQbpqxXclDnh9o+/FZhmsrpO4cWle3rOloDX01F7ryWMRs0oRBrbfKb3aMg7m9H3n9qg1Oi0vwGWl5f1JKwkCSsZjUY/RCKR9OrqKoYY97e5uTk4HA6QHmQa4xdyF2q1el0uly', '691', '71'),
(31, 1, 19, 3, 9, 6, '02HL0NZ', 'Tea - Herbal Orange Spice', 'Insertion of Intracard Pacer into L Ventricle, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJZSURBVDjLjZNNaBNREMf/25Q1Lqmk2NYamo+amI+mREOhFhRS0CKKN8FT8NSeiiBIDiJYk4MXEcGTwVtI48FQouLNix48RCoh4GETqAmioTFG0qT52HT3ObtgqiGHPBgGdmd+M2/m/zjGGPpPLBazyLL8XpIkW7fbRavV+tZoNFbC4bDYHzuKAafT6TyZmZmxCYIAFVAoFMz5fP4x/brWHzsyCFCv16fT6TQymYwG0Ov1qNVqlkGxAwEUjI2NDa5UKmmAdrut2dAAnuc1z3GcBvgLGRpAM0AoFGJGoxE0SM3Ub0MDaOLwer2gQSKbzeKEoYIHa1P2nXfBqaEA1C5TK4qiCL/UwOLxInznbg', '132', '56'),
(30, 1, 11, 1, 7, 3, '01DK0ZZ', 'Wine - Semi Dry Riesling Vineland', 'Extraction of Head and Neck Sympathetic Nerve, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAL+SURBVBgZXcHPbxRlHMDhz3femdkunZ3Zdrublgptg7W0aig28SAYk8aDUuNFjkRvhBMHNfwL3vGgQcWEGGJiTCQxgjFoECTUqG1AKZj+MqUUum1xdmdnZ3dm9tW1TTQ+jxw5+vLlQqkwqZTiv4T/E4RtAiRpi431jW/NQqkwefb0x4ghJK2YfwmCRiO0hXEACFob6JZGk/L2qbcmTaUUKQkSn6f2zQxdl0PKp/bSmXO4e/c6c7Uz3C/75HIuDzd9lGlRqUW8cURjmQqDHb6/iT9qUwkCwku3CYI1giBAGjM06lXqYZVmPaBeD0iiGiItQDCFbZ5XBB2z62Q3vPMLmdd6KPXtJhsvUE+Gye', '782', '69'),
(29, 1, 38, 2, 9, 5, '0V1Q47K', 'Chilli Paste, Hot Sambal Oelek', 'Bypass Bi Vas Deferens to L Epidid w Autol Sub, Perc Endo', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJaSURBVDjLpVPNi1JRFP89v2f8RHHGaqOCJFNuohki+oBxE7Sp1oFQLXPXbqDFUG1btOgvyIKBoFmUixSJqERIzbFJ05lRpHn6xoYcP0af+nrnlmKBqzlwOPe+d3/nd37n3MtJkoSjmAJHNNVokcvlIoPBYFl29Pt9iKI49l6vN/Zut0sxGggE/ITjSIIMvqzRaGJ2u50d+t8mZarVasRiMZRKJX8wGIyyCmTG+xaLBTzPQ6vVjkGTQFpXKhWYTCa4XC4iXZE/R7lMJsPYbTYbGo3GP+WSFAJyHAelUsnYjUYj9Ho9wuEwCoWCX0XsVDpppUM6nY75iL3T6eDt86c4TL3E4VDeW0/h2t1V+H', '249', '92'),
(28, 1, 25, 4, 9, 3, '07QG4ZZ', 'Pork - Back Ribs', 'Repair Left Lower Extremity Lymphatic, Perc Endo Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKtSURBVDjLlZJvaNV1FMY/vz/3zrt77xjs7s7mVZNS3HAuFIWwXpRWexEYDANFKQpfyagE8Q8iUfinKHwTFL0wzBcWMWjpCxWJJQ6hHGOSNtzcTYmma7ipu97tfs85X1+s1DcmHnjgcB54zsNzTnDkzPge79ms3gpmhhqIGaqGmkfUHoKi4lGz3/ZuXLgSIDbvO9pXZnM8QX34/dDS//pYzXIAXcOHERNEBWeCU4czoTFTIFedpy6V48TVn9jSsgvntOohAQ/AhuZ3H7v5+JVOvuz7BCdreSCgBsDRs6P3hw21SZLZv+gdP0Hx1gAiijhlTrpASe5wu/pb4DMAQvlXAGD9C3miwDN/3ii/jn', '809', '39'),
(27, 1, 49, 4, 7, 6, '0QHD44Z', 'Potatoes - Pei 10 Oz', 'Insertion of Int Fix into R Patella, Perc Endo Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHXSURBVBgZpcE/S5VhGMfx7+8+T2VI0SDVKvYSrKE/0FsIwgZpCFqiISSiIcoigkIosWyrOR16AU2NETSGZUQoiNYgBJ1znufcz3VdeUvOIX4+igj2QhemFq6fPT/+ZLMXwxGAO+GOuREeeDhhhkcQZpg7h/fn7tLS2u23Tyfmq/Ez43P7hobTsSF2Y7jbszlgvurlSL3NP+xWP0diSxUWPJo8wW5dfbxCUUU4xaA1AggPzMEJ3ANzx9rA2sDCGVgwevwQ5kZREUGhJBRBJBEK5CIlISUkQ52g44mqDQpvjaIyN4oEhASCToAL3INOQFKHSmAKLDmFm1NU4cE2CSJIQEggkCAscMHsp4d4G9', '193', '46'),
(26, 1, 24, 4, 8, 3, '0RSGXZZ', 'Pears - Bosc', 'Reposition Right Acromioclavicular Joint, External Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAALKSURBVDjLjZJbTNIBGMWpth7soa2th24PStZD2bronPPByB6aa805iTFFYonGTC3Imk6YeEGnmXJVCg0UhFIMDf8Sm8IcNa9LEdF0y2kqvKU524rwBDZNW3M+nKfvO7+d7+wjASDtpsLk46zxuvCVBd0JfFaH+l7mhjXcig47uDnf1ZybcDJ+tjnUv9hyDNulzCLX7gnQwDwqWWyPxJKFje/91VgyxmJRfwquOvLXPQEUyYerPaMWrLxXwDeqweoHBRY+ErCVXJrdEyAp4XaGW8td/zbWBv9kO9ZcJnjsEhSnXTX+F5BBCWfJWddWJAwKFHfifRxaxLDkSdZPj5GHLx1CeDr5cNTfxwX2OS', '967', '62'),
(25, 1, 31, 2, 9, 3, '0NQ1XZZ', 'Beef Wellington', 'Repair Right Frontal Bone, External Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKZSURBVDjLpVNNSFRRFP7evNE3P6n5MzYTDVOi+QNZFrUIIlEIaiGCEBltgqBdYK6Eli2DFrYyalFCFETQdhiCCKIoMJxIxppKCQfnOc7kjG+c+9e5zxz6EVr04HAv99zvu98553uGUgr/83m3O0wkEhYRD1GMSim7aO2goK1M0vqR1jsUieHhYWH8qYDAPXT2IBQK9YbDYQSDQQQCAeh7hUIBa2trWFhYQDabfUFn5/4iiMfjzzo7O/uj0SgMw9hWNuccyWQSqVTqXpXAfntyUAk1WeYN+32W34QElJCQnMHwBNFy+CZM364qwerqqlab9f4EmwQe8Tcf695R2+qCFBOQFQdO7gN8e86Cox', '869', '63'),
(24, 1, 22, 1, 9, 6, '03HA0DZ', 'Tart - Butter Plain Squares', 'Insertion of Intralum Dev into L Ulnar Art, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAK/SURBVBgZBcFLiJVlGADg5/3+/4yOllro1BRZjpmXTAy7rIKCKAQJWrQpAhfRLtokroIiWkRUBEFE7QKpiCjaVBBhdqer3bQyyTE1bzPjeJk55z/f2/PEnY/v3j66ZMEDJWzBQgQIZJBVV+uB6VP5cZyZ2rHn5W19AIitT3+25/VHtqwvJZYljQQgE9KJswO7vp127ND8+d9+2XfpZy9vmwdoSxNrR9pm2a/HNSWCICvDrLouXRgM3b7mYrde1/q6nliUdd3Umy/evHb1WLwye3Jyf4mIizKzGWmKXqENmkITRFAEqvElI7bdPG7tqunRq9bd8+N1tz26NXPRw20SUBBBCpARSlCacPT0BV', '899', '65'),
(23, 1, 38, 2, 8, 6, '0KUS47Z', 'Sobe - Orange Carrot', 'Supplement R Low Leg Muscle w Autol Sub, Perc Endo', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAALFSURBVDjLjZPfS1phGMeFXdef0bVXMeiiQS0hNeeCuuhKUFzKEnU/lDEKxZazaEop20Ub1QpaRhdrjFVgGY4RyEYuj80y7SfMNH9l/vzufV9mrO1mBx7Oc77n+X7e533OeXkAeH+Gz+dr8ng8Y8vLy/6lpaWfi4uLybm5udD09LTr7ZTr1t/1V8nm5mYdMTuJuRiLxZBIJJBOp5HL5ZBKpRAMbsM1bim9dJqnxhxD9dcAv80fd3d3Ua1Wkc/nQSHRaBTxeBzlchnV8gVKFyF4VmZgsz72Dj17Wn8FoCtTc7FYBL1KpRLoczgcxvn5OYMWLo5xmd1G5fIHPn14A1P//SkGIOabpO1KNptlhk', '822', '38'),
(22, 1, 7, 4, 8, 6, '0WWK0JZ', 'Red Currants', 'Revision of Synthetic Substitute in Up Back, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHrSURBVDjLjZOxaxNhGIcTtRkUJ/8AB9FBHBT8U3ToLAouxkUQLEIVnRxcKiithIjBBsSgRLgMGlNjvSOh4XJ4XLhwIRwpd+a4L1xMjEMfhy+aS6W2w2/4Pngefry8bwJI7EoSOAykaHdOTt+JvTL/UY+SNAYXML1POO4OnS5YLTCtMYb5FcO8j26cR7MX0OyFeYE2OkQjuESrBWEI4wmMxjAcgRiAH4Bu7GBaUDcFm5YzL9gcnaHdAUUBVQXPk4JoCCKSklDI+AG8Lv2YF5QbJepbEgiFBIYjGMTgQEAQQj+A/BtmAk2k0JoTKhtQrYJtQxTJhH/gEPpT2O9DLh8TbHQu0zRkZSHAdiQsds', '552', '85'),
(21, 1, 33, 2, 7, 3, '07QK0ZZ', 'Gooseberry', 'Repair Thoracic Duct, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAD4SURBVDjLxZMxTsRAFEOdaAU1ogs0XCDKkTgKdBwFcZooJRINK+UGNJtvm2I20WQzEcUWWBppUvj971hT2cY1qnGlDgAwjqMlYT4kQXJz77quKgIkoWma3Sm20ff9/gYkMYNK5rquERF/Ay6NuUji9eNo0hCBCOLt+anaAC6N87ckPNzdQDJI42uM7Qa5ubRBhBJAxjRxDZiz7im1kcyiEeE1YBiGYoV5tRECleKcckDbtku/L+/ffry/XbLOKyu/C2AeIVcEVllFL1MlQEqgIMqA00SQh+JU8QyxEaKLgCmEz+MPQgApkDj/g9Q/bViCgQoAqn9/jb8mSSzHKz3sXAAAAABJRU5ErkJggg', '701', '41'),
(20, 1, 16, 4, 7, 3, '03VP4BZ', 'Sprouts - Onion', 'Restrict R Verteb Art w Bioact Intralum, Perc Endo', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAEXSURBVDjLY/j//z8DJZhhmBpg2POQn2wDDDof8HvOe3osYtXzDzCxuM2vP3gvfn4MJIfXAP22e0Ies58eK9r2+r//3Kf3YOIhq17eK9v95j9ITrv2jhBWA/Ra7kVEr375vXDrq/9+s57eUy+4IY0kJx2w6Nk9kFzE0uffgXIRKAboNtxlC1/+/GPljjdABc9+q+ZcM0Z3qmb5LWOQXOmml/8DZz7+qJB0hQ3FBerFNyNC5z/9nrXqxX+Pvgf35OMuSSPJSXtPfXQPJBc089F3oFwE1jBQTLkiZNtw51jq4qf/XVvuwsPAa9Kjexkrnv8HyclFXxTCGwsyERf4LctvHvPuvAePBf8pDz/Y1N', '138', '50'),
(19, 1, 17, 2, 8, 6, '0NNH3ZZ', 'Brownies - Two Bite, Chocolate', 'Release Right Lacrimal Bone, Percutaneous Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJGSURBVDjLpZNLbMxxEMc//+42Sh/b7cOjEVXV165UDw7iSkIEFxcuEpc2JOJxQkIkHnFz4+Ikri6kRBsbKhLR6ksvJEokdotVVbZLdx4OW0pajcRcJvkl8/3N9zMzgbvzPxGe7/Hs4IkRM42rmqvq7fMbL+34m0DB3OLjFRjxppImGsoaAlHduFAHcwROtV0cn5bpTM5zZKYziMjwQgKBu3Nu6KSbKaqG5rO3RJsDMWEoNfxZRFVVC0SEq7uuR+cwUFMaixswN8wdxwI1wx1i1bGIuuJuPBl9Oj9EVUXdMDeSX98w8W0CccHcKQhCmDn1kQZE5C8CooykRygrjLCsuIYPU2nUNW/Hv6OmCE', '721', '59'),
(18, 1, 38, 1, 9, 5, '30240X0', 'Lid - 10,12,16 Oz', 'Transfuse Autol Cord Bld Stem Cell in Central Vein, Open', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAALsSURBVDjLjdBbTJJhGAdw6qKLuuiqi04XZoeLsnXQOecFfWGu8ECQJs08UCADLMQvUVI0UcksQj4NzM1DU6RUEFtj1eZMR02nkOWxNeUiFdfWTM1sKv2Lb+u0WvPivz173vf5bc/DAMD4X/LitgkGTXvmJs3bMVEfsFIn31UTG7prw4/3/w7L2TtYnoYA31TTVvyeu7LA8jUBNSlbqClbMKYfi/C5R4dpazimLDsxZAqcXRNgjNus8w48xtxzI1YG7mHhhRGTLx3oLDrsWRPAY59NG2nM/Dr/qhW+URsWh+zwPqOgST5m/SeQRuwR3BEcn6OSCBhTWSuShKB+Klu27LWSeNdeCO9DNZxV6T', '316', '22'),
(17, 1, 19, 3, 9, 6, 'BV23Y0Z', 'Mushroom - Chanterelle Frozen', 'CT Scan of Prostate using Oth Contrast, Unenh, Enhance', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAALGSURBVDjLpZNdSNNRGMZ330V2GXXVRXVTICRd2IVIIFGSoJDWRUssRREJiswP1La16aab3x8tyoWl+T11tqmYmJbZh61pfvWFKZmoqZmp236dv1MxKrrowMP5n/95n+d5z3veIwNk/4PND1dz8z5nY2P0al1d0nJVVdhSebnXxt5cYeGO2ezsmGmtduyLUtnxOTn5+C8CLosl1tnQMONsseJsa2WlvpbF0lLHgtHoPVdQsHfWYLB/M91mtbuTH1YL0+lqxuLi7nyIitomkQOd5jrcQwMwMgQDDhgdZqW9jbn8/I8zen3/ktjHYYdHD0GISDEz+kzeyuVK2arZbHU/fwovn0FTI5jNUFMj1r', '661', '56'),
(16, 1, 2, 1, 9, 4, '0BQB7ZZ', 'Scrubbie - Scotchbrite Hand Pad', 'Repair Left Lower Lobe Bronchus, Via Opening', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKdSURBVDjLbZNNTFxVFMd/781jICiCCFoSC5YgGGAQG/E7EhckJFqMe5suNI27Ji7r3qXbLk2rSRuFhU1asESgxvoRm5qQoIAikECMdcIMAzO8++6957h4MyjKSW5OcnPv7/z/554bqCoTFz4eUNXPFQooLymKKqBKmvRwibdYs7t++8oH3QAR6YHzCk/l+juD+3/tolq7BClMUIHibpkDo4hGp6hGCoBXc/0ng9eGTtLZkUNTAqKSVpW0entLI40NES+/+R5HAKg+nBvoYvrubxQKFVQEAKmpUEVFKZYqxCbh31G1QBBlI54c7KLnsVa8B1VBRPFe8SI4UQ5iy2eTC8cBFO+FzfslsmEdcR', '178', '39'),
(15, 1, 16, 3, 9, 6, '0JQ13ZZ', 'Stock - Beef, Brown', 'Repair Face Subcutaneous Tissue and Fascia, Perc Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKYSURBVBgZBcFNiFZlGADQ87z3zjfjzDiMk5VimERmBmFpKgVRVATRQLRo5aaNhFA7pZW0qV1Ci0BoUVRQtLc2UmQaJVhBVChUhP2YDuow5sz3c7/36Zx46uipF9fNTR4oYQ82oC+QQVZdrb8tX83PY+X6kdPHF4cAAPHMG2dOf/jKnp2lxHymBiAT0tJ/Ix+dW/bvxcHqLz+dXzhzfHEAAG1pYkevbeZ/vqIpJWRlnFXXpbXR2OPb19t/T+tsXZrOeu/1x17+dMOpt58dAJSImM3MptcUbdAUmiCCIlBtnutZ3LvZtrsn17VzM+8BQEkCCkqEEqFEKBFKEy5dW3Pn7Mh9C+Hgw7doJpoXAK', '593', '17'),
(14, 1, 37, 1, 8, 6, '0Y393ZZ', 'Coconut - Creamed, Pure', 'Control Bleeding in Right Lower Extremity, Perc Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAIgSURBVDjLdVI9a1RBFD3z9r3sVwrdWCwYUkSLWKaQWOwf0EpIKSIi6QSxWyxSrE3+gUVEQREsU1ooiIRImhSCCImNIcj6kcVNNm/fzP2yeJu46yYXDpdh7jlzOHOdmeG47r+7azeuXMdWZwNiClEZQMHKuHqhgedrL/Dm4Xt3zIkxVEwMtXxYVMCqg/4PIfAw5T+BwDADSGRIJIeq5neeRgSi4QMFRhEVFKMSSBhBCEEIJIxioYyyTYICne2AArc62x+X72Q/MXXQRplzu2kUoV2ZwttvH0CBW2cKvLJfe/3v+7147vYkTc/gSCIYZ3CcYrq/i1s7r3tLs25vmOOOf8FeXlsA3FqYf1T3oQ', '845', '61'),
(13, 1, 22, 3, 8, 6, '0PB60ZX', 'Wine - Pinot Noir Pond Haddock', 'Excision of Left Scapula, Open Approach, Diagnostic', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKqSURBVDjLfVPRS1NhFP/du+suJLFN3VRcrQjZQxor7DECwSh6CHHgMgNB6kF871+IHtxeJTFiENFLVA/hy9yLYLWtLbSRFGbqbJtt624T57Z7O+fbEozqG+c7996d8/v9zjnfJxmGgf+tWCz2qFarjVerVYU8yAs7ODhg/1T6F0AikbBQwpzVavWq6jFUKAm6DhFNOTabFQsLr6H8LTkej1/l5I6Ojp7W1lasf90Gs+u6Ad3QCchAncAqlQqUZDJZqdfrZjIR9Fsm+3w+/6dk5HJ5AtIxdOWa+KZwstN5EoXCT8Fu8M9glYYwfiFOtNksePXyBc72nRfs/J9QwKicfG8uRmESJIn2xiY8W1', '160', '10'),
(12, 1, 1, 4, 9, 5, '0GQ64ZZ', 'Mangostein', 'Repair Left Carotid Body, Percutaneous Endoscopic Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJFSURBVDjLpZNNSFRRFMd/986dUaeZIS370BRbCKbgpiwIKYhWfSwKgqhNQau2bTOodq6CFkWbqBYtgmAIg7CgxL0iaBYZSYIfYfP9nHffe/e0mElrMW26m3s55/z+58/hHiUi/M8xjRLuprqiE9zFsQ0NNNerdRy0gzCquHlGVEMHd9QKx27tpucEeKtQ+gRhGUwCdAz8Ary/t9rQAY4kmQ5IdUDnIfCPw8IbWBwHBHb0gCXZWCBBiM3B/Guw67BvCAYvQ7IVpp6B50GZ0HweG5puzvT3K6X/oIXOmInpTA/0noXiMnx8AaXvcPA6rC3C2iwUwSjRfV3Dj+NKKZAajFIwlYXiLEzOQO9pOH', '911', '61'),
(11, 1, 35, 4, 7, 6, '0QHB0BZ', 'Saskatoon Berries - Frozen', 'Insertion of Monopln Ext Fix into R Low Femur, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHtSURBVDjLpVPJqiJBEHwf1f/UH+DydBTtLxBRUAS9eFH04MGTINIHUQQRt3I5eHBfW20XFBVzKgq75TGPNwxTEFSTXREZmVn1QUQf/4M/Av1+X+r1ekq321U7nY7GGNNarZbabDaVer0u/SjAyTIns/V6TefzmR6Ph8DpdKLFYkG1Wo1Vq1X5W4EXWb9er4SF/XA4kK7rdLlcRAyilUpFL5fL8heBl21mkHe7HW23W1ouV7Tf72mz2RBcGSKqqrJCoSCZArxexThgkEejMbndbrLb7S+xpQDWYDCgbDarmAK8WSqUYVXTNJrNZoJos9nJ6fzFd5uIow/oBwTT6bRqCrTbbQ3Ngl0c/Px0CD', '838', '47'),
(10, 1, 14, 4, 8, 3, '0X0H4JZ', 'Beef - Rouladin, Sliced', 'Alteration of L Wrist with Synth Sub, Perc Endo Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJSSURBVDjLpZM9aBRhEIaf2c3dJZvNxT+I0cJK0SJGwcKfwvIQFUsRG9HSKkGLKGhjKZGICViJ5RkQtLSQGOxsElEIFsKJCsZ4t7ls9u/b/cZCLxqTzoGBgRmeeV+YEVXlf6IL4MaDFyNVzzvVirUsIojgqyXsDIlY0iR+Pj5aG98UUPW9U1fO7N/qeb781fM7RZgaJqfnzgKbA5Yjyp7ny5OXC4Pfm1+2tDN1FLBFt1txeotyycUYsWNTswtpEtfHR2u31wFE6M2BlTDberF2oMvzqihKYS0uvlsuuSRp7hZodXJ67jywHqDKqip+Kyqku8fn6cxHd6m57ASxICKoreCI4DrOzszIwNjUbJ', '744', '39'),
(9, 1, 17, 2, 7, 6, '0RGL0KZ', 'Bread - Sour Sticks With Onion', 'Fusion of Right Elbow Joint with Nonaut Sub, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJ8SURBVDjLpZNLaFwFFIa/O8m0lTxm2hJHU61Omuk0M2o1aBOl1a3QkKXQlWRhXImCGxWkCxVCobhQcGFwJeJKKIgQQSFqrWBS0zRFE2xTOiZpHpMmITNzc+95dBHQlKTZeDYHDvwf5/GfwN35P1G/U/GDsXcnzLSoaq6q333U/XHP/QCJ7eJ3DmAU8415cs25QFS7d+tgG+D9pweWI4kqscdUogoiMr4bIHB3PrzynpspqoZuZu/YfywQE67Mja+KqKpqQkQY7P1y/7YdqClHG3KYG+aOY4Ga4Q6FlkJKXXE31qeHmfzqjNc1PkllaZggnHl1E6CKumFuzK7fYiVcQVwwdxJBHWbOS3uhK/', '508', '87'),
(8, 1, 20, 4, 7, 5, '06QF0ZZ', 'Dip - Tapenade', 'Repair Right External Iliac Vein, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHySURBVDjLtZPvT1JxFMb5O/gHskVzrrV+mFZomDdEDGkYKSXlRleY6IzcFdQ7lBgYeaELBNjFEpbWi9psRU7JnCa3VYTV/WfY01davkFk0/XivDp7Ps/Zc86RAZAdpmT/BWDLmun+5ZuS5X0P+paMML82SKZXeroqYGDttty22it6Po8iWeCxIAlI/5pF9Osj3M8MwPCsXex8ekVeEWAlYn+OxaKUxNx2FKmfcTzfjiH2ncNsnsfIOzu00RZxT4B1pZee3GTw4vdfVyEfxkTWAdfyMMJfHiL2LYgImcSyeAstgQt0GeBuxiQl8iEIP/iSW/eCrtiV0rLXkm3s1ThVnN6cQkj0w511osl7Ti', '310', '98'),
(7, 1, 30, 4, 7, 4, '03V90ZZ', 'Stock - Veal, White', 'Restriction of Right Ulnar Artery, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAIJSURBVDjLpZM9SJVRGMd/532vetOswQgjSoW2gj4Gh4ZoiIKGwGi4EtQQ0VxLQhAOEW2NzUVLOQRBBioUakGT5CBiGhZe8aameLv3nPc9H0/DvX7hHQSf4ZzDgf/v/3/O4VEiwl4qYo+VWT/I7EdxxSVEUsRZxFvEpYhLEJ+ANXhnEKfBGg5ef6W2A7yj7lRuh4MIKKgugMBKX/fOBMlqnn0iSNCVCwUiAVAImwQVNSBW12jBOUK6gCt+g5Agklb2kEIwSDBI0NQf6iLYcg2ATwCHBANiq6KtYoOEMohD0hoJ3L/lSuRtzpoQTBWiIeiKiSvtBARvMD9GcMk0+BTE4c0a2bbDFedgEK9BQu', '780', '6'),
(6, 1, 24, 3, 8, 3, '0JUF3JZ', 'Coffee Guatemala Dark', 'Supplement L Up Arm Subcu/Fascia w Synth Sub, Perc', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAI4SURBVDjLlVJNaBNBFP52d2J+tB5iGjFpvUgJtaVGhIA/p+pBsRcRD4o38ejdQ5F66C235CKYg3goCh4KCh7sRVoETQwGhBhFCfgTG9GC2WazO7Pjm9E0S7CgDz7e23n7vvfeN2PcffrjhpS4KqQ/5vs+hA9w5YWKJTj5AQQEl3Tuv1i8PJEDGfOlvHY+N5LAf9jCvXcz/ZgRmy5efn+HOnPqwuGR94Q38HTWz10/ugjPE+EAgdTBpYNX/qm77RApFxgQqKXJllbXty1iooPwzwac6DjOHs/ADRLwPwTKLp5I4v7aV1w4lkSn09FnT161Edl8g6mZKdRqNXz8NIKItFEqlQ57nveBeURAQo', '695', '98'),
(5, 1, 43, 2, 7, 6, '06110ZY', 'Crackers - Melba Toast', 'Bypass Splenic Vein to Lower Vein, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHbSURBVDjLpZM/a1RBFEfPnfciq4uChLgrWChaihBYbAxqBD+AgrGwVBDRxipgH1AMEQJpbawU9SvYCRaiEmOaBUkRDRYBwf3zZt691+K9DWuXxYELwzCce37MXHF3/mfJtYcv789d7jzZ7XvTHTDDzVBT3Bxzw1Uxd1wVNePIgdTb3NxefLuysJZ3LnRWpxrN0GpM1LjZ6+sqsJb3k4f+7p+J1QfJA0Du6izdOjMx4M7jLSqAGwCxVBxwc9TAcMwcNUNLr8qNqM6p9mHUtAJQv4IEQdzxILg4YkIIgkhARJHMySyQl9V9K2vAiBQAFwGBzMEEzJzMIUhGLqDiaKiMTa2OYPU/EAH3f0Ai4O', '918', '46'),
(4, 1, 38, 4, 7, 3, '07WNX0Z', 'Nantucket Cranberry Juice', 'Revision of Drainage Device in Lymphatic, External Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJsSURBVBgZfcFLbExhGIDh9z9zztw6marQUm1DNZEQEdUpsRC2lLgsJDZNGmFjY2nBErGzENewIEUQRBBBJFW3IC6xqqYSd4tWtOPMnMv/fdqYUIvxPEZVqWbn6sUzm+tyV3OpTMFaQUET2eSN7YdvdFHhUMWudR1OY23NxVwyXbAiWFUiK8YfLa3ZvXFpDxUOVbTUanZKpmZ5Jl9L67w5NDY1IKKICHWZzAkqXKpI6seoftZsae/a7Ez3ikwoaZox63H/7LGACocq9n3fE06dlh3L4hOaFMbLMiH48FTntjWGVLgD1wt+Oj8/Y4zDX8r5rZ/ibYcWvjxV09/R3NJKyXh4JuTDx2HtHVrU28', '63', '78'),
(3, 1, 1, 1, 8, 4, 'BR0D0ZZ', 'V8 Splash Strawberry Kiwi', 'Plain Radiography of Sacroiliac Joints using H Osm Contrast', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKvSURBVBgZBcG7ixx1AADg77czu5vL7Su3d5fEmHBBElBBEkvBVyqNdgYrwdbKRsm/YG8lFgoiNpYWChJBI4IPTAKSByQm5p17aOZ2ZnZ2Z2bH7wunz7x+brw+PhVFEQAIAACCAAio6oXtze0f4vH6+NRnH38utIJqUQIgCBqNAPIyRdA0Lc2i0ah9ePaDU3EURWqVUH4l+/6CfedyW2ePWO73XLv2iyvZp+5vJfr9gUc7iShu280K755utONICyBJdiRPd+ymqfy7y9L0gTRNhdkFs+nENJ+YT1PTaaoqMiEsEMQBMByu0ZT2vr/CR3/qvrVq/eATlsobptUx/VFfJ2qJ2x1pXghhhqAFBE', '109', '39'),
(2, 1, 13, 3, 8, 5, '051947Y', 'Apricots - Dried', 'Bypass R Brach Vein to Up Vein w Autol Sub, Perc Endo', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAH6SURBVDjLjZPPaxNBHMVT/wgRsVDPgpdIya3QitWDepAqWKgHQaSiPfij4CHtRSEXRUmwKYW2emkRoYgHUbQEkVLFSmoJXWtRUtlkk7WZ/TW7yyY+57t0wyY1moHHLuz3fWbesC8CICLWAaGoUPd/1CW0hzyBIjuAqOM4zPO8WrVaxd8kviOZTD5ohgSAbjKbpgnLsurSNA2VSgWKoviQQqGAVCrVAKHVQQAasG0bruv6T5JhGGCMoVQq+QDOOWiTdDrtQ3YByByIAGTQdR3lcnlXpJ076WgAiBj1AXqn3EEUVVX9k8iy3BrQrDBE1xh+ZhLYenkZlbWn7QHCEOXDFNTlEXjGMoqLF3Hn7L', '797', '4'),
(1, 1, 43, 4, 7, 3, '0CQF0ZZ', 'Kolrabi', 'Repair Left Sublingual Gland, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAIhSURBVDjLpZM9SJVhFMd/Vy8pV40yIRHvBY0QUcHUqAgXo7YapKGm1oJ2scGWcI2mIBojh5YIgoYkl5sNkZGUaH6QkhejED/vfd/nfDS8emloEDxwOHCe8/9xnuc5J+XuHMYqOKQdGpDO55/89w5mgpnjLpgpZjEiiqoAAREhhEAaoKmpqyx0d9xtzxOAu2Gm5WhmuCszM28TAEAUbeHue4dJQSLSPdG+Jx1VV9cRQjEBJGQjkzlGNtvD7u46a2uz5HJnMQtMT7+is/MqlZVp5ubesb6+jFlAJKJCJJTJ2WwPS0sfECmRy/WxuJhne/s3LS0XuPfyGnef93Okug6RgGoghIgKVcFdUA0AbG', '425', '11'),
(49, 1, 7, 1, 9, 6, '06HH03Z', 'Island Oasis - Raspberry', 'Insert of Infusion Dev into R Hypogast Vein, Open Approach', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAANvSURBVDjLVZNbbFN1HMe/p+d0be3p6Lr7unWMbuCQbR3FQWAEyPASkYe5mHhJTIhhPPngDAQTEGOMIZBpFiKoIWiIhAdgYxI14cFEo1M6O+Zmx1ob2MbYhbEb6zn/y7n8fcCZ7ZP88nv7JN+HjySEwDKfDX6oMpO3Uc5fpJw0UM5AGY0Ryn+U+dZP/OI116evB3WsQFoWtA+c2MUM/vVmf2OFrLhhSBYKPPn4Z3wInYnL54LSF4PcMA9zbh043xr+eZXg9F/Hm0POys5cbwke8Fn0Z4YgCwe2q/W49MdXcx6zucEn7Y01VKqBxMhjjE5mXrlypLYLAByn+o8HKKcXC9QQ+jIp/LLwOxaMRV', '628', '41'),
(50, 1, 29, 2, 8, 5, '047U046', 'Pop Shoppe Cream Soda', 'Dilate L Peroneal Art, Bifurc, w Drug-elut Intra, Open', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKUSURBVBgZBcG/b5R1HADg5717764trfQoVUpasAfU+CtRgmERXEwcHFmMgwwmjo7+BUyOxsXVmGidDHGQEAc1NsEQxQsm4g9sKYWgUErLXe967/f78XmKc+fOPR8RFzE3Pz8/3u/3Tey/SgA5iAiQM6MR25vxz/IXv3agjIj30Ol0Onq9nkajYaZNQBCJrAA7jyHUG8UiQImzCwsLTp486cyZM9rtKRARIAQB1OtN+y5ssI/PP7h+w+Ejr5UR0Z6cnHTp0iV/3vxQTkAEEEEOYKfHO9UByye+Utv8d2mXqRJFrVYzOzvr1DOnKbLIIYSQRQ4RCaS05+tr90GzUdhlpoSIUBSFejkFUvTMHz', '147', '36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_unit`
--

CREATE TABLE `tbl_product_unit` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_admin` int(11) UNSIGNED NOT NULL,
  `unit_title` varchar(100) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `unit_type` enum('U','P') NOT NULL DEFAULT 'U'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product_unit`
--

INSERT INTO `tbl_product_unit` (`id`, `id_admin`, `unit_title`, `unit`, `unit_type`) VALUES
(1, 1, 'kg', 'kg', 'U'),
(2, 1, 'g', 'g', 'U'),
(3, 1, 'Thùng', 'Thùng', 'P'),
(4, 1, 'Cây', 'Cây', 'P'),
(5, 1, 'Hộp', 'Hộp', 'P'),
(6, 1, 'Túi', 'Túi', 'P'),
(7, 1, 'Ly', 'Ly', 'U'),
(8, 1, 'Túi', 'Túi', 'U'),
(9, 1, 'Tô', 'Tô', 'U');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_order`
--

CREATE TABLE `tbl_shipping_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `shipping_code` varchar(200) NOT NULL,
  `shipping_time` varchar(200) NOT NULL,
  `shipping_note` tinytext NOT NULL,
  `shipping_status` enum('1','2','3') NOT NULL DEFAULT '1' COMMENT '1:tạo, 2:hoàn tất,3: hủy'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_storage_material`
--

CREATE TABLE `tbl_storage_material` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_material` int(10) UNSIGNED NOT NULL,
  `first_period_quantity` varchar(200) NOT NULL DEFAULT '0',
  `import_quantity` varchar(200) NOT NULL DEFAULT '0',
  `export_quantity` varchar(200) NOT NULL DEFAULT '0',
  `last_period_quantity` varchar(200) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_storage_material`
--

INSERT INTO `tbl_storage_material` (`id`, `id_material`, `first_period_quantity`, `import_quantity`, `export_quantity`, `last_period_quantity`) VALUES
(13, 13, '396', '674', '146', '924'),
(12, 12, '167', '920', '390', '697'),
(11, 11, '90', '584', '142', '532'),
(10, 10, '310', '804', '108', '1006'),
(9, 9, '46', '375', '84', '337'),
(8, 8, '92', '275', '13', '354'),
(7, 7, '290', '885', '130', '1045'),
(6, 6, '319', '56', '374', '0'),
(5, 5, '352', '889', '108', '1133'),
(4, 4, '57', '916', '433', '540'),
(3, 3, '33', '739', '296', '476'),
(2, 2, '250', '810', '406', '654'),
(1, 1, '497', '345', '280', '562'),
(14, 14, '278', '932', '82', '1128'),
(15, 15, '165', '44', '128', '81'),
(16, 16, '89', '885', '414', '560'),
(17, 17, '146', '619', '310', '455'),
(18, 18, '237', '1', '238', '0'),
(19, 19, '236', '401', '242', '395'),
(20, 20, '450', '637', '347', '740');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_storage_product`
--

CREATE TABLE `tbl_storage_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `first_period_quantity` varchar(500) NOT NULL DEFAULT '0',
  `import_quantity` varchar(500) NOT NULL DEFAULT '0',
  `export_quantity` varchar(500) NOT NULL DEFAULT '0',
  `last_period_quantity` varchar(500) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_storage_product`
--

INSERT INTO `tbl_storage_product` (`id`, `id_product`, `first_period_quantity`, `import_quantity`, `export_quantity`, `last_period_quantity`) VALUES
(1, 1, '228', '362', '462', '128'),
(2, 2, '452', '368', '55', '765'),
(3, 3, '46', '898', '66', '878'),
(4, 4, '10', '404', '290', '124'),
(5, 5, '123', '388', '113', '398'),
(6, 6, '320', '880', '285', '915'),
(7, 7, '5', '473', '33', '445'),
(8, 8, '275', '554', '487', '342'),
(9, 9, '449', '94', '130', '413'),
(10, 10, '211', '908', '168', '951'),
(11, 11, '497', '40', '465', '72'),
(12, 12, '192', '541', '173', '560'),
(13, 13, '312', '623', '343', '592'),
(14, 14, '72', '442', '289', '225'),
(15, 15, '368', '728', '10', '1086'),
(16, 16, '342', '709', '368', '683'),
(17, 17, '309', '838', '197', '950'),
(18, 18, '149', '972', '192', '929'),
(19, 19, '397', '985', '19', '1363'),
(20, 20, '366', '74', '50', '390'),
(21, 21, '14', '252', '110', '156'),
(22, 22, '333', '250', '65', '518'),
(23, 23, '468', '540', '196', '812'),
(24, 24, '335', '881', '47', '1169'),
(25, 25, '444', '489', '404', '529'),
(26, 26, '252', '400', '11', '641'),
(27, 27, '434', '35', '404', '65'),
(28, 28, '194', '7', '201', '0'),
(29, 29, '69', '987', '272', '784'),
(30, 30, '134', '14', '77', '71'),
(31, 31, '378', '254', '259', '373'),
(32, 32, '414', '685', '114', '985'),
(33, 33, '446', '675', '97', '1024'),
(34, 34, '286', '183', '432', '37'),
(35, 35, '384', '440', '438', '386'),
(36, 36, '227', '500', '259', '468'),
(37, 37, '308', '514', '459', '363'),
(38, 38, '95', '958', '478', '575'),
(39, 39, '418', '60', '199', '279'),
(40, 40, '349', '465', '438', '376'),
(41, 41, '447', '823', '428', '842'),
(42, 42, '401', '753', '493', '661'),
(43, 43, '220', '308', '84', '444'),
(44, 44, '201', '283', '116', '368'),
(45, 45, '76', '660', '82', '654'),
(46, 46, '113', '795', '309', '599'),
(47, 47, '427', '75', '454', '48'),
(48, 48, '391', '680', '110', '961'),
(49, 49, '204', '989', '98', '1095'),
(50, 50, '14', '984', '380', '618');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_account`
--
ALTER TABLE `tbl_admin_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_authorize`
--
ALTER TABLE `tbl_admin_authorize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_permission`
--
ALTER TABLE `tbl_admin_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_type`
--
ALTER TABLE `tbl_admin_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company_slide`
--
ALTER TABLE `tbl_company_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_customer`
--
ALTER TABLE `tbl_customer_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_delivery`
--
ALTER TABLE `tbl_customer_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_shipping`
--
ALTER TABLE `tbl_customer_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_export_production`
--
ALTER TABLE `tbl_export_production`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_export_production_material`
--
ALTER TABLE `tbl_export_production_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_export_storage`
--
ALTER TABLE `tbl_export_storage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_export_storage_detail`
--
ALTER TABLE `tbl_export_storage_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_import_production`
--
ALTER TABLE `tbl_import_production`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_import_production_product`
--
ALTER TABLE `tbl_import_production_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_import_supplier`
--
ALTER TABLE `tbl_import_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_import_supplier_material`
--
ALTER TABLE `tbl_import_supplier_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventory_material`
--
ALTER TABLE `tbl_inventory_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventory_material_detail`
--
ALTER TABLE `tbl_inventory_material_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventory_product`
--
ALTER TABLE `tbl_inventory_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventory_product_detail`
--
ALTER TABLE `tbl_inventory_product_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_material_material`
--
ALTER TABLE `tbl_material_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_order`
--
ALTER TABLE `tbl_order_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_process_log`
--
ALTER TABLE `tbl_order_process_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_production_machine`
--
ALTER TABLE `tbl_production_machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_production_material`
--
ALTER TABLE `tbl_production_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_production_product`
--
ALTER TABLE `tbl_production_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_production_production`
--
ALTER TABLE `tbl_production_production`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_product`
--
ALTER TABLE `tbl_product_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_unit`
--
ALTER TABLE `tbl_product_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_order`
--
ALTER TABLE `tbl_shipping_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_storage_material`
--
ALTER TABLE `tbl_storage_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_storage_product`
--
ALTER TABLE `tbl_storage_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_account`
--
ALTER TABLE `tbl_admin_account`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_admin_authorize`
--
ALTER TABLE `tbl_admin_authorize`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_admin_permission`
--
ALTER TABLE `tbl_admin_permission`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_admin_type`
--
ALTER TABLE `tbl_admin_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_company_slide`
--
ALTER TABLE `tbl_company_slide`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customer_customer`
--
ALTER TABLE `tbl_customer_customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_customer_delivery`
--
ALTER TABLE `tbl_customer_delivery`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tbl_customer_shipping`
--
ALTER TABLE `tbl_customer_shipping`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_export_production`
--
ALTER TABLE `tbl_export_production`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_export_production_material`
--
ALTER TABLE `tbl_export_production_material`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_export_storage`
--
ALTER TABLE `tbl_export_storage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_export_storage_detail`
--
ALTER TABLE `tbl_export_storage_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_import_production`
--
ALTER TABLE `tbl_import_production`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_import_production_product`
--
ALTER TABLE `tbl_import_production_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_import_supplier`
--
ALTER TABLE `tbl_import_supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_import_supplier_material`
--
ALTER TABLE `tbl_import_supplier_material`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_inventory_material`
--
ALTER TABLE `tbl_inventory_material`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_inventory_material_detail`
--
ALTER TABLE `tbl_inventory_material_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_inventory_product`
--
ALTER TABLE `tbl_inventory_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_inventory_product_detail`
--
ALTER TABLE `tbl_inventory_product_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_material_material`
--
ALTER TABLE `tbl_material_material`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_order`
--
ALTER TABLE `tbl_order_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_process_log`
--
ALTER TABLE `tbl_order_process_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_production_machine`
--
ALTER TABLE `tbl_production_machine`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_production_material`
--
ALTER TABLE `tbl_production_material`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_production_product`
--
ALTER TABLE `tbl_production_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_production_production`
--
ALTER TABLE `tbl_production_production`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product_product`
--
ALTER TABLE `tbl_product_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_product_unit`
--
ALTER TABLE `tbl_product_unit`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_shipping_order`
--
ALTER TABLE `tbl_shipping_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_storage_material`
--
ALTER TABLE `tbl_storage_material`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_storage_product`
--
ALTER TABLE `tbl_storage_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
