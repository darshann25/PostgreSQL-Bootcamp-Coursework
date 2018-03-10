SELECT 
	rating,
	round(AVG(rental_duration),2) AS avg_rental_duration
FROM film
GROUP BY rating
HAVING AVG(rental_duration) > 5
ORDER BY AVG(rental_duration);