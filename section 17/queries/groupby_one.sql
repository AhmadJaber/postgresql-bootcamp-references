-- GROUP BY clause divides the rows returned from SELECT statement into groups
-- for each group i can apply an aggregate fuction like
-- COUNT, SUM, MIN, MAX, AVG etc

-- get total count of all movies group by movie language
SELECT
	movie_lang,
	COUNT(movie_lang)
FROM movies
GROUP BY movie_lang
ORDER BY movie_lang ASC;

-- get average movie length group by movie languages
SELECT
	movie_lang,
	AVG(movie_length)
FROM movies
GROUP BY
	movie_lang
ORDER BY
	movie_lang


-- get the sum total movie length per age certificate
SELECT
	age_certificate,
	SUM(movie_length)
FROM movies
GROUP BY age_certificate
ORDER BY age_certificate

-- list minimum & maximum movie length group by movie languages
SELECT
	movie_lang,
	MAX(movie_length),
	MIN(movie_length)
FROM movies
GROUP BY movie_lang

-- can we use group by without aggregate function
-- absolutely
-- as i can see remove the duplicate only takes the unique value
SELECT movie_lang FROM movies GROUP BY movie_lang;

-- in min & max movie problem, can we use column1, aggregate fucntion
-- without specifying GROUP BY clause.
-- answer is NO