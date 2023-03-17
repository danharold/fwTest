SELECT
    book_name,
    CAST(SUM(price) as FLOAT) / 100 as total_value
FROM
    (
        SELECT
            b.name as book_name,
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
            JOIN t_l_book_author AS ba on oi.book_id = ba.book_id
            JOIN t_author as a on ba.author_id = a.author_id
    ) AS c
GROUP BY
    book_name
ORDER BY
    total_value DESC