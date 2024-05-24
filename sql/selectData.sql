SELECT * FROM books;
SELECT * FROM books b
JOIN books_categories bc
ON b.id = bc."bookId"
JOIN categories c
ON c.id = bc."categoryId"
WHERE c.name = "Fantasia";

SELECT 
b.id "bookId",
b.name "bookName",
b.pages "bookPages",
c.id "categoryId",
c.name "categoryName"
FROM books b
JOIN books_categories bc
ON b.id = bc."bookId"
JOIN categories c 
ON c.id = bc."categoryId";

SELECT 
b.name "bookName",
b.pages "bookPages",
a.name "authorName",
a.bio "authorBio"
FROM books b 
JOIN authors a 
ON b."authorId" = a.id
WHERE b.name = 'Harry Potter';
