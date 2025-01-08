SELECT 
	MIN(
		wd.deposit_charge
	) AS "minimum_deposit_charge"
FROM 
	wizard_deposits AS wd;