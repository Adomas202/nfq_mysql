1.	INSERT INTO authors (name) VALUES ("Tomas Gilys"), ("Andrius Tapinas");

2.	INSERT INTO books (authorId, title, year) VALUES (8, "NFQ akademija kelias", 2018),
												 (9, "Need For Speed", 2016),
												 (10, "Duomenu bazes ir daugiau", 2012);

3.	UPDATE books SET authorId = 6 WHERE bookId = 4;