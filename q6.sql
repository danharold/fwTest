SELECT
    book_name,
    CAST(SUM(price) AS FLOAT) / 100 AS total_value
FROM
    (
        SELECT
            b.name AS book_name,
            (
                CASE
                    WHEN price_override IS NOT NULL THEN price_override
                    ELSE price
                END
            ) as price
        FROM
            t_order AS o
            JOIN t_order_item AS oi ON o.order_id = oi.order_id
            JOIN t_book AS b ON b.book_id = oi.book_id
            JOIN t_l_book_author AS ba ON oi.book_id = ba.book_id
            JOIN t_author AS a ON ba.author_id = a.author_id
    ) AS c
GROUP BY
    book_name
ORDER BY
    total_value DESC