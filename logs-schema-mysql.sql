CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time` int(10) unsigned NOT NULL,
  `level` int(11) NOT NULL,
  `body` text NOT NULL,
  `trace` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` int(10) unsigned NOT NULL,
  `class` varchar(255) NOT NULL,
  `function` varchar(255) DEFAULT NULL,
  `additional` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
