1.	INSERT INTO authors (name) VALUES ("Tomas Gilys"), ("Andrius Tapinas");

2.	INSERT INTO books (authorId, title, year) VALUES (8, "NFQ akademija kelias"), (8, "Need For Speed", 2016), (9, "Duomenu bazes ir daugiau", 2012);

3.	UPDATE books SET authorId = 8 WHERE authorId IN NULL LIMIT 1;