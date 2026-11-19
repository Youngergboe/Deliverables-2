/*
Step 6: Load the Table from the View

Community: My Community 2 - Consumer Credit Card Transactions
Dataset: Simpsons

This script clears the existing table and
loads the latest results from the view.
*/

-- Part 1: Remove the existing table rows.
TRUNCATE TABLE dbo.t_simpsons_total_by_category;

-- Part 2: Load the latest results from the view.
INSERT INTO dbo.t_simpsons_total_by_category
(
    Category,
    Total_Amount
)
SELECT
    ISNULL(Category, N'Uncategorized'),
    Total_Amount
FROM dbo.v_simpsons_total_by_category;

-- Part 3: Display the table to verify the results.
SELECT
    Category,
    Total_Amount
FROM dbo.t_simpsons_total_by_category
ORDER BY Category;