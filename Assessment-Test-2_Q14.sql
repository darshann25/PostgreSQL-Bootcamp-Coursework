SELECT 
	b.facid,
	f.name,
	starttime
FROM exercises.cd.bookings b
LEFT JOIN exercises.cd.facilities f
ON b.facid = f.facid
WHERE name ILIKE 'Tennis Court%'
AND starttime >= '2012-09-21'
AND starttime < '2012-09-22'