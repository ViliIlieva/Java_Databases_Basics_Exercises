-- 01. Employee Address
SELECT e.employee_id, e.job_title,	a.address_id, a.address_text
FROM addresses as a
join employees as e
ON a.address_id = e.address_id
ORDER BY address_id ASC
LIMIT 5;

