/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.6.20 : Database - tracer
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`tracer` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tracer`;

/*Table structure for table `accept_job` */

DROP TABLE IF EXISTS `accept_job`;

CREATE TABLE `accept_job` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `accept_job_reason_id` int(255) DEFAULT NULL,
  `other_reason` text,
  PRIMARY KEY (`id`),
  KEY `FK_accept_job` (`accept_job_reason_id`),
  CONSTRAINT `FK_accept_job` FOREIGN KEY (`accept_job_reason_id`) REFERENCES `accept_job_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `accept_job` */

/*Table structure for table `accept_job_reason` */

DROP TABLE IF EXISTS `accept_job_reason`;

CREATE TABLE `accept_job_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `accept_job_reason` */

insert  into `accept_job_reason`(`id`,`title`) values (1,'Salaries and benefits');
insert  into `accept_job_reason`(`id`,`title`) values (2,'Career challenge');
insert  into `accept_job_reason`(`id`,`title`) values (3,'Related to special skills');
insert  into `accept_job_reason`(`id`,`title`) values (4,'Proximity to residence');
insert  into `accept_job_reason`(`id`,`title`) values (5,'Other reason');

/*Table structure for table `auth_assignment` */

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `idx-auth_assignment-user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_assignment` */

/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item` */

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item_child` */

/*Table structure for table `auth_rule` */

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_rule` */

/*Table structure for table `avatar` */

DROP TABLE IF EXISTS `avatar`;

CREATE TABLE `avatar` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `avatar` enum('girl','boy') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `avatar` */

insert  into `avatar`(`id`,`user_id`,`avatar`) values (2,1,'girl');

/*Table structure for table `badge` */

DROP TABLE IF EXISTS `badge`;

CREATE TABLE `badge` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `stage` int(10) DEFAULT NULL,
  `title` text,
  `table` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `badge` */

insert  into `badge`(`id`,`stage`,`title`,`table`) values (1,1,'Acquainter','general-information');
insert  into `badge`(`id`,`stage`,`title`,`table`) values (2,2,'Learner','education-attainment');
insert  into `badge`(`id`,`stage`,`title`,`table`) values (3,3,'Practitioner','examination');
insert  into `badge`(`id`,`stage`,`title`,`table`) values (4,4,'Goalie','taking-course');
insert  into `badge`(`id`,`stage`,`title`,`table`) values (5,5,'Pedagogue','training');
insert  into `badge`(`id`,`stage`,`title`,`table`) values (6,6,'Grand Chaser','pursue-study');
insert  into `badge`(`id`,`stage`,`title`,`table`) values (7,7,'Service Provider','employment');
insert  into `badge`(`id`,`stage`,`title`,`table`) values (8,8,'Double Dipper','stay-job-range');
insert  into `badge`(`id`,`stage`,`title`,`table`) values (9,9,'Virtuoso','competency');
insert  into `badge`(`id`,`stage`,`title`,`table`) values (10,10,'Seeker','find-job');
insert  into `badge`(`id`,`stage`,`title`,`table`) values (11,11,'Stardom','job-level');
insert  into `badge`(`id`,`stage`,`title`,`table`) values (12,12,'Money Ball','initial-gross');
insert  into `badge`(`id`,`stage`,`title`,`table`) values (13,13,'Allegiant','stay-job');

/*Table structure for table `badge_user` */

DROP TABLE IF EXISTS `badge_user`;

CREATE TABLE `badge_user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `badge_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_badge_user` (`badge_id`),
  CONSTRAINT `FK_badge_user` FOREIGN KEY (`badge_id`) REFERENCES `badge` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `badge_user` */

/*Table structure for table `business_line` */

DROP TABLE IF EXISTS `business_line`;

CREATE TABLE `business_line` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `business_line` */

insert  into `business_line`(`id`,`title`) values (1,'Agriculture, Hunting and Forestry');
insert  into `business_line`(`id`,`title`) values (2,'Fishing');
insert  into `business_line`(`id`,`title`) values (3,'Mining and Quarrying');
insert  into `business_line`(`id`,`title`) values (4,'Manufacturing');
insert  into `business_line`(`id`,`title`) values (5,'Electricity, Gas and Water Supply');
insert  into `business_line`(`id`,`title`) values (6,'Construction');
insert  into `business_line`(`id`,`title`) values (7,'Wholesale and Retail Trade, repair of motor vehicles, motorcycles and personal and household goods\r\n');
insert  into `business_line`(`id`,`title`) values (8,'Hotels and Restaurants');
insert  into `business_line`(`id`,`title`) values (9,'Transport Storage and Communication');
insert  into `business_line`(`id`,`title`) values (10,'Financial Intermediation');
insert  into `business_line`(`id`,`title`) values (11,'Real State, Renting and Business Activities');
insert  into `business_line`(`id`,`title`) values (12,'Public Administration and Defense; Compulsory Social Security');
insert  into `business_line`(`id`,`title`) values (13,'Education');
insert  into `business_line`(`id`,`title`) values (14,'Health and Social Work');
insert  into `business_line`(`id`,`title`) values (15,'Other community, Social and Personal Service Activities');
insert  into `business_line`(`id`,`title`) values (16,'Private Households with Employed Persons');
insert  into `business_line`(`id`,`title`) values (17,'Extra-territorial Organizations and Bodies');

/*Table structure for table `change_job` */

DROP TABLE IF EXISTS `change_job`;

CREATE TABLE `change_job` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `change_job_reason_id` int(255) DEFAULT NULL,
  `other_reason` text,
  PRIMARY KEY (`id`),
  KEY `FK_change_job` (`change_job_reason_id`),
  CONSTRAINT `FK_change_job` FOREIGN KEY (`change_job_reason_id`) REFERENCES `change_job_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `change_job` */

/*Table structure for table `change_job_reason` */

DROP TABLE IF EXISTS `change_job_reason`;

CREATE TABLE `change_job_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `change_job_reason` */

insert  into `change_job_reason`(`id`,`title`) values (1,'Salaries and benefits');
insert  into `change_job_reason`(`id`,`title`) values (2,'Career challenge');
insert  into `change_job_reason`(`id`,`title`) values (3,'Related to special skills');
insert  into `change_job_reason`(`id`,`title`) values (4,'Proximity to residence');
insert  into `change_job_reason`(`id`,`title`) values (5,'Other reason');

/*Table structure for table `chronology` */

DROP TABLE IF EXISTS `chronology`;

CREATE TABLE `chronology` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `table` varchar(200) DEFAULT NULL,
  `stage_id` int(255) DEFAULT NULL,
  `previous_stage` varchar(255) DEFAULT NULL,
  `next_stage` varchar(255) DEFAULT NULL,
  `points` int(20) DEFAULT NULL,
  `subpoints` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_chronology` (`stage_id`),
  CONSTRAINT `FK_chronology` FOREIGN KEY (`stage_id`) REFERENCES `stage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `chronology` */

insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (1,'general-information',1,'','2',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (2,'educational-attainment',2,'1','3',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (3,'examination',2,'2','4',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (4,'taking-course',2,'3','5',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (5,'training',3,'4','6',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (6,'pursue-study',3,'5','7',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (7,'employment',4,'6','8,9',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (8,'unemployment',4,'7','',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (9,'employment-status',4,'10','7',500,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (10,'place_of_work',4,'9','11',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (11,'first_job_after',4,'10','12,21',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (12,'change_job',4,'11','13',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (13,'stay_job_range',4,'12','14',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (14,'find_job',4,'13','15',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (15,'land_job',4,'14','16',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (16,'job_level',4,'15','17',200,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (17,'initial_gross',4,'16','18',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (18,'relevant_job',4,'17','19',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (19,'competency',4,'18','20',200,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (20,'suggestion',4,'19','',200,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (21,'stay_job',4,'11','22',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (22,'first_job',4,'21','12,23',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (23,'accept_job',4,'22','12',100,0);

/*Table structure for table `chronology_user` */

DROP TABLE IF EXISTS `chronology_user`;

CREATE TABLE `chronology_user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `chronology_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_chronology_user` (`chronology_id`),
  CONSTRAINT `FK_chronology_user` FOREIGN KEY (`chronology_id`) REFERENCES `chronology` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chronology_user` */

/*Table structure for table `classification` */

DROP TABLE IF EXISTS `classification`;

CREATE TABLE `classification` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `classification` */

insert  into `classification`(`id`,`title`) values (1,'Officials of Government and Special-Interest Organizations, Corporate Executives, Managers, Managing Proprietors and Supervisors.');
insert  into `classification`(`id`,`title`) values (2,'Professionals');
insert  into `classification`(`id`,`title`) values (3,'Technicians and Associate Professionals');
insert  into `classification`(`id`,`title`) values (4,'Clerks');
insert  into `classification`(`id`,`title`) values (5,'Service workers and Shop and Market Sales Workers');
insert  into `classification`(`id`,`title`) values (6,'Farmers, Forestry Workers and Fishermen');
insert  into `classification`(`id`,`title`) values (7,'Trades and Related Workers');
insert  into `classification`(`id`,`title`) values (8,'Plant and machine Operators and Assemblers');
insert  into `classification`(`id`,`title`) values (9,'Laborers and Unskilled Workers');
insert  into `classification`(`id`,`title`) values (10,'Special Occupation');

/*Table structure for table `college` */

DROP TABLE IF EXISTS `college`;

CREATE TABLE `college` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `abbreviation` varchar(10) DEFAULT NULL,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `college` */

insert  into `college`(`id`,`abbreviation`,`name`) values (1,'CAS','COLLEGE OF ARTS AND SCIENCES');
insert  into `college`(`id`,`abbreviation`,`name`) values (2,'CTE','COLLEGE OF TEACHER EDUCATION');
insert  into `college`(`id`,`abbreviation`,`name`) values (3,'CBE','COLLEGE OF BUSINESS EDUCATION');

/*Table structure for table `competency` */

DROP TABLE IF EXISTS `competency`;

CREATE TABLE `competency` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `competency_skill_id` int(255) DEFAULT NULL,
  `other_competency` text,
  PRIMARY KEY (`id`),
  KEY `FK_competency` (`competency_skill_id`),
  CONSTRAINT `FK_competency` FOREIGN KEY (`competency_skill_id`) REFERENCES `competency_skill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `competency` */

/*Table structure for table `competency_skill` */

DROP TABLE IF EXISTS `competency_skill`;

CREATE TABLE `competency_skill` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `competency_skill` */

insert  into `competency_skill`(`id`,`title`) values (1,'Communication skills');
insert  into `competency_skill`(`id`,`title`) values (2,'Human Relations skills');
insert  into `competency_skill`(`id`,`title`) values (3,'Entrepreneurial skills');
insert  into `competency_skill`(`id`,`title`) values (4,'Problem-solving skills');
insert  into `competency_skill`(`id`,`title`) values (5,'Critical Thinking skills');
insert  into `competency_skill`(`id`,`title`) values (6,'Other skills');

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `college_id` int(255) DEFAULT NULL,
  `abbreviation` varchar(10) DEFAULT NULL,
  `name` text,
  PRIMARY KEY (`id`),
  KEY `FK_course` (`college_id`),
  CONSTRAINT `FK_course` FOREIGN KEY (`college_id`) REFERENCES `college` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `course` */

insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (1,1,'BSCrim','Bachelor of Science in Criminology');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (2,1,'BSM','Bachelor of Science in Midwifery');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (3,1,'AB','Bachelor of Arts');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (4,1,'BSCS','Bachelor of Science in Computer Science');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (5,2,'BEE','Bachelor of Elementary Education');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (6,2,'BSE','Bachelor of Secondary Education');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (7,2,'BCAEd','Bachelor of Culture and Arts Education');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (8,3,'BSBA','Bachelor of Science in Business Administration');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (9,3,'BSOA','Bachelor of Science in Office Administration');

/*Table structure for table `educational_attainment` */

DROP TABLE IF EXISTS `educational_attainment`;

CREATE TABLE `educational_attainment` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `degree` text,
  `college` text,
  `year_graduated` int(4) DEFAULT NULL,
  `honors` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `educational_attainment` */

/*Table structure for table `employment` */

DROP TABLE IF EXISTS `employment`;

CREATE TABLE `employment` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `employed` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employment` */

/*Table structure for table `employment_status` */

DROP TABLE IF EXISTS `employment_status`;

CREATE TABLE `employment_status` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `employment_status` enum('Regular or Permanent','Temporary','Casual','Contractual','Self-employed') DEFAULT NULL,
  `occupation` varchar(200) DEFAULT NULL,
  `classification_id` int(255) DEFAULT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `business_line_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_employment_status` (`classification_id`),
  KEY `FK_employment_status_business_line` (`business_line_id`),
  CONSTRAINT `FK_employment_status` FOREIGN KEY (`classification_id`) REFERENCES `classification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_employment_status_business_line` FOREIGN KEY (`business_line_id`) REFERENCES `business_line` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employment_status` */

/*Table structure for table `examination` */

DROP TABLE IF EXISTS `examination`;

CREATE TABLE `examination` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `name_of_examination` varchar(200) DEFAULT NULL,
  `date_taken` date DEFAULT NULL,
  `rating` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `examination` */

/*Table structure for table `find_job` */

DROP TABLE IF EXISTS `find_job`;

CREATE TABLE `find_job` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `find_job_reason_id` int(255) DEFAULT NULL,
  `other_reason` text,
  PRIMARY KEY (`id`),
  KEY `FK_find_job` (`find_job_reason_id`),
  CONSTRAINT `FK_find_job` FOREIGN KEY (`find_job_reason_id`) REFERENCES `find_job_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `find_job` */

/*Table structure for table `find_job_reason` */

DROP TABLE IF EXISTS `find_job_reason`;

CREATE TABLE `find_job_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `find_job_reason` */

insert  into `find_job_reason`(`id`,`title`) values (1,'Response to an advertisement');
insert  into `find_job_reason`(`id`,`title`) values (2,'As walk-in applicant');
insert  into `find_job_reason`(`id`,`title`) values (3,'Recommended by someone');
insert  into `find_job_reason`(`id`,`title`) values (4,'Information from friends');
insert  into `find_job_reason`(`id`,`title`) values (5,'Arranged by school’s job placement officer');
insert  into `find_job_reason`(`id`,`title`) values (6,'Family business');
insert  into `find_job_reason`(`id`,`title`) values (7,'Job Fair or Public Employment Service Office (PESO)');
insert  into `find_job_reason`(`id`,`title`) values (8,'Others');

/*Table structure for table `first_job` */

DROP TABLE IF EXISTS `first_job`;

CREATE TABLE `first_job` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `first_job` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `first_job` */

/*Table structure for table `first_job_after` */

DROP TABLE IF EXISTS `first_job_after`;

CREATE TABLE `first_job_after` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `first_job` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `first_job_after` */

/*Table structure for table `follower` */

DROP TABLE IF EXISTS `follower`;

CREATE TABLE `follower` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `follower_id` int(255) DEFAULT NULL,
  `followed_id` int(255) DEFAULT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `follower` */

/*Table structure for table `general_information` */

DROP TABLE IF EXISTS `general_information`;

CREATE TABLE `general_information` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `extname` varchar(10) DEFAULT NULL,
  `permanent_address` text,
  `email_address` varchar(50) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `civil_status` enum('Single','Married','Separated/Divorced','Married but not living with a spouse','Born a child but not married','Single Parent','Widow or Widower') DEFAULT NULL,
  `sex` enum('Male','Female') DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `region_id` varchar(2) DEFAULT NULL,
  `province_id` varchar(3) DEFAULT NULL,
  `location_of_residence` enum('City','Municipality') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `general_information` */

/*Table structure for table `initial_gross` */

DROP TABLE IF EXISTS `initial_gross`;

CREATE TABLE `initial_gross` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `initial_gross_range_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `initial_gross` */

/*Table structure for table `initial_gross_range` */

DROP TABLE IF EXISTS `initial_gross_range`;

CREATE TABLE `initial_gross_range` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `initial_gross_range` */

insert  into `initial_gross_range`(`id`,`title`) values (1,'Below P 5,000.00');
insert  into `initial_gross_range`(`id`,`title`) values (2,'P 5,000.00 to less than P 10,000.00');
insert  into `initial_gross_range`(`id`,`title`) values (3,'P 10,000.00 to less than P 15,000.00');
insert  into `initial_gross_range`(`id`,`title`) values (4,'P 15,000.00 to less than P 20,000.00');
insert  into `initial_gross_range`(`id`,`title`) values (5,'P 20,000.00 to less than P 25,000.00');
insert  into `initial_gross_range`(`id`,`title`) values (6,'P 25,000.00 and above');

/*Table structure for table `job_level` */

DROP TABLE IF EXISTS `job_level`;

CREATE TABLE `job_level` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `job_level_position_id` int(255) DEFAULT NULL,
  `first_job` enum('1','0') DEFAULT NULL,
  `current_job` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_job_level` (`job_level_position_id`),
  CONSTRAINT `FK_job_level` FOREIGN KEY (`job_level_position_id`) REFERENCES `job_level_position` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `job_level` */

/*Table structure for table `job_level_position` */

DROP TABLE IF EXISTS `job_level_position`;

CREATE TABLE `job_level_position` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `job_level_position` */

insert  into `job_level_position`(`id`,`title`) values (1,'Rank or Clerical');
insert  into `job_level_position`(`id`,`title`) values (2,'Professional, Technical or Supervisory');
insert  into `job_level_position`(`id`,`title`) values (3,'Managerial or Executive');
insert  into `job_level_position`(`id`,`title`) values (4,'Self-employed');

/*Table structure for table `land_job` */

DROP TABLE IF EXISTS `land_job`;

CREATE TABLE `land_job` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `land_job_range_id` int(255) DEFAULT NULL,
  `other_reason` text,
  PRIMARY KEY (`id`),
  KEY `FK_land_job` (`land_job_range_id`),
  CONSTRAINT `FK_land_job` FOREIGN KEY (`land_job_range_id`) REFERENCES `land_job_range` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `land_job` */

/*Table structure for table `land_job_range` */

DROP TABLE IF EXISTS `land_job_range`;

CREATE TABLE `land_job_range` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `land_job_range` */

insert  into `land_job_range`(`id`,`title`) values (1,'Less than a month');
insert  into `land_job_range`(`id`,`title`) values (2,'1 to 6 months');
insert  into `land_job_range`(`id`,`title`) values (3,'7 to 11 months');
insert  into `land_job_range`(`id`,`title`) values (4,'1 year to less than 2 years');
insert  into `land_job_range`(`id`,`title`) values (5,'2 years to less than 3 years');
insert  into `land_job_range`(`id`,`title`) values (6,'3 years to less than 4 years');
insert  into `land_job_range`(`id`,`title`) values (7,'Others');

/*Table structure for table `level` */

DROP TABLE IF EXISTS `level`;

CREATE TABLE `level` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `points_from` int(255) DEFAULT NULL,
  `points_to` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `level` */

insert  into `level`(`id`,`name`,`points_from`,`points_to`) values (1,'PARTICIPANT',0,300);
insert  into `level`(`id`,`name`,`points_from`,`points_to`) values (2,'ENTHUSIAST',301,600);
insert  into `level`(`id`,`name`,`points_from`,`points_to`) values (3,'HOTSHOT',601,900);
insert  into `level`(`id`,`name`,`points_from`,`points_to`) values (4,'EXPERT',901,1200);
insert  into `level`(`id`,`name`,`points_from`,`points_to`) values (5,'MASTER',1201,1500);
insert  into `level`(`id`,`name`,`points_from`,`points_to`) values (6,'GURU',1501,2500);
insert  into `level`(`id`,`name`,`points_from`,`points_to`) values (7,'GRANDMASTER',2501,3000);
insert  into `level`(`id`,`name`,`points_from`,`points_to`) values (8,'SUPERUSER',3001,5000);

/*Table structure for table `major` */

DROP TABLE IF EXISTS `major`;

CREATE TABLE `major` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `course_id` int(255) DEFAULT NULL,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `major` */

insert  into `major`(`id`,`course_id`,`name`) values (1,6,'English');
insert  into `major`(`id`,`course_id`,`name`) values (2,6,'Filipino');
insert  into `major`(`id`,`course_id`,`name`) values (3,6,'Mathematics');
insert  into `major`(`id`,`course_id`,`name`) values (4,6,'Social Sciences');
insert  into `major`(`id`,`course_id`,`name`) values (5,8,'Human Resource Development Management');
insert  into `major`(`id`,`course_id`,`name`) values (6,8,'Financial Management');

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values ('m000000_000000_base',1565516438);
insert  into `migration`(`version`,`apply_time`) values ('m140209_132017_init',1565516444);
insert  into `migration`(`version`,`apply_time`) values ('m140403_174025_create_account_table',1565516446);
insert  into `migration`(`version`,`apply_time`) values ('m140504_113157_update_tables',1565516453);
insert  into `migration`(`version`,`apply_time`) values ('m140504_130429_create_token_table',1565516455);
insert  into `migration`(`version`,`apply_time`) values ('m140506_102106_rbac_init',1565516996);
insert  into `migration`(`version`,`apply_time`) values ('m140830_171933_fix_ip_field',1565516456);
insert  into `migration`(`version`,`apply_time`) values ('m140830_172703_change_account_table_name',1565516457);
insert  into `migration`(`version`,`apply_time`) values ('m141222_110026_update_ip_field',1565516458);
insert  into `migration`(`version`,`apply_time`) values ('m141222_135246_alter_username_length',1565516459);
insert  into `migration`(`version`,`apply_time`) values ('m150614_103145_update_social_account_table',1565516463);
insert  into `migration`(`version`,`apply_time`) values ('m150623_212711_fix_username_notnull',1565516463);
insert  into `migration`(`version`,`apply_time`) values ('m151218_234654_add_timezone_to_profile',1565516464);
insert  into `migration`(`version`,`apply_time`) values ('m160929_103127_add_last_login_at_to_user_table',1565516465);
insert  into `migration`(`version`,`apply_time`) values ('m170907_052038_rbac_add_index_on_auth_assignment_user_id',1565516996);
insert  into `migration`(`version`,`apply_time`) values ('m180523_151638_rbac_updates_indexes_without_prefix',1565516997);

/*Table structure for table `nickname` */

DROP TABLE IF EXISTS `nickname`;

CREATE TABLE `nickname` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `nickname` */

insert  into `nickname`(`id`,`user_id`,`nickname`) values (2,1,'ganja09mae');

/*Table structure for table `other_taking_course` */

DROP TABLE IF EXISTS `other_taking_course`;

