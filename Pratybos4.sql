1. SELECT authors.name,
	COUNT(books.bookId) FROM books
	LEFT JOIN authors ON authors.authorId = books.authorId 
	GROUP BY books.authorId;

	SELECT authors.name,
	COUNT(books.bookId) FROM books 
	INNER JOIN authors ON authors.authorId = books.authorId 
	GROUP BY books.authorId;

2. DELETE FROM books WHERE authorId is null;