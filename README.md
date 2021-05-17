# postgresql-bootcamp-references

### introduction

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


**Setup postgresql & pgadmin4 in ubuntu**
_references_

- [fullsetup](https://www.tecmint.com/install-postgresql-and-pgadmin-in-ubuntu/)
- [remove postgresql](https://kb.objectrocket.com/postgresql/how-to-completely-uninstall-postgresql-757)
- [digital-ocean-blog](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-20-04)
- [most-essential-commands](https://www.datacamp.com/community/tutorials/10-command-line-utilities-postgresql?utm_source=adwords_ppc&utm_campaignid=1455363063&utm_adgroupid=65083631748&utm_device=c&utm_keyword=&utm_matchtype=b&utm_network=g&utm_adpostion=&utm_creative=332602034364&utm_targetid=aud-390929969673:dsa-429603003980&utm_loc_interest_ms=&utm_loc_physical_ms=1001442&gclid=Cj0KCQjws-OEBhCkARIsAPhOkIYWjJ2qfReFamoJTAP_tkxnd79KaE65IrJ7rRjock7hEDX_OnnQLOcaAlPpEALw_wcB)
