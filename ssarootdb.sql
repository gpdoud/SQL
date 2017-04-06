 Server: 97.74.149.74  -   Database: ssaroot
 
-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 97.74.149.74
-- Generation Time: Sep 14, 2016 at 06:25 PM
-- Server version: 5.5.43
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `ssaroot`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(30) NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `assignment`
--


-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(30) NOT NULL,
  `section` int(11) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `instructor_id` (`instructor_id`)
) ENGINE=INNODB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60354 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` VALUES(10101, 'English', 101, 10);
INSERT INTO `class` VALUES(10102, 'English', 102, NULL);
INSERT INTO `class` VALUES(10103, 'English', 103, NULL);
INSERT INTO `class` VALUES(10201, 'English', 201, 10);
INSERT INTO `class` VALUES(10202, 'English', 202, NULL);
INSERT INTO `class` VALUES(10203, 'English', 203, NULL);
INSERT INTO `class` VALUES(10301, 'English', 301, 10);
INSERT INTO `class` VALUES(10302, 'English', 302, NULL);
INSERT INTO `class` VALUES(10303, 'English', 303, NULL);
INSERT INTO `class` VALUES(20201, 'Math', 201, 50);
INSERT INTO `class` VALUES(20202, 'Math', 202, NULL);
INSERT INTO `class` VALUES(20203, 'Math', 203, NULL);
INSERT INTO `class` VALUES(20204, 'Math', 204, NULL);
INSERT INTO `class` VALUES(20401, 'Math', 401, 50);
INSERT INTO `class` VALUES(20402, 'Math', 402, NULL);
INSERT INTO `class` VALUES(20403, 'Math', 403, NULL);
INSERT INTO `class` VALUES(20404, 'Math', 404, NULL);
INSERT INTO `class` VALUES(30101, 'History', 101, 80);
INSERT INTO `class` VALUES(30202, 'History', 201, 80);
INSERT INTO `class` VALUES(30303, 'History', 301, 80);
INSERT INTO `class` VALUES(40311, 'Computer Science', 311, 40);
INSERT INTO `class` VALUES(40312, 'Computer Science', 312, 40);
INSERT INTO `class` VALUES(40313, 'Computer Science', 313, 40);
INSERT INTO `class` VALUES(40441, 'Computer Science', 441, 40);
INSERT INTO `class` VALUES(40442, 'Computer Science', 442, 40);
INSERT INTO `class` VALUES(40443, 'Computer Science', 443, 40);
INSERT INTO `class` VALUES(50101, 'Psychology', 101, 20);
INSERT INTO `class` VALUES(50102, 'Psychology', 102, 20);
INSERT INTO `class` VALUES(50231, 'Psychology', 231, 20);
INSERT INTO `class` VALUES(50232, 'Psychology', 232, 20);
INSERT INTO `class` VALUES(60221, 'Education', 221, 60);
INSERT INTO `class` VALUES(60222, 'Education', 222, 60);
INSERT INTO `class` VALUES(60223, 'Education', 223, 60);
INSERT INTO `class` VALUES(60351, 'Education', 351, 70);
INSERT INTO `class` VALUES(60352, 'Education', 352, 70);
INSERT INTO `class` VALUES(60353, 'Education', 353, 70);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `years_experience` int(11) NOT NULL DEFAULT '0',
  `is_tenured` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=INNODB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` VALUES(10, 'Joe', 'Downey', 10, 1);
