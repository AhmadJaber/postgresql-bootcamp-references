### Querying Data

**Topics Covered**

- Select all data from a table ✅
  _some rules_

  - table_name is not case-sensitive, means i can use MOVIES instead of movies,
    that will work, not the best practise mann!
  - SQL keywords are not case-sensitive also, if i use
    select _ from movies; instead of SELECT _ FROM MOVIES;, that will work too
    but not recomended mann!
  - SELECT \* FROM MOVIES; in PostgreSQL evaluates FROM clause before the SELECT clause
    which is obvious!!
  - Is it a good practise to select \* in SELECT?

    - It will cause database performance issues.
    - Cause the Application performance slow down, because it increases the traffic
      between the application server & database server.

  - Use explicit column name in SELECT statement.

- Selecting specific column from a table ✅
- Adding aliases to a column name ✅
- Assigning column alias to an expression ✅
- using ORDER BY to sort records ✅
- using ORDER BY with alias column name ✅
- use ORDER BY to sort rows by expressions ✅
- how to use column_name or column_number in ORDER BY clause ✅
- use ORDER BY with NULL values ✅
- selecting DISTINCT values ✅

  > All code can be found in `./queries/movies.sql`
