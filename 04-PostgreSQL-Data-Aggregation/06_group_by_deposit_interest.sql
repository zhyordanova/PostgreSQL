SELECT 
	wd.deposit_group,
	SUM(
		wd.deposit_interest
	) AS "deposit_interest"
FROM 
	wizard_deposits AS wd
GROUP BY 
	wd.deposit_group
ORDER BY 
	deposit_interest DESC;