/*
Step 7: Turn the Ad Hoc SQL Script into a Stored Procedure

Community: My Community 2 - Consumer Credit Card Transactions
Dataset: Simpsons

This stored procedure clears the table and reloads it
with the latest results from the view.
*/

USE EC_IT143_DA;
GO

CREATE OR ALTER PROCEDURE dbo.usp_load_simpsons_total_by_category
AS
BEGIN
    SET NOCOUNT ON;

    -- Clear the existing table.
    TRUNCATE TABLE dbo.t_simpsons_total_by_category;

    -- Load the latest results from the view.
    INSERT INTO dbo.t_simpsons_total_by_category
    (
        Category,
        Total_Amount
    )
    SELECT
        ISNULL(Category, N'Uncategorized'),
        Total_Amount
    FROM dbo.v_simpsons_total_by_category;
END;
GO