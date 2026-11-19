/*
Step 8: Call the Stored Procedure

Community: My Community 2 - Consumer Credit Card Transactions
Dataset: Simpsons

This script executes the stored procedure and displays
the updated transaction totals for each category.
*/

USE EC_IT143_DA;
GO

-- Part 1: Execute the stored procedure.
EXEC dbo.usp_load_simpsons_total_by_category;
GO

-- Part 2: Display the updated table.
SELECT
    Category,
    Total_Amount
FROM dbo.t_simpsons_total_by_category
ORDER BY Category;
GO