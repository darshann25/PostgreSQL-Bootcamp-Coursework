SELECT 
	customer_id,
	SUM(amount) AS total_payment
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;