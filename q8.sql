-- Given query:
-- SELECT
--     book_id,
--     name
-- FROM
--     t_book AS b
-- WHERE
--     NOT EXISTS (
--         SELECT
--             *
--         FROM
--             t_bestseller AS be
--         WHERE
--             be.book_id = b.book_id
--     );
-- This gives (book_id, name) 
-- for every book that is not a bestseller.
-- Instead of NOT EXISTS, could use NOT IN:
SELECT
    book_id,
    name
FROM
    t_book AS b
WHERE
    b.book_id NOT IN (
        SELECT
            book_id
        FROM
            t_bestseller AS be
    );