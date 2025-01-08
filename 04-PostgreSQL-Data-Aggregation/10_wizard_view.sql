CREATE VIEW 
	view_wizard_deposits_with_expiration_date_before_1983_08_17 AS 
SELECT 
	CONCAT_WS(
		' ', 
		wd.first_name, 
		wd.last_name
	) AS wizard_name,
	wd.deposit_start_date AS start_date,
	wd.deposit_expiration_date AS expiration_date,
	wd.deposit_amount AS amount
FROM 
	wizard_deposits AS wd
GROUP BY 
	wizard_name,
	start_date,
	expiration_date,
	amount
HAVING 
	wd.deposit_expiration_date <= '1983-08-17'
ORDER BY 
	expiration_date;