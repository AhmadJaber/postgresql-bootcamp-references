-- Select all the data from table
SELECT * FROM actors;

-- --------------------------------------
-- selecting specific column/fields from a table

-- get first_name form actors table
SELECT first_name FROM actors;

-- get first_name, last_name form actors table
SELECT first_name,last_name FROM actors;

-- --------------------------------------
-- Adding aliases to columns in a table
-- syntax: SELECT column AS alias_name FROM table_name

-- Make alias of first_name as firstName of actors table
SELECT first_name AS firstName FROM actors;

/*
one thing to remember the naming convention of column is lowercase,
so we will see in table firstname. To get around that we use ""
*/
SELECT first_name AS "firstName" FROM actors;

-- Make alias of first_name as 'First Name' of actors table
SELECT first_name AS "First Name" FROM actors;

-- Make alias for movie_name as 'Movie Name' and movie_lang as 'Language' of movies table
SELECT
	movie_name AS "Movie Name",
	movie_lang AS "Language"
FROM movies;

-- one thing to remember AS keyword is optional, but helpful for readability
-- can not use single quote when making an alias.

/*
	column aliases can be used for derived columns,
	means combining two or more column to produce a third column
*/

-- --------------------------------------
-- Assigning column alias to an expression

-- get first_name & last_name form actors table
SELECT first_name, last_name FROM actors;

-- Can we combine first_name, last_name together to make "Full Name"?
-- Yes. Using Expressions
-- We will use || as the concatenating operator
SELECT
	first_name || ' ' || last_name AS "Full Name"
FROM actors;

-- can i just use expressions to get output without using a table column?
-- yes. I can.
SELECT 10*2;

-- --------------------------------------
-- using ORDER BY to sort records
-- When u query data from a table, the SELECT statement returns rows in unspecified order.
-- to sort the rows we use ORDER BY clause in SELECT statement

/*
SELECT
	cloumn_list
FROM table_name
ORDER BY
	sort_expression1 [ASC | DESC],
	...
	sort_expressionN [ASC | DESC];

sort_expression can be a single column or an expression
*/

-- sort based on single column
-- Sort all movies records by their release_date in ascending order
SELECT
	*
FROM movies
ORDER BY
	release_date ASC;

-- What if i don't put ASC? (ORDER BY default is ASC)

-- Sort all movies records by their release_date in descending order
SELECT
	*
FROM movies
ORDER BY
	release_date desc;

-- sort based on multiple column
-- sort all the movies records by their release_date in descending order & movie_name ascending order

SELECT
	*
FROM movies
ORDER BY
	release_date DESC,
	movie_name DESC;

-- one thing to remember the sort_expression order is important how the table
-- data will actually look

-- -----------------------------------
-- using ORDER BY with alias column name

-- get first_name & last_name with actors table
SELECT
	first_name,
	last_name
FROM actors;

-- make an alias of last_name as surname
SELECT
	first_name,
	last_name AS surname
FROM actors;

-- sort rows by lastname
SELECT
	first_name,
	last_name AS surname
FROM actors
ORDER BY
	last_name;

-- sort rows by lastname, desc
SELECT
	first_name,
	last_name AS surname
FROM actors
ORDER BY
	last_name DESC;

-- now use alias surname in ORDER BY clause
SELECT
	first_name,
	last_name AS surname
FROM actors
ORDER BY
	surname;

-- ------------------------------------
-- use ORDER BY to sort rows by expressions

-- lets get all the records of actors table
SELECT * FROM actors;

-- Lets claculate the length of the actor name witn LENGTH function
SELECT
	first_name,
	LENGTH(first_name) AS "Length"
FROM actors;

-- lets sort rows by the length of the actor name in descending order
SELECT
	actor_id,
	first_name,
	LENGTH(first_name) AS "Length"
FROM actors
ORDER BY
	"Length" DESC;


-- -------------------------------------
-- how to use column_name or column_number in ORDER BY clause

-- lets view all the records in actors
SELECT * FROM actors;

-- sort all the records by firs_name asc, date_of_birth desc
SELECT
	first_name,
	last_name,
	date_of_birth
FROM actors
ORDER BY
	first_name ASC,
	date_of_birth DESC;

-- now use column number instead of column_name for sorting
SELECT
	first_name,
	last_name,
	date_of_birth
FROM actors
ORDER BY
	1 ASC,
	3 DESC;

-- best practise to use column_name instead of column number

-- -------------------------------------------------
-- use ORDER BY with NULL values

-- NULL is a marker that indicates
-- 	* Either its a missing data or
-- 	* the data is unknown

-- when u sort rows that contains NULL, i can specify the order of NULL
-- with other non-null values by using the NULLS FIRST or NULLS LAST option
-- of ORDER BY clause

-- to demonstrate that, lets create a table called demo_sorting
CREATE TABLE demo_sorting (
	number INT
);

-- insert some data with NULL values into demo_sorting table
INSERT INTO demo_sorting (number) VALUES
(1),
(2),
(3),
(NULL)

-- get all the records
SELECT * FROM demo_sorting;

-- get all the record form demo_sorting & sort number asc & place null first
SELECT
	*
FROM demo_sorting
ORDER BY
	number ASC NULLS FIRST

-- get all the record form demo_sorting & sort number desc & place null last
SELECT
	*
FROM demo_sorting
ORDER BY
	number DESC NULLS LAST

-- ------------------------------------------
-- selecting DISTINCT values
-- syntax: SELECT DISTINCT column_name FROM tabale_name

-- get all the records from movies table
SELECT * FROM movies;

-- get movie_lang from movies table
SELECT
	movie_lang
FROM movies;

-- get unique movie lang
SELECT
	DISTINCT movie_lang
FROM movies
ORDER BY
	movie_lang;

-- get unique director id
SELECT
	DISTINCT director_id
FROM movies
ORDER BY
	director_id;

-- get multiple distinct values
SELECT
	DISTINCT director_id, movie_lang
FROM movies
ORDER BY
	2;

-- get all the unique records in movie table
SELECT
	DISTINCT *
FROM movies
ORDER BY
	movie_id ASC;