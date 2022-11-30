/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.3.20-MariaDB : Database - face-sample
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`face-sample` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `face-sample`;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `name` varchar(199) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`emp_id`,`login_id`,`name`,`email`) values (1,1,'sadad san kar','sankarb.b00@gmail.com'),(2,2,'sadad san kar','sankarb.b00@gmail.com'),(3,3,'sadad san kar','sankarb.b00@gmail.com'),(4,4,'sankar','sankarb.b00@gmail.com');

/*Table structure for table `face` */

DROP TABLE IF EXISTS `face`;

CREATE TABLE `face` (
  `face_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `img1` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`face_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `face` */

insert  into `face`(`face_id`,`name`,`img1`) values (1,'sankar','static/uploads/7b073882-c409-4a8b-bc59-067d9e842995avatar.jpg'),(2,'sankar','static/uploads/6182c8a9-9955-453d-b0cb-1745e6cf74d0avatar.jpg'),(3,'New Pic','static/uploads/242406fd-ac5a-4c5f-9cb7-0016d7bd4138banner.jfif'),(4,'hello','static/uploads/21bc0ff1-0f38-4fdc-b049-52e9b8357c17new3.jpg'),(5,'New','static/uploads/3712bb96-2346-4855-a04d-205476281775testimonial-1.jpg'),(6,'john','static/uploads/e6770485-dc3d-45b5-b103-a43cdae26d4bteam-3.png'),(7,'sadad san kar','static/uploads/7ca80cf9-f271-4b41-ab9e-9a8f14cff5d5team-4.jpg'),(8,'sankar sankar','static/uploads/88f52958-946d-496a-8740-ce957c17ecc2team-2.png'),(9,'bkbk','static/uploads/c74626ec-5991-4d5c-8c80-f63c53cd9100team-2.png'),(10,'bkbk','static/uploads/867bb3a9-242b-4560-b2f7-1d45ef43df64team-2.png'),(11,'sda','static/uploads/4c42d0fa-021c-41b2-bc71-57bda2b3365atestimonials-4.jpg'),(12,'aleena','static/uploads/cfd28601-0755-4c9c-8580-95fea0c7f15f'),(13,'sankar','static/uploads/8ba4d442-f4db-47c5-a080-8ea3c44818d2testimonials-4.jpg'),(14,'sankar','static/uploads/4fd04159-575e-460c-ab8c-5b300555efedtestimonials-5.jpg'),(15,'unknown','static/uploads/8c15f52e-8ecd-4df4-87b0-a081f008b7e5testimonial-1.jpg'),(16,'hello','static/uploads/0d1261c2-f5c9-4f01-8345-287717fa9f8eteam-1.png'),(17,'hello','static/uploads/ed3f630a-9c33-440d-af95-5a2aec103f59team-1.png');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`usertype`) values (1,'employee'),(2,'employee'),(3,'employee'),(4,'employee');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
