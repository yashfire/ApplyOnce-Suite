-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: applicant_v2
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applicant_addresses`
--

DROP TABLE IF EXISTS `applicant_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address_Line_1` varchar(255) DEFAULT NULL,
  `Address_Line_2` varchar(255) DEFAULT NULL,
  `Address_Line_3` varchar(255) DEFAULT NULL,
  `Postal_Code` int(11) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `applicant_pm_city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_addresses_on_applicant_id` (`applicant_id`),
  KEY `index_applicant_addresses_on_applicant_pm_city_id` (`applicant_pm_city_id`),
  CONSTRAINT `fk_rails_5d99b78ee3` FOREIGN KEY (`applicant_pm_city_id`) REFERENCES `applicant_pm_cities` (`id`),
  CONSTRAINT `fk_rails_a6c3a6add4` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_addresses`
--

LOCK TABLES `applicant_addresses` WRITE;
/*!40000 ALTER TABLE `applicant_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_current_occupations`
--

DROP TABLE IF EXISTS `applicant_current_occupations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_current_occupations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Current_Occupation` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_current_occupations`
--

LOCK TABLES `applicant_current_occupations` WRITE;
/*!40000 ALTER TABLE `applicant_current_occupations` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_current_occupations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_disabilities`
--

DROP TABLE IF EXISTS `applicant_disabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_disabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Disability` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_disabilities`
--

LOCK TABLES `applicant_disabilities` WRITE;
/*!40000 ALTER TABLE `applicant_disabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_disabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_disability_types`
--

DROP TABLE IF EXISTS `applicant_disability_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_disability_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_id` int(11) DEFAULT NULL,
  `applicant_disability_id` int(11) DEFAULT NULL,
  `Disability_Type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_disability_types_on_applicant_id` (`applicant_id`),
  KEY `index_applicant_disability_types_on_applicant_disability_id` (`applicant_disability_id`),
  CONSTRAINT `fk_rails_1dd53ed81b` FOREIGN KEY (`applicant_disability_id`) REFERENCES `applicant_disabilities` (`id`),
  CONSTRAINT `fk_rails_90a79a687c` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_disability_types`
--

LOCK TABLES `applicant_disability_types` WRITE;
/*!40000 ALTER TABLE `applicant_disability_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_disability_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_emergency_contacts`
--

DROP TABLE IF EXISTS `applicant_emergency_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_emergency_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Emergency_Contact_Name` varchar(255) DEFAULT NULL,
  `Emergency_Contact_Number` varchar(255) DEFAULT NULL,
  `Emergency_Contact_Relationship` varchar(255) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_emergency_contacts_on_applicant_id` (`applicant_id`),
  CONSTRAINT `fk_rails_33453f41ad` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_emergency_contacts`
--

LOCK TABLES `applicant_emergency_contacts` WRITE;
/*!40000 ALTER TABLE `applicant_emergency_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_emergency_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_employment_types`
--

DROP TABLE IF EXISTS `applicant_employment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_employment_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Employment_Type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_employment_types`
--

LOCK TABLES `applicant_employment_types` WRITE;
/*!40000 ALTER TABLE `applicant_employment_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_employment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_experiences`
--

DROP TABLE IF EXISTS `applicant_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_experiences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Job_Name` varchar(255) DEFAULT NULL,
  `Company_Name` varchar(255) DEFAULT NULL,
  `Duties` varchar(255) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `applicant_employment_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_experiences_on_applicant_id` (`applicant_id`),
  KEY `index_applicant_experiences_on_applicant_employment_type_id` (`applicant_employment_type_id`),
  CONSTRAINT `fk_rails_088bf27032` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  CONSTRAINT `fk_rails_ddd95e0027` FOREIGN KEY (`applicant_employment_type_id`) REFERENCES `applicant_employment_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_experiences`
--

LOCK TABLES `applicant_experiences` WRITE;
/*!40000 ALTER TABLE `applicant_experiences` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_field_of_interests`
--

DROP TABLE IF EXISTS `applicant_field_of_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_field_of_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Field_Of_Interest` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_field_of_interests`
--

LOCK TABLES `applicant_field_of_interests` WRITE;
/*!40000 ALTER TABLE `applicant_field_of_interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_field_of_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_field_of_studies`
--

DROP TABLE IF EXISTS `applicant_field_of_studies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_field_of_studies` (
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
  KEY `index_applicant_field_of_studies_on_applicant_qual_status_id` (`applicant_qual_status_id`),
  CONSTRAINT `fk_rails_32e54702ae` FOREIGN KEY (`applicant_qual_id`) REFERENCES `applicant_quals` (`id`),
  CONSTRAINT `fk_rails_4fd5490b20` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  CONSTRAINT `fk_rails_5367c39a2e` FOREIGN KEY (`applicant_university_id`) REFERENCES `applicant_universities` (`id`),
  CONSTRAINT `fk_rails_af256f49c0` FOREIGN KEY (`applicant_qual_status_id`) REFERENCES `applicant_qual_statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_field_of_studies`
--

LOCK TABLES `applicant_field_of_studies` WRITE;
/*!40000 ALTER TABLE `applicant_field_of_studies` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_field_of_studies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_foi_programs`
--

DROP TABLE IF EXISTS `applicant_foi_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_foi_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_id` int(11) DEFAULT NULL,
  `applicant_program_interest_id` int(11) DEFAULT NULL,
  `applicant_field_of_interest_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_foi_programs_on_applicant_id` (`applicant_id`),
  KEY `index_applicant_foi_programs_on_applicant_program_interest_id` (`applicant_program_interest_id`),
  KEY `index_applicant_foi_programs_on_applicant_field_of_interest_id` (`applicant_field_of_interest_id`),
  CONSTRAINT `fk_rails_84d3533413` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  CONSTRAINT `fk_rails_b9e4ec69fc` FOREIGN KEY (`applicant_program_interest_id`) REFERENCES `applicant_program_interests` (`id`),
  CONSTRAINT `fk_rails_c744fc2e80` FOREIGN KEY (`applicant_field_of_interest_id`) REFERENCES `applicant_field_of_interests` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_foi_programs`
--

LOCK TABLES `applicant_foi_programs` WRITE;
/*!40000 ALTER TABLE `applicant_foi_programs` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_foi_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_genders`
--

DROP TABLE IF EXISTS `applicant_genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Gender` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_genders`
--

LOCK TABLES `applicant_genders` WRITE;
/*!40000 ALTER TABLE `applicant_genders` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_license_codes`
--

DROP TABLE IF EXISTS `applicant_license_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_license_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Drivers_License_Code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_license_codes`
--

LOCK TABLES `applicant_license_codes` WRITE;
/*!40000 ALTER TABLE `applicant_license_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_license_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_license_statuses`
--

DROP TABLE IF EXISTS `applicant_license_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_license_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Drivers_License_Status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_license_statuses`
--

LOCK TABLES `applicant_license_statuses` WRITE;
/*!40000 ALTER TABLE `applicant_license_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_license_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_licenses`
--

DROP TABLE IF EXISTS `applicant_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_id` int(11) DEFAULT NULL,
  `applicant_license_code_id` int(11) DEFAULT NULL,
  `applicant_license_status_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_licenses_on_applicant_id` (`applicant_id`),
  KEY `index_applicant_licenses_on_applicant_license_code_id` (`applicant_license_code_id`),
  KEY `index_applicant_licenses_on_applicant_license_status_id` (`applicant_license_status_id`),
  CONSTRAINT `fk_rails_21fcb77145` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  CONSTRAINT `fk_rails_94c07d7c26` FOREIGN KEY (`applicant_license_status_id`) REFERENCES `applicant_license_statuses` (`id`),
  CONSTRAINT `fk_rails_efb79c515a` FOREIGN KEY (`applicant_license_code_id`) REFERENCES `applicant_license_codes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_licenses`
--

LOCK TABLES `applicant_licenses` WRITE;
/*!40000 ALTER TABLE `applicant_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_marital_statuses`
--

DROP TABLE IF EXISTS `applicant_marital_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_marital_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Marital_Status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_marital_statuses`
--

LOCK TABLES `applicant_marital_statuses` WRITE;
/*!40000 ALTER TABLE `applicant_marital_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_marital_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_nationalities`
--

DROP TABLE IF EXISTS `applicant_nationalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_nationalities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nationality` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_nationalities`
--

LOCK TABLES `applicant_nationalities` WRITE;
/*!40000 ALTER TABLE `applicant_nationalities` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_nationalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_nqf_levels`
--

DROP TABLE IF EXISTS `applicant_nqf_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_nqf_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NQF_Level` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_nqf_levels`
--

LOCK TABLES `applicant_nqf_levels` WRITE;
/*!40000 ALTER TABLE `applicant_nqf_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_nqf_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_nqf_qualifications`
--

DROP TABLE IF EXISTS `applicant_nqf_qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_nqf_qualifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_nqf_level_id` int(11) DEFAULT NULL,
  `Qualification_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_nqf_qualifications`
--

LOCK TABLES `applicant_nqf_qualifications` WRITE;
/*!40000 ALTER TABLE `applicant_nqf_qualifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_nqf_qualifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_p_municipalities`
--

DROP TABLE IF EXISTS `applicant_p_municipalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_p_municipalities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_province_id` int(11) DEFAULT NULL,
  `Municipality_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_p_municipalities_on_applicant_province_id` (`applicant_province_id`),
  CONSTRAINT `fk_rails_6dde94a996` FOREIGN KEY (`applicant_province_id`) REFERENCES `applicant_provinces` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_p_municipalities`
--

LOCK TABLES `applicant_p_municipalities` WRITE;
/*!40000 ALTER TABLE `applicant_p_municipalities` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_p_municipalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_person_qualification_field_of_studies`
--

DROP TABLE IF EXISTS `applicant_person_qualification_field_of_studies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_person_qualification_field_of_studies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Field_Of_Study` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `applicant_university_id` int(11) DEFAULT NULL,
  `applicant_qual_status_id` int(11) DEFAULT NULL,
  `applicant_nqf_qualification_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `my_index` (`applicant_qual_status_id`,`applicant_university_id`,`applicant_nqf_qualification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_person_qualification_field_of_studies`
--

LOCK TABLES `applicant_person_qualification_field_of_studies` WRITE;
/*!40000 ALTER TABLE `applicant_person_qualification_field_of_studies` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_person_qualification_field_of_studies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_personal_details`
--

DROP TABLE IF EXISTS `applicant_personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_personal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Surname` varchar(255) DEFAULT NULL,
  `First_Name` varchar(255) DEFAULT NULL,
  `Middle_Name` varchar(255) DEFAULT NULL,
  `Contact_Number` varchar(255) DEFAULT NULL,
  `Alt_Contact_Number` varchar(255) DEFAULT NULL,
  `Criminal_Record` int(11) DEFAULT NULL,
  `Skills` text,
  `Application_Status` int(11) DEFAULT '1',
  `Number_Of_Dependancies` int(11) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `applicant_race_id` int(11) DEFAULT NULL,
  `applicant_gender_id` int(11) DEFAULT NULL,
  `applicant_marital_status_id` int(11) DEFAULT NULL,
  `applicant_nationality_id` int(11) DEFAULT NULL,
  `applicant_current_occupation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_personal_details_on_applicant_id` (`applicant_id`),
  KEY `index_applicant_personal_details_on_applicant_race_id` (`applicant_race_id`),
  KEY `index_applicant_personal_details_on_applicant_gender_id` (`applicant_gender_id`),
  KEY `index_applicant_personal_details_on_applicant_marital_status_id` (`applicant_marital_status_id`),
  KEY `index_applicant_personal_details_on_applicant_nationality_id` (`applicant_nationality_id`),
  CONSTRAINT `fk_rails_1bd22cdfcf` FOREIGN KEY (`applicant_nationality_id`) REFERENCES `applicant_nationalities` (`id`),
  CONSTRAINT `fk_rails_2f45c984b0` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  CONSTRAINT `fk_rails_a90cf1c022` FOREIGN KEY (`applicant_race_id`) REFERENCES `applicant_races` (`id`),
  CONSTRAINT `fk_rails_beb9586562` FOREIGN KEY (`applicant_marital_status_id`) REFERENCES `applicant_marital_statuses` (`id`),
  CONSTRAINT `fk_rails_da42a17f1a` FOREIGN KEY (`applicant_gender_id`) REFERENCES `applicant_genders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_personal_details`
--

LOCK TABLES `applicant_personal_details` WRITE;
/*!40000 ALTER TABLE `applicant_personal_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_personal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_pm_cities`
--

DROP TABLE IF EXISTS `applicant_pm_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_pm_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_p_municipality_id` int(11) DEFAULT NULL,
  `City_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_pm_cities_on_applicant_p_municipality_id` (`applicant_p_municipality_id`),
  CONSTRAINT `fk_rails_b90720e729` FOREIGN KEY (`applicant_p_municipality_id`) REFERENCES `applicant_p_municipalities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_pm_cities`
--

LOCK TABLES `applicant_pm_cities` WRITE;
/*!40000 ALTER TABLE `applicant_pm_cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_pm_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_program_interests`
--

DROP TABLE IF EXISTS `applicant_program_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_program_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Program` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_program_interests`
--

LOCK TABLES `applicant_program_interests` WRITE;
/*!40000 ALTER TABLE `applicant_program_interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_program_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_provinces`
--

DROP TABLE IF EXISTS `applicant_provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_provinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Province_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_provinces`
--

LOCK TABLES `applicant_provinces` WRITE;
/*!40000 ALTER TABLE `applicant_provinces` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_qual_statuses`
--

DROP TABLE IF EXISTS `applicant_qual_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_qual_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Qualification_Status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_qual_statuses`
--

LOCK TABLES `applicant_qual_statuses` WRITE;
/*!40000 ALTER TABLE `applicant_qual_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_qual_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_quals`
--

DROP TABLE IF EXISTS `applicant_quals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_quals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Qualification_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_quals`
--

LOCK TABLES `applicant_quals` WRITE;
/*!40000 ALTER TABLE `applicant_quals` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_quals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_races`
--

DROP TABLE IF EXISTS `applicant_races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Race` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_races`
--

LOCK TABLES `applicant_races` WRITE;
/*!40000 ALTER TABLE `applicant_races` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_races` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_references`
--

DROP TABLE IF EXISTS `applicant_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_references` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Contact_Number` varchar(255) DEFAULT NULL,
  `Reference_Name` varchar(255) DEFAULT NULL,
  `Email_address` varchar(255) DEFAULT NULL,
  `Relationship` varchar(255) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_references_on_applicant_id` (`applicant_id`),
  CONSTRAINT `fk_rails_d6a3397dbf` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_references`
--

LOCK TABLES `applicant_references` WRITE;
/*!40000 ALTER TABLE `applicant_references` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant_universities`
--

DROP TABLE IF EXISTS `applicant_universities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant_universities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `University_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_universities`
--

LOCK TABLES `applicant_universities` WRITE;
/*!40000 ALTER TABLE `applicant_universities` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicant_universities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicants` (
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
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_applicants_on_email` (`email`),
  UNIQUE KEY `index_applicants_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_applicants_on_confirmation_token` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants`
--

LOCK TABLES `applicants` WRITE;
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
INSERT INTO `applicants` VALUES (1,'calvin@littlepig.cc','$2a$11$OhzR837Nnov4xZo.IdREmO0BTwcqokRyKdpnhbOUbHPInA2WOJ.t.',NULL,NULL,NULL,1,'2017-08-16 08:50:59','2017-08-16 08:50:59','127.0.0.1','127.0.0.1','2017-08-16 07:46:26','2017-08-16 08:50:59','calvin',9109015351083,'LBHuLaqr4vxBqQdrxVso','2017-08-16 08:50:42','2017-08-16 07:46:26'),(2,'calvinseidle-webdev@gmail.com','$2a$11$7K7A5KqIVZA4rw31qi55fOC9jE2dOA2bTbvctEW3a83tD2R6PtK12',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-08-16 07:57:49','2017-08-16 07:57:49','calvin1',9109015351082,'kMR95y55FZUkXg1Hxvdw',NULL,'2017-08-16 07:57:49'),(3,'calvinseidle.webdev@gmail.com','$2a$11$FMAz3UOyX3IPl0osS2xh4usp.1jQIryWUV2p0Nrgn5uYU38ORikG.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-08-16 08:20:58','2017-08-16 08:20:58','calvin2',9109015351081,'Nv4_yNq9zdc7z2ybz9Xy',NULL,'2017-08-16 08:20:58');
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','production','2017-08-16 07:40:53','2017-08-16 07:40:53');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170522102144'),('20170522103034'),('20170522111811'),('20170522121503'),('20170523132228'),('20170523132250'),('20170524123829'),('20170524124109'),('20170524134321'),('20170524142257'),('20170525064711'),('20170525064743'),('20170525070345'),('20170525070556'),('20170525092255'),('20170525092353'),('20170525092454'),('20170525092600'),('20170525125633'),('20170525125736'),('20170525130614'),('20170526085843'),('20170526104417'),('20170526104446'),('20170526104621'),('20170531070118'),('20170531070137'),('20170531070210'),('20170531085206'),('20170531085351'),('20170531094054'),('20170531094218'),('20170531100126'),('20170531102805'),('20170612113715'),('20170622074516'),('20170801140900'),('20170802081932'),('20170802085239'),('20170802092206'),('20170802092240'),('20170802100612'),('20170802104958'),('20170803131716');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-28 14:36:12
