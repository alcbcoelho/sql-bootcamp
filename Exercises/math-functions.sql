-- Mathematical functions and operators

-- What percentage of the replacement cost is the rental rate?:
SELECT ROUND(rental_rate/replacement_cost, 2) * 100 
AS percent_cost FROM film

-- 
SELECT 0.1 * replacement_cost AS deposit
FROM film

-- for more: https://www.postgresql.org/docs/15/functions-math.html