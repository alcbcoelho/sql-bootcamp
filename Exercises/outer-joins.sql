-- FULL OUTER JOIN

-- Confirming if there are any customers not associated with a payment
SELECT payment.customer_id, payment_id, first_name, last_name FROM payment
FULL OUTER JOIN customer
ON payment.customer_id = customer.customer_id
WHERE customer.customer_id IS null
OR payment_id IS null
ORDER BY customer_id;
-- (^ there are not)

-- LEFT OUTER JOIN

-- Querying films that are in the film table but NOT in the inventory table
SELECT film.film_id, title, inventory_id, store_id FROM film
LEFT OUTER JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null;