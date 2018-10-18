CREATE TABLE Books_and_Authors (
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