CREATE DATABASE car_rental;

create table `categories`(
id int primary key  AUTO_INCREMENT, 
`category` VARCHAR(50), 
`daily_rate` INT, 
`weekly_rate` INT, 
`monthly_rate` INT, 
`weekend_rate` INT
);

INSERT INTO `categories` (`category`)
VALUES 
('truck'),
('cars'),
('test')
;

create table `cars`(
id int primary key  AUTO_INCREMENT,
`plate_number` VARCHAR(30), 
`make` VARCHAR(30), 
`model` VARCHAR(30) , 
`car_year` INT, 
`category_id` INT, 
`doors` INT, 
`picture` BLOB, 
`car_condition` TEXT, 
`available` BOOLEAN
);

INSERT INTO `cars` (`plate_number`, `model`)
VALUES
('123', 'nissan'),
('456', 'volvo'),
('789', 'opel');

create table `employees`(
id int primary key  AUTO_INCREMENT,
`first_name` VARCHAR(30), 
`last_name` VARCHAR(30), 
`title` VARCHAR(30), 
`notes` TEXT
);

INSERT INTO `employees` (`first_name`)
VALUES
('Ilko'),
('Vili'),
('Alex');

create table `customers`(
id int primary key AUTO_INCREMENT,
`driver_licence_number` VARCHAR(30), 
`full_name` VARCHAR(30), 
`address` VARCHAR(30), 
`city` VARCHAR(30), 
`zip_code` VARCHAR(30), 
`notes` TEXT
);

INSERT INTO `customers` (`full_name`, `city`)
VALUES
('Ilarion', 'Plovdiv'),
('Velislava', 'Sofia'),
('Alexandra', 'Varna');

create table `rental_orders`(
id int primary key AUTO_INCREMENT,
employee_id INT, 
customer_id INT, 
car_id INT, 
car_condition VARCHAR(30), 
tank_level VARCHAR(30), 
kilometrage_start INT, 
kilometrage_end INT, 
total_kilometrage INT, 
start_date DATE, 
end_date DATE, 
total_days INT, 
rate_applied BOOLEAN, 
tax_rate DOUBLE, 
order_status VARCHAR(30), 
notes TEXT
);

INSERT INTO `rental_orders` 
    (`employee_id`, `customer_id`)
  VALUES 
  (1, 2),
  (2, 3),
  (3, 4)
  ;
