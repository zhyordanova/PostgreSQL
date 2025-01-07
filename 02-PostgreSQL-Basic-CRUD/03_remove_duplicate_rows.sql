SELECT 
	DISTINCT ON 
	(c."name") c."name", 
	c.area AS "area_km2"
FROM 
	cities AS c
ORDER BY 
	c."name" DESC;