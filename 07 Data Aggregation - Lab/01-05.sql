1.Departments Info
SELECT `department_id`, count(department_id) as 'Number of employees'
FROM employees
GROUP BY department_id;
