1.	Find Book Titles
SELECT `title` FROM books
WHERE substring(title, 1, 3) = 'The';


2.	Replace Titles
SELECT replace(`title`, 'The', '***') FROM books
WHERE substring(title, 1, 3) = 'The'
ORDER BY id;
