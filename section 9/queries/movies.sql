-- what is a type conversion?
/*
	a data converted from it's original type to ANOTHER data type is called conversion

	two types of conversion

	implicit 		data conversion is done automatically

	explicit		data conversion is done via 'conversion functions' e.g CAST or ::
*/

SELECT * FROM movies;

-- implicit
SELECT
*
FROM MOVIES
WHERE
	movie_id = 1;  -- same data type so no conversion

-- now
SELECT
*
FROM MOVIES
WHERE
	movie_id = '1'; -- PSQL automatically do the conversion here i.e implicit conversion

-- what if we want to use explicit conversion
SELECT
*
FROM MOVIES
WHERE
	movie_id = integer '1'; -- explicit conversion using integer type


-- ------------------------------------------------
-- CAST() for data conversion
-- syntax: CAST (expression AS data_type)
-- here expression can be a constant, table_column or an expression

-- integer
SELECT
	CAST ('10' AS INTEGER);

SELECT
	CAST ('10N' AS INTEGER); -- This will throw an error

-- string to date conversion
SELECT
	CAST ('2020-01-01' AS DATE),
	CAST ('01-MAY-2021' AS DATE);
-- PSQL is smart enough to convert a different format of string date to DATE

-- string to boolean
SELECT
	CAST ('true' AS BOOLEAN),
	CAST ('false' AS BOOLEAN),
	CAST ('F' AS BOOLEAN),
	CAST ('T' AS BOOLEAN),
	CAST ('0' AS BOOLEAN),
	CAST ('1' AS BOOLEAN);

-- string to double
SELECT
	CAST ('14.7888' AS DOUBLE PRECISION)

-- I can us :: to type conversion
-- syntax: expression::type
-- string to timestamp
SELECT
	'2020-02-20 10:30:30.456'::TIMESTAMP;

SELECT
	'2020-02-20 10:30:30.456'::TIMESTAMPTZ;

-- string to interval
SELECT
	'10 minute'::interval,
	'10 hour'::interval,
	'1 day'::interval,
	'2 week'::interval,
	'5 month'::interval;

	-- --------------------------------------------------
	-- Implicit to explicit coversions

-- using integer and factorial
SELECT 20 ! AS "result";
-- ! (factorial) takes an argument type bigint
-- PSQL gives the right type(numeric) & result but best practise would be

SELECT CAST (20 AS BIGINT) ! AS "Result";

-- round with numeric
SELECT ROUND(10, 4) AS "result";

-- for ROUND function input data must be in numeric format
SELECT ROUND(CAST (10 AS NUMERIC), 4) AS "Result";

-- CAST with text
-- SUBSTR(text, index starts with 1), retrive a chunk of string from a string
SELECT
	SUBSTR('123456', 2) AS "implicit",
	SUBSTR(CAST('123456' AS TEXT), 4) AS "explicit";
