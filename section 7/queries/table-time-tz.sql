-- TIMESTAMP & TIMESTAMPTZ data-type

/*
	Allows to both date & time together

	TIMESTAMP		timestamp with out timezone
	TIMESTAMPTZ 	timestamp with timezone
*/

CREATE TABLE table_time_tz (
	ts TIMESTAMP,
	ts_tz TIMESTAMPTZ
);

SELECT * FROM table_time_tz;

INSERT INTO table_time_tz (ts, ts_tz) VALUES
('2020-2-22 10:10:10-07', '2020-2-22 10:10:10-07')

SELECT * FROM table_time_tz;

-- show timezone
SHOW TIMEZONE;
-- "Asia/Dhaka"

-- lets change the timezone
SET TIMEZONE = 'America/New_York';

-- revert back to my timezone
SET TIMEZONE = 'Asia/Dhaka';

-- get current_timestamp, using CURRENT_TIMESTAMP, Which is "timestamp with timezone"
SELECT CURRENT_TIMESTAMP;

-- GET current time of the day, Which is a text-ype
SELECT TIMEOFDAY();

-- using timezone() function to convert a time based on a timezone
-- value is time without timezone
SELECT TIMEZONE('Asia/Singapore', '2020-01-01 00:00:00')