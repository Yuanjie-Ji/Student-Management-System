DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `chi` int(11) NOT NULL,
  `math` int(11) NOT NULL,
  `eng` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;


LOCK TABLES `student` WRITE;

INSERT INTO `student` VALUES (1,'101','Tom',18,55,55,55),(2,'102','Jack',19,66,66,66),(3,'103','Jerry',20,77,77,77),(4,'104','Nick',21,88,88,88),(5,'105','Richard',22,99,99,99);

UNLOCK TABLES;

