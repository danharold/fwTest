SELECT
    author_first_name,
    author_surname,
    CAST(SUM(price) AS FLOAT) / 100 AS total_value
FROM
    (
        SELECT
            a.first_name AS author_first_name,
            a.surname AS author_surname,
            (
                CASE
                    WHEN price_override IS NOT NULL THEN price_override
                    ELSE price
                END
            ) AS price
        FROM
            t_order AS o
            JOIN t_order_item AS oi ON o.order_id = oi.order_id
            JOIN t_book AS b ON b.book_id = oi.book_id
            JOIN t_l_book_author AS ba ON oi.book_id = ba.book_id
            JOIN t_author AS a ON ba.author_id = a.author_id
    ) AS c
GROUP BY
    author_first_name,
    author_surname
ORDER BY
    total_value DESC