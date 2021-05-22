-- decimal numbers
-- numeric(precision), real, double precision

CREATE TABLE table_numbers (
	number_id SERIAL PRIMARY KEY,
	col_numeric numeric(20, 5),
	col_real real,
	col_double double precision
);

SELECT
*
FROM table_numbers;

INSERT INTO table_numbers (col_numeric, col_real, col_double) VALUES
(.9, .9, .9),
(3.13175, 3.13175, 3.13175),
(4.1234567891, 4.1234567891, 4.1234567891);

SELECT
*
FROM table_numbers;