-- Example #1: user classes (general syntax'd CASE)
SELECT customer_id,
CASE
	WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal'
END AS customer_class
FROM customer
ORDER BY customer_id;

-- Example #2: raffle (CASE expression syntax)
SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END AS raffle_results
FROM customer
ORDER BY customer_id;

-- Example #3: Rental rate categories
SELECT
SUM(
	CASE rental_rate
		WHEN 0.99 THEN 1
		ELSE 0
	END
) AS bargains,
SUM(
	CASE rental_rate
		WHEN 2.99 THEN 1
		ELSE 0
	END
) AS regular,
SUM(
	CASE rental_rate
		WHEN 4.99 THEN 1
		ELSE 0
	END
) AS premium
FROM film;