SELECT
	a."number",
	a.street
FROM 
	addresses AS a
WHERE 
	a."id" BETWEEN 50 AND 100 
  OR 
	a."number" < 1000;