-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 05:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `bajajauto`
--

CREATE TABLE `bajajauto` (
  `id` int(11) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `fcat` varchar(100) DEFAULT NULL,
  `client` varchar(100) DEFAULT NULL,
  `campaign` varchar(100) DEFAULT NULL,
  `dim` varchar(100) DEFAULT NULL,
  `animation` longtext DEFAULT NULL,
  `click` varchar(500) DEFAULT NULL,
  `impression` varchar(500) DEFAULT NULL,
  `Select Assets` varchar(100) DEFAULT NULL,
  `bg` varchar(500) DEFAULT NULL,
  `copy` varchar(500) DEFAULT NULL,
  `cta` varchar(500) DEFAULT NULL,
  `card2` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bajajauto`
--

INSERT INTO `bajajauto` (`id`, `date`, `fcat`, `client`, `campaign`, `dim`, `animation`, `click`, `impression`, `Select Assets`, `bg`, `copy`, `cta`, `card2`) VALUES
(1, '', '', 'bajajauto', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(2, '', '', 'bajajauto', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(3, '', '', 'aprimeauto', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(4, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(5, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(6, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(7, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(8, '2022-11-29', '', 'growauto', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(9, '2022-11-29', '', 'growauto', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(10, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(11, '', '', '', 'lotrtamil', '300x600', '', '', '', '', '', '', '', NULL),
(12, '', '', '', 'lotrtamil', '300x600', '', '', '', '', '', '', '', NULL),
(13, '', '', '', 'lotrtamil', '300x600', '', '', '', '', '', '', '', NULL),
(14, '', '', '', 'lotrtamil', '300x600', '', '', '', '', '', '', '', NULL),
(15, '', '', '', 'lotrtamil', '300x600', '', '', '', '', '', '', '', NULL),
(16, '', '', '', 'lotrtamil', '300x600', '', '', '', '', '', '', '', NULL),
(17, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(18, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(19, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(20, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(21, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(22, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(23, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(24, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(25, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(26, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(27, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(28, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(29, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(30, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(31, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(32, '', '', '', 'ltor2apvs', '160x600', '', '', '', '', '', '', '', NULL),
(33, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(34, '', '', '', 'ltor2apvs', '160x600', '', '', '', '', '', '', '', NULL),
(35, '', '', 'aprimeauto', 'dbmal', '160x600', '', '', '', '', '', '', '', NULL),
(36, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(37, '', '', 'growauto', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(38, '', '', 'growauto', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(39, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(40, '', '', '', 'dbmal', '728x90', '', '', '', '', '', '', '', NULL),
(41, '', '', '', 'dbmal', '728x90', '', '', '', '', '', '', '', NULL),
(42, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(43, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(44, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(45, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(46, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(47, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(48, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(49, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(50, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(51, '', '', '', 'loftherdbm', '320x480', '', '', '', '', '', '', '', NULL),
(52, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(53, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(54, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(55, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(56, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(57, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(58, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(59, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(60, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(61, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(62, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(63, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(64, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(65, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(66, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(67, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(68, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(69, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(70, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(71, '', '', '', 'dbmal', '300x250', '', '', '', '', '', '', '', NULL),
(72, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(73, '', '', '', 'lordringsapv', '300x250', '', '', '', '', '', '', '', NULL),
(74, '', '', '', 'lordringsapv', '300x250', '', '', '', '', '', '', '', NULL),
(75, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(76, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(77, '', '', '', 'dbmal', '300x250', '', '', '', '', '', '', '', NULL),
(78, '', '', '', 'lotrtamil', '300x600', '', '', '', '', '', '', '', NULL),
(79, '', '', '', 'telguswig', '320x480', '', '', '', '', '', '', '', NULL),
(80, '', '', '', 'dbmal', '300x250', '', '', '', '', '', '', '', NULL),
(81, '', '', '', 'lotrtamil', '300x600', '', '', '', '', '', '', '', NULL),
(82, '', '', '', 'telguswig', '320x480', '', '', '', '', '', '', '', NULL),
(83, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(84, '', '', '', 'lordringsapv', '300x250', '', '', '', '', '', '', '', NULL),
(85, '', '', '', 'loftherdbm', '300x600', '', '', '', '', '', '', '', NULL),
(86, '', '', '', 'dbmal', '728x90', '', '', '', '', '', '', '', NULL),
(87, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(88, '', '', '', 'lordringsapv', '300x250', '', '', '', '', '', '', '', NULL),
(89, '', '', '', 'loftherdbm', '300x600', '', '', '', '', '', '', '', NULL),
(90, '', '', '', 'dbmal', '728x90', '', '', '', '', '', '', '', NULL),
(91, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(92, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(93, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(94, '', '', 'aprimeauto', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(95, '', '', 'aprimeauto', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(96, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(97, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(98, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(99, '', '', '', 'pshndap', '300x250', '', '', '', '', '', '', '', NULL),
(100, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(101, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(102, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(103, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(104, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(105, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(106, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(107, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(108, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(109, '', '', '', 'jwtmone', '480x320', '', '', '', '', '', '', '', NULL),
(110, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(111, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(112, '', '', '', 'jwtmone', '480x320', '', '', '', '', '', '', '', NULL),
(113, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(114, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(115, '', '', '', 'jwtmone', '480x320', '', '', '', '', '', '', '', NULL),
(116, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(117, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(118, '', '', '', 'jwtmone', '480x320', '', '', '', '', '', '', '', NULL),
(119, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(120, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(121, '', '', '', 'jwtmone', '480x320', '', '', '', '', '', '', '', NULL),
(122, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(123, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(124, '', '', '', 'jwtmone', '480x320', '', '', '', '', '', '', '', NULL),
(125, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(126, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(127, '', '', '', 'jwtmone', '480x320', '', '', '', '', '', '', '', NULL),
(128, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(129, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(130, '', '', '', 'jwtmone', '480x320', '', '', '', '', '', '', '', NULL),
(131, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(132, '', '', '', 'lotrtamil', '160x600', '', '', '', '', '', '', '', NULL),
(133, '', '', '', 'jwtmone', '480x320', '', '', '', '', '', '', '', NULL),
(134, '', '', '', 'telguswig', '160x600', '', '', '', '', '', '', '', NULL),
(135, '', '', '', 'lotrtamil', '300x250', '', '', '', '', '', '', '', NULL),
(136, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(137, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(138, '', '', '', 'lordringsapv', '300x250', '', '', '', '', '', '', '', NULL),
(139, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(140, '', '', '', 'lordringsapv', '300x250', '', '', '', '', '', '', '', NULL),
(141, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(142, '', '', '', 'lordringsapv', '300x250', '', '', '', '', '', '', '', NULL),
(143, '', '', '', 'telguswig', '300x250', '', '', '', '', '', '', '', NULL),
(144, '', '', '', 'lordringsapv', '300x250', '', '', '', '', '', '', '', NULL),
(145, '2022-11-30', 'test1', 'aprimeauto', 'telguswig', '300x250', 'function bgAnim() { var tlll = new TimelineMax({repeat:0,repeatDelay:0 }); tlll.to(\"#bg\",3,{scale:1.05,opacity:1, ease:Power0.easeInOut}); tlll.to(\"#bg\",2,{scale:1,opacity:1, ease:Power0.easeInOut}); } bgAnim(); function Anim() { var tl = new TimelineMax({repeat:4,repeatDelay:2.5});tl.from(\"#logo\",.6,{x:20,opacity:0,ease:Power1.easeNone},\"-=.6\"); tl.from(\"#cta\",.6,{x:-20,opacity:0,ease:Power1.easeIn},\"-=.\");tl.from(\"#copy\",.7,{x:-20,opacity:0,ease:Power1.easeNone},\"=+.7\");tl.from(\"#copy2\",.7,{y:30,opacity:0,ease:Power1.easeNone},\"=+.7\"); } Anim();', '', '', NULL, 'https://s.hcurvecdn.com/bajajauto/telguswig/300x250/bg.png', 'https://s.hcurvecdn.com/bajajauto/telguswig/300x250/copy.png', NULL, NULL),
(146, '2022-11-30', 'test2', 'growauto', 'dbmal', '300x250', 'function Anim() { var tl = new TimelineMax({repeat:4,repeatDelay:2.5});tl.from(\"#copy\",.6,{y:-200,opacity:1,ease:Power1.easeIn},\"-=.5\"); tl.from(\"#copy2\",.6,{x:200,opacity:1,ease:Power1.easeIn},\"-=.2\"); tl.from(\"#image\",.6,{x:-150,opacity:0,ease:Power1.easeNone},\"=+.2\"); tl.to(\"#cta\",0.5,{scale:1.05,opacity:1,ease:Power3.easeIn}); tl.to(\"#cta\",0.5,{scale:1,opacity:1,ease:Power3.easeIn});} Anim();', '', '', '', '', '', '', ''),
(147, '2022-11-30', 'test1', 'aprimeauto', 'telguswig', '300x250', 'function bgAnim() { var tlll = new TimelineMax({repeat:0,repeatDelay:0 }); tlll.to(\"#bg\",3,{scale:1.05,opacity:1, ease:Power0.easeInOut}); tlll.to(\"#bg\",2,{scale:1,opacity:1, ease:Power0.easeInOut}); } bgAnim(); function Anim() { var tl = new TimelineMax({repeat:4,repeatDelay:2.5});tl.from(\"#logo\",.6,{x:20,opacity:0,ease:Power1.easeNone},\"-=.6\"); tl.from(\"#cta\",.6,{x:-20,opacity:0,ease:Power1.easeIn},\"-=.\");tl.from(\"#copy\",.7,{x:-20,opacity:0,ease:Power1.easeNone},\"=+.7\");tl.from(\"#copy2\",.7,{y:30,opacity:0,ease:Power1.easeNone},\"=+.7\"); } Anim();', '', '', NULL, 'https://s.hcurvecdn.com/bajajauto/telguswig/300x250/bg.png', 'https://s.hcurvecdn.com/bajajauto/telguswig/300x250/copy.png', NULL, NULL),
(148, '2022-11-30', 'test1', 'aprimeauto', 'telguswig', '300x250', 'function bgAnim() { var tlll = new TimelineMax({repeat:0,repeatDelay:0 }); tlll.to(\"#bg\",3,{scale:1.05,opacity:1, ease:Power0.easeInOut}); tlll.to(\"#bg\",2,{scale:1,opacity:1, ease:Power0.easeInOut}); } bgAnim(); function Anim() { var tl = new TimelineMax({repeat:4,repeatDelay:2.5});tl.from(\"#logo\",.6,{x:20,opacity:0,ease:Power1.easeNone},\"-=.6\"); tl.from(\"#cta\",.6,{x:-20,opacity:0,ease:Power1.easeIn},\"-=.\");tl.from(\"#copy\",.7,{x:-20,opacity:0,ease:Power1.easeNone},\"=+.7\");tl.from(\"#copy2\",.7,{y:30,opacity:0,ease:Power1.easeNone},\"=+.7\"); } Anim();', '', '', NULL, 'https://s.hcurvecdn.com/bajajauto/telguswig/300x250/bg.png', 'https://s.hcurvecdn.com/bajajauto/telguswig/300x250/copy.png', NULL, NULL),
(149, '2022-11-30', 'test4', 'aprimeauto', 'dbmal', '300x250', 'function bgAnim() { var tlll = new TimelineMax({repeat:0,repeatDelay:0 }); tlll.to(\"#bg\",3,{scale:1.05,opacity:1, ease:Power0.easeInOut}); tlll.to(\"#bg\",2,{scale:1,opacity:1, ease:Power0.easeInOut}); } bgAnim(); function Anim() { var tl = new TimelineMax({repeat:4,repeatDelay:2.5});tl.from(\"#logo\",.6,{x:20,opacity:0,ease:Power1.easeNone},\"-=.6\"); tl.from(\"#cta\",.6,{x:-20,opacity:0,ease:Power1.easeIn},\"-=.\");tl.from(\"#copy\",.7,{x:-20,opacity:0,ease:Power1.easeNone},\"=+.7\");tl.from(\"#copy2\",.7,{y:30,opacity:0,ease:Power1.easeNone},\"=+.7\"); } Anim();', '', '', NULL, 'https://s.hcurvecdn.com/bajajauto/dbmal/300x250/bg.png', 'https://s.hcurvecdn.com/bajajauto/dbmal/300x250/copy.png', 'https://s.hcurvecdn.com/bajajauto/dbmal/300x250/cta.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `growauto`
--
-- Error reading structure for table test.growauto: #1932 - Table &#039;test.growauto&#039; doesn&#039;t exist in engine
-- Error reading data for table test.growauto: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `test`.`growauto`&#039; at line 1

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bajajauto`
--
ALTER TABLE `bajajauto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bajajauto`
--
ALTER TABLE `bajajauto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
