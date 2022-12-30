# CASE

## Syntax

* General syntax (more flexible)

    ```
    CASE
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
    ELSE some_other_result
    END
    ```
* Expression syntax (only evaluates one expression)

    ```
    CASE expression
        WHEN value1 THEN result1
        WHEN value2 THEN result2
    ELSE some_other_result
    END
    ```

## Example

Say we have a table named "test" with this column:

| a |
| - |
| 1 |
| 2 |

We want the query to display different things depending on the data. We could borrow CASE for that.

```
SELECT a,
CASE
    WHEN a = 1 THEN 'one'
    WHEN a = 2 THEN 'two'
ELSE 'other'
END
FROM test
```

Or...

```
SELECT a,
CASE a
    WHEN 1 THEN 'one'
    WHEN 2 THEN 'two'
ELSE 'other'
END
FROM test
```

For more examples, view case-statement-examples.sql.