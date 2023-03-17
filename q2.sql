SELECT
    isbn,
    SUM(quantity) as number_of_orders
FROM
    (
        SELECT
            *
        FROM
            t_order AS o
            JOIN t_order_item AS oi ON o.order_id = oi.order_id
            JOIN t_book AS b ON oi.book_id = b.book_id
    ) as c
GROUP BY
    isbn
ORDER BY
    number_of_orders DESC