-- String functions and operations

-- string length:
SELECT LENGTH(first_name) FROM customer;

-- string concatenation:
SELECT first_name || ' ' || last_name
AS full_name FROM customer;

-- to uppercase:
SELECT UPPER(first_name) FROM customer;

-- to lowercase:
SELECT LOWER(first_name) FROM customer;

-- grabbing first n characters of a string
SELECT LEFT(first_name, 1) FROM customer;

-- case scenario: generating email addresses based on first_name and last_name values
SELECT LOWER(first_name || '.' || last_name || '@gmail.com')
AS email FROM customer;

-- For more: https://www.postgresql.org/docs/current/functions-string.html