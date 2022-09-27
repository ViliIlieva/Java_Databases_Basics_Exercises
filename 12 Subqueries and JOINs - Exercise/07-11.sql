-- 07. Employees with Project
SELECT e.employee_id, e.first_name, p.`name`
FROM employees as e
     JOIN `employees_projects` as ep USING (employee_id)
     JOIN projects as p USING (project_id)
WHERE DATE(p.start_date) > '2002-08-13' AND p.end_date IS NULL
ORDER BY e.first_name ASC, p.`name` ASC
LIMIT 5;

-------------------------------------------------------------------------------------------

-- 08. Employee 24
select e.employee_id, e.first_name, 
		case
        WHEN DATE(p.start_date) <= '2004-12-31'
        THEN p.name
        ELSE NULL
        END as project_name
from
	employees as e
    JOIN
    `employees_projects` as ep ON e.employee_id = ep.employee_id
	JOIN
	projects as p ON p.project_id = ep.project_id
    
WHERE e.employee_id =  24 
ORDER BY p.name;

----------------------------------------------------------------------------------------------

-- 09. Employee Manager
SELECT e1.employee_id, e1.first_name, e1.manager_id, (
	SELECT e2.first_name
    FROM employees AS e2
    WHERE e1.manager_id = e2.employee_id
    ) AS manager_name
FROM employees AS e1

----------------------------------------------------------------------------------------------

-- 10. Employee Summary
SELECT e1.employee_id, 
	concat(e1.first_name, ' ', e1.last_name)  as 'employee_name',
	(SELECT concat(e2.first_name, ' ', e2.last_name)
    FROM employees AS e2
    WHERE e1.manager_id = e2.employee_id
    ) AS manager_name,
    d.name    
FROM employees AS e1
JOIN departments as d
on e1.department_id = d.department_id
WHERE e1.manager_id is not null
ORDER BY e1.employee_id
LIMIT 5;

----------------------------------------------------------------------------------------------

-- 11. Min Average Salary
SELECT avg(salary) AS min_avg_salary
FROM employees
GROUP BY department_id
ORDER BY min_avg_salary
LIMIT 1;
WHERE e1.manager_id IN (3, 7)
ORDER BY e1.first_name;
