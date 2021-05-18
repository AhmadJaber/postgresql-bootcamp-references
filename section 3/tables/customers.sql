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

-- insert single data into customers table
/*
INSERT INTO customers (col_one, col_two)
VALUES(col_one, col_two);
*/
INSERT INTO customers (first_name, last_name, email, age)
VALUES('ashik', 'jaber', 'a@b.com', 27);

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