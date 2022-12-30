# Constraints

Constraints are the rules enforced on data columns on table.

They can be divided into two main categories:

### Column Constraints

* Constrains the data in a column to adhere to certain conditions.

### Table Constraints

* Applied to the entire table rather than to an individual column.

# Most common constraints used

## Column Constraints

### NOT NULL

* Ensures that a column cannot have NULL value.

### UNIQUE

* Ensures that all values in a column are different.

### PRIMARY KEY

* Uniquely identifies each row/record in a database table.

### FOREIGN KEY

* Constrains data based on columns in other tables.

### CHECK

* Ensures that all values in a column satisfy certain conditions.

### EXCLUSION

* Ensures that if any two rows are compared on the specified column or expression using the specified operator, not all of these comparisons will return TRUE.

## Table Constraints

### CHECK (condition)

* To check a condition when inserting or updating data.

### REFERENCES

* To constrain the value stored in the column that must exist in a column in another table (iow: to reference a column in another table).

### UNIQUE (column_list)

* Forces the values stored in the columns listed inside the parentheses to be unique.

### PRIMARY KEY (column_list)

* Allows you to define the primary key that consists of multiple columns.