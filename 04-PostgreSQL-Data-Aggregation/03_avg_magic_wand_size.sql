SELECT
	ROUND(
		AVG(
			wd.magic_wand_size
			), 
			3
		) AS "average_magic_wand_size"
FROM 
	wizard_deposits AS wd;