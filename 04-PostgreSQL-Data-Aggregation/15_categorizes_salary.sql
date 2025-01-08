SELECT 
	e.job_title,
	CASE 
		WHEN 
			AVG(e.salary) > 45800.000 THEN 'Good'
		WHEN 
			AVG(e.salary) >= 27500.000 THEN 'Medium'
		ELSE 'Need Improvement' 
	END AS "category"
FROM 
	employees AS e
GROUP BY 
	e.job_title
ORDER BY 
	category,
	e.job_title;