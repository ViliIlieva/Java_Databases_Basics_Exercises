-- 12. Highest Peaks in Bulgaria
SELECT mc.country_code, m.mountain_range, p.peak_name, p.elevation
FROM mountains_countries as mc
	JOIN mountains as m ON mc.mountain_id = m.id
    JOIN peaks as p ON m.id = p.mountain_id
WHERE mc.country_code = "BG" AND p.elevation > 2835
ORDER BY p.elevation DESC;
-------------------------------------------------------------------------------------------------------------------------------

-- 13. Count Mountain Ranges
SELECT mc.country_code, count(mc.mountain_id) as mountain_range
FROM mountains_countries as mc
	JOIN mountains as m ON mc.mountain_id = m.id
    WHERE mc.country_code in ('US', 'RU', 'BG')
GROUP BY  mc.country_code
ORDER BY mountain_range DESC;
-------------------------------------------------------------------------------------------------------------------------------

-- 14. Countries with Rivers
SELECT c.country_name, r.river_name
	FROM countries AS c
    LEFT JOIN countries_rivers as cr USING (country_code)
    LEFT JOIN rivers AS r ON cr.river_id = r.id
WHERE c.continent_code = 'AF'
ORDER BY c.country_name
LIMIT 5;
-------------------------------------------------------------------------------------------------------------------------------

-- 16. Countries without any Mountains
SELECT count(c.country_code) as country_code
FROM countries AS c
LEFT JOIN mountains_countries as m
on m.country_code = c.country_code
WHERE m.mountain_id IS NULL;
-------------------------------------------------------------------------------------------------------------------------------

-- 17. Highest Peak and Longest River by Country
SELECT c.country_name, 
	(SELECT max(p.elevation) 
    from mountains_countries 
    left JOIN peaks as p USING (mountain_id)
	WHERE country_code = c.country_code)
	as 'highest_peak_elevation',
     
	(SELECT max(r.length)
    FROM countries_rivers as cr
    LEFT JOIN rivers as r ON cr.river_id = r.id
    WHERE country_code = c.country_code)
	as 'longest_river_length'
    
FROM countries AS c
ORDER BY highest_peak_elevation DESC, longest_river_length DESC, country_name
LIMIT 5;
-------------------------------------------------------------------------------------------------------------------------------
