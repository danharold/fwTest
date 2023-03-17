SELECT
    c.first_name || ' ' || c.surname AS author_full_name,
    SUM(quantity) AS total_books_sold
FROM
    (
        SELECT
            first_name,
            surname,
            quantity
        FROM
            JOIN t_order_item AS oi ON o.order_id = oi.order_id
            JOIN t_book AS b ON b.book_id = oi.book_id
            JOIN t_l_book_author AS ba ON oi.book_id = ba.book_id
            JOIN t_author AS a ON ba.author_id = a.author_id
    ) AS c
GROUP BY
    author_full_name
ORDER BY
    total_books_sold DESC;