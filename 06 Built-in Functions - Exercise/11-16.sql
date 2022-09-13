11.Mix of Peak and River Names
SELECT peaks.peak_name, rivers.river_name, lower(concat(peaks.peak_name, Substring(rivers.river_name, 2))) AS mix    
FROM peaks  
INNER JOIN rivers
WHERE right(peak_name, 1) = Left(river_name, 1)
ORDER BY mix;

12.Games from 2011 and 2012 Year
SELECT `name`, date_format(`start`, '%Y-%m-%d') as `start`   FROM games 
WHERE year(start) >= 2011 AND year(start) <= 2012  
ORDER BY `start`, `name`
LIMIT 50;

13.User Email Providers
SELECT `user_name`, substring(email, locate('@', email) +1) as 'Email Provider' FROM users 
ORDER BY `Email Provider`, `user_name`;

14.Get Users with IP Address Like Pattern
SELECT `user_name`, ip_address FROM users 
WHERE ip_address LIKE '___.1%.%.___'
ORDER BY `user_name`;

15.	Show All Games with Duration and Part of the Day
SELECT `name` as 'game',
case
WHEN hour(`start`) < 12 THEN 'Morning'
WHEN hour(`start`) < 18 THEN 'Afternoon'
ELSE 'Evening'
end as 'Part of the Day',
case
WHEN `duration` <= 3 THEN 'Extra Short'
WHEN `duration` <= 6 THEN 'Short'
WHEN `duration` <= 10 THEN 'Long'
ELSE 'Extra Long'
END as 'Duration'
FROM games;

16.	 Orders Table
