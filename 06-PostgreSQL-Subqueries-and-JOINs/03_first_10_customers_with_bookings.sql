SELECT 
	b.booking_id,
	b.starts_at::date,
	b.apartment_id,
	CONCAT_WS(' ', c.first_name, c.last_name) AS "customer_name"
FROM 
	bookings AS b
RIGHT OUTER JOIN 
	 customers AS c
		ON b.customer_id = c.customer_id
ORDER BY
	customer_name
LIMIT 
	10;