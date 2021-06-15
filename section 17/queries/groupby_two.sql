-- using more than 1 column in select
-- get average movie length group by movie language & age certification
select
	movie_lang,
	age_certificate,
	avg(movie_length)
from movies
group by
	movie_lang, age_certificate
order by
	1 asc,
	2 desc

-- filter with group by
-- get average movie length group by movie language & age certification
-- where movielength greater than 100
select
	movie_lang,
	age_certificate,
	avg(movie_length)
from movies
where movie_length > 100
group by
	movie_lang, age_certificate
order by
	3 asc

-- How many directors are there per nationality
select
	count(director_id),
	nationality
from directors
group by nationality
order by 1 asc

-- can we group by an aggregate function column?
-- "NOOOOOO"

-- order of execution
FROM

WHERE

GROUP BY

HAVING

SELECT

DISTINCT

ORDER BY

LIMIT