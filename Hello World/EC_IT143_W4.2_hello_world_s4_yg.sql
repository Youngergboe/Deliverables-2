-- Q: What is the current date and time?

-- A: Let's ask SQL Server and find out...

DROP VIEW IF EXISTS dbo.v_hello_world_load;
GO

CREATE VIEW dbo.v_hello_world_load
AS

SELECT 'Hello World' AS my_message
     , GETDATE() AS current_date_time;