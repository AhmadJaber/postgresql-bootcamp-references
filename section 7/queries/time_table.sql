-- TIME data type, which is time without timezone

/*
	store the time of the day
	Take 8 bytes to store time

	syntax: column_name TIME(precision)
	precision, number of fractional digits placed in the second field
	precision up to 6 digits

	Different formats

	HH:MM		10:30
	HH:MM:SS	10:59:25  22:42:47
	HHMMSS		105836

	HH:MM:SS.pppppp		10:59:25.343434
	HHMMSS.pppppp		104432.342123
*/

-- lets create a sample table
CREATE TABLE table_time (
	id SERIAL PRIMARY KEY,
	class_name VARCHAR(100) NOT NULL,
	start_time TIME NOT NULL,
	end_time TIME NOT NULL
);

SELECT * FROM table_time;

INSERT INTO table_time (class_name, start_time, end_time) VALUES
('MATH', '08:00:00', '09:00:00'),
('CHEMISTRY', '09:00:01', '10:00:00');

SELECT * FROM table_time;

-- getting current time with CURRENT_TIME, which is "time with timezone"
SELECT CURRENT_TIME;

-- I can use precision with CURRENT_TIME
-- Sometimes it is not necessary to use full precision
-- whenever we use time-series analysis this is very very cruical
SELECT CURRENT_TIME(4);

-- getting local current time using LOCALTIME, "time without time zone"
SELECT CURRENT_TIME, LOCALTIME;

-- precision in LOCALTIME vs CURRENT_TIME
SELECT CURRENT_TIME(3), LOCALTIME(3);

-- Arithmatic operations
-- i have to make sure i pass TIME data-type when doing the operation
-- also the result will be type INTERVAL
SELECT TIME '12:00' - TIME '04:00' AS "Result";

-- INTERVAL
-- Special functionality in postgressql, which allow us to add or remove
-- hours, days, months to an DATE object or date/time data-type.
/*
	syntax: interval 'n type'

	n = number
	type = seconds, minutes, hours, days, months, years ................
*/

-- add 4hours with current time
SELECT
	CURRENT_TIME,
	LOCALTIME,
	CURRENT_TIME + INTERVAL '4 hours'
AS "Result";