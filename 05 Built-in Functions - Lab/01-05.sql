1.	Find Book Titles
SELECT `title` FROM books
WHERE substring(title, 1, 3) = 'The';


2.	Replace Titles
SELECT replace(`title`, 'The', '***') FROM books
WHERE substring(title, 1, 3) = 'The'
ORDER BY id;

4.	Days Lived
SELECT concat(`first_name`, ' ', `last_name`) AS 'Full Name', 
timestampdiff(day, `born`, `died`) as 'Days Lived'
FROM `authors`;
