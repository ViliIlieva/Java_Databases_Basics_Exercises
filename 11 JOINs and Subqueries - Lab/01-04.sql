-- 1. Managers
SELECT e.employee_id, concat_ws(' ', e.first_name, e.last_name) as 'full_name',
d.department_id, d.name 
FROM employees as e
JOIN departments as d 
on e.employee_id = d.manager_id
ORDER BY employee_id
LIMIT 5;

-- 2. Towns and Addresses
