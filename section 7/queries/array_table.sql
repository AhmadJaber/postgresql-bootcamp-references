CREATE TABLE array_table (
	id serial PRIMARY KEY,
	name VARCHAR (100),
	phones TEXT []
);

INSERT INTO array_table (name, phones) VALUES
('Tim', ARRAY ['(408)-589-5846','(408)-589-5555']),
('Hix', ARRAY ['(408)-589-5846','(408)-589-5555']);

SELECT * FROM array_table;

-- we want to get the contacts name & first phone number
SELECT
	name,
	phones [1]
FROM array_table;

-- who has the phone number (408)-589-5555 as the second phone number
SELECT
	name
FROM array_table
WHERE
	phones [2] = '(408)-589-5555';

-- update the second phone number of hix
UPDATE array_table
SET phones[2] = '(408)-589-5843'
WHERE
	id = 2;

-- we want to know who has the phone number (408)-589-5555
-- regardless of position of the phone number in the phones array
SELECT
	name,
	phones
FROM array_table
WHERE
	'(408)-589-5555' = ANY(phones);