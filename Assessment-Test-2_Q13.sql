SELECT 
	b.facid,
	f.name,
	b.total_slots
FROM
(
	SELECT *
	FROM 
	(
		SELECT
			facid,
			SUM(slots) AS total_slots
		FROM exercises.cd.bookings
		GROUP BY facid
		ORDER BY facid
	) init_b
	WHERE init_b.total_slots > 1000
) b
LEFT JOIN exercises.cd.facilities f
ON b.facid = f.facid