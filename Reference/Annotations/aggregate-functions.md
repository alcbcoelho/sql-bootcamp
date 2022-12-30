# Aggregate Functions

* Take multiple inputs and return a single output
* **Aggregate function calls happen only in the `SELECT` clause or the `HAVING` clause**

## Most commonly used

* `AVG()` - Returns average value
* `COUNT()` - Returns number of values
* `MAX()` - Returns maximum value
* `MIN()` - Returns minimum value
* `SUM()` - Returns the sum of all values

## Special Notes

* `AVG()` returns a floating point value many decimal places (e.g. 2.342418...)
    * `ROUND()` can be used to specify precision after the decimal
        * Syntax: `ROUND({value}, {numberOfDecimalPlaces})`
* `COUNT()` simply returns the number of rows, which means by convention we just use `COUNT(*)`