SELECT
	staff_id,
	COUNT(amount) AS total_payments,
	SUM(amount) AS total_payment_amount
FROM payment
GROUP BY staff_id;