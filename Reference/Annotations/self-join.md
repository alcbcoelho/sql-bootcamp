# Self-join

* A self-join is a query in which a table is joined to itself.
* Can be viewed as a join of two copies of the same table.
* Has no special keyword; borrows a standard `JOIN` syntax with the same table in both parts.

## Syntax

```
SELECT TableA.column, TableB.column
FROM Table AS TableA
JOIN Table AS TableB
ON TableA.column_match = TableB.column_match
```

## Example

Say we have a table of **employees** in which each employee reports to a different employee in that same table (each report_id value corresponds to an emp_id value).

| emp_id | name | report_id |
| - | - | -: |
| 1 | Andrew | 3 |
| 2 | Bob | 3 |
| 3 | Charlie | 4 |
| 4 | David | 1 |

We want to simplify it so it includes only the name of the employee and whom they are reporting to:

| name | rep |
| - | -: |
| Andrew | Charlie |
| Bob | Charlie |
| Charlie | David |
| David | Andrew |

We could accomplish this by doing a self-join as follows:

```
SELECT emp.name, report.name
FROM employees AS emp
JOIN employees AS report
ON emp.emp_id = report.report_id
```