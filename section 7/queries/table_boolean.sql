-- boolean data_types

CREATE TABLE table_boolean (
	boolean_id SERIAL PRIMARY KEY,
	is_available BOOLEAN NOT NULL
);

INSERT INTO table_boolean (is_available) VALUES
(TRUE),
(FALSE),
('true'),
('false'),
('0'),
('1'),
('f'),
('t'),
('y'),
('no')

SELECT * FROM table_boolean;

-- conditional searches
SELECT
*
FROM table_boolean
WHERE
	is_available = 'no';

-- using NOT oprator for conditions
SELECT
*
FROM table_boolean
WHERE
	NOT is_available;

-- GET only trues
SELECT
*
FROM table_boolean
WHERE
	is_available;

-- *** set default values for boolean columns
ALTER TABLE table_boolean
ALTER COLUMN is_available
SET DEFAULT 'false';


-- ---------------------------------
-- character data types
-- CHAR(n)

SELECT CAST('adnan' AS CHARACTER(10)) AS "Name";
SELECT CAST('adnan' AS CHAR(10)) AS "Name";

-- the output will be, "adnan     "

-- without CAST
SELECT 'adnan'::CHAR(10) AS "Name";

-- the output will be, "adnan     "
-- i will use CHAR, when i am sure the data of my column has a fixed length
-- like - ISO country code

-- VARCHAR(n)
SELECT 'adnan'::VARCHAR(10) AS "Name";
-- the output is - "adnan", no padded spacing

SELECT 'this is a varchar'::VARCHAR(10) AS "block";
-- the output is - "this is a ", keep in mind

SELECT 'this is 123 %^%$^'::VARCHAR(20) AS "block";
-- "this is 123 %^%$^"
