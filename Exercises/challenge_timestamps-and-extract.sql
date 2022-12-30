-- CHALLENGE - Timestamps and Extract

-- During which months did payments occur? Format your answer to return back the full moth name.
SELECT DISTINCT(TO_CHAR(payment_date, 'Month'))
AS payment_month FROM payment;

-- How many payments occurred on a Monday?
SELECT COUNT(*) FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1;