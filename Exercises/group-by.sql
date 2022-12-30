-- SELECT customer_id FROM payment
-- GROUP BY customer_id;

-- ^ essentially the same as 'SELECT DISTINCT customer_id FROM payment;'

-- Shows the sum of the amount each customer has spent:
-- SELECT customer_id, SUM(amount) FROM payment
-- GROUP BY customer_id;

-- Shows the sum of the amount each customer has spent per staff, in ascending order for customer and staff ID: 
-- SELECT customer_id, staff_id, SUM(amount) FROM payment
-- GROUP BY customer_id, staff_id
-- ORDER BY customer_id, staff_id;

-- Using GROUP BY on a date (timestamp data type)
-- How much is being processed each day?:
-- SELECT DATE(payment_date), SUM(amount) FROM payment
-- GROUP BY DATE(payment_date)
-- ORDER BY SUM(amount) DESC;
