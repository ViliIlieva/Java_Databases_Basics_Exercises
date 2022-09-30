-- 1. Count Employees by Town
DElimiter ###
CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR(20))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN
	(SELECT count(*)
	FROM towns as t
	LEFT JOIN addresses as a ON t.town_id = a.town_id
	JOIN employees as e ON e.address_id = a.address_id
	WHERE t.name = town_name);
END
###
-----------------------------------------------------------------------------------------------------


-- 2. Employees Promotion
delimiter ***
CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(50))
BEGIN
UPDATE employees as e
RIGHT JOIN departments as d on e.department_id = d.department_id
set salary = salary * 1.05
WHERE d.name = department_name;
end
***
---------------------------------------------------------------------------------------------------------


-- 3. Employees Promotion By ID
delimiter ***
CREATE PROCEDURE usp_raise_salary_by_id(id INT)
BEGIN
	IF((SELECT count(*) FROM employees WHERE employee_id = id)> 0)
    THEN
		UPDATE employees SET salary = salary*1.05 WHERE employee_id = id;
    END IF;
end
***
---------------------------------------------------------------------------------------------------------


-- 4. Triggered
