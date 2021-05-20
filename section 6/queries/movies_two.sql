-- Using IN & NOT IN

-- IN & NOT IN are used to check if a value matches or not matches in a list
-- returns true or false

-- syntax: value IN (value1, value2, .....), where value can be he column/field
-- syntax: value NOT IN (value1, value2, .....), where value can be he column/field

-- IN will return true if value matches any value in the list
-- NOR IN will return true if value does not match any value in the list

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