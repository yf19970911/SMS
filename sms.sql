# Host: 127.0.0.1  (Version: 5.5.15)
# Date: 2019-10-16 15:14:23
# Generator: MySQL-Front 5.3  (Build 4.269)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin"
#

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES (1,'杨帆','123'),(2,'唐慧婷','520'),(3,'baby','杨爱婷'),(8,'入职','加油'),(9,'入职','加油'),(10,'入职','加油'),(11,'入职','加油');

#
# Structure for table "student"
#

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `schoolday` datetime DEFAULT NULL,
  `marjor_id` int(11) DEFAULT NULL,
  `college_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

#
# Data for table "student"
#

INSERT INTO `student` VALUES (2,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(3,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(4,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(5,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(6,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(7,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(8,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(9,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(10,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(11,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(12,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(13,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(15,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(16,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(17,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(18,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(19,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(20,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(21,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(22,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(23,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(24,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(25,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(26,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(27,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(28,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(29,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(30,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(31,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(32,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(33,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(34,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(35,'yf',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(36,'坚持就是胜利！',1,'2019-10-15 09:55:18','2019-10-15 09:55:18',1,1),(38,'杨帆',1,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,1),(39,'唐慧婷',0,'1997-09-11 00:00:00','2016-09-01 00:00:00',1,6),(40,'坚持就是胜利！',1,'2019-10-15 09:45:45','2019-10-15 09:45:45',1,1);

#
# Structure for table "student1"
#

CREATE TABLE `student1` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(20) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "student1"
#

INSERT INTO `student1` VALUES (1,'student_A',1),(2,'student_B',1),(3,'student_C',1),(4,'student_D',2),(5,'student_E',2),(6,'student_F',2);

#
# Structure for table "teacher"
#

CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "teacher"
#

INSERT INTO `teacher` VALUES (1,'teacher1'),(2,'teacher2');

#
# Structure for table "class"
#

CREATE TABLE `class` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `fk_teacher_id` (`teacher_id`),
  CONSTRAINT `fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "class"
#

INSERT INTO `class` VALUES (1,'class_a',1),(2,'class_b',2);
