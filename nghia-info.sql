-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2022 at 10:25 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nghia-info`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'Javascript', 'adasdasdasdasd'),
(3, 'Unity Game Development', 'Unity l&agrave; má»™t game engine Ä‘a ná»n táº£ng Ä‘Æ°á»£c ph&aacute;t triá»ƒn bá»Ÿi Unity Technologies, m&agrave; chá»§ yáº¿u Ä‘á»ƒ ph&aacute;t triá»ƒn video game cho m&aacute;y t&iacute;nh, consoles v&agrave; Ä‘iá»‡n thoáº¡i. Láº§n Ä‘áº§u ti&ecirc;n n&oacute; Ä‘Æ°á»£c c&ocirc;ng bá»‘ cháº¡y tr&ecirc;n há»‡ Ä‘iá»u h&agrave;nh OS X, táº¡i Apple&#039;s Worldwide Developers Conference v&agrave;o nÄƒm 2005, Ä‘áº¿n nay Ä‘&atilde; má»Ÿ rá»™ng 27 ná»n táº£ng'),
(4, 'Blockchain', 'Blockchain.com l&agrave; má»™t c&ocirc;ng ty dá»‹ch vá»¥ t&agrave;i ch&iacute;nh tiá»n Ä‘iá»‡n tá»­.'),
(5, 'Python', 'Python l&agrave; má»™t ng&ocirc;n ngá»¯ láº­p tr&igrave;nh báº­c cao cho c&aacute;c má»¥c Ä‘&iacute;ch láº­p tr&igrave;nh Ä‘a nÄƒng,');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_blog_category` (`category_id`),
  KEY `FK_blog_author` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(2, 'Unity (game engine)', 'Unity l&agrave; má»™t game engine Ä‘a ná»n táº£ng Ä‘Æ°á»£c ph&aacute;t triá»ƒn bá»Ÿi Unity Technologies, m&agrave; chá»§ yáº¿u Ä‘á»ƒ ph&aacute;t triá»ƒn video game cho m&aacute;y t&iacute;nh, consoles v&agrave; Ä‘iá»‡n thoáº¡i. Láº§n Ä‘áº§u ti&ecirc;n n&oacute; Ä‘Æ°á»£c c&ocirc;ng bá»‘ cháº¡y tr&ecirc;n há»‡ Ä‘iá»u h&agrave;nh OS X, táº¡i Apple&#039;s Worldwide Developers Conference v&agrave;o nÄƒm 2005, Ä‘áº¿n nay Ä‘&atilde; má»Ÿ rá»™ng 27 ná»n táº£ng.\r\nUnity l&agrave; má»™t game engine Ä‘a ná»n táº£ng Ä‘Æ°á»£c ph&aacute;t triá»ƒn bá»Ÿi Unity Technologies, m&agrave; chá»§ yáº¿u Ä‘á»ƒ ph&aacute;t triá»ƒn video game cho m&aacute;y t&iacute;nh, consoles v&agrave; Ä‘iá»‡n thoáº¡i. Láº§n Ä‘áº§u ti&ecirc;n n&oacute; Ä‘Æ°á»£c c&ocirc;ng bá»‘ cháº¡y tr&ecirc;n há»‡ Ä‘iá»u h&agrave;nh OS X, táº¡i Apple&#039;s Worldwide Developers Conference v&agrave;o nÄƒm 2005, Ä‘áº¿n nay Ä‘&atilde; má»Ÿ rá»™ng 27 ná»n táº£ng.\r\nUnity l&agrave; má»™t game engine Ä‘a ná»n táº£ng Ä‘Æ°á»£c ph&aacute;t triá»ƒn bá»Ÿi Unity Technologies, m&agrave; chá»§ yáº¿u Ä‘á»ƒ ph&aacute;t triá»ƒn video game cho m&aacute;y t&iacute;nh, consoles v&agrave; Ä‘iá»‡n thoáº¡i. Láº§n Ä‘áº§u ti&ecirc;n n&oacute; Ä‘Æ°á»£c c&ocirc;ng bá»‘ cháº¡y tr&ecirc;n há»‡ Ä‘iá»u h&agrave;nh OS X, táº¡i Apple&#039;s Worldwide Developers Conference v&agrave;o nÄƒm 2005, Ä‘áº¿n nay Ä‘&atilde; má»Ÿ rá»™ng 27 ná»n táº£ng.', '1670215313blog15.jpg', '2022-12-05 04:41:53', 3, 2, 0),
