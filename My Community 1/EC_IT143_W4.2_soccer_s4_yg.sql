/*
Step 4: Turn the Ad Hoc Query into a View

Community: My Community 1 - Soccer
Dataset: MyFC

This view stores the query that counts the
players assigned to each team.
*/

CREATE OR ALTER VIEW dbo.v_soccer_players_per_team
AS
SELECT
    t.t_id,
    t.t_code,
    COUNT(DISTINCT p.pl_id) AS player_count
FROM MyFC.dbo.tblTeamDim AS t
LEFT JOIN MyFC.dbo.tblPlayerDim AS p
    ON t.t_id = p.t_id
GROUP BY
    t.t_id,
    t.t_code;