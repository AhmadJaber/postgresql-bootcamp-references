### Filtering Data

**Operators**
Operators are special keywords in SQL that we use in conjunction with SQL clauses to

- compare the values of fields
- Select subsets of field
- Perform arithmatic operations

There are three types of Operators -

- COMPARISON

  - equal to -> =
  - greater than -> >
  - less than -> <
  - greater than or equal to -> >=
  - less than or equal to -> <=
  - Not equal to <>

- LOGICAL

  - AND
  - OR
  - LIKE
  - IN
  - BETWEEN

- ARITHMETIC
  - addition -> +
  - subtraction -> -
  - division -> /
  - multiply -> \*
  - modulo -> %

This different types of Operators can be combined to make more complex queries

**Topics Covered**

- Comparison, Logical and Arithmetic operators ✅
- AND operator ✅
- OR operator ✅
- Combining AND and OR Operator ✅
- What goes before & after WHERE clause ✅
- Execution order with AND, OR Operators ✅

  - AND processed first and the OR is processed second
  - SQL processes AND Operator like multiplication & OR operator like addition unless i include parenthesis
  - without parenthesis, `3*2+1 = 7`, with parenthesis, `3*(2+1) = 9`.
  - it is always better to use parentheses whenever i am using multiple operators.

- Can u use column aliase with WHERE? ✅

  - no, if i use column aliases in SELECT clause, i can not use them in WHERE clause.
  - but for a sub-query i can use that.

- Order of Execution of WHERE clause in SELECT ✅

  - FROM > WHERE > SELECT > ORDER BY

- Using Logical operators ✅
- Using LIMIT & OFFSET ✅
- Using FETCH ✅

  > code is in `./queries/movies.sql`

- Using IN, NOT IN ✅
- Using BETWEEN, NOT BETWEEN ✅
- Using LIKE, ILIKE ✅
- Using IS NULL, IS NOT NULL ✅
- Concatenation techniques ✅
- Concatenation with ||, CONCAT, CONCAT_WS ✅

  > code is in `./queries/movies_two.sql`