(3, 'Node.js thá»±c sá»± l&agrave; g&igrave;?', 'NodeJS l&agrave; má»™t ná»n táº£ng Ä‘Æ°á»£c x&acirc;y dá»±ng tr&ecirc;n &ldquo;V8 Javascript engine&rdquo; Ä‘Æ°á»£c viáº¿t báº±ng c++ v&agrave; Javascript. Ná»n táº£ng n&agrave;y Ä‘Æ°á»£c ph&aacute;t triá»ƒn bá»Ÿi Ryan Lienhart Dahl v&agrave;o nÄƒm 2009.\r\n\r\nNode.js ra Ä‘á»i khi c&aacute;c developer Ä‘á»i Ä‘áº§u cá»§a JavaScript má»Ÿ rá»™ng n&oacute; tá»« má»™t thá»© báº¡n chá»‰ cháº¡y Ä‘Æ°á»£c tr&ecirc;n tr&igrave;nh duyá»‡t th&agrave;nh má»™t thá»© báº¡n c&oacute; thá»ƒ cháº¡y tr&ecirc;n m&aacute;y cá»§a m&igrave;nh dÆ°á»›i dáº¡ng á»©ng dá»¥ng Ä‘á»™c láº­p.\r\nCáº£ tr&igrave;nh duyá»‡t JavaScript v&agrave; Node.js Ä‘á»u cháº¡y tr&ecirc;n JavaScript runtime V8 engine. C&ocirc;ng cá»¥ n&agrave;y láº¥y code JavaScript cá»§a báº¡n v&agrave; convert n&oacute; sang m&atilde; m&aacute;y (bytecode) cho viá»‡c thá»±c thi nhanh hÆ¡n. M&atilde; m&aacute;y l&agrave; loáº¡i code tháº¥p cáº¥p hÆ¡n Ä‘á»ƒ m&aacute;y t&iacute;nh c&oacute; thá»ƒ cháº¡y m&agrave; kh&ocirc;ng cáº§n bi&ecirc;n dá»‹ch n&oacute;.\r\nCh&uacute;ng ta Ä‘&atilde; kh&aacute; quen vá»›i d&ograve;ng Ä‘áº§u trong Ä‘á»‹nh nghÄ©a n&agrave;y rá»“i. N&ecirc;n giá» h&atilde;y n&oacute;i vá» 2 d&ograve;ng c&ograve;n láº¡i Ä‘á»ƒ hiá»ƒu Ä‘Æ°á»£c táº¡i sao Node.js láº¡i phá»• biáº¿n Ä‘áº¿n váº­y nh&eacute;.\r\n\r\nI/O l&agrave; Input/Output. N&oacute; c&oacute; thá»ƒ l&agrave; báº¥t cá»© thá»© g&igrave; tá»« Ä‘á»c/viáº¿t c&aacute;c file ná»™i bá»™ cho Ä‘áº¿n táº¡o HTTP Ä‘áº¿n API.\r\n\r\nI/O tá»‘n thá»i gian v&agrave; do Ä‘&oacute; n&oacute; sáº½ cháº·n c&aacute;c chá»©c nÄƒng kh&aacute;c.\r\n\r\nX&eacute;t má»™t t&igrave;nh huá»‘ng l&agrave; ch&uacute;ng ta cáº§n dá»¯ liá»‡u backend chi tiáº¿t cho user1 v&agrave; user2 v&agrave; sau Ä‘&oacute; hiá»ƒn thá»‹ ch&uacute;ng tr&ecirc;n m&agrave;n h&igrave;nh hoáº·c báº£ng Ä‘iá»u khiá»ƒn. Äá»ƒ pháº£n há»“i cho lá»‡nh n&agrave;y sáº½ máº¥t thá»i gian, nhÆ°ng cáº£ 2 dá»¯ liá»‡u user c&oacute; thá»ƒ thá»±c hiá»‡n Ä‘á»™c láº­p v&agrave; c&ugrave;ng l&uacute;c.', '1670215418blog48.jpg', '2022-12-05 04:43:38', 1, 2, 0),
(4, 'Láº­p tr&igrave;nh Unity l&agrave; g&igrave; v&agrave; nhá»¯ng kiáº¿n thá»©c tá»•ng quan cáº§n náº¯m vá»¯ng', 'Báº¡n l&agrave; ngÆ°á»i c&oacute; niá»m Ä‘am m&ecirc; vá»›i c&ocirc;ng viá»‡c láº­p tr&igrave;nh vi&ecirc;n game chuy&ecirc;n nghiá»‡p v&agrave; báº¡n Ä‘ang ph&acirc;n v&acirc;n v&igrave; kh&ocirc;ng biáº¿t n&ecirc;n báº¯t Ä‘áº§u n&oacute; tá»« ná»n táº£ng n&agrave;o? Váº­y c&ograve;n lo ngáº¡i g&igrave; m&agrave; kh&ocirc;ng tham kháº£o ngay láº­p tr&igrave;nh Unity l&agrave; g&igrave; - láº­p tr&igrave;nh phá»• biáº¿n nháº¥t trong game qua th&ocirc;ng tin dÆ°á»›i Ä‘&acirc;y. H&atilde;y c&ugrave;ng theo d&otilde;i nh&eacute;!\r\nÄá»‹nh nghÄ©a láº­p tr&igrave;nh Unity l&agrave; g&igrave;?\r\nUnity l&agrave; má»™t trong nhá»¯ng pháº§n má»m c&oacute; kháº£ nÄƒng l&agrave;m game tr&ecirc;n Ä‘a ná»n táº£ng nhá» v&agrave;o Unity Technologies. N&oacute; c&oacute; kháº£ nÄƒng ph&aacute;t triá»ƒn c&aacute;c video game cho m&aacute;y t&iacute;nh, consoles v&agrave; Ä‘iá»‡n thoáº¡i di Ä‘á»™ng. \r\nViá»‡c ph&aacute;t triá»ƒn game báº±ng viá»‡c k&eacute;o v&agrave; tháº£ (drag and drop) Ä‘ang ráº¥t hiá»‡n h&agrave;nh. Ngay nhá»¯ng láº§n Ä‘áº§u ti&ecirc;n khi má»›i c&ocirc;ng bá»‘ tr&ecirc;n há»‡ Ä‘iá»u h&agrave;nh OS, X v&agrave; Apple&rsquo;s Worldwide Developers Conference trong nÄƒm 2015 th&igrave; tá»›i hiá»‡n nay Unity Ä‘&atilde; má»Ÿ rá»™ng v&agrave; ph&aacute;t triá»ƒn tr&ecirc;n 27 ná»n táº£ng.\r\nTrong thá»i Ä‘iá»ƒm hiá»‡n nay, th&igrave; Ä‘&atilde; c&oacute; tá»›i 6 phi&ecirc;n báº£n ch&iacute;nh thuá»™c pháº§n má»m n&agrave;y Ä‘&atilde; Ä‘Æ°á»£c ph&aacute;t h&agrave;nh tr&ecirc;n tháº¿ giá»›i. V&agrave;o triá»ƒn l&atilde;m nÄƒm WWDC (2006) th&igrave; Unity Ä‘&atilde; Ä‘Æ°á»£c táº­p Ä‘o&agrave;n Apple trao thÆ°á»Ÿng giáº£i Best Use of Mac OS X Graphics.\r\nBáº¡n Ä‘á»c tham kháº£o th&ecirc;m:Tuyá»ƒn dá»¥ng python lÆ°Æ¡ng cao nhiá»u cháº¿ Ä‘á»™ háº¥p dáº«nViá»‡c l&agrave;m java web táº¡i H&agrave; Ná»™i vá»›i nhiá»u cháº¿ Ä‘á»™ háº¥p dáº«n', '1670216143blog44.jpg', '2022-12-05 04:55:43', 3, 2, 0),
(5, 'Game tr&ecirc;n Unity ', '                             DÆ°á»›i Ä‘&acirc;y l&agrave; nhá»¯ng hÆ°á»›ng Ä‘áº¿n nhá»¯ng kh&aacute;i niá»‡m quan trá»ng trong pháº§n láº­p tr&igrave;nh Unity l&agrave; g&igrave; nhÆ° sau: \r\nGameObject: Má»™t trong nhá»¯ng Ä‘á»‘i tÆ°á»£ng cá»¥ thá»ƒ Ä‘Æ°á»£c sá»­ dá»¥ng trong game l&agrave;  kh&aacute;i niá»‡m cá»§a game object. C&oacute; thá»ƒ l&agrave; nh&acirc;n váº­t, Ä‘á»“ váº­t,... \r\n\r\nComponent: Má»™t GameObject thÆ°á»ng sáº½ Ä‘Æ°á»£c cáº¥u táº¡o tá»« nhiá»u th&agrave;nh pháº§n n&ecirc;n n&oacute; c&oacute; thá»ƒ l&agrave; c&aacute;c h&igrave;nh áº£nh, nhá»¯ng h&agrave;nh Ä‘á»™ng cá»§a nh&acirc;n váº­t, m&atilde; Ä‘iá»u khiá»ƒn,...Functions thÆ°á»ng káº¿ thá»«a tá»« MonoBehaviour class v&agrave; c&oacute; thá»ƒ ghi Ä‘&egrave; b&ecirc;n trong nhá»¯ng class c&ograve;n c&oacute; thá»ƒ thá»±c hiá»‡n cho nhá»¯ng sá»± kiá»‡n quan trá»ng n&agrave;o Ä‘&oacute;.\r\n\r\nHai sá»± kiá»‡n n&agrave;y thÆ°á»ng Ä‘Æ°á»£c d&ugrave;ng phá»• biáº¿n trong má»™t Component Ä‘&oacute; l&agrave;: Start() tiáº¿n h&agrave;nh cháº¡y th&ecirc;m 1 láº§n duy nháº¥t trÆ°á»›c khi h&agrave;m update. Update() l&agrave; sáº½ thá»±c hiá»‡n sau má»™t v&ograve;ng láº·p cháº¡y li&ecirc;n tá»¥c. N&oacute; sáº½ Ä‘Æ°á»£c gá»i má»™t láº§n d&agrave;nh cho má»—i khung h&igrave;nh (thÆ°á»ng l&agrave; 25 khung h&igrave;nh má»—i gi&acirc;y). Cá»© má»—i thá»© nhÆ° váº­y gá»i sáº½ Ä‘Æ°á»£c gá»i l&agrave; má»™t component cá»§a GameObject. \r\n\r\nScript: Script l&agrave; dáº¡ng táº­p tin c&oacute; chá»©a nhá»¯ng Ä‘oáº¡n m&atilde; nguá»“n Ä‘Æ°á»£c sá»­ dá»¥ng vá»›i má»¥c Ä‘&iacute;ch  khá»Ÿi táº¡o cÅ©ng nhÆ° xá»­ l&yacute; Ä‘á»‘i tÆ°á»£ng trong game. \r\n\r\nÄá»‘i vá»›i Unity th&igrave; báº¡n c&oacute; thá»ƒ sá»­ dá»¥ng C#, Java Script, BOO Ä‘á»ƒ thá»±c hiá»‡n láº­p tr&igrave;nh Script. Ngo&agrave;i ra, báº¡n cÅ©ng c&oacute; thá»ƒ Ä‘iá»u chá»‰nh thuá»™c t&iacute;nh cho component kh&aacute;c th&ocirc;ng qua script. V&agrave; script thÆ°á»ng Ä‘Æ°á»£c xem nhÆ° l&agrave; &ldquo;n&atilde;o&rdquo; cá»§a con ngÆ°á»i bá»Ÿi n&oacute; c&oacute; thá»ƒ Ä‘iá»u khiá»ƒn Ä‘Æ°á»£c nhá»¯ng bá»™ pháº­n c&ograve;n láº¡i. \r\n\r\nC&acirc;Ìu truÌc cuÌ‰a m&ocirc;Ì£t Ä‘oaÌ£n maÌƒ bao g&ocirc;Ì€m 3 thaÌ€nh ph&acirc;Ì€n chiÌnh nhÆ° sau:  \r\n\r\nBi&ecirc;Ìn (variable) thÆ°á»ng c&oacute; chÆ°Ìa b&acirc;Ìt kiÌ€ giaÌ triÌ£ kiá»ƒu dáº¡ng sá»‘ Ä‘áº·c th&ugrave; hoáº·c ki&ecirc;Ì‰u kiÌ tÆ°Ì£.\r\n\r\nHaÌ€m (function) thÆ°á»ng Ä‘Æ°á»£c sá»­ dá»¥ng Ä‘á»ƒ c&oacute; thá»ƒ thá»±c ti nhá»¯ng c&ocirc;ng viá»‡c th&ocirc;ng thÆ°á»ng c&oacute; c&ugrave;ng 1 biáº¿n v&agrave; c&aacute;c biá»ƒu thá»©c to&aacute;n há»c kh&aacute;c.\r\n\r\nNhá»¯ng function b&ecirc;n trong Unity thÆ°á»ng Ä‘Æ°á»£c ph&acirc;n chia th&agrave;nh 2 nh&oacute;m bao gá»“m: li&ecirc;n quan Ä‘&ecirc;Ìn game\r\n\r\n&ndash; game relate (nhÆ° system, input, network), Ä‘&ocirc;Ìi tÆ°Æ¡Ì£ng Ä‘ÄƒÌ£c trÆ°ng\r\n\r\n&ndash; object specific, ngÆ°Æ¡Ì€i duÌ€ng Ä‘iÌ£nh nghiÌƒa\r\n\r\n&ndash; user defined.ChuÌ thiÌch (comment) sáº½ bá»‹ c&aacute;c chÆ°Æ¡ng tr&igrave;nh dá»‹ch bá» qua ngay  khi cháº¡y chÆ°Æ¡ng tr&igrave;nh v&agrave; n&oacute; cho ph&eacute;p ngÆ°á»i sá»­ dá»¥ng co thá»ƒ ghi ch&eacute;p láº¡i nhá»¯ng Ä‘iá»u cáº§n nhá»› hoáº·c v&ocirc; hiá»‡u h&oacute;a má»™t d&ograve;ng m&atilde; lá»‡nh n&agrave;o Ä‘&oacute;.                                            ', '1670216660blog33.jpg', '2022-12-05 05:04:20', 1, 2, 0),
(6, 'Vue.js l&agrave; g&igrave;?', '           Gá»i táº¯t l&agrave; Vue (ph&aacute;t &acirc;m l&agrave; /vjuË/, giá»‘ng nhÆ° view trong tiáº¿ng Anh), Vue.js l&agrave; má»™t framework linh Ä‘á»™ng (nguy&ecirc;n báº£n tiáº¿ng Anh: progressive &ndash; tiá»‡m tiáº¿n) d&ugrave;ng Ä‘á»ƒ x&acirc;y dá»±ng giao diá»‡n ngÆ°á»i d&ugrave;ng (user interfaces). Kh&aacute;c vá»›i c&aacute;c framework nguy&ecirc;n khá»‘i (monolithic), Vue Ä‘Æ°á»£c thiáº¿t káº¿ tá»« Ä‘áº§u theo hÆ°á»›ng cho ph&eacute;p v&agrave; khuyáº¿n kh&iacute;ch viá»‡c ph&aacute;t triá»ƒn á»©ng dá»¥ng theo tá»«ng bÆ°á»›c. Khi ph&aacute;t triá»ƒn lá»›p giao diá»‡n (view layer), ngÆ°á»i d&ugrave;ng chá»‰ cáº§n d&ugrave;ng thÆ° viá»‡n l&otilde;i (core library) cá»§a Vue, vá»‘n ráº¥t dá»… há»c v&agrave; t&iacute;ch há»£p vá»›i c&aacute;c thÆ° viá»‡n hoáº·c dá»± &aacute;n c&oacute; sáºµn. C&ugrave;ng l&uacute;c Ä‘&oacute;, náº¿u káº¿t há»£p vá»›i nhá»¯ng kÄ© thuáº­t hiá»‡n Ä‘áº¡i nhÆ° SFC (single file components) v&agrave; c&aacute;c thÆ° viá»‡n há»— trá»£, Vue cÅ©ng Ä‘&aacute;p á»©ng Ä‘Æ°á»£c dá»… d&agrave;ng nhu cáº§u x&acirc;y dá»±ng nhá»¯ng á»©ng dá»¥ng má»™t trang (SPA - Single-Page Applications) vá»›i Ä‘á»™ phá»©c táº¡p cao hÆ¡n nhiá»u.\r\n\r\nNáº¿u báº¡n muá»‘n t&igrave;m hiá»ƒu th&ecirc;m vá» Vue, ch&uacute;ng t&ocirc;i Ä‘&atilde; táº¡o má»™t video clip vá» nhá»¯ng nguy&ecirc;n táº¯c cá»‘t l&otilde;i v&agrave; má»™t dá»± &aacute;n máº«u.\r\n\r\nNáº¿u báº¡n l&agrave; má»™t láº­p tr&igrave;nh vi&ecirc;n front-end gi&agrave;u kinh nghiá»‡m v&agrave; muá»‘n hiá»ƒu hÆ¡n vá» tÆ°Æ¡ng quan giá»¯a Vue v&agrave; c&aacute;c thÆ° viá»‡n hay framework kh&aacute;c, h&atilde;y xem pháº§n So s&aacute;nh vá»›i c&aacute;c framework kh&aacute;c.                         ', '1670216784blog42.jpg', '2022-12-05 05:06:24', 1, 2, 0),
(7, 'T&igrave;m hiá»ƒu vá» láº­p tr&igrave;nh Unity 2D', '                Nhá»¯ng c&ocirc;ng cá»¥ cáº§n cho láº­p tr&igrave;nh Unity 2D\r\nUnity Ä‘&atilde; t&iacute;ch há»£p má»™t editor v&agrave; IDE c&oacute; t&ecirc;n l&agrave; MonoDevelop Ä‘á»ƒ há»— trá»£ ngÆ°á»i láº­p tr&igrave;nh soáº¡n tháº£o. Äá»ƒ má»Ÿ c&aacute;c file source click Ä‘&uacute;p v&agrave;o ch&uacute;ng trong Project khi táº¡o má»›i thay Ä‘á»•i h&atilde;y save Ä‘á»ƒ Ä‘Æ°á»£c tá»± Ä‘á»™ng bi&ecirc;n dá»‹ch. Vá»›i c&aacute;c error hoáº·c warning sáº½ Ä‘Æ°á»£c t&igrave;m tháº¥y náº¿u c&oacute; rá»“i Ä‘Æ°á»£c liá»‡t k&ecirc; trong unity (trong tag Console).\r\nError c&oacute; m&agrave;u Ä‘á» v&agrave; warning l&agrave; m&agrave;u v&agrave;ng.1 MonoDevelop project browser &ndash; 2 Cá»­a sá»• Class outline &ndash; 3 Cá»­a sá»• Editor.\r\n\r\nMáº·c Ä‘á»‹nh Unity táº¡o nhá»¯ng lá»‡nh sau:\r\nMonoBehaviour class: Ä&acirc;y l&agrave; class cho script cá»§a báº¡n t&ecirc;n class cÅ©ng l&agrave; t&ecirc;n script báº¡n Ä‘áº·t.\r\nThÆ° viá»‡n ri&ecirc;ng cá»§a Unity: Unity Engine v&agrave; System Collection (Äá»«ng tá»± bá» c&aacute;i n&agrave;o nh&eacute;)\r\nHai function Ä‘Æ°á»£c táº¡o sáºµn l&agrave; Start() v&agrave; Update().\r\nX&acirc;y dá»±ng chÆ°Æ¡ng tr&igrave;nh Unity 2D \r\nTáº¡o hiá»‡u á»©ng dá»‹ch chuyá»ƒn h&igrave;nh ná»n tá»± Ä‘á»™ng li&ecirc;n tá»¥c tá»« tr&ecirc;n xuá»‘ng.\r\nBÆ°á»›c thá»© nháº¥t - táº¡o Object: Sá»­ dá»¥ng bá»™ Assets n&oacute; Ä‘&atilde; bao gá»“m &acirc;m thanh, h&igrave;nh áº£nh d&ugrave;ng cho game, c&aacute;c object nhÆ°: m&aacute;y bay lá»¥c, m&aacute;y bay xanh dÆ°Æ¡ng, thi&ecirc;n th&aacute;ch, báº§u trá»i, vá»¥ ná»•&hellip;                    ', '1670218781blog57.jpg', '2022-12-05 05:39:41', 3, 4, 0),
(8, 'Angular l&agrave; g&igrave;?', '        Angular l&agrave; g&igrave;? Angular l&agrave; má»™t JavaScript framework d&ugrave;ng Ä‘á»ƒ viáº¿t giao diá»‡n web (Front-end), Ä‘Æ°á»£c ph&aacute;t triá»ƒn bá»Ÿi Google. Hiá»‡n nay, Angular Ä‘ang Ä‘Æ°á»£c sá»­ dá»¥ng bá»Ÿi ráº¥t nhiá»u c&aacute;c c&ocirc;ng ty lá»›n: Forbes, General Motors, Upwork&hellip; Vá»›i nhá»¯ng lá»£i &iacute;ch tuyá»‡t vá»i m&agrave; Angular mang láº¡i, báº¡n cáº§n pháº£i biáº¿t sá»­ dá»¥ng Angular náº¿u muá»‘n trá»Ÿ th&agrave;nh Front-end Developer giá»i. \r\n\r\nSong song vá»›i Angular, báº¡n cÅ©ng thÆ°á»ng nghe nháº¯c Ä‘áº¿n c&aacute;i t&ecirc;n AngularJS. Váº­y th&igrave; AngularJS l&agrave; g&igrave;? Äiá»ƒm kh&aacute;c biá»‡t giá»¯a AngularJS v&agrave; Angular l&agrave; g&igrave;? Äá»“ng thá»i, nhá»¯ng tá»‘ cháº¥t cáº§n thiáº¿t Ä‘á»ƒ trá»Ÿ th&agrave;nh Front-end Developer l&agrave; g&igrave;? Äá»ƒ c&oacute; thá»ƒ tráº£ lá»i nhá»¯ng c&acirc;u há»i tr&ecirc;n, h&atilde;y c&ugrave;ng theo d&otilde;i b&agrave;i phá»ng váº¥n giá»¯a ITviec v&agrave; anh Tráº§n Thuáº­n NghÄ©a &ndash; Software Engineer táº¡i VinID sau Ä‘&acirc;y.\r\nAngular l&agrave; g&igrave;? Angular l&agrave; má»™t JavaScript framework d&ugrave;ng Ä‘á»ƒ viáº¿t giao diá»‡n web (Front-end), Ä‘Æ°á»£c ph&aacute;t triá»ƒn bá»Ÿi Google. Angular gi&uacute;p láº­p tr&igrave;nh vi&ecirc;n x&acirc;y dá»±ng c&aacute;c á»©ng dá»¥ng trang Ä‘Æ¡n (single-page application) báº±ng c&aacute;ch sá»­ dá»¥ng HTML v&agrave; TypeScript má»™t c&aacute;ch nhanh hÆ¡n.\r\n\r\nÄá»ƒ dá»… h&igrave;nh dung hÆ¡n, anh NghÄ©a Ä‘Æ°a v&iacute; dá»¥:                            ', '1670218840blog98.jpg', '2022-12-05 05:40:40', 3, 4, 0),
(9, 'A JavaScript library for building', '               React makes it painless to create interactive UIs. Design simple views for each state in your application, and React will efficiently update and render just the right components when your data changes.\r\n\r\nDeclarative views make your code more predictable and easier to debug.\r\nBuild encapsulated components that manage their own state, then compose them to make complex UIs.\r\n\r\nSince component logic is written in JavaScript instead of templates, you can easily pass rich data through your app and keep state out of the DOM.                     ', '1670228410blog30.jpg', '2022-12-05 08:20:10', 1, 2, 1),
(10, 'C&ocirc;ng nghá»‡ chuá»—i khá»‘i l&agrave; g&igrave;? - AWS', '       Blockchain l&agrave; c&ocirc;ng nghá»‡ cÆ¡ sá»Ÿ dá»¯ liá»‡u s&aacute;ng táº¡o, trung t&acirc;m cá»§a gáº§n nhÆ° táº¥t cáº£ c&aacute;c loáº¡i tiá»n Ä‘iá»‡n tá»­. Báº±ng c&aacute;ch ph&acirc;n phá»‘i c&aacute;c báº£n sao giá»‘ng há»‡t nhau cá»§a cÆ¡ sá»Ÿ dá»¯ liá»‡u tr&ecirc;n to&agrave;n bá»™ máº¡ng, blockchain l&agrave;m cho há»‡ thá»‘ng ráº¥t kh&oacute; bá»‹ hack hoáº·c gian láº­n. Máº·c d&ugrave; tiá»n Ä‘iá»‡n tá»­ Ä‘ang Ä‘Æ°á»£c sá»­ dá»¥ng phá»• biáº¿n nháº¥t cho blockchain hiá»‡n táº¡i nhÆ°ng c&ocirc;ng nghá»‡ n&agrave;y mang láº¡i tiá»m nÄƒng phá»¥c vá»¥ ráº¥t nhiá»u á»©ng dá»¥ng.\r\nVá» cá»‘t l&otilde;i, blockchain l&agrave; má»™t sá»• c&aacute;i ká»¹ thuáº­t sá»‘ ph&acirc;n t&aacute;n lÆ°u trá»¯ dá»¯ liá»‡u dÆ°á»›i báº¥t ká»³ h&igrave;nh thá»©c n&agrave;o. Má»™t blockchain c&oacute; thá»ƒ ghi láº¡i th&ocirc;ng tin vá» cryptocurrency giao dá»‹ch, NFT quyá»n sá»Ÿ há»¯u hoáº·c Defi há»£p Ä‘á»“ng th&ocirc;ng minh.\r\n\r\nMáº·c d&ugrave; báº¥t ká»³ cÆ¡ sá»Ÿ dá»¯ liá»‡u th&ocirc;ng thÆ°á»ng n&agrave;o cÅ©ng c&oacute; thá»ƒ lÆ°u trá»¯ loáº¡i th&ocirc;ng tin n&agrave;y nhÆ°ng blockchain l&agrave; duy nháº¥t á»Ÿ chá»— n&oacute; ho&agrave;n to&agrave;n phi táº­p trung. Thay v&igrave; Ä‘Æ°á»£c duy tr&igrave; á»Ÿ má»™t vá»‹ tr&iacute; bá»Ÿi má»™t quáº£n trá»‹ vi&ecirc;n táº­p trung, nhiá»u báº£n sao giá»‘ng há»‡t nhau cá»§a cÆ¡ sá»Ÿ dá»¯ liá»‡u blockchain Ä‘Æ°á»£c lÆ°u giá»¯ tr&ecirc;n nhiá»u m&aacute;y t&iacute;nh tráº£i rá»™ng tr&ecirc;n máº¡ng. C&aacute;c m&aacute;y t&iacute;nh ri&ecirc;ng láº» n&agrave;y Ä‘Æ°á»£c gá»i l&agrave; c&aacute;c n&uacute;t.\r\nC&aacute;i t&ecirc;n blockchain kh&ocirc;ng pháº£i ngáº«u nhi&ecirc;n Ä‘Æ°á»£c chá»n Ä‘á»ƒ sá»­ dá»¥ng nhÆ° b&acirc;y giá». Blockchain thÆ°á»ng Ä‘Æ°á»£c m&ocirc; táº£ l&agrave; má»™t &ldquo;chuá»—i&rdquo; Ä‘Æ°á»£c táº¡o th&agrave;nh tá»« c&aacute;c &ldquo;khá»‘i&rdquo; dá»¯ liá»‡u ri&ecirc;ng láº». Khi dá»¯ liá»‡u má»›i Ä‘Æ°á»£c th&ecirc;m v&agrave;o máº¡ng Ä‘á»‹nh ká»³, má»™t &ldquo;khá»‘i&rdquo; má»›i sáº½ Ä‘Æ°á»£c táº¡o v&agrave; gáº¯n v&agrave;o &ldquo;chuá»—i&rdquo;. Äiá»u n&agrave;y li&ecirc;n quan Ä‘áº¿n viá»‡c táº¥t cáº£ c&aacute;c n&uacute;t cáº­p nháº­t phi&ecirc;n báº£n blockchain cá»§a há» Ä‘á»ƒ táº¥t cáº£ Ä‘á»u giá»‘ng há»‡t nhau.\r\n\r\nC&aacute;ch c&aacute;c khá»‘i má»›i n&agrave;y Ä‘Æ°á»£c táº¡o ra l&agrave; ch&igrave;a kh&oacute;a giáº£i th&iacute;ch táº¡i sao blockchain Ä‘Æ°á»£c coi l&agrave; an to&agrave;n cao. Pháº§n lá»›n c&aacute;c n&uacute;t pháº£i x&aacute;c minh v&agrave; x&aacute;c nháº­n t&iacute;nh há»£p ph&aacute;p cá»§a dá»¯ liá»‡u má»›i trÆ°á»›c khi má»™t khá»‘i má»›i c&oacute; thá»ƒ Ä‘Æ°á»£c th&ecirc;m v&agrave;o sá»• c&aacute;i ká»¹ thuáº­t sá»‘. Äá»‘i vá»›i tiá»n Ä‘iá»‡n tá»­, ch&uacute;ng c&oacute; thá»ƒ li&ecirc;n quan Ä‘áº¿n viá»‡c Ä‘áº£m báº£o ráº±ng c&aacute;c giao dá»‹ch má»›i trong má»™t khá»‘i kh&ocirc;ng pháº£i l&agrave; gian láº­n hoáº·c tiá»n chÆ°a Ä‘Æ°á»£c sá»­ dá»¥ng nhiá»u hÆ¡n má»™t láº§n. Äiá»u n&agrave;y kh&aacute;c vá»›i cÆ¡ sá»Ÿ dá»¯ liá»‡u hoáº·c báº£ng t&iacute;nh Ä‘á»™c láº­p, nÆ¡i má»™t ngÆ°á»i c&oacute; thá»ƒ thá»±c hiá»‡n c&aacute;c thay Ä‘á»•i m&agrave; kh&ocirc;ng cáº§n gi&aacute;m s&aacute;t.\r\n\r\nMá»™t chuy&ecirc;n gia vá» lÄ©nh vá»±c blockchain cho biáº¿t: &ldquo;Sau khi c&oacute; sá»± Ä‘á»“ng thuáº­n, khá»‘i sáº½ Ä‘Æ°á»£c th&ecirc;m v&agrave;o chuá»—i v&agrave; c&aacute;c giao dá»‹ch cÆ¡ báº£n Ä‘Æ°á»£c ghi láº¡i trong sá»• c&aacute;i ph&acirc;n t&aacute;n. C&aacute;c khá»‘i Ä‘Æ°á»£c li&ecirc;n káº¿t vá»›i nhau má»™t c&aacute;ch an to&agrave;n, táº¡o th&agrave;nh má»™t chuá»—i ká»¹ thuáº­t sá»‘ an to&agrave;n tá»« Ä‘áº§u cho tá»›i cuá»‘i sá»• c&aacute;i&rdquo;. C&aacute;c giao dá»‹ch thÆ°á»ng Ä‘Æ°á»£c báº£o máº­t báº±ng máº­t m&atilde;, c&oacute; nghÄ©a l&agrave; c&aacute;c n&uacute;t cáº§n giáº£i c&aacute;c phÆ°Æ¡ng tr&igrave;nh to&aacute;n há»c phá»©c táº¡p Ä‘á»ƒ xá»­ l&yacute; má»™t giao dá»‹ch.                             ', '1670233335blog82.jpg', '2022-12-05 09:42:15', 4, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(2, 'caoquocbinh', 'quocbinhgithub@gmail.com', '$2y$10$0zTbddBpQ1aZ3i.AcPLrBuZHLle80GrZJaDedzIl/tiQtAmYSubAu', '16701247851sp.jpg', 1),
(4, 'minhchau', 'minhchau@gmail.com', '$2y$10$bN1KiW8Pu8xel5BMtL/SNeTVIu2fYZTi.EhNdYD73Dcc2omIeJe/e', '16701497718sp.jpg', 2),
(5, 'TranLuu', 'tranluu@gmail.com', '$2y$10$rkhZdReqVD4he2yBfMyyDuaxAol3X3mU2lQds5CNjCSSfpHLzgfPe', '16701678806sp.jpg', 2),
(7, 'hayenvy', 'hayenvy@gmail.com', '$2y$10$cDUbEVWX//W9bIalY73iiuWL6aEEqUY9Mdve19zki01uf77CRe0fG', '16701680349sp.jpg', 1),
(10, 'Leesin', 'lessin@gmail.com', '$2y$10$7Df/d793rlMyMABwlkchNup8/gQgCvZ5yi8aOLqnoDmYLrvlRmc9K', '16701686798sp.jpg', 1),
(11, 'ashe', 'ashe@gmail.com', '$2y$10$rnJjLqcDLrfaoeQw1bTfOe9JejwiFsNXEHJa/PCUkjrIIY2x7E5PC', '16701688019sp.jpg', 1),
(12, 'LyThanhThuy', 'lythanh@gmail.com', '$2y$10$1IQwyKfEkjv26aoQxo6FLeMiWY.5nn8I9u4Eey9Vvi2bbeAT2oMMS', '16701690201sp.jpg', 2),
(13, 'kieuminhtuan', 'kieuminhtuan@gmail.com', '$2y$10$.J1jYp6Uhw6Ahcr2ZGwWI.4hfHhsULF9mAtMYHog8hnlr4rEwqEYm', '16701698161sp1.jpg', 2),
(14, 'mbaber', 'mbaber@gmail.com', '$2y$10$Rlgk9PhrZ2bXnwISCEPEjunfhpAlYP/qv9gsNUz7xbOXW1JBySyui', '16701734439sp.jpg', 2),
(15, 'yasuo', 'yasuo@gmail.com', '$2y$10$4EmsNLYj0/AGz/li.rK4DOKcBU1ncbMB/9wrdW6XsMyNl9fXPG7J6', '1670233273avatar14.jpg', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
