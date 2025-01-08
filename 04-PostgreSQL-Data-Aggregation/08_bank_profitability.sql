SELECT 
	wd.deposit_group,
	wd.is_deposit_expired,
	FLOOR(
		AVG(
			wd.deposit_interest
		)
	) AS "deposit_interest"
FROM 
	wizard_deposits AS wd
WHERE 
	wd.deposit_start_date > '1985-01-01'
GROUP BY 
	wd.deposit_group,
	wd.is_deposit_expired
ORDER BY 
	wd.deposit_group DESC, 
	wd.is_deposit_expired ASC;