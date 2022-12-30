-- JOIN Challenges

-- California sales tax laws have changed and we need to alert our customers to this through email.
-- What are the emails of the customers who live in California?

SELECT email FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California';

-- A customer walks in and is a huge fan of the actor "Nick Wahlberg"
-- and wants to know which movies he is in.
-- Get a list of all the movies "Nick Wahlberg" has been in.

SELECT title FROM film_actor
INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick'
AND last_name = 'Wahlberg';