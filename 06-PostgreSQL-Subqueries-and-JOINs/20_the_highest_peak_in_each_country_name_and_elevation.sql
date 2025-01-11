WITH cte_countries AS (
	SELECT
		c.country_name,
		p.peak_name,
		p.elevation,
		m.mountain_range,
	ROW_NUMBER() OVER (
		PARTITION BY 
			c.country_name 
				ORDER BY 
					p.elevation DESC
	) AS row_number
	FROM 
		countries AS c
	LEFT JOIN 
		countries_rivers AS cr 
			USING(country_code)
	LEFT JOIN 
		mountains_countries AS mc 
			USING(country_code)
	LEFT JOIN 
		mountains AS m 
			ON m."id" = mc.mountain_id
	LEFT JOIN 
		peaks AS p 
			ON p.mountain_id = m."id"
)

SELECT
	cte_countries.country_name,
	COALESCE(
		cte_countries.peak_name, 
		'(no highest peak)'
	) AS "highest_peak_name",
	COALESCE(
		cte_countries.elevation,
		0
	) AS "highest_peak_elevation",
	CASE WHEN 
			cte_countries.peak_name IS NOT NULL 
			THEN 
				cte_countries.mountain_range
		ELSE 
			'(no mountain)' 
	END AS "mountain"
FROM 
	cte_countries
WHERE 
	row_number = 1
ORDER BY 
	country_name;