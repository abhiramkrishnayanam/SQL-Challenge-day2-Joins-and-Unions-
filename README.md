# SQL JOINS and UNIONS Tutorial

This tutorial explains the usage of SQL `JOINS` and `UNIONS` for combining data from multiple tables in a relational database.

## Introduction

In SQL, `JOINS` and `UNIONS` are used to combine data from multiple tables. `JOINS` combines rows from two or more tables based on a related column, while `UNIONS` combines the results of two or more `SELECT` statements into a single result set.

## Prerequisites

- Familiarity with SQL `SELECT` queries.
- Basic understanding of relational databases.

## SQL JOINS

SQL `JOINS` is used to retrieve data from two or more related tables by matching rows using a common column.

### Inner Join

The `INNER JOIN` returns rows when there is a match in both tables.

**Syntax:**

SELECT columns

FROM table1

INNER JOIN table2

ON table1.column = table2.column;

### Left Join
The LEFT JOIN returns all rows from the left table and the matched rows from the right table. If no match is found, NULL values are returned for columns from the right table.

**Syntax:**

SELECT columns

FROM table1

LEFT JOIN table2

ON table1.column = table2.column;

### Right Join

The RIGHT JOIN returns all rows from the right table and the matched rows from the left table. If no match is found, NULL values are returned for columns from the left table.

**Syntax:**

SELECT columns

FROM table1

RIGHT JOIN table2

ON table1.column = table2.column;

### Full Outer Join

The FULL OUTER JOIN returns all rows when there is a match in either table. If there is no match, NULL values are returned for missing columns.

**Syntax:**

SELECT columns

FROM table1

FULL OUTER JOIN table2

ON table1.column = table2.column;


## SQL UNION

The UNION operator is used to combine the results of two or more SELECT queries. The key requirement is that each SELECT query must have the same number of columns and compatible data types.

### UNION
The UNION operator combines the result sets of two queries and removes duplicates.

**Syntax:**

SELECT columns FROM table1

UNION

SELECT columns FROM table2;

### UNION ALL

The UNION ALL operator combines the result sets of two queries but includes all duplicates.

**Syntax:**

SELECT columns FROM table1

UNION ALL

SELECT columns FROM table2;

