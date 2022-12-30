# Outer Joins

* Tables are joined and the resulting set of records will consist not only of any matching data, but also of data from one, two, or both tables involved.

## General syntax

```
SELECT {column1}, {?column2...} FROM {TableA}
FULL/LEFT/RIGHT OUTER JOIN {TableB}
ON {TableA}.{column_match} = {TableB}.{column_match}
```

* **TableA:** on the left
* **TableB:** on the right

## FULL OUTER JOIN

* An inner join will result with the set of records that are in **both tables**.
* It represents a union between two Venn diagrams (the tables involved).
* `FULL OUTER JOIN` is symmetrical (iow: the tables' order does not matter).

## LEFT OUTER JOIN

* An inner join will result with the set of records that are in the **left table**; if there is no match with the right table, the results are null.
* `LEFT OUTER JOIN` is asymmetrical (iow: the tables' order matters).

## RIGHT OUTER JOIN

* An inner join will result with the set of records that are in the **right table**; if there is no match with the left table, the results are null.
* `RIGHT OUTER JOIN` is asymmetrical (iow: the tables' order matters).