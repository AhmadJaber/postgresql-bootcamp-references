### introduction

**Setup postgresql & pgadmin4 in ubuntu**
_references_

- [fullsetup][https://www.tecmint.com/install-postgresql-and-pgadmin-in-ubuntu/]
- [remove postgresql](https://kb.objectrocket.com/postgresql/how-to-completely-uninstall-postgresql-757)

_terms_

- after pgadmin4 setup, have to create a server, with user `postgres` also need have a password so have to alter the password of `postgres`, `ALTER ROLE super WITH PASSWORD 'secret123'` or [follow this](https://enterprise.arcgis.com/en/server/10.3/cloud/amazon/change-default-database-passwords-on-linux.htm)

- then we will have default database & role `postgres`. we can create our own.

- in every database there is `schema`, where is our most of the work. in schema we will work on table, where all the queried structure will be saved. by defult there is one schema called `public`. We can create different schema for different table to manage them better.

- in pgadmin4, if we see a `cross-sign` on a database, that means the database is not connected.

- we can use the `query tool` to add or right query for a database table.

> `nothwind.sql` database, a basic sample database from microsoft. This will help us to exercise a lot of queries. Also advanced stuff like `co-relation queries`, `functions`.

_drop a database in query tool_

`DROP DATABASE [IF EXISTS] db_name;`, where (if exists) is optional

- only super-user & owner can execute the `drop dataseet` statement.
- Have to be super careful whenever i try to use anything with `DROP`, because i can't reverse back the action.
- also to create database `CREATE DATABASE`.
