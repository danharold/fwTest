SELECT
    name as book_name,
    first_name as author_first_name,
    surname as author_surname
FROM
    t_book as b
    JOIN t_l_book_author as ba ON b.book_id = ba.book_id
    JOIN t_author as a ON ba.author_id = a.author_id
WHERE
    surname LIKE 'T%'
ORDER BY
    book_name ASC;