-- UUID type
-- Universal Unique Identifier
-- 32 hexadecimal digits

-- install uuid-ossp module, which is a third-party UUID extintion
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- lets generate a sample uuid value first
SELECT uuid_generate_v1();

-- generate a sample uuid value solely based on random number
SELECT uuid_generate_v4();

-- create table to practise uuid type
CREATE TABLE table__uuid (
	table_id uuid DEFAULT uuid_generate_v4(),
	first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    phone VARCHAR,
	PRIMARY KEY (table_id)
);

INSERT INTO table__uuid (
    first_name,
    last_name,
    email,
    phone
)
VALUES
    (
        'John',
        'Smith',
        'john.smith@example.com',
        '408-237-2345'
    ),
    (
        'Jane',
        'Smith',
        'jane.smith@example.com',
        '408-237-2344'
    ),
    (
        'Alex',
        'Smith',
        'alex.smith@example.com',
        '408-237-2343'
    );

SELECT * FROM table__uuid;