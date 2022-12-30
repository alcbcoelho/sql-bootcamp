-- VIEWS

-- A view is basically a variable for a query. Useful when doing the same query over and over again.

-- Creating a view:

-- CREATE VIEW customer_info AS
-- SELECT first_name, last_name, address FROM customer
-- INNER JOIN address
-- ON customer.address_id = address.address_id;

-- So instead of running this everytime we want to do that query:

-- SELECT first_name, last_name, address FROM customer
-- INNER JOIN address
-- ON customer.address_id = address.address_id;

-- We can simply do this:

-- SELECT * FROM customer_info;

-- Updating a view
-- CREATE OR REPLACE VIEW customer_info AS
-- SELECT first_name, last_name, address, district FROM customer
-- INNER JOIN address
-- ON customer.address_id = address.address_id;

-- Renaming a view
-- ALTER VIEW customer_info RENAME TO c_info

-- Deleting a view
-- DROP VIEW IF EXISTS customer_info;
-- ^ IF EXISTS is optional, and used to prevent errors

SELECT * FROM customer_info;