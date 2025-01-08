SELECT 
	wd.magic_wand_creator,
	MIN(
		wd.magic_wand_size
	) AS "minimum_wand_size"
FROM 
	wizard_deposits AS wd
GROUP BY 
	wd.magic_wand_creator
ORDER BY 
	minimum_wand_size
LIMIT 
	5;