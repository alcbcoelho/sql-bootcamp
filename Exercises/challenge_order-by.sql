-- CHALLENGE: ORDER BY

-- 1) Customer IDs of the first 10 customers who created a payment

--- SELECT customer_id FROM payment
--- ORDER BY payment_date;
-- LIMIT 10;

-- 2)

-- a) Titles of the 5 shortest (in length of runtime) movies

-- SELECT title FROM film
-- ORDER BY length
-- LIMIT 5;

-- b) Number of movies with 50 min or less in runtime length

-- SELECT COUNT(*) FROM film
-- WHERE length <= 50;