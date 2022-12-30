-- TO_CHAR(): converts data type to string under formatting standards specified in the second parameter

SELECT TO_CHAR(payment_date, 'dd/mm/yy') FROM payment;

SELECT TO_CHAR(payment_date, 'Month') FROM payment;

-- EXTRACT(): extracts bits of data from timestamps

SELECT EXTRACT(DAY FROM payment_date)
AS pay_day FROM payment;

SELECT EXTRACT(MONTH FROM payment_date)
AS pay_month FROM payment;

SELECT EXTRACT(YEAR FROM payment_date)
AS pay_year FROM payment;

-- Displays how old a certain date/time data is
SELECT AGE(payment_date) FROM payment;

-- Displays the interval between two different date/time data
SELECT AGE(timestamp '2001-04-10', timestamp '1957-06-13');