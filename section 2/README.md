### Creating & Modifying Tables

_create table_

```sql
CREATE TABLE actors (
  field_name type options
);

-- to see the structure of the database created correctly
SELECT * FROM actors;
```

_create table with foreign keys_

```sql
-- Create the movies table
-- Movies will contain a foreign key/column of Director table
-- column_name > type > REFERENCES > table_name > (column_name)

CREATE TABLE movies (
  director_id INT REFERENCES directors (director_id)
)
```

_create Junction table_

```sql
-- creating movies_actors junction table
-- joining the movies & actors table together by means of there primary keys

CREATE TABLE movies_actors (
	movie_id INT REFERENCES movies (movie_id),
	actor_id INT REFERENCES actors (actor_id),
	PRIMARY KEY (movie_id,actor_id)
);
```

_insert data into table_

```sql
--  Records of 'movies' database > table : actors

INSERT INTO table_name (column_one, clolumn_two, column_three) VALUES
(value, value, value, value),
(value, value, value, value)
```

_modify a table column_

```sql
-- renaming the field name add_date to addDAte
-- change datatype of a column

ALTER TABLE public.accounts
  RENAME add_date TO addDate;

ALTER TABLE public.accounts
  ALTER COLUMN is_enable TYPE character varying(2) COLLATE pg_catalog."default";
```

_delete/drop table_

```sql
-- use the sql editor
-- or use the pgadmin gui to drop/delete the table

DROP TABLE roles

-- wher roles is a table
-- be super super cautious using it production, first test it in development
```

_we can create, modify, delete, change datatype of a table column using pgAdmin GUI_
**exercise**

when working with columns in the pgAdmin gui, it is a good practise to check query tab to see the commands.

- create & modify a table ✅
- view the structure of the table ✅
- Create a column in existing table ✅
- Rename a Column ✅
- Drop/delete a column ✅
- Change the datatype of a column ✅

  > if i want to change the datatype from the column > properties the box will suggest the types which are related to the initial data-type. to solve that we have to use query-editor.

- Delete a table from database ✅

- `PRIMARY KEY`, A primary key is a column or a group of columns used to identify a row uniquely in a table. it is assential on a table. i can define primary key on group of columns/keys,

  > `PRIAMRY KEY (column_one, clolumn_two)`

- `FOREIGN KEY`, is a way to link different fields together.
- `Junction Table`, a table most of the columns are foreign keys of other tables so that they can form `transaction` table.

**references**

- [data-types](https://www.postgresqltutorial.com/postgresql-data-types/)
