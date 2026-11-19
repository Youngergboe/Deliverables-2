/*
Step 5.1: Turn the View into a Table

Community: My Community 1 - Soccer
Dataset: MyFC

This script creates a new table using the
results from the soccer players per team view.
*/

SELECT *
INTO dbo.t_soccer_players_per_team
FROM dbo.v_soccer_players_per_team;