CREATE TABLE `foo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `money` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `foo` (`id`, `name`, `money`) VALUES (NULL, 'kwoni', '50000');
INSERT INTO `foo` (`id`, `name`, `money`) VALUES (NULL, 'anong', '42000');
INSERT INTO `foo` (`id`, `name`, `money`) VALUES (NULL, 'dino', '40000');
INSERT INTO `foo` (`id`, `name`, `money`) VALUES (NULL, 'amy', '100000000');
INSERT INTO `foo` (`id`, `name`, `money`) VALUES (NULL, 'peanut', '30000');