SELECT
	b.bookid,
	b.starttime,
	m.memid,
	m.firstname || ' ' || m.surname AS full_name
FROM exercises.cd.bookings b
LEFT JOIN exercises.cd.members m
ON b.memid = m.memid
WHERE m.firstname || ' ' || m.surname = 'David Farrell'