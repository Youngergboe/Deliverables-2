```sql
/*
Step 5.2: Refine the Table

Community: My Community 2 - Consumer Credit Card Transactions
Dataset: Simpsons

This script updates the table structure by replacing
NULL categories, making Category NOT NULL, adding a
primary key, and adding a CHECK constraint.
*/

USE EC_IT143_DA;
GO

-- Part 1: Replace NULL categories with Uncategorized.
UPDATE dbo.t_simpsons_total_by_category
SET Category = N'Uncategorized'
WHERE Category IS NULL;
GO

-- Part 2: Make Category a required column.
ALTER TABLE dbo.t_simpsons_total_by_category
ALTER COLUMN Category NVARCHAR(50) NOT NULL;
GO

-- Part 3: Add a primary key to Category.
ALTER TABLE dbo.t_simpsons_total_by_category
ADD CONSTRAINT PK_simpsons_total_by_category
PRIMARY KEY (Category);
GO

-- Part 4: Make sure Total_Amount cannot be NULL.
ALTER TABLE dbo.t_simpsons_total_by_category
ADD CONSTRAINT CK_simpsons_total_by_category
CHECK (Total_Amount IS NOT NULL);
GO

-- Part 5: Display the updated table.
SELECT
    Category,
    Total_Amount
FROM dbo.t_simpsons_total_by_category
ORDER BY Category;
GO
```