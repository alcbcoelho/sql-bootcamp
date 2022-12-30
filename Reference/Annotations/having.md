# HAVING

* `HAVING` allows us to filter AFTER an aggregation and/or `GROUP BY` call has already taken place.

## Examples

* Total amount sold per company, as long as over $1000

    ```
    SELECT company, SUM(sales) FROM finance_table
    GROUP BY company
    HAVING SUM(sales) > 1000;
    ```
    
* Total payment per customer, as long as over $100

    ```
    SELECT customer_id, SUM(amount) FROM payment
    GROUP BY customer_id
    HAVING SUM(amount) > 100;
    ```

* Amount of customers per store greater than 100:

    ```
    SELECT store_id, COUNT(*) FROM customer
    GROUP BY store_id
    HAVING COUNT(*) > 100;
    ```