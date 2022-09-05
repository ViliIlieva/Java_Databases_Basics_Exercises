CREATE TABLE `users` (
`id` INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
`username` VARCHAR(30) UNIQUE NOT NULL,
`password` VARCHAR(26) NOT NULL,
`profile_picture` BLOB,
`last_login_time` TIMESTAMP,
`is_deleted` BOOLEAN
);

INSERT INTO `users` (`id`, `username`, `password`, `last_login_time`, `is_deleted`)
VALUES
('1', 'test1', 'test1', '2022-01-11 14:19', FALSE),
('2', 'test2', 'test2', '2022-02-11 14:29', FALSE),
('3', 'test3', 'test3', '2022-03-11 14:39', FALSE),
('4', 'test4', 'test4', '2022-04-11 14:49', FALSE),
('5', 'test5', 'test5', '2022-05-11 14:59', FALSE)
;
