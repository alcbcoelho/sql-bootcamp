-- SUBQUERY

-- 
SELECT title, rental_rate FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

-- selecting titles that have been returned between two different dates
SELECT film_id, title FROM film
WHERE film_id IN (
	SELECT inventory.film_id FROM rental
	INNER JOIN inventory
	ON inventory.inventory_id = rental.inventory_id
	WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30'
)
ORDER BY film_id;

--
SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS (
	SELECT * FROM payment AS p
	WHERE p.customer_id = c.customer_id
	AND amount > 11
)
-- ^ for each customer in the customer table, the subquery checks the payment table
-- to find if that customer made at least one payment with the amount greater than 11.

-- in case we wanted to check for the opposite condition, we would simply go about adding
-- a NOT before the EXISTS function.