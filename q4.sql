SELECT
    c.first_name || ' ' || c.surname as author_full_name,
    SUM(quantity) as total_books_sold
FROM
    (
        SELECT
            first_name,
            surname,
            quantity
        FROM
            t_order AS o
            JOIN t_order_item AS oi ON o.order_id = oi.order_id
            JOIN t_book AS b ON b.book_id = oi.book_id
            JOIN t_l_book_author AS ba on oi.book_id = ba.book_id
            JOIN t_author as a on ba.author_id = a.author_id
    ) as c
GROUP BY
    author_full_name
ORDER BY
    total_books_sold DESC;