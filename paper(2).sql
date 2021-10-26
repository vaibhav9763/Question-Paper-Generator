-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 28, 2019 at 07:24 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `paper`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `b_name` (`b_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `b_name`) VALUES
(13, 'COMPUTER ');

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE IF NOT EXISTS `chapter` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `chapternumber` int(5) NOT NULL,
  `chaptername` varchar(300) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `semester` int(5) NOT NULL,
  `branch` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chaptername` (`chaptername`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`id`, `chapternumber`, `chaptername`, `subject`, `semester`, `branch`) VALUES
(18, 1, 'Basics of Software Testing', 'Software Testing', 6, 'COMPUTER'),
(19, 2, 'Types of Testing', 'Software Testing', 6, 'COMPUTER'),
(21, 4, 'Test Mangement', 'Software Testing', 6, 'COMPUTER'),
(24, 5, 'Defect Mangement', 'Software Testing', 6, 'COMPUTER'),
(25, 3, 'Levels of testing and Special Types', 'Software Testing', 6, 'COMPUTER'),
(26, 6, 'Testing Tools And Measureme', 'Software Testing', 6, 'COMPUTER'),
(33, 1, 'Importance of modelling', 'Object Oriented Modeling', 6, 'COMPUTER');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `marks` int(12) NOT NULL,
  `difficultyofquestion` varchar(10) NOT NULL,
  `chapter` varchar(30) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `semester` int(5) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `upload_img` longblob,
  `userid` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=517 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `marks`, `difficultyofquestion`, `chapter`, `subject`, `semester`, `branch`, `upload_img`, `userid`) VALUES
