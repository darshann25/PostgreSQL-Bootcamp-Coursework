SELECT 
	customer_id,
	COUNT(amount) AS total_number_transactions,
	SUM(amount) AS total_spending
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40
ORDER BY COUNT(amount) DESC;
