-- 1. Managers
SELECT e.employee_id, concat_ws(' ', e.first_name, e.last_name) as 'full_name',
d.department_id, d.name 
FROM employees as e
JOIN departments as d 
on e.employee_id = d.manager_id
ORDER BY employee_id
LIMIT 5;

-- 2. Towns and Addresses
SELECT a.town_id, t.name as 'town_name', a.address_text
from addresses as a
join towns as t
on a.town_id = t.town_id
WHERE t.name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY a.town_id, a.address_id;

-- 3. Employees Without Managers
SELECT employee_id, first_name, last_name, department_id, salary
from employees
WHERE manager_id is NULL;

-- 4. High Salary
SELECT count(*)
FROM employees
where salary > (SELECT avg(salary) from employees);
