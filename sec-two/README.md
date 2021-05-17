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

- `PRIMARY KEY`, A primary key is a column or a group of columns used to identify a row uniquely in a table. it is assential on a table. i can define primary key on group of columns/keys,

  > `PRIAMRY KEY (column_one, clolumn_two)`

- `FOREIGN KEY`, is a way to link different fields together.
- `Junction Table`, a table most of the columns are foreign keys of other tables so that they can form `transaction` table.

**references**

- [data-types](https://www.postgresqltutorial.com/postgresql-data-types/)
