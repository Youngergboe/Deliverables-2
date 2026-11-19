/*
Step 7: Turn the Ad Hoc SQL Script into a Stored Procedure

Community: My Community 1 - Soccer
Dataset: MyFC

This stored procedure clears the soccer table
and reloads it with the latest results from the view.
*/

CREATE OR ALTER PROCEDURE dbo.usp_load_soccer_players_per_team
AS
BEGIN
    SET NOCOUNT ON;

    -- Part 1: Clear the existing table rows.
    TRUNCATE TABLE dbo.t_soccer_players_per_team;

    -- Part 2: Load the latest results from the view.
    INSERT INTO dbo.t_soccer_players_per_team
    (
        t_id,
        t_code,
        player_count
    )
    SELECT
        t_id,
        t_code,
        player_count
    FROM dbo.v_soccer_players_per_team;
END;