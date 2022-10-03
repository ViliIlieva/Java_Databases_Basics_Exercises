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
CREATE PROCEDURE usp_get_employees_from_town  (town_name VARCHAR(50))
BEGIN
SELECT e.first_name, e.last_name FROM employees as e
JOIN addresses as a USING (address_id)
JOIN towns as t USING (town_id)
WHERE t.name = town_name
ORDER BY e.first_name, e.last_name, e.employee_id ASC;
END
***
----------------------------------------------------------------------------------------

-- 05. Salary Level Function
delimiter ***
CREATE FUNCTION ufn_get_salary_level (salary_of_employee DECIMAL(19, 4))
RETURNS VARCHAR(8)
DETERMINISTIC 
	BEGIN
    DECLARE salary_level VARCHAR(8);
    if salary_of_employee < 30000 THEN set salary_level:= 'Low';
    ELSEIF salary_of_employee <= 50000 THEN SET salary_level:= 'Average';
    ELSE SET salary_level:= 'High';
    END IF;
    RETURN salary_level;
END;
***
