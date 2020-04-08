-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2017 at 04:32 PM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `applicant_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE IF NOT EXISTS `applicants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `id_number` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_applicants_on_email` (`email`) USING BTREE,
  UNIQUE KEY `index_applicants_on_reset_password_token` (`reset_password_token`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `username`, `id_number`) VALUES
(1, 'calvin@littlepig.cc', '$2a$11$.woG8NCdAm5dWCgMph8JiuNSsJNuNhmZefV5hFjE2YsMIIL00SXhK', NULL, NULL, '2017-05-25 12:00:28', 5, '2017-05-25 12:00:28', '2017-05-25 10:38:22', '127.0.0.1', '127.0.0.1', '2017-05-23 13:39:16', '2017-05-25 12:00:28', 'Calvin', 9109015351083);

-- --------------------------------------------------------

--
-- Table structure for table `applicant_addresses`
--

CREATE TABLE IF NOT EXISTS `applicant_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address_Line_1` varchar(255) DEFAULT NULL,
  `Address_Line_2` varchar(255) DEFAULT NULL,
  `Address_Line_3` varchar(255) DEFAULT NULL,
  `Postal_Code` int(11) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_addresses_on_applicant_id` (`applicant_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `applicant_addresses`
--

INSERT INTO `applicant_addresses` (`id`, `Address_Line_1`, `Address_Line_2`, `Address_Line_3`, `Postal_Code`, `applicant_id`, `created_at`, `updated_at`) VALUES
(1, '76 Beach Road', 'Nahoon', 'East London', 5200, 1, '2017-05-23 13:57:10', '2017-05-23 13:57:10'),
(2, '101 Main Road', 'Amalinda', 'East London', 5247, 1, '2017-05-23 13:58:26', '2017-05-23 13:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_experiences`
--

CREATE TABLE IF NOT EXISTS `applicant_experiences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Job_Name` varchar(255) DEFAULT NULL,
  `Company_Name` varchar(255) DEFAULT NULL,
  `Duties` varchar(255) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_experiences_on_applicant_id` (`applicant_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `applicant_experiences`
--

INSERT INTO `applicant_experiences` (`id`, `Job_Name`, `Company_Name`, `Duties`, `Start_Date`, `End_Date`, `applicant_id`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 'test', '2017-05-15', '2017-05-23', 1, '2017-05-23 14:25:13', '2017-05-23 14:25:13'),
(2, 'test2', 'test2', 'test2', '2017-05-15', '2017-05-25', 1, '2017-05-25 11:21:47', '2017-05-25 11:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_field_of_interests`
--

CREATE TABLE IF NOT EXISTS `applicant_field_of_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Field_Of_Interest` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `applicant_field_of_interests`
--

INSERT INTO `applicant_field_of_interests` (`id`, `Field_Of_Interest`, `created_at`, `updated_at`) VALUES
(1, 'Software Development', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(2, 'Support Services', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(3, 'System Analyst', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(4, 'Software Tester', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(5, 'Database Administrator', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(6, 'Network Administrator ', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(7, 'Security Specialist  ', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(8, 'System Administrator', '2017-05-15 10:13:48', '2017-05-15 10:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_field_of_studies`
--

CREATE TABLE IF NOT EXISTS `applicant_field_of_studies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Field_Of_Study` varchar(255) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_date` date DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `applicant_university_id` int(11) DEFAULT NULL,
  `applicant_qual_id` int(11) DEFAULT NULL,
  `applicant_qual_status_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_field_of_studies_on_applicant_id` (`applicant_id`),
  KEY `index_applicant_field_of_studies_on_applicant_university_id` (`applicant_university_id`),
  KEY `index_applicant_field_of_studies_on_applicant_qual_id` (`applicant_qual_id`),
  KEY `index_applicant_field_of_studies_on_applicant_qual_status_id` (`applicant_qual_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `applicant_field_of_studies`
--

INSERT INTO `applicant_field_of_studies` (`id`, `Field_Of_Study`, `Start_Date`, `End_date`, `applicant_id`, `applicant_university_id`, `applicant_qual_id`, `applicant_qual_status_id`, `created_at`, `updated_at`) VALUES
(1, 'I.T', '2013-01-25', '2016-11-25', 1, 15, 7, 1, '2017-05-25 10:25:31', '2017-05-25 10:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_foi_programs`
--

CREATE TABLE IF NOT EXISTS `applicant_foi_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_id` int(11) DEFAULT NULL,
  `applicant_program_interest_id` int(11) DEFAULT NULL,
  `applicant_field_of_interest_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_foi_programs_on_applicant_id` (`applicant_id`),
  KEY `index_applicant_foi_programs_on_applicant_program_interest_id` (`applicant_program_interest_id`),
  KEY `index_applicant_foi_programs_on_applicant_field_of_interest_id` (`applicant_field_of_interest_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `applicant_foi_programs`
--

INSERT INTO `applicant_foi_programs` (`id`, `applicant_id`, `applicant_program_interest_id`, `applicant_field_of_interest_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2017-05-25 13:53:29', '2017-05-25 13:53:29'),
(2, 1, 2, 3, '2017-05-25 14:28:18', '2017-05-25 14:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_genders`
--

CREATE TABLE IF NOT EXISTS `applicant_genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Gender` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `applicant_genders`
--

INSERT INTO `applicant_genders` (`id`, `Gender`, `created_at`, `updated_at`) VALUES
(1, 'Female', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(2, 'Male', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(3, 'Unspecified', '2017-05-15 10:13:48', '2017-05-15 10:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_marital_statuses`
--

CREATE TABLE IF NOT EXISTS `applicant_marital_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Marital_Status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `applicant_marital_statuses`
--

INSERT INTO `applicant_marital_statuses` (`id`, `Marital_Status`, `created_at`, `updated_at`) VALUES
(1, 'Single', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(2, 'Married', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(3, 'Divorced', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(4, 'Widowed', '2017-05-15 10:13:48', '2017-05-15 10:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_nationalities`
--

CREATE TABLE IF NOT EXISTS `applicant_nationalities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nationality` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `applicant_nationalities`
--

INSERT INTO `applicant_nationalities` (`id`, `Nationality`, `created_at`, `updated_at`) VALUES
(1, 'SA Citizen By Birth', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(2, 'Permanent Resident', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(3, 'Temporary Resident', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(4, 'SA Citizen By Descent', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(5, 'SA Citizen By Naturalization', '2017-05-15 10:13:48', '2017-05-15 10:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_personal_details`
--

CREATE TABLE IF NOT EXISTS `applicant_personal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Surname` varchar(255) DEFAULT NULL,
  `First_Name` varchar(255) DEFAULT NULL,
  `Middle_Name` varchar(255) DEFAULT NULL,
  `Contact_Number` varchar(255) DEFAULT NULL,
  `Alt_Contact_Number` varchar(255) DEFAULT NULL,
  `Criminal_Record` int(11) DEFAULT NULL,
  `Skills` text,
  `Application_Status` int(11) DEFAULT NULL,
  `Number_Of_Dependancies` int(11) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `applicant_race_id` int(11) DEFAULT NULL,
  `applicant_gender_id` int(11) DEFAULT NULL,
  `applicant_marital_status_id` int(11) DEFAULT NULL,
  `applicant_nationality_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_personal_details_on_applicant_id` (`applicant_id`) USING BTREE,
  KEY `index_applicant_personal_details_on_applicant_race_id` (`applicant_race_id`),
  KEY `index_applicant_personal_details_on_applicant_gender_id` (`applicant_gender_id`),
  KEY `index_applicant_personal_details_on_applicant_marital_status_id` (`applicant_marital_status_id`),
  KEY `index_applicant_personal_details_on_applicant_nationality_id` (`applicant_nationality_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `applicant_personal_details`
--

INSERT INTO `applicant_personal_details` (`id`, `Surname`, `First_Name`, `Middle_Name`, `Contact_Number`, `Alt_Contact_Number`, `Criminal_Record`, `Skills`, `Application_Status`, `Number_Of_Dependancies`, `applicant_id`, `created_at`, `updated_at`, `applicant_race_id`, `applicant_gender_id`, `applicant_marital_status_id`, `applicant_nationality_id`) VALUES
(6, 'Seidle', 'Calvin', 'Michael', '0834200117', '0612818650', 0, 'html, rails', 1, 1, 1, '2017-05-25 08:16:21', '2017-05-25 08:16:21', 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `applicant_program_interests`
--

CREATE TABLE IF NOT EXISTS `applicant_program_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Program` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `applicant_program_interests`
--

INSERT INTO `applicant_program_interests` (`id`, `Program`, `created_at`, `updated_at`) VALUES
(1, 'Internship', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Learnership', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Bursary', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_quals`
--

CREATE TABLE IF NOT EXISTS `applicant_quals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Qualification_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `applicant_quals`
--

INSERT INTO `applicant_quals` (`id`, `Qualification_Name`, `created_at`, `updated_at`) VALUES
(1, 'Advanced Diploma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Advanced Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'B-Tech', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Bachelors Degree', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Certificate(HEQCIS)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Diploma(Min 240)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Diploma(Min 360)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Elementary Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Further Diploma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'General Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Foundational Learning Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Higher Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Intermediate Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Matric Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Masters Degree', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'National N Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'National Certificate Vocation', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'National Diploma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Industry Certification', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'National First Degree', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'National First Degree (Min 480)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Post Dip Diploma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Post Basic Diploma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Postgraduate Diploma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Professional Qualification', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Professional Registration', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Honours Degree', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Doctoral Degree', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_qual_statuses`
--

CREATE TABLE IF NOT EXISTS `applicant_qual_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Qualification_Status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `applicant_qual_statuses`
--

INSERT INTO `applicant_qual_statuses` (`id`, `Qualification_Status`, `created_at`, `updated_at`) VALUES
(1, 'Complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Not-Complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'In-Progress', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_races`
--

CREATE TABLE IF NOT EXISTS `applicant_races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Race` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `applicant_races`
--

INSERT INTO `applicant_races` (`id`, `Race`, `created_at`, `updated_at`) VALUES
(1, 'Black African', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(2, 'Coloured', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(3, 'Indian', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(4, 'Asian', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(5, 'White', '2017-05-15 10:13:48', '2017-05-15 10:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_references`
--

CREATE TABLE IF NOT EXISTS `applicant_references` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Contact_Number` varchar(255) DEFAULT NULL,
  `Reference_Name` varchar(255) DEFAULT NULL,
  `Email_address` varchar(255) DEFAULT NULL,
  `Relationship` varchar(255) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_references_on_applicant_id` (`applicant_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `applicant_references`
--

INSERT INTO `applicant_references` (`id`, `Contact_Number`, `Reference_Name`, `Email_address`, `Relationship`, `applicant_id`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 'test', 'test', 1, '2017-05-25 11:24:13', '2017-05-25 11:24:13'),
(2, 'test2', 'test2', 'test2', 'test2', 1, '2017-05-25 11:25:28', '2017-05-25 11:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_universities`
--

CREATE TABLE IF NOT EXISTS `applicant_universities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `University_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `applicant_universities`
--

INSERT INTO `applicant_universities` (`id`, `University_Name`, `created_at`, `updated_at`) VALUES
(1, 'Cape Peninsula University Of Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Central University Of Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Mangosuthu University of Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Durban University Of Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Nelson Mandela Metropolitan University', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Rhodes University', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'University Of Cape Town', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'University Of Fort Hare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'University Of Johannesburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'University Of KwaZulu-Natal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'University Of Limpopo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'University Of Mpumalanga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'University Of Pretoria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'University Of South Africa (UNISA)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'University Of Stellenbosch', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'University Of The Free State', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'University Of The Western Cape', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'University Of The Witwatersrand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'University Of Venda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'University Of Zululand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Walter Sisulu University', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Tshwane University Of Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'North-West University', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Sefako Makgatho Health Sciences University', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Sol Plaatje University', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Vaal University Of Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2017-05-23 13:38:31', '2017-05-23 13:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20170522102144'),
('20170522103034'),
('20170522111811'),
('20170522121503'),
('20170523132228'),
('20170523132250'),
('20170524123829'),
('20170524124109'),
('20170524134321'),
('20170524142257'),
('20170525064711'),
('20170525064743'),
('20170525070345'),
('20170525070556'),
('20170525084623'),
('20170525084705'),
('20170525084731'),
('20170525092255'),
('20170525092353'),
('20170525092454'),
('20170525092600'),
('20170525125633'),
('20170525125736'),
('20170525130141'),
('20170525130614');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicant_addresses`
--
ALTER TABLE `applicant_addresses`
  ADD CONSTRAINT `fk_rails_a6c3a6add4` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `applicant_experiences`
--
ALTER TABLE `applicant_experiences`
  ADD CONSTRAINT `fk_rails_088bf27032` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `applicant_field_of_studies`
--
ALTER TABLE `applicant_field_of_studies`
  ADD CONSTRAINT `fk_rails_4fd5490b20` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  ADD CONSTRAINT `fk_rails_5367c39a2e` FOREIGN KEY (`applicant_university_id`) REFERENCES `applicant_universities` (`id`),
  ADD CONSTRAINT `fk_rails_32e54702ae` FOREIGN KEY (`applicant_qual_id`) REFERENCES `applicant_quals` (`id`),
  ADD CONSTRAINT `fk_rails_af256f49c0` FOREIGN KEY (`applicant_qual_status_id`) REFERENCES `applicant_qual_statuses` (`id`);

--
-- Constraints for table `applicant_foi_programs`
--
ALTER TABLE `applicant_foi_programs`
  ADD CONSTRAINT `fk_rails_84d3533413` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  ADD CONSTRAINT `fk_rails_b9e4ec69fc` FOREIGN KEY (`applicant_program_interest_id`) REFERENCES `applicant_program_interests` (`id`),
  ADD CONSTRAINT `fk_rails_c744fc2e80` FOREIGN KEY (`applicant_field_of_interest_id`) REFERENCES `applicant_field_of_interests` (`id`);

--
-- Constraints for table `applicant_personal_details`
--
ALTER TABLE `applicant_personal_details`
  ADD CONSTRAINT `fk_rails_1bd22cdfcf` FOREIGN KEY (`applicant_nationality_id`) REFERENCES `applicant_nationalities` (`id`),
  ADD CONSTRAINT `fk_rails_2f45c984b0` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  ADD CONSTRAINT `fk_rails_a90cf1c022` FOREIGN KEY (`applicant_race_id`) REFERENCES `applicant_races` (`id`),
  ADD CONSTRAINT `fk_rails_beb9586562` FOREIGN KEY (`applicant_marital_status_id`) REFERENCES `applicant_marital_statuses` (`id`),
  ADD CONSTRAINT `fk_rails_da42a17f1a` FOREIGN KEY (`applicant_gender_id`) REFERENCES `applicant_genders` (`id`);

--
-- Constraints for table `applicant_references`
--
ALTER TABLE `applicant_references`
  ADD CONSTRAINT `fk_rails_d6a3397dbf` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