INSERT INTO `instructor` VALUES(20, 'Jane', 'Jones', 6, 1);
INSERT INTO `instructor` VALUES(30, 'Bill', 'Tensi', 3, 0);
INSERT INTO `instructor` VALUES(40, 'Sherry', 'Nagy', 14, 1);
INSERT INTO `instructor` VALUES(50, 'Frank', 'Schell', 23, 1);
INSERT INTO `instructor` VALUES(60, 'Michelle', 'Bellman', 35, 1);
INSERT INTO `instructor` VALUES(70, 'George', 'Hunt', 2, 0);
INSERT INTO `instructor` VALUES(80, 'Amy', 'Brock', 7, 0);
INSERT INTO `instructor` VALUES(90, 'Larry', 'Seger', 11, 1);
INSERT INTO `instructor` VALUES(100, 'Kathy', 'Miller', 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `req_sat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `major`
--

INSERT INTO `major` VALUES(1, 'General Business', 800);
INSERT INTO `major` VALUES(2, 'Accounting', 1000);
INSERT INTO `major` VALUES(3, 'Finance', 1100);
INSERT INTO `major` VALUES(4, 'Math', 1300);
INSERT INTO `major` VALUES(5, 'Engineering', 1350);
INSERT INTO `major` VALUES(6, 'Education', 900);
INSERT INTO `major` VALUES(7, 'General Studies', 500);

-- --------------------------------------------------------

--
-- Table structure for table `major_class_relationship`
--

CREATE TABLE `major_class_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `major_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `major_id` (`major_id`),
  KEY `class_id` (`class_id`)
) ENGINE=INNODB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `major_class_relationship`
--

INSERT INTO `major_class_relationship` VALUES(1, 1, 10101);
INSERT INTO `major_class_relationship` VALUES(2, 1, 10102);
INSERT INTO `major_class_relationship` VALUES(3, 1, 10103);
INSERT INTO `major_class_relationship` VALUES(4, 1, 20201);
INSERT INTO `major_class_relationship` VALUES(5, 1, 20202);
INSERT INTO `major_class_relationship` VALUES(6, 1, 20203);
INSERT INTO `major_class_relationship` VALUES(7, 1, 30101);
INSERT INTO `major_class_relationship` VALUES(8, 2, 10101);
INSERT INTO `major_class_relationship` VALUES(9, 2, 10102);
INSERT INTO `major_class_relationship` VALUES(10, 2, 10103);
INSERT INTO `major_class_relationship` VALUES(11, 2, 20201);
INSERT INTO `major_class_relationship` VALUES(12, 2, 20202);
INSERT INTO `major_class_relationship` VALUES(13, 2, 20203);
INSERT INTO `major_class_relationship` VALUES(14, 2, 30101);
INSERT INTO `major_class_relationship` VALUES(15, 3, 10101);
INSERT INTO `major_class_relationship` VALUES(16, 3, 10102);
INSERT INTO `major_class_relationship` VALUES(17, 3, 10103);
INSERT INTO `major_class_relationship` VALUES(18, 3, 20201);
INSERT INTO `major_class_relationship` VALUES(19, 3, 20202);
INSERT INTO `major_class_relationship` VALUES(20, 3, 20203);
INSERT INTO `major_class_relationship` VALUES(21, 3, 30101);
INSERT INTO `major_class_relationship` VALUES(22, 4, 10101);
INSERT INTO `major_class_relationship` VALUES(23, 4, 10102);
INSERT INTO `major_class_relationship` VALUES(24, 4, 10103);
INSERT INTO `major_class_relationship` VALUES(25, 4, 20201);
INSERT INTO `major_class_relationship` VALUES(26, 4, 20202);
INSERT INTO `major_class_relationship` VALUES(27, 4, 20203);
INSERT INTO `major_class_relationship` VALUES(28, 4, 20204);
INSERT INTO `major_class_relationship` VALUES(29, 4, 20401);
INSERT INTO `major_class_relationship` VALUES(30, 4, 20402);
INSERT INTO `major_class_relationship` VALUES(31, 4, 20403);
INSERT INTO `major_class_relationship` VALUES(32, 4, 20404);
INSERT INTO `major_class_relationship` VALUES(33, 4, 30101);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `sat` int(11) DEFAULT NULL,
  `gpa` decimal(4,2) NOT NULL,
  `major_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `major_id` (`major_id`)
) ENGINE=INNODB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=192 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` VALUES(100, 'Eric', 'Ephram', 1200, 3.00, 1);
INSERT INTO `student` VALUES(110, 'Greg', 'Gould', 1100, 2.50, NULL);
INSERT INTO `student` VALUES(120, 'Adam', 'Ant', 1300, 3.20, NULL);
INSERT INTO `student` VALUES(130, 'Howard', 'Hess', 1600, 3.70, NULL);
INSERT INTO `student` VALUES(140, 'Charles', 'Caldwell', 900, 2.10, NULL);
INSERT INTO `student` VALUES(150, 'James', 'Joyce', 1100, 2.50, NULL);
INSERT INTO `student` VALUES(160, 'Doug', 'Dumas', 1350, 3.10, NULL);
INSERT INTO `student` VALUES(170, 'Kevin', 'Kraft', 1000, 2.70, NULL);
INSERT INTO `student` VALUES(180, 'Frank', 'Fountain', 1000, 2.50, NULL);
INSERT INTO `student` VALUES(190, 'Brian', 'Biggs', 950, 2.30, NULL);
INSERT INTO `student` VALUES(191, 'George', 'Washington', 1600, 4.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_class_relationship`
--

CREATE TABLE `student_class_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `class_id` (`class_id`)
) ENGINE=INNODB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `student_class_relationship`
--

INSERT INTO `student_class_relationship` VALUES(1, 100, 10101);

