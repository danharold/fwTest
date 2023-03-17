SELECT
	name AS book_name,
	first_name AS author_first_name,
	surname AS author_surname
FROM
	t_book AS b
	JOIN t_l_book_author AS ba ON b.book_id = ba.book_id
	JOIN t_author AS a ON ba.author_id = a.author_id
WHERE
	surname LIKE 'T%'
ORDER BY
	book_name ASC;