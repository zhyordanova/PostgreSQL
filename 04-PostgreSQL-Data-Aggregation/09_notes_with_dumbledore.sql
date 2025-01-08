SELECT 
	wd.last_name,
	COUNT(
		wd.notes
	) AS "notes_with_dumbledore"
FROM 
	wizard_deposits AS wd
WHERE 
	wd.notes LIKE '%Dumbledore%'
GROUP BY 
	wd.last_name;