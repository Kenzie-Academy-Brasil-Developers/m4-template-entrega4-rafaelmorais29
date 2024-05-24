UPDATE books SET name = 'Harry Potter e o Prisioneiro de Azkaban'
WHERE name = 'Harry Potter'
RETURNING *;

UPDATE books SET "authorId" = (
    SELECT 
        id
    FROM authors
    WHERE "name" = 'Eiichiro Oda'
)
WHERE "name" LIKE 'One Piece%'
RETURNING *;