/*
Step 6: Load the Table from the View

Community: My Community 1 - Soccer
Dataset: MyFC

This script clears the existing table and
loads the latest results from the view.
*/

-- Part 1: Remove the existing table rows.
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

-- Part 3: Display the table to verify the results.
SELECT
    t_id,
    t_code,
    player_count
FROM dbo.t_soccer_players_per_team
ORDER BY t_code;