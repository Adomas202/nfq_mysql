1. CREATE TABLE Books_and_Authors (
    id int(11) NOT NULL AUTO_INCREMENT,
    bookId int(11) DEFAULT NULL,
    authorId int(11) DEFAULT NULL,
    PRIMARY KEY (id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

ALTER TABLE Books_and_Authors ADD KEY bookId (bookId);

INSERT INTO Books_and_Authors (authorId, bookId)
    SELECT books.authorId, books.bookId FROM books
    LEFT JOIN authors ON (books.authorId = authors.authorId)
    WHERE authors.authorId IS NOT NULL;

2. SELECT books.title, GROUP_CONCAT(authors.name) FROM books
    LEFT JOIN Books_and_Authors ON (Books_and_Authors.bookId = books.bookId)
    LEFT JOIN authors ON (Books_and_Authors.authorId = authors.authorId)
    GROUP BY books.bookId;

3.	ALTER TABLE Books CONVERT TO CHARACTER SET utf8 COLLATE utf8_lithuanian_ci;

	UPDATE books SET title='Pinigų kartos pačiausia, įdomiausia informacija' WHERE bookId = 3;
