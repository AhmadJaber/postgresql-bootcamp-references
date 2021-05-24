-- Modifying table structures, add constraints
-- adding columns
CREATE TABLE persons (
	person_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL
);

ALTER TABLE persons
ADD COLUMN age INT NOT NULL;

ALTER TABLE persons
ADD COLUMN nationality VARCHAR(20) NOT NULL,
ADD COLUMN email VARCHAR(100) NOT NULL UNIQUE;
-- UNIQUE Keyword make sure every value in this column should be unuque

SELECT * FROM persons;

-- rename a table
ALTER TABLE users
RENAME TO persons;

-- rename a column
ALTER TABLE persons
RENAME COLUMN age TO persons_age;

-- Drop a column
ALTER TABLE persons
DROP COLUMN persons_age;

-- add age column
ALTER TABLE persons
ADD COLUMN age VARCHAR(20) NOT NULL;

-- Change the data type of a column
ALTER TABLE persons
ALTER COLUMN age TYPE INT
USING age::integer;

-- if i change it back to varchar
ALTER TABLE persons
ALTER COLUMN age TYPE VARCHAR(20);
-- for changing int to varchar no need of USING column_name::type needed;

-- set default value of a column
ALTER TABLE persons
ADD COLUMN is_enable VARCHAR(1) DEFAULT 'Y';

-- or
ALTER TABLE persons
ALTER COLUMN is_enable SET DEFAULT 'N';

-- Insert data
INSERT INTO persons (first_name, last_name, age, nationality, email) VALUES
('JABER', 'ASHIK', 27, 'banngladesh', 'a2@gmail.com');

SELECT * FROM persons;

-- ----------------------------------------------------------
-- add constraints

-- add a unique constraints to a column
CREATE TABLE web_links (
	link_id SERIAL PRIMARY KEY,
	link_url VARCHAR(255) NOT NULL,
	link_target VARCHAR(255)
);

INSERT INTO web_links (link_url, link_target)
VALUES('www.amazon.com', '_blank')

SELECT * FROM web_links;

ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE (link_url);
-- syntax ADD CONSTRAINTS constraint_name UNIQUE (column_name)

-- TO set a column to accept only defined allowe/acceptable value
ALTER TABLE web_links
ADD COLUMN is_enable VARCHAR(2) CHECK( is_enable IN ('Y', 'N'));

INSERT INTO web_links (link_url, link_target, is_enable)
VALUES('www.netflix.com', '_blank', 'N')
