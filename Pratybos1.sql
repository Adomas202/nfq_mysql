1. SELECT * FROM books;

2.	SELECT title FROM books ORDER BY title ASC;

3.	SELECT books.authorId, COUNT(books.bookId) AS booksCount FROM books GROUP BY books.authorId;