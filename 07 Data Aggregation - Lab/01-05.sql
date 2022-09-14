1.Departments Info
SELECT `department_id`, count(department_id) as 'Number of employees'
FROM employees
GROUP BY department_id;

2.Average Salary
SELECT `department_id`, round(avg(salary), 2) as 'Average Salary'
FROM employees
GROUP BY department_id
ORDER BY department_id;

3.Min Salary
SELECT `department_id`, round(min(salary), 2) as 'Min Salary'
FROM employees
GROUP BY department_id
HAVING `Min Salary` > 800;

4.Appetizers Count
SELECT count(*)
FROM products
WHERE category_id = 2 and price > 8
GROUP BY category_id;

5.Menu Prices
SELECT category_id, 
round(avg(price), 2) as 'Average Price',
round(min(price), 2) as 'Cheapest Product',
round(max(price), 2) as 'Most Expensive Product'
FROM products
GROUP BY category_id;

