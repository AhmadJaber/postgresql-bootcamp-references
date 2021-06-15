-- HAVING clause
-- we use HAVING clause to specify a search condintion for a group or an aggregate
-- HAVING clause is often used with ORDER BY clause
-- i can not use column aliases in the HAVING clause, because Having evaluates
-- before SELECT clause.
-- having clause claculates on aggregate function & not actual select columns!

-- for aggregate function
-- having aggregate_function(column_one) = value, we can do this

-- list movies languages where sum total length of the movies greater than 200
select
	movie_lang,
	sum(movie_length)
from movies
group by movie_lang
having
	sum(movie_length) > 200
order by 2 desc;

-- list of directors where their sum total movie length is greater than 20
select
	director_id,
	sum(movie_length)
from movies
group by director_id
having
	sum(movie_length) > 200
order by 2 desc;