CREATE TABLE `other_taking_course` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `reason` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `other_taking_course` */

/*Table structure for table `place_of_work` */

DROP TABLE IF EXISTS `place_of_work`;

CREATE TABLE `place_of_work` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `place_of_work` enum('Local','Abroad') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `place_of_work` */

/*Table structure for table `profile` */

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `profile` */

insert  into `profile`(`user_id`,`name`,`public_email`,`gravatar_email`,`gravatar_id`,`location`,`website`,`bio`,`timezone`) values (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `pursue_study` */

DROP TABLE IF EXISTS `pursue_study`;

CREATE TABLE `pursue_study` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `pursue_study_reason_id` int(255) DEFAULT NULL,
  `other_reason` text,
  PRIMARY KEY (`id`),
  KEY `FK_pursue_study_reason` (`pursue_study_reason_id`),
  CONSTRAINT `FK_pursue_study` FOREIGN KEY (`pursue_study_reason_id`) REFERENCES `pursue_study_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_pursue_study_reason` FOREIGN KEY (`pursue_study_reason_id`) REFERENCES `pursue_study_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pursue_study` */

/*Table structure for table `pursue_study_reason` */

DROP TABLE IF EXISTS `pursue_study_reason`;

CREATE TABLE `pursue_study_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `pursue_study_reason` */

insert  into `pursue_study_reason`(`id`,`title`) values (1,'For promotion');
insert  into `pursue_study_reason`(`id`,`title`) values (2,'For professional development');
insert  into `pursue_study_reason`(`id`,`title`) values (3,'Others');

/*Table structure for table `relevant_job` */

DROP TABLE IF EXISTS `relevant_job`;

CREATE TABLE `relevant_job` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `relevant_job` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `relevant_job` */

/*Table structure for table `social_account` */

DROP TABLE IF EXISTS `social_account`;

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`),
  CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `social_account` */

/*Table structure for table `stage` */

DROP TABLE IF EXISTS `stage`;

CREATE TABLE `stage` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  `table` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `stage` */

insert  into `stage`(`id`,`title`,`table`) values (1,'General Information','general_information');
insert  into `stage`(`id`,`title`,`table`) values (2,'Educational Background','educational_attainment');
insert  into `stage`(`id`,`title`,`table`) values (3,'Trainings/Advanced Studies Attended','training');
insert  into `stage`(`id`,`title`,`table`) values (4,'Employment Data','employment');

/*Table structure for table `stay_job` */

DROP TABLE IF EXISTS `stay_job`;

CREATE TABLE `stay_job` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `stay_job_reason_id` int(255) DEFAULT NULL,
  `other_reason` text,
  PRIMARY KEY (`id`),
  KEY `FK_stay_job` (`stay_job_reason_id`),
  CONSTRAINT `FK_stay_job` FOREIGN KEY (`stay_job_reason_id`) REFERENCES `stay_job_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stay_job` */

/*Table structure for table `stay_job_range` */

DROP TABLE IF EXISTS `stay_job_range`;

CREATE TABLE `stay_job_range` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `stay_job_range_reason_id` int(255) DEFAULT NULL,
  `other_job_range` text,
  PRIMARY KEY (`id`),
  KEY `FK_stay_job_range` (`stay_job_range_reason_id`),
  CONSTRAINT `FK_stay_job_range` FOREIGN KEY (`stay_job_range_reason_id`) REFERENCES `stay_job_range_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stay_job_range` */

/*Table structure for table `stay_job_range_reason` */

DROP TABLE IF EXISTS `stay_job_range_reason`;

CREATE TABLE `stay_job_range_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `stay_job_range_reason` */

insert  into `stay_job_range_reason`(`id`,`title`) values (1,'Less than a month');
insert  into `stay_job_range_reason`(`id`,`title`) values (2,'1 to 6 months');
insert  into `stay_job_range_reason`(`id`,`title`) values (3,'7 to 11 months');
insert  into `stay_job_range_reason`(`id`,`title`) values (4,'1 year to less than 2 years');
insert  into `stay_job_range_reason`(`id`,`title`) values (5,'2 years to less than 3 years');
insert  into `stay_job_range_reason`(`id`,`title`) values (6,'3 years to less than 4 years');
insert  into `stay_job_range_reason`(`id`,`title`) values (7,'Others');

/*Table structure for table `stay_job_reason` */

DROP TABLE IF EXISTS `stay_job_reason`;

CREATE TABLE `stay_job_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `stay_job_reason` */

insert  into `stay_job_reason`(`id`,`title`) values (1,'Salaries and benefits');
insert  into `stay_job_reason`(`id`,`title`) values (2,'Career challenge');
insert  into `stay_job_reason`(`id`,`title`) values (3,'Related to special skill');
insert  into `stay_job_reason`(`id`,`title`) values (4,'Related to course or program of study');
insert  into `stay_job_reason`(`id`,`title`) values (5,'Proximity to residence');
insert  into `stay_job_reason`(`id`,`title`) values (6,'Peer influence');
insert  into `stay_job_reason`(`id`,`title`) values (7,'Family influence');
insert  into `stay_job_reason`(`id`,`title`) values (8,'Other reason');

/*Table structure for table `suggestion` */

DROP TABLE IF EXISTS `suggestion`;

CREATE TABLE `suggestion` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `suggestion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `suggestion` */

/*Table structure for table `taking_course` */

DROP TABLE IF EXISTS `taking_course`;

CREATE TABLE `taking_course` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `taking_course_id` int(255) DEFAULT NULL,
  `undergrad` enum('1','0') DEFAULT NULL,
  `graduate` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_taking_course` (`taking_course_id`),
  CONSTRAINT `FK_taking_course` FOREIGN KEY (`taking_course_id`) REFERENCES `taking_course_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `taking_course` */

/*Table structure for table `taking_course_reason` */

DROP TABLE IF EXISTS `taking_course_reason`;

CREATE TABLE `taking_course_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `taking_course_reason` */

insert  into `taking_course_reason`(`id`,`title`) values (1,'High Grades in the course or subject area(s) related to the course\r\n');
insert  into `taking_course_reason`(`id`,`title`) values (2,'Good grades in high school');
insert  into `taking_course_reason`(`id`,`title`) values (3,'Influence of parents or relatives');
insert  into `taking_course_reason`(`id`,`title`) values (4,'Peer Influence');
insert  into `taking_course_reason`(`id`,`title`) values (5,'Inspired by a role model');
insert  into `taking_course_reason`(`id`,`title`) values (6,'Strong passion for the profession');
insert  into `taking_course_reason`(`id`,`title`) values (7,'Prospect for immediate employment');
insert  into `taking_course_reason`(`id`,`title`) values (8,'Status or prestige of the profession');
insert  into `taking_course_reason`(`id`,`title`) values (9,'Availability  of course offering in chosen institution');
insert  into `taking_course_reason`(`id`,`title`) values (10,'Prospect of career advancement');
insert  into `taking_course_reason`(`id`,`title`) values (11,'Affordable for the family');
insert  into `taking_course_reason`(`id`,`title`) values (12,'Prospect of attractive compensation');
insert  into `taking_course_reason`(`id`,`title`) values (13,'Opportunity for employment abroad');
insert  into `taking_course_reason`(`id`,`title`) values (14,'No particular choice or no better idea');

/*Table structure for table `tblcitymun` */

DROP TABLE IF EXISTS `tblcitymun`;

