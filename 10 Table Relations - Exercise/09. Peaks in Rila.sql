SELECT m.mountain_range, p.peak_name, p.elevation as 'peak_elevation'
FROM mountains as m
INNER JOIN peaks as p
on m.id = p.mountain_id
WHERE m.mountain_range = 'Rila'
ORDER BY p.elevation DESC;
