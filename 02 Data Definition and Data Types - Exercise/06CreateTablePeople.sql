 create table `people`(
id int primary key auto_increment UNIQUE AUTO_INCREMENT, 
`name` varchar(200) NOT NULL,
`picture` BLOB,
`height` DOUBLE (3, 2),
`weight` DOUBLE(5, 2),
`gender` VARCHAR (1) NOT NULL,
`birthdate` DATE NOT NULL,
`biography` TEXT
);

INSERT INTO `people` (`id`, `name`, `height`, `weight`, `gender`, `birthdate`)
VALUES 
('1', 'Vili', '1.50', '62', 'f', '1982-05-14'),
('2', 'Raya', '1.56', '60', 'f', '2005-06-27'),
('3', 'Petya', '1.52', '63', 'f', '1982-08-14'),
('4', 'Stefi', '1.50', '62', 'f', '1982-09-14'),
('5', 'Kiro', '1.50', '62', 'f', '1982-02-14')
;
