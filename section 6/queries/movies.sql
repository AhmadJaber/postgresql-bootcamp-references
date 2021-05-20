-- Using WHERE

-- WHERE clause allows us to use specific conditions to our queries.
-- Using WHERE, we can limit the results that only the data that satisfies our conditions
-- Filter, rows data by running conditions
-- We can use WHERE clause in conjunction with operators

-- use single condition

-- Get all english language movies
-- We will be filtering rows based on the text value (movie_lang === VARCHAR)
-- When using text as a criteria in WHERE clause, the text values must be
-- sorrounded by single quotes (movie_lang = 'English'), no double quotes

SELECT
	*
FROM movies
WHERE
	movie_lang = 'English';

-- get all japanese language movies
SELECT
	*
FROM movies
WHERE
	movie_lang = 'Japanese';

-- Use multiple conditions
-- Using the AND and OR operators with two separate fields

-- Get all english language movies AND age_certificate to 18.
SELECT
	*
FROM movies
WHERE
	movie_lang = 'English'
	AND age_certificate = '18';

-- using OR operator
-- OR allow us to find the records tha match any of the criteria

-- Get all english language OR chinese movies
SELECT
	*
FROM movies
WHERE
	movie_lang = 'English'
	OR movie_lang = 'Chinese'
ORDER BY
	movie_lang DESC;

-- get all English language AND director id equal to 10
SELECT
	*
FROM movies
WHERE
	movie_lang = 'English'
	AND director_id = 8;

-- -------------------------------------------------
-- combining the AND and OR conditions

-- get all english OR chinese movies AND movies with age_certificate equal to 12
SELECT
*
FROM movies
WHERE
	(movie_lang = 'English'
	OR movie_lang = 'Chinese')
	AND age_certificate = '12';

-- use parenthesis when combining AND and OR operator.

-- Can i use WHERE before FROM clause, (No No No)
-- Can i use WHERE after ORDER BY clause, (No No No)

-- ---------------------------------------------------
-- COMPARISON operators
-- Can we work with dates data types?

-- When quering for dates, it is important to first take a look at how the date is stored in the table
-- means the date format - YYYY-MM-DD(default) or DD-MM-YYYY.

-- get all movies where release date is greater than 2000
SELECT
*
FROM movies
WHERE
	release_date > '2000-12-31'
ORDER BY
	release_date;

-- Must wrap quotes on date data type in WHERE.

-- How about using text data types? (like - CHAR, VARCHAR, etc)
-- Get all movies which is greater than english language
SELECT
*
FROM movies
WHERE
	movie_lang > 'English'
ORDER BY
	movie_lang;

-- so in text data types the > than doesnot evaluate in terms of numeric value
-- it evaluates in terms of alphabatical order. so we get data which contains
-- movie_lang alphabtically greater than `E`.

-- get all the languages which is not in english
-- <> operator or !=
SELECT
*
FROM movies
WHERE
	movie_lang <> 'English'
ORDER BY
	movie_lang;

-- -----------------------------------------------
-- using LIMIT to limit output records
/*
syntax
SELECT
*
FROM table_name
WHERE
ORDERBY
LIMIT
*/

-- get top five biggest movies by their movie_length
SELECT
*
FROM movies
ORDER BY
	movie_length DESC
LIMIT 5;

-- get top five oldest american directors
SELECT
*
FROM directors
WHERE
	nationality = 'American'
ORDER BY
	date_of_birth
LIMIT 5;

-- get the top 10 youngest female actress
SELECT
*
FROM actors
WHERE
	gender = 'F'
ORDER BY
	date_of_birth DESC
LIMIT 10;

-- TOP ten most domestic profitable movies
SELECT
*
FROM movies_revenues
ORDER BY
	revenues_domestic DESC NULLS LAST
LIMIT 10;

-- --------------------------------------------------------------
-- using OFFSET
-- allow us to specify from which row we want the limited data
-- syntax: LIMIT number OFFSET fromnumber(row)
-- system first look at the OFFSET number first then run the LIMIT.

-- list 5 films starting from the fourth one ordered by movie_id
SELECT
*
FROM movies
ORDER BY
	movie_id
LIMIT 5 OFFSET 3;

-- LIST all top 5 movies after the top 5 highest deomestic profit movies
SELECT
*
FROM movies_revenues
ORDER BY
	revenues_domestic DESC NULLS LAST
LIMIT 5 OFFSET 5;

-- -------------------------------------------
-- Using FETCH

-- FETCH clause to retrive a portion of rows returned by a query
-- FETCH clause functionality is equivalent to LIMIT clause
-- i should use the FETCH clause becuase it follows the standard SQL

/*
syntax
OFFSET start {ROW | ROWS}
FETCH {FIRST | NEXT} {row_count} {ROW | ROWS} ONLY
*/

-- the OFFESET start is an integer that must be zero or positive. By default start is 0
--  if the start is greater than the number of rows in the result set, no rows will return

-- get first row of movies table
SELECT
*
FROM movies
FETCH FIRST 1 ROW ONLY;

-- get top 5 biggest movies by movie length
SELECT
*
FROM movies
ORDER BY
	movie_length DESC
FETCH FIRST 5 ROW ONLY;

-- get top 5 oldest american directors
SELECT
*
FROM directors
ORDER BY
	date_of_birth
FETCH FIRST 5 ROW ONLY;

-- TOP 10 youngest female actors
SELECT
*
FROM actors
WHERE
	gender = 'F'
ORDER BY
	date_of_birth DESC
FETCH FIRST 10 ROW ONLY;

-- get first 5 movies from the 5th record onwards by movie_length
SELECT
*
FROM movies
ORDER BY
	movie_length DESC
OFFSET 5
FETCH FIRST 5 ROW ONLY;