SELECT 
	facid,
	SUM(slots) AS total_slots
FROM exercises.cd.bookings
WHERE starttime >= '2012-09-01'
AND starttime <= '2012-09-30'
GROUP BY facid
ORDER BY total_slots
