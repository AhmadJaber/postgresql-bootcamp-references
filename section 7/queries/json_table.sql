-- JSON data type
-- json stands for Javascript Object Notation
-- Unlike other format JSON is human readable text

-- create a table for practising json data-type
CREATE TABLE json_table (
	json_id SERIAL PRIMARY KEY,
	info json NOT NULL
);

INSERT INTO json_table (info)
VALUES('{ "customer": "Lily Bush", "items": {"product": "Diaper","qty": 24}}'),
      ('{ "customer": "Josh William", "items": {"product": "Toy Car","qty": 1}}'),
      ('{ "customer": "Mary Clark", "items": {"product": "Toy Train","qty": 2}}');

SELECT
	info
FROM json_table;

-- PostgreSQL provides two native operators -> and ->> to help you query JSON data.
SELECT
	info -> 'customer' as customer
FROM json_table;
-- returns json object field by key

SELECT
	info ->> 'customer' as customer
FROM json_table;
-- returns json object field by text

SELECT
	info -> 'items' ->> 'product' as product
FROM json_table
ORDER BY
	product;

SELECT
	info ->> 'customer' AS customer
FROM json_table
WHERE
	info -> 'items' ->> 'product' = 'Diaper';

-- To find out who bought two products at a time,
SELECT
	info -> 'customer' AS customer,
	info -> 'items' ->> 'product' AS product
FROM json_table
WHERE
	CAST (info -> 'items' ->> 'qty' AS INTEGER) = 2;

-- Apply aggregate functions to JSON data
SELECT
	MIN(CAST (info -> 'items' ->> 'qty' AS INTEGER)),
	MAX (CAST (info -> 'items' ->> 'qty' AS INTEGER)),
   	SUM (CAST (info -> 'items' ->> 'qty' AS INTEGER)),
   	AVG (CAST (info -> 'items' ->> 'qty' AS INTEGER))
FROM json_table;

-- json_typeof function
SELECT
	json_typeof (info->'items')
FROM json_table;