(383, 'What is test reporting ? describe recommendation related to product release.', 3, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(431, 'Define software testing. List all skills of software tester. ', 3, 'Easy', '1:-Basics of Software Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(432, 'Describe Inspection under static testing.', 3, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(433, 'Describe Top-Down integration testing with labelled diagram.', 3, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(434, 'What is test plan ? Write its two advantage', 3, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(435, 'Prepare six test cases for home page of marketing site\r\nwww.flipkart.com.', 6, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(436, 'Enlist any six attributes of defect. Describe them with suitable example. ', 6, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(437, 'Describe equivalence partitioning with example. ', 4, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(438, 'State & explain any four benefits of automation in testing. \r\n', 4, 'Easy', '6:-Testing Tools And Measureme', 'Software Testing', 6, 'COMPUTER', '', NULL),
(439, 'How to perform security testing ? State elements of security testing. ', 4, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(440, 'What is the difference between static & dynamic testing tool ?', 4, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(441, 'Describe positive testing & negative testing. Also write test cases for them.', 4, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(442, 'Describe defect life cycle with neat diagram.', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(443, 'Illustrate process of graph-based testing with suitable example.', 4, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(444, 'Describe any two special tests in testing process.', 4, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(445, 'How to identify resource requirement of test plan ?', 4, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(446, 'Illustrate process of bi-directional integration testing. State its two advantages\r\n& disadvantages.', 4, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(447, 'Differentiate between manual testing & automation testing.', 4, 'Easy', '6:-Testing Tools And Measureme', 'Software Testing', 6, 'COMPUTER', '', NULL),
(448, 'Define software metrics. Describe product Vs process & objective Vs\r\nsubjective metrics.', 4, 'Easy', '6:-Testing Tools And Measureme', 'Software Testing', 6, 'COMPUTER', '', NULL),
(449, 'How to prepare test plan ?', 4, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(450, 'Describe techniques for finding defects.', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(451, 'Describe test case specification of test process.', 4, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(452, 'Describe V-model with labelled diagram.', 6, 'Easy', '1:-Basics of Software Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(453, 'What is the use of code complexity testing ? Also compute code\r\ncomplexity with the help of suitable example.', 6, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(454, 'Describe Test Management Process and give details of following Internal\r\nstandards for process and method :\r\n(i) Naming and storage contention.\r\n(ii) Documentation standard.', 8, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(455, 'What is boundary value analysis ? Explain with suitable example.', 8, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(456, 'Write a short note on :\r\n(i) Load testing\r\n(ii) Stress testing\r\n(iii) Recovery testing\r\n(iv) Usability testing', 8, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(457, 'Describe quality assurance and quality control.', 4, 'Easy', '1:-Basics of Software Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(458, 'Describe alpha testing with its entry & exit criteria.', 4, 'Easy', '1:-Basics of Software Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(459, 'What are types of test report ? Write contents of test summary report.', 4, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(460, 'List all defect classification. Also describe any one defect in brief.', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(461, 'List & explain techniques of finding bugs.', 4, 'Easy', '1:-Basics of Software Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(462, 'What is Software testing ? State objectives of Software testing.', 3, 'Easy', '1:-Basics of Software Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(463, 'What is Black Box testing ? List any four techniques of Black Box\r\ntesting.', 3, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(464, 'Explain the Regression testing. State when the Regression testing shall\r\nbe done.', 4, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(465, 'Write any four test cases to test login form.', 3, 'Easy', '1:-Basics of Software Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(466, 'Describe use of load testing and stress testing to test online result display\r\nfacility of MSBTE website.', 6, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(467, 'What are the points considered while estimating impact of a defect ?\r\nAlso explain techniques to find defect.', 6, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(468, 'What is White Box testing ? Explain any one technique of static White Box\r\ntesting', 4, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(469, 'How to select a testing tool ? Explain in detail', 4, 'Easy', '6:-Testing Tools And Measureme', 'Software Testing', 6, 'COMPUTER', '', NULL),
(470, 'Enlist components of usability testing. Which features of Software are tested in\r\nusability testing ?', 4, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(471, 'Define Metrics and Measurements. Explain need of Software measurement', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(473, 'State any four objectives of user documentation testing. How these are useful\r\nin planning user documentation test ?', 4, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(474, 'With the help of suitable example explain decision table. Why decision table is\r\nimportant ?', 4, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(475, 'Explain GUI testing with suitable example', 4, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(476, 'Explain the ‘Test Infrastructure’ components with diagram', 4, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(477, 'Give comparison between Alpha testing and Beta testing. (any four points)', 4, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(478, 'Write down any four limitations of manual testing', 4, 'Easy', '6:-Testing Tools And Measureme', 'Software Testing', 6, 'COMPUTER', '', NULL),
(479, 'What is test case ? Which parameters are to be considered while\r\ndocumenting test cases ?', 4, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(480, 'What is automated testing ? Write down advantages of using automated\r\ntesting tools in software testing.', 4, 'Easy', '6:-Testing Tools And Measureme', 'Software Testing', 6, 'COMPUTER', '', NULL),
(481, 'Explain defect life cycle to identify status of defect with proper labelled\r\ndiagram', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(482, 'Explain test deliverables in details.', 4, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(484, 'Prepare any eight test cases for admission form of college admission.', 8, 'Easy', '1:-Basics of Software Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(485, 'With the suitable example, explain how ‘Basis Path Testing’ is used to derive\r\nthe code complexity for the testing.', 8, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(486, 'What is Integration testing ? List types of Integration testing and explain any\r\nfour types in brief.', 8, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(487, 'Which parameters are considered while writing good defect report ? Also write\r\ncontents of defect template.', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(488, 'Define the terms Error : Defect, Fault and Bug in relation with Software\r\ntesting', 4, 'Easy', '1:-Basics of Software Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(489, 'Give the defect classification and its meaning', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(490, 'What is test planning and test management ?', 4, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(491, 'With the help of diagram describe client-server testing', 4, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(492, 'Describe V-model with labelled diagram. State its any two advantages\r\nand disadvantages. Also write where it is applicable.', 6, 'Easy', '1:-Basics of Software Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(493, 'Give any four difference between Quality Assurance and Quality\r\nControl.', 4, 'Easy', '1:-Basics of Software Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(494, 'Describe technical review under static testing.', 4, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(495, 'With the help of neat diagram, describe unit testing.', 4, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(496, 'Give any two advantages and any two limitations of Function/test\r\nmatrix.', 4, 'Easy', '6:-Testing Tools And Measureme', 'Software Testing', 6, 'COMPUTER', '', NULL),
(497, 'Prepare and write six test cases for simple calculator application.', 6, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(498, 'Describe Defect Management Process with neat & labelled diagram.', 6, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(499, 'Describe how to select testing tool.', 4, 'Easy', '6:-Testing Tools And Measureme', 'Software Testing', 6, 'COMPUTER', '', NULL),
(500, 'Prepare and write four test cases for Library Management System of college.', 4, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(501, 'Give any four difference between Manual and Automated testing.', 4, 'Easy', '6:-Testing Tools And Measureme', 'Software Testing', 6, 'COMPUTER', '', NULL),
(502, 'Explain Requirement defects and Design defects.', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(503, 'Explain any one type of structural white box testing in detail.', 4, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(504, 'What is external test standard ? Give any three types of external standards.', 4, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(505, 'Describe how to perform usability and GUI testing.', 4, 'Easy', '3:-Levels of testing and Speci', 'Software Testing', 6, 'COMPUTER', '', NULL),
(506, 'Give any two advantages and any two disadvantages of using testing tools.', 4, 'Easy', '6:-Testing Tools And Measureme', 'Software Testing', 6, 'COMPUTER', '', NULL),
(507, 'Explain Defect template.', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(508, 'Give any four advantages of test planning.', 4, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(509, 'Describe the factors considered to decide test strategy or test approach.', 4, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(510, 'Differentiate between verification and validation.', 6, 'Easy', '1:-Basics of Software Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(511, 'Describe test reporting in detail. How to prepare a summary report ?', 4, 'Easy', '4:-Test Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(512, 'Give any two root causes of defects. Also give any two effects of defects.', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(513, 'Describe compatibility testing with an example.', 4, 'Easy', '2:-Types of Testing', 'Software Testing', 6, 'COMPUTER', '', NULL),
(514, 'what is the process of bug reporting', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(515, 'give classification of defect in detail', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL),
(516, 'give an overview of defect management', 4, 'Easy', '5:-Defect Mangement', 'Software Testing', 6, 'COMPUTER', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(50) NOT NULL,
  `s_code` varchar(10) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `branch` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `s_name` (`s_name`,`s_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `s_name`, `s_code`, `semester`, `branch`) VALUES
(11, 'java', '22412', '4', 'COMPUTER'),
(12, 'c program', '234455', '2', 'COMPUTER'),
(13, 'Software Testing', '17624', '6', 'COMPUTER'),
(20, 'Object Oriented Modeling', '17630', '6', 'COMPUTER');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `email`, `Username`, `Password`) VALUES
(9, 'shawn', 'watson', 'shwan123@gmail.com', 'shawn123', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `xyz`
--

CREATE TABLE IF NOT EXISTS `xyz` (
  `x` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
