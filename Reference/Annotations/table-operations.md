# Table Operations

## CREATE TABLE

Creates a new table into the current database.

### Syntax

* Basic syntax

    ```
    CREATE TABLE {Table_name} (
        {column1_name} DATATYPE {constraint(s)},
        {column2_name} DATATYPE {constraint(s)},
        ...
    )
    ```
* Advanced syntax

    ```
    CREATE TABLE {Table_name} (
        {column_name} DATATYPE {constraint(s)},
        {column_name} DATATYPE {constraint(s)},
        {table_constraint} {table_constraint}
    ) INHERITS {Existing_table_name}
    ```

### Examples

```
CREATE TABLE account (
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
)
```

```
CREATE TABLE job (
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
)
```

```
CREATE TABLE account_job (
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
)
```

## INSERT

Inserts rows into the specified database table.

* The inserted row values must match up for the table, including constraints.

* SERIAL columns do NOT need to be provided a value.

### Syntax

* Default syntax

    ```
    INSERT INTO {Table_name} ({column1}, {column2}, ...)
    VALUES
        ({value1}, {value2}, ...),
        ({value1}, {value2}, ...),
        ...;
    ```

* Inserting values from another table

    ```
    INSERT INTO {Table_name} ({column1}, {column2}, ...)
    SELECT {column3}, {column4}, ...
    FROM {Another_table_name}
    WHERE {condition}
    ```

## UPDATE

Allows for the changing of values of the columns in a table.

### Syntax

* Default syntax

    ```
    UPDATE {Table_name}
    SET {column1} = {value1},
    {column2} = {value2},
    ...
    ```

* Conditional syntax

    ```
    UPDATE {Table_name}
    SET {column1} = {value1},
    {column2} = {value2},
    ...
    WHERE {condition}
    ```

* "Update join"

    ```
    UPDATE TableA
    SET original_column = TableB.new_column
    FROM TableB
    WHERE TableA.matching_column = TableB.matching_column 
    ```

### Example

```
UPDATE account
SET last_login = CURRENT_TIMESTAMP
WHERE last_login IS NULL;
```

* Setting the rows of a column to the rows of another column: 
    ```
    UPDATE account
    SET last_login = created_on
    ```

* Returning affected rows:
    ```
    UPDATE account
    SET last_login = created_on
    RETURNING account_id, last_login
    ```

## DELETE

Removes rows from a table.

### Syntax

* Default syntax (deletes all rows from a table)

    ```
    DELETE FROM {Table_name}
    ```

* Conditional syntax

    ```
    DELETE FROM {Table_name}
    WHERE {condition}
    ```

* Deleting rows based on their presence in other tables

    ```
    DELETE FROM Table_A
    USING Table_B
    WHERE Table_A.id = Table_B.id
    ```

### Example

```
DELETE FROM job
WHERE job_id = 3
RETURNING job_id, job_name;
```

## ALTER TABLE

Allows for changes to an existing table structure, such as:

* Adding, dropping, or renaming columns;
* Changing a column's data type;
* Setting DEFAULT values for a column;
* Adding check constraints;
* Renaming the table.

### Syntax

* General syntax

    ```
    ALTER TABLE {Table_name} {action}
    ```
"{action}" can be a lot of different commands. Sneak into some SQL documentation for reference (https://www.postgresql.org/docs/current/sql-altertable.html).

### Examples

* Adding a new column

    ```
    ALTER TABLE Table_name
    ADD COLUMN new_column INTEGER
    ```

* Removing a column

    ```
    ALTER TABLE Table_name
    DROP COLUMN IF EXISTS column_name
    ```
    ^ generally a good practice to use `IF EXISTS` following the `DROP` command to avoid errors
    
## DROP TABLE

Removes a table from the database.

## Syntax

* Default syntax

    ```
    DROP TABLE {Table_name}
    ```