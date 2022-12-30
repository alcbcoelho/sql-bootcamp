# AS

* `AS` allows for a column or aggregation function output to be renamed so it is displayed in a more desirable manner in the query output.

* NOT THE SAME as variables in traditional programming languages in the sense that the renamed column/function CANNOT be referenced in other operations in the code by the designed alias.
    * This happens because the `AS` clause runs only after the execution of the entire code block.