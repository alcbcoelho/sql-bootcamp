-- SELF-JOIN

-- Querying pairs of movies with the same length
SELECT f1.title, f2.title, f1.length FROM film AS f1
INNER JOIN film AS f2
ON f1.length = f2.length
AND f1.film_id != f2.film_id;

-- See self-join.md for more info.