CREATE TABLE `tblcitymun` (
  `region_c` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `province_c` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `district_c` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `citymun_c` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `citymun_m` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lgu_type` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tblcitymun` */

insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','1','01','ADAMS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','1','02','BACARRA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','2','03','BADOC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','1','04','BANGUI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','2','11','BANNA (ESPIRITU)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','1','06','BURGOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','1','07','CARASI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','2','05','CITY OF BATAC','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','2','08','CURRIMAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','2','09','DINGRAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','1','10','DUMALNEG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','1','12','LAOAG CITY (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','2','13','MARCOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','2','14','NUEVA ERA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','1','15','PAGUDPUD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','2','16','PAOAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','1','17','PASUQUIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','1','18','PIDDIG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','2','19','PINILI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','2','20','SAN NICOLAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','1','21','SARRAT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','2','22','SOLSONA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','28','1','23','VINTAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','01','ALILEM','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','02','BANAYOYO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','1','03','BANTAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','04','BURGOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','1','05','CABUGAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','1','07','CAOAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','08','CERVANTES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','06','CITY OF CANDON','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','1','34','CITY OF VIGAN (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','09','GALIMUYOD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','10','GREGORIO DEL PILAR (CONCEPCION)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','11','LIDLIDDA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','1','12','MAGSINGAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','13','NAGBUKEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','14','NARVACAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','15','QUIRINO (ANGKAKI)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','16','SALCEDO (BAUGEN)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','17','SAN EMILIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','18','SAN ESTEBAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','1','19','SAN ILDEFONSO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','1','20','SAN JUAN (LAPOG)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','1','21','SAN VICENTE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','22','SANTA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','1','23','SANTA CATALINA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','24','SANTA CRUZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','25','SANTA LUCIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','26','SANTA MARIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','27','SANTIAGO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','1','28','SANTO DOMINGO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','29','SIGAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','1','30','SINAIT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','31','SUGPON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','32','SUYO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','29','2','33','TAGUDIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','2','01','AGOO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','2','02','ARINGAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','1','03','BACNOTAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','2','04','BAGULIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','1','05','BALAOAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','1','06','BANGAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','2','07','BAUANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','2','08','BURGOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','2','09','CABA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','1','14','CITY OF SAN FERNANDO (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','1','10','LUNA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','2','11','NAGUILIAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','2','12','PUGO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','2','13','ROSARIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','1','15','SAN GABRIEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','1','16','SAN JUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','2','17','SANTO TOMAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','1','18','SANTOL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','1','19','SUDIPEN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','33','2','20','TUBAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','1','01','AGNO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','2','02','AGUILAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','5','04','ALCALA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','1','05','ANDA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','6','06','ASINGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','6','07','BALUNGAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','1','08','BANI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','2','09','BASISTA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','5','10','BAUTISTA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','3','11','BAYAMBANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','5','12','BINALONAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','2','13','BINMALEY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','1','14','BOLINAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','2','15','BUGALLON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','1','16','BURGOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','3','17','CALASIAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','1','03','CITY OF ALAMINOS ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','5','46','CITY OF URDANETA ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','4','18','DAGUPAN CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','1','19','DASOL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','1','20','INFANTA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','2','21','LABRADOR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','5','48','LAOAC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','2','22','LINGAYEN (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','1','23','MABINI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','3','24','MALASIQUI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','4','25','MANAOAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','4','26','MANGALDAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','2','27','MANGATAREM','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','3','28','MAPANDAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','6','29','NATIVIDAD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','5','30','POZORRUBIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','6','31','ROSALES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','3','32','SAN CARLOS CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','4','33','SAN FABIAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','4','34','SAN JACINTO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','6','35','SAN MANUEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','6','36','SAN NICOLAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','6','37','SAN QUINTIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','3','38','SANTA BARBARA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','6','39','SANTA MARIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','5','40','SANTO TOMAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','5','41','SISON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','1','42','SUAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','6','43','TAYUG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','6','44','UMINGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','2','45','URBIZTONDO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('01','55','5','47','VILLASIS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','09','0','01','BASCO (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','09','0','02','ITBAYAT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','09','0','03','IVANA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','09','0','04','MAHATAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','09','0','05','SABTANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','09','0','06','UYUGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','2','01','ABULUG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','1','02','ALCALA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','2','03','ALLACAPAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','3','04','AMULUNG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','1','05','APARRI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','1','06','BAGGAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','2','07','BALLESTEROS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','1','08','BUGUEY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','2','09','CALAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','1','10','CAMALANIUGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','2','11','CLAVERIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','3','12','ENRILE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','1','13','GATTARAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','1','14','GONZAGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','3','15','IGUIG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','1','16','LAL-LO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','2','17','LASAM','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','2','18','PAMPLONA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','3','19','PEÑABLANCA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','2','20','PIAT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','2','21','RIZAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','2','22','SANCHEZ-MIRA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','1','23','SANTA ANA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','2','24','SANTA PRAXEDES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','1','25','SANTA TERESITA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','2','26','SANTO NIÑO (FAIRE)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','3','27','SOLANA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','3','28','TUAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','15','3','29','TUGUEGARAO CITY (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','3','01','ALICIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','3','02','ANGADANAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','03','AURORA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','04','BENITO SOLIVEN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','05','BURGOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','1','06','CABAGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','3','07','CABATUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','3','08','CITY OF CAUAYAN','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','4','35','CITY OF SANTIAGO','I');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','4','09','CORDON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','1','18','DELFIN ALBANO (MAGSAYSAY)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','4','10','DINAPIGUE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','1','11','DIVILACAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','4','12','ECHAGUE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','13','GAMU','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','1','14','ILAGAN CITY (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','4','15','JONES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','3','16','LUNA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','1','17','MACONACON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','19','MALLIG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','20','NAGUILIAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','1','21','PALANAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','22','QUEZON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','23','QUIRINO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','4','24','RAMON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','3','25','REINA MERCEDES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','26','ROXAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','4','27','SAN AGUSTIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','3','28','SAN GUILLERMO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','4','29','SAN ISIDRO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','30','SAN MANUEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','31','SAN MARIANO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','3','32','SAN MATEO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','1','33','SAN PABLO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','1','34','SANTA MARIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','1','36','SANTO TOMAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','1','37','TUMAUINI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','15','ALFONSO CASTANEDA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','01','AMBAGUIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','02','ARITAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','03','BAGABAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','04','BAMBANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','05','BAYOMBONG (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','06','DIADI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','07','DUPAX DEL NORTE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','08','DUPAX DEL SUR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','09','KASIBU','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','10','KAYAPA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','11','QUEZON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','12','SANTA FE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','13','SOLANO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','50','0','14','VILLAVERDE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','57','0','01','AGLIPAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','57','0','02','CABARROGUIS (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','57','0','03','DIFFUN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','57','0','04','MADDELA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','57','0','06','NAGTIPUNAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','57','0','05','SAGUDAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','08','1','01','ABUCAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','08','2','02','BAGAC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','08','2','03','CITY OF BALANGA (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','08','1','04','DINALUPIHAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','08','1','05','HERMOSA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','08','2','06','LIMAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','08','2','07','MARIVELES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','08','1','08','MORONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','08','1','09','ORANI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','08','2','10','ORION','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','08','2','11','PILAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','08','1','12','SAMAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','3','01','ANGAT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','2','02','BALAGTAS (BIGAA)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','2','03','BALIUAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','2','04','BOCAUE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','1','05','BULACAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','2','06','BUSTOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','1','07','CALUMPIT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','1','10','CITY OF MALOLOS (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','4','12','CITY OF MEYCAUAYAN','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','0','20','CITY OF SAN JOSE DEL MONTE','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','3','24','DOÑA REMEDIOS TRINIDAD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','2','08','GUIGUINTO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','1','09','HAGONOY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','4','11','MARILAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','3','13','NORZAGARAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','4','14','OBANDO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','2','15','PANDI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','1','16','PAOMBONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','2','17','PLARIDEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','1','18','PULILAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','3','19','SAN ILDEFONSO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','3','21','SAN MIGUEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','3','22','SAN RAFAEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','14','4','23','SANTA MARIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','1','01','ALIAGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','3','02','BONGABON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','3','03','CABANATUAN CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','4','04','CABIAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','2','05','CARRANGLAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','4','08','CITY OF GAPAN','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','1','06','CUYAPO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','3','07','GABALDON (BITULOK & SABANI)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','3','09','GENERAL MAMERTO NATIVIDAD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','4','10','GENERAL TINIO (PAYAPA)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','1','11','GUIMBA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','4','12','JAEN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','3','13','LAUR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','1','14','LICAB','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','2','15','LLANERA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','2','16','LUPAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','1','18','NAMPICUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','3','19','PALAYAN CITY (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','2','20','PANTABANGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','4','21','PEÑARANDA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','1','22','QUEZON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','2','23','RIZAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','4','24','SAN ANTONIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','4','25','SAN ISIDRO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','2','26','SAN JOSE CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','4','27','SAN LEONARDO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','3','28','SANTA ROSA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','1','29','SANTO DOMINGO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','2','17','SCIENCE CITY OF MUÑOZ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','1','30','TALAVERA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','2','31','TALUGTUG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','49','1','32','ZARAGOZA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','1','01','ANGELES CITY','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','4','02','APALIT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','3','03','ARAYAT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','3','04','BACOLOR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','4','05','CANDABA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','2','16','CITY OF SAN FERNANDO (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','2','06','FLORIDABLANCA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','2','07','GUAGUA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','2','08','LUBAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','1','09','MABALACAT CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','4','10','MACABEBE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','1','11','MAGALANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','4','12','MASANTOL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','3','13','MEXICO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','4','14','MINALIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','2','15','PORAC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','4','17','SAN LUIS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','4','18','SAN SIMON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','3','19','SANTA ANA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','2','20','SANTA RITA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','4','21','SANTO TOMAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','54','2','22','SASMUAN (SEXMOAN)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','1','01','ANAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','3','02','BAMBAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','1','03','CAMILING','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','3','04','CAPAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','2','16','CITY OF TARLAC (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','3','05','CONCEPCION','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','2','06','GERONA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','3','07','LA PAZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','1','08','MAYANTOC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','1','09','MONCADA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','1','10','PANIQUI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','1','11','PURA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','1','12','RAMOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','1','13','SAN CLEMENTE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','2','18','SAN JOSE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','1','14','SAN MANUEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','1','15','SANTA IGNACIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','69','2','17','VICTORIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','2','01','BOTOLAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','2','02','CABANGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','2','03','CANDELARIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','1','04','CASTILLEJOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','2','05','IBA (CAPITAL)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','2','06','MASINLOC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','1','07','OLONGAPO CITY','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','2','08','PALAUIG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','2','09','SAN ANTONIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','2','10','SAN FELIPE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','1','11','SAN MARCELINO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','2','12','SAN NARCISO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','2','13','SANTA CRUZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','71','1','14','SUBIC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','77','0','01','BALER (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','77','0','02','CASIGURAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','77','0','03','DILASAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','77','0','04','DINALUNGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','77','0','05','DINGALAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','77','0','06','DIPACULAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','77','0','07','MARIA AURORA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('03','77','0','08','SAN LUIS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','3','01','AGONCILLO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','3','02','ALITAGTAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','1','03','BALAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','3','04','BALETE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','2','05','BATANGAS CITY (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','2','06','BAUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','1','07','CALACA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','1','08','CALATAGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','3','31','CITY OF TANAUAN','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','3','09','CUENCA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','4','10','IBAAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','3','11','LAUREL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','1','12','LEMERY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','1','13','LIAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','4','14','LIPA CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','2','15','LOBO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','2','16','MABINI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','3','17','MALVAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','3','18','MATAASNAKAHOY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','1','19','NASUGBU','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','4','20','PADRE GARCIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','4','21','ROSARIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','4','22','SAN JOSE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','4','23','SAN JUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','2','24','SAN LUIS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','3','25','SAN NICOLAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','2','26','SAN PASCUAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','3','27','SANTA TERESITA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','3','28','SANTO TOMAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','1','29','TAAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','4','30','TALISAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','4','32','TAYSAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','2','33','TINGLOY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','10','1','34','TUY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','7','01','ALFONSO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','6','02','AMADEO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','2','03','BACOOR CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','5','04','CARMONA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','1','05','CAVITE CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','4','06','CITY OF DASMARIÑAS','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','5','23','GEN. MARIANO ALVAREZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','7','07','GENERAL EMILIO AGUINALDO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','6','08','CITY OF GENERAL TRIAS','');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','3','09','IMUS CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','7','10','INDANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','1','11','KAWIT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','7','12','MAGALLANES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','7','13','MARAGONDON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','7','14','MENDEZ (MENDEZ-NUÑEZ)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','7','15','NAIC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','1','16','NOVELETA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','1','17','ROSARIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','5','18','SILANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','7','19','TAGAYTAY CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','6','20','TANZA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','7','21','TERNATE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','21','6','22','TRECE MARTIRES CITY (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','3','01','ALAMINOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','2','02','BAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','2','04','CABUYAO CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','3','06','CALAUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','07','CAVINTI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','1','03','CITY OF BIÑAN','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','2','05','CITY OF CALAMBA','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','1','25','CITY OF SAN PEDRO','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','1','28','CITY OF SANTA ROSA','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','08','FAMY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','09','KALAYAAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','3','10','LILIW','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','2','11','LOS BAÑOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','12','LUISIANA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','13','LUMBAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','14','MABITAC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','15','MAGDALENA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','16','MAJAYJAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','3','17','NAGCARLAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','18','PAETE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','19','PAGSANJAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','20','PAKIL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','21','PANGIL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','22','PILA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','3','23','RIZAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','3','24','SAN PABLO CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','26','SANTA CRUZ (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','27','SANTA MARIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','4','29','SINILOAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','34','3','30','VICTORIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','3','01','AGDANGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','4','02','ALABAT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','4','03','ATIMONAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','3','05','BUENAVISTA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','06','BURDEOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','4','07','CALAUAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','2','08','CANDELARIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','3','10','CATANAUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','47','CITY OF TAYABAS','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','2','15','DOLORES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','3','16','GENERAL LUNA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','17','GENERAL NAKAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','4','18','GUINAYANGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','4','19','GUMACA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','20','INFANTA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','21','JOMALIG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','4','22','LOPEZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','23','LUCBAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','2','24','LUCENA CITY (Capital)','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','3','25','MACALELON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','27','MAUBAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','3','28','MULANAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','3','29','PADRE BURGOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','30','PAGBILAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','31','PANUKULAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','32','PATNANUNGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','4','33','PEREZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','3','34','PITOGO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','4','35','PLARIDEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','36','POLILLO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','4','37','QUEZON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','38','REAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','1','39','SAMPALOC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','3','40','SAN ANDRES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','2','41','SAN ANTONIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','3','42','SAN FRANCISCO (AURORA)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','3','44','SAN NARCISO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','2','45','SARIAYA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','4','46','TAGKAWAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','2','48','TIAONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','56','3','49','UNISAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','1','01','ANGONO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','2','03','BARAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','1','04','BINANGONAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','1','05','CAINTA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','2','06','CARDONA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','','02','CITY OF ANTIPOLO','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','2','07','JALA-JALA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','2','09','MORONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','2','10','PILILLA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','2','08','RODRIGUEZ (MONTALBAN)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','2','11','SAN MATEO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','2','12','TANAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','1','13','TAYTAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('04','58','2','14','TERESA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','1','01','BACACAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','2','02','CAMALIG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','3','08','CITY OF LIGAO ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','1','17','CITY OF TABACO ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','2','03','DARAGA (LOCSIN) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','3','04','GUINOBATAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','3','05','JOVELLAR ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','2','06','LEGAZPI CITY (Capital) ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','3','07','LIBON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','1','09','MALILIPOT ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','1','10','MALINAO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','2','11','MANITO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','3','12','OAS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','3','13','PIO DURAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','3','14','POLANGUI ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','2','15','RAPU-RAPU ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','1','16','SANTO DOMINGO (LIBOG) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','05','1','18','TIWI ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','16','0','01','BASUD ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','16','0','02','CAPALONGA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','16','0','03','DAET (CAPITAL) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','16','0','05','JOSE PANGANIBAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','16','0','06','LABO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','16','0','07','MERCEDES ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','16','0','08','PARACALE ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','16','0','04','SAN LORENZO RUIZ (IMELDA) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','16','0','09','SAN VICENTE ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','16','0','10','SANTA ELENA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','16','0','11','TALISAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','16','0','12','VINZONS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','4','01','BAAO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','4','02','BALATAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','4','03','BATO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','2','04','BOMBON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','4','05','BUHI ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','4','06','BULA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','1','07','CABUSAO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','2','08','CALABANGA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','2','09','CAMALIGAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','2','10','CANAMAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','3','11','CARAMOAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','1','12','DEL GALLEGO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','2','13','GAINZA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','3','14','GARCHITORENA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','3','15','GOA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','4','16','IRIGA CITY ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','3','17','LAGONOY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','1','18','LIBMANAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','1','19','LUPI ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','2','20','MAGARAO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','2','21','MILAOR ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','1','22','MINALABAC ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','4','23','NABUA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','2','24','NAGA CITY ','I');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','2','25','OCAMPO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','1','26','PAMPLONA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','1','27','PASACAO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','2','28','PILI (CAPITAL) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','3','29','PRESENTACION (PARUBCAN) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','1','30','RAGAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','3','31','SAGÑAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','1','32','SAN FERNANDO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','3','33','SAN JOSE ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','1','34','SIPOCOT ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','3','35','SIRUMA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','3','36','TIGAON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','17','3','37','TINAMBAC ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','20','0','01','BAGAMANOC ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','20','0','02','BARAS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','20','0','03','BATO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','20','0','04','CARAMORAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','20','0','05','GIGMOTO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','20','0','06','PANDAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','20','0','07','PANGANIBAN (PAYO) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','20','0','08','SAN ANDRES (CALOLBON) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','20','0','09','SAN MIGUEL ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','20','0','10','VIGA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','20','0','11','VIRAC (Capital) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','2','01','AROROY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','2','02','BALENO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','2','03','BALUD ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','1','04','BATUAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','3','05','CATAINGAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','3','06','CAWAYAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','2','11','CITY OF MASBATE (Capital) ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','1','07','CLAVERIA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','3','08','DIMASALANG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','3','09','ESPERANZA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','2','10','MANDAON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','2','12','MILAGROS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','2','13','MOBO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','1','14','MONREAL ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','3','15','PALANAS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','3','16','PIO V. CORPUZ (LIMBUHAN) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','3','17','PLACER ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','1','18','SAN FERNANDO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','1','19','SAN JACINTO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','1','20','SAN PASCUAL ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','41','3','21','USON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','2','02','BARCELONA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','2','03','BULAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','2','04','BULUSAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','1','05','CASIGURAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','1','06','CASTILLA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','1','16','CITY OF SORSOGON (Capital) ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','1','07','DONSOL ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','2','08','GUBAT ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','2','09','IROSIN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','2','10','JUBAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','1','11','MAGALLANES ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','2','12','MATNOG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','1','13','PILAR ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','2','14','PRIETO DIAZ ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('05','62','2','15','SANTA MAGDALENA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','01','ALTAVAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','02','BALETE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','03','BANGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','04','BATAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','05','BURUANGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','06','IBAJAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','07','KALIBO (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','08','LEZO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','09','LIBACAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','10','MADALAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','11','MAKATO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','12','MALAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','13','MALINAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','14','NABAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','15','NEW WASHINGTON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','16','NUMANCIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','04','0','17','TANGALAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','01','ANINI-Y','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','02','BARBAZA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','03','BELISON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','04','BUGASONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','05','CALUYA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','06','CULASI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','08','HAMTIC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','09','LAUA-AN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','10','LIBERTAD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','11','PANDAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','12','PATNONGON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','13','SAN JOSE (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','14','SAN REMIGIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','15','SEBASTE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','16','SIBALOM','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','17','TIBIAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','07','TOBIAS FORNIER (DAO)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','06','0','18','VALDERRAMA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','2','01','CUARTERO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','2','02','DAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','2','03','DUMALAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','2','04','DUMARAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','2','05','IVISAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','2','06','JAMINDAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','1','07','MA-AYON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','2','08','MAMBUSAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','1','09','PANAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','1','10','PANITAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','1','11','PILAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','1','12','PONTEVEDRA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','1','13','PRESIDENT ROXAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','1','14','ROXAS CITY (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','2','15','SAPI-AN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','2','16','SIGMA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','19','2','17','TAPAZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','5','01','AJUY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','2','02','ALIMODIAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','4','03','ANILAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','3','04','BADIANGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','5','05','BALASAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','4','06','BANATE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','4','07','BAROTAC NUEVO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','5','08','BAROTAC VIEJO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','5','09','BATAD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','3','10','BINGAWAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','3','12','CABATUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','3','13','CALINOG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','5','14','CARLES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','4','35','CITY OF PASSI','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','5','15','CONCEPCION','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','4','16','DINGLE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','4','17','DUEÑAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','4','18','DUMANGAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','5','19','ESTANCIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','1','20','GUIMBAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','1','21','IGBARAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','0','22','ILOILO CITY (Capital)','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','3','23','JANIUAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','3','25','LAMBUNAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','2','26','LEGANES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','5','27','LEMERY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','2','28','LEON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','3','29','MAASIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','1','30','MIAGAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','3','31','MINA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','2','32','NEW LUCENA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','1','34','OTON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','2','36','PAVIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','3','37','POTOTAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','5','38','SAN DIONISIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','4','39','SAN ENRIQUE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','1','40','SAN JOAQUIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','2','41','SAN MIGUEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','5','42','SAN RAFAEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','2','43','SANTA BARBARA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','5','44','SARA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','1','45','TIGBAUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','1','46','TUBUNGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','30','2','47','ZARRAGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','79','0','01','BUENAVISTA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','79','0','02','JORDAN (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','79','0','03','NUEVA VALENCIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','79','0','04','SAN LORENZO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('06','79','0','05','SIBUNAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','01','ALBURQUERQUE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','02','ALICIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','03','ANDA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','04','ANTEQUERA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','05','BACLAYON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','06','BALILIHAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','07','BATUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','48','BIEN UNIDO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','08','BILAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','09','BUENAVISTA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','10','CALAPE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','11','CANDIJAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','12','CARMEN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','13','CATIGBIAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','14','CLARIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','15','CORELLA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','16','CORTES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','17','DAGOHOY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','18','DANAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','19','DAUIS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','20','DIMIAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','21','DUERO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','22','GARCIA HERNANDEZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','26','GETAFE (JETAFE)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','23','GUINDULMAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','24','INABANGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','25','JAGNA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','27','LILA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','28','LOAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','29','LOBOC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','30','LOON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','31','MABINI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','32','MARIBOJOC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','33','PANGLAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','34','PILAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','35','PRES. CARLOS P. GARCIA (PITOGO)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','36','SAGBAYAN (BORJA)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','37','SAN ISIDRO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','38','SAN MIGUEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','39','SEVILLA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','40','SIERRA BULLONES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','41','SIKATUNA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','42','TAGBILARAN CITY (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','43','TALIBON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','44','TRINIDAD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','1','45','TUBIGON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','2','46','UBAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','12','3','47','VALENCIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','01','ALCANTARA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','02','ALCOY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','03','ALEGRIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','3','04','ALOGUINSAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','05','ARGAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','3','06','ASTURIAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','07','BADIAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','3','08','BALAMBAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','4','09','BANTAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','3','10','BARILI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','12','BOLJOON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','5','13','BORBON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','5','15','CARMEN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','5','16','CATMON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','','17','CEBU CITY (Capital)','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','4','11','CITY OF BOGO','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','1','14','CITY OF CARCAR','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','1','34','CITY OF NAGA','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','1','50','CITY OF TALISAY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','5','18','COMPOSTELA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','6','19','CONSOLACION','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','6','20','CORDOBA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','4','21','DAANBANTAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','22','DALAGUETE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','5','23','DANAO CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','24','DUMANJUG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','25','GINATILAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','0','26','LAPU-LAPU CITY (OPON)','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','5','27','LILOAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','4','28','MADRIDEJOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','29','MALABUYOC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','6','30','MANDAUE CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','4','31','MEDELLIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','1','32','MINGLANILLA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','33','MOALBOAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','35','OSLOB','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','5','36','PILAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','3','37','PINAMUNGAHAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','5','38','PORO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','39','RONDA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','40','SAMBOAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','1','41','SAN FERNANDO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','5','42','SAN FRANCISCO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','4','43','SAN REMIGIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','4','44','SANTA FE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','2','45','SANTANDER','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','1','46','SIBONGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','5','47','SOGOD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','4','48','TABOGON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','4','49','TABUELAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','3','51','TOLEDO CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','3','52','TUBURAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','22','5','53','TUDELA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','61','0','01','ENRIQUE VILLANUEVA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','61','0','02','LARENA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','61','0','03','LAZI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','61','0','04','MARIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','61','0','05','SAN JUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('07','61','0','06','SIQUIJOR (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','01','ARTECHE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','02','BALANGIGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','03','BALANGKAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','05','CAN-AVID','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','04','CITY OF BORONGAN (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','06','DOLORES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','07','GENERAL MACARTHUR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','08','GIPORLOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','09','GUIUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','10','HERNANI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','11','JIPAPAD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','12','LAWAAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','13','LLORENTE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','14','MASLOG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','15','MAYDOLONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','16','MERCEDES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','17','ORAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','18','QUINAPONDAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','19','SALCEDO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','20','SAN JULIAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','21','SAN POLICARPO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','22','SULAT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','26','0','23','TAFT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','5','01','ABUYOG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','1','02','ALANGALANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','4','03','ALBUERA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','1','05','BABATNGON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','06','BARUGO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','5','07','BATO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','10','BURAUEN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','3','13','CALUBIAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','14','CAPOOCAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','15','CARIGARA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','5','08','CITY OF BAYBAY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','17','DAGAMI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','18','DULAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','5','19','HILONGOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','5','20','HINDANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','5','21','INOPACAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','4','22','ISABEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','23','JARO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','5','24','JAVIER (BUGHO)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','25','JULITA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','4','26','KANANGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','28','LA PAZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','3','29','LEYTE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','30','MACARTHUR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','5','31','MAHAPLAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','4','33','MATAG-OB','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','5','34','MATALOM','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','35','MAYORGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','4','36','MERIDA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','4','38','ORMOC CITY','I');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','1','39','PALO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','4','40','PALOMPON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','41','PASTRANA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','3','42','SAN ISIDRO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','1','43','SAN MIGUEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','1','44','SANTA FE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','3','45','TABANGO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','46','TABONTABON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','1','47','TACLOBAN CITY (Capital)','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','1','48','TANAUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','1','49','TOLOSA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','2','50','TUNGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','37','3','51','VILLABA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','01','ALLEN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','02','BIRI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','03','BOBON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','04','CAPUL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','05','CATARMAN (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','2','06','CATUBIG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','2','07','GAMAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','2','08','LAOANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','2','09','LAPINIG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','2','10','LAS NAVAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','11','LAVEZARES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','24','LOPE DE VEGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','2','12','MAPANAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','13','MONDRAGON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','2','14','PALAPAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','2','15','PAMBUJAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','16','ROSARIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','17','SAN ANTONIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','18','SAN ISIDRO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','19','SAN JOSE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','2','20','SAN ROQUE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','21','SAN VICENTE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','2','22','SILVINO LOBOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','48','1','23','VICTORIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','1','01','ALMAGRO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','02','BASEY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','1','03','CALBAYOG CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','04','CALBIGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','05','CITY OF CATBALOGAN (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','06','DARAM','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','1','07','GANDARA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','08','HINABANGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','09','JIABONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','10','MARABUT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','1','11','MATUGUINAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','12','MOTIONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','1','26','PAGSANGHAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','22','PARANAS (WRIGHT)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','13','PINABACDAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','1','25','SAN JORGE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','14','SAN JOSE DE BUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','15','SAN SEBASTIAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','1','16','SANTA MARGARITA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','17','SANTA RITA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','1','18','SANTO NIÑO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','1','24','TAGAPUL-AN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','19','TALALORA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','1','20','TARANGNAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','21','VILLAREAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','60','2','23','ZUMARRAGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','01','ANAHAWAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','02','BONTOC','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','07','CITY OF MAASIN (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','03','HINUNANGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','04','HINUNDAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','05','LIBAGON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','06','LILOAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','19','LIMASAWA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','08','MACROHON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','09','MALITBOG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','10','PADRE BURGOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','11','PINTUYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','12','SAINT BERNARD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','13','SAN FRANCISCO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','14','SAN JUAN (CABALIAN)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','15','SAN RICARDO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','16','SILAGO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','17','SOGOD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','64','0','18','TOMAS OPPUS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','78','0','01','ALMERIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','78','0','02','BILIRAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','78','0','03','CABUCGAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','78','0','04','CAIBIRAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','78','0','05','CULABA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','78','0','06','KAWAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','78','0','07','MARIPIPI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('08','78','0','08','NAVAL (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','3','26','BACUNGAN (LEON T. POSTIGO) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','3','24','BALIGUIAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','1','01','DAPITAN CITY ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','2','02','DIPOLOG CITY (Capital) ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','3','25','GODOD ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','3','23','GUTALAC ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','2','22','JOSE DALMAN (PONOT) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','3','27','KALAWIT ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','2','03','KATIPUNAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','1','04','LA LIBERTAD ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','3','05','LABASON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','3','06','LILOY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','2','07','MANUKAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','1','08','MUTIA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','1','09','PIÑAN (NEW PIÑAN) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','1','10','POLANCO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','2','11','PRES. MANUEL A. ROXAS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','1','12','RIZAL ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','3','13','SALUG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','1','14','SERGIO OSMEÑA SR. ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','2','15','SIAYAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','3','16','SIBUCO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','1','17','SIBUTAD ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','2','18','SINDANGAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','3','19','SIOCON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','3','20','SIRAWAI ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','72','3','21','TAMPILISAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','1','02','AURORA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','03','BAYOG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','05','DIMATALING ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','06','DINAS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','07','DUMALINAO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','1','08','DUMINGAG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','43','GUIPOS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','1','37','JOSEFINA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','11','KUMALARANG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','1','12','LABANGAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','33','LAKEWOOD ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','13','LAPUYAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','1','15','MAHAYAG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','17','MARGOSATUBIG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','1','18','MIDSALIP ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','1','19','MOLAVE ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','1','22','PAGADIAN CITY (Capital) ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','38','PITOGO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','1','23','RAMON MAGSAYSAY (LIARGO) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','24','SAN MIGUEL ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','25','SAN PABLO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','1','40','SOMINOT (DON MARIANO MARCOS)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','27','TABINA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','1','28','TAMBULIG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','44','TIGBAO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','1','30','TUKURAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2','41','VINCENZO A. SAGUN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','73','2 L','32','ZAMBOANGA CITY ','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','1','01','ALICIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','1','02','BUUG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','1','03','DIPLAHAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','1','04','IMELDA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','2','05','IPIL (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','2','06','KABASALAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','1','07','MABUHAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','1','08','MALANGAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','2','09','NAGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','1','10','OLUTANGA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','1','11','PAYAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','2','12','ROSELLER LIM','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','2','13','SIAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','1','14','TALUSAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','2','15','TITAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','83','2','16','TUNGAWAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('09','97','0','01','CITY OF ISABELA (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','1','01','BAUNGON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','2','22','CABANGLASAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','2','21','CITY OF VALENCIA ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','3','02','DAMULOG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','3','03','DANGCAGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','3','04','DON CARLOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','2','05','IMPASUG-ONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','3','06','KADINGILAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','1','07','KALILANGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','3','08','KIBAWE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','3','09','KITAOTAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','2','10','LANTAPAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','1','11','LIBONA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','2','12','MALAYBALAY CITY (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','1','13','MALITBOG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','1','14','MANOLO FORTICH','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','3','15','MARAMAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','1','16','PANGANTUCAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','3','17','QUEZON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','2','18','SAN FERNANDO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','1','19','SUMILAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','13','1','20','TALAKAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','18','0','01','CATARMAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','18','0','02','GUINSILIBAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','18','0','03','MAHINOG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','18','0','04','MAMBAJAO (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','18','0','05','SAGAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','1','01','BACOLOD ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','02','BALOI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','1','03','BAROY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','0','04','ILIGAN CITY','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','05','KAPATAGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','1','07','KAUSWAGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','1','08','KOLAMBUGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','09','LALA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','1','10','LINAMON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','11','MAGSAYSAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','1','12','MAIGO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','13','MATUNGAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','14','MUNAI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','15','NUNUNGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','16','PANTAO-RAGAT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','23','PANTAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','17','POONA PIAGAPO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','18','SALVADOR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','19','SAPAD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','06','SULTAN NAGA DIMAPORO (KAROMATAN)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','20','TAGOLOAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','2','21','TANGCAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','35','1','22','TUBOD (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','1','01','ALORAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','1','02','BALIANGAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','2','03','BONIFACIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','1','04','CALAMBA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','2','05','CLARIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','1','06','CONCEPCION','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','2','17','DON VICTORIANO CHIONGBIAN (DON MARIANO MARCOS)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','1','07','JIMENEZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','1','08','LOPEZ JAENA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','1','09','OROQUIETA CITY (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','2','10','OZAMIS CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','1','11','PANAON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','1','12','PLARIDEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','1','13','SAPANG DALAGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','2','14','SINACABAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','2','15','TANGUB CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','42','2','16','TUDELA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','01','ALUBIJID','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','1','02','BALINGASAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','1','03','BALINGOAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','1','04','BINUANGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','05','CAGAYAN DE ORO CITY (Capital)','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','07','CITY OF EL SALVADOR','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','06','CLAVERIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','1','08','GINGOOG CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','09','GITAGUM','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','10','INITAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','11','JASAAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','1','12','KINOGUITAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','1','13','LAGONGLONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','14','LAGUINDINGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','15','LIBERTAD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','16','LUGAIT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','1','17','MAGSAYSAY (LINUGOS)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','18','MANTICAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','1','19','MEDINA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','20','NAAWAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','21','OPOL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','1','22','SALAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','1','23','SUGBONGCOGON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','24','TAGOLOAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','1','25','TALISAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('10','43','2','26','VILLANUEVA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','23','1','01','ASUNCION (SAUG) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','23','2','23','BRAULIO E. DUJALI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','23','2','03','CARMEN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','23','2','15','CITY OF PANABO','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','23','2','19','CITY OF TAGUM (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','23','2','17','ISLAND GARDEN CITY OF SAMAL','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','23','1','05','KAPALONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','23','1','14','NEW CORELLA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','23','1','24','SAN ISIDRO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','23','2','18','SANTO TOMAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','23','1','22','TALAINGOD ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','24','1','01','BANSALAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','24','1','03','CITY OF DIGOS (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','24','3','02','DAVAO CITY','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','24','1','04','HAGONOY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','24','2','06','KIBLAWAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','24','1','07','MAGSAYSAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','24','1','08','MALALAG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','24','1','10','MATANAO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','24','1','11','PADADA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','24','1','12','SANTA CRUZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','24','2','14','SULOP ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','25','1','01','BAGANGA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','25','2','02','BANAYBANAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','25','1','03','BOSTON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','25','1','04','CARAGA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','25','1','05','CATEEL ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','25','2','09','CITY OF MATI (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','25','2','06','GOVERNOR GENEROSO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','25','2','07','LUPON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','25','1','08','MANAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','25','2','10','SAN ISIDRO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','25','1','11','TARRAGONA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','82','1','01','COMPOSTELA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','82','2','02','LAAK (SAN VICENTE) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','82','2','03','MABINI (DOÑA ALICIA) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','82','2','04','MACO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','82','1','05','MARAGUSAN (SAN MARIANO) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','82','2','06','MAWAB ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','82','1','07','MONKAYO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','82','1','08','MONTEVISTA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','82','2','09','NABUNTURAN (Capital) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','82','1','10','NEW BATAAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','82','2','11','PANTUKAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','86','','01','DON MARCELINO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','86','','02','JOSE ABAD SANTOS (TRINIDAD)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','86','','03','MALITA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','86','','04','SANTA MARIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('11','86','','05','SARANGANI ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','1','01','ALAMADA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','1','17','ALEOSAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','2','15','ANTIPAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','2','18','ARAKAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','1','16','BANISILAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','1','02','CARMEN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','2','04','CITY OF KIDAPAWAN (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','1','03','KABACAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','1','05','LIBUNGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','2','06','MAGPET','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','2','07','MAKILALA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','2','08','MATALAM','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','1','09','MIDSAYAP','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','2','10','M\'LANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','1','11','PIGKAWAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','1','12','PIKIT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','2','13','PRESIDENT POXAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','47','2','14','TULUNAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','63','2','02','BANGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','63','2','06','CITY OF KORONADAL (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','63','1','03','GENERAL SANTOS CITY (DADIANGAS)','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','63','2','19','LAKE SEBU','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','63','2','11','NORALA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','63','1','12','POLOMOLOK ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','63','2','18','SANTO NIÑO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','63','2','13','SURALLAH','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','63','1','14','TAMPAKAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','63','2','15','TANTANGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','63','2','16','T\'BOLI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','63','1','17','TUPI ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','65','2','01','BAGUMBAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','65','1','11','CITY OF TACURONG ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','65','1','02','COLUMBIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','65','2','03','ESPERANZA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','65','1','04','ISULAN (CAPITAL)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','65','2','05','KALAMANSIG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','65','1','08','LAMBAYONG (MARIANO MARCOS)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','65','2','06','LEBAK','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','65','1','07','LUTAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','65','2','09','PALIMBANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','65','1','10','PRESIDENT QUIRINO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','65','2','12','SEN. NINOY AQUINO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','80','0','01','ALABEL (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','80','0','02','GLAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','80','0','03','KIAMBA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','80','0','04','MAASIM','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','80','0','05','MAITUM','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','80','0','06','MALAPATAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','80','0','07','MALUNGON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('12','98','1','04','COTABATO CITY','I');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','39','1','00','CITY OF MANILA','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','74','2','01','CITY OF MANDALUYONG','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','74','2','02','CITY OF MARIKINA ','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','74','2','03','CITY OF PASIG','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','74','2','05','CITY OF SAN JUAN','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','74','2','04','QUEZON CITY','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','75','3','01','CALOOCAN CITY','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','75','3','02','CITY OF MALABON','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','75','3','03','CITY OF NAVOTAS','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','75','3','04','CITY OF VALENZUELA ','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','76','4','01','CITY OF LAS PIÑAS ','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','76','4','02','CITY OF MAKATI','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','76','4','03','CITY OF MUNTINLUPA ','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','76','4','04','CITY OF PARAÑAQUE','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','76','4','05','PASAY CITY','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','76','4','06','PATEROS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('13','76','4','07','TAGUIG CITY','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','01','BANGUED (Capital) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','02','BOLINEY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','03','BUCAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','04','BUCLOC ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','05','DAGUIOMAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','06','DANGLAS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','07','DOLORES ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','08','LA PAZ ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','09','LACUB ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','10','LAGANGILANG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','11','LAGAYAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','12','LANGIDEN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','13','LICUAN-BAAY (LICUAN) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','14','LUBA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','15','MALIBCONG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','16','MANABO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','17','PEÑARRUBIA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','18','PIDIGAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','19','PILAR ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','20','SALLAPADAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','21','SAN ISIDRO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','22','SAN JUAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','23','SAN QUINTIN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','24','TAYUM ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','25','TINEG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','26','TUBO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','01','0','27','VILLAVICIOSA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','01','ATOK ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','02','BAGUIO CITY ','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','03','BAKUN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','04','BOKOD ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','05','BUGUIAS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','06','ITOGON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','07','KABAYAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','08','KAPANGAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','09','KIBUNGAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','10','LA TRINIDAD (Capital) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','11','MANKAYAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','12','SABLAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','13','TUBA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','11','0','14','TUBLAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','27','0','08','AGUINALDO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','27','0','07','ALFONSO LISTA (POTIA) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','27','0','11','ASIPULO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','27','0','01','BANAUE ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','27','0','09','HINGYON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','27','0','02','HUNGDUAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','27','0','03','KIANGAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','27','0','04','LAGAWE (Capital) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','27','0','05','LAMUT ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','27','0','06','MAYOYAO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','27','0','10','TINOC ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','32','0','01','BALBALAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','32','0','13','CITY OF TABUK (Capital) ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','32','0','06','LUBUAGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','32','0','08','PASIL ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','32','0','09','PINUKPUK','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','32','0','11','RIZAL (LIWAN)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','32','0','14','TANUDAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','32','0','15','TINGLAYAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','44','0','01','BARLIG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','44','0','02','BAUKO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','44','0','03','BESAO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','44','0','04','BONTOC (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','44','0','05','NATONIN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','44','0','06','PARACELIS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','44','0','07','SABANGAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','44','0','08','SADANGA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','44','0','09','SAGADA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','44','0','10','TADIAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','81','0','01','CALANASAN (BAYAG) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','81','0','02','CONNER ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','81','0','03','FLORA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','81','0','04','KABUGAO (Capital) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','81','0','05','LUNA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','81','0','06','PUDTOL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('14','81','0','07','SANTA MARCELA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','07','0','08','AKBAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','07','0','09','AL-BARKA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','07','0','02','CITY OF LAMITAN','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','07','0','10','HADJI MOHAMMAD AJUL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','07','0','12','HADJI MUHTAMAD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','07','0','03','LANTAWAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','07','0','04','MALUSO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','07','0','05','SUMISIP','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','07','0','13','TABUAN-LASA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','07','0','06','TIPO-TIPO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','07','0','07','TUBURAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','07','0','11','UNGKAYA PUKAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','01','BACOLOD-KALAWI (BACOLOD GRANDE)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','02','BALABAGAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','03','BALINDONG (WATU) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','04','BAYANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','05','BINIDAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','33','BUADIPOSO-BUNTONG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','06','BUBONG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','37','BUMBARAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','07','BUTIG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','32','CALANOGAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','24','DITSAAN-RAMAIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','09','GANASSI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','10','KAPAI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','39','KAPATAGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','11','LUMBA-BAYABAO (MAGUING)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','41','LUMBACA-UNAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','12','LUMBATAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','36','LUMBAYANAGUE ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','13','MADALUM ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','14','MADAMBA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','34','MAGUING ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','15','MALABANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','16','MARANTAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','17','MARAWI CITY (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','31','MAROGONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','18','MASIU','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','19','MULONDO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','20','PAGAYAWAN (TATARIKAN)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','21','PIAGAPO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','35','PICONG (SULTAN GUMANDER)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','22','POONA BAYABAO (GATA)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','23','PUALAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','25','SAGUIARAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','40','SULTAN DUMALONDONG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','38','TAGOLOAN II','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','26','TAMPARAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','27','TARAKA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','28','TUBARAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','2','29','TUGAYA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','36','1','30','WAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','01','AMPATUAN  ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','18','BARIRA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','02','BULDON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','03','BULUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','28','DATU ABDULLAH SANGKI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','31','DATU ANGGAL MIDTIMBANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','30','DATU BLAH T. SINSUAT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','35','DATU HOFFER AMPATUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','07','DATU ODIN SINSUAT (DINAIG)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','05','DATU PAGLAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','06','DATU PIANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','36','DATU SALIBO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','26','DATU SAUDI-AMPATUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','27','DATU UNSAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','19','GEN. S. K. PENDATUN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','25','GUINDULUNGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','14','KABUNTALAN (TUMBAO)   ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','20','MAMASAPANO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','32','MANGUDADATU','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','09','MATANOG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','34','NORTHERN KABUNTALAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','22','PAGAGAWAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','10','PAGALUNGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','23','PAGLAT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','33','PANDAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','11','PARANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','29','RAJAH BUAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','08','SHARIFF AGUAK (MAGANOY) (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','37','SHARIFF SAYDONA MUSTAPHA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','17','SOUTH UPI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','12','SULTAN KUDARAT (NULING)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','24','SULTAN MASTURA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','13','SULTAN SA BARONGIS (LAMBAYONG)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','16','TALAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','21','TALITAY  ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','38','0','15','UPI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','1','06','HADJI PANGLIMA TAHIL (MARUNGGAS)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','1','01','INDANAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','1','02','JOLO (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','2','03','KALINGALAN CALUANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','2','17','LUGUS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','2','04','LUUK','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','1','05','MAIMBUNG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','2','07','OLD PANAMAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','2','19','OMAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','2','18','PANDAMI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','2','16','PANGLIMA ESTINO (NEW PANAMAO)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','1','08','PANGUTARAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','1','09','PARANG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','2','10','PATA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','1','11','PATIKUL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','2','12','SIASI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','1','13','TALIPAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','2','14','TAPUL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','66','2','15','TONGKIL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','70','0','02','BONGAO (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','70','0','09','LANGUYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','70','0','03','MAPUN (CAGAYAN DE TAWI-TAWI)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','70','0','01','PANGLIMA SUGALA (BALIMBING)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','70','0','10','SAPA-SAPA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','70','0','11','SIBUTU','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','70','0','04','SIMUNUL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','70','0','05','SITANGKAI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','70','0','06','SOUTH UBIAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','70','0','07','TANDUBAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('15','70','0','08','TURTLE ISLANDS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','02','2','01','BUENAVISTA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','02','1','02','BUTUAN CITY (Capital)','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','02','2','04','CARMEN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','02','2','03','CITY OF CABADBARAN','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','02','2','05','JABONGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','02','2','06','KITCHARAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','02','1','07','LAS NIEVES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','02','2','08','MAGALLANES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','02','2','09','NASIPIT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','02','2','12','REMEDIOS T. ROMUALDEZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','02','2','10','SANTIAGO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','02','2','11','TUBAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','2','02','BUNAWAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','1','01','CITY OF BAYUGAN','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','1','03','ESPERANZA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','2','04','LA PAZ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','2','05','LORETO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','1','06','PROSPERIDAD (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','2','07','ROSARIO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','2','08','SAN FRANCISCO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','1','09','SAN LUIS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','2','10','SANTA JOSEFA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','1','14','SIBAGAT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','1','11','TALACOGON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','2','12','TRENTO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','03','2','13','VERUELA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','2','01','ALEGRIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','2','02','BACUAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','1','04','BURGOS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','2','06','CLAVER','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','1','07','DAPA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','1','08','DEL CARMEN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','1','10','GENERAL LUNA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','2','11','GIGAQUIT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','2','14','MAINIT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','2','15','MALIMONO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','1','16','PILAR','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','2','17','PLACER','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','1','18','SAN BENITO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','2','19','SAN FRANCISCO (ANAO-AON)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','1','20','SAN ISIDRO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','1','21','SANTA MONICA (SAPAO)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','2','22','SISON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','1','23','SOCORRO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','2','24','SURIGAO CITY (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','2','25','TAGANA-AN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','67','2','27','TUBOD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','2','01','BAROBO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','02','BAYABAS','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','04','CAGWAIT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','05','CANTILAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','06','CARMEN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','07','CARRASCAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','2','03','CITY OF BISLIG','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','19','CITY OF TANDAG (Capital)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','08','CORTES','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','2','09','HINATUAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','10','LANUZA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','11','LIANGA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','2','12','LINGIG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','13','MADRID','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','14','MARIHATAG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','15','SAN AGUSTIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','16','SAN MIGUEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','2','17','TAGBINA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','68','1','18','TAGO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','85','0','01','BASILISA (RIZAL)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','85','0','02','CAGDIANAO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','85','0','03','DINAGAT','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','85','0','04','LIBJO (ALBOR)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','85','0','05','LORETO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','85','0','06','SAN JOSE (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('16','85','0','07','TUBAJON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','40','0','01','BOAC (Capital) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','40','0','02','BUENAVISTA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','40','0','03','GASAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','40','0','04','MOGPOG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','40','0','05','SANTA CRUZ ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','40','0','06','TORRIJOS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','51','0','01','ABRA DE ILOG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','51','0','02','CALINTAAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','51','0','03','LOOC ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','51','0','04','LUBANG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','51','0','05','MAGSAYSAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','51','0','06','MAMBURAO (Capital)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','51','0','07','PALUAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','51','0','08','RIZAL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','51','0','09','SABLAYAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','51','0','10','SAN JOSE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','51','0','11','SANTA CRUZ ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','1','01','BACO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','2','02','BANSUD ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','2','03','BONGABONG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','2','04','BULALACAO (SAN PEDRO) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','1','05','CITY OF CALAPAN (Capital) ','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','2','06','GLORIA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','2','07','MANSALAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','1','08','NAUJAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','2','09','PINAMALAYAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','1','10','POLA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','1','11','PUERTO GALERA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','2','12','ROXAS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','1','13','SAN TEODORO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','1','14','SOCORRO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','52','1','15','VICTORIA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','3','01','ABORLAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','02','AGUTAYA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','03','ARACELI ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','2','04','BALABAC ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','2','05','BATARAZA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','2','06','BROOKE\'S POINT ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','07','BUSUANGA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','08','CAGAYANCILLO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','09','CORON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','22','CULION ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','10','CUYO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','11','DUMARAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','12','EL NIDO (BACUIT) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','21','KALAYAAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','13','LINAPACAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','14','MAGSAYSAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','2','15','NARRA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','3','16','PUERTO PRINCESA CITY (Capital) ','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','2','17','QUEZON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','2','23','RIZAL (MARCOS) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','18','ROXAS ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','19','SAN VICENTE ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','2','24','SOFRONIO ESPAÑOLA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','53','1','20','TAYTAY ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','01','ALCANTARA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','02','BANTON ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','03','CAJIDIOCAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','04','CALATRAVA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','05','CONCEPCION ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','06','CORCUERA ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','16','FERROL ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','07','LOOC ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','08','MAGDIWANG ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','09','ODIONGAN ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','10','ROMBLON (Capital) ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','11','SAN AGUSTIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','12','SAN ANDRES ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','13','SAN FERNANDO ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','14','SAN JOSE ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','15','SANTA FE ','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('17','59','0','17','SANTA MARIA (IMELDA)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','0','01','BACOLOD CITY (Capital)','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','4','02','BAGO CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','5','03','BINALBAGAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','2','04','CADIZ CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','1','05','CALATRAVA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','6','06','CANDONI','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','6','07','CAUAYAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','1','09','CITY OF ESCALANTE','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','5','10','CITY OF HIMAMAYLAN','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','6','15','CITY OF KABANKALAN','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','6','27','CITY OF SIPALAY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','3','28','CITY OF TALISAY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','3','31','CITY OF VICTORIAS','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','3','08','ENRIQUE B. MAGALONA (SARAVIA)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','5','11','HINIGARAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','6','12','HINOBA-AN (ASIA)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','6','13','ILOG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','5','14','ISABELA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','4','16','LA CARLOTA CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','5','17','LA CASTELLANA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','2','18','MANAPLA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','5','19','MOISES PADILLA (MAGALLON)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','3','20','MURCIA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','4','21','PONTEVEDRA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','4','22','PULUPANDAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','2','23','SAGAY CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','1','32','SALVADOR BENEDICTO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','1','24','SAN CARLOS CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','4','25','SAN ENRIQUE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','3','26','SILAY CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','1','29','TOBOSO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','45','4','30','VALLADOLID','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','2','01','AMLAN (AYUQUITAN)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','1','02','AYUNGON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','3','03','BACONG','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','2','04','BAIS CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','3','05','BASAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','1','07','BINDOY (PAYABON)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','1','08','CANLAON CITY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','3','06','CITY OF BAYAWAN (TULONG)','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','1','11','CITY OF GUIHULNGAN','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','2','21','CITY OF TANJAY','C');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','3','09','DAUIN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','2','10','DUMAGUETE CITY (Capital)','H');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','1','12','JIMALALUD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','1','13','LA LIBERTAD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','2','14','MABINAY','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','1','15','MANJUYOD','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','2','16','PAMPLONA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','2','17','SAN JOSE','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','3','18','SANTA CATALINA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','3','19','SIATON','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','2','20','SIBULAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','1','22','TAYASAN','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','3','23','VALENCIA (LUZURRIAGA)','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','1','24','VALLEHERMOSO','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('18','46','3','25','ZAMBOANGUITA','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','38','SAN MIGUEL','M');
insert  into `tblcitymun`(`region_c`,`province_c`,`district_c`,`citymun_c`,`citymun_m`,`lgu_type`) values ('02','31','2','38','SAN MIGUEL','M');

/*Table structure for table `tblprovince` */

DROP TABLE IF EXISTS `tblprovince`;

CREATE TABLE `tblprovince` (
  `region_c` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `province_c` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `province_m` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`province_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tblprovince` */

insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('14','01','ABRA');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('16','02','AGUSAN DEL NORTE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('16','03','AGUSAN DEL SUR');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('06','04','AKLAN');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('05','05','ALBAY');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('06','06','ANTIQUE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('15','07','BASILAN');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('03','08','BATAAN');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('02','09','BATANES');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('04','10','BATANGAS');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('14','11','BENGUET');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('07','12','BOHOL');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('10','13','BUKIDNON');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('03','14','BULACAN');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('02','15','CAGAYAN');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('05','16','CAMARINES NORTE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('05','17','CAMARINES SUR');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('10','18','CAMIGUIN');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('06','19','CAPIZ');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('05','20','CATANDUANES');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('04','21','CAVITE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('07','22','CEBU');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('11','23','DAVAO DEL NORTE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('11','24','DAVAO DEL SUR');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('11','25','DAVAO ORIENTAL');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('08','26','EASTERN SAMAR');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('14','27','IFUGAO');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('01','28','ILOCOS NORTE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('01','29','ILOCOS SUR');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('06','30','ILOILO');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('02','31','ISABELA');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('14','32','KALINGA');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('01','33','LA UNION');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('04','34','LAGUNA');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('10','35','LANAO DEL NORTE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('15','36','LANAO DEL SUR');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('08','37','LEYTE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('15','38','MAGUINDANAO');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('13','39','NCR, FIRST DISTRICT');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('17','40','MARINDUQUE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('05','41','MASBATE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('10','42','MISAMIS OCCIDENTAL');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('10','43','MISAMIS ORIENTAL');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('14','44','MOUNTAIN PROVINCE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('18','45','NEGROS OCCIDENTAL');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('18','46','NEGROS ORIENTAL');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('12','47','COTABATO (NORTH COTABATO)');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('08','48','NORTHERN SAMAR');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('03','49','NUEVA ECIJA');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('02','50','NUEVA VIZCAYA');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('17','51','OCCIDENTAL MINDORO');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('17','52','ORIENTAL MINDORO');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('17','53','PALAWAN');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('03','54','PAMPANGA');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('01','55','PANGASINAN');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('04','56','QUEZON');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('02','57','QUIRINO');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('04','58','RIZAL');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('17','59','ROMBLON');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('08','60','SAMAR (WESTERN SAMAR)');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('07','61','SIQUIJOR');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('05','62','SORSOGON');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('12','63','SOUTH COTABATO');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('08','64','SOUTHERN LEYTE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('12','65','SULTAN KUDARAT');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('15','66','SULU');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('16','67','SURIGAO DEL NORTE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('16','68','SURIGAO DEL SUR');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('03','69','TARLAC');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('15','70','TAWI-TAWI');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('03','71','ZAMBALES');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('09','72','ZAMBOANGA DEL NORTE');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('09','73','ZAMBOANGA DEL SUR');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('13','74','NCR, SECOND DISTRICT');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('13','75','NCR, THIRD DISTRICT');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('13','76','NCR, FOURTH DISTRICT');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('03','77','AURORA');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('08','78','BILIRAN');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('06','79','GUIMARAS');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('12','80','SARANGANI');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('14','81','APAYAO');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('11','82','COMPOSTELA VALLEY');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('09','83','ZAMBOANGA SIBUGAY');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('16','85','DINAGAT ISLANDS');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('11','86','DAVAO OCCIDENTAL');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('09','97','CITY OF ISABELA (Not a Province)');
insert  into `tblprovince`(`region_c`,`province_c`,`province_m`) values ('12','98','COTABATO CITY (Not a Province)');

/*Table structure for table `tblregion` */

DROP TABLE IF EXISTS `tblregion`;

CREATE TABLE `tblregion` (
  `region_c` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `region_m` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `region_sort` int(2) DEFAULT NULL,
  PRIMARY KEY (`region_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tblregion` */

insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('01','REGION I - ILOCOS REGION','REGION 1',2);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('02','REGION II - CAGAYAN VALLEY','REGION 2',3);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('03','REGION III - CENTRAL LUZON','REGION 3',4);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('04','REGION IV-A - CALABARZON','REGION 4A',5);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('05','REGION V - BICOL REGION','REGION 5',7);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('06','REGION VI - WESTERN VISAYAS','REGION 6',8);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('07','REGION VII - CENTRAL VISAYAS','REGION 7',9);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('08','REGION VIII - EASTERN VISAYAS','REGION 8',10);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('09','REGION IX - ZAMBOANGA PENINSULA','REGION 9',11);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('10','REGION X - NORTHERN MINDANAO','REGION 10',12);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('11','REGION XI - DAVAO REGION','REGION 11',13);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('12','REGION XII - SOCCSSARGEN','REGION 12',14);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('13','NATIONAL CAPITAL REGION','NCR',1);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('14','CORDILLERA AUTONOMOUS REGION','CAR',15);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('15','AUTONOMOUS REGION IN MUSLIM MINDANAO','ARMM',17);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('16','REGION XIII - CARAGA','CARAGA',16);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('17','REGION IV-B - MIMAROPA','REGION 4B',6);
insert  into `tblregion`(`region_c`,`region_m`,`abbreviation`,`region_sort`) values ('18','NEGROS ISLAND REGION','NIR',18);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `token` */

insert  into `token`(`user_id`,`code`,`created_at`,`type`) values (1,'8f10YrXwFhYi7D-ucBmP9X-D0Zlpa1TJ',1565532404,0);

/*Table structure for table `training` */

DROP TABLE IF EXISTS `training`;

CREATE TABLE `training` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `duration_start` date DEFAULT NULL,
  `duration_end` date DEFAULT NULL,
  `credits_earned` int(10) DEFAULT NULL,
  `institution` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `training` */

/*Table structure for table `unemployment` */

DROP TABLE IF EXISTS `unemployment`;

CREATE TABLE `unemployment` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `unemployment_reason_id` int(255) DEFAULT NULL,
  `other_reason` text,
  PRIMARY KEY (`id`),
  KEY `FK_unemployment` (`unemployment_reason_id`),
  CONSTRAINT `FK_unemployment` FOREIGN KEY (`unemployment_reason_id`) REFERENCES `unemployment_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `unemployment` */

/*Table structure for table `unemployment_reason` */

DROP TABLE IF EXISTS `unemployment_reason`;

CREATE TABLE `unemployment_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `unemployment_reason` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`email`,`password_hash`,`auth_key`,`confirmed_at`,`unconfirmed_email`,`blocked_at`,`registration_ip`,`created_at`,`updated_at`,`flags`,`last_login_at`) values (1,'markespiritu','mark.a.v.espiritu@gmail.com','$2y$10$vKgibHUf2mkZEDQg6A0.pekTJ0VzW3sQXK2k4qjjyr1uSNRLrI10a','RbSYbiZ97a_15QE-NqDe283YlE2PxcNc',1,NULL,NULL,'::1',1565532403,1565532403,0,1575531096);

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `user_id` int(255) NOT NULL AUTO_INCREMENT,
  `course_id` int(255) DEFAULT NULL,
  `major_id` int(255) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `extname` varchar(10) DEFAULT NULL,
  `year_graduated` int(4) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user_info` */

insert  into `user_info`(`user_id`,`course_id`,`major_id`,`firstname`,`middlename`,`lastname`,`extname`,`year_graduated`) values (1,8,6,'Mark Anthony','Vicena','Espiritu','',2014);
insert  into `user_info`(`user_id`,`course_id`,`major_id`,`firstname`,`middlename`,`lastname`,`extname`,`year_graduated`) values (2,8,6,'Jeany','Cayabas','Buteng','',1995);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
