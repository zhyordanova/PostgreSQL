SELECT
	e."id",
	e.first_name || ' ' || e.last_name AS "full_name",
	e.job_title
FROM 
	employees AS e
ORDER BY 
	e.first_name
LIMIT 
	50;