# INNER JOIN

* An inner join will result with the set of records that **match in both tables**.
* It represents an intersection between two Venn diagrams (the tables involved).
* `INNER JOIN` is symmetrical.

## Syntax

```
SELECT {column1}, {?column2...} FROM {TableA}
INNER JOIN {TableB}
ON {TableA}.{column_match} = {TableB}.{column_match}
```

## Example

```
SELECT payment_id, payment.customer_id, first_name FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;
```
