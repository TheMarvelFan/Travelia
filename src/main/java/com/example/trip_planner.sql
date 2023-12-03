
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`trip_planner` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `trip_planner`;

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `c_id` varchar(50) DEFAULT NULL,
  `p_n` varchar(50) DEFAULT NULL,
  `b_date` date DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`id`,`c_id`,`p_n`,`b_date`) values (1,'ajay@gmail.com','2','2016-03-15'),(2,'abc@gmail.com','2','2016-03-17'),(3,'ajay@gmail.com','2','2016-03-17'),(4,'ajay@gmail.com','5','2016-03-17'),(5,'ajay@gmail.com','2','2016-05-11');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `f_id` int(4) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) DEFAULT NULL,
  `sub` varchar(50) DEFAULT NULL,
  `msg` varchar(500) DEFAULT NULL,
  `f_date` date DEFAULT NULL,
  UNIQUE KEY `f_id` (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`f_id`,`id`,`sub`,`msg`,`f_date`) values (1,'ajay@gmail.com','dfd','gf gfgf hgfgh hhh ',NULL);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`password`, `email`) values ('a1','abcd', 'abcd@xyz.com');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `b_date` date DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`id`,`fname`,`email`,`address`,`pin`,`city`,`state`,`phone`,`b_date`) values (1,'ajay','ajay@gmail.com','sajsa asasaj ','2245','lucknow','up','225','2016-03-15'),(2,'as','abc@gmail.com','dsaj','122','sdas','asa','12121','2016-03-17');

/*Table structure for table `trip` */

DROP TABLE IF EXISTS `trip`;

CREATE TABLE `trip` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `t_cat` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `trip_day` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `disc` varchar(500) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `a_date` date DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `trip` */

insert  into `trip`(`id`, `t_cat`, `location`, `trip_day`, `price`, descr, `photo`, `a_date`) values (7, 'Honeymoon_Package', 'delhi', 4, 25400, 'ds ss wd', './Jellyfish.jpg', '2016-05-03'),(10, 'Family_Travel', 'dsk', 3, 2332, 'ass sdasa as', './Koala.jpg', '2016-05-03'),(11, 'Honeymoon_Package', 'dj', 5, 1212, 'ds dss ', './Hydrangeas.jpg', '2016-05-03'), (12,'Group_Travel', 'Nainital', 5, 2500, 'dfd  dfdf dfdfd df', './p4.jpg', '2016-05-03'), (13, 'Honeymoon_Package', 'dfdkq', 11, 12112, 'dsds dsds sdsd sds', './p1.jpg', '2016-05-03');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
