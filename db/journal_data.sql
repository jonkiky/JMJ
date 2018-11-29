# Host: localhost  (Version 5.7.24-log)
# Date: 2018-11-28 23:13:12
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "journal_data"
#

DROP TABLE IF EXISTS `journal_data`;
CREATE TABLE `journal_data` (
  `Journal_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(45) DEFAULT NULL,
  `User_id` varchar(45) DEFAULT NULL,
  `progress_start_time` varchar(45) DEFAULT NULL,
  `progress_peers` longtext,
  `new_knowledge` longtext,
  `plan_start_time` varchar(45) DEFAULT NULL,
  `issues` longtext,
  `actions` longtext,
  `planpeers` longtext,
  `resources` text,
  `sharepeers` longtext,
  `permission` varchar(45) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Active',
  `plan_end_time` varchar(255) DEFAULT NULL,
  `progress_end_time` varchar(255) DEFAULT NULL,
  `creation_time` varchar(255) DEFAULT NULL,
  `progress_time_select` varchar(255) DEFAULT NULL,
  `plan_time_select` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Journal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
