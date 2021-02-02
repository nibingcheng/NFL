-- 1. List the names of all NFL teams'
select name from teams;

-- 2. List the stadium name and head coach of all NFC teams
select stadium, head_coach from teams;

-- 3. List the head coaches of the AFC South
select * from teams;
select head_coach from teams
	where conference = 'AFC'
	AND division = 'South';

-- 4. The total number of players in the NFL
select count(name) from players;

-- "COMMIT: NFL - queried some NFL stuff"


-- 5. The team names and head coaches of the NFC North and AFC East
select name, head_coach from teams 
	where (conference = 'NFC' AND division = 'North')
	OR (conference = 'AFC' AND division = 'East');

-- 6. The 50 players with the highest salaries
select name from players order by salary DESC limit 50;	

-- 7. The average salary of all NFL players
SELECT round(AVG(salary),2) FROM players;

-- 8. The names and positions of players with a salary above 10_000_000
SELECT name, position FROM players	
	where salary > 10000000;

-- "COMMIT: NFL - wow there's a lot of nfl data"

-- HUNGRY FOR MORE!!!!!!!

-- 9. The player with the highest salary in the NFL
SELECT name FROM players	
	ORDER BY salary DESC
	fetch first 1 row only;

-- 10. The name and position of the first 100 players with the lowest salaries
SELECT name, position FROM players	
	ORDER BY salary ASC
	fetch first 100 row only;

-- 11. The average salary for a DE in the nfl
SELECT CAST(AVG(salary) AS DECIMAL (12, 2)) FROM players
	WHERE position = 'DE';
    
-- 12. The names of all the players on the Buffalo Bills
select players.name from players, teams 
	where players.team_id = teams.id
	AND teams.name = 'Buffalo Bills';	

-- 13. The total salary of all players on the New York Giants
select sum(players.salary) from players, teams 
	where players.team_id = teams.id
	AND teams.name = 'New York Giants';	

-- 14. The player with the lowest salary on the Green Bay Packers
select players.name from players, teams 
	where players.team_id = teams.id
	AND teams.name = 'Green Bay Packers'
	ORDER BY players.salary ASC
	limit 1;	