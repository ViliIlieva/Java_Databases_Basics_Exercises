-- 01. Employee Address
SELECT e.employee_id, e.job_title,	a.address_id, a.address_text
FROM addresses as a
join employees as e
ON a.address_id = e.address_id
ORDER BY address_id ASC
LIMIT 5;

-- 02. Addresses with Towns
SELECT e.first_name, e.last_name, t.`name`, a.address_text
FROM addresses as a
join employees as e
ON a.address_id = e.address_id
join towns as t
on a.town_id = t.town_id
ORDER BY e.first_name, e.last_name
LIMIT 5;

-- 03. Sales Employee
SELECT e.employee_id, e.first_name, e.last_name, d.`name`
FROM employees as e
join departments as d
ON e.department_id = d.department_id
WHERE d.`name` = 'Sales'
ORDER BY e.employee_id DESC;

-- 04. Employee Departments
SELECT e.employee_id, e.first_name, e.salary, d.`name`
FROM employees as e
join departments as d
ON e.department_id = d.department_id
WHERE e.salary > 15000
ORDER BY d.department_id DESC
LIMIT 5;

-- 05. Employees Without Project
SELECT e.employee_id, e.first_name
FROM employees as e
LEFT JOIN `employees_projects` p
on e.employee_id = p.employee_id
WHERE p.project_id is NULL
ORDER BY e.employee_id DESC
LIMIT 3;


-- 06. Employees Hired After
SELECT e.first_name, e.last_name, e.hire_date, d.`name`
FROM employees as e
join departments as d
ON e.department_id = d.department_id
WHERE e.hire_date > 1999-01-01 and d.`name` = 'Sales' OR d.`name` = 'Finance'
ORDER BY e.hire_date ASC;
