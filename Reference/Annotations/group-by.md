# GROUP BY

* `GROUP BY` allows us to aggregate **columns** per some **category**
* Used in conjunction with some **aggregate function**
* Placed directly after `FROM` or `WHERE` statements

## Syntax

```
SELECT {category_column}, {aggregateFunction}({data_column})
FROM {table}
GROUP BY {category_column}
```

* In the `SELECT` statement, columns must either have an **aggregate function** OR be in the `GROUP BY` call