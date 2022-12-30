-- CREATE TABLE employees
-- (
-- 	emp_id SERIAL PRIMARY KEY,
-- 	name VARCHAR(20) NOT NULL,
-- 	department CHAR(1)
-- );

-- INSERT INTO employees(name, department) VALUES
-- ('Lauren', 'A'),
-- ('Vinton', 'A'),
-- ('Claire', 'B');

-- NULLIF

-- Takes in two arguments and returns `NULL` if both are equal,
-- otherwise returns the first argument passed.

-- NULLIF USE CASE:

-- Calculating department ratio
-- SELECT (
-- SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
-- SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END)
-- ) AS department_ratio
-- FROM employees;

-- All good and well, but if there are 0 people assigned to department B, the ratio is gonna end up
-- with a division by 0, giving an error when running the code.
-- This is where we could use a NULLIF: to assure that if there are 0 people in department B,
-- a NULL value is assigned instead of 0 and the division returns null as opposed to returning an error.

SELECT (
	SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
	NULLIF(SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END), 0)
) AS department_ratio
FROM employees;