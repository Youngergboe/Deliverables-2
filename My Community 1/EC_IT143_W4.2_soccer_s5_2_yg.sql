/*
Step 5.2: Refine the Table

Community: My Community 1 - Soccer
Dataset: MyFC

This script adds a primary key and a check
constraint to improve the table structure.
*/

-- Make sure every team has an ID.
ALTER TABLE dbo.t_soccer_players_per_team
ALTER COLUMN t_id INT NOT NULL;

-- Set t_id as the primary key.
ALTER TABLE dbo.t_soccer_players_per_team
ADD CONSTRAINT PK_soccer_players_per_team
PRIMARY KEY (t_id);

-- Make sure player counts cannot be negative.
ALTER TABLE dbo.t_soccer_players_per_team
ADD CONSTRAINT CK_soccer_player_count
CHECK (player_count >= 0);