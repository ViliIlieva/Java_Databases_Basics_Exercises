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
delimiter ***
CREATE FUNCTION ufn_is_word_comprised(set_of_letters varchar(50), word varchar(50))
RETURNS INT
DETERMINISTIC 
	BEGIN
    RETURN REGEXP_LIKE(lower(word), CONCAT('^[', lower(set_of_letters), ']+$'));
END
***

SELECT ufn_is_word_comprised('oistmiahf', 'halves');
----------------------------------------------------------------------------------------------------

-- 08. Find Full Name
delimiter ***
CREATE PROCEDURE usp_get_holders_full_name ()
BEGIN
SELECT concat(first_name, ' ', last_name) as full_name FROM account_holders
ORDER BY full_name, id ASC;
END
***
CALL usp_get_holders_full_name;
----------------------------------------------------------------------------------------------------

--9. People with Balance Higher Than
delimiter ***
CREATE PROCEDURE usp_get_holders_with_balance_higher_than(`number` int)
BEGIN
SELECT ah.first_name, ah.last_name FROM account_holders as ah
right JOIN accounts as a ON ah.id = a.account_holder_id
GROUP BY first_name, last_name
HAVING sum(a.balance) > `number`;
END
***
CALL usp_get_holders_with_balance_higher_than(7000);
----------------------------------------------------------------------------------------------------

-- 10. Future Value Function
delimiter ***
CREATE FUNCTION ufn_calculate_future_value (I DECIMAL(20, 4), R double, T int)
RETURNS DECIMAL(20, 4)
DETERMINISTIC 
	BEGIN
    RETURN I*pow((1+R), T);
END
***
SELECT ufn_calculate_future_value('1000', '0.5', 5);
