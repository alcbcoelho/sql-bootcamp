-- CHALLENGE - GROUP BY

-- We have two staff members, with Staff IDs 1 and 2.
-- We want to give a bonus to the staff member that handled the most payments.
-- (In terms of number of payments processed, not total dollar amount)
-- How many payments did each staff member handle and who gets the bonus?

SELECT staff_id, COUNT(payment_id) FROM payment
GROUP BY staff_id
ORDER BY COUNT(payment_ID) DESC;

-- Corporate HQ is conducting a study on the relationship between replacement cost and a movie MPAA rating (e.g. G, PG, R, etc...).
-- What is the average replacement cost per MPAA rating?

SELECT rating, AVG(replacement_cost) FROM film
GROUP BY rating;

-- We are running a promotion to reward our top 5 customers with coupons.
-- What are the customer IDs of the top 5 customers by total spent?

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;