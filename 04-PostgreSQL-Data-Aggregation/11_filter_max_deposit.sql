SELECT 
	wd.magic_wand_creator, 
	MAX(
		wd.deposit_amount
	) AS "max_deposit_amount"  
FROM 
	wizard_deposits AS wd
GROUP BY 
	wd.magic_wand_creator
HAVING 
	MAX(
		wd.deposit_amount
	) NOT BETWEEN 20000 AND 40000
ORDER BY 
	max_deposit_amount DESC 
LIMIT 
	3;