/*
Step 3: Create an Ad Hoc SQL Query

Community: My Community 2 - Consumer Credit Card Transactions
Dataset: Simpsons

Question:
What is the total transaction amount for each category?

This query calculates the total transaction amount
for each category in the Planet_Express table.
*/

SELECT
    Category,
    SUM(TRY_CONVERT(DECIMAL(18,2), Amount)) AS Total_Amount
FROM Simpsons.dbo.Planet_Express
GROUP BY Category
ORDER BY Category;