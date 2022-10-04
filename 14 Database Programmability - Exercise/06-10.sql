-- 06. Employees by Salary Level
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

CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(10))
BEGIN
SELECT first_name, last_name FROM employees
WHERE ufn_get_salary_level (salary) LIKE salary_level
ORDER BY first_name DESC, last_name DESC;
END
***

CALL usp_get_employees_by_salary_level('high');
---------------------------------------------------------------------------------------------------


-- 07. Define Function

----------------------------------------------------------------------------------------------------

-- 08. Find Full Name

----------------------------------------------------------------------------------------------------

-- 10. Future Value Function
