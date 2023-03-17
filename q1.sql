SELECT
    name AS book_name,
    SUBSTRING(first_name, 1, 1) AS author_first_name_initial,
    surname AS author_surname
FROM
    t_book AS b
    JOIN t_l_book_author AS ba ON b.book_id = ba.book_id
    JOIN t_author AS a ON ba.author_id = a.author_id
ORDER BY
    book_name ASC