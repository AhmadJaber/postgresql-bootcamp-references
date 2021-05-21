-- Using IN & NOT IN

-- IN & NOT IN are used to check if a value matches or not matches in a list
-- returns true or false

-- syntax: value IN (value1, value2, .....), where value can be he column/field
-- syntax: value NOT IN (value1, value2, .....), where value can be he column/field

-- IN will return true if value matches any value in the list
-- NOT IN will return true if value does not match any value in the list

-- get all movies for english, chinese, japanese languages
-- first the alternative way using OR operator
SELECT
*
FROM movies
WHERE
	movie_lang = 'English'
	OR movie_lang = 'Chinese'
	OR movie_lang = 'Japanese'
ORDER BY
	movie_lang;

-- using IN which is the efficient way
SELECT
*
FROM movies
WHERE
	movie_lang IN ('English', 'Chinese', 'Japanese')
ORDER BY
	movie_lang;

-- get all movies where age certification is 13 & PG
SELECT
*
FROM movies
WHERE
	age_certificatE IN ('12', 'PG')
ORDER BY
	age_certificate;

-- get all movies where director id is not 13 or 10
SELECT
*
FROM movies
WHERE
	director_id NOT IN (13, 10)
ORDER BY
	director_id;

  -- -------------------------------------------------
  -- using BETWEEN & NOT BETWEEN

-- An operator to match a value against a range of value
-- syntax: value BETWEEN low AND high

-- get all actors where birth_date between 1991 and 1995
SELECT
*
FROM actors
WHERE
	date_of_birth BETWEEN '1991-01-01' AND '1995-12-31'
ORDER BY date_of_birth;

-- GET all english movies where movie length is NOT between 100 & 200
SELECT
*
FROM movies
WHERE
	movie_lang = 'English'
	AND movie_length NOT BETWEEN 100 AND 200
ORDER BY
	movie_length;

-- GET all english movies where movie length is between 100 & 200 not using BETWEEN
-- which is not efficient
SELECT
*
FROM movies
WHERE
	movie_lang = 'English'
	AND (movie_length >= 100 AND movie_length <= 200)
ORDER BY
	movie_length;

-- -------------------------------------------------
-- LIKE & ILIKE operators

-- Operators to query data using pattern matching
-- LIKE is case-sensitive & ILIKE is not case-sensitive
-- Both let u search for patterns in strings by using two special characters
-- percent sign (%)
-- underscore sign (_)

-- syntax: value LIKE pattern
-- syntax: value ILIKE pattern

-- get all acotors first_names where first_name starting with 'A'
SELECT
*
FROM actors
WHERE
	first_name LIKE 'A%'
ORDER BY
	first_name;

-- get all the actors name whrere first_name with 5 characters only
SELECT
	first_name
FROM actors
WHERE
	first_name LIKE '_____'
ORDER BY
	first_name;

-- get all the actors name whrere first_name contains 'l' on the second place
SELECT
*
FROM actors
WHERE
	first_name LIKE '_l%'
ORDER BY
	first_name;

-- get record from actors where actor name is 'tim'
SELECT
*
FROM actors
WHERE
	first_name ILIKE '%tim%'
ORDER BY
	first_name;

-- As LIKE & ILIKE searches for patterns, performance on large databases can be slow
-- we can improve performances using indexes or more

-- ------------------------------------------------------
-- Using IS NULL & IS NOT NULL keywords

-- IS NULL operator to check if a value is null
-- IS NOT NULL operator to check if a value is not null

-- IS NULL in a WHERE clause returns only values that are NULL
-- IS NOT NULL in a WHERE clause returns only values that are not NULL

-- syntax: value IS NULL,
-- syntax: value IS NOT NULL

-- FIND list of actors with missing birthdate
SELECT
*
FROM actors
WHERE
	date_of_birth IS NULL
ORDER BY
	date_of_birth;

-- find list of actors with missing birth date or missing first_name
SELECT
*
FROM actors
WHERE
	date_of_birth IS NULL
	OR first_name IS NULL
ORDER BY
	date_of_birth;

-- GET list of movies where domestic_revenues are not null
SELECT
*
FROM movies_revenues
WHERE
	revenues_domestic IS NOT NULL
ORDER BY
	revenues_domestic;

-- for null checking, IS NULL or IS NOT NULL is the best way for all types

-- ------------------------------------------------------
-- Concatenation techniques

-- concatenation operator ||
-- SELECT 'string' || 'string' AS new_string;

-- combining columns together
-- SELECT CONCAT(col_one, col_two) AS new_string;

-- combining columns together CONCAT_WS, which gives us a to set seperator

-- lets combine string 'hello' and 'world'
SELECT 'hello' || ' ' || 'world';

-- lets combine actors first & last name as 'Actor Name'
SELECT
	first_name || ' ' || last_name AS "Actor Name"
FROM actors
ORDER BY
	"Actor Name";

-- alternative
SELECT
	CONCAT(first_name, ' ', last_name) AS "Full Name"
FROM actors
ORDER BY
	"Full Name";

-- alternative using CONCAT_WS
SELECT
	CONCAT_WS(' ', first_name, last_name) AS "Full Names"
FROM actors
ORDER BY
	"Full Names";

-- lets print first_name, last_name, date_of_birth of all actors separated by comma
SELECT
	CONCAT_WS(', ', first_name, last_name, date_of_birth) AS "Actor Info"
FROM actors
ORDER BY
	date_of_birth;

-- ---------------------------------------------
-- when concatenation how NULL values are handled

-- Are they ignore null values?
-- using ||
SELECT 'HELLO' || NULL || 'world';
-- gives us [null]

-- using CONCAT
SELECT
	revenues_domestic,
	revenues_international,
	CONCAT(revenues_domestic, ' | ', revenues_international) AS "Total Revenues"
FROM movies_revenues;

-- the problem of using CONCAT with NULL value is if put any separator like '|'
-- that will be remained, the row will not be empty.
-- like, CONCAT([null], ' | ', [null]), the | will be remaining, which is not good

-- for that we can use CONCAT_WS, which is more smart
SELECT
	revenues_domestic,
	revenues_international,
	CONCAT_WS(' | ', revenues_domestic, revenues_international) AS "Total Revenues"
FROM movies_revenues;