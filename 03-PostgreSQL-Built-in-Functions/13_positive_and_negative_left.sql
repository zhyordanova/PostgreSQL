SELECT 
	p.peak_name,
	LEFT(
		p.peak_name, 4
	) AS positive_left,
	LEFT(
		p.peak_name, -4
	) AS negative_left
FROM 
	peaks AS p;