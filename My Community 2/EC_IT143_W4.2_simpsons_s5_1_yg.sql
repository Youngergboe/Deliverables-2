/*
Step 5.1: Turn the View into a Table

Community: My Community 2 - Consumer Credit Card Transactions
Dataset: Simpsons

This script creates a new table using the
results from the total transaction by category view.
*/

SELECT *
INTO dbo.t_simpsons_total_by_category
FROM dbo.v_simpsons_total_by_category;