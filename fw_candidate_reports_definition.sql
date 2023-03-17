/*
 * Please run the provided setup script on a new database to setup the tables/data for this task.
 * For each of the reports below, please provide a single SQL query which brings back the data matching the description.
 *
 * The columns which need to be brought back in the report are specified, alongside which field the report should be ordered by.
 *
 * If you have any question, please feel free to contact us and ask any questions
 */


/*
 * Report 1
 * Show all books in the store with the first name initial and surname of the author
 * Columns: book_name (Ordered Ascending), author_first_name_initial, author_surname
 */


 /*
 * Report 2
 * Show the total number of orders for each book ISBN, ordered by the total orders DESC
 * Columns: ISBN, number_of_orders (Ordered Descending)
 */


/*
 * Report 3
 * Get all books written by authors who's surname begins with 'T'
 * Columns: book_name (ordered Ascending), author_first_name, author_surname
 */


/*
 * Report 4
 * Total number of books sold, grouped by author
 * Columns: author_full_name (first_name surname), total_books_sold (Ordered descending)
 */


/*
 * Report 5
 * Total value of sales (in pounds and pence) per author
 *
 * NOTE: Each order item has the ability to have it's price overridden by the cashier at the time of checkout.  Use the price_override value as opposed to the books price where this is the case.
 *
 * Columns: author_first_name, author_surname, total_value (Ordered Descending)
 */


/*
 * Report 6
 * Total value of sales (in pounds and pence) per book
 *
 * NOTE: Each order item has the ability to have it's price overridden by the cashier at the time of checkout.  Use the price_override value as opposed to the books price where this is the case.
 *
 * Columns: book_name, total_value (Ordered Descending)
 */


/*
 * Report 7
 * Total value of sales (in pounds and pence) of books purchased in 2022
 *
 * NOTE: Each order item has the ability to have it's price overridden by the cashier at the time of checkout.  Use the price_override value as opposed to the books price where this is the case.
 *
 * Columns: book_name, total_value (Ordered Descending)
 */


/**
 * Report 8
 * Could you describe what this report query shows and rewrite it without using the 'NOT EXISTS' keywords
 *
 * Columns: book_id, name (Ordered by name ascending)
 */
SELECT
	book_id
	, name
FROM
	t_book AS b
WHERE
	NOT EXISTS (
		SELECT
			*
		FROM
			t_bestseller AS be
		WHERE
			be.book_id = b.book_id
	);