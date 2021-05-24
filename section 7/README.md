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

_TIMESTAMP VS TIMESTAMPTZ_

- [time_zone_db](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) ✅

_temporal type references_

- [date](https://www.postgresqltutorial.com/postgresql-date/) ✅
- [time](https://www.postgresqltutorial.com/postgresql-time/) ✅
- [timestamptz](https://www.postgresqltutorial.com/postgresql-timestamp/) ✅

**UUID Type**
[uuid](https://www.postgresqltutorial.com/postgresql-uuid/) ✅

**Array Type**
[array](https://www.postgresqltutorial.com/postgresql-array/) ✅

**hstore type**
[hstore](https://www.postgresqltutorial.com/postgresql-hstore/) ✅

**JSON & JSONB data-type**

- JSON data type being a text data-type, stores the data presentation exactly as it is sent to
  postgresql, including whitespace and indentation, and also multiple keys when present.

  > NO processing at all done on the content, only form validation.

- JSONB data-type is an advanced binary storage format with full processing, indexing & searching capabilities and such pre-prcesses json data to an internal format, which does include a single value per key, Also extra whitespace & indentation will no longer appear.

- [json](https://www.postgresqltutorial.com/postgresql-json/) ✅
- [jsonb](https://scalegrid.io/blog/using-jsonb-in-postgresql-how-to-effectively-store-index-json-data-in-postgresql/#:~:text=JSONB%20stands%20for%20%E2%80%9CJSON%20Binary,you%20should%20be%20using%20JSONB.)
- [jsonb vs json vs hstore](https://heap.io/blog/when-to-avoid-jsonb-in-a-postgresql-schema)

**Network Address data-types**
PostgreSQL offers data-type to store `IPv4`, `IPv6` & `Mac Addresses`.

- the Network Address types are -
  |Name |Storage Size |Notes |
  |---|---|---|
  |cidr |7 or 19 bytes |IPv4 & IPv6 networks |
  |inet |7 or 19 bytes |IPv4 & IPv6 hosts & networks |
  |macaddr |6 bytes |MAC addresses |
  |macaddr8 |8 bytes |MAC addresses (EUI- 64 format) |

it is better to use this types instead of plain text type to store network addresses, because these offer input error checking and specialized operators & functions

- special sorting mechanism -
  when sorting inet or cidr data type, IPv4 will always sort before IPv6

- This types are bundled with indexing support and advanced functions and operator support.

references -

- [bit vs bytes][https://www.ncta.com/whats-new/why-do-we-use-bits-measure-internet-speed-but-bytes-measure-data#:~:text=a%20bit%20is%20the%20smallest,a%20single%20character%20of%20text.] ✅

- [netmasks](https://www.hacksplaining.com/glossary/netmasks)✅
