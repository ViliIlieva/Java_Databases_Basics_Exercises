6.Find Towns Starting With
SELECT town_id, `name` from towns
WHERE left(`name`, 1) REGEXP 'M|K|B|E'
ORDER BY `name`;

7.Find Towns Not Starting With
SELECT * FROM `towns`
WHERE  NOT left(`name`, 1) regexp 'R|B|D'
ORDER BY `name`;

8.Create View Employees Hired After 2000 Year
CREATE VIEW v_employees_hired_after_2000 as 
SELECT `first_name`, `last_name` FROM `employees`
WHERE  year(hire_date) > 2000;
SELECT * FROM v_employees_hired_after_2000;

9.	Length of Last Name
SELECT `first_name`, `last_name` FROM `employees`
WHERE char_length(`last_name`) = 5;

10.	Countries Holding 'A' 3 or More Times
SELECT `country_name`, `iso_code` FROM `countries`
WHERE country_name LIKE '%a%a%a%'
ORDER BY `iso_code`;
