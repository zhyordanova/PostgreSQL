SELECT 
	LTRIM(
		p.peak_name, 
		'M'
	) AS left_trim,
	RTRIM(
		p.peak_name, 
		'm'
	) AS right_trim
FROM 
	peaks AS p;