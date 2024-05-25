### psql

## \l

    List databases.

## CREATE DATABASE

    Creates a database.

## \c (database)

    Connect to a database.

## \d

    List tables.

    - (table name) "details of the table".

## CREATE TABLE(table)()

    Creates a table.

## ALTER TABLE (table) ADD COLUMN (column) DATATYPE CONSTRAINT;

    Add column to the table.

## ALTER TABLE (table) DROP COLUMN (column);

    Removes the column.

## ALTER TABLE (table) RENAME COLUMN (column) TO (new name);

    Renames the column.

## INSERT INTO (tablename(column1,column2,...) VALUES(value1,value2,...))

    Inserts a row into table on specific columns.

## SELECT columns FROM table_name;

    Query the rows in the table for specific columns. * for all.

## DELETE FROM table_name WHERE condition;

    Delete a row on a condition.

## ALTER DATBASE database_name RENAME TO new_database_name;

    Rename a database.

## UPDATE table_name SET column_name=new_value WHERE condition;

    Update a row.

## ALTER TABLE table_name ADD PRIMARY KEY(column_name);

    Set a primary key.

## ALTER TABLE table_name DROP CONSTRAINT constraint_name;

    Drop a constraint.

## ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name);

    Add a foreign key.

## ALTER TABLE table_name ADD UNIQUE(column_name);

    Add a unique constraint on a column, used for foreign keys.

## ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;

    Adds a not null constraint to a column.

## CREATE TABLE table_name(column_name DATATYPE CONSTRAINTS);

    Create table and add a column in one line.

## ALTER TABLE table_name ADD PRIMARY KEY(column1, column2);

    Adds a composite primary key, used for junction tables.
    Junstion tables link two tables via a many-to-many relationship.

## SELECT columns FROM table_1 FULL JOIN table_2 ON table_1.primary_key_column = table_2.foreign_key_column;

    Full join on two tables.

## Full join on multiple tables

    SELECT columns FROM junction_table

    FULL JOIN table_1 ON junction_table.foreign_key_column = table_1.## primary_key_column

    FULL JOIN table_2 ON junction_table.foreign_key_column = table_2.## primary_key_column;
