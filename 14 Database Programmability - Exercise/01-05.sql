-- 01. Employees with Salary Above 35000
delimiter ***
CREATE PROCEDURE usp_get_employees_salary_above_35000 ()
BEGIN
SELECT first_name, last_name FROM employees
WHERE salary > 35000
ORDER BY first_name, last_name, employee_id;
END
***
----------------------------------------------------------------------------------------

-- 02. Employees with Salary Above Number
delimiter ***
CREATE PROCEDURE usp_get_employees_salary_above(salary_above DECIMAL(11,4))
BEGIN
SELECT first_name, last_name FROM employees
WHERE salary >= salary_above
ORDER BY first_name, last_name, employee_id ASC;
END
***
----------------------------------------------------------------------------------------

-- 03. Town Names Starting With
delimiter ***
CREATE PROCEDURE usp_get_towns_starting_with(start_letter VARCHAR(10))
BEGIN
SELECT `name` as 'town_name' FROM towns
WHERE lower(`name`) like lower(concat(start_letter, '%'))
ORDER BY town_name;
END
***
----------------------------------------------------------------------------------------

-- 04. Employees from Town
delimiter ***

