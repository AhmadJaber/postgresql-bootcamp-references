-- DATE data-type

/*
	stores date values
	Uses 4 bytes to store date value
	By default the format is, YYYY-MM-DD

	Some very useful keywords

	CURRENT_DATE  stores current date

	syntax: column_name DATE
*/

CREATE TABLE dates_table (
	id SERIAL PRIMARY KEY,
	employee_name VARCHAR(100) NOT NULL,
	hire_date DATE NOT NULL,
	add_date DATE DEFAULT CURRENT_DATE
);

SELECT
*
FROM dates_table;

INSERT INTO dates_table (employee_name, hire_date) VALUES
('ashik', '2021-03-01'),
('jaber', '2021-06-01');

SELECT
*
FROM dates_table;

-- very useful function to get date & time of now
SELECT NOW();

-- ADD column in dates_table
ALTER TABLE dates_table
ADD COLUMN hire_time TIMESTAMPTZ DEFAULT NOW();

SELECT
*
FROM dates_table;

-- "2021-05-22 14:32:37.800821+06", Here .800821 is the precision time & +06 is timezone