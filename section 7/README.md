### PostgreSQL Data types

[reference](https://www.postgresqltutorial.com/postgresql-data-types/)

**Boolean**
boolean data types can have three values

- TRUE
- FALSE
- NULL

Following are some valid literals for Boolean values in PostgreSQL
| TRUE | FALSE |
| --------- | ------|
| TRUE | FALSE |
| 'true' | 'false' |
| 't' | 'f' |
| 'y' | 'n' |
| 'yes' | 'no' |
| '1' | '0' |

if i insert any valid literals listed above in a table where a clumn is boolean type in output the vlaue will look `true` or `false`. If i put i want to put other random value in boolean type will give erros.

**Character Data Types**
character types are general purpose types suitable for,

- text,
- numbers,
- symbols
- all together

Three main types of CHARACTER data,

| Character Types                  | Notes                             |
| -------------------------------- | --------------------------------- |
| CHARACTER(n), CHAR(n)            | fixed length, blank_padded        |
| CHARACTER VARYING(n), VARCHAR(n) | Variable length with length limit |
| TEXT, VARCHAR                    | Variable unlimited length         |

- where `n` is number of character that column holds. If no value specified the default is 1;
- if the excessive Characters are all spaces, PostgreSQL truncates the spaces to the maximum length (n) and stores the characters.

**Numbers Data Types**

- column with type number can hold various types of numbers, but not `NULL` values
- Two main types of Numbers data are:

| Number Types                | Notes                        |
| --------------------------- | ---------------------------- |
| Integer                     | whole numbers both +ve & -ve |
| Fixed-point, Floating point | Two format of fractions      |

_integer_
[integer](https://www.postgresqltutorial.com/postgresql-integer/)
[auto-increment integer](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-serial/)

_decimal numbers_
decimals number represents a whole number plus a fraction of a whole number

Fixed Point Numbers -

- numeric(precision, scale)
- decimal(precision, scale)
- [docs](https://www.postgresqltutorial.com/postgresql-numeric/)

Floating Point Numbers

- real
- double precision

| Data Type        | Storage Size | Storage Type   | Range                                       |
| ---------------- | ------------ | -------------- | ------------------------------------------- |
| decimal, numeric | Variable     | fixed point    | upto 131702 digits before the decimal point |
| real             | 4bytes       | floating point | 6 decimal digits precision                  |
| double precision | 8bytes       | floating point | 15 decimal digits precision                 |

**Selecting Numbers Data Types**

- Use `integer` whenever possible

- If data is decimal & calculation needs to be exact use `numeric` or `decimal`. floating points will save space, have to be careful about inexactness when calculation.

- Choose a big enough number type by looking at ur data.

- integer > numeric > floating-point

**Date/Time data types or temporal data types**

- One of the most important types
- Allow us to store date and/or time data
- Five main temporal data-types -

| date and/or time Types | Stores                |
| ---------------------- | --------------------- |
| DATE                   | date only             |
| TIME                   | time only             |
| TIMESTAMP              | date and time         |
| TIMESTAMPTZ            | date, time & timezone |
| INTERVAL               | store periods of time |

> `TIMESTAMPTZ` is a timezone-aware timestamp data type
