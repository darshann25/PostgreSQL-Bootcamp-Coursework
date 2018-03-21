SELECT
	memid,
	firstname,
	surname,
	joindate
FROM exercises.cd.members
ORDER BY joindate DESC
LIMIT 1