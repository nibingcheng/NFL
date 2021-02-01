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

-- 10. The name and position of the first 100 players with the lowest salaries

-- 11. The average salary for a DE in the nfl

-- 12. The names of all the players on the Buffalo Bills

-- 13. The total salary of all players on the New York Giants

-- 14. The player with the lowest salary on the Green Bay Packers
