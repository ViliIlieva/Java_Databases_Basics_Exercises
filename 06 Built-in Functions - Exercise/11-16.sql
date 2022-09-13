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

13.	User Email Providers
SELECT `user_name`, substring(email, locate('@', email) +1) as 'Email Provider' FROM users 
ORDER BY `Email Provider`, `user_name`;
