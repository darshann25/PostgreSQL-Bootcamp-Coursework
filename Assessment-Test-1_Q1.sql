SELECT 
	customer_id,
	staff_id,
	ROUND(SUM(amount),2) AS total_spending
FROM payment
GROUP BY customer_id, staff_id
HAVING SUM(amount) > 110 AND staff_id = 2
ORDER BY SUM(amount) DESC;