-- create a customers table with CREATE TABLE
-- fields (customer_id, first_name, last_name, age, email)

CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	age INT,
	email VARCHAR(150)
);

-- view the table structure of customers table
SELECT * FROM customers;

-- ---------------------------------------------------
-- insert single data into customers table
/*
INSERT INTO customers (col_one, col_two)
VALUES(col_one, col_two);
*/
INSERT INTO customers (first_name, last_name, email, age)
VALUES('ashik', 'jaber', 'a@b.com', 25);

SELECT * FROM customers;

-- insert multiple records into a table
/*
INSERT INTO table_name (col_one, col_two) VALUES
(col_one, col_two),
(col_one, col_two);
*/
INSERT INTO customers (first_name, last_name) VALUES
('ahmad', 'jaber'),
('larry', 'bird');

SELECT * FROM customers;

-- ---------------------------------------------------
-- insert a data/string that has quotes
-- solution: add an aditional quote next to the quote

INSERT INTO customers (first_name)
VALUES ('Shakik o''neal');

SELECT * FROM customers;

-- ---------------------------------------------------
-- RETURNING CLAUSE
-- use RETURING to get info on the newly added rows

-- default behaviour when we add a record into a table
INSERT INTO customers (first_name)
VALUES ('oskar');

-- the message is, Query returned successfully in 61 msec.
-- if i want more info or the whole row that added in the table
INSERT INTO customers (first_name)
VALUES ('loki') RETURNING *;

-- IF I want to see a single column returned in the message
INSERT INTO customers (first_name)
VALUES ('thor') RETURNING first_name;

-- ---------------------------------------------------
-- UPDATE data in a table
/*
UPDATE table_name
SET column_name = 'new-value'
WHERE column_name = 'value';
*/

-- update single column
UPDATE customers
SET email = 'a2@b.com'
WHERE customer_id = 1

-- update multiple column
UPDATE customers
SET
email = 'a3@b.com',
age = 25
WHERE customer_id = 1

-- ---------------------------------------------------
-- use RETURINING to get only the updated rows as output
UPDATE customers
SET email = 'l@b.com'
WHERE customer_id = 6
RETURNING *;

-- ---------------------------------------------------
-- UPDATE all records in a table
-- solutio: remove WHERE

UPDATE customers
SET is_enable = 'N'
RETURNING *;

-- ---------------------------------------------------
-- DELETE records from a table

-- delete record based on a condition
/*
DELETE FROM table_name
where column_name = value
*/
DELETE FROM customers
WHERE customer_id = 2

-- delete all the records/data in a table
DELETE FROM customers;

-- have to be careful what i delete because it is not recoverable unless we have backups
-- also have to be careful which database, table, clumn i am deleting
