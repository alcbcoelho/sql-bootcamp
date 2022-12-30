# COALESCE

## Syntax

```
COALESCE(arg1, arg2, ...)
```

Returns `NULL` if all values provided are `NULL`. Else, returns the first non-null value passed as an argument.

A use case would be to replace any null values in a column with zeros, for mathematical operations, for instance:
```
SELECT COALESCE(column1, 0) FROM table
```

# CAST

The `CAST` function is used to convert a data type to another, when applicable (such as '1' (string) -> 1 (integer)).

# NULLIF

## Syntax

```
NULLIF(arg1, arg2)
```

Takes in two arguments and returns `NULL` if both are equal, otherwise it returns the first argument passed.

```
NULLIF(10, 10)
-- Returns NULL

NULLIF(10, 12)
-- Returns 10
```

See example in nullif.sql