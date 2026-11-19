/*
Step 4: Turn the Ad Hoc Query into a View

Community: My Community 2 - Consumer Credit Card Transactions
Dataset: Simpsons

This view calculates the total transaction
amount for each category.
*/

CREATE OR ALTER VIEW dbo.v_simpsons_total_by_category
AS
SELECT
    Category,
    SUM(TRY_CONVERT(DECIMAL(18,2), Amount)) AS Total_Amount
FROM Simpsons.dbo.Planet_Express
GROUP BY Category;