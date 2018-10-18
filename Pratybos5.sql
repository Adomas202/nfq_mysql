1.	SELECT authors.name FROM authors
	UNION
	SELECT books.authorId FROM books;