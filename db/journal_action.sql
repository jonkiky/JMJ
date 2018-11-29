# Host: localhost  (Version 5.7.24-log)
# Date: 2018-11-28 23:13:01
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "journal_action"
#

DROP TABLE IF EXISTS `journal_action`;
CREATE TABLE `journal_action` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
