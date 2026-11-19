/*
Step 8: Call the Stored Procedure

Community: My Community 1 - Soccer
Dataset: MyFC

This script executes the stored procedure
and displays the updated soccer team results.
*/

-- Part 1: Execute the stored procedure.
EXEC dbo.usp_load_soccer_players_per_team;

-- Part 2: Display the table to verify the results.
SELECT
    t_id,
    t_code,
    player_count
FROM dbo.t_soccer_players_per_team
ORDER BY t_code;