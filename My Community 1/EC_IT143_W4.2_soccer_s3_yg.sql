/*
Step 3: Create an Ad Hoc SQL Query

Community: My Community 1 - Soccer
Dataset: MyFC

Question:
How many players are on each team?

This query joins the player table to the team table
using t_id and counts the players on each team.
*/

SELECT
    t.t_id,
    t.t_code,
    COUNT(DISTINCT p.pl_id) AS player_count
FROM MyFC.dbo.tblTeamDim AS t
LEFT JOIN MyFC.dbo.tblPlayerDim AS p
    ON t.t_id = p.t_id
GROUP BY
    t.t_id,
    t.t_code
ORDER BY
    t.t_code;