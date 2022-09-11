1.Find Names of All Employees by First Name
SELECT first_name, last_name from employees
WHERE first_name LIKE 'Sa%'
ORDER BY employee_id;

2.Find Names of All Employees by Last Name
SELECT first_name, last_name from employees
WHERE last_name LIKE '%ei%'
ORDER BY employee_id;

3.Find First Names of All Employees
SELECT first_name from employees
WHERE `department_id` IN(3,10)
AND year(hire_date) BETWEEN 1995 and 2005
ORDER BY employee_id;

4.Find All Employees Except Engineers
SELECT first_name, `last_name` from employees
WHERE `job_title` NOT LIKE '%engineer%'
ORDER BY employee_id;

5.Find Towns with Name Length
SELECT `name` from towns
WHERE char_length(`name`) = 5 OR char_length(`name`) = 6
ORDER BY `name`;
