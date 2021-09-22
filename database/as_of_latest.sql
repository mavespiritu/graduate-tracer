/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.5.5-10.4.11-MariaDB : Database - tracer
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

USE `tracer`;

/*Table structure for table `accept_job` */

DROP TABLE IF EXISTS `accept_job`;

CREATE TABLE `accept_job` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `accept_job_reason_id` varchar(100) DEFAULT NULL,
  `other_reason` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_accept_job` (`accept_job_reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `accept_job` */

insert  into `accept_job`(`id`,`user_id`,`accept_job_reason_id`,`other_reason`) values (1,1,'1,2','');

/*Table structure for table `accept_job_reason` */

DROP TABLE IF EXISTS `accept_job_reason`;

CREATE TABLE `accept_job_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `accept_job_reason` */

insert  into `accept_job_reason`(`id`,`title`) values (1,'Salaries and benefits');
insert  into `accept_job_reason`(`id`,`title`) values (2,'Career challenge');
insert  into `accept_job_reason`(`id`,`title`) values (3,'Related to special skills');
insert  into `accept_job_reason`(`id`,`title`) values (4,'Proximity to residence');
insert  into `accept_job_reason`(`id`,`title`) values (5,'Other reason');

/*Table structure for table `alumnus` */

DROP TABLE IF EXISTS `alumnus`;

CREATE TABLE `alumnus` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `course_id` int(255) DEFAULT NULL,
  `major_id` int(255) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `middlename` varchar(200) DEFAULT NULL,
  `sex` enum('F','M') DEFAULT NULL,
  `batch` int(4) DEFAULT NULL,
  `date_of_graduation` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3317 DEFAULT CHARSET=utf8mb4;

/*Data for the table `alumnus` */

insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1,10,0,'ABAYA','JASPER','CATABAY','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2,3,0,'ABAYA','REMY ','CAROLINO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3,8,6,'ABAYA','GLADYS','TACADENA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (4,4,0,'ABLANG','CHRISTIAN','BARROS','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (5,8,6,'ABUYOG','MARY ROSE','HALAMAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (6,14,0,'ABUYOG','RONALYN','HALAMAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (7,8,5,'ACOSTA','ARAN MANUEL','ABLANG','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (8,13,0,'ACOSTA','ANGELICA','RINGOR','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (9,1,0,'AFROILAN','ABRAHAM','GONZALO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (10,12,0,'AGLIBUT','FELICISIMO','OMEGA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (11,5,0,'AGNO','JONALYN','MADAY-A','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (12,1,0,'AGPALSA','RONALD','TORIAGA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (13,8,6,'AGRESOR','RITZCHELLE','GALARIO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (14,8,6,'AGRISOLA','ABDULAZIZ','MARTINEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (15,8,6,'AGRISOLA','ALETH','PASCUA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (16,1,0,'AGUIHON','BRYAN','PARILLO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (17,14,0,'AGUILAR','JUNEVILLE','DUMAWA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (18,14,0,'AGUILAR','RICHELLE MAE','DAMASO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (19,9,0,'ALAPIT','REYLYN','ARELLANO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (20,8,6,'ALCAIDE','DEBBIE MAY','HORTIZUELA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (21,5,0,'ALCANTARA','TRINA MAY','GARCIA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (22,1,0,'ALCANTARA','FEM','LARDIZABAL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (23,8,6,'ALDEOSA','JOE PACZ','PERALTA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (24,8,5,'ALLAGAY','SHINALLYN','PABLO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (25,5,0,'ALMAZAN ','JULIEBEE','GARCIA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (26,9,0,'ALMODIEL','JARDENE','VELASCO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (27,11,0,'ALVARADO','LOMEN','GALLETA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (28,8,5,'ALVIENTO','DESSA','SANCHEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (29,4,0,'ANAEN','JESSA','TEJANO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (30,5,0,'ANCHETA','JAMAICA','GRANFIL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (31,8,6,'ANDAQUIG','GRETCHEN','DE PERALTA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (32,8,5,'ANDAYA','JORELIZ','MANLAPAZ','M',2014,'2014-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (33,13,0,'ANDAYA','ROSEL','HACHILES','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (34,8,6,'ANGELES','CATHLEEN ANN','RACUYA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (35,8,6,'ANGGOTE','ASHARY','LANGCAO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (36,10,0,'ANGLO','MARIA KRISTINE','MARI','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (37,13,0,'ANNAYON','JEFFERSON','GALAO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (38,8,5,'ANQUILLANO','DIVINA GRACE','ELIGIO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (39,13,0,'APAN','JULIUS','MONTANCES','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (40,8,5,'APILADO','LADY PET','PERALTA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (41,4,0,'AQUINO','BRANDON JOHN','SERONA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (42,8,6,'ARELLANO','MARY ANN','GASTON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (43,12,0,'AROLA','DIVINE GRACE','ANGOAY','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (44,8,6,'ARREOLA','JUN ','ENCARNACION','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (45,14,0,'ASIONG','JOANNA VERA','AGOSTO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (46,8,5,'ASPILLAGA','LULLALEY','ALOJADO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (47,4,0,'AYSON','CATHERINE','CENTENO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (48,11,0,'BADOL','JOVELYN','SEPIAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (49,12,0,'BAGANO','GIL G. JR.','GALARIO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (50,9,0,'BAJE','CHRISMALIZ','MATANO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (51,11,0,'BALBIN','ANALYN','LISING','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (52,13,0,'BALBIN','ANGELICA','ALAGNA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (53,13,0,'BALBIN','CLARISSS','PAGULLAY','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (54,14,0,'BALINGTAN','SUPERLYN','PANGANIBAN','F',2014,'2014-10-14');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (55,8,6,'BALLOCANAG','MIZPAH JESRIEL','CABRERA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (56,14,0,'BAL-UT','MARY LUZ','HABOC','F',2014,'2014-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (57,1,0,'BANASAN','HENRY','DAWILEN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (58,12,0,'BANDIWAN','ALMA','CAYANGA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (59,1,0,'BANI','RODERICK','CORPUS','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (60,10,0,'BANIAGA','KEESHIA LYN','ORPILLA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (61,5,0,'BANSALEO','HAZEL','MANAPING','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (62,13,0,'BAPTISTA','SONNY','PERALTA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (63,8,6,'BARNACHEA','JINKY','GORDON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (64,1,0,'BARROGA','RICHARD','CALDERAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (65,8,6,'BARROZO','JOVELYN','ORALLO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (66,5,0,'BASBAS','LEA FAITH','BAGUITAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (67,8,6,'BATALLA','MARY JOY','GALOPE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (68,13,0,'BATIN','APRIL JOY','DOMONGDONG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (69,14,0,'BATIN','AUBREY','GALLETO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (70,4,0,'BAUTISTA','APRIL JOY','ABAD','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (71,3,0,'BAUTISTA','GERLYN','GALON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (72,6,7,'BAY-AN','MAYFLOR','AMBATANG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (73,6,7,'BELLO','JAYSON','CARDONA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (74,9,0,'BELLO','MARIA NIKKA','DE GUZMAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (75,11,0,'BELLO','MARIA NIKKA','DE GUZMAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (76,6,3,'BELO','JASMIN','VIVENCIO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (77,8,5,'BENITEZ','RESHALE','CABANSAG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (78,6,1,'BENITO','ILONAH JEAN','BANNAWAG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (79,5,0,'BERZABAL','MARIE','VALDEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (80,4,0,'BINAS-O','APRIL','CABALAR','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (81,5,0,'BINONGOT','MILLICENT','CADAEG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (82,5,0,'BITONGAN','RONALUZ GRACE','ROLDAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (83,8,6,'BLANCO','ARIANE MAE','COSMELIA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (84,8,5,'BOCO','ALYSSA TRIXIE','PANGANIBAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (85,10,0,'BONBON','MAYSA','LEMERA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (86,8,6,'BONDAD','MARICHU','FERNANDEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (87,5,0,'BONGOLAN','JESSICA','BALDONADO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (88,1,0,'BORRETA','ROMELDA','PRINCENA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (89,8,6,'BRILLO','JENNY','JAVILLO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (90,8,6,'BUENTIPO','KURT DAVE','JAVILLO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (91,8,5,'BUGARIN','SARAH','SAN AGUSTIN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (92,11,0,'BUGARIN','DIANA KAREN','BOLIN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (93,3,0,'BUMATNONG','NORBY JOKER','ACIONG','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (94,5,0,'BUSIKET','ERMALYN','LOGUIBES','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (95,8,6,'BUTAY','JAY R','IÑIGO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (96,5,0,'CABALCE','GENEROSE','RAGUNTON','F',2014,'2014-10-14');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (97,5,0,'CABANGCALA','ROLANDO','EBABEN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (98,4,0,'CABANSAG','MARK RICKSON','DOMSING','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (99,9,0,'CABANTING','REGIE','PROSPERO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (100,8,5,'CABAYA','MARICAR','AMATE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (101,12,0,'CABBAB','JOY','CORTEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (102,8,6,'CACHO','SHEILA MARIE','RAGUNTON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (103,12,0,'CACHO','GRETEL MARIE','APACQUID','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (104,11,0,'CADAPAN','LYZA','TOQUERO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (105,8,6,'CAEL','CHARLES III','GALLETO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (106,4,0,'CALANNO','JOHN PAOLO','ACOSTA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (107,8,6,'CALDONA','JAKE','GABATILAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (108,8,5,'CALIBUSO','LADY ROSANNE','ESTABILLO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (109,4,0,'CALINDAS','DELAILA IRMA','TAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (110,10,0,'CALINDAS','THEA GLORINAH','MARTINEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (111,8,6,'CALINDAS','CLARISSA','GARCES','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (112,1,0,'CALINDAS','ARNEL','GALLARDO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (113,9,0,'CALLEJO','SHEREENE','CORTEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (114,8,6,'CALVO','JAYSON','SANCHEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (115,14,0,'CAMPILLA','JOHN ALLEN','ESTRAÑERO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (116,12,0,'CANAOAY','LESLY ABIGAIL','DOLORMENTE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (117,13,0,'CARDONA','JAICA MIA','TANGONAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (118,8,6,'CASIDSID','ROEL ','ASCAÑO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (119,5,0,'CASTILLO','CAMILLE','CEBUALA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (120,10,0,'CASTILLO','HARRY','BAÑEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (121,1,0,'CASTILLO','MARNELINE','BRAZIL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (122,12,0,'CASTILLO','LIZEL','GANDALERA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (123,5,0,'CASTRO','RICA JOY','FAVO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (124,8,6,'CASTRO','GLAIZA MAE','ABAYA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (125,6,4,'CAYSO','MARISOL','CUDIAMAT','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (126,4,0,'CENA','ELAILA MAE','ALIMORONG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (127,8,6,'CENTENO','FAE RAQUEL','PANAGUITON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (128,13,0,'CHINCHO','JUDY','DE GUZMAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (129,14,0,'CHOA','LOREBELLE','GRABANZOR','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (130,8,6,'COCSON','PRINCESS','INIGO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (131,3,0,'COLLADO','EDWIN','VALDEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (132,8,6,'COLLADO','JANELLA ZEA','REPAREJO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (133,8,5,'COMBAS','ROMMEL','GAYAO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (134,5,0,'COMPRA','MARIE FE','DULI','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (135,10,0,'CORDOVA','CHARITO JR.','JIMENEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (136,6,4,'CORPUZ','SONNY DAVID','RAMIL','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (137,13,0,'CORPUZ','JUDELYN','BAO-INGAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (138,14,0,'CORPUZ','ROSALYN','LORENZANA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (139,11,0,'CORTADO','JOANA MARIE','AGULLANA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (140,11,0,'CORTADO','MARY JOY','GALDONES','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (141,13,0,'CORTADO','ANGELICA','SANCHEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (142,4,0,'CORTEZ','NORBY ','VALDEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (143,8,6,'CORTEZ','REMIL','LABANAR','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (144,8,5,'CORTEZ','JOY','GADUT','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (145,11,0,'CORTEZ','JOMAR','TABUTOL','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (146,11,0,'CORTEZ','RUBIE','LABANAR','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (147,13,0,'CORTEZ','JIMMY JR.','MECOS','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (148,14,0,'CORTEZ','EVA MARIE','GAGNO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (149,5,0,'COSME','BABELYN','DAPIG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (150,1,0,'CUARTO','CARLOTA','SBADO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (151,4,0,'CUBON','DEXTER','GAGARIN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (152,1,0,'CUBON','KATHLEEN JOY','CALDERON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (153,9,0,'CUDIAMAT','RONALYN','INIGO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (154,8,5,'CUMAY-AO','JENNYLYN','MIRASOL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (155,6,3,'DACILLO','RONNEL','CORTEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (156,4,0,'DACUMA','CHRISTOPHER ','JAVAR','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (157,4,0,'DAGUSEN','MACDONALD','TUDAYAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (158,1,0,'DALGO','DENVER','AGULI','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (159,11,0,'DALIDA','JENNIFER','FLOMAR','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (160,13,0,'DALIDA','JENNIFER','FLOMAR','F',2014,'2014-05-14');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (161,4,0,'DALIMEG','SADDAM','PALOAY','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (162,5,0,'DAMPULAY','GENINA CARLA','BERNARDO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (163,1,0,'DAPLAYAN','LERMA','APALET','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (164,8,5,'DE CASTRO','ROYET','GRAVIDEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (165,8,6,'DE GRACIA','MICHAEL ALLAN','HAGOC','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (166,13,0,'DE GRACIA','IRENE','CABANTING','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (167,1,0,'DE GUZMAN','CHRISTIAN MARK','GALINATO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (168,14,0,'DE GUZMAN','CHRISTIAN SHAWN RAY','OLIVAS','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (169,5,0,'DEL ROSARIO','RONEL ZON','GABRIEL','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (170,9,0,'DEL ROSARIO','SHERYL','GARCIA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (171,9,0,'DELA CRUZ','KATHLEEN JOY','RAMOS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (172,14,0,'DELA CRUZ','LOVELY','DEMINIA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (173,13,0,'DELADIA','RENALYN','CARBONEL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (174,4,0,'DELOS SANTOS ','KAYCELLE','GUTIERREZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (175,5,0,'DELUTA','MICHELLE','PALACOL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (176,5,0,'DIGAO','ZANDRA LYN','MAPULA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (177,1,0,'DIGMA','LOVELY','GALVEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (178,13,0,'DIVINA','EVELYN','DAGUSEN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (179,14,0,'DIVINA','MARIE-DELMAR','ARREOLA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (180,8,6,'DIZON','JENIFER','SUYAT','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (181,5,0,'DOLLIENTE','MARIBETH','','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (182,5,0,'DOLORMENTE','MARIE NHESS','BOBILES','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (183,5,0,'DOM - OGEN','DEXTER','PANGLAO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (184,1,0,'DOMENDEN','JASON','SUMALBAG','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (185,8,5,'DOMINGO','DEXTER','CHI','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (186,1,0,'DORAL','JEFFREY','GUZMAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (187,11,0,'DUGA','KAREN ANN','REAL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (188,6,1,'DULAY','JEAN ISHRAEL','LINAO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (189,9,0,'DUMACYON','RONALYN','QUIDPOAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (190,5,0,'DUMANAS','JESSICA','DANG-AWEN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (191,4,0,'ELECCION','MARCELO JR.','GADONG','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (192,12,0,'ELGAMO','IMMY JOYCE','AGUNAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (193,4,0,'ELIGIO','ARJOE','MARIANO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (194,4,0,'ELLASOS','MARY JOY ','GADIA  ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (195,11,0,'ELLORIN','MARY ABIGAIL','CARRANZA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (196,4,0,'EMPABIDO','MELVIN','FONTILAR','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (197,8,6,'ENCARNACION','ALJON','GALACIO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (198,8,6,'ERAÑA','MELINDA','CASTILLO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (199,5,0,'ESCOBAR','MAUREEN','OMAOENG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (200,3,0,'ESCOBAR','SYRA RICHELLE','BOBILES','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (201,8,6,'ESPEJO','JANINE RAISAH','TUZON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (202,13,0,'ESPINA','JOANA ROSA','JAVILLONAR','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (203,8,5,'ESPINOSA','MA. OLEYYA JEAN','RAMOS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (204,5,0,'ESPIRITU','ROSARIO','VALDEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (205,14,0,'ESPIRITU','PRINCESS DIANE','FERNANDEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (206,8,6,'ESTRELLA','RENDEZ VOUS','DELA CRUZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (207,6,4,'FABIAN','CARISSA BLANCE','TAWAGEN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (208,4,0,'FABRO','MELANIE','ALVARADO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (209,8,6,'FABRO','EDILBERTO JR.','HABOC','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (210,1,0,'FABRO','JENNIFER','SUYAT','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (211,13,0,'FABRO','SHIELA MAE','RABON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (212,4,0,'FAJARDO','KARL EMERSON','HALUBER','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (213,8,5,'FAROL','LEAHLYN','VILLOTA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (214,10,0,'FERMATO','WILMAR','LAGASCA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (215,8,6,'FERNANDEZ','MA. VICITASION','SALDUA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (216,8,6,'FERNANDEZ','RYAN','QUEZADA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (217,14,0,'FERNANDEZ','HAZEL','BOY-OAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (218,5,0,'FERNANDO','ABBY SHAYNE','RAGANDAP','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (219,8,5,'FERNANDO','SARAH JANE','BUYAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (220,12,0,'FLORES','LOUIE','VALDEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (221,12,0,'FLORES','ROMILYN','GERDAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (222,3,0,'FLORESCA','GIDDEL PRAISE','AFANGKA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (223,5,0,'GABAON','JULIE ANNE','BAOBAOEN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (224,10,0,'GABAON','RIOFEL','TOMAS','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (225,8,6,'GABAON','DIANNE','ESTRELLER','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (226,6,4,'GABAT','CESAR JR.','SUMIOAG','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (227,4,0,'GABATIN','RUDY','GABATINO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (228,5,0,'GABAYAN','JHEA ROSE ELOISA','BAGUITAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (229,9,0,'GABAYAN','CHARLIE','ESTOLERO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (230,5,0,'GABBAOAN','LEIZEL','CAM-ANI','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (231,9,0,'GABOR','RAUL JR.','PATIÑO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (232,4,0,'GABUAT','MARK ANGELO','ANTALAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (233,12,0,'GABUAT','DAYANARA','GACILOS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (234,11,0,'GABUYO','ANGELICA','OLERMO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (235,13,0,'GACAYAN','MARICAR','CASTRO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (236,11,0,'GACILAN','MARY CLAIRE','RIGOR','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (237,6,7,'GACILOS','RAPHY','VALDEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (238,1,0,'GACOSCOS','RONALYN','AGUILAR','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (239,9,0,'GACULA','JEFFREY','CABARLOC','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (240,10,0,'GACUSAN','KAREN','GALLESO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (241,8,6,'GACUSANA','CLAIRE','ECRAELA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (242,13,0,'GACUTAN','CINDY','GALLETO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (243,8,5,'GADIA','MARY ANN','GARABILEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (244,11,0,'GADIA','MICHELLE','RILLORTA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (245,4,0,'GADIANO','ANGELA DIANNE','MARQUEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (246,8,5,'GADINGAN','BENJIE','CABARIOUS','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (247,4,0,'GADONG','JOHN ERDY','ANDIR','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (248,4,0,'GAGARIN','ALDRIN','DAGDAGAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (249,4,0,'GAGARIN','DANIELLE ANN','DIAMANTE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (250,4,0,'GAGARIN','ROGELIO JR.','HERAÑA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (251,9,0,'GAGARIN','SARAH JANE','FABROS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (252,11,0,'GAGNO','CELIA FAYE','AGUILAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (253,4,0,'GALAITES','ARIEL','CARALOS','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (254,8,5,'GALANO','ROSE ANNE','BORDADO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (255,13,0,'GALANO','ROSELYN','GANDOL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (256,9,0,'GALANTO','MARLY','LAIZA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (257,12,0,'GALANTO','ALMA FAYE','V.','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (258,13,0,'GALCON','JUDY ANN','RABE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (259,8,6,'GALDONES','JOSEPH','BRAVO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (260,12,0,'GALDONEZ','MARY ANN ','VALDEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (261,4,0,'GALIMBA','SARAH JANE','FABULA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (262,8,5,'GALINATO','ARVIN','ROBLEDO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (263,8,5,'GALINATO','MARCELA ROWENA','GAMILDE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (264,5,0,'GALLA ','MAE','AGUDAL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (265,8,5,'GALLARDO','BREN CARLO','DAVAL','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (266,1,0,'GALLARDO','SALLY GRACE','MANINGAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (267,14,0,'GALLARDO','EMALYN','GABIANA','F',2014,'2014-10-14');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (268,4,0,'GALLERO','MARY ANN ESTRELLA','BAWAS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (269,3,0,'GALLETES','MARGARITA','ACOSTA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (270,1,0,'GALOPE','JAKE','JARAMILLA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (271,8,6,'GALUARDO','RHEALYN','GALINATO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (272,4,0,'GALUTAN','NERIZA','TEJADA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (273,5,0,'GALVEZ','REBECCA','GOLEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (274,1,0,'GALVEZ','ALJAM','MEDINA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (275,12,0,'GALZOTE','APRILYN','VIROS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (276,8,6,'GAMAYEN','LYKA ROSE','MECOS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (277,5,0,'GAMBOA','EVA MARIE','SARAOS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (278,5,0,'GAMBOA','MINA','CADDARAO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (279,6,3,'GAMBOL','RICHARD BONG','BARROGA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (280,14,0,'GAMOSO','FATIMA','ESCARATE','F',2014,'2014-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (281,5,0,'GAMUEDA','BERNARDO JR.','PASCUA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (282,12,0,'GAMUEDA','JENILA','NONE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (283,14,0,'GAMUEDA','MIRIAM','PASCUA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (284,9,0,'GANABO','ARVIN','MORENO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (285,5,0,'GANACIAS','MARJORIE','','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (286,8,6,'GANADO','ELYSA MARIE','GALICIA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (287,8,5,'GANDALERA','JERIC','GARNACE','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (288,5,0,'GANDOL','MARJORIE','DE GUZMAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (289,12,0,'GANI','MARY ANNE','GADIA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (290,12,0,'GANI','MARY JOY','GADIA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (291,8,6,'GANSAEN','RICHARD','MANZANO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (292,13,0,'GAOAT','SARAH JANE','JAMANDRA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (293,1,0,'GAPATE','JAY-R','ORPILLA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (294,13,0,'GARABILES','GRETHEL JANE','RAGUINDIN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (295,1,0,'GARABILEZ','JOHN PAUL','LUCAS','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (296,12,0,'GARABILEZ','MARY JOY','ORTEGA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (297,4,0,'GARCIA','ROWENALYN','HABAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (298,4,0,'GARCIA','TEODORO','FERNAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (299,9,0,'GATCHALLAN','FLORENCE','BANSIYEG','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (300,11,0,'GAURAN','RAQUEL','CASTRO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (301,1,0,'GAUTANI','JHOEVIC','RAPADA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (302,6,4,'GAYYED','VENUS','VICENTE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (303,9,0,'GENOVE','SHIELA MAY','CORTEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (304,5,0,'GERONDA','FLORABELLE','TUMACDANG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (305,13,0,'GERONILLA','JASMINE','BUTIGUIN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (306,8,5,'GIRONELLA','CATHERINE','VALDEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (307,4,0,'GOBANTES','GINA','RAPANUT','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (308,5,0,'GONZAGA','SHIELA MAY','CUENCO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (309,12,0,'GONZALES','KRIZELLE','DAWA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (310,5,0,'GONZALO','JERALYN','ANCHETA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (311,5,0,'GONZALO','MARK CHRISTOPHER','FERNANDO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (312,4,0,'GRANADA','MARLO II','SOLIVEN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (313,8,5,'GRANFIL','AIZA','VALDEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (314,8,6,'GRAY','KARYL MAE','GACUSANA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (315,4,0,'GUANZON','ROMEL','CALINDAS','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (316,5,0,'GUERZON','PRINCESS KAYE','DUQUING','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (317,9,0,'GUERZON','MIRASOL','CAMACHO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (318,9,0,'GUEVARA','VINALYN','BANAO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (319,14,0,'GUEVARRA','JAZMIN','ALIBANG','F',2014,'2014-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (320,8,6,'GUIBAOAN','JONALYN','JESTO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (321,12,0,'GUIEB','VENUS','BAL-UT','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (322,5,0,'GUITBA','ARLAN','ATCHILES','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (323,13,0,'GUMANGAN','LOVELY','ESTOQUIA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (324,13,0,'GURTIZA','JUANITA ROSE','AGAS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (325,4,0,'GUZMAN','MAUREEN','GAPUSAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (326,5,0,'HABER','JENNY','TAALA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (327,8,5,'HABON','WARREN JAGE','CADAYONG','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (328,14,0,'HABON','AUBREY','ANTE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (329,8,5,'HABOS','LUCIA','VALLAR','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (330,8,6,'HADAP','DANE LOUIE','SOTELO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (331,8,6,'HADLOC','MELANIE','CASTRO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (332,13,0,'HADLOC','JENNYLYN','CASTRO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (333,1,0,'HADUCA','JOY','MONTOYA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (334,13,0,'HAGUNOS','GAYLENE','NONE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (335,9,0,'HAILAR','VICTORIA','VALDEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (336,12,0,'HAILAR','CITADEL NINA','RUIZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (337,12,0,'HALABAS','JESIEL','HAGUNOS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (338,13,0,'HALAMAN','SHARMAINE','CORTEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (339,6,3,'HALLEGADO','JAYMELYN','CORTEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (340,4,0,'HALUBER','REYNALYN','ABLANG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (341,4,0,'HERNANDEZ','JAYMART','GALLESO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (342,14,0,'HERNANDO','GERALDINE','LATORRE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (343,1,0,'HOMBREBUENO','ALLEN','','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (344,5,0,'ILAGAN','JOVIEMAR','ANGAOAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (345,14,0,'ILAGAN','MICHAEL JAY','ABARQUEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (346,6,1,'ILAO','ARIANE','FERNANDEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (347,9,0,'IMMONG','JOEBELLE','ALOS','F',2014,'2014-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (348,8,5,'IMPERIAL','JULIUS ALAN','ALAY-AY','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (349,13,0,'INCIEN','DONNALYN','LAPIC','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (350,8,6,'INIGO','JERWINA','PANELA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (351,12,0,'ISIDRO','RICA-ANN','LAGAYA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (352,8,6,'JABONITALLA','MA. ESMERALDA','RAMOS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (353,12,0,'JAINAR','MERRY JEAN','ASTRERO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (354,8,6,'JANDOC','MA. LAILANI','NONES','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (355,5,0,'JAPEN','ROD JHON','ORDINARIO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (356,12,0,'JARAMILLA','MARILYN JOY','LAOAGAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (357,13,0,'JARAMILLO','DOMINIQUE','VALLEJO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (358,6,3,'JAVIER','PRINCESS','JOSE','F',2014,'2014-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (359,8,5,'JAVIER','MYNARD','NONE','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (360,11,0,'JAVIER','JINGLE','RABON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (361,9,0,'JAVILLONAR','AMALIA','SEVILLANO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (362,4,0,'JAVINES','JOHN JOENARD','RACHO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (363,8,5,'JIMENEZ',' ERCEL MAY','CATBAGAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (364,12,0,'JIMENEZ','CL ADAM','GINES','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (365,12,0,'JIMENEZ','ELIZA','BRAVO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (366,12,0,'JIMENEZ','MARIA MERCEDES','CALDERON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (367,11,0,'LABAGNOY','MARY ROSE','FLORES','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (368,13,0,'LABAGNOY','MARY ROSE','FLORES','F',2014,'2014-05-15');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (369,1,0,'LABIANO','EVANGELYN','CORPUZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (370,8,6,'LACADEN','JENNIFER','LAIS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (371,5,0,'LAGUA','MA. CONCEPCION','LAMES','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (372,1,0,'LAOAGAN','MARY ANNE','ALCANTARA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (373,14,0,'LAPIC','MARJORIE','LABTANG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (374,8,6,'LARDIZABAL','AILEEN','CABRADILLA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (375,1,0,'LARDIZABAL','ANGELICA','LEAL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (376,13,0,'LATAC','RHONAMAE','GARCIA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (377,13,0,'LAUZON','JEVERLIE','BATIN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (378,10,0,'LAVARO','MARKU DOMINIC','GINES','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (379,13,0,'LAVARO','CRISTAL','SAMILIN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (380,12,0,'LAYAO','CEYLON ODESSA YSRAEL','MALABANAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (381,6,7,'LAYYAG','NISSAN','DALIDA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (382,13,0,'LAZARTE','CRISTALYN','TORRES','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (383,13,0,'LEE','RON KEITH','LAGMAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (384,5,0,'LIBERATO','CAROL ','TORRES','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (385,6,4,'LICUDINE','JASMIN','GUIEB','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (386,13,0,'LLANES','REGGIE ANN','CUSTODIO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (387,9,0,'LOPEZ','RYAN','ORDINARIO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (388,14,0,'LOPEZ','MAY CLAIRE','CALADO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (389,6,7,'LUCENARIO','ROMEL','DUKEY','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (390,4,0,'MAALA','VLADIMIR','MARIANO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (391,5,0,'MADARANG','MARK ANTHONY','TEOFILO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (392,5,0,'MAGTAJAS','JANSEN','','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (393,4,0,'MALINIS','YVONNE','ALFREDO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (394,5,0,'MANGAY-AYAM','JHON LEE','DACANAY','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (395,9,0,'MANIBLOC','LIZA','CARLOS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (396,13,0,'MANIPOL','CAROL','BARONGAY','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (397,5,0,'MANZANO','ANNA MARIE','IÑIGO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (398,5,0,'MANZANO','GLORIA ZENY','DOMINNO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (399,5,0,'MANZANO','ROWENA','GACUSAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (400,8,5,'MANZANO','JOHN PAUL','QUIDANGEN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (401,9,0,'MANZANO','MADILYN','','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (402,11,0,'MANZANO','JESSA MAE','ETRATA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (403,12,0,'MANZANO','LEIZEL','GARINGGO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (404,14,0,'MANZANO','MYRMA','SAPGUIAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (405,8,5,'MARASIGAN','KRIZIA','SANCHEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (406,5,0,'MARBAS','RIZALYN','MANZANO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (407,8,5,'MARQUEZ','RONIEL','MEJIA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (408,1,0,'MARQUEZ','ANTHONY','FLORES','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (409,1,0,'MARQUEZ','JAYSON','MANUZON','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (410,13,0,'MARTINEZ','MARICEL','MILLIAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (411,12,0,'MARTINEZ','MARICAR','HABON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (412,14,0,'MASENDO','ARVEI','OLEGARIO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (413,10,0,'MATCHO','ALEXIS','MARTINEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (414,5,0,'MATEO','DIVINE GRACE','GALIMBA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (415,6,7,'MECOS','ERICSON','DIMALANTA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (416,14,0,'MECOS','MARY ROSE','GALDONES','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (417,14,0,'MEDINA','JUNABEL','CORPUZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (418,4,0,'MENDOZA','REMEDIOS','OLANIO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (419,4,0,'MILLARES','MAE VALERIE','JAVONITALLA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (420,11,0,'MILLIAN','MECHIEN','GACUSANA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (421,8,5,'MOCALENG','GINALYN','SAGORSOR','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (422,5,0,'MOLINA','ALDRINE','CARRANZA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (423,8,6,'MOLINA','EDELYN','AZUR','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (424,14,0,'MORQUED','DEVIE','AGUILAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (425,1,0,'MOSTRERO','JAYBEE','ALIMARI','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (426,6,1,'NADELA','ROSSEL','RODRIGUEZ','F',2014,'2014-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (427,8,5,'NAKAR','JERICK','FERALDO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (428,8,6,'NAUNGAYAN','ALGIER','DEL ROSARIO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (429,8,5,'NAUNGAYAN','RAFFY','GALICIA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (430,8,5,'NAVARRO','SHANELLE','CARTA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (431,11,0,'NERAL','NEIL PATRICK','BINAS','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (432,4,0,'NIÑONUEVO','FERNANDO JR.','MANZANO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (433,9,0,'NISPEROS','JENNIFER','BAGSAO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (434,5,0,'OANDASAN','HENRY JEFFERSON','HIDALGO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (435,8,6,'OBILLO','MICHAEL KNIGHT','LANGIDEN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (436,4,0,'OLIVAR','ANTHONY ELMAR','MORENO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (437,6,1,'OLIVER','PRESALYN JANICE','MENDOZA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (438,14,0,'OLOAN','ELAIJAH','SAY-AO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (439,8,6,'ORDOÑEZ','JEFFREY','VILLENA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (440,4,0,'ORPILLA','JOY','RODRIGUEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (441,5,0,'ORPILLA','JONALYN','PASCUA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (442,1,0,'ORTEGA','RHODA','TUMACDANG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (443,5,0,'ORTIZ','JOEY','AZUR','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (444,12,0,'PACIS','CLAIRE GENESIS','CORTEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (445,14,0,'PACQUING','MARY GRACE','GARABILIS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (446,13,0,'PACURSA','MARIMAR','CADIS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (447,13,0,'PADSING','MICHELLE','LIBLIBEN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (448,8,6,'PALACOL','FRANCIS PAULO','HALUBER','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (449,14,0,'PALANGDAO','ALYSSA MAY','MANZANO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (450,11,0,'PANIT','VANESSA','ISIDRO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (451,5,0,'PAROTINA','ROVI DIANNE','ROSAL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (452,6,1,'PASCUA','EDEL BLESS','RUIZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (453,8,6,'PASCUA','CHARMING','ORTIZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (454,8,5,'PASCUA','AEMBERLYNN','GARLEJO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (455,13,0,'PASCUA','LOVELY ANNE','GAMBALA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (456,5,0,'PASCUAL','RONALYN','HERLABAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (457,8,6,'PASION','MICHAEL RHENZO','ELEFANTE','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (458,12,0,'PASSI','JOMELENE','ADEPINE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (459,4,0,'PAYANGA','ALPHA','TOMACDANG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (460,4,0,'PE MANUEL','ANGELICA','BAUTISTA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (461,8,6,'PEPITO','VANGIELYN','GUERERO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (462,6,1,'PIANO','KRISTINE','TOQUERO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (463,9,0,'PILOR','RJ','VALDEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (464,4,0,'PIMENTEL','ELIZABETH','JOVEN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (465,3,0,'PINEDA','EDUARDO JR.','CUDIAMAT','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (466,1,0,'PINGKIAN','DIVINUS NEIL','RODRIGUEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (467,13,0,'PIS-O','MYRA YUKO','OPAO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (468,5,0,'PONCIANO','MARICON','ISIDRO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (469,8,5,'PONTEJOS','ANGELO','GADIANO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (470,12,0,'PURUGGANAN','KIMBERLY','GABAYAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (471,12,0,'PUTIL','JAEZELE','FAYE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (472,1,0,'QUIDPOAN','ERNIE','APALET','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (473,8,5,'QUILOP','CRYSTAL JOYCE','TINAYA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (474,8,6,'QUIMSON','JENNIFER','GALLETO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (475,1,0,'QUITILEN','CHRISTIAN','OBILLE','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (476,8,6,'RABAGO','JESSA','ACOSTA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (477,8,6,'RAFANAN','MARK LOUIE','REFUERZO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (478,8,5,'RAGANDAP','MEYNARD','VALDEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (479,5,0,'RAMIREZ','ALFREDO','BALBERAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (480,8,6,'RAMIREZ','CRYSTAL','ALING','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (481,1,0,'RAMIREZ','JOEL','PIMENTEL','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (482,1,0,'RAMON','HOLY','PANGISBAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (483,4,0,'RAMOS','ANTONIO JR.','GUERRERO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (484,5,0,'RAMOS','ADELIO','GARABILEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (485,1,0,'RAMOS','JAIRUS','FIGURACION','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (486,1,0,'RAMOS','RAYMART','DE GUZMAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (487,13,0,'RAMOS','MAY ANN','ORPILLA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (488,14,0,'RAPADA','APPLE LYRA','RAGASA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (489,13,0,'RAPOSA','RUTH GAY','DEFEISTA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (490,4,0,'RAQUIZA','MARY JANE','ELECCION','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (491,8,6,'REAL','JENELYN','GACUSAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (492,14,0,'REBAULA','AIRALYN ROSS','PASION','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (493,8,5,'REBULDELA','RAYMOND','RIVERA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (494,14,0,'REMOLACIO','RYZZA','TORREJAS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (495,12,0,'RENDON','GLADYS','GALIMBA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (496,14,0,'RENDON','REY','AGOSTO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (497,1,0,'REPAREJO','JENG JENG','SAN PEDRO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (498,4,0,'RESURRECCION','SHARMAINE','GAMUETA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (499,4,0,'REYES','AILYN','DIANO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (500,9,0,'REYES','MYRA','MILIARE','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (501,8,5,'REYNANTE','JONATHAN','ESPIRITU','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (502,6,1,'RIMANDO','DIANNE GRACE','BAUTISTA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (503,12,0,'RIVERA','KRISTABELLE SHANE','GANABO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (504,11,0,'ROQUETA','DEN MARC','VELASCO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (505,6,1,'ROSARIO','MELISSA','CABRAL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (506,8,6,'ROSARIO','JEAN','LIBERATO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (507,12,0,'ROSARIO','ROMELY','VELASCO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (508,3,0,'ROSENDO','JOHNNY JR.','QUILLY','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (509,12,0,'RUIZ','ELMA ROSE','PALUNAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (510,14,0,'SALDEVAR','JONALYN','LANGBAYAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (511,1,0,'SALES','DANIEL LEO','DADIS','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (512,14,0,'SAMBAOA','FLORIDA MAE','MATIAS','F',2014,'2014-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (513,8,5,'SANCHEZ','KARL PRINCE','GALVEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (514,1,0,'SANTAMARIA','JETH MARTSON','GALIMBA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (515,12,0,'SANTIAGO','MAUREEN','DILEM','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (516,6,2,'SANTISTEBAN','CLAIRE ANTONETTE','VALDEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (517,1,0,'SANTOS','LEOFRE','WANAGEN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (518,12,0,'SAYA-SAYA','RONALYN','BAUTISTA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (519,8,6,'SESE','HONEY MAE','RAMOS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (520,8,6,'SILAPAN','GRETCHEN','JAVINAR','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (521,5,0,'SOCIAS','MAY LUANNE','SOLIVEN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (522,13,0,'SOLIVEN','LAILANIE','SISON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (523,8,5,'SORIANO','KAREN JEF','TAGBO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (524,11,0,'SORIANO','LADY-ANGEL','FABULA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (525,11,0,'SUBLATEN','CHARISMA','MATICYENG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (526,3,0,'TALLUD','LEONITA','CALLUENG','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (527,14,0,'TAMAYO','BRIGITTE MAE','FRIAL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (528,14,0,'TAMIING','CHARACE','DANIEL','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (529,6,4,'TAN ','EDGAR','VIERNES','M',2014,'2014-10-14');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (530,5,0,'TAYOCNOG','NELY ANN','MENDOZA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (531,13,0,'TEJADA','ROWENA','HERAÑA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (532,14,0,'TEJADA','MARIMAR','SUBIDO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (533,1,0,'TEL-E','RHEINDEL','BASILIO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (534,5,0,'TERIO','ALJON','GUISTOC','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (535,9,0,'TILAD','MYNAH MARIE','ALOS','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (536,8,5,'TOLENTINO','JUN ','VALDEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (537,5,0,'TOME','VANGIE','BALDEVISIO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (538,4,0,'TOQUERO','RHUNEL','GABAON','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (539,1,0,'TOUGAN','JOVEN','HALAMAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (540,1,0,'TUMACDANG','ROLAND','BAOBAOEN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (541,5,0,'TUNGBABAN','JENNELYN','APOLTO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (542,9,0,'UBUAN','MARIDEL','DUKEY','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (543,8,5,'ULIDAN','RHEYNALYN','VALDEZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (544,5,0,'UMINGA','ASHLEE','BENNAGEN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (545,11,0,'UMIPIG','MARJORIE','ARREOLA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (546,4,0,'VALDEZ','MHERVA VALERIE','GRAY','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (547,5,0,'VALDEZ','JAYMALYN','TABLAC','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (548,3,0,'VALDEZ','AVEGAIL','JIMENEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (549,3,0,'VALDEZ','KATHRYN','MANZANO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (550,3,0,'VALDEZ','ROXAN FE','GALLERO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (551,8,6,'VALDEZ','ANNABELL','APUHIN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (552,8,6,'VALDEZ','CHRISTIAN','GARCIA','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (553,1,0,'VALDEZ','JHOMAR','LANGUEY','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (554,9,0,'VALDEZ','CREIZLE MAE','GACUTAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (555,11,0,'VALDEZ','BEVERLY','PASIAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (556,13,0,'VALDEZ','ROXAN','FORONDA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (557,12,0,'VALDEZ','ROWENA','PASIAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (558,3,0,'VALDEZ ','LIEZL ANN','PACQUING','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (559,8,6,'VALDEZ ','GLORY ','GASATAN','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (560,8,6,'VALDEZ ','KIMBERLY MAE','GALICIA','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (561,8,5,'VALLEJOS','KENNETH','MANLAPAZ','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (562,1,0,'VELARDE','REYMARK','ROLDAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (563,8,6,'VELASCO','MICHELLE','CABATO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (564,11,0,'VELASCO','MAE','AGUTO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (565,13,0,'VELASCO','MA. ANGELICA','MARQUEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (566,5,0,'VERBO','APRILLE PEARL','BAGANO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (567,5,0,'VERBO','NOVELYNNE GENESIS','BAGANO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (568,6,1,'VERZOSA','HAYDEE GLENN','CASTRO','F',2014,'2014-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (569,4,0,'VICENTE','GENEVIEVE','AGCAOILI','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (570,8,6,'VILLACAMPA','NELIA','BENITEZ','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (571,6,1,'VILLANUEVA','ALMA','GALACIO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (572,13,0,'VILLANUEVA','DINA','GALACIO','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (573,5,0,'VILLEGAS','RONNIE','LORENZO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (574,8,6,'VILOG','ANGELICA','','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (575,8,6,'VILOG','DEN MARC','HABAN','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (576,8,6,'VIROCEL','MAY ANN',' GAMBON','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (577,1,0,'VIVENCIO','PAUL JOHN','SORIO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (578,4,0,'WAGAYEN','KRISTEL','GUILAY','F',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (579,14,0,'WAGIS','ISAGANI','JUSTO','M',2015,'2015-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (580,6,1,'ALCANTARA','JENIFER ','MATA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (581,1,0,'ABAD','EDUARD JOSEPH','GACUSAN','M',2015,'2015-10-14');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (582,14,0,'ABATA','MYLA','QUITORIO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (583,4,0,'ACANCE','JENIUS EDWARD','PERALTA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (584,12,0,'ADONA','JULLIBE','GASATAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (585,13,0,'AGLIBUT','FELICISIMO','OMEGA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (586,4,0,'ALCANTARA','ANA MARIE','CORTEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (587,15,1,'ALCANTARA','LUISA ','PALIT-ANG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (588,4,0,'ALIBANG','JUNY II','CARIASO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (589,8,5,'ALMINARIO','ELVIRA FRANCESCA','BAGAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (590,12,0,'ALNAS  ','RIO JADE','BILIGAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (591,5,0,'ALOS','MICHELLE','POLIDES','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (592,6,3,'ALTEZ','FLORENCE ','BERZABAL','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (593,1,0,'ALUAD','RONEL','OPINION','M',2015,'2015-05-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (594,9,0,'ALVARADO','LOMEN ','GALLETA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (595,12,0,'ALVARADO',' VIVIAN','GALLETA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (596,5,0,'AMBROCIO','GLENDA','BAYATIN','F',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (597,12,0,'AMMANG','VIA FAYE','LAGASAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (598,11,0,'ANDAYA',' ROSEL','HACHILES','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (599,8,6,'ANDRES','JENNY MAE','DALAY-ON','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (600,8,6,'ANGALA','MARIA VICTORIA ','FABIA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (601,12,0,'ANNAGUEY','VEA LYKA','BASABAS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (602,8,6,'ANTONIO','RONNIEL','MOLINA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (603,14,0,'APACQUED',' NOVIE ANN','DIPAYSA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (604,1,0,'APOLONIO','MARIENEL','GARIDAN','F',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (605,4,0,'AQUINO','DEBIELYN ','BANDIOAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (606,4,0,'ARCEGA','ELLAINE LEWEE ','SUYAT','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (607,8,5,'ARELLANO','HAROLD','TUBAÑA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (608,13,0,'AROLA','DIVINE GRACE','ANGOAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (609,5,0,'ARRE','JERICK','PAGULLAY','M',2015,'2015-05-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (610,5,0,'ASPA','MHEDELYN','COLCOLEN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (611,8,5,'ATON','PATRICIA MAE','BATIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (612,14,0,'AYSON','MARIFE','ESTIPULAR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (613,5,0,'AZUR','JULIE ANN','RIGOR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (614,6,7,'BAGAOI','JAYSON KRISTIAN','PASCUA','M',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (615,1,0,'BAGNET','DONNA','GAPAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (616,4,0,'BALACDAY','GRACE ','BULALAT','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (617,15,1,'BALAO-AS','JEE-AR ','FERNANDEZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (618,5,0,'BALBIN','MYRNA','HAPALLA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (619,9,0,'BALBIN','ANALYN','LISING','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (620,11,0,'BALBIN','CLARISSS ','PAGULLAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (621,15,1,'BALLOCANAG','APRIL JOY ','ANTOLIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (622,1,0,'BALLOGING','MARICEL ','NICOLAS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (623,8,5,'BALUYOT','ALMIE GRACE','GAGARIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (624,15,8,'BANAO','JIM ','UGALE','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (625,5,0,'BANASAN','RIALYN','OMAOENG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (626,12,0,'BANSIYEG','MARIA ANA','ALDAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (627,14,0,'BANTOR','LUZ MARIE ALMA','SIERRA','F',2015,'2015-05-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (628,8,6,'BAO-INGAN','EVA','TEJANO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (629,6,2,'BARBER','NILDA ','HAPALLA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (630,12,0,'BARIT','MAY ANN','ACOSTA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (631,13,0,'BARNACHEA,','KENELYN ','BALLESTEROS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (632,6,3,'BARRETO','JEFFREY','CARRANZA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (633,14,0,'BARROGA','MA. HERMINIA','VALDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (634,5,0,'BARTOLAY','CHARITY MAE ','MANZANO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (635,5,0,'BATAO-EY','RICHELLE','DAWI','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (636,6,1,'BAUTISTA','MA. ROBELLE ','PAPA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (637,8,5,'BELLO','ALESSANDRA','ANDAQUIG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (638,8,6,'BERSANO','ALLAN','GALLEN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (639,6,7,'BIDES','MARIA LOURDES','RAMOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (640,8,6,'BILOG','JEFFREY','ESTELERO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (641,6,4,'BINTOR',' JIMMALYN ','ONGAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (642,8,6,'BISMONTE','STEFFANY','RAGUNTON','',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (643,5,0,'BITIBIT','MOLITA','CAM-ANI','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (644,6,1,'BITONGAN, ','JUNELYN ','TIW-ADAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (645,5,0,'BONGOLAN',' JOHN ARIES','DELA CRUZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (646,1,0,'BRIOSO','GENELOYD','BERSAMINA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (647,4,0,'BUENAVISTA','ROWENA ','GAO-GAO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (648,15,1,'BUGARIN','JULIUS ','DONGAWEN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (649,9,0,'BUGARIN','DIANA KAREN','BOLIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (650,6,1,'BUGASTO, ',' MIRASOL ','DOMINGO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (651,6,3,'BUQUING','CHRISTY ','UMIPIG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (652,8,6,'BURGONIO','DARYL NATHANIEL','JIMENEZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (653,1,0,'BUSELEY','KEVIN ','ANGEDAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (654,11,0,'CABASAL','JENNIFER','CANLAS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (655,12,0,'CABAYA','JUCEL','MANIBLA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (656,13,0,'CABBAB','JOY','CORTEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (657,6,3,'CABERO, ',' HUNNY BOY ','TEJADA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (658,12,0,'CABRALES ','GHIRLY','VALDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (659,5,0,'CABRERA','KRISTINE JOY','MORENO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (660,8,5,'CABUEÑAS','ARCHIE','GABATINO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (661,15,1,'CABUS','JEROME ','NACORDA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (662,4,0,'CACERES','JUSTIN ','DIGA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (663,13,0,'CACHO','GRETEL MARIE','APACQUED','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (664,9,0,'CADAPAN','LYZA','TOQUERO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (665,8,6,'CADONGONAN','SUNDAY BOY','DAGUSEN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (666,4,0,'CALANNO',' JOHN NIKKO ','ACOSTA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (667,5,0,'CALATAY','RONALYN','','F',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (668,8,6,'CALINDAS','CATHERINE','GANAPIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (669,1,0,'CALIP','HAZEL FAITH','DONATO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (670,1,0,'CANAOAY','ROYCES MAY ','CABANGCALA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (671,13,0,'CANAOAY','LESLYN ABIGAIL','DOLORMENTE','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (672,8,5,'CAÑERO','CHARIZE JOY','RAIZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (673,8,5,'CAÑERO','JESSA ','GONZALO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (674,8,5,'CANONIZADO','JASMIN JOY ','DREZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (675,8,5,'CARBO','BRYAN','ESPAÑOLA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (676,12,0,'CARBO','JONALYN','ESPAÑOLA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (677,8,5,'CARDONA','JESSEL MAE','LABERINTO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (678,12,0,'CARREON','KATRINA','VALDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (679,5,0,'CARTILLA','CHARACE','SUMBAD','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (680,4,0,'CARTILLA','KELVIN LOLLARD ','LAYAO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (681,13,0,'CASTILLO','LIZEL','GANDALERA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (682,14,0,'CASTRO','MA. THERESA','JOAQUIN','F',2015,'2015-05-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (683,6,3,'CASUGA','JEROME ','PAGADUAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (684,11,0,'CHINCHO','JUDY','DE GUZMAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (685,8,5,'CHUA','DEO ANTHONY','OROPESA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (686,1,0,'CIRILO','ELOISA ','BALBIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (687,5,0,'CONSEBIDO',' NIKKI ','SELIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (688,6,4,'CORDOVA','JANICE ','GALUS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (689,8,6,'CORDOVA',' JAYSON ','GALIMA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (690,8,5,'CORONACION ','MERYL ANGEL','CORTADO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (691,5,0,'CORPUZ','MARY JEAN','MINA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (692,8,6,'CORPUZ','DONABEL ','VALDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (693,8,6,'CORPUZ','RUSELL','VALDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (694,9,0,'CORTADO','ANGELICA ','','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (695,9,0,'CORTADO','MARY JOY ','GALDONES','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (696,9,0,'CORTADO.','JOANA MARIE','AGULLANA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (697,5,0,'CORTEZ','JANET','GABATIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (698,5,0,'CORTEZ','RACHELLE','SOLIVEN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (699,8,6,'CORTEZ','AL JEXTER','ROME','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (700,9,0,'CORTEZ','JOMAR ','TABUTOL','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (701,9,0,'CORTEZ','RUBIE','LABANAR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (702,12,0,'CORTEZ','FELICISIMA','CIERVO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (703,11,0,'CORTEZ JR.','JIMMY','MECOS','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (704,5,0,'COSME',' ARLYN','DULAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (705,12,0,'COSTELO','KRISTINE','','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (706,8,6,'CUDIAMAT','AIKO ','ARIONA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (707,12,0,'CUDIAMAT','JESSABEL','CORTEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (708,12,0,'CUDIAMAT','RACHELLE ','PASCUA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (709,15,1,'CUELLO','JAYSON ','BONA CRUZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (710,12,0,'CUENTA','MOISES','ACOSTA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (711,4,0,'CULAPIT','GOMER ','PASCUA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (712,12,0,'CUSTODIO','CAMILLE ','GADINGAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (713,1,0,'DAGSI','LEO CEASAR ','TUMACDANG','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (714,9,0,'DALIDA','JENNIFER','FLOMAR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (715,6,1,'DALILIS','FREDDIE ','UBUAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (716,8,5,'DALIT','RODOLFO ','JAVAR','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (717,14,0,'DALLIGOS','RUSHEL','PATINDO','F',2015,'2015-05-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (718,1,0,'DALMACIO','JING-JING ','BAYBAYAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (719,15,8,'DALUS','JENNIFER ','SID-AY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (720,14,0,'DALUS','ROSANNA','SID-AY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (721,12,0,'DANAO ','RONALYN','CATUBAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (722,6,2,'DAO-GAS',' ALPHA ','SALAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (723,6,7,'DAPIAOEN',' RONALYN ','MUECA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (724,6,2,'DAPIOSEN','EUGENE ','BANZA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (725,8,6,'DE GUZMAN',' RICA ','MALAGA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (726,12,0,'DE GUZMAN','LETECIA','','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (727,6,7,'DE JESUS','KARINA ','GABOR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (728,1,0,'DECANO','ALLYSSA ','JORNACION','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (729,5,0,'DEL ROSARIO','CRISTENE','ALCANTARA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (730,8,6,'DELA CRUZ','REDENTOR JR.','MANZANO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (731,9,0,'DELA CRUZ','KATHREEN','RAMOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (732,11,0,'DELADIA','RENALYN ','CARBONEL','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (733,5,0,'DELIZO','LEELETH','CORTEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (734,12,0,'DELOS REYES','MAE-ANN ','DOMINGO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (735,5,0,'DIANA','LOYD ANGELO','MAKIRAMDAM','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (736,14,0,'DILLA, MA','MA. EMERALD','LARROZA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (737,1,0,'DIOAG','HENIBOY ','BERTO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (738,1,0,'DIPAYSA','ALEXON ','KEYAW','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (739,15,8,'DIVINA','CRISTOPHER ','BAYON','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (740,6,1,'DOLLIENTE.',' JULINA','DIWAYAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (741,11,0,'DOLORMENTE','GENELYN','BOBILES','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (742,5,0,'DOMANAS','MARY JANE','BAUTISTA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (743,13,0,'DOMINGO','RIZA FE','BRAGIL','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (744,9,0,'DUGA','KAREN ANN','REAL','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (745,6,4,'DUKILING','HAY-LYN','DAGYAN','F',2015,'2015-05-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (746,14,0,'DUMAOA','EAMJOY','MATUQUE','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (747,8,6,'ELEFANTE','MARICEL ','SOTELO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (748,14,0,'ELIZARDE','CRISEL','CARSOLA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (749,12,0,'EMPABIDO','MYLA GRACE','FONTILAR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (750,1,0,'ENCARNACION','MARK ANTHONY ','MARTINEZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (751,8,5,'ERODA','ELLENCEL','SOBREPENA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (752,15,8,'ESCALONA','JENETTE ','BARBA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (753,12,0,'ESCALONA','JOY ','BARBA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (754,6,1,'ESCOBAR','KRISTEL ','VILLANUEVA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (755,1,0,'ESCOBAR','ERMELYN ','DARANG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (756,5,0,'ESPANTO','LEVI ROS ','GUIEB','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (757,4,0,'ESPINOSA','OLIVE GRACE ','RAMOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (758,4,0,'ETABAG','LEOTERO ','OKENCE','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (759,1,0,'EWITAN','MARLON ','LAUREANO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (760,1,0,'FABRO','HONORATO JR. ','VILLANROQUE','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (761,1,0,'FABRO','JERWIN ','SUYAT','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (762,8,6,'FABRO','CARLA','HABUNGAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (763,6,7,'FAROL',' ANA MAY ','DE GUZMAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (764,14,0,'FELIPE','BLESSING','LANG-AYAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (765,4,0,'FERNANDEZ','ROMMEL ','HADUCA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (766,4,0,'FERNANDEZ','TEDDY ','MENDOZA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (767,15,8,'FERRER','JAYSON ','GAMBOA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (768,8,6,'FIELDAD','JENNY ROSE ','FELICITAS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (769,13,0,'FLORES','LOUIE','VALDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (770,13,0,'FLORES','ROMILYN','GERDAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (771,4,0,'FONTANILLA','AARON JAMES','DEL ROSARIO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (772,8,6,'FONTANILLA','DONNABELLE','GACUSAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (773,5,0,'FRANCIA','ARGY','FORONDA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (774,5,0,'FRANCIA','EDGARDO JR.','FORONDA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (775,15,1,'FUNG','ROSEMARIE ','OLANIO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (776,8,6,'GABAINE','VALEN PAUL','DAL-UYEN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (777,12,0,'GABATINO','JONA MARIE','MIFA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (778,1,0,'GABAYAN','EDEN ROSE ','GALAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (779,12,0,'GABOR','ROCHELLE','APOLONIO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (780,13,0,'GABUAT','DAYANARA','GACILOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (781,9,0,'GABUYO','ANGELICA','OLERMO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (782,9,0,'GACILAN','MARY CLAIRE ','RIGOR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (783,5,0,'GACILOS','JEFFREY','ABINOJA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (784,12,0,'GACILOS','MARICRIS ','GATMEN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (785,12,0,'GACILOS','SUNSHINE','VALDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (786,6,1,'GACULA',' ANA AMOR ','QUIANIO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (787,8,6,'GACULA','ROXANNE','ACOSTA','F',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (788,13,0,'GACUSAN','JING JING ','GANADO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (789,1,0,'GACUSANA','SWETZIEL MAE ','GACULA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (790,8,6,'GACUSANA','JOICE ANN','JABONILLO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (791,1,0,'GACUTAN','CHARLIE ','GANDER','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (792,14,0,'GADIA','JAN REY','RAFANAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (793,9,0,'GADIA','MICHELLE','RILLORTA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (794,5,0,'GADIANO','ARLENE','LIPORADA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (795,5,0,'GADINGAN','HARISE DAVE','ABALAING','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (796,1,0,'GADINGAN','ARJAY','ASPA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (797,8,6,'GADUT','HAIDEE ','GINES','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (798,8,6,'GAGNO','KAREN ','BALINGIT','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (799,9,0,'GAGNO','CELIA FAYE','AGULAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (800,8,5,'GAGTO','VITEX LEE ','CORPUZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (801,8,6,'GALACIO','MARICEL','DIAMOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (802,8,6,'GALANGCO',' LANIE','ESPINA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (803,15,1,'GALANTA','AILEEN GRACE ','GASMEN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (804,5,0,'GALAO','JOSHUA','VALDEZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (805,8,6,'GALAO','CHERRY MAE ','GABOY','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (806,5,0,'GALAY','EMILY','VALDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (807,6,7,'GALCON',' ESTRELLA ','JIMENEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (808,8,6,'GALDONES','GRACE ','PASCUA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (809,8,6,'GALDONES','SHIELA MARIE','','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (810,8,6,'GALDONEZ','KAYE YVONE','RAFAEL','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (811,13,0,'GALDONEZ','MARY ANN','VALDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (812,6,7,'GALICIA',' SHERLYN ','SIBAL','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (813,14,0,'GALIMA','IMEROS POLYNE','ESCRITOR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (814,15,1,'GALIMBA','JAN MICHAEL','ADVIENTO','M',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (815,8,6,'GALIMBA','JERELLE \"PRECIOUS\"','CALINDAS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (816,8,6,'GALIMBA','RANDY ','EEEEEE','',0,'0000-00-00');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (817,1,0,'GALINATO','JOHNSON ','BAGANO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (818,15,8,'GALINATO','LILIBETH','CANONIZADO','F',2015,'2015-05-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (819,1,0,'GALLANO','JHERIC ','GAMOSO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (820,8,6,'GALLANO','GANIE VHIE ','NAVIGAR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (821,8,6,'GALLANO','MARINEL ','RAMOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (822,1,0,'GALLARDO','JERICK ','ORDOÑEZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (823,8,6,'GALLARDO','JOANNA PAULINE','APELO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (824,5,0,'GALLEBO','BEVERLY','QUIABANG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (825,15,1,'GALLESO','ROSELLE ','ALCANTARA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (826,4,0,'GALLETA','RENZSON','ESPEJO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (827,8,6,'GALLETO','MARICHU ','MOLINA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (828,1,0,'GALOLO','REDENTOR NIÑO ','LAGUITAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (829,4,0,'GALUT','MARIA VICTORIA ','VALDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (830,8,6,'GALUTAN','KAREN','FERNANDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (831,5,0,'GALUTAN ','MYENN','BALLOCANAG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (832,8,5,'GALVEZ','GLYDEL ROSE','SERRANO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (833,13,0,'GALZOTE','APRILYN','VIROS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (834,8,5,'GAMAD','PRECIOUS','RESONABLE','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (835,8,6,'GAMBALA','ABIGAIL ','GARNACE','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (836,5,0,'GAMBOA','PIA','ORPILLA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (837,15,1,'GAMBOA','SHANNEN KRYSLER ','GALIMBA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (838,12,0,'GAMBON','ANGELICA ','GARNACE','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (839,5,0,'GAMER','CARMINA','OLAYVAR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (840,12,0,'GAMERA','JOANNA MARIE','TUZON','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (841,8,6,'GAMOSO','RACHEL ','MANZANO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (842,6,2,'GAMUEDA',' MYLA ','GACILOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (843,1,0,'GAMUEDA','KENNELYN ','CORTEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (844,12,0,'GAMUEDA','BLENDA','PASCUA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (845,13,0,'GANABO','JENNY','','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (846,8,6,'GANACIAS','KRIZZA MARIE','','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (847,6,7,'GANADO',' MARLITO ','GALICIA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (848,8,5,'GANADO',' ROSE-ANN','ABALOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (849,8,5,'GANADO','SHARLENE ','FONTANILLA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (850,12,0,'GANADO','NELLIE ANNE ','TUDAYAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (851,1,0,'GANASE','JOSEFA ','CIANO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (852,5,0,'GANDALERA','DIANA ROSE','RAMOS','F',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (853,12,0,'GANDALERA','CHAREN','JUAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (854,12,0,'GANDALERA','RACHEL ','BAYASAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (855,15,8,'GANDER','PRELYN ','GABON','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (856,8,6,'GANI','MARCON FE','GADIA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (857,13,0,'GANI','MARY ANNE ','GADIA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (858,13,0,'GANI','MARY JOY','GADIA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (859,5,0,'GANNAD','BRYLE JIM BJ','BOROMEO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (860,11,0,'GAOAT','SARAH JANE','JAMANDRA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (861,5,0,'GAPATE','RUBY ANN ','LAPAREJO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (862,4,0,'GAPATE','ROMELY ','VARGAS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (863,5,0,'GARABILES','SHARMAINE','RAGUINDIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (864,15,1,'GARABILES','CLOEY ','LOPEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (865,1,0,'GARABILEZ','JOAN ','BERZABAL','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (866,13,0,'GARABILEZ','MARY JOY ','ORTEGA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (867,5,0,'GARCIA','JULIE','FERNAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (868,5,0,'GARCIA','LOVELY','INIGO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (869,8,0,'GARCIA ','RYAN','','',0,'0000-00-00');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (870,15,8,'GARRIDO','ANGELICA ','CARONAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (871,6,1,'GASALAO','CYNTHIA ','GALIMA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (872,6,7,'GASALAO',' RIZEL ','CRISOLOGO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (873,5,0,'GASSIL','LIGAYA','CAOAING','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (874,9,0,'GAURAN','RAQUEL','CASTRO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (875,15,1,'GAYADAN','ANABEL ','DOMASING','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (876,5,0,'GAYAO','ALMIRAMAE','DAMPULAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (877,11,0,'GERONILLA','JASMINE','BOTIQUIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (878,8,6,'GINES','MICHELLE ','RUIZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (879,5,0,'GIRONELLA','JOHN DENVER','DANGTAYAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (880,15,8,'GIRONELLA','BRIAN EMERSON','','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (881,14,0,'GIRONELLA','JOSEVINA','SOLIVIO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (882,8,6,'GOMEZ','REUVERT ALECKSIS','','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (883,13,0,'GONZALES','KRIZELLE','DAWA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (884,4,0,'GONZALO','ROMMEL ','CORAL','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (885,6,2,'GOROSPE',' ROMA DIVINE ','BAGSINGIT','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (886,8,6,'GRABANZOR','MARK ANGEL','CALINDAS','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (887,8,6,'GRAVILEZ','LESLY JOY ','DE GUZMAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (888,15,1,'GRAY','REYMARK ','GACUSANA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (889,8,6,'GRAY','EDLI ','GRAY','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (890,11,0,'GURTIZA','JUANITA ROSE ','AGAS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (891,1,0,'HABAB','ARIEL ','MANZANO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (892,12,0,'HABAB','MARIA ELLAIN','MANCELLANO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (893,1,0,'HABAN','DICK DOMINICK ','APALLA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (894,6,1,'HABER','HAZEL ','CORNACION','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (895,11,0,'HADLOC','JENNYLYN','CASTRO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (896,1,0,'HADUCA','MARVIN ','BRAZIL','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (897,12,0,'HAFALLA','ESTRELLA ','HAGAD','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (898,1,0,'HAILAR','GEROME ','ALCANTARA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (899,13,0,'HAILAR','CITADEL NINA ','RUIZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (900,14,0,'HALABAS','SAMUEL','FERRER','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (901,13,0,'HALABAS','JESIEL','HAGUNOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (902,4,0,'HALAMAN','GAUDENCIO JR. ','MARIÑAS','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (903,8,6,'HALAMAN','LERMA ','GUERZON','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (904,4,0,'HALLASCON','CHRISTIAN','ZAMBALE','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (905,14,0,'HALLASCON','KLEAFORD','ZAMBALE','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (906,8,6,'HORTIZUELA','MARC ALFRED','CORTEZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (907,1,0,'HUFEMIA','ROWEL ','GABAYAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (908,11,0,'INCIEN','DONNALYN','LAPIC','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (909,1,0,'INIGO','EFRAIM','HAMADON','M',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (910,8,6,'INIGO','KRIZELL','DESPA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (911,12,0,'INIGO','IVY','LLANES','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (912,6,1,'IÑIGO','JENNIFER ','ACACIO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (913,5,0,'IÑIGO','CLAREFEL ','VALDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (914,8,6,'IÑIGO','AILEEN MAE ','INIGO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (915,13,0,'ISIDRO','RICA-ANN','LAGAYA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (916,13,0,'JAINAR','MERRY JEAN ','ASTRERO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (917,12,0,'JALLORINA','ABIGAIL ','FERNANDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (918,5,0,'JANDOC','HEIDY','RAGASA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (919,15,1,'JANDOC','CINDY ','RAGASA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (920,15,1,'JANDOC','EVA ROSE ','LLAGAS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (921,5,0,'JAQUIAS','VANESSA','DELA CRUZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (922,13,0,'JARAMILLA','MARILYN JOY','LAOAGAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (923,11,0,'JARAMILLO','DOMINIQUE','VALLEJO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (924,6,7,'JAVILLONAR',' DEBBIE-AN','','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (925,8,6,'JAVILLONAR','VALERIE','ACOSTA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (926,11,0,'JAVILLONAR','ANA MARIE','','',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (927,5,0,'JAVONITALLA','EDWIN','CRISOLOGO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (928,13,0,'JIMENEZ',' DARLENE','MOLINA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (929,13,0,'JIMENEZ','MARIA MERCEDES','CALDERON','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (930,5,0,'JORNACION','BEVERLY','JACINTO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (931,5,0,'KOHARI','JORIELYN','GACOSCOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (932,9,0,'LABAGNOY','MARY ROSE','FLORES','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (933,6,7,'LACADEN','VIC MERANDA ','BAL-IYANG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (934,12,0,'LADIA','BENELYN ','CABEBE','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (935,8,6,'LANGCAO','RHEYNDEL','GAOGAO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (936,14,0,'LANG-OEY','VERONICA','MANIOANG','F',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (937,8,5,'LANUZA','JONATHAN','COLLADO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (938,5,0,'LAOAT','CRISTINE ','CALLANG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (939,5,0,'LASTIMOSO','JESSA MAE','PANGANIBAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (940,11,0,'LATAC','RHONAMAE','GARCIA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (941,8,6,'LAUNGAYAN','ERWIN ','GALDONEZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (942,8,5,'LAURENTE',' JEAN','ANQUILLANO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (943,5,0,'LAVARO','JULIE','GALIMBA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (944,13,0,'LAYAO','CEYLON ODESSA YSRAEL ','MALABANAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (945,5,0,'LAZAN','ISRAEL','LABAGAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (946,4,0,'LEMI','DENNIS ','PECENDA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (947,5,0,'LEONZON','CYRENE','LAGON','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (948,6,3,'LEUTERIO',' JOSE JR.','ATAD','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (949,6,1,'LIWAN',' RODA MAE ','MORALES','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (950,4,0,'LLANES','JAYSON ','LICUDINE','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (951,11,0,'LLANES','REGGIE ANN','CUSTODIO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (952,12,0,'LLANES','ROSEMARIE','PADILLA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (953,6,7,'LOMITENG ',' RYAN ','SARMIENTO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (954,6,2,'LOZANO','MABELLE ','ALAYON','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (955,14,0,'LOZANO','DONALYN DE','DE CASTRO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (956,8,6,'LOZANO','VANESSA','GACUTAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (957,6,2,'LUCENA',' RUBELYN ','GALANTA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (958,14,0,'LUCENA','ANTEROSE','COSILE','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (959,15,1,'MACABEO','MICHELLE ANNE ','CARRANZA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (960,12,0,'MACKEY','JEZZIL MAY','ESCOBAR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (961,8,6,'MADARANG','PRINCESS GAEZELLE','GALAITES','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (962,5,0,'MADRID','MARICON','BLANDO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (963,1,0,'MADULI','JOHN VIC ','CAMAGAY','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (964,5,0,'MAGABILIN','ANGELA FE','CAPOQUIAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (965,6,7,'MAGLAYA',' LYKA ','CORTEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (966,12,0,'MAGLINAO','EMIELETH JOY','CALLEJO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (967,15,8,'MAMACLAY','ROWENA ','ETRATA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (968,12,0,'MANGANTE','VANNIE','BUGTONG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (969,4,0,'MANGAY-AYAM','MELODY ','FIGER','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (970,4,0,'MANGIBAT','JANEVA','LUMPANGI','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (971,14,0,'MANGUIAT','MARY CLAIRE','PASCUA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (972,5,0,'MANZANO','WINSTON','VALDEZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (973,9,0,'MANZANO','JESSA MAE','ETRATA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (974,13,0,'MANZANO','LEIZEL ','GARINGGO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (975,5,0,'MAQUE','MELODY','GASPAR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (976,4,0,'MARAVILLA','EARVIN PAUL','FERNANDEZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (977,8,6,'MARCELO','MAYBELYN','GAMBOL','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (978,4,0,'MARCOS','CARLO JOHN','ROQUETA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (979,1,0,'MARIÑAS','RICK ','KIAPAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (980,8,6,'MARQUEZ','MARIA FATIMA','VILOG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (981,8,6,'MARTINEZ','INGRID JOYCE','CUAYCONG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (982,8,5,'MARTINEZ','CHARLENE ','RABAYA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (983,8,5,'MARTINEZ','NORA','PRADO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (984,4,0,'MAYEGAYEG','LEOLYN ','BASILIO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (985,1,0,'MAYO','KENG JIN ','ABUTEN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (986,6,4,'MECOS',' ERICNEL ','DIMALANTA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (987,5,0,'MECOS','MARY JOY','RAGMA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (988,12,0,'MEDRANO','ANGIELIC MELODY ','RUIZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (989,8,6,'MOCALENG','REMELYN','SAGORSOR','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (990,12,0,'MOGAEY','LOVELY JOY','BADO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (991,14,0,'MOLINA','JESSICA','BUYET','F',2015,'2015-05-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (992,8,5,'MOLINA','DARYLE','RAIZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (993,8,5,'MOLINA','JESSEL MAE','GADUT','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (994,6,1,'MORADOS',' YSABELLE ','BOY-OAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (995,4,0,'MORALES','MAE ANNE','BUSTILLOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (996,4,0,'MORALES','NATHANIEL ALVIN','MONILLAS','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (997,1,0,'MORENO','ELVIS JOHN ','CONDE','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (998,4,0,'MORIENTE','GENEVA ','GAMUEDA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (999,1,0,'MORIENTE','LEO ','VALDEZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1000,12,0,'MURILLO','JUDY ANN ','PANGAYAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1001,6,7,'NACAR',' MICHAEL ','PUZON','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1002,5,0,'NARVAL','MELODY','DELA ROSA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1003,4,0,'NAUNGAYAN','KRISTOPHER ','GARCELLANO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1004,15,8,'NAUNGAYAN','JEFFREY ','GAGARIN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1005,8,6,'NAUNGAYAN','ANGELICA','RICQUE','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1006,4,0,'NAVARRO','JUSTIN ','CARTA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1007,9,0,'NERAL','NEIL PATRICK','BIÑAS','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1008,8,5,'NGES-O','BRENDALYN','SA-ONG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1009,15,8,'NOTO','JORDAN ','CONTAOI','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1010,1,0,'OPPUS','JEAN ','GAOAT','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1011,8,6,'ORDOÑEZ','MARIELIZ','PINEDA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1012,15,1,'ORPILLA','ELLIS BERNARD','BASILIO','M',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1013,8,5,'OSO','JONATHAN','GACUSANA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1014,13,0,'PACIS','CLAIRE GENESIS ','CORTEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1015,11,0,'PACURSA','MARIMAR','CADASI','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1016,6,1,'PADILLA','MARY GRACE ','RAMOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1017,6,7,'PADRON',' HAIDEE ','ORPILLA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1018,1,0,'PALASIW','HASPE','PANGANIBAN','F',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1019,5,0,'PALOAY','MEDYLYN','DELAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1020,5,0,'PANGANIBAN','MARY CLAIRE','RODRIGUEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1021,8,5,'PANGAYAN','ELYNITA','NUTO','F',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1022,1,0,'PANGGAY','LUTHER ','ENOMIS','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1023,9,0,'PANIT','VANESSA','ISIDRO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1024,5,0,'PANTOJA','KIMBERLY MARTHA','SAGAO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1025,13,0,'PARALLAG','ARJAY ','','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1026,5,0,'PARAYNO','JUN KARLO','REBULDELA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1027,15,8,'PARINGIT','JAY-R ','RABENA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1028,1,0,'PASCUA','MARCOS PAULO','BALLES','M',2016,'2016-03-20');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1029,14,0,'PASCUA','RUTH','MELENCION','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1030,8,6,'PASCUA','MARIFE GRACE','NAUNGAYAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1031,8,5,'PASCUA','GELYN','VALDEZ','F',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1032,11,0,'PASCUA','LOVELY ANNE ','GAMBALA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1033,15,8,'PASCUAL','JANETH JOY ','HILARIO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1034,1,0,'PASION','ARLON','VILLADELGADO','M',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1035,12,0,'PASION','JONALYN','GALDONES','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1036,13,0,'PASSI','JOMELENE','ADEPIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1037,6,2,'PATINIO',' JOVELYN ','GACOSCOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1038,6,1,'PATRAS','DJOWANA ','TINGUEY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1039,4,0,'PE MANUEL','JEROME ','ACANCE','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1040,1,0,'PERALTA','IRENE','ASIONG','F',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1041,8,6,'PERALTA','JULIE ANN','MAMACLAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1042,12,0,'PERALTA','MARIA KRISTINE','ALBUERA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1043,6,2,'PERMEJO ','LHEDDY ANN ','MENDROS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1044,4,0,'PIAMONTE','ALLAN JR.','RAGMA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1045,5,0,'PIMENTEL','JOVIE ANN','HADUCA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1046,9,0,'PIMENTEL','REINA','GRAD','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1047,1,0,'PINEDA','JAY JAY ','OLPINALDO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1048,5,0,'PIO','LIBERTY','ABATEN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1049,15,1,'PITONG','CHESTER JAKE ','HORTIZUELA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1050,8,5,'POLIDES','CHARIE','OANDALI','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1051,1,0,'PRADES','JUDE ERROL ','SAGAY-OC','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1052,8,6,'PRE','SUNSHINE','MOLINA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1053,13,0,'PURUGGANAN','KIMBERLY','GABAYAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1054,13,0,'PURUGGANAN','MARK JASON ','GABAYAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1055,6,3,'QUITEVIS',' DAVID HIROSHI ','AGNAEN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1056,8,5,'RABARA','LIEZEL','BESTON','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1057,1,0,'RACCA','JOHN RAY','ANTONIO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1058,8,6,'RACUYA','AIRA JEAN','OMANTO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1059,12,0,'RAFANAN','ABIGAIL','BUENAVISTA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1060,12,0,'RAGADIO','NICAH','JAVIER','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1061,8,5,'RAGANIT','ELLEN GRACE','LAPAREJO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1062,15,1,'RAGASA','RICHIE ','RABON','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1063,4,0,'RAGUINDIN','JOHN ERIC','','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1064,4,0,'RAGUNTON','ULYSSES ','HALABASO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1065,1,0,'RAGUNTON','JAYRIC','TEJADA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1066,1,0,'RAMIREZ','JOSUA ','PIMENTEL','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1067,8,6,'RAMIREZ','JEAN HAZEL','CCARBONEL','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1068,6,7,'RAMOS','VINCENT ','TORRES','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1069,8,6,'RAMOS','GEORGE','LACADEN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1070,8,6,'RAMOS','MARILYN','LACADEN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1071,8,6,'RAMOS','ZEENA','PASCUA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1072,12,0,'RAMOS','RUSTOM ','HABON','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1073,1,0,'RAPADAS','KEN PIERCE ','CINCO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1074,11,0,'RAPOSA','RUTH GAY','DEFIESTA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1075,6,3,'RAQUIÑO','HANNA VANESSA','','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1076,15,1,'RARAS','ROMMEL ','BENITEZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1077,4,0,'REBELLON','JAKE ','ANAGARAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1078,5,0,'RENDON','JANET','GALANGCO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1079,13,0,'RENDON','GLADYS','GALIMBA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1080,12,0,'RESURRECCION','JOAN ','PAREDES','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1081,8,6,'REYES','AIRA MAE','NERAL','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1082,4,0,'REYNANTE','ARCHIE REY','ATIVO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1083,1,0,'RIÑO','JULIUS ','GACILOS','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1084,13,0,'RIVERA','KRISTABELLE SHANE ','GANABO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1085,8,6,'RIZO','MARICHU','QUARE','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1086,8,6,'RIZO','MICHELLE','QUARE','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1087,14,0,'RODRIGUEZ','EUNICE','OLAJAY','F',2015,'2015-10-13');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1088,8,6,'RODRIGUEZ','JENNY','BUGTONG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1089,11,0,'ROLDAN ','AIZA','TAQUEBAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1090,9,0,'ROQUETA','DEN MAR ','VELASCO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1091,6,7,'ROSARIO',' JOHANNA MARIE ','COL-LONG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1092,13,0,'ROSARIO.','ROMELY ','VELASCO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1093,8,6,'RUIZ','GRACEBETH RHEA','BAGANO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1094,13,0,'RUIZ','ELMA ROSE','PALUNAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1095,8,6,'SABADO',' ALMARIE','VALDEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1096,8,6,'SABADO','CARLO ','SABADO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1097,6,1,'SABALAN','JUDIANN ROSE ','RELAYO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1098,5,0,'SADANG','SHERYHAN','SUYAT','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1099,1,0,'SALES','KASHANE','MANZANO','F',2015,'2015-05-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1100,15,8,'SALIQUET','RENIEL ','FURTON','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1101,6,3,'SANCHEZ','MARCO','','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1102,1,0,'SANCHEZ','JONAS ','LIBLIBEN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1103,15,8,'SANCHEZ','JUSTYN','DAO-GAS','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1104,12,0,'SANCHEZ','PRECILA','','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1105,5,0,'SANTOLAJA','VENICE VALERIE','RAYRAY','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1106,1,0,'SANTOS','JOHN RAY ','BACDAYAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1107,4,0,'SAURA','KAREN ','RESURRECCION','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1108,13,0,'SAYA-SAYA','RONALYN','BAUTISTA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1109,6,1,'SEVILLA',' RALPH NICOLE ','ALAYON','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1110,12,0,'SILVERIO','MIRASOL','ROLDAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1111,11,0,'SOLIVEN','LAILANIE','SISON','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1112,9,0,'SUBLATEN','CHARISMA ','MATICYENG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1113,6,1,'SUCAT','LEVI ','DURO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1114,4,0,'SUGUI','GINALYN ','GASATAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1115,1,0,'SUMAOANG','FRANY JOY ','PANDICO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1116,5,0,'SUNIO','JHON HAY','TURGANO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1117,8,6,'SUNIO','PRIM ROSE','ARGALLON','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1118,8,6,'TABACO','MICHAEL','GADINGAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1119,13,0,'TABANGCURA','JENIFER','ANDRES','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1120,14,0,'TABIGNE','ERICA EVERDELINE','GALAPON','F',2015,'2015-05-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1121,5,0,'TALLAYO','MYRLANIE ','PIANO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1122,15,8,'TALLAYO','GARRY ALDU ','DOMINGO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1123,8,6,'TAMAYO','KRIS ANN','AGLIBUT','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1124,6,2,'TAN',' DANILYN ','ALCODIA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1125,5,0,'TANGLIB','MICHELLE ','GALUARDO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1126,1,0,'TANG-O','JEFFREY ','BALLERA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1127,1,0,'TAOAGUEN','NICK ','AGSUNGOT','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1128,1,0,'TASANI','ANNA MARIE ','ARCONADO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1129,1,0,'TEJADA','MARGARET ','SUBIDO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1130,8,6,'TEJADA','ARJAY','DUQUEÑA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1131,8,5,'TEJADA','MARIA LOURDES','CORPUZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1132,8,6,'TEMPLO','FREDERICK','FABRO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1133,8,6,'TENORIA','MONICA BEMA','AGUNAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1134,1,0,'TENORIO','CINDY WALTER ','BATIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1135,9,0,'TERIO','MELISSA MAE ','FERNANDO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1136,8,6,'TOME','ROMAR WILLIE FRANC','PINGAWAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1137,6,3,'TOQUERO','CECILIO JR. ','RABACA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1138,6,3,'TOQUERO',' GISELLE ','GADINGAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1139,1,0,'TOQUERO','RANDY ','GABOR','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1140,12,0,'TOQUERO','LAARNIE','LOVERIA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1141,14,0,'TOROC','KATHLEEN JEAN','TIRANTE','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1142,8,6,'TORRES','JULIE -ANN','TATSON','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1143,1,0,'TUMACDANG','JOEL ','ORPILLA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1144,8,6,'TUMBAGA','CARL BRYAN','CASTRO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1145,1,0,'UBIAS','REYMOND ','LAOAGAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1146,8,6,'UGALDE','JESSA','GRAGASIN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1147,1,0,'ULPINDO','CHRISTIAN ','TALAMILLO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1148,9,0,'UMIPIG','MARJORIE','ARREOLA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1149,6,4,'VALDEZ','CHRISTIAN PAUL ','CUDIAMAT','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1150,5,0,'VALDEZ','RUDY JR.','TUDAYAN','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1151,5,0,'VALDEZ','CRISTEL JOY','ACOSTA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1152,5,0,'VALDEZ','GERLYN','CORTEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1153,5,0,'VALDEZ','MA. CRISTINA','GALVEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1154,4,0,'VALDEZ','EXERXES ','DALIGDIG','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1155,4,0,'VALDEZ','KIMBERLY ANN','','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1156,1,0,'VALDEZ','JOLINA ','GRANFIL','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1157,1,0,'VALDEZ','JONATHAN ','TUMACDANG','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1158,15,1,'VALDEZ','ANTHONY CARLO ','RABENA','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1159,15,8,'VALDEZ','GIL ','VALDEZ','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1160,8,6,'VALDEZ','ANGELIQUE','VIDAD','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1161,8,6,'VALDEZ','MARY JOY','RAMOS','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1162,9,0,'VALDEZ','BEVERLY','PASIAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1163,11,0,'VALDEZ','ROXAN','FORONDA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1164,13,0,'VALDEZ','ROWENA','PASIAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1165,12,0,'VALDEZ','ESTEFANIA ','DAPIG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1166,12,0,'VALDEZ','SINAMAR','CABANGCALA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1167,12,0,'VALDEZ','EDISON','INIGO','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1168,6,1,'VALERIANO','SHEILA MAE ','FAMA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1169,8,6,'VARELA','GERALLENE','MAYAO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1170,1,0,'VELASCO','IAN ','MAJADAS','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1171,9,0,'VELASCO','MAE','AGUTO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1172,11,0,'VELASCO','MA. ANGELICA','MARQUEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1173,12,0,'VELASCO','JEAN MARIE','AGOTO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1174,15,1,'VICENTE','ANGELICA ','GARRIDO','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1175,6,7,'VIERNES',' VENUS','BALLOCANAG','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1176,8,6,'VILLANUEVA','ROBELI','GASATAN','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1177,8,6,'VILOG, ','VANESSA MAE','','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1178,12,0,'VUELTA','MARY JOY ','','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1179,5,0,'WALLANG','MEGAN','GANDALERA','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1180,6,7,'WIGAN','ROWEL','FIGURACION','M',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1181,8,5,'YUMUL','KATHLEEN KAY','SANCHEZ','F',2016,'2016-03-19');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1182,6,7,'Abad','Mary Luisa ','Europa','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1183,8,6,'Abagguey','Aileen ','Riñopa','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1184,1,0,'Abalos','Michelle Graye','Soriano','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1185,8,6,'Abarra','Jhan Kevin ','Galaites','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1186,8,5,'Aben','Jaline ','Olida','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1187,15,8,'Abrero','Aldous Kahlil','Cortez','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1188,6,7,'Acosta','Ervin ','Ting ','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1189,8,5,'Acosta','Aron ','Ganal','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1190,4,0,'Acutina','Lyle Areane ','Cortez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1191,1,0,'Acyangan','Edjelyn','Ciano','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1192,13,0,'Adona','Jullibe','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1193,12,0,'Adrid','Princess May','Gadia','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1194,6,7,'Agapito','Glecyle ','Pascua ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1195,8,6,'Aglibut','Dexter John','Gacusana','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1196,1,0,'Aguirre','Alexander','Meliton','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1197,5,0,'Agusen','Jhun Dominic ','Estabillo','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1198,1,0,'Alcantara','Catherine','Ugalde','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1199,4,0,'Alipio','Joseph ','Galliente','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1200,13,0,'Alnas','Rio Jade','Biligan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1201,8,6,'Altez','Marinel ','Obrado','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1202,13,0,'Alvarado','Vivian','Galleta','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1203,8,5,'Amate','Ma. Socorro ','Lindero','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1204,13,0,'Ammang','Via Faye','Lagasan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1205,9,0,'Andaya','Rosel','Hachiles','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1206,1,0,'Anobar','John','Alberto','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1207,15,1,'Antalan','Rhona Joy ','Calvo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1208,6,7,'Apangco','Rowelynne Rose ','Ebojo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1209,6,1,'Apusen','Aiza ','Velasco','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1210,6,1,'Aquino','Rochelle ','Barber ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1211,8,6,'Arellano','Germaine ','Lavarez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1212,4,0,'Arizanga','Mayrose ','Aguila','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1213,8,6,'Arquillo','Frency Mae ','Gamboa','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1214,1,0,'Artates','Reylan','Molina','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1215,1,0,'Asaja','Carlos','Moreno','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1216,1,0,'Asistin','Maharlika','Sabalburo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1217,14,0,'Ayate','Risa ','Alforna','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1218,8,6,'Ayco','Kristel Marie ','Delos Santos','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1219,4,0,'Azur','Romalyn ','Manzano','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1220,8,6,'Azur','Mark Jayson ','Gabor','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1221,1,0,'Bacalzo','John Proceso','Domenden','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1222,1,0,'Bagayao','Mary Ann','Iban','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1223,14,0,'Bagayao','Arlene ','Kiapan','F',2016,'2016-06-25');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1224,13,0,'Baguioen','Lara Mae','Sagay','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1225,5,0,'Balanza','Jenny-ann ','Espiritu','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1226,9,0,'Balbin','Clarisss','Pagullay','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1227,6,7,'Bal-ot','Marceline ','Bal-iyang','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1228,5,0,'Baltazar','Sarah Jane ','Bistoyong','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1229,4,0,'Bang-asan','Karen ','Salapio','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1230,1,0,'Bang-asan','Ezekiel','Angala','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1231,14,0,'Baniaga','Zhairyl Joy ','Viernes','F',2016,'2016-06-25');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1232,13,0,'Bansiyeg','Maria Ana','Alday ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1233,11,0,'Baptista','Sonny','Peralta','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1234,1,0,'Baraquio','Noelle','Gamueda','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1235,1,0,'Barba','John Vohn','Mati','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1236,13,0,'Barit','May Ann','Acosta','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1237,6,1,'Barnachea','Jemarie ','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1238,6,3,'Barroga','Caren ','Calderon ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1239,15,8,'Barroga','Kristine','Rabena','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1240,14,0,'Basconcillo','Princess','Ferrer','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1241,9,0,'Batao-ey  ','Ruth May','Aquino','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1242,12,0,'Batin','Jon Allan','Domongdong','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1243,6,7,'Bayud','Jeremy ','Galuga','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1244,5,0,'Belen','Aurea Mila ','Quiming','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1245,6,7,'Benido','Katrina ','Tayaan ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1246,1,0,'Benido','Aryan','Tayaan','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1247,1,0,'Bersalona','Jayselle','Canibe','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1248,4,0,'Biala','Andy ','Novida','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1249,8,6,'Biala','Keith Jay ','Gamose','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1250,12,0,'Biala','Naima','Palma','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1251,1,0,'Bistoyong','Genesis','Habon','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1252,1,0,'Bitongan','Novlee','Roldan','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1253,5,0,'Blogo ','Analyn ','Meneses','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1254,4,0,'Borce','May Ann ','Habon','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1255,14,0,'Bravo','Krisha Mae ','Bravo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1256,5,0,'Buccat','Sheila Marie ','Gamilo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1257,12,0,'Budayao','Reiline Joy','Julian','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1258,1,0,'Bueno','King','Baturi','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1259,4,0,'Bumanglag','Britney ','Mina','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1260,4,0,'Bumatay','Jessica Joy ','Teofilo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1261,5,0,'Bustillos','Nathalia ','Targa','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1262,14,0,'Cabanas','Dolores ','Glorioso','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1263,9,0,'Cabasal','Jennifer','Canlas','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1264,1,0,'Cabasan','Mark Louie','Arre','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1265,1,0,'Cabaya','Francis Ryan','Torres','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1266,13,0,'Cabaya','Jucel','Manibloc','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1267,1,0,'Cabotage','Ana Roses','Antolin','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1268,13,0,'Cabrales','Ghirly','Valdez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1269,11,0,'Cacho','Gretel Marie ','Apacquid','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1270,4,0,'Cadiente','Kervin Jay ','Janerol','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1271,15,8,'Cagdan','Dexter Jhon','Bagbaguen','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1272,8,6,'Cahilig','Chellie Mae ','Gonzalo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1273,5,0,'Caleon','Rose Mean ','Silva','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1274,4,0,'Calicdan','Jomart ','Prestoza','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1275,1,0,'Caliva','Norian','Destor','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1276,5,0,'Calub','Jan Orlynz ','Javonillo','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1277,15,8,'Cam-ani','Susan ','Gumpad','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1278,6,1,'Camiring','Josie ','Eguiab ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1279,1,0,'Canosa','Thalia Mari','Soriano','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1280,1,0,'Capillo','Jaymond','Gallano','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1281,13,0,'Carbo','Jonalyn','Española','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1282,8,5,'Carbonel','Rona Jane ','Cabigon','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1283,13,0,'Carreon','Katrina','Valdez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1284,14,0,'Casinova','Kirna','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1285,8,6,'Castillo','Nico ','Samson','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1286,5,0,'Celestino','Sheila ','Domaoang','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1287,14,0,'Cello','Mergie ','Tom-an','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1288,1,0,'Collado','Mark Anthony','Palomado','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1289,5,0,'Corpuz','Marissa ','Antolin','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1290,9,0,'Corpuz','Jenerose','Genetiano','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1291,14,0,'Corpuz','Rochelle ','Mendez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1292,6,2,'Cortado','Joseph ','','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1293,8,6,'Cortado','Judy Ann ','Agullana','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1294,1,0,'Cortado','Apple May','Eugenio','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1295,6,2,'Cortez','Louiela ','Adelante','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1296,8,5,'Cortez','Rhea ','Alterado','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1297,9,0,'Cortez','Jimmy Jr','Mecos','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1298,1,0,'Cortez','Daiserie','Lucena','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1299,1,0,'Cortez','Gerald','Alterado','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1300,1,0,'Cortez','Mark','Gambala','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1301,13,0,'Cortez','Felicisima','Ciervo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1302,13,0,'Costelo','Kristine','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1303,9,0,'Coyepyep','Franklin John','Sumago','M',2016,'2016-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1304,15,1,'Crisostomo','Mae ','Gamueda','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1305,1,0,'Cruz','Edgie Boy','Tejada','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1306,8,5,'Cudiamat','Angelica ','De asis','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1307,13,0,'Cudiamat','Jessabel','Cortez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1308,13,0,'Cuenta','Moises','Acosta','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1309,13,0,'Custodio','Camille','Gadingan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1310,1,0,'Daligan','Joanna Eve','Siniclang','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1311,4,0,'Dalligos','Dhona Cris ','Patindo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1312,13,0,'Danao','Ronalyne','Catuday','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1313,8,6,'Dangtayan','Lie Marianne ','Galuardo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1314,8,5,'Daniel','Glydel ','Ellorin','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1315,6,7,'Danzalan','Diony Mar ','Mariano ','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1316,1,0,'Dazon','Rizmond','Dongalen','M',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1317,6,7,'De Guzman','Edwin Jr.','Escabusa ','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1318,13,0,'De Guzman','Letecia','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1319,4,0,'De Vera','Vera Mae ','Angel','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1320,14,0,'Defiesta','Jennifer','Tan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1321,8,5,'Degorio','Trecia ','Abaya','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1322,14,0,'Del Castillo','Krisha ','De Gracia','F',2016,'2016-06-25');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1323,6,7,'Del Rosario','April Joy ','Manganaan ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1324,5,0,'Del Rosario',' Precious Jannine ','Galimba','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1325,5,0,'Dela Cruz','Lovely Mae ','Gomintong','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1326,5,0,'Dela Cruz','Rey June ','Bautista','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1327,8,5,'Dela Cruz','Charlie ','Tamayo','M',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1328,1,0,'Dela Cruz','Tirso','Vilonta','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1329,14,0,'Dela Rosa','Randell ','','F',2016,'2016-06-25');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1330,8,6,'Dela Vega','Joel ','Gallardo','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1331,9,0,'Deladia','Renalyn','Carbonel','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1332,13,0,'Delos Reyes','Mae-ann','Domingo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1333,5,0,'Delosreyes','Jenny ','Corpuz','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1334,4,0,'Digao','Princess ','Reyes','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1335,8,5,'Dilla','Ruston ','Budayao','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1336,4,0,'Dimailig','Giselle ','Paderes','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1337,5,0,'Dimalanta','Renalyn ','Laberinto','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1338,5,0,'Divina','Fema ','Reclusado','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1339,1,0,'Diyan','Baltazar','Laoagan','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1340,8,6,'Dizon','Andrea Kaye ','Ancheta','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1341,8,6,'Doce','Glaiza Ruth ','Anno','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1342,6,3,'Doctolero','Adrian ','Cabaluna','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1343,13,0,'Dolormente','Christian','Divina','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1344,4,0,'Domingo','Gillian Belle ','Soliven','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1345,6,7,'Dulay','Emilyn Rose ','Gironella','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1346,14,0,'Dumag','April Joy','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1347,5,0,'Dumagay','Elizabeth ','Banite','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1348,8,6,'Dungalen','Michael ','Raymundo','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1349,8,6,'Duque','Sunshine ','Halos','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1350,14,0,'Duque','Christine Joy ','Basconcillo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1351,13,0,'Duque','Nikki','Martinez','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1352,14,0,'Ebojo','Destinie Joy ','Tamo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1353,1,0,'Elaydo','Mischele','Arceo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1354,8,5,'Elefante','Jayson ','Dela Cruz','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1355,13,0,'Empabido','Myla Grace','Fontilar','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1356,6,3,'Encarnacion','Albert ','Galacio ','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1357,15,8,'Espejo','Jaemee Erleen','Tuzon','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1358,14,0,'Espejo','Mariane ','Dangtayan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1359,8,5,'Espiritu','Calvin Kei ','Villalobos','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1360,1,0,'Espiritu','Bryanlee','Magan-An','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1361,1,0,'Espiritu','Hilario','Magan-An','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1362,1,0,'Espiritu','Mark Edward','Sampayan','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1363,12,0,'Espora ','Meghan Angel','Marquez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1364,8,6,'Esteban','Allysa Jane ','Hailar','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1365,8,6,'Estrada','Mark Christian ','Ortega','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1366,13,0,'Estrada','Vilma ','Gaurino','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1367,8,6,'Etrata','Marco ','Nero','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1368,12,0,'Eugenio','Renante ','Halnas','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1369,6,4,'Evangelista','Ryan ','Abaya','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1370,4,0,'Fababe','Ma. Isabelle ','Palacio','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1371,8,6,'Fabro','Myra ','Haboc','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1372,12,0,'Fabro','Rhozel ','Pascua','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1373,6,7,'Fabros','Jedidah ','Ancheta ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1374,4,0,'Fabros','Joshua ','Ancheta','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1375,1,0,'Fabros','Lezter','Gaoat','M',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1376,8,6,'Felipe','Jhon Carlo ','Raguindin','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1377,1,0,'Felix','Jeron','Bondios','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1378,6,7,'Fernandez','Francis ','Garabiles ','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1379,1,0,'Fernandez','Joanna Mae','Etrata','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1380,4,0,'Flores','Queenie ','Lavaro','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1381,8,6,'Flores','Lovelee ','Alvarez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1382,8,5,'Flores','Jean ','Valdez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1383,1,0,'Flores','Lovely','Anido','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1384,8,6,'Fontanilla','Mary Joy ','borja','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1385,1,0,'Gabaon        ','Nathaniel','Tomas','M',2016,'2016-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1386,8,5,'Gabatilan','Mark Clifford ','Hadloc','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1387,8,6,'Gabatin','Rommel ','Valdez','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1388,13,0,'Gabatino','Jona Marie','Mifa','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1389,8,5,'Gabayan','Shainalyn','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1390,8,6,'Gabertan','Elizabeth Ann ','Makil','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1391,13,0,'Gabor','Rochelle','Apolonio','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1392,8,6,'Gaboy','Gezza ','Valdez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1393,14,0,'Gabrillo','Roselie','Narsisi','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1394,5,0,'Gabuat','Ruben ','Jurado','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1395,8,6,'Gabuat','Ever ','Duro','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1396,11,0,'Gabuat','Dayanara','Gacilos','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1397,6,4,'Gacayan','Sarah Mae ','Moncado','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1398,8,6,'Gacilos','Jelyn ','Tang-o','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1399,8,6,'Gacilos','Joanne ','Galima','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1400,13,0,'Gacilos','Maricris ','Gatmen','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1401,13,0,'Gacilos','Sunshine','Valdez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1402,8,6,'Gacoscos','Camille ','Flores','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1403,1,0,'Gacoscos','Osman Jerico','Dawisan','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1404,15,1,'Gacula','Joyce ','Bad-ay','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1405,6,4,'Gacusan','Paulene','Galimba','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1406,6,3,'Gacusan','Analiza ','Galimba','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1407,5,0,'Gacusan','Alyssa Jane ','Fermin','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1408,9,0,'Gacusan','Jing Jing','Ganado','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1409,1,0,'Gacusan','Ervin','Caratay','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1410,8,6,'Gacutan','Cesar Jr. ','Gasillan','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1411,1,0,'Gadia','Cedrick','Galdones','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1412,5,0,'Gadier ','Jenifer ','Angala','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1413,5,0,'Gadingan','Jhobelle ','Cudiamat','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1414,1,0,'Gadingan','Marvin','Galdones','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1415,14,0,'Gadut','Crisanta ','Valdez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1416,5,0,'Gagarin','Jhun ','Batin','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1417,8,6,'Gagarin','Alleli ','Habab','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1418,8,6,'Gagarin','Reggie ','Del Rosario','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1419,1,0,'Gagarin','Jackson','Bao-Sit','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1420,14,0,'Gagarin','Rachele Ann','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1421,1,0,'Galang','Nel Christian','Pascua','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1422,4,0,'Galangco','Arleen ','Tecson','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1423,1,0,'Galangco','Eden','Estelero','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1424,15,1,'Galario','Allyca V.','Valdez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1425,6,4,'Galcon','Aileen','Vilog','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1426,5,0,'Galcon','Precious Mae ','Madarang','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1427,8,6,'Galcon','Eric ','Jimenez','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1428,8,6,'Galdones','Mario Jr. ','Toquero','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1429,13,0,'Galdones','Vince Audrey','Calibuso','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1430,12,0,'Galdones','Vince Audrey','Calibuso','M',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1431,6,4,'Galicia','Dianne ','Orpilla','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1432,5,0,'Galicia','April Rose ','Ramirez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1433,4,0,'Galicia','Kimberly ','Ramos','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1434,8,6,'Galicia','Jocelle ','Gaoat','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1435,8,6,'Galima','Ernestine ','Cortado','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1436,8,6,'Galima','Karen ','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1437,8,6,'Galima','Niño Arly ','Manzano','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1438,14,0,'Galima','Krizzia Mae ','Sison','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1439,14,0,'Galinato','Beverly','G','F',2016,'2016-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1440,6,3,'Gallano',' Crisha ','Duca','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1441,8,6,'Gallardo','Mary Loise ','Pascua','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1442,8,6,'Gallardo','Raffa Sheana ','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1443,8,5,'Gallardo','Cheaster ','Borje','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1444,1,0,'Galleon','Franklin Jr.','Ang-Oay','M',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1445,8,5,'Galolo','Vanessa ','Gacusan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1446,6,4,'Galoso','Romeo','Gapasin ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1447,14,0,'Galuardo','Dayanara Lou ','Bolin','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1448,13,0,'Galutan','Jenifer','Manzano','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1449,11,0,'Galzote','Aprilyn','Viros','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1450,1,0,'Gambala','John Michael','Pascua','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1451,15,1,'Gamboa','Geselle S.','Sabado','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1452,1,0,'Gamboa','Cherry','Legson','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1453,13,0,'Gambon','Angelica','Garnace','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1454,13,0,'Gamera','Joanna Marie','Tuzon','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1455,13,0,'Gamueda','Renalyn','Del Rosario','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1456,13,0,'Ganado','Nellie Anne','Tudayan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1457,6,2,'Ganapin','Kisses ','Miguel','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1458,1,0,'Gandalera','Sandrew','Medrano','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1459,13,0,'Gandalera','Charen','Juan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1460,13,0,'Gandalera','Rachel','Bayasan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1461,8,6,'Gandol','Gerlyn ','Gacusan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1462,6,7,'Gaoat','Eva','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1463,6,7,'Gaoat','Joy','Tamano ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1464,5,0,'Gaoat','Kassandra ','Apayo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1465,5,0,'Gaoat','Maria Jesusa ','Manzano','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1466,9,0,'Gaoat','Sarah Jane','Jamandra','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1467,1,0,'Gaoat','Clarise','Fernandez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1468,5,0,'Garcia','Elena ','Gagarin','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1469,8,6,'Garcia','Annie Mae ','Fieldad','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1470,15,1,'Garcia','Richelle Anne ','Tichay','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1471,8,6,'Garlejo','Jessica ','Galao','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1472,6,7,'Garnace','Jurant ','Tacuycuy ','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1473,1,0,'Garrido','James Lester','Angdos','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1474,8,6,'Garringo','Denden ','Lorica','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1475,5,0,'Gasalao','Angelito ','Galano','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1476,8,6,'Gasmen','Charle Mayne Cristy ','Cudiamat','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1477,5,0,'Gatmen','Christian ','Galdones','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1478,5,0,'Gawaen','Laila ','Waking','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1479,6,1,'Gaygayed','June ','Agsi','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1480,5,0,'Gayyed','Carmen ','Vicente','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1481,4,0,'Genove','William Mhaverick ','Cortez','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1482,9,0,'Geronilla','Jasmine','Botiquin','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1483,1,0,'Goce','Rheyzen','De Leon','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1484,12,0,'Gomez','Marry Ann','Enaya','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1485,6,1,'Gonzales','Joanne ','Raciles ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1486,11,0,'Gonzales','Krizelle','Dawa','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1487,15,8,'Gonzalo','Relina Claire','Lacaden','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1488,14,0,'Gonzalo','Maricel ','Dona','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1489,5,0,'Gorospe','Pepsi ','Bagsingit','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1490,5,0,'Gotgotao','Lariza ','Pasion','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1491,1,0,'Grabanzor','Princess Mie','Miguel','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1492,5,0,'Granfil ','Jerose ','Bartolay','M',2016,'2016-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1493,8,6,'Gray','Renz Jayson ','Millian','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1494,13,0,'Gray','Chris John','Millian','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1495,8,6,'Guisit','Robert Jun ','Rufino','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1496,9,0,'Gurtiza','Juanita Rose','Agas','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1497,13,0,'Habab','Maria Ellain','Marcellano','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1498,12,0,'Haban','Mary Grace','Viernes','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1499,8,5,'Haber','Melisa Grace ','Sim','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1500,1,0,'Habitchuela','Cindy','Diga','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1501,5,0,'Haboc','Jason ','Pimentel','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1502,12,0,'Haboc','Honey May','Balagtas','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1503,8,5,'Habon','Raymart ','Guillen','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1504,4,0,'Habon ','Rowena ','Racusa','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1505,8,5,'Habungan','Gerald ','Tamayo','M',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1506,8,5,'Hadap','Alli ','Coloma','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1507,6,7,'Hadloc','Maria Andrea ','Galanote','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1508,6,1,'Hadloc','Jay Ar ','Tamo','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1509,9,0,'Hadloc','Jennylyn','Castro','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1510,8,6,'Hadoc','Yvette ','Manzano','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1511,11,0,'Haduca','Rona Jane','Lapitan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1512,12,0,'Haduca','Sharlien','Halunajan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1513,13,0,'Hafalla','Estrella','Hagad','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1514,14,0,'Hagacer','Jolina ','Hagacer','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1515,8,6,'Hagoot','Elizabeth ','Hafalla','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1516,4,0,'Hailar','Maricel ','Palacol','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1517,11,0,'Hailar','Citadel Nina','Ruiz','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1518,5,0,'Halaba','Marilyn ','Lavaro','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1519,4,0,'Halaman','Eric John ','Marinas','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1520,12,0,'Halos','Maricon','Alcayde','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1521,6,3,'Heraña','Mark ','Ragunjan ','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1522,12,0,'Heraña','Karren','Gonzales','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1523,5,0,'Hermosa','Jane Patrice ','Raquepo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1524,5,0,'Hermosura','Julienne ','Hermosa','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1525,8,6,'Hernaez','Christian ','Monzero','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1526,12,0,'Ilagan','Raizel Cyrille','Abarquez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1527,9,0,'Incien','Donnalyn','Lapic','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1528,4,0,'Ingen','Jayson ','De Guzman','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1529,5,0,'Inigo','Ronalyn ','Serrano','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1530,8,6,'Inigo','Kristine ','Despa','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1531,13,0,'Inigo','Ivy','Llanes','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1532,12,0,'Ison','Elaiza May','Alipo-on','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1533,8,6,'Jacob','Mary Joy ','Romero','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1534,4,0,'Jacobe','Rey ','Hadap','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1535,6,1,'Jadormeo','Joyze Anne ','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1536,11,0,'Jainar','Merry Jean','Astrero','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1537,1,0,'Jallorina','Gerald Jet','De Paz','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1538,14,0,'Jallorina','Deborah Jane','Baturi','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1539,4,0,'Jalover','Sarah ','Batin','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1540,8,6,'Janerol','Angela ','Alban','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1541,6,1,'Jaramilla','Daniel ','Nacionales','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1542,9,0,'Jaramillo','Dominique','Vallejo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1543,5,0,'Javillo','Mikee ','Ablan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1544,4,0,'Javillo','Marjorie ','Ablan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1545,1,0,'Javillonar','Mark','Sales','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1546,12,0,'Javonitalla','May Ann','Osorno','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1547,4,0,'Jimenez','Gilowel ','Catbagan','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1548,8,6,'Jimenez','Jayson ','Mina','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1549,8,5,'Jimenez','Glowie ','Catbagan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1550,11,0,'Jimenez','Maria Mercedes','Calderon','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1551,11,0,'Jimenez                  ','Cl Adam','Gines','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1552,14,0,'Joseph','Lerma ','Cordero','F',2016,'2016-06-25');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1553,5,0,'Joven','Emily ','Redaja','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1554,8,6,'Labanar','Daisy ','Solomon','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1555,8,6,'Labanar','Jessa ','Ramirez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1556,4,0,'Labasen','Daniel ','Lacdang','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1557,15,1,'Lab-ongen','Marianne ','Dang-alan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1558,1,0,'Lab-ongen','Cherry Kris','Dang-Alan','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1559,14,0,'Lacaden','Gia Angelie ','Lopez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1560,5,0,'Lamarca','Gracia ','Agaloos','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1561,15,8,'Lames','Mayjean','Gaget','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1562,1,0,'Langcao','Creyshell','Gao Gao','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1563,1,0,'Langiden','Joel Clark II','Bataller','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1564,1,0,'Langoey','Reymond','Bello','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1565,1,0,'Lang-oy','June Michael','Mocaleng','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1566,9,0,'Latac','Rhonamae','Garcia','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1567,1,0,'Lawaguey','Robert','Cosning','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1568,14,0,'Laweng','Analyn ','Cariaso','F',2016,'2016-06-25');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1569,1,0,'Lazaro','Lance Paul','Dumal-Is','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1570,8,6,'Lemi','Bernalyn ','Peconda','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1571,8,6,'Limon','Clint Jasper ','Garcia','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1572,14,0,'Limos','Maria Anjanneth ','labarette','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1573,4,0,'Llanes','Danilo II ','Del Rosario','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1574,4,0,'Llanes','Mary Laureen ','Ramos','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1575,8,6,'Llanes','Lucille ','Cortez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1576,9,0,'Llanes','Reggie Ann','Custodio','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1577,4,0,'Lopez','Wilborn','','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1578,6,3,'Lorenzo','Jodelyn ','Quitevis','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1579,5,0,'Lozano','Rocelina ','Balboa','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1580,4,0,'Lucena','Clarence ','Dela Cruz','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1581,14,0,'Lucena','Rhonalyn ','Olasiman','F',2016,'2016-06-25');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1582,6,1,'Luchina','Pamela Becca ','Suda-i','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1583,4,0,'Lulu','Mary Pop Jean ','Jacildo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1584,8,5,'Lumsod','Anios Anola ','Sibayan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1585,14,0,'Luna','Alyssa Joy ','Simeon','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1586,13,0,'Mackey','Jezzil May','Batao-ey','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1587,8,6,'Madarang','Stephanie ','Tuscano','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1588,1,0,'Madarang','Angelo Mark','Calibuso','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1589,5,0,'Madrid','Maria Kimberlyn ','Rapanut','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1590,13,0,'Maglinao','Emieleth Joy','Callejo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1591,5,0,'Makil','Flave ','Valdez','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1592,8,6,'Makil','Jerry John ','Millian','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1593,8,5,'Makil','Kris Keith ','Bunoan','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1594,1,0,'Managuey','James','Ngallawen','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1595,6,4,'Manganip','Meber ','Macyon','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1596,13,0,'Mangante','Vannie','Bugtong','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1597,8,6,'Mangay-ayam','Rommel ','Dom-ayan','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1598,1,0,'Mangay-ayam','Cheverly','Raquel','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1599,6,7,'Manlapas','Sherrie Lyn ','Justo ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1600,6,4,'Manzano','Rowena','Gamboa','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1601,6,1,'Manzano','Joylyn ','Etrata ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1602,8,6,'Manzano','Arianna Kazandra ','Quidangen','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1603,8,6,'Manzano','Dianne Joy       ','Pre','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1604,8,5,'Manzano','Lea Mae ','Galao','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1605,1,0,'Manzano','Clyde','Belo','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1606,14,0,'Manzano','Monique ','Salacyaw','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1607,11,0,'Manzano','Leizel','Garinggo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1608,5,0,'Maranion','Anna Monica ','Rapada','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1609,8,6,'Marcelo','Daryl Owen             ','','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1610,15,1,'Marcos','Roxanne ','Barawed','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1611,5,0,'Mariano','Nathaniel ','Pickley','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1612,6,7,'Marquez','Luis Anthony ','Aglibot ','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1613,5,0,'Marquez','Maricel ','Llorca','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1614,8,6,'Marquez','Camela ','Llorca','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1615,1,0,'Marquez','Dindi Bryce','Big-Asan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1616,15,8,'Marte','Emera','Baturi','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1617,1,0,'Martin','Edilberto','Ortilla','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1618,8,6,'Martinez','Rayzl ','Baldevicio','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1619,1,0,'Martinez','Carlo','Amiano','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1620,13,0,'Martinez','Maricel ','Millian','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1621,1,0,'Matbagan','Ria Grace','Matoque','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1622,8,5,'Mati','Regina Joy ','Galaites','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1623,6,1,'Matias','Madelaina ','Abaya','F',2016,'2016-07-25');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1624,15,1,'Mationg','Maridel ','Alcantara','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1625,13,0,'Mayores','Romart','','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1626,1,0,'Medrano','Meli Ann','Ruiz','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1627,13,0,'Medrano','Angielic Melody','Ruiz','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1628,8,6,'Mendoza','Christian Rey ','Figer','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1629,8,6,'Meneses','Lorieluz ','Abadayan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1630,6,7,'Molina','Reneboy ','Jimenez','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1631,8,5,'Montellano','Alexander ','Sanchez','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1632,8,6,'Morales','Jordell ','Ballocanag','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1633,1,0,'Moriente','Jonalyn','Valdez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1634,13,0,'Murillo','Judy Ann','Panggayan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1635,5,0,'Naungayan','Karen ','Lacerna','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1636,8,6,'Naungayan','Jademark ','Del Rosario','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1637,5,0,'Navarro','Naicelene ','Valdez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1638,14,0,'Noto','Jennylyn ','Cotaoi','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1639,6,1,'Nuyles','Vanessa ','Ballocanag ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1640,12,0,'Obrero','Kenneth','Dela Cruz','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1641,6,7,'Olbinado','Karyll ','Garnace ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1642,8,6,'Ordoñez','Jannelle ','Cruz','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1643,8,5,'Ordoñez','Mharjoe ','Pineda','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1644,14,0,'Oria','Jezreel Mae ','Galapon','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1645,1,0,'Orio','Aileen','Laureta','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1646,9,0,'Pacursa','Marimar ','Cadis','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1647,1,0,'Padaco','Marie','Bellon','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1648,4,0,'Paddil','Gerry Jr. ','Racusa','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1649,8,5,'Padsing','Lemar ','Libliben','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1650,15,1,'Pagaduan','Margie ','Echalar','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1651,14,0,'Paguia','Marc Lister ','Afalla','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1652,8,6,'Palacio','Joan ','Barreto','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1653,14,0,'Palad','April Joy ','Pendaden','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1654,5,0,'Paloay','Sunshine ','Delan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1655,8,5,'Palulan','Jomelyn ','Daguasi','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1656,8,5,'Panao','Jessebel ','Baguilod','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1657,15,1,'Paringit','Jennyvive ','Barba','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1658,5,0,'Pascua','Fatima Jhay ','Maris','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1659,4,0,'Pascua','Cherry Bell ','Deocaris','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1660,4,0,'Pascua','Sheika Carl ','Bongay','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1661,8,6,'Pascua','Sharmaine ','Santos','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1662,8,5,'Pascua','Alice ','Cortez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1663,8,5,'Pascua','Jocelyn ','Espanto','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1664,8,5,'Pascua','John Rey ','Galomato','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1665,8,5,'Pascua','Kristine Joy','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1666,9,0,'Pascua','Lovely Anne','Gambala','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1667,14,0,'Pascua','Alona ','Molina','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1668,13,0,'Pasion','Jonalyn','Galdones','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1669,11,0,'Passi','Jomelene','Adepin','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1670,1,0,'Paungan','Kerry','Abadayan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1671,13,0,'Peralta','Maria Kristine','Albuera','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1672,13,0,'Permejo ','Lhenylyn','Mendros','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1673,12,0,'Permejo ','Lhenylyn','Mendros','F',2016,'2016-07-25');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1674,8,6,'Pilor','Shayne ','Valdez','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1675,5,0,'Pimentel','Gabriela ','Haboc','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1676,8,6,'Pimentel','Roseda ','Grad','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1677,1,0,'Pimentel','Kathrina','Liberato','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1678,5,0,'Pisawen','Melissa ','Bikesan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1679,6,7,'Polonio','Mery-nol ','Rebuca ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1680,6,3,'Ponce','John William ','Bulalague','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1681,11,0,'Purugganan','Kimberly','Gabayan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1682,1,0,'Quanguey','Leo','Bomogao','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1683,6,4,'Quiabang','Elena','Cadongonan ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1684,12,0,'Quilang','Rhejenn','Luis','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1685,5,0,'Rabago','Jeah ','Acosta','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1686,6,1,'Rabang','Germeline ','Laus','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1687,8,6,'Rabang','Andrew ','Fabros','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1688,5,0,'Rabara','Axcel ','Cabuenas','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1689,8,6,'Racuya','Jalyssa ','Nuesca','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1690,1,0,'Rafanan','Christian','Refuezo','M',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1691,13,0,'Rafanan','Nordy','Escobar','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1692,13,0,'Rafanan','Abigail','Buenaventura','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1693,13,0,'Ragadio','Nicah','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1694,5,0,'Ragasa','Daisy ','Ragadi','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1695,4,0,'Ragasa','Maricel ','Rabbon','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1696,1,0,'Ramirez','Karen','Naungayan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1697,12,0,'Ramirez','Jazlyn','Racca','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1698,5,0,'Ramos','Remalyn ','Abina','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1699,8,6,'Ramos','Glaiza ','Gacusan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1700,13,0,'Ramos','Rustom','Habon','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1701,8,5,'Rapanut','Geraldine ','Raboy','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1702,8,6,'Raquepo','Mark Jherson ','Molina','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1703,6,7,'Raras','Venus ','Torres','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1704,5,0,'Razonable','Aprilene Grace ','Puyales','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1705,14,0,'Rebellon','Clarissa ','Anagaran','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1706,8,5,'Reboca','Jenny Rose ','Acutan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1707,6,7,'Rebollido','Angelo','','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1708,1,0,'Reintegrado','Ronnie','Galangco','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1709,13,0,'Resurreccion','Joan','Paredes','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1710,5,0,'Reyes','Julienne ','Buenavista','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1711,4,0,'Reyes','Randell Seth ','Bennagen','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1712,6,7,'Ricarze','Christian Rey ','Raga','M',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1713,5,0,'Ricarze','April Ann ','Baron','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1714,12,0,'Rigor','Ronnalyn May','Carbonell','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1715,12,0,'Riñen','April Jamie','Marquez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1716,8,6,'Rivera','Aileen ','Camaclang','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1717,8,6,'Rivera','Maria Concepcion ','Calanno','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1718,15,1,'Rivera','Caren ','Divina','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1719,12,0,'Rivera','Reden','Pascua','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1720,9,0,'Roldan','Aiza','Taqueban ','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1721,15,1,'Roldan','Geraldine','Cam-ani','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1722,1,0,'Roldan','Resty','Capulong','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1723,8,5,'Rondaris','Kaye ','Soliven','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1724,5,0,'Rongalerios','Cherry Ann ','Bragado','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1725,1,0,'Rosal','Arlene','Sibolboro','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1726,12,0,'Rous','Jennylyn','Rampa','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1727,5,0,'Sabado','Ciara Lou ','Dagullay','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1728,4,0,'Sabado','Christian Julius ','Halagao','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1729,8,5,'Sacayanan','Ma. Lolita Isabel ','Jose','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1730,15,1,'Sagao','Gloria Abegail ','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1731,15,8,'Sagorsor','Joyada','Pamayan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1732,6,2,'Sagun','Joanna ','Misalang ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1733,8,6,'Saliquet','Lito Jr. ','Bastian','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1734,5,0,'Sanchez','Rea ','Saavedra','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1735,8,6,'Sanchez','Marjorie ','Salvio','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1736,8,6,'Sanchez','Roderei Jan ','Baroma','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1737,13,0,'Sanchez','Precila','Garnace','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1738,6,7,'Santos','Perla Elizabeth ','Haban ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1739,5,0,'Santos ','Shermaine ','Espanto','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1740,8,6,'Saripada','Abdul Hamid ','Dayday','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1741,5,0,'Sarmiento','Elizabeth ','Abluyan','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1742,8,5,'Sebastian','Mary Joy ','Leonardo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1743,4,0,'Serreno','Gemary ','Cortez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1744,5,0,'Servillo','Alpha ','Ganiban','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1745,9,0,'Sipin','Randolph Jr.','Ragasa','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1746,13,0,'Sipin','Shen-lyn','Delos Santos','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1747,1,0,'Socias','Ronnell Wesley','Soliven','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1748,9,0,'Soliven','Lailanie','Sison','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1749,15,1,'Soliven','Rowel ','Toquero','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1750,14,0,'Soriao','Rhea Mae ','Tusi','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1751,1,0,'Sotio','Rose','Icio','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1752,1,0,'Suarez','Aljon','Marcos','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1753,8,5,'Sudario','Micah ','Tabayay','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1754,15,8,'Sumakiab','May ','Gadigad','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1755,4,0,'Sunga','Jasmin ','Aglibut','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1756,8,6,'Supnet','Gerald ','Cordova','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1757,8,6,'Suyat','Jayson ','Dagusen','M',2016,'2016-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1758,9,0,'Tabangcura','Jenifer ','Andres','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1759,5,0,'Tabon','Robilyn ','Cultong','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1760,6,4,'Tacderas','Juan Diego','','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1761,6,1,'Tadeja','Julie Anne ','Cadag ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1762,5,0,'Tajonera','Christine Joy ','Licsi','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1763,12,0,'Tamayo','Rhealyn','Eupalao','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1764,14,0,'Taqueban','Maricar ','Acosta','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1765,15,8,'Tasani','Jude Ann','Ancornado','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1766,8,5,'Taylan','Von Marelle ','Ramirez','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1767,1,0,'Taylan','Vizwanathan','Ramirez','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1768,1,0,'Tejada','Gemarie','Ellorin','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1769,13,0,'Tejada','Mia Hanieneth','Velasco','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1770,13,0,'Tejada','Ronalyn','Almoza','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1771,4,0,'Tenorio','Lady Walter ','Batin','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1772,4,0,'Teo','Ron Alphonse ','Nartatez','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1773,8,6,'Teves','Abigail ','Benitez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1774,4,0,'Tobias','Queen Ann ','Abliter','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1775,15,8,'Tomacdang','George Bong','Langoey','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1776,8,6,'Tome','Precious Fritz ','Pingawan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1777,8,6,'Toquero','Ma. Teresa ','Valdez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1778,1,0,'Toquero','Rodel','Valdez','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1779,1,0,'Toquero','Nemar','Bicasan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1780,13,0,'Toquero','Laarnie','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1781,8,6,'Torres','Regina ','Garnace','F',2016,'2016-05-16');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1782,5,0,'Tumacdang ','Ritchelle Kae ','','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1783,6,7,'Tupasi',' Maria Leann Maye ','Feraldo ','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1784,8,6,'Tupasi','Judy Ann ','Gacilos','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1785,8,5,'Tutica','Mark Alfred ','Palacol','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1786,8,6,'Uy','Vivian','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1787,5,0,'Valdez','Rowena Mae ','Padillon','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1788,4,0,'Valdez','Krizaldy ','Cu','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1789,8,6,'Valdez','Arllaine ','Mallari','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1790,8,6,'Valdez','Arnelita ','Galinato','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1791,8,6,'Valdez','May Flor ','Galleta','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1792,8,6,'Valdez','Michael Dennis ','Gadiaza','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1793,8,6,'Valdez','Ryan ','Galinato','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1794,8,5,'Valdez','Charlie ','Taoagoen','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1795,9,0,'Valdez','Roxan ','Foronda','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1796,14,0,'Valdez','Fatima ','Pacis','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1797,11,0,'Valdez','Rowena','Pasian','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1798,13,0,'Valdez','Estefania','Dapig','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1799,13,0,'Valdez','Sinamar','Cabangcala','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1800,13,0,'Valdez','Edison','Inigo','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1801,8,6,'Valera','Jessa Mae ','Agullana','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1802,8,6,'Velasco','Marianne Joy ','Flores','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1803,9,0,'Velasco','Ma. Angelica','Marquez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1804,13,0,'Velasco','Beverly','Marquez','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1805,13,0,'Velasco','Jean Marie','Aguto','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1806,5,0,'Ventura','Kreenah Gay ','Tiw-adan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1807,8,6,'Viernes','Jay-ar ','Galela','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1808,8,5,'Viernes','Geraldine ','Buc-ong','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1809,15,8,'Viernes','Melvin','Carganilla','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1810,8,5,'Vilar','Joanne ','Tamayo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1811,15,8,'Villalobos','Mary Ann ','Agaloos','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1812,6,3,'Villanueva','Zj','Gadut ','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1813,8,5,'Villanueva','Jamaica ','Tanglib','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1814,5,0,'Vilog','Mariele ','Haban','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1815,8,6,'Vilog','Jaramie ','Astrero','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1816,12,0,'Vilog','Princess Mae','Haduca','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1817,12,0,'Vilog  ','Gellie An','','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1818,1,0,'Vilway','Jezra','Nacion','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1819,5,0,'Virtud','Christine Joy ','Cablay','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1820,5,0,'Vivencio','Pamela Diane ','Gambon','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1821,13,0,'Vuelta','Mary Joy','Ramirez','F',2016,'2016-12-11');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1822,1,0,'Wagayen','Jayson','Colbengan','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1823,8,5,'Yague','Rolando  Jr.','Palacol','M',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1824,5,0,'Yulo','Jonalyn ','Gacayan','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1825,12,0,'Zareno','Khristine Pamela','Feraldo','F',2017,'2017-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1826,1,0,'Abando','Keith Cruz','Cruz','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1827,4,0,'Abaño','Catherine','Bravo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1828,15,1,'Abaya','Franklin','Peralta','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1829,6,2,'Ablan','Jacquelyn ','Fajardo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1830,4,0,'Abon','Sharmaine ','Abad','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1831,2,0,'Abrero','Ma. Katrina Frances ','Cortez ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1832,4,0,'Abria','Carlito','Galdones','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1833,3,0,'Acerden','Bernabe','Racuya','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1834,4,0,'Acosta','Dionisio Jr.','Molina','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1835,4,0,'Acosta','Myra','Agader','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1836,2,0,'Agapito','Glenford ','Pascua','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1837,5,0,'Aglibut',' Mart Ryan ','Omega ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1838,15,1,'Agpawa','Elaine Grace','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1839,6,7,'Agrisola','Alex Jr.','Virocel','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1840,15,1,'Agrisola','Jennara','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1841,15,1,'Aguas','Marlou','Pasamonte','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1842,15,1,'Aguas','Micah ','Pasamonte','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1843,4,0,'Aguiran','Zander','Bennagen','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1844,1,0,'Aguirre','Galahad Percival ','Perez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1845,14,0,'Agustin','Janina Rose ','Reymundo ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1846,5,0,'Alay-ay','Joan ','Habon ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1847,5,0,'Alay-ay','Mark Jordan ','Pang-ot ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1848,6,3,'Alcaide','Trisha Lyn ','Manzano','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1849,4,0,'Alcantara','Jinky','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1850,8,5,'Alcantara','Glydel ','Teofilo ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1851,14,0,'Alcantara','Angelica ','Valdez ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1852,8,5,'Alejandrino','Dee Scott ','Balaque ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1853,15,1,'Almazan','Reychel ','Garcia','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1854,4,0,'Almoite','Tee Jay','R','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1855,11,0,'Alnas ',' Rio Jade ','Biligan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1856,3,0,'Altura','Vivian Rose','Galleta','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1857,9,0,'Alvarado','Vivian ','Galleta','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1858,8,5,'Alviento','Precious ','Hamor ','F',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1859,11,0,'Ammang',' Via Faye ','Lagasan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1860,1,0,'Andal','Arnold ','Fontanilla','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1861,1,0,'Andallo','Jeffrey','Molina','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1862,4,0,'Anga-Angan','Richard','Riton','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1863,15,1,'Anga-angan','Harlene','Dela Cruz','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1864,4,0,'Angala','Diana','Moreno','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1865,4,0,'Angala','Nicole Grace','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1866,6,2,'Angala','Noel ','Fabia ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1867,1,0,'Annaguey','Ferdie Gregg','Garcia','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1868,6,1,'Antalan','Hazel ','Gadingan','F',2017,'2017-07-24');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1869,8,5,'Antolin','Benedick','Directo ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1870,6,3,'Antonio','Hazel Mae ','Gravilez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1871,4,0,'Aplaca','John Mhark','Alforte','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1872,6,7,'Apostol','Julius ','Fresnido','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1873,3,0,'Aquino','Jeramae','Jecosalem','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1874,12,0,'Aquino','Noraine ','Cabello','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1875,12,0,'Arca',' Ronalyn','Bocboc','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1876,15,1,'Arcega','Leo Roman','Tan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1877,6,1,'Arquero','Marjorie','Collado','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1878,8,6,'Arreola','Lovely Christine ','Dato','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1879,4,0,'Asaja','Claudia','Moreno','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1880,4,0,'Astocia','Jolly Ann','Figuracion','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1881,8,6,'Astrero',' Mary May ','Panilo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1882,1,0,'Astrero','Edward ','Valdez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1883,12,0,'Asuela','Jovy Lyn ','Semilla','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1884,15,1,'Azur','Jenica ','Polvorosa','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1885,12,0,'Baclao',' Elsie ','Heraña','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1886,1,0,'Bacuteng','Eldominic','Dabacos','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1887,2,0,'Bagaoi','Jordan ','Pascua ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1888,4,0,'Bagnet','Aime ','Gapay','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1889,6,1,'Bagsangi','Evelyn ','Galutera','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1890,9,0,'Baguioen','Lara Mae ','Sagay','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1891,1,0,'Baguyos','Bryan Joe ','Waay','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1892,5,0,'Balan-eg','Kizzy Jane ','Ligligen ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1893,1,0,'Balao','Rafael','Calipara','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1894,4,0,'Balaqui ','Isagani Jr.','Jamandre','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1895,12,0,'Balawen','Novimar ','Bellon','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1896,8,6,'Balbin',' Mia Precious ','Diaken','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1897,14,0,'Balingoay','Raquel ','Antonio ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1898,1,0,'Baling-oay','Jim','Pordido','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1899,6,2,'Bal-iyang','Shirley ','Balbin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1900,4,0,'Ballocanag','Joe-marie','Agbayani','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1901,4,0,'Ballocanag','Michael','Ramos','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1902,15,1,'Ballocanag','Abner','Saludar','M',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1903,1,0,'Ballocanag','Haidee','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1904,6,1,'Ballocanag ','Janine Mariel','Ramirez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1905,15,1,'Ballocanag.','Vherna May','Gagarin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1906,1,0,'Banasan','Jayson','Joaquin','M',2017,'2017-07-24');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1907,5,0,'Bang-asan','Joy ','Gamboa ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1908,1,0,'Bang-asan','Rheymen','Col-long','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1909,6,4,'Banza','Orlan ','Hilario','',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1910,9,0,'Baptista','Sonny ','Peralta','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1911,3,0,'Bargas','Clifford David','Levina','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1912,6,3,'Barit','Carmela ','Habon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1913,8,6,'Barit','Nichol ','Jacobe','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1914,15,1,'Barroga','Pamela Jane ','Rabena','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1915,11,0,'Batin','Jon Allan ','Domongdong','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1916,2,0,'Baylon','April Anne ','Alcantara ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1917,4,0,'Belen','Bryan','Buaken','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1918,8,6,'Beleno','Therrie May ','Tomas','F',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1919,12,0,'Bernales','Angelita','Fabro','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1920,14,0,'Bey-as','Vangelyn ','Polides ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1921,3,0,'Binas-o','Andrea Mae','Cabalar','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1922,1,0,'Binong','Ebenezer ','Garcia','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1923,1,0,'Blance','Alvin ','Reyes','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1924,12,0,'Bolin','Beverly ','Lunogan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1925,4,0,'Brillo','Darrel','Garnace','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1926,12,0,'Briones','Rhealyn ','Lucido','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1927,13,0,'Budayao','Reiline Joy','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1928,1,0,'Buenafe','Leemar Churls','Pascua','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1929,4,0,'Buenavista','Johnrick ','Ilacas','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1930,1,0,'Buenavista','Carl Janree','Patnaan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1931,1,0,'Buenavista','Karl Jerick','De Guzman','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1932,8,6,'Bueno','Paul Benito M.','Martinez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1933,15,1,'Buera','Kerene','Sunio','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1934,8,6,'Buquing','Renalyn ','Lat','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1935,14,0,'Cabacungan','Jennilha ','Teredanio ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1936,11,0,'Cabaya','Jucel M','Manibloc','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1937,1,0,'Cabunoc','Miguel Anthony','Corrales','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1938,1,0,'Cadaoas','Brandon','Doña','M',2017,'2017-07-24');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1939,4,0,'Cala','Aileen','Serrano','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1940,3,0,'Calindas','Maria Jennica ','Araquin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1941,4,0,'Calixto','Roegin','Garayan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1942,5,0,'Camero','Jennifer ','Garnace ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1943,6,1,'Campilla','Marinel ','Ecolin','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1944,4,0,'Canonizado','Judea Ann','Drez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1945,4,0,'Caoaing','Jesamiel','Balikid','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1946,11,0,'Carbo','Jonalyn ','Española','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1947,8,5,'Carbonel','Stephanie','Pascual ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1948,4,0,'Cariño','Hilda Grace','Dangtayan.','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1949,11,0,'Carreon','Katrina ','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1950,12,0,'Carreon','Keila Maris','Paneda','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1951,3,0,'Casamina','Raschell','Tejada','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1952,5,0,'Caslangen',' Mae Ann ','Cobre ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1953,1,0,'Caslangen','Loida','Dalgo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1954,9,0,'Castañeda','Diana Rose ','Gascon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1955,4,0,'Castillo','Carmela Mae','Sanchez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1956,6,1,'Castillo','Czarina ','Aba','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1957,3,0,'Castillo','Hazelyn','Castillo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1958,1,0,'Catuday','Wency','Del Rosario','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1959,6,7,'Cavanes','Tricia ','Viduya ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1960,4,0,'Cenezan','Sairamia','Fabros','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1961,4,0,'Choy-awen','Mark Jason','Garnace','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1962,1,0,'Chua ','Eddie Mar ','Elles','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1963,1,0,'Colina','Jefferson','Requizo','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1964,4,0,'Comedian','Jasmin Grace','Dalilis','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1965,6,2,'Compra ','Miechille','Duli ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1966,14,0,'Conde','Mariel Klarizze ','Hermosa ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1967,8,6,'Contaoi','Aljessa ','Cudiamat','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1968,4,0,'Cordial','Christian','Andrade','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1969,3,0,'Cordova','Carlo','Jimenez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1970,1,0,'Cordova','Willy Jr.','Cuenca','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1971,4,0,'Cortado','Rose Ann ','Reyes','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1972,8,6,'Cortado','Jenylyn ','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1973,8,5,'Cortado','Jason ','Galinato ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1974,15,1,'Cortez','Dexter','Lavaro','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1975,9,0,'Cortez','Felicisima ','Ciervo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1976,6,2,'Cortez ','Almira ','Valdez ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1977,5,0,'Cosme','Manilyn ','Dulay ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1978,12,0,'Cosning',' Erlyn ','Carillo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1979,11,0,'Costelo','Kristine','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1980,5,0,'Cuaresma','Desiree ','Limon ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1981,14,0,'Cuaresma','Giselle ','Lapeña ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1982,4,0,'Cudiamat','Rommel Jr.','Javonitalla','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1983,5,0,'Cudiamat','Arnold ','Basilio ','M',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1984,8,6,'Cudiamat','Lhe-ann ','Viernes ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1985,11,0,'Cuenta','Moises','Acosta','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1986,8,6,'Cunanan','Sharon Joie','Gadut','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1987,6,7,'Custodio','Jocelyn ','Ambatang','F',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1988,11,0,'Custodio','Camille ','Gadingan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1989,8,5,'Dagusen',' Rogelaine','Cabarlo ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1990,14,0,'Daligdig','Janeth ','Lingbaoan ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1991,11,0,'Danao ','Ronalyne ','Catubay','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1992,14,0,'Daoa','Merry Joy ','Guidawen ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1993,1,0,'Dappit','John Syn','Toquero','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1994,15,1,'Dario','Norasol','Gari','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1995,8,5,'Dario  ','Mark Zeius','Arola ','M',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1996,4,0,'Dasmariñas','Joan Marie','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1997,4,0,'Dayrit','Shadilyn','Olermo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1998,8,5,'De Leon','Bryan Lester ','Balles','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (1999,14,0,'Defiesta','Daisy ','Retreta ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2000,4,0,'Del Rosario','Ivy ','Ballconag','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2001,4,0,'Del Rosario','Madelyn','Demetrio','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2002,6,7,'Dela Cruz','Alexis ','Manzano','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2003,6,2,'Dela Cruz','Carlo ','Guerero','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2004,5,0,'Dela Cruz','Jeniva ','Albento ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2005,6,1,'Dela Peña','Nene ','Loberiano','F',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2006,6,7,'Dela Rosa','Mae Ann ','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2007,1,0,'Dela Rosa','Glecie','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2008,11,0,'Delos Reyes','Mae-ann ','Domingo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2009,1,0,'Delos Santos','Teofilo ','Urbanes','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2010,14,0,'Delos Santos','Karen Mae ','Urbanes ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2011,15,1,'Derije','Maybelin','Gaoat','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2012,4,0,'Diga','Rema','Segundo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2013,15,1,'Dimas','Joseph','Danioan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2014,1,0,'Divina','Jonnah May','Pulinday','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2015,8,6,'Dizon','Jinky ','Crisostomo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2016,14,0,'Dolliente','Cathleen Shane ','Bajit ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2017,8,6,'Domingo','Allan ','','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2018,6,7,'Dom-ogen','Vialyn ','Viernes','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2019,6,3,'Doria','Rodellen ','Alban ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2020,4,0,'Doroni','Bea Rose','Ruiz','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2021,6,7,'Ducusin','Sonnette ','Bolin','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2022,2,0,'Dumag','Wesley ','Calibuso ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2023,6,1,'Dumal-is','Gwen Amore','Castillo','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2024,4,0,'Dumsing','Mark Harvey','Julio','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2025,4,0,'Dumsing','Vea ann','Alimoot','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2026,5,0,'Dykee','Decely Joyce ','Morandante ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2027,1,0,'Edeleon','Tom Jefferson','Garcia','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2028,8,5,'Elefante','Kristel Anne','Sipin ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2029,3,0,'Ellaga','Reymund','Habab','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2030,9,0,'Empabido','Myla Grace','Fontilar','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2031,8,6,'Erece','Cherrie Mae ','Hagacer','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2032,4,0,'Esguerra','Christian Patrick','Inigo','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2033,14,0,'Esmeralda','Ailene ','Vidal','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2034,8,6,'Espanto','Alyssa ','Castañeda','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2035,2,0,'Espiritu','Princess Diane ','Fernandez ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2036,13,0,'Espora','Meghan Angel ','Marquez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2037,2,0,'Estabillo','Josephine ','Guarino ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2038,15,1,'Esteras','Princess ','Pangayan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2039,1,0,'Estrañero','May Rose','Nival','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2040,5,0,'Estrella','Karenjoy ','Balibal ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2041,4,0,'Estreller','Jake ','Monden','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2042,5,0,'Etrata','Kristhine Joy ','Elefante ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2043,5,0,'Eugenio','Rose ','Gagarin ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2044,13,0,'Eugenio','Renante ','Halnas','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2045,8,6,'Eugenio ','Ian Jay ','Dela Cruz','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2046,8,6,'Europa','Joseph ','Villarmino','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2047,4,0,'Fabro','Ailene','Habungan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2048,4,0,'Fabro','Jennalyn','Bagayao','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2049,1,0,'Fabro','Florence','Javonitalla','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2050,13,0,'Fabro','Rhozel','Pascua','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2051,2,0,'Fang','Rizalyn ','Bitao ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2052,8,6,'Favo','Christian Angelo','','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2053,5,0,'Fernando',' Fatima Hazel ','Adrid ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2054,4,0,'Fontanilla','Eden','Valois','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2055,5,0,'Foronda','Edlyn ','Francia ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2056,4,0,'Franozo','Diana ','Tejada','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2057,11,0,'Gabatino','Marie ','Mifa','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2058,4,0,'Gabayan','Gerry','Ganado','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2059,15,1,'Gabayan','Kimberly','Dela Cruz','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2060,8,6,'Gabayan ',' Rachelle ','Ramos','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2061,11,0,'Gabor','Rochelle ','Apolonio','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2062,8,6,'Gaboy',' Marielle ','Galimba','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2063,9,0,'Gabuat','Dayanara ','Gacilos','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2064,14,0,'Gabuat','Dabbie ','Agrisola ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2065,2,0,'Gabuyo',' Jenie Vie ','Del Rosario ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2066,15,1,'Gacilos','Christopher ','Vilog','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2067,8,5,'Gacilos','Eunisa ','Rigor ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2068,9,0,'Gacilos','Sunshine ','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2069,2,0,'Gacuan',' Joanna Marie ','Ordoñez ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2070,1,0,'Gacula','James RB','Carpentero','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2071,6,7,'Gacusan','Roselle ','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2072,8,6,'Gacusan ','Charina ','Galleso','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2073,5,0,'Gacusana','Nerayle Mae ','Gagarin ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2074,8,6,'Gacusana','Kristine Joy','Carasi','F',2017,'2017-07-24');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2075,1,0,'Gacutan','Bermer','Castro','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2076,8,6,'Gadiano',' Princess ','Liporada','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2077,8,5,'Gadier','Kylie Dean ','Dela Peña ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2078,8,5,'Gadier','Wenzy','Alviento ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2079,12,0,'Gadier','Michael','Gadia','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2080,15,1,'Gadingan','Lea ','Arcalas','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2081,8,6,'Gadingan','Ronald','','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2082,1,0,'Gadut','Carmela Dawn ','Molina','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2083,13,0,'Gadut','Christine ','Del Rosario','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2084,6,3,'Gagabi ','Micah Jelean ','Pasic ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2085,4,0,'Gagarin','Jefferson Ian','Ramirez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2086,5,0,'Gagarin','Nizza ','Habab ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2087,3,0,'Gagarin','Jerome','Pere','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2088,3,0,'Gagarin','Mark Jayson ','Arreola','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2089,1,0,'Gagarin','Glennford','Javier','M',2017,'2017-07-24');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2090,4,0,'Gagto','Christian','De guzman','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2091,1,0,'Galacio','Jonh Rey','Diamos','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2092,8,5,'Galaites','Haidilyn','Pangonillo ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2093,1,0,'Galanga','Virgilio Jr.','Garnace','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2094,4,0,'Galangco','Roxanne','Calingayan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2095,4,0,'Galano','James Ian','Baeg','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2096,6,7,'Galanote','Honey Mhay ','Reyes','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2097,6,3,'Galanto','Monalisa ','Galdones ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2098,5,0,'Galanto','Jenna Joy ','Galvan ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2099,15,1,'Galapon','Janssen ','Mangay-ayam','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2100,4,0,'Galario','Angeli','Espinoza','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2101,4,0,'Galay','Femma','Gallarin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2102,8,6,'Galcon','Diana Rose ','Gonzalo','F',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2103,6,7,'Galdones','Jay Lord ','Grabanzor','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2104,5,0,'Galdones','Trisea Jamiely ','Dela Cerna ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2105,15,1,'Galdones','Maricel','Pascua','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2106,4,0,'Galdonez','Marc ','Gambon','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2107,8,6,'Galdonez','Sunshine','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2108,15,1,'Galicia','Dianne','Acopido','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2109,8,6,'Galicinao','Charlyn ','Hafalla','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2110,4,0,'Galima','Cecille','Gapang','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2111,4,0,'Galima','Charles Diether ','Gacusana','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2112,5,0,'Galima',' Geniela ','Cariño ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2113,4,0,'Galimba','Monica Andrea','Grayasin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2114,8,5,'Galimba','Cecile','Andres ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2115,4,0,'Galinato','Analyn','Gabon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2116,8,5,'Galinato','Hazel ','Cudiamat ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2117,5,0,'Gallardo','Alma ','Maninggan ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2118,8,6,'Gallardo','Karl Angelo ','Castro','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2119,1,0,'Gallardo','Romabell ','Guevera','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2120,1,0,'Gallen','Jerson','Gallen','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2121,15,1,'Galleso','Dina','Daliquez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2122,15,1,'Galleto','Jeffy ','Saulon','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2123,4,0,'Galodang','Jessie ','Gabayan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2124,6,7,'Galuardo','Marisol ','Querubin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2125,8,5,'Galus','Aprille','Velano ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2126,5,0,'Galusan',' Brian ','Bandalog ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2127,6,2,'Galut ','Carmela ','Valdez ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2128,6,7,'Galuz','Rhoda ','Toquia','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2129,8,5,'Galvez','Hazel','Kakao','F',2017,'2017-07-24');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2130,9,0,'Galzote','Aprilyn ','Viros','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2131,5,0,'Gamata','Eden Joy ','Gabatilan ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2132,8,6,'Gamata',' Ma.Cristina ','Escobar','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2133,4,0,'Gamayen','Herby','Mecos','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2134,4,0,'Gamboa','Rommel ','Valdez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2135,9,0,'Gambon',' Angelica ','Garnace','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2136,1,0,'Gambon','Prudencio Jr.','Orpilla','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2137,11,0,'Gamera','Joanna Marie','Tuzon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2138,4,0,'Gamoso','Marielle ','Gamilde','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2139,6,7,'Gamoso','Geoner ','Baptista','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2140,1,0,'Gamoso','Ronnie','Manzano','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2141,4,0,'Gamueda','Beverly Joyce ','Gander','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2142,11,0,'Gamueda','Renalyn ','Del Rosario','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2143,4,0,'Ganado','Jonel','Pascua','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2144,3,0,'Ganado','Ariel','Sandaga','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2145,8,5,'Ganado','Haydee ','Masaoay ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2146,4,0,'Gandalera','Geraldine','Del Rosario','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2147,6,3,'Gandalera','Erica ','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2148,1,0,'Gandalera','Gleny May','Gallebo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2149,4,0,'Gandol','Rogelyn','Gacusan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2150,1,0,'Gandol','Paul Anthony','Ganabo','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2151,1,0,'Gañela','Mel','Ramos','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2152,6,1,'Ganigan','David','','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2153,8,6,'Gansobin','Marivic ','Blance','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2154,4,0,'Gaoat','Franchesca Denise','Aguilar','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2155,4,0,'Gaoat','Maricris','Fernandez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2156,6,2,'Gaoat','Geraldine ','Ramos ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2157,8,6,'Gapate','Flormina Joy ','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2158,4,0,'Gapoy','Claire','Remolacio','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2159,1,0,'Garabiles','Ed Mark ','Garces','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2160,14,0,'Garces','Maricris ','Mangay-ayam ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2161,1,0,'Garcia','Christian','Supnad','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2162,1,0,'Garcia','Christian ','Valdez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2163,1,0,'Garcia','Marybless','Isauro','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2164,1,0,'Garcia','Rey Mark ','De Guzman','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2165,2,0,'Garcia',' Romalyn ','Brillo ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2166,14,0,'Garcia',' Lemy ','Dial ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2167,1,0,'Gari','Evelyn','Rabara','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2168,8,6,'Garidan','Romalyn ','Lipata','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2169,3,0,'Garinggo','Maria Antonette','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2170,3,0,'Garnace','Judy Ann','Gaspar','F',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2171,15,1,'Garnace','Ruby Ann ','Gabris','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2172,1,0,'Garnace','Angela','Del Rosario','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2173,4,0,'Garnachea','Mariel','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2174,4,0,'Garque','Lars Victor ','Galdonez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2175,3,0,'Garringo','Rose Ann ','Sungaben','F',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2176,5,0,'Garrino','Venus ','Francisco ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2177,15,1,'Garrino','Christine Joy ','Gasmen','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2178,9,0,'Gassil','Angelyn ','Cello','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2179,4,0,'Gat-eb','Jessa ','Alfario','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2180,4,0,'Gawaen','Lezelle','Waking','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2181,8,5,'Gawaen','Precious ','Bantew ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2182,4,0,'German','Angelo ','Abigania','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2183,5,0,'Geronillo','Sherman Kyler ','Reclusado ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2184,8,6,'Gines','Judielyn ','Villanueva','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2185,4,0,'Goker','Evren','Esmeralda','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2186,13,0,'Gomez','Marry Ann','Enaya','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2187,14,0,'Gomintong','Lalaine Jessica ','Javillonar ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2188,1,0,'Gonzaga','Lorenz ','Cuenco','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2189,9,0,'Gonzales',' Krizelle ','Dawa','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2190,6,3,'Gonzalez ','Carol ','Palino ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2191,15,1,'Gracia','Patricia Carmela','Mati','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2192,11,0,'Gray','Chris John ','Millan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2193,2,0,'Guanzon',' Editha ','Jainar ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2194,4,0,'Guardiana','Mark Angelo','Saldevar','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2195,5,0,'Guerrero',' Carissa Joyce ','Sabado ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2196,1,0,'Guevarra','Abel','Javillonar','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2197,6,1,'Guiao','Mark Charlie ','Callitong','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2198,12,0,'Guilambo','Jessica Patti','Escobar','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2199,14,0,'Guising','Melody ','Pascua ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2200,12,0,'Gundran','Yllen Grace','Ferrer','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2201,15,1,'Habab','Valeria','Boisa','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2202,5,0,'Haban','Pearl Ann ','Flores ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2203,13,0,'Haban','Mary Grace','Viernes','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2204,12,0,'Haban','Julie Ann','Manzano','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2205,6,7,'Haber','Rosalia ','Gaoat','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2206,4,0,'Habitchuela','Loralyn','Diga','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2207,15,1,'Haboc','Mylene','Herlaban','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2208,13,0,'Haboc',' Honey May ','Balagtas','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2209,15,1,'Hachuela','Jolina ','Habon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2210,5,0,'Hadap','Alfredo ','','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2211,8,6,'Hadap','Ivy Marice ','Alcaide','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2212,9,0,'Haduca','Rona Jane ','Lapitan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2213,1,0,'Haduca','Mark Joseph','Aguilar','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2214,13,0,'Haduca','Sharlien ','Halunajan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2215,6,2,'Hagad','Mycah ','Quitevis','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2216,14,0,'Hagoot','Angel Rose ','Agresor ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2217,9,0,'Hailar','Citadel Nina ','Ruiz','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2218,13,0,'Halos','Maricon ','Alcayde','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2219,12,0,'Halunajan','Annie Gee','Viernes','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2220,5,0,'Herana','Aprille Joyce ','Leandro ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2221,13,0,'Heraña','Karren ','Gonzales','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2222,6,3,'Hernaez','Kris May ','Manganaan ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2223,8,5,'Hernandez','Clarisa ','Gallejo ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2224,3,0,'Heruela','Ruth Marie','Mayor','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2225,8,5,'Hidalgo','Rommel Jr.','Brioso ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2226,1,0,'Hipolito','Dabu ','Blas','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2227,6,7,'Ibañez','Jonna Wayne ','Solis','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2228,1,0,'Ibay','Eduard','Suda-I','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2229,1,0,'Ibe','Charlito ','Ramirez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2230,4,0,'Ilagan','Gianfranco','Cortez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2231,13,0,'Ilagan','Raizel Cyrille ','Aberquez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2232,4,0,'Inigo','Pristine','Salon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2233,9,0,'Inigo','Ivy','','F',2017,'2017-07-24');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2234,8,5,'Islao','Abigail','Gacusana ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2235,13,0,'Ison','Elaiza May ','Alipo-on','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2236,4,0,'Jacob','Arlene ','Ellorin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2237,1,0,'Jadormeo','Ronnel','Madacio','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2238,9,0,'Jainar','Merry Jean ','Astrero','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2239,8,6,'Jallorina','Juliean ','Escala','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2240,1,0,'Jamandra','Niño Ryan','Susa','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2241,5,0,'Jandoc',' Judy Ann ','Pasion ','F',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2242,4,0,'Javillonar','Jayson Josh ','Jaquias','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2243,8,6,'Javillonar','Richard ','Apolonio','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2244,1,0,'Javinar','Jessica Marie ','Ruiz','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2245,4,0,'Javonillo','Francis','Zapanta','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2246,4,0,'Javonitalla','Ma. Lea','Leswe','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2247,13,0,'Javonitalla','May Ann ','Osorno','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2248,12,0,'Javonitalla',' Eumme ','Osorno','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2249,9,0,'Jimenez','Mercedes ','Calderon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2250,9,0,'Jimenez','Cl Adam ','Gines','M',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2251,1,0,'Jimenez',' Rodel','Andaquig','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2252,4,0,'Jornacion','Rosielyn ','Contaoi','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2253,8,6,'Julio','Dejie Melle ','Guliman','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2254,5,0,'Junio','Melvin ','Astrero ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2255,8,5,'Kaur','Amanpriet','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2256,15,1,'Laagen','Lady May ','Galangey','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2257,8,5,'Labanar','Vhia','Berdon ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2258,8,6,'Labordo','Ma.Angelica ','Gamoso','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2259,4,0,'Lacaden','Leah','Tome','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2260,15,1,'Lacaden','Glendel Grace','Asuegi','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2261,8,6,'Lacano','Lyka ','Gadier','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2262,4,0,'Lañada','Glaiza','Salac','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2263,6,3,'Laoat','Dexter Jason ','Callang','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2264,6,1,'Laoat','Kathleen ','Callang','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2265,8,5,'Las-igan','Jona','Manzano','F',2017,'2017-07-24');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2266,2,0,'Latic','Marjorie ','Pati ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2267,12,0,'Laude',' Jocelyn','Angelito','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2268,6,7,'Laureta','Anne Dominique ','Castro','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2269,3,0,'Laureta','Dominador Jr.','Castro','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2270,1,0,'Lauricio','Gerald','Ellaga','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2271,6,1,'Lavaro','Rhodelyn ','Navarro','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2272,5,0,'Lazo','Carissa ','Dela Cruz ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2273,12,0,'Lazo','Madelyn','Pusayen','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2274,4,0,'Leaño','Kriszelle Mae','Ruiz','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2275,12,0,'Lebantino','Feljun ','Leoncio','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2276,6,7,'Libao','Marie Joy ','Domingo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2277,8,6,'Licudine','Geraldine Mae ','Leonzon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2278,2,0,'Lim','Nailyn Grace','Bisting ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2279,1,0,'Limon','Jerry','Arciaga','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2280,8,5,'Llanes','Bearlin','Canon ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2281,8,6,'Locquiao','Bernadette ','Domenden','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2282,4,0,'Lodivico','May Flor','Ellorin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2283,1,0,'Longboy','Ruther Ford','Antolin','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2284,4,0,'Lopez','Jimboy','Manuel','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2285,5,0,'Lopez','Wendymae ','Valdez ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2286,8,6,'Lozano',' Mary Joy ','Alayon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2287,4,0,'Luarca','Jerome ','Macayan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2288,6,1,'Lucain','Loida ','Mucati','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2289,4,0,'Macapinlac','Noele Christine','Gironella','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2290,15,1,'Macasaya','Rochelle','Dominguez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2291,9,0,'Mackey','Jezzil Mae','Batao-ey','F',2017,'2017-07-24');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2292,1,0,'Mackey','Mark Jordan','Maticyeng','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2293,1,0,'Madamba','Danmar','Sudaria','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2294,15,1,'Madarang','Villa Almira','Galaites','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2295,4,0,'Maduli','Claudette ','Camagay','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2296,11,0,'Maglinao','Emieleth Joy ','Callejo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2297,4,0,'Malonda','Julie Anne','Elefante ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2298,6,3,'Mancio ','Maricel ','Gorres ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2299,1,0,'Manganip','Ryan Paul','Bayon','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2300,11,0,'Mangante','Vannie ','Bugtong','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2301,12,0,'Mangante','Cherry ','Las-igan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2302,3,0,'Manzano','Raffy ','Gines','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2303,15,1,'Manzano','Leah','Ferrer','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2304,8,5,'Manzano',' Erika Joy','Caleon ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2305,9,0,'Manzano',' Leizel ','Garinggo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2306,1,0,'Manzano','Rodel Jr. ','Galimba','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2307,2,0,'Manzano','Myrma ','Sapguian ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2308,13,0,'Manzano','Jocelyn ','Rondaris','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2309,12,0,'Manzano','Racquel','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2310,15,1,'Maranion','Anna Lorrayne','Rapada','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2311,3,0,'Marcos','Joefhyll Shane','Guzman','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2312,1,0,'Mariano','Sony ','Abad','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2313,5,0,'Marquez','Mitze ','Gorospe ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2314,5,0,'Marquez','Tereju-Ann ','Gorospe ','F',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2315,1,0,'Marquez','John Louie','Fernandez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2316,1,0,'Marquez','Jordan','Medina','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2317,3,0,'Martin','Anabelle','Plazo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2318,6,2,'Martinez','Maria Guadalope ','Prado','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2319,1,0,'Martinez','Fernan','Ganacias','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2320,6,7,'Matias','Flerida ','Abaya','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2321,1,0,'Mecos','Apple','Molina','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2322,1,0,'Mecos','Myruel Lord ','Gacusan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2323,6,1,'Medalla','Hazel ','Carsilla','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2324,5,0,'Medina','Jeriecko Phredd ','Ellorin ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2325,11,0,'Medrano','Angielic Melody ','Ruiz','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2326,6,7,'Mendoza','Judilyn ','Mabiasan ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2327,4,0,'Menor','Arriane','Arreola','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2328,4,0,'Menor','Aubrey','Arreola','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2329,3,0,'Mina','Nichelle Ann','Barber','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2330,14,0,'Mina','Joyce Cathleen ','Martinez ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2331,1,0,'Miranda','Gabriel','Bullalon','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2332,4,0,'Molina','Jonalyn','Gonzalo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2333,4,0,'Moreno',' Maria Fe Teresa','Rufino','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2334,8,6,'Morente','Wilma ','Cabato','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2335,4,0,'Mortel','Kimberly ','Cabangon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2336,1,0,'Mostrero','Joemar','Buena','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2337,11,0,'Murillo',' Judy Ann ','Panggayan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2338,8,6,'Murphy','Angelica','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2339,4,0,'Nacar','Charity ','Puzon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2340,15,1,'Nacar','Michael','Raguro','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2341,8,6,'Najera','Marizza Lowelle ','Mateo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2342,8,6,'Nana','Jessica Dyan','Soriano','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2343,4,0,'Nartatez','Christopher','Galutan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2344,4,0,'Naungayan','Aljon','Gagarin','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2345,8,6,'Nera','Ara Mae ','Ybalez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2346,8,6,'Niñonuevo','Princess Starla ','Manzano','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2347,3,0,'Novida','Nelton Jay ','Dal-uyen','M',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2348,2,0,'Novida','Adelfa ','Bugan ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2349,2,0,'Novida','Elyrose ','Molina ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2350,13,0,'Obrero','Kenneth ','Dela Cruz','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2351,15,1,'Olanio','Cris Ann Mae ','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2352,15,1,'Ordoñez','Abigail Joy','Mabbagu','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2353,1,0,'Ordoñez','Cristal Mae','Llanes','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2354,2,0,'Oria','Emely ','Gasmen ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2355,1,0,'Oribello','Shena Kathrine ','Gabayan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2356,4,0,'Orpilla','Joahna Mae','Ballocanag','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2357,4,0,'Orpilla','Joyce','Gabayan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2358,4,0,'Orpilla','Patrick ','Garceliano','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2359,1,0,'Orpilla','Princess','Galangco','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2360,1,0,'Pacio','Jeffrey','Carvajal','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2361,3,0,'Packit','Maria Theresa','Galicia','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2362,1,0,'Paetan','Blademir','Cagoang','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2363,8,5,'Pagullay','Darlyn ','Valdez ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2364,8,6,'Pahed','Corazon','Esteron','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2365,4,0,'Pajarillo','Caryl Hannah','Banaria','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2366,4,0,'Pajo','John Paul','Manzano','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2367,4,0,'Palacio','Febelyn ','Cuenta','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2368,2,0,'Palangdao','Alyssa May ','Manzano ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2369,6,1,'Palasiw','Levita ','Llarin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2370,8,6,'Palino','Jovelyn ','Sanchez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2371,2,0,'Palomo','Crizzel Ann ','Mangino ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2372,8,6,'Palpal-latoc','John Leo ','Suyat','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2373,1,0,'Panganiban','Mary Dianne','Rodriguez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2374,4,0,'Pangesban','Moneliza','Bagaoi','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2375,3,0,'Pantaleon','Junel','Dagdag','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2376,8,6,'Parayno','April Ann ','Rebuldela','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2377,8,6,'Pareño','Julie ','Delos Santos','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2378,4,0,'Pasion','Zaree','Urbano','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2379,5,0,'Pasion','Ferly Ann ','Avila ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2380,11,0,'Pasion','Jonalyn ','Galdones','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2381,9,0,'Passi','Jomelene ','Adepine','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2382,15,1,'Pelayan','Leticia','Dao-gas','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2383,4,0,'Peña','Lyn Clarisse ','Pioquinto','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2384,11,0,'Permejo ','Lhenylyn ','Mendros','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2385,8,6,'Piamonte','Allen ','Ragma','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2386,6,3,'Pilon ','Gina ','Escalona ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2387,8,6,'Pimentel','Clarissa ','Ellorin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2388,2,0,'Pimentel','Geline Rose ','Haduca ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2389,1,0,'Pineda','Neil Robin','Velarde','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2390,6,7,'Piniano','Arlene ','Lopez ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2391,9,0,'Purugganan','Kimberly ','Gabayan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2392,9,0,'Purugganan','Mark Jason ','Gabayan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2393,13,0,'Putil','Jaezel Faye','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2394,3,0,'Querubin','Eryll Mae','Organo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2395,8,6,'Querubin','Verna Ivan Bianca','Eligio','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2396,8,6,'Quiba','Tanya ','Bitantes','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2397,2,0,'Quibatay','Emerald Joy ','Trinidad ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2398,1,0,'Quidpoan','Peric ','Piñas','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2399,13,0,'Quilang',' Rhejenn ','Luis','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2400,15,1,'Quines','Nolimar','Gacilos','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2401,5,0,'Quiogue',' Rizzel ','Acosta ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2402,6,3,'Raceles','Jerome ','Racusa ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2403,5,0,'Rafanan','Jan-rey ','Racuya ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2404,11,0,'Rafanan','Abigail ','Buenaventura','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2405,11,0,'Ragadi','Jessica ','Raguindin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2406,13,0,'Ragadi','Jessica ','Raguindin','F',2017,'2017-07-24');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2407,12,0,'Ragasa','Angelica','Rabbon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2408,8,5,'Ramirez','Rose','Pimentel ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2409,13,0,'Ramirez','Jazlyn ','Racca','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2410,4,0,'Ramos','Ma. Christina ','Sanchez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2411,15,1,'Ramos','Ivy','Cristobal','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2412,15,1,'Ramos','Joy','Gadingan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2413,8,5,'Ramos','Jayrick ','Tejada ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2414,1,0,'Ramos','Al James','Guzman','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2415,1,0,'Ramos','Reyzel Ann','Galicia','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2416,11,0,'Ramos','Rustom ','Habon','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2417,6,7,'Ramos ','Francisco Jr. ','Retotar ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2418,8,5,'Raquepo',' James Rodel','Javill ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2419,3,0,'Rebodos','John Michael','Galapati','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2420,4,0,'Reparejo','Agnes ','San Pedro','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2421,4,0,'Reparejo','Rosemarie','Grayasin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2422,4,0,'Resurreccion','Cherry ','Gamueta','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2423,11,0,'Resurreccion','Joan ','Paredes','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2424,4,0,'Rigor','Norie Mae','Tabuñag','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2425,6,7,'Rigor','Shairah Leen ','Cordova','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2426,6,2,'Rigor','Karla ','Velasco ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2427,13,0,'Rigor','Ronnalyn May','Carbonell','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2428,13,0,'Riñen','April Jamie ','Marquez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2429,8,6,'Riñopa',' Alyssa ','Gallardo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2430,4,0,'Rivera','Jesica','Acosta','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2431,6,1,'Rivera','Thrisha Mae ','Mendoza','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2432,11,0,'Rivera','Reden','Pascua','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2433,12,0,'Rivera','Janice','Pascua','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2434,1,0,'Roca','Darylle','Daymiel','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2435,4,0,'Rodriguez','Jhevelyn','Ferias','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2436,4,0,'Rodriguez','Marcelo III','Gandol','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2437,5,0,'Rodriguez','Regine ','Almerol ','F',2017,'2017-07-24');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2438,1,0,'Roldan','Joemer','Bang-asan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2439,14,0,'Roldan','Jenniefer ','Andres ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2440,13,0,'Roldan','Reina ','Gamueda','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2441,6,3,'Rosete','Angelika ','Ambatang ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2442,13,0,'Rous ','Jennylyn ','Rampa','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2443,2,0,'Rubang',' Angie ','Soliven ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2444,4,0,'Ruiz','Jasmin Joy','Marquez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2445,8,6,'Sabado','Benjie','Lambo','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2446,1,0,'Sabado','Jonathan','Balcita','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2447,4,0,'Sagun','Gerald','Valdez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2448,14,0,'Sagun','Ruth Anne ','Bumanglag ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2449,1,0,'Salay','Diana','Galangey','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2450,8,6,'Sanchez','Neil','Costales','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2451,9,0,'Sanchez','Precila ','Garnace','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2452,2,0,'Sanchez','Karina ','Valdez ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2453,6,7,'Santiago','Amelita ','Aboc ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2454,1,0,'Santiago','Annabelle ','Aboc','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2455,5,0,'Santos','Loraine ','Cabamungan ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2456,15,1,'Santos','Meichelle Reigh','Balicdang','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2457,8,6,'Santos','Juvy ','Catubig','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2458,4,0,'Sayan',' Madel','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2459,6,1,'Sayan','Lirah Claire ','Agrisola','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2460,4,0,'Segundo','Jesannie ','Bernardo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2461,6,1,'Segundo','Aya ','Banasan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2462,4,0,'Servillo','Edwin ','Ganiban','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2463,3,0,'Siobal','Hambel ','Bacdang','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2464,1,0,'Siploc','Janet ','Cadangan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2465,1,0,'Soliva','Ei-jay','Gonzales','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2466,4,0,'Soliven','Joshua ','Gamueda','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2467,5,0,'Soria','Michelle ','Ruiz ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2468,5,0,'Sorio',' Monalyn Joy ','Dalao ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2469,5,0,'Sumao-i','Cathy ','Bumatnong ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2470,6,1,'Sunio','Clarisse ','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2471,8,6,'Suyat','Mart Ranssel ','Palacio','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2472,2,0,'Tabig','Teresa ','Tamayo ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2473,1,0,'Tabion','Nenita ','Bingo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2474,6,1,'Tabios','Sers ','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2475,1,0,'Tabon','Michael John','Bayle','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2476,1,0,'Taer','Marleo ','Mariano','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2477,2,0,'Talavera','Arpee Jay ','Hezeta ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2478,8,6,'Tallayo',' Mary Rose Ann ','piano','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2479,13,0,'Tamayo','Rhealyn','Eupalao','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2480,15,1,'Tañedo','Diana','Gacula','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2481,15,1,'Tasani','Honey Love','Arconado','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2482,12,0,'Tawali','Rio Roxanne ','Segundo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2483,15,1,'Tayaan','An-an','Dumalis','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2484,4,0,'Tejada','Ana Marie','Butalon','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2485,4,0,'Tejada','May Ann','Martinez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2486,6,7,'Tejada','Paolo Alexis ','Pelizan ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2487,9,0,'Tejada','Mia Hanieneth','Velasco','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2488,9,0,'Tejada','Ronalyn ','Almoza','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2489,4,0,'Teo','Bea Krizia','Villalobos','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2490,4,0,'Toquero','Leonard','Gabuat','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2491,6,2,'Toquero','Dianne Therese ','Loveria','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2492,5,0,'Toquero','Levie ','Gacutan ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2493,1,0,'Toquero','April John ','Granfil','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2494,8,5,'Torres','Erica','Dispo ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2495,1,0,'Tudayan','Christian','Maledda','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2496,4,0,'Tugade','Jhun','Valdez','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2497,2,0,'Tumacdang',' Gemalyn ','Langoey ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2498,8,6,'Tungab','Carisa ','Nanag','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2499,14,0,'Tupaz','Alyssa Ashley ','Asejo ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2500,8,6,'Ulat','Rogedel Vhiel','Resurreccion','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2501,6,2,'Ung-gay','Claere ','Tami-ing ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2502,8,5,'Urbano','Mark Christian','Quiba ','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2503,12,0,'Utana','Jonabel','Gomintong','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2504,6,1,'Uyaan','Albert ','Foronda','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2505,4,0,'Valdez','Eloiza','Paquing','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2506,4,0,'Valdez','Excel','Aglibut','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2507,4,0,'Valdez','Jamaica ','Cagaoan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2508,4,0,'Valdez','Jonah Flor ','Sagay','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2509,4,0,'Valdez','Lea','Dela Cruz','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2510,4,0,'Valdez','Lovelene','Grabanzor','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2511,4,0,'Valdez','Marites','Tomas','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2512,4,0,'Valdez','Mary Rose ','Gapate','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2513,6,1,'Valdez','Aileen ','Garnacha','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2514,6,7,'Valdez','Karen ','Agno ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2515,5,0,'Valdez','Sheramae ','Ugalde ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2516,3,0,'Valdez','Rhea','Galinato','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2517,15,1,'Valdez','Joe Mari ','Peralta','M',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2518,8,6,'Valdez',' Jennifer ','Romero','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2519,8,6,'Valdez','Maricel ','Benitez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2520,8,6,'Valdez','Richelle ','Llobrera','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2521,8,6,'Valdez','Reynold Jr. ','Dela Rosa','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2522,9,0,'Valdez','Rowena ','Pasian','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2523,1,0,'Valdez','Nathaniel ','Gacutan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2524,14,0,'Valdez','Kimberly Ann','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2525,11,0,'Valdez','Estefania ','Dapig','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2526,11,0,'Valdez','Sinamar ','Cabangcala','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2527,12,0,'Valdez','Vanessa','','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2528,8,6,'Vallejos','Jairus Anthony ','Gramaje','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2529,1,0,'Vallejos','Yves Bryan','Cellona','M',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2530,8,6,'Vargas','Angela','Jokico','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2531,9,0,'Velasco','Beverly ','Marquez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2532,11,0,'Velasco','Jean Marie ','Aguto','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2533,4,0,'Viernes','Ian Marvin','Facultad','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2534,2,0,'Villa','Justa ','Remegio ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2535,5,0,'Villalobos','Marivic ','Casinova ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2536,6,1,'Villanueva','Reymar ','Gasadan','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2537,4,0,'Vilog','Nomer','Cadaeg','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2538,3,0,'Vilog','Regine ','Sabalo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2539,9,0,'Vilog','Bryan','Ancheta','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2540,1,0,'Vilog','Samson','Banao','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2541,13,0,'Vilog','Princess Mae ','Gacilos','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2542,13,0,'Vilog ','Gellie An ','Haduca','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2543,15,1,'Vilog,','Julyna','Machuca','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2544,1,0,'Viloria','Jeffrey ','Garabiles','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2545,4,0,'Virocel','Philip','Gambon','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2546,6,2,'Wagayen','Donna Joy ','Lagalo ','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2547,2,0,'Wagis','Isagani ','Justo','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2548,6,1,'Wandas','Alma May ','Padsing ','F',2017,'2017-12-18');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2549,4,0,'Wigan','Rosalie','Balaleng','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2550,1,0,'Yadao','Fer','Asis','M',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2551,4,0,'Zabala','Raulyn','Abaya','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2552,4,0,'Zamora','Claudine','Pabora','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2553,13,0,'Zareno','Pamela ','Feraldo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2554,2,0,'Abacan','Mary Ann','Salaño','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2555,2,0,'Abad','Virginia','De Guzman','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2556,2,0,'Abalos','Rializa','Milarpes','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2557,8,5,'Adaya','Joanna Marie','Fabian','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2558,1,0,'Aglibot','Leonavelle','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2559,8,6,'Aglibut','Edison','Gamata','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2560,2,0,'Agnaonao','Elvie','Degay','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2561,8,5,'Agrisola','April Anne','Gacusan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2562,15,1,'Agsano','Erica','Calatay','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2563,1,0,'Agsao','Janesa Nadia','Domingo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2564,4,0,'Aguinaldo','John Lester','Dela Rosa','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2565,6,1,'Aguli','Eden','Martin','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2566,8,6,'Agustin','Adelyn','Fieldad','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2567,2,0,'Agustin','Catherine','Sapguin','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2568,2,0,'Alamay','Jeneffer','Lanuza','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2569,4,0,'Alawas','Jobert','Valdez','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2570,8,5,'Alay-ay','Adela','Ballerta','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2571,15,1,'Alay-ay','Juluis','Seriosa','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2572,6,4,'Albuñan','Jemaimah','Ominga','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2573,4,0,'Almirol','Kevin Ryan','Basilio','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2574,9,0,'Alnas  ','Rio Jade','Biligan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2575,1,0,'Amaro','Angel','Castro','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2576,15,8,'Ambabag','Femarie','Agsano','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2577,1,0,'Ambatang','Arvie','Manzano','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2578,9,0,'Ammang','Via Faye','Lagasan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2579,2,0,'Andres','Shallimar','Mariano','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2580,8,6,'Angala','Marie Nol','Palacol','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2581,5,0,'Angala  ','Marjorie','Abaya','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2582,15,1,'Ang-oay','May Joy','Subadi','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2583,15,8,'Antalan','Daisy Joy','Agsi','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2584,4,0,'Antonio','Shean Zamhir','Bargas','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2585,6,3,'Antonio','Joy Ann','Molina','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2586,15,1,'Apilado','Lorena','Salibad','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2587,4,0,'Aquino','Roxanne','Cortez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2588,13,0,'Aquino','Noraine','Cabello','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2589,15,8,'Arcega','Nicko','Suyat','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2590,1,0,'Arcena','John Paul','Arzadon','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2591,8,6,'Arciaga','Raymart','Bayud','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2592,1,0,'Arconado','Allen','Rodriguez','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2593,1,0,'Arellano','Esperanza','Habab','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2594,8,5,'Babael','Jerome','Buenavista','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2595,1,0,'Baccali','John Wayne','Bobiles','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2596,13,0,'Baclao','Elsie','Heraña','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2597,6,9,'Bacuteng','Raquel Hannah','Ibañez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2598,1,0,'Baddao','Kristel','Orpilla','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2599,15,8,'Balao-as','Jaycel','Bagnet','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2600,5,0,'Balaque','Nymfa','Saldevar','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2601,13,0,'Balawen','Novimar','Bellon  ','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2602,8,5,'Balbin','Jenny Marlene','Laroza','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2603,13,0,'Balero','Renalyn','Aguinoas','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2604,12,0,'Balero','Ronalyn','Aguinoas','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2605,12,0,'Balio-an','Jemarie','Gabayan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2606,4,0,'Balmes','Mervin Rae','Arellano','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2607,13,0,'Baña','Arnold','Habon','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2608,6,4,'Banang','Jonathan','Labayani','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2609,2,0,'Banao','Haidie','Mayo','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2610,1,0,'Bañez','Marvin De','De Guzman','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2611,6,7,'Bannawag','Fina Marie','Pargad','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2612,5,0,'Baobaoen','Ai Mae','Cudiamat','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2613,6,7,'Bao-ilan ','Charito','P.','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2614,8,5,'Bao-ingan','Zhaira','Opiz','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2615,8,6,'Barbero','Geraldine','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2616,2,0,'Barnachea','Kathrine Abegail','Fabros','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2617,4,0,'Barroga','Lawrenze ','Gagarin','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2618,9,0,'Batin','Jon Allan','Domongdong','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2619,15,1,'Battad','Rodelio','Tactay','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2620,5,0,'Bautista','April','Gadia','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2621,15,1,'Bautista','John Rimark','Colcol','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2622,6,3,'Baydan','Ardee Visa','Gallao','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2623,4,0,'Bayle','Christian Lloyd','Gabayan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2624,15,8,'Baylon','Jean Micah','Gabor','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2625,6,7,'Behogsudan','April','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2626,4,0,'Beleno','Ehlyne','Tomas','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2627,6,1,'Beleno','Shiela Praise','Lang-ayan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2628,5,0,'Bello','Judy-ann','Doclis','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2629,1,0,'Bennagen','Jing Jing','Aben','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2630,4,0,'Bernabe','Donita Rose','Viernes','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2631,13,0,'Bernales','Angelita','Fabro','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2632,13,0,'Bernales','Yvan Patrick','Pastrano','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2633,6,1,'Berras','Ara Mae','S','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2634,4,0,'Bicasan','Art Jofferson','Sarmiento','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2635,8,5,'Biteng','Mike Joseph','Impelido','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2636,2,0,'Biteng','Melba','Pimentel','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2637,8,5,'Blance','Jonnalyn','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2638,8,5,'Boadilla','Rodelyn','Gorospe','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2639,13,0,'Bolin','Beverly','Lunogan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2640,15,8,'Bongolan','David Carl','Galimba','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2641,8,6,'Bonzon','John Dhenver','Gamueta','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2642,8,6,'Brello','Ednalyn','Catama','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2643,13,0,'Briones','Rhealyn','Lucido','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2644,6,3,'Buenafe','Julimar','Pascua','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2645,4,0,'Bugtaquen','Ezel','Maog','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2646,15,1,'Buking','Bhezie Marie','Sonson','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2647,5,0,'Bulalat','Cecille','Batang-i','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2648,1,0,'Bulallon','Carolina','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2649,8,6,'Bullan','Angelyn','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2650,4,0,'Buquing','Angela','Hagoot','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2651,15,1,'Burgos','Rhonalyn','Randilla','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2652,5,0,'Buyagan','Mar Fel','Sambaoa','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2653,4,0,'Cabaluna','Frances Yvette','Caadiang','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2654,9,0,'Cabaya','Jucel','Manibloc','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2655,15,1,'Cabbab','Maricris','Gueta','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2656,1,0,'Cabico','Oliver','Collo','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2657,4,0,'Cabrido','Jaylord','Rubio','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2658,1,0,'Cabunoc','Lester','Gines','M',2018,'2018-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2659,6,7,'Cabuslay','Sheryl','Valdez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2660,8,6,'Caccam','Michel','Valdemar','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2661,9,0,'Cacho','Gretel Marie ','Apacquid','F',2019,'2019-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2662,6,7,'Cadongonan','Romar','Sarmiento','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2663,5,0,'Calimlim','Jennylyn','Gamilde','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2664,8,5,'Calindas','Jovelyn','Cortado','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2665,4,0,'Callejo','Armina','Estacio','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2666,1,0,'Calzo','Reyson ','G','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2667,6,9,'Camerio','Jessa Mae','Pascual','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2668,5,0,'Campilla','Riccelle','Asuncion','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2669,1,0,'Canosa','Armando Jr.','Soriano','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2670,4,0,'Capellan','Richard Michael','Leaño','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2671,8,6,'Caplis','John Paul','Jagape','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2672,9,0,'Carbo','Jonalyn','Espanola','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2673,8,5,'Carillo','Ma. Emmeline','Polonio','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2674,6,4,'Carranza','Jeanny','Galanote','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2675,9,0,'Carreon','Katrina','Valdez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2676,13,0,'Carreon','Keila Maris','Paneda','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2677,4,0,'Castro','Beverly','Cagdan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2678,8,5,'Castro','Rosemanette','Joaguin','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2679,1,0,'Castro','Derick','Antolin','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2680,1,0,'Castro','Jerickson','Agda','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2681,15,1,'Cawe','Roselyn','Doña','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2682,8,5,'Cejas','Karen','Quevido','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2683,8,5,'Cena','Angelika','Alimorong','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2684,4,0,'Chico','Michelle','Dollente','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2685,4,0,'Colaljo','Danilo','Llobrera','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2686,15,1,'Combas','Czarinah','Garcia','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2687,5,0,'Concha','Geraldine','Velarde','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2688,9,0,'Condino','Marlo','Aglibot','M',2019,'2019-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2689,8,5,'Connor','Ermajane','Sumbad','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2690,2,0,'Contawi','Marinela','Galleta','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2691,8,6,'Coper','Justine Claire','Hagacer','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2692,1,0,'Cordova','Jolina','Barnachea','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2693,15,1,'Corpuz','Mark Anjo','Galvez','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2694,4,0,'Cortado','Shaira','Ganat','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2695,6,9,'Cortez','Jobelle Cassandra','Jaramilla','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2696,6,3,'Cortez','Ardene May Hope','Calindas','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2697,6,3,'Cortez','Mary Ann','Nartatez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2698,5,0,'Cortez','Cyfpia Mel','Batin','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2699,5,0,'Cortez','Jurelle','Ganacias','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2700,8,6,'Cortez','Abby Noreen','Garlejo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2701,8,6,'Cortez','Ronalyn','Labanar','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2702,8,5,'Cortez','Cherelyn','Raguindin','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2703,1,0,'Cortez','Rick Alber','Uyad','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2704,8,5,'Cortez ','John Benedict ','Rosimo','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2705,9,0,'Costelo','Kristine','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2706,1,0,'Coyang','Zhander Joshua','Paingan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2707,4,0,'Cu','Ej Anthony','Sanjel','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2708,13,0,'Cuba','John Lee','Galleto','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2709,14,0,'Cubo','Hazel','Bagsik','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2710,4,0,'Cudiamat','Mary Joy','Diyang','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2711,5,0,'Cudiamat','Kristel','Javonitalla','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2712,8,6,'Cudiamat','Rica Mae','Inigo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2713,9,0,'Cudiamat','Jessabel','Cortez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2714,11,0,'Cudiamat','Jessabel','Cortez','F',2018,'2018-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2715,9,0,'Cuenta','Moises','Acosta','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2716,4,0,'Cuevas','Ryan Jay','Cawis','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2717,1,0,'Cuplang','Donna','Ibasan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2718,9,0,'Custodio','Camille','Gadingan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2719,4,0,'Dakig','Fe Airam','Rapanot','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2720,4,0,'Dalnapen','Diana Grace','Pelayan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2721,6,4,'Dalog','Renalyn','Lestino','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2722,5,0,'Dampulay  ','Kathleen','Habon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2723,9,0,'Danao  ','Ronalyne','Catubay','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2724,8,5,'Dangalan','Jephunneh','Lacbongan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2725,5,0,'Daniel  ','Cielou Faith','Ballena','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2726,5,0,'Danipog','Xyrene Mae','Ponce','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2727,6,3,'Daodaoen','Roel','Camide','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2728,15,1,'Dapiaoen','Charlene Antonetth','Abluyan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2729,1,0,'Dapiñagan','Bryan','','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2730,8,5,'Daprosa','Abegail','Bernabe','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2731,1,0,'Dasalla','Luelito','Marbebe','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2732,14,0,'Dausen','Alfa','Palasiw','F',2018,'2018-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2733,4,0,'Dauz','Rosalie Jean','Buc-ong','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2734,8,5,'David','Hiedi','Flores','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2735,1,0,'De Guzman','Genoveva','Palabay','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2736,13,0,'Decano','Mae Ann','Javonitalla','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2737,1,0,'Del Rosario','Wilmar','Valdez','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2738,8,5,'Dela Cruz','Princess Mae','Pimentel','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2739,1,0,'Dela Cruz','Ronnel','Laberinto','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2740,13,0,'Dela Cruz','Jefferson','Gomintong','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2741,12,0,'Dela Cruz','Reden ','Tamayo   ','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2742,4,0,'Dela Rosa','Cristian','Jandoc','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2743,8,6,'Dela Rosa','Carmie','De Guzman','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2744,1,0,'Dela Rosa','Princess Heidi Alyssa','Hatal','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2745,5,0,'Dela Rosa ','Jovel ','Antolin','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2746,9,0,'Delos Reyes','Mae-ann','Domingo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2747,5,0,'Delos Santos','Kyla','Gutierrez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2748,1,0,'Deompoc','Berwin ','Manangbao','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2749,4,0,'Devis','Princess Joy','Ablang','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2750,1,0,'Devis','Rassel','Racusa','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2751,4,0,'Deyto','Ronnalyn','Jaramilla','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2752,6,4,'Dioag','Cristobal','Berto','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2753,2,0,'Directo','Princess Lei','Ordoñez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2754,4,0,'Domingo','Brian','Soliven','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2755,9,0,'Domingo','Chenny Ann','Basug','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2756,14,0,'Domisiw','Suaniely Beth','Curioso','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2757,1,0,'Duldulao','Roy Jr.','Castro','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2758,1,0,'Duli','Javier','Lungbabi','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2759,4,0,'Dultra','Geraldin','Tuliao','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2760,6,9,'Dumal-is','Bennylyn','Dalilis','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2761,1,0,'Dumawa','Meljan','Barredo','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2762,15,1,'Dumsing','Dc-ryl','Dal-uyen','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2763,2,0,'Duque','Chiqui Rose','Martinez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2764,6,1,'Dusalin','Saturnino','Dowato','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2765,6,7,'Echavarre','Junalish','T','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2766,5,0,'Ega','Judy Ann','Galleta','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2767,6,3,'Egar  ','Bryan Jay','A.','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2768,4,0,'Eleccion','Bhirds','Galinato','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2769,5,0,'Elefante  ','Jan Paul','Dela Cruz','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2770,8,6,'Elizarde','Lara Mae','Eugenio','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2771,8,5,'Encarnacion','Mary Joy','Martinez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2772,4,0,'Eroda','Karl Heinz Joshua','Sanidad','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2773,5,0,'Escalona','Marie Joy','Tabelon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2774,5,0,'Esclanda','Katrina','Ponce','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2775,1,0,'Espiritu','Fernand Jay','Sampayan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2776,8,6,'Estabillo','Mary Ann','Marquez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2777,11,0,'Eugenio','Renante','Halnos','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2778,6,3,'Eusebio','Chriselle Mae','Estabillo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2779,1,0,'Fabian','Clarence','Tawagen','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2780,6,4,'Fabro','Hanna Mae','Villanroque','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2781,1,0,'Fabro','Benjamin Jr.','Hortizuela','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2782,11,0,'Fabro','Rhozel','Pascua','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2783,8,6,'Fermin','Julie Anne','Gacusana','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2784,6,3,'Fernandez','Darwin','Melicor','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2785,2,0,'Fernandez','Hazel','Boy-oan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2786,1,0,'Figer','Vincent','Soriano','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2787,6,1,'Figuerres','Jovenilda','Manzano','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2788,4,0,'Flores','Christian Fil','Querijero','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2789,8,5,'Francia','Ace Christian','Foronda','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2790,6,9,'Gabaine','Robinah Mae','Langoey','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2791,4,0,'Gabaon','Justin Carl','Gallardo','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2792,4,0,'Gabatilan','Neil Patrick','Hadloc','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2793,9,0,'Gabatino','Jona Marie','Mifa','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2794,4,0,'Gabor','Mark Lester','Rodriguez','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2795,8,6,'Gabor','Jennifer','Galvez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2796,9,0,'Gabor','Rochelle','Apolonio','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2797,8,6,'Gabuat','Katrina Grace','Haduc','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2798,5,0,'Gabuyo','April May','Suarin','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2799,15,1,'Gacayan','John Vergel','','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2800,8,5,'Gacoscos','Dranreb Nephie','Gaoat','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2801,8,6,'Gacula','Geneiv','Acosta     ','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2802,8,6,'Gacusan','Jan Rocel','Acosta','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2803,8,6,'Gacusan','Charlene','Caratay','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2804,8,6,'Gacusan','Shiela','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2805,8,5,'Gacusan','Joevelyn','Ganado','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2806,4,0,'Gacutan','Geraldine','Ramos','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2807,4,0,'Gacutan','Jolina Rose','Casillan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2808,4,0,'Gacutan','Patrick','Abboc','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2809,8,6,'Gacutan','Mary Grace','Gadut','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2810,8,6,'Gacutan','Grace','Ramos ','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2811,8,5,'Gacutan','Crhistopher','Galleto','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2812,15,8,'Gacutan','Princess Bonita','Galano','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2813,1,0,'Gacutan','Kristine','Sevilla','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2814,13,0,'Gacutan','Estefhano','Bañez','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2815,14,0,'Gade','Shima','Gulis','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2816,4,0,'Gadia','Jennifer','Dagusen','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2817,8,5,'Gadingan  ','Crisel','Valdez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2818,14,0,'Gadut','Shiela Marie','Patindo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2819,5,0,'Gagarin','Roselle','Valdez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2820,6,4,'Gakem','Rhodalea','Espinueva','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2821,4,0,'Galaites','Lee-ar','Gambon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2822,8,5,'Galaites','Arnel','Agrisola','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2823,5,0,'Galanto','John Mark','Elgamo','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2824,8,6,'Galanto','Hannah Mae','Tabios','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2825,8,5,'Galanto','Bethlie Joy','Garabilez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2826,6,7,'Galay','Ramilyn','C','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2827,4,0,'Galcon','Lovelyn','Tabaco','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2828,1,0,'Galdo','Donnaville','Ganapao','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2829,8,6,'Galdones','Maricar','Felipe','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2830,2,0,'Galdonez','Aries','Naungayan','M',2018,'2018-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2831,6,7,'Galicia','Jennelyn','Caleda','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2832,5,0,'Galicia','Josefina','Orpilla','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2833,15,8,'Galicia','Rona Mae','Valdez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2834,2,0,'Galicia','Armilyn','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2835,4,0,'Galima','Beverly Anne','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2836,4,0,'Galima','Jona Mae','Guzman','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2837,8,6,'Galima','Kristelle','Gacusana','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2838,8,6,'Galima','Revelyn','Abenojar','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2839,8,5,'Galima','Maria Joemelle','Arciso','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2840,15,1,'Galimba','Neil Vince','Vicente','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2841,2,0,'Galimba','Sheila','De Guzman','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2842,4,0,'Galinato','Jan Aldrich','Rayma','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2843,5,0,'Galinato','Hanny Joy','Cudiamat','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2844,8,5,'Galinato','Janniela','Laygo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2845,9,0,'Gallardo','Niño Jc','Apilo','M',2019,'2019-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2846,11,0,'Galleta','Angelica','Mendoza','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2847,12,0,'Galleta','Jerome','Fabro','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2848,8,5,'Galleto','Geraldine','Savlon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2849,6,7,'Gallibao','Leah Mae','Hipiga','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2850,8,6,'Galutan','Raven Joy','Quisan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2851,8,5,'Galutan','Nhico','Gacilos','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2852,4,0,'Galvez','Roberto Jr.','Golez','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2853,8,5,'Galvez','Benjie','Lebantino','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2854,4,0,'Gamalog','Blessie Mae','Florendo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2855,8,6,'Gamayen','Arnulfo','Liamido','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2856,8,5,'Gambito','Loren Grace','Sanchez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2857,8,5,'Gamboa','Nicole Ann','Gambala','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2858,4,0,'Gambon','Kriztel Jane','Torres','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2859,15,8,'Gameng','Cristel Joy','Ramos','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2860,1,0,'Gamilde  ','Jimbo','Camacho','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2861,4,0,'Gamisera','Jerome','Pacis','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2862,6,3,'Gamoso','Rexon Jr.','Gabor','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2863,8,5,'Gamoso','Judelia','Payte','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2864,1,0,'Gamueda','Marjo','Sabado','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2865,1,0,'Gamueda','Lory Ben','Valdez','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2866,9,0,'Gamueda','Renalyn','Del Rosario','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2867,1,0,'Ganacias','Roderick','Acenas','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2868,15,8,'Ganado','Arnel','Sandaga','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2869,6,1,'Ganase','Kyrie','C','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2870,4,0,'Ganat','Christian Eric','Rubia','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2871,4,0,'Gander','Erica','Cabañero','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2872,8,5,'Gandeza','Criselda','Cudiamat','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2873,15,1,'Gaoat','Christian','Pagaduan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2874,1,0,'Gaoat','Jenny','Naungayan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2875,6,1,'Gapatan','Cherry Mae','Jimenez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2876,4,0,'Gapate','Jhomel John','','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2877,15,8,'Gapate','Mark','Gorospe','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2878,4,0,'Garabiles','Paul Stephen','Gacutan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2879,14,0,'Garcia','Jemelyn','Cital','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2880,5,0,'Garidan','Joyce Carole','Llanes','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2881,8,6,'Garinggo','Georgia','','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2882,8,6,'Garlejo','Jerome ','Galao','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2883,15,8,'Garnace','Mary Jo','Aglibut','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2884,1,0,'Garnace','Rubie','Galangco','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2885,4,0,'Garnatcha','Precious Grace','Tapiador','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2886,1,0,'Garpa','Diana','Moren','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2887,8,6,'Garringo  ','Cyan','Canogoran','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2888,8,6,'Gasatan','Jennifer','Dela Paz','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2889,15,1,'Gasmen','Ela May','Galanta','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2890,1,0,'Gasmen','Delma','Cudiamat','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2891,5,0,'Gassil','Anabel','Daclis','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2892,1,0,'Gassil','Jonjon','Caoaing','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2893,4,0,'Gaston','Raymund','Orine','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2894,1,0,'Gat-od','Benny','Beligan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2895,8,6,'Gavina','Annafreda','Tababan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2896,8,5,'Gawaen','Fema','Quitor','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2897,2,0,'Gayabang','Lemura','Manggalis','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2898,6,4,'Gayadan','An-ann','Ambabag','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2899,4,0,'Gironella','Clarissa','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2900,5,0,'Gironella','Kathlene Meyh','Dangtayan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2901,11,0,'Gomez','Marry Ann','Enaya','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2902,4,0,'Gonzales','Aaron Jayson','Gracia','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2903,1,0,'Gonzales','Geraldine','Obillo','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2904,6,7,'Gorospe','Lhea','H','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2905,5,0,'Goze  ','Ronalyn','Bragado','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2906,15,8,'Grapiza','Rogelyn','Cabbab','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2907,6,4,'Gravidez','Charlemagne','Tabuso','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2908,4,0,'Gray','Kathryn Mae','Gacusana','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2909,8,5,'Gray','Sharlene Cecile','Rapisura','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2910,9,0,'Gray','Chris John','Millan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2911,4,0,'Gregorio','Mark Jayson','','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2912,1,0,'Gresola','Georgielyn','Buyacao','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2913,5,0,'Guerrero','Ginele Mae','Dal-uyen','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2914,6,7,'Guevara','Shane Kaye','Somera','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2915,4,0,'Guieb','Pedrito Jr.','Peña','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2916,4,0,'Guieb','Ej Bryant','Barbado','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2917,13,0,'Guilambo','Jessica Patti','Ecobar','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2918,4,0,'Guiling','Omar','Usop','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2919,6,7,'Guinto','Lovely Jenina','Bennagen','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2920,4,0,'Gumabon','Christine Joy','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2921,6,9,'Gundran','Tricia','Luis','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2922,13,0,'Gundran','Yllen Grace','Ferrer','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2923,8,6,'Habab','Rea','Macenda','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2924,8,6,'Habab ','Cristy ','Marbel','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2925,8,6,'Habab  ','Queenilyn','Rona','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2926,1,0,'Haban','Michell ','Borbe','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2927,11,0,'Haban','Mary Grace','Viernes','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2928,13,0,'Haban','Julie Ann','Manzano','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2929,4,0,'Haboc','Karen','Toquero','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2930,11,0,'Haboc','Honey May','Balagtas','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2931,4,0,'Habon','Danica Jane','Baldago','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2932,4,0,'Habon','Marife','Racusa','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2933,6,7,'Habon','Nova Mae','Tenido','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2934,13,0,'Habon','Jovy Lyn','Asuela','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2935,6,1,'Hadloc','Maricel','Castro','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2936,9,0,'Haduca','Benjie','Baculo','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2937,11,0,'Haduca','Sharlien','Halunajan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2938,11,0,'Haduca','Benjie','Baculo','M',2018,'2018-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2939,2,0,'Hafalla','Sherifa','Mangornong','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2940,1,0,'Hagacer','Janica Dennise','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2941,6,9,'Hagoot','Arene Jay','Bautista','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2942,4,0,'Hallegado','Jayme Anne','Cortez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2943,1,0,'Halos','Jessa','Hachuela','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2944,11,0,'Halos','Maricon','Alcaide','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2945,1,0,'Halunajan','Rodrigo Jr.','Vilog','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2946,13,0,'Halunajan','Annie Gee','Viernes','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2947,11,0,'Heraña','Karren','Gonzales','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2948,4,0,'Hermosa','Janus','Raquepo','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2949,4,0,'Hermosura','Jeritza Maria','Hermosa','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2950,8,6,'Hernaez','Mark Bryan','Torres','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2951,8,6,'Hernanez','Mariel','Toquero','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2952,6,7,'Hipona','Arlon John','Borje','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2953,11,0,'Ilagan','Raizel Cyrille','Abarquez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2954,8,5,'Inigo','Rhea','Llanes','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2955,8,5,'Inigo','Gesselle','Valdez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2956,1,0,'Ismael','Mark Bernard','Garnace','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2957,4,0,'Jacildo','Mariam Mae','Jacinto','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2958,4,0,'Jacobe','Edlyn','Galdonez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2959,6,4,'Jainar','Jonnalyn','Jadormio','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2960,1,0,'Jainar','Merry Joy','Astrero','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2961,15,1,'Jallorina','Chriselle','Baturi','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2962,4,0,'Javier','Clarisse Joy','Hachiles','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2963,4,0,'Javier','Janelle','Angala','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2964,4,0,'Javier','jinky','Rabon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2965,8,6,'Javier','Shiela May','Manzano','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2966,1,0,'Javinar','Julius','Arabe','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2967,11,0,'Javonitalla','May Ann','Osorno','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2968,13,0,'Javonitalla','Eumme','Osorno','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2969,8,6,'Jimenez','Eliza','Bravo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2970,1,0,'Jimenez','Luren','Foronda','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2971,9,0,'Jimenez','Jessie John','Gagto','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2972,15,1,'Juan','Giselle','Oandasan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2973,2,0,'Jugal','Jamella','Dalay-on','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2974,4,0,'Khandaker','Shahara','Gapate','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2975,6,7,'Labiano','Melanie','Combas','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2976,5,0,'Labiano','Christy','Padngaran','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2977,8,6,'Labiano','Febilyn','Lames','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2978,4,0,'Labindao','Vianne','Flores','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2979,4,0,'Lacaden','Desiree','Foronda','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2980,15,1,'Lacaden','Shyrel Jay','Melanio','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2981,2,0,'Lacaden','Levy','Valdez','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2982,4,0,'Lacuata','Jovelyn','Tumacdang','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2983,1,0,'Lagasca','Realiza','Membredo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2984,6,4,'Langcao','Jeruel','Gao-Gao','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2985,14,0,'Laoagan','Karen Jane','Dolliente','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2986,8,5,'Lapitan','Kumayrae Disney','Aglosolos','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2987,4,0,'Lappay','Analyn','Habon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2988,13,0,'Lara','Darlyn','Bustamante','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2989,12,0,'Lara','Darlyn','Bustamante','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2990,6,7,'Lardizabal','Angeli','Monis','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2991,8,5,'Latawan','Rolando Jr.','Gani','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2992,13,0,'Laude','Jocelyn','Angelito','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2993,15,8,'Lavaro','Edelmyr June','Macabeo','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2994,15,1,'Laygo','Kaylin','Rabang','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2995,4,0,'Laylo','Mark Lawrence','Soliven','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2996,1,0,'Lazaga','R-Jay','Detal','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2997,8,6,'Lazarte','Queenci-lyn','Torres','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2998,13,0,'Lazo','Madelyn','Pusayen','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (2999,13,0,'Lebantino','Feljun','Leoncio','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3000,14,0,'Legaspi','Monette','Binay-an','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3001,14,0,'Lestino','Nimfa','Cabanting','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3002,1,0,'Libagen','Kevin','Pucti','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3003,4,0,'Lim','Angelica','Bisting','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3004,1,0,'Limbo','Jayson','Austria','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3005,8,6,'Limon  ','Robelyn','Valdez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3006,1,0,'Limos','John Allen','Gacula','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3007,8,6,'Lipato','Lhea Grace','Alipia','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3008,4,0,'Llanes','Cecille','Cortez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3009,6,1,'Llanes','John Lloyd','Gonzaga','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3010,5,0,'Locquiao','Thelma','Galaites','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3011,4,0,'Lopez','John Michael','Torda','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3012,5,0,'Lorenzo','Sheema','Bansaleo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3013,1,0,'Lorica','Ronald','Suda-i','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3014,1,0,'Lucero','Trexie','Valdez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3015,8,5,'Lucina','Marlon','Novida','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3016,8,6,'Luna','Larraine Rose','Tejada','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3017,2,0,'Lunogan','Catherine','Mina','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3018,6,4,'Lupadit','Lyda','Tawagen','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3019,6,4,'Macailao','Almarie','Lazo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3020,4,0,'Macasaya','Kenneth','Dominguez','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3021,5,0,'Maganis','May Joy','Magpale','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3022,9,0,'Maglinao','Emieleth Joy','Callejo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3023,5,0,'Malazzab','Lea','Taloza','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3024,4,0,'Mallo','Realyn','Cortez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3025,4,0,'Malucay','Beverly Rose','Bacuteng','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3026,1,0,'Managuey','Gener','Balingway','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3027,9,0,'Mangante','Vannie','Bugtong','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3028,13,0,'Mangante','Cherry','Las-igan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3029,8,6,'Mangay-ayam','Christine Mae','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3030,1,0,'Mangay-ayam','Paulo','Diza','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3031,4,0,'Manzano','Angelo','Bando','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3032,4,0,'Manzano','Joan','Jallorina','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3033,8,6,'Manzano','Kyra Joy','Apita','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3034,8,6,'Manzano','Nyziel','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3035,8,6,'Manzano','Sheree','Laguesma','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3036,8,5,'Manzano','Divine Grace','Belano','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3037,1,0,'Manzano','Dexter','Orpilla','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3038,14,0,'Manzano','Maria Minas','Alibang','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3039,11,0,'Manzano','Jocelyn','Rondaris','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3040,13,0,'Manzano','Raquel','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3041,13,0,'Marcena','Alvince','Bata','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3042,4,0,'Mariano','Christine Joy','Abaña','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3043,6,4,'Mariñas','Helen','Kiapan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3044,6,1,'Marquez','Jarrazielle','Manuzon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3045,8,6,'Marquez','Novelyn','Dela Cruz','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3046,6,7,'Martinez','Angel May','Cordova','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3047,15,1,'Martinez','Mark Francis','Arzadon','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3048,8,6,'Mati','Katrina','Shayne','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3049,9,0,'Medrano','Angielic Melody','Ruiz','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3050,1,0,'Mendol','Gregorio Jr.','Vergara','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3051,5,0,'Miguel','Saniata','Olag','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3052,8,5,'Milos','Maricris','Hachuela','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3053,6,1,'Mina','Angelo Paul','Fernando','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3054,8,5,'Mina','George','Petalbero','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3055,6,1,'Molina','Rhea Mae','Abarquez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3056,1,0,'Molina','Niko','Polonio','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3057,1,0,'Molina','Ace Deon','Loque','M',2018,'2018-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3058,4,0,'Molina.Charles','Roe','Adolfo','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3059,15,8,'Moron','Maria Jenefer','Guieb','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3060,1,0,'Mostrero','Jerome','Alimari','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3061,9,0,'Murillo','Judy Ann','Pangayan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3062,6,7,'Natividad','Jennilyn','Galdones','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3063,15,1,'Naungayan','Clerojey','Baloran','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3064,8,5,'Navarrete','Rea','Gacusan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3065,15,8,'Neri','Jayson','Alvarado','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3066,4,0,'Nicolas','Nicole Anne','Haboc','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3067,6,7,'Nicolas','Mary Mae','Sanchez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3068,8,5,'Oandasan','Andrea Celine','Ragunton','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3069,4,0,'Ocampo','Shiella Mae','Pascua','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3070,4,0,'Ongogan','Jhebe','De Guzman','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3071,2,0,'Ordoñez','Lena Fe','Balbalan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3072,4,0,'Orpilla','Keihl Joshua','Gonzalo','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3073,4,0,'Orpilla','Joana Rose','Gacusana','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3074,5,0,'Orpilla','Jolyna','Elefante','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3075,5,0,'Orpilla','Leah','Elefante','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3076,15,8,'Orpilla','Consuelo','Dela Cruz','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3077,15,8,'Orpilla','Rofel','Fernando','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3078,1,0,'Orpilla','Angelito','Gat-eb','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3079,12,0,'Ortiz','Aprilyn','Pangayan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3080,8,5,'Oso','Marvin','Gacusana','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3081,2,0,'Pablo','Glena Marie','Dela Cruz','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3082,8,6,'Pacleb','Erwin','Gansaen','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3083,6,1,'Pacquing','Bernard','Cabatu','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3084,1,0,'Padilla','John Marlo','Rasonable','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3085,6,1,'Padios','Jessa','Galope','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3086,1,0,'Padron','Kenneth','Asuncion','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3087,8,6,'Padsing','Baby Karen','Ambog','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3088,4,0,'Pagaduan','Sheila Mae','Cortez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3089,8,6,'Palino  ','Frances Erika','Gayla','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3090,1,0,'Pangayan','Marie Joy','Noto','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3091,15,1,'Pangisban','Marc Joseph','Ramos','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3092,15,1,'Parahinog','Precious Reine','Dalilis','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3093,9,0,'Parallag','Arjay','Galinato','M',2019,'2019-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3094,15,1,'Pareño','Jovy','Delos Santos','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3095,1,0,'Parillo','Jimbo','Quintanilla','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3096,8,6,'Parra','Mark Jimboy','Tugade','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3097,4,0,'Pascua','Eleazer Jr.','Ramirez','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3098,4,0,'Pascua','Melford John','Quisisem','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3099,8,5,'Pascua','James','Cardo','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3100,15,1,'Pascua','Aira Marie','Longaza','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3101,1,0,'Pascua','Joey','Molina','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3102,1,0,'Pascua','Mary Grace','Galcon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3103,5,0,'Pascual','Jannette','Abel','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3104,9,0,'Pasion','Jonalyn','Galdonez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3105,8,6,'Pastoral','Jolly','Aclin','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3106,15,8,'Pastrana','Honeyllyne','Togupen','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3107,14,0,'Patinio','Jayson','Gacoscos','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3108,4,0,'Payad','Roshella','Jacildo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3109,1,0,'Peñafiel','Gerald','Garrino','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3110,4,0,'Peralta','Jenix','Viernes','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3111,1,0,'Peralta','Geniel','Tabula','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3112,14,0,'Peralta','Maria Fe','Albuera','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3113,13,0,'Perez','Rosie','Oangonillo','',2018,'2018-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3114,5,0,'Perjoles','Leony','Dizon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3115,9,0,'Permejo ','Lhenylyn ','Mendros','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3116,5,0,'Pimentel','Joan','Ragunton','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3117,5,0,'Pimentel','Jenny Ann','Etrata','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3118,4,0,'Pineda','Andrea May','Guanzon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3119,6,3,'Pineda','Alfred','','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3120,2,0,'Pollito','Marice','Iban','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3121,13,0,'Ponce','Allen','Manzano','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3122,4,0,'Ponsoy','Lea Mari Haydi','Tejada','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3123,4,0,'Purgatorio','Alona Mae','Quezon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3124,11,0,'Quilang','Rhejenn','Luis','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3125,4,0,'Quilop','Julie Ann','Haluber','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3126,5,0,'Quines','Everly','Miguel','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3127,4,0,'Quinlat','Honey Lee','Galay','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3128,4,0,'Quiocho','Felipe Jr.','Ayson','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3129,1,0,'Quitoriano  ','Arnel','Leal','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3130,5,0,'Rabaca','Angela Mae','Torda','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3131,4,0,'Rabara','Mark Jayson','Angeles','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3132,8,5,'Rabe','Dominic','Bulatao','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3133,8,5,'Racca  ','Jedalyn','Lascota','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3134,4,0,'Radam','Crisaldo Jr.','Galleto','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3135,4,0,'Rafael','Kim Dave','Bayani','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3136,4,0,'Rafanan','Romulo Jr.','Rafanan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3137,9,0,'Rafanan','Abigail','Buenaventura','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3138,1,0,'Ragasa','Jayson','Gadia','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3139,1,0,'Ragasa','Joy','Bennagen','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3140,13,0,'Ragasa','Angelica','Rabbon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3141,4,0,'Raguro','Nicole','Tacud','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3142,11,0,'Ramirez','Jazlyn','Racca','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3143,4,0,'Ramos','Christine','Valeriano','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3144,4,0,'Ramos','Jimcarl','','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3145,5,0,'Ramos','Elaine','Camacho','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3146,8,6,'Ramos','Eugen','Almazan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3147,8,6,'Ramos','Gema','Gaoat','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3148,8,5,'Ramos','Jestoni','Gallardo','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3149,9,0,'Ramos','Rustom','Habon','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3150,6,1,'Rapada','Genesis','Veronia','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3151,5,0,'Rapada','Febe','Gagarin','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3152,8,5,'Rapada','Mary Rose','Paion','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3153,4,0,'Rapadas','Chester','Hermosura','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3154,13,0,'Rapanot','Lea May','Fasoy','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3155,4,0,'Raras','Angelica','Benitez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3156,15,8,'Raras','Marielle','Benitez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3157,15,8,'Ravalo','Honey Joy','Malano','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3158,4,0,'Raymundo','Geraldine','Bañares','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3159,8,5,'Razon','Alyanna Joyce','Galut','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3160,1,0,'Real','Jeason','Gacusan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3161,1,0,'Reparejo','Rica','Palima','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3162,8,5,'Resonable','Bryan','Higon','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3163,9,0,'Resurreccion','Joan','Paredes','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3164,8,6,'Reyes','Rj','','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3165,8,5,'Reyes','Jeric','Gacutan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3166,1,0,'Reyes','Rock Antonio Jr.','Baobaoen','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3167,1,0,'Rigam ','Ryan ','Abalos','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3168,8,6,'Rigor','Aiza','Dumapit','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3169,11,0,'Riñen','April Jamie','Marquez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3170,6,9,'Rintar','John Lloyd','Gabon','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3171,4,0,'Rival','Diana','Bravo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3172,6,1,'Rivera','Jesabel','Dagson','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3173,9,0,'Rivera','Reden','Pascua','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3174,13,0,'Rivera','Janice','Pascua','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3175,4,0,'Rodriguez','Janery','Mendoza','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3176,6,1,'Rodriguez','Thelma','Bergonio','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3177,2,0,'Rodriguez','Rigel','Galut','',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3178,1,0,'Rodriguez  ','John Laurenz','Gandol','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3179,6,1,'Rojo','Edalicia Joy','U','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3180,6,1,'Roldan','Reslyn','Compra','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3181,9,0,'Roldan','Reina','Gamueda','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3182,5,0,'Roqueta','Marlo','Laluna','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3183,4,0,'Rosimo','Mark Dominic','Racuya','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3184,9,0,'Rous  ','Jennylyn','Rampa','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3185,1,0,'Ruar','Rozelyn','Alcantara','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3186,4,0,'Rubio','Angelita','Carbonel','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3187,4,0,'Ruiz','Jasper','Ingen','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3188,1,0,'Ruiz','Jestoni ','Valdez','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3189,8,5,'Rulloda','Alyssa Mae','Gravilez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3190,8,6,'Sabado','Jenny Ann','Gacusan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3191,6,1,'Sabado ','Kimberlyn ','Valois','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3192,8,5,'Sabido','Cristine','Delfin','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3193,6,3,'Sacla','Angelica','Piswec','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3194,1,0,'Sacyong','Marie Joy ','Fianitog','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3195,4,0,'Sagun','Edlyn','Libao','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3196,8,5,'Sagun','Junalyn','Misalang','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3197,1,0,'Salay','Josefa','Adayan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3198,4,0,'Salazar','Joshua','Balisi','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3199,15,1,'Salazar','Reva Via','Gonzalo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3200,13,0,'Salazar','Reynie Venise','Gonzalo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3201,12,0,'Salazar','Ralph','Inigo','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3202,2,0,'Saldua','Clipsen','Rebroso','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3203,13,0,'Salem','Nor-hanifa','Macasilag','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3204,15,1,'Sales','Fritzie Grace','Gallano','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3205,4,0,'Salgado','Stephanie','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3206,4,0,'Sanchez','Stephanie','Lavaro','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3207,1,0,'Sanchez','Marycar ','Bello','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3208,1,0,'Santiago','Yves','Nicavera','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3209,5,0,'Santolaja','Princess Joy','Rayray','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3210,8,5,'Santos','Judy Ann','Gorospe','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3211,8,5,'Sapioc','France Lancel Nick','Quidangen','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3212,4,0,'Saura','Loremie','Gabor','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3213,4,0,'Seña','Joshoua Kristoffer','Quidangen','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3214,2,0,'Serafino','Nelly Ann','Pagaduan','',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3215,4,0,'Servillo','Alvin','Ganiban','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3216,8,5,'Sevilla','Aila','Alayon','F',2018,'2018-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3217,4,0,'Siglon','Vialyn','Patindo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3218,1,0,'Silva','Chisther','Cabatas','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3219,9,0,'Sipin','Shen-lyn','Delos Santos','F',2019,'2019-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3220,4,0,'Solatre','Genrio Austin','Borje','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3221,5,0,'Soliven','Julie Anne','Dewilan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3222,8,5,'Soliven','Alvin','Gantol','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3223,8,6,'Soliven  ','Shirley','Hadoc','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3224,15,1,'Soria','Mialyn','Ruiz','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3225,4,0,'Sultan','Cedrick Abubacar','Solas','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3226,1,0,'Sumakiab','Jonald','Chua','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3227,8,6,'Sumbad','Jordan','Sumbad','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3228,5,0,'Sunio','Mildred','Turgano','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3229,1,0,'Tabaniag','Jomelyn','Castillo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3230,1,0,'Tabion','Ma. Fe','Tabingo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3231,1,0,'Talavera','Francis Teo','Hezeta','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3232,4,0,'Talledo','Jerphi','Escobar','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3233,1,0,'Tamayo','Gerold','Guzman','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3234,1,0,'Tamayo','Jovanie','Guzman','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3235,1,0,'Tamayo','Aileen','Frial','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3236,12,0,'Tamayo','Samantha','Sabacan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3237,4,0,'Tan','April Joy','Dolores','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3238,13,0,'Tawali','Rio Roxanne','Segundo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3239,1,0,'Tayaben','Dianne Joy','Guilambo','F',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3240,8,6,'Tejada','Daniela','Sipin','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3241,4,0,'Teodoro','Bon Joel','Fontanilla','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3242,6,7,'Terio','Alejandro Jr.','Guistoc','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3243,2,0,'Tobias','Amy','Naungayan','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3244,2,0,'Togupen','Lianne','Gamueda','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3245,4,0,'Tolentino','Christian Claus','Albay','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3246,8,6,'Tolentino','Kris Maygwen','Albay','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3247,8,6,'Tolentino','Jhocel','Ronquillo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3248,6,7,'Tong-alan','Louis Alberto','Langas','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3249,8,5,'Toquero','Alvin','Jackson','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3250,8,5,'Toquero','Landa','Rapada','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3251,11,0,'Toquero','Laarnie','Loveria','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3252,8,5,'Trelles  ','Jocelyn','Tabinas','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3253,4,0,'Trupa','Roan','Fabro','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3254,4,0,'Tubera','Lovely May','Haban','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3255,4,0,'Tudayan','John Rey','Joven','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3256,14,0,'Tumacdang','Argelyn','Morales','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3257,14,0,'Tuscano','Billy Jean','Gayyed','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3258,6,1,'Udan','Frincess Mae','I','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3259,8,6,'Udarbe','Dianne','Oandasan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3260,6,3,'Ugalde','Sharlyn','Rondon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3261,8,6,'Ugalde','Rochelle','Mallo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3262,1,0,'Ugalde  ','Fernando Jr.','Alcantra','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3263,8,5,'Umalos','Edlyn','Tugas','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3264,15,1,'Uminga','Aldrick','Benagen','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3265,1,0,'Urmin','Diego Jr.','Matias','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3266,13,0,'Utana','Jonabel','Gomintong','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3267,2,0,'Uyad','Jonalyn','Gawaen','F',2018,'2018-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3268,4,0,'Valdez','Dandin','Layao','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3269,4,0,'Valdez','Mary Joy','Fabros','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3270,4,0,'Valdez','Rexielene','Galleta','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3271,4,0,'Valdez','Sherielyn','Valdez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3272,5,0,'Valdez','Catherine','Valdez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3273,8,6,'Valdez','Ruby Ann','Gagarin','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3274,8,5,'Valdez','Leamay-anne','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3275,8,5,'Valdez','Wilfredo jr.','Habon','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3276,8,5,'Valdez','Charisse','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3277,1,0,'Valdez','Adel Char','Laureaga','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3278,1,0,'Valdez','Amado Jr.','Sunggay','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3279,1,0,'Valdez','Benjie','Balutao','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3280,1,0,'Valdez','John Daryl','Cuello','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3281,14,0,'Valdez','Neslie','Sanchez','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3282,9,0,'Valdez','Estefania','Dapig','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3283,9,0,'Valdez','Sinamar','Cabangcala','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3284,13,0,'Valdez','Vanessa','','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3285,8,5,'Valdez  ','Jennylyn','Molina','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3286,1,0,'Valeza','Daryl','Philuna','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3287,8,6,'Velarde','Kristine','Roldan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3288,15,8,'Velasco','Gemmel Mika','Tejada','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3289,9,0,'Velasco','Jean Marie','Aguro','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3290,8,5,'Verbo','Angel','Bagno','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3291,6,9,'Verzosa','Ruthea','Cruz','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3292,5,0,'Viernes','Marjoe','Manzano','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3293,8,5,'Viernes','Vanesa','Ballocanag','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3294,1,0,'Viernes','Simmer','Gorio','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3295,6,3,'Villalobos','April Joy','Barnachea','F',2018,'2018-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3296,4,0,'Villanueva','Marvin','Octaviano','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3297,8,5,'Villanueva','Christian','Manzano','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3298,15,1,'Villanueva','May','Esio','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3299,1,0,'Villanueva','Cherrifer','Astocia','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3300,1,0,'Villanueva','Dindo','Calbayan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3301,8,5,'Villanueva  ','Emmanuel Joseph','Galimba','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3302,8,5,'Villar','John Mark ','Jacildo','M',2018,'2018-07-27');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3303,4,0,'Vilog','Brendalyn','Miranda','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3304,4,0,'Vilog','Shiela Marie','Haban','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3305,1,0,'Vilog','Darwin John','Haban','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3306,9,0,'Vilog  ','Gellie An','Haduca','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3307,14,0,'Wacan','Kathlene','Bitongan','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3308,6,7,'Wagennan','Aaron','Baludda','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3309,1,0,'Wattang','Sammy','Balanza','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3310,4,0,'Yagong','Cristy','Sevillo','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3311,1,0,'Yang','Kate Ericka','Rendon','F',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3312,1,0,'Yay-aen','Lary','Anton','M',2018,'2018-12-17');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3313,4,0,'Ysit','John Henry','Gadiaza','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3314,1,0,'Yulo','Ederson Jr.','Gacayan','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3315,1,0,'Zamora  ','Kris','Cariño','M',2019,'2019-05-30');
insert  into `alumnus`(`id`,`course_id`,`major_id`,`lastname`,`firstname`,`middlename`,`sex`,`batch`,`date_of_graduation`) values (3316,9,0,'Zareno','Khristeen Pamela','Feraldo','F',2019,'2019-05-30');

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
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
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
  `data` blob DEFAULT NULL,
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
  `title` text DEFAULT NULL,
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
insert  into `badge`(`id`,`stage`,`title`,`table`) values (7,7,'Service Provider','employment-status');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `badge_user` */

insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (1,1,1);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (2,1,2);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (3,1,3);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (4,1,4);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (5,1,5);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (6,1,6);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (7,1,7);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (8,3,1);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (9,3,2);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (10,3,3);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (11,3,4);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (12,3,5);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (13,3,6);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (14,1,13);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (15,1,8);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (16,1,10);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (17,1,11);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (18,1,12);
insert  into `badge_user`(`id`,`user_id`,`badge_id`) values (19,1,9);

/*Table structure for table `business_line` */

DROP TABLE IF EXISTS `business_line`;

CREATE TABLE `business_line` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
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
  `other_reason` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_change_job` (`change_job_reason_id`),
  CONSTRAINT `FK_change_job` FOREIGN KEY (`change_job_reason_id`) REFERENCES `change_job_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `change_job` */

/*Table structure for table `change_job_reason` */

DROP TABLE IF EXISTS `change_job_reason`;

CREATE TABLE `change_job_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `chronology` */

insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (1,'general-information',1,'','2',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (2,'educational-attainment',2,'1','3',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (3,'examination',2,'2','4',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (4,'taking-course',2,'3','5',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (5,'training',3,'4','6',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (6,'pursue-study',3,'5','7',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (7,'employment',4,'6','8,9',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (8,'unemployment',4,'7','',300,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (9,'employment-status',4,'7','10',500,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (10,'place-of-work',4,'9','11',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (11,'first-job-after',4,'10','12,21',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (12,'change-job',4,'11','13',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (13,'stay-job-range',4,'12','14',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (14,'find-job',4,'13','15',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (15,'land-job',4,'14','16',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (16,'job-level',4,'15','17',200,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (17,'initial-gross',4,'16','18',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (18,'relevant-job',4,'17','20,19',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (19,'competency',4,'18','20',200,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (20,'suggestion',4,'19','',200,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (21,'stay-job',4,'11','22',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (22,'first-job',4,'21','12,23',100,0);
insert  into `chronology`(`id`,`table`,`stage_id`,`previous_stage`,`next_stage`,`points`,`subpoints`) values (23,'accept-job',4,'22','13',100,0);

/*Table structure for table `chronology_user` */

DROP TABLE IF EXISTS `chronology_user`;

CREATE TABLE `chronology_user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `chronology_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_chronology_user` (`chronology_id`),
  CONSTRAINT `FK_chronology_user` FOREIGN KEY (`chronology_id`) REFERENCES `chronology` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `chronology_user` */

insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (1,1,1);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (2,1,2);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (3,1,3);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (4,1,4);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (5,1,5);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (6,1,6);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (7,1,7);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (8,3,1);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (9,1,9);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (10,3,2);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (11,3,3);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (12,3,4);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (13,3,5);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (14,3,6);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (15,3,7);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (16,1,10);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (17,1,11);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (20,1,21);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (21,1,22);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (22,1,23);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (23,1,13);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (24,1,14);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (25,1,15);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (26,1,16);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (27,1,17);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (28,1,18);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (29,1,19);
insert  into `chronology_user`(`id`,`user_id`,`chronology_id`) values (31,1,20);

/*Table structure for table `classification` */

DROP TABLE IF EXISTS `classification`;

CREATE TABLE `classification` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
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
  `name` text DEFAULT NULL,
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
  `competency_skill_id` varchar(100) DEFAULT NULL,
  `other_competency` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_competency` (`competency_skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `competency` */

insert  into `competency`(`id`,`user_id`,`competency_skill_id`,`other_competency`) values (1,1,'1,2','');

/*Table structure for table `competency_skill` */

DROP TABLE IF EXISTS `competency_skill`;

CREATE TABLE `competency_skill` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
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
  `name` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_course` (`college_id`),
  CONSTRAINT `FK_course` FOREIGN KEY (`college_id`) REFERENCES `college` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `course` */

insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (1,1,'BSCrim','Bachelor of Science in Criminology');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (2,1,'BSM','Bachelor of Science in Midwifery');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (3,1,'ABPolSci','Bachelor of Arts in Political Science');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (4,1,'BSCS','Bachelor of Science in Computer Science');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (5,2,'BEE','Bachelor of Elementary Education');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (6,2,'BSE','Bachelor of Secondary Education');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (7,2,'BCAEd','Bachelor of Culture and Arts Education');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (8,3,'BSBA','Bachelor of Science in Business Administration');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (9,3,'BSOA','Bachelor of Science in Office Administration');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (10,1,'ABEng','Bachelor of Arts in English');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (11,3,'AMOE','Associate in Medical Office Administration\r\n');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (12,3,'COA','Certificate in Office Administration\r\n');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (13,3,'AOA','Associate in Office Administration\r\n');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (14,3,'DM','Diploma in Midwifery\r\n');
insert  into `course`(`id`,`college_id`,`abbreviation`,`name`) values (15,1,'BA','Bachelor of Arts');

/*Table structure for table `educational_attainment` */

DROP TABLE IF EXISTS `educational_attainment`;

CREATE TABLE `educational_attainment` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `degree` text DEFAULT NULL,
  `college` text DEFAULT NULL,
  `year_graduated` int(4) DEFAULT NULL,
  `honors` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `educational_attainment` */

insert  into `educational_attainment`(`id`,`user_id`,`degree`,`college`,`year_graduated`,`honors`) values (1,1,'BS Computer Science','Don Mariano Marcos Memorial State University - South La Union Campus',2014,'-');
insert  into `educational_attainment`(`id`,`user_id`,`degree`,`college`,`year_graduated`,`honors`) values (2,1,'Masters in Information Technology','Don Mariano Marcos Memorial State University - Mid La Union Campus',2017,'-');
insert  into `educational_attainment`(`id`,`user_id`,`degree`,`college`,`year_graduated`,`honors`) values (3,3,'wqeqweqw','eqweqweqw',21312,'w');

/*Table structure for table `employment` */

DROP TABLE IF EXISTS `employment`;

CREATE TABLE `employment` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `employed` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `employment` */

insert  into `employment`(`id`,`user_id`,`employed`) values (1,1,'1');
insert  into `employment`(`id`,`user_id`,`employed`) values (2,3,'1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `employment_status` */

insert  into `employment_status`(`id`,`user_id`,`employment_status`,`occupation`,`classification_id`,`company_name`,`business_line_id`) values (2,1,'Casual','dasdas',1,'dsdasda',1);

/*Table structure for table `examination` */

DROP TABLE IF EXISTS `examination`;

CREATE TABLE `examination` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `name_of_examination` varchar(200) DEFAULT NULL,
  `date_taken` date DEFAULT NULL,
  `rating` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `examination` */

insert  into `examination`(`id`,`user_id`,`name_of_examination`,`date_taken`,`rating`) values (1,1,'Civil Service Examination','2020-02-05','80.85');
insert  into `examination`(`id`,`user_id`,`name_of_examination`,`date_taken`,`rating`) values (2,3,'eqweqw','0000-00-00','80.85');

/*Table structure for table `find_job` */

DROP TABLE IF EXISTS `find_job`;

CREATE TABLE `find_job` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `find_job_reason_id` int(255) DEFAULT NULL,
  `other_reason` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_find_job` (`find_job_reason_id`),
  CONSTRAINT `FK_find_job` FOREIGN KEY (`find_job_reason_id`) REFERENCES `find_job_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `find_job` */

insert  into `find_job`(`id`,`user_id`,`find_job_reason_id`,`other_reason`) values (1,1,1,'');

/*Table structure for table `find_job_reason` */

DROP TABLE IF EXISTS `find_job_reason`;

CREATE TABLE `find_job_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `first_job` */

insert  into `first_job`(`id`,`user_id`,`first_job`) values (1,1,'1');

/*Table structure for table `first_job_after` */

DROP TABLE IF EXISTS `first_job_after`;

CREATE TABLE `first_job_after` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `first_job` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `first_job_after` */

insert  into `first_job_after`(`id`,`user_id`,`first_job`) values (1,1,'1');

/*Table structure for table `follower` */

DROP TABLE IF EXISTS `follower`;

CREATE TABLE `follower` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `follower_id` int(255) DEFAULT NULL,
  `followed_id` int(255) DEFAULT NULL,
  `datetime` datetime DEFAULT current_timestamp(),
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
  `permanent_address` text DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `civil_status` enum('Single','Married','Separated/Divorced','Married but not living with a spouse','Born a child but not married','Single Parent','Widow or Widower') DEFAULT NULL,
  `sex` enum('Male','Female') DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `region_id` varchar(2) DEFAULT NULL,
  `province_id` varchar(3) DEFAULT NULL,
  `location_of_residence` enum('City','Municipality') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `general_information` */

insert  into `general_information`(`id`,`user_id`,`firstname`,`middlename`,`lastname`,`extname`,`permanent_address`,`email_address`,`contact_number`,`civil_status`,`sex`,`birthday`,`region_id`,`province_id`,`location_of_residence`) values (1,1,'Mark Anthony','Vicena','Espiritu','','test','mark.a.v.espiritu@gmail.com','09272771511','Single','Male','1993-02-05','01','28','City');
insert  into `general_information`(`id`,`user_id`,`firstname`,`middlename`,`lastname`,`extname`,`permanent_address`,`email_address`,`contact_number`,`civil_status`,`sex`,`birthday`,`region_id`,`province_id`,`location_of_residence`) values (2,3,'Danielle','Ann','Gagarin','','dsadas','daniellegagarin@gmail.com','09272771511','Single','Male','2012-03-04','01','28','City');

/*Table structure for table `initial_gross` */

DROP TABLE IF EXISTS `initial_gross`;

CREATE TABLE `initial_gross` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `initial_gross_range_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `initial_gross` */

insert  into `initial_gross`(`id`,`user_id`,`initial_gross_range_id`) values (1,1,1);

/*Table structure for table `initial_gross_range` */

DROP TABLE IF EXISTS `initial_gross_range`;

CREATE TABLE `initial_gross_range` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `job_level` */

insert  into `job_level`(`id`,`user_id`,`job_level_position_id`,`first_job`,`current_job`) values (1,1,1,'1','1');
insert  into `job_level`(`id`,`user_id`,`job_level_position_id`,`first_job`,`current_job`) values (2,1,2,'1','0');
insert  into `job_level`(`id`,`user_id`,`job_level_position_id`,`first_job`,`current_job`) values (3,1,3,'0','0');
insert  into `job_level`(`id`,`user_id`,`job_level_position_id`,`first_job`,`current_job`) values (4,1,4,'0','0');

/*Table structure for table `job_level_position` */

DROP TABLE IF EXISTS `job_level_position`;

CREATE TABLE `job_level_position` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
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
  `other_reason` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_land_job` (`land_job_range_id`),
  CONSTRAINT `FK_land_job` FOREIGN KEY (`land_job_range_id`) REFERENCES `land_job_range` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `land_job` */

insert  into `land_job`(`id`,`user_id`,`land_job_range_id`,`other_reason`) values (1,1,1,'');

/*Table structure for table `land_job_range` */

DROP TABLE IF EXISTS `land_job_range`;

CREATE TABLE `land_job_range` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
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
  `name` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `major` */

insert  into `major`(`id`,`course_id`,`name`) values (1,6,'English');
insert  into `major`(`id`,`course_id`,`name`) values (2,6,'Filipino');
insert  into `major`(`id`,`course_id`,`name`) values (3,6,'Mathematics');
insert  into `major`(`id`,`course_id`,`name`) values (4,6,'Social Sciences');
insert  into `major`(`id`,`course_id`,`name`) values (5,8,'Human Resource Development Management');
insert  into `major`(`id`,`course_id`,`name`) values (6,8,'Financial Management');
insert  into `major`(`id`,`course_id`,`name`) values (7,8,'MAPEH');
insert  into `major`(`id`,`course_id`,`name`) values (8,6,'Political Science');
insert  into `major`(`id`,`course_id`,`name`) values (9,6,'General Science');

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
  `reason` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `other_taking_course` */

insert  into `other_taking_course`(`id`,`user_id`,`reason`) values (1,1,'');
insert  into `other_taking_course`(`id`,`user_id`,`reason`) values (2,3,'');
insert  into `other_taking_course`(`id`,`user_id`,`reason`) values (3,1,'');

/*Table structure for table `place_of_work` */

DROP TABLE IF EXISTS `place_of_work`;

CREATE TABLE `place_of_work` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `place_of_work` enum('Local','Abroad') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `place_of_work` */

insert  into `place_of_work`(`id`,`user_id`,`place_of_work`) values (1,1,'Local');

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
  `bio` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `profile` */

insert  into `profile`(`user_id`,`name`,`public_email`,`gravatar_email`,`gravatar_id`,`location`,`website`,`bio`,`timezone`) values (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `profile`(`user_id`,`name`,`public_email`,`gravatar_email`,`gravatar_id`,`location`,`website`,`bio`,`timezone`) values (3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `pursue_study` */

DROP TABLE IF EXISTS `pursue_study`;

CREATE TABLE `pursue_study` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `pursue_study_reason_id` int(255) DEFAULT NULL,
  `other_reason` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pursue_study_reason` (`pursue_study_reason_id`),
  CONSTRAINT `FK_pursue_study` FOREIGN KEY (`pursue_study_reason_id`) REFERENCES `pursue_study_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_pursue_study_reason` FOREIGN KEY (`pursue_study_reason_id`) REFERENCES `pursue_study_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `pursue_study` */

insert  into `pursue_study`(`id`,`user_id`,`pursue_study_reason_id`,`other_reason`) values (1,1,1,'');
insert  into `pursue_study`(`id`,`user_id`,`pursue_study_reason_id`,`other_reason`) values (2,3,1,'');

/*Table structure for table `pursue_study_reason` */

DROP TABLE IF EXISTS `pursue_study_reason`;

CREATE TABLE `pursue_study_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `relevant_job` */

insert  into `relevant_job`(`id`,`user_id`,`relevant_job`) values (2,1,'1');

/*Table structure for table `social_account` */

DROP TABLE IF EXISTS `social_account`;

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `title` text DEFAULT NULL,
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
  `stay_job_reason_id` varchar(255) DEFAULT NULL,
  `other_reason` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_stay_job` (`stay_job_reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `stay_job` */

insert  into `stay_job`(`id`,`user_id`,`stay_job_reason_id`,`other_reason`) values (6,1,'1,2,3,4','');

/*Table structure for table `stay_job_range` */

DROP TABLE IF EXISTS `stay_job_range`;

CREATE TABLE `stay_job_range` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `stay_job_range_reason_id` int(255) DEFAULT NULL,
  `other_job_range` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_stay_job_range` (`stay_job_range_reason_id`),
  CONSTRAINT `FK_stay_job_range` FOREIGN KEY (`stay_job_range_reason_id`) REFERENCES `stay_job_range_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `stay_job_range` */

insert  into `stay_job_range`(`id`,`user_id`,`stay_job_range_reason_id`,`other_job_range`) values (1,1,1,'');

/*Table structure for table `stay_job_range_reason` */

DROP TABLE IF EXISTS `stay_job_range_reason`;

CREATE TABLE `stay_job_range_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
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
  `title` text DEFAULT NULL,
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
  `suggestion` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `suggestion` */

insert  into `suggestion`(`id`,`user_id`,`suggestion`) values (1,1,'sasdasdasdas');

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `taking_course` */

insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (1,1,1,'1','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (2,1,2,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (3,1,3,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (4,1,4,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (5,1,5,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (6,1,6,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (7,1,7,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (8,1,8,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (9,1,9,'1','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (10,1,10,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (11,1,11,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (12,1,12,'1','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (13,1,13,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (14,1,14,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (15,3,1,'1','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (16,3,2,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (17,3,3,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (18,3,4,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (19,3,5,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (20,3,6,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (21,3,7,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (22,3,8,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (23,3,9,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (24,3,10,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (25,3,11,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (26,3,12,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (27,3,13,'0','0');
insert  into `taking_course`(`id`,`user_id`,`taking_course_id`,`undergrad`,`graduate`) values (28,3,14,'0','0');

/*Table structure for table `taking_course_reason` */

DROP TABLE IF EXISTS `taking_course_reason`;

CREATE TABLE `taking_course_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
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
insert  into `token`(`user_id`,`code`,`created_at`,`type`) values (3,'Y9k9zZMN3AoNlduSYcyvdJu2lnTp1crQ',1588591286,0);

/*Table structure for table `training` */

DROP TABLE IF EXISTS `training`;

CREATE TABLE `training` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `duration_start` date DEFAULT NULL,
  `duration_end` date DEFAULT NULL,
  `credits_earned` int(10) DEFAULT NULL,
  `institution` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `training` */

insert  into `training`(`id`,`user_id`,`title`,`duration_start`,`duration_end`,`credits_earned`,`institution`) values (1,1,'Sample','2019-02-05','2019-03-05',17,'Sample');
insert  into `training`(`id`,`user_id`,`title`,`duration_start`,`duration_end`,`credits_earned`,`institution`) values (2,3,'wew','0000-00-00','0000-00-00',1,'asdsadas');

/*Table structure for table `unemployment` */

DROP TABLE IF EXISTS `unemployment`;

CREATE TABLE `unemployment` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `unemployment_reason_id` int(255) DEFAULT NULL,
  `other_reason` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_unemployment` (`unemployment_reason_id`),
  CONSTRAINT `FK_unemployment` FOREIGN KEY (`unemployment_reason_id`) REFERENCES `unemployment_reason` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `unemployment` */

/*Table structure for table `unemployment_reason` */

DROP TABLE IF EXISTS `unemployment_reason`;

CREATE TABLE `unemployment_reason` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
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
  `flags` int(11) NOT NULL DEFAULT 0,
  `last_login_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`email`,`password_hash`,`auth_key`,`confirmed_at`,`unconfirmed_email`,`blocked_at`,`registration_ip`,`created_at`,`updated_at`,`flags`,`last_login_at`) values (1,'markespiritu','mark.a.v.espiritu@gmail.com','$2y$10$vKgibHUf2mkZEDQg6A0.pekTJ0VzW3sQXK2k4qjjyr1uSNRLrI10a','RbSYbiZ97a_15QE-NqDe283YlE2PxcNc',1,NULL,NULL,'::1',1565532403,1565532403,0,1593928384);
insert  into `user`(`id`,`username`,`email`,`password_hash`,`auth_key`,`confirmed_at`,`unconfirmed_email`,`blocked_at`,`registration_ip`,`created_at`,`updated_at`,`flags`,`last_login_at`) values (3,'danielle','danielleanngagarin@gmail.com','$2y$10$.Mf3E5BKJTAWoKbCUn0wQ.QNj3wRBYsqx5nOmmFLJqvAHJuHTHM/W','JaqfkijV09RvCzkG_zJgFdfXwtycN_6o',1,NULL,NULL,'::1',1588591286,1588591286,0,1593928667);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user_info` */

insert  into `user_info`(`user_id`,`course_id`,`major_id`,`firstname`,`middlename`,`lastname`,`extname`,`year_graduated`) values (1,8,6,'Mark Anthony','Vicena','Espiritu','',2014);
insert  into `user_info`(`user_id`,`course_id`,`major_id`,`firstname`,`middlename`,`lastname`,`extname`,`year_graduated`) values (3,3,1,'Danielle','Ann','Gagarin','',2015);

/*Table structure for table `voucher_code` */

DROP TABLE IF EXISTS `voucher_code`;

CREATE TABLE `voucher_code` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `merchant` varchar(100) DEFAULT NULL,
  `voucher_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `voucher_code` */

insert  into `voucher_code`(`id`,`merchant`,`voucher_code`) values (1,'LAZADA','PQ43SR');
insert  into `voucher_code`(`id`,`merchant`,`voucher_code`) values (2,'SHOPPEE','PRS234');

/*Table structure for table `voucher_code_user` */

DROP TABLE IF EXISTS `voucher_code_user`;

CREATE TABLE `voucher_code_user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `voucher_code_id` int(255) DEFAULT NULL,
  `date_claimed` date DEFAULT NULL,
  `datetime` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `voucher_code_user` */

insert  into `voucher_code_user`(`id`,`user_id`,`voucher_code_id`,`date_claimed`,`datetime`) values (2,1,2,'2020-07-05','2020-07-05 10:34:14');
insert  into `voucher_code_user`(`id`,`user_id`,`voucher_code_id`,`date_claimed`,`datetime`) values (3,3,1,'2020-07-05','2020-07-05 11:25:26');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
