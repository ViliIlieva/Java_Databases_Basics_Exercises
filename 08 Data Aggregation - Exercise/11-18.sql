11.	Average Interest 
SELECT deposit_group, is_deposit_expired, avg(deposit_interest) as 'average_interest'
FROM `wizzard_deposits`
WHERE deposit_start_date > '1985-01-01'
GROUP BY deposit_group, is_deposit_expired
ORDER BY `deposit_group` DESC, is_deposit_expired ASC;

12.	 Employees Minimum Salaries
SELECT department_id, min(salary) as 'minimum_salary'
FROM `employees`
WHERE department_id IN (2, 5, 7) AND date(hire_date) > 2000-01-01
GROUP BY department_id
ORDER BY `department_id` ASC;

13.	Employees Average Salaries
create table `high_paid_employees` as
SELECT * from employees
WHERE salary > 30000;

DELETE FROM high_paid_employees
WHERE manager_id = 42;

UPDATE high_paid_employees
SET salary = salary + 5000
WHERE department_id = 1;

SELECT department_id, avg(salary) as 'avg_salary'
FROM `high_paid_employees`
GROUP BY department_id
ORDER BY `department_id` ASC;

14. Employees Maximum Salaries
SELECT department_id, max(salary) as 'max_salary'
FROM `employees`
GROUP BY department_id
HAVING max_salary NOT BETWEEN 30000 and 70000
ORDER BY `department_id` ASC;

15.	Employees Count Salaries
SELECT count(salary) as ''
FROM `employees`
WHERE manager_id IS NULL;

16.	3rd Highest Salary*


17.	 Salary Challenge**


18.	Departments Total Salaries
