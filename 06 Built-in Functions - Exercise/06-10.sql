6.Find Towns Starting With
SELECT town_id, `name` from towns
WHERE left(`name`, 1) REGEXP 'M|K|B|E'
ORDER BY `name`;

7.Find Towns Not Starting With

