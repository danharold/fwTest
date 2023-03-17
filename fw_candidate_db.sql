-- Author
	DROP TABLE IF EXISTS t_author;

	CREATE TABLE t_author (
		author_id SERIAL
		, first_name VARCHAR
		, surname VARCHAR
		, date_of_birth DATE
	);

	INSERT INTO t_author (
		author_id
		, first_name
		, surname
		, date_of_birth
	) VALUES (
		1
		, 'Joe'
		, 'Bloggs'
		, '01/02/1970'
	),
	(
		2
		, 'Jane'
		, 'Doe'
		, '25/05/1974'
	),
	(
		3
		, 'Ryan'
		, 'Taylor'
		, '10/04/1992'
	),
	(
		4
		, 'Julie'
		, 'Robins'
		, '14/08/1985'
	),
	(
		5
		, 'Jake'
		, 'Potter'
		, '03/06/1990'
	),
	(
		6
		, 'Jodie'
		, 'Thorne'
		, '28/11/1986'
	);

-- Book
	DROP TABLE IF EXISTS t_book;

	CREATE TABLE t_book (
		book_id SERIAL
		, name VARCHAR
		, released DATE
		, isbn VARCHAR
		, number_of_pages VARCHAR
		, price INTEGER
	);

	INSERT INTO t_book (
		book_id
		, name
		, released
		, isbn
		, number_of_pages
		, price
	) VALUES (
		1
		, 'Texas Born'
		, '01/01/2010'
		, '978-92-95055-02-5'
		, 143
		, 1699
	),
	(
		2
		,'Dagger in the Heart'
		, '04/11/2015'
		, '411-44-95024-05-7'
		, 325
		, 1999
	),
	(
		3
		, 'Year of Titan'
		, '01/09/2018'
		, '973-95-91055-02-8'
		, 94
		, 799
	),
	(
		4
		, 'The Children of the Orb'
		, '07/05/2020'
		, '990-25-91555-12-7'
		, 610
		, 1999
	),
	(
		5
		, 'Axe and the Wolf'
		, '24/06/1998'
		, '130-23-93535-13-7'
		, 154
		, 2399
	),
	(
		6
		, 'How to Outfox a Billionaire'
		, '21/11/2017'
		, '758-25-85027-15-8'
		, 246
		, 849
	),
	(
		7
		, 'Touch in the Dark'
		, '18/07/2005'
		, '845-54-19374-67-2'
		, 730
		, 1499
	),
	(
		8
		, 'Foe Of The Frontline'
		, '22/07/2013'
		, '972-92-93055-82-2'
		, 748
		, 1449
	),
	(
		9
		,'Descendants Of Gold'
		, '10/10/2000'
		, '292-14-58392-28-6'
		, 450
		, 1249
	),
	(
		10
		, 'World Of The Sea'
		, '08/02/1998'
		, '973-95-91055-02-7'
		, 230
		, 3499
	),
	(
		11
		, 'Beginning Of The Prison'
		, '07/07/2007'
		, '190-24-91321-72-6'
		, 100
		, 599
	),
	(
		12
		, 'Healing The Universe'
		, '01/09/2011'
		, '130-23-93535-13-5'
		, 290
		, 1299
	),
	(
		13
		, 'Forsaken By The South'
		, '04/04/2014'
		, '757-75-85727-15-7'
		, 130
		, 449
	);

-- Author > Book
	DROP TABLE IF EXISTS t_l_book_author;

	CREATE TABLE t_l_book_author (
		book_author_id SERIAL
		, book_id INTEGER
		, author_id INTEGER
	);

	INSERT INTO t_l_book_author (
		author_id
		, book_id
	) VALUES (
		1
		, 1
	),
	(
		2
		, 2
	),
	(
		3
		, 3
	),
	(
		4
		, 4
	),
	(
		5
		, 5
	),
	(
		6
		, 6
	),
	(
		1
		, 7
	),
	(
		2
		, 8
	),
	(
		3
		, 9
	),
	(
		4
		, 10
	),
	(
		5
		, 11
	),
	(
		6
		, 12
	),
	(
		6
		, 13
	);

-- Order
	DROP TABLE IF EXISTS t_order;

	CREATE TABLE t_order (
		order_id SERIAL
		, created TIMESTAMP
	);

	INSERT INTO t_order (
		created
	) VALUES (
		NOW() - INTERVAL '747 DAY'
	),
	(
		NOW() - INTERVAL '731 DAY'
	),
	(
		NOW() - INTERVAL '701 DAY'
	),
	(
		NOW() - INTERVAL '684 DAY'
	),
	(
		NOW() - INTERVAL '665 DAY'
	),
	(
		NOW() - INTERVAL '513 DAY'
	),
	(
		NOW() - INTERVAL '481 DAY'
	),
	(
		NOW() - INTERVAL '453 DAY'
	),
	(
		NOW() - INTERVAL '429 DAY'
	),
	(
		NOW() - INTERVAL '370 DAY'
	),
	(
		NOW() - INTERVAL '301 DAY'
	),
	(
		NOW() - INTERVAL '288 DAY'
	),
	(
		NOW() - INTERVAL '274 DAY'
	),
	(
		NOW() - INTERVAL '231 DAY'
	),
	(
		NOW() - INTERVAL '190 DAY'
	),
	(
		NOW() - INTERVAL '112 DAY'
	);

-- Order Items
	DROP TABLE IF EXISTS t_order_item;

	CREATE TABLE t_order_item (
		order_item_id SERIAL
		, order_id INTEGER
		, book_id INTEGER
		, quantity INTEGER
		, price_override INTEGER
	);

	INSERT INTO t_order_item (
		order_id
		, book_id
		, quantity
		, price_override
	) VALUES (
		1
		, 1
		, 3
		, NULL
	),
	(
		1
		, 2
		, 6
		, 1499
	),
	(
		2
		, 3
		, 1
		, NULL
	),
	(
		3
		, 4
		, 2
		, NULL
	),
	(
		3
		, 5
		, 1
		, NULL
	),
	(
		6
		, 5
		, 5
		, NULL
	),
	(
		7
		, 6
		, 3
		, NULL
	),
	(
		7
		, 7
		, 2
		, NULL
	),
	(
		8
		, 7
		, 1
		, NULL
	),
	(
		8
		, 8
		, 1
		, 1199
	),
	(
		8
		, 9
		, 2
		, NULL
	),
	(
		9
		, 10
		, 1
		, NULL
	),
	(
		10
		, 10
		, 2
		, NULL
	),
	(
		11
		, 11
		, 1
		, NULL
	),
	(
		12
		, 12
		, 1
		, 1000
	),
	(
		13
		, 13
		, 2
		, NULL
	),
	(
		13
		, 5
		, 2
		, NULL
	),
	(
		14
		, 4
		, 1
		, NULL
	),
	(
		14
		, 6
		, 1
		, NULL
	),
	(
		14
		, 2
		, 2
		, NULL
	),
	(
		14
		, 6
		, 7
		, NULL
	),
	(
		15
		, 9
		, 1
		, NULL
	),
	(
		16
		, 12
		, 2
		, NULL
	);

-- Bestsellers
	DROP TABLE IF EXISTS t_bestseller;

	CREATE TABLE t_bestseller (
		bestseller_id SERIAL
		, book_id INTEGER
		, quantity_sold INTEGER
	);

	INSERT INTO t_bestseller (
		book_id
		, quantity_sold
	)
	VALUES (
		5
		, 3
	),
	(
		6
		, 3
	);