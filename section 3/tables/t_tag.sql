-- UPSERT
/*
combination of update or insert

The idea is that when i insert a new row into the table, PostgreSQL will update the row if it already exists,
otherwise it will insert a new row.
*/

-- create a table t_tags
CREATE TABLE t_tags (
	id serial PRIMARY KEY,
	tag text UNIQUE,
	update_date TIMESTAMP DEFAULT NOW()
);

-- insert some sample data
INSERT INTO t_tags (tag) values
('pen'),
('pencil');

-- update_date 2021-05-18 11:35:35

-- Let's insert a record where, on conflict DO NOTHING
INSERT INTO t_tags (tag)
VALUES('pen')
ON CONFLICT (tag)
DO
	NOTHING;

-- lets insert a record where, on conflict set new values
INSERT INTO t_tags (tag)
VALUES ('pen')
ON CONFLICT (tag)
DO
	UPDATE SET
		tag = EXCLUDED.tag,
		update_date = NOW();

-- update_date 2021-05-18 11:50:29, so new value is set

-- if i want to add additional string with the tag column, when it is ON CONFLICT
INSERT INTO t_tags (tag)
VALUES ('pencil')
ON CONFLICT (tag)
DO
	UPDATE SET
		tag = EXCLUDED.tag || '_one',
		update_date = NOW();
SELECT * FROM t_tags;

-- some terms
-- || or CONCAT(), is the way to concat two or more string.
-- EXCLUDED, if i want to make sure that the new conflicted value is set in the column.