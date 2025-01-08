SELECT 
	p.peak_name,
	RIGHT(
		p.peak_name,
		4
	) AS positive_right,
	RIGHT(
		p.peak_name,
		-4
	) AS negative_right
FROM 
	peaks AS p;