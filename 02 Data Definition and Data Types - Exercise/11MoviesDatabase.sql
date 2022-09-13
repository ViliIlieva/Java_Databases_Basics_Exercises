CREATE TABLE `directors` (
`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
`director_name` VARCHAR(30) NOT NULL, 
`notes` TEXT
);

INSERT INTO `directors` (`director_name`, `notes`)
VALUES
('test1', 'proba'),
('test2', 'proba'),
('test3', 'proba'),
('test4', 'proba'),
('test5', 'proba');

CREATE TABLE `genres` (
`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
`genre_name` VARCHAR(100) NOT NULL, 
`notes` TEXT
);

INSERT INTO `genres` (`genre_name`, `notes`)
VALUES
('test1', 'proba'),
('test2', 'proba'),
('test3', 'proba'),
('test4', 'proba'),
('test5', 'proba');

CREATE TABLE `categories` (
`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
`category_name` VARCHAR(100) NOT NULL, 
`notes` TEXT
);

INSERT INTO `categories` (`category_name`, `notes`)
VALUES
('test1', 'proba'),
('test2', 'proba'),
('test3', 'proba'),
('test4', 'proba'),
('test5', 'proba');

CREATE TABLE `movies` (
`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
`title` VARCHAR(300) NOT NULL, 
`director_id` INT NOT NULL, 
`copyright_year` VARCHAR(4), 
`length` INT, 
`genre_id` INT, 
`category_id` INT, 
`rating` INT,  
`notes` TEXT
);


INSERT INTO `movies` (`title`, `director_id`, `copyright_year`, `length`, `genre_id`,
`category_id`, `rating`, `notes`)
VALUES
('film1', '2', '2000', '120', '2', '1', '10', 'proba'),
('film2', '3', '2000', '120', '3', '2', '10', 'proba'),
('film3', '4', '2000', '120', '4', '3', '10', 'proba'),
('film4', '5', '2000', '120', '5', '4', '10', 'proba'),
('film5', '6', '2000', '120', '6', '5', '10', 'proba');
