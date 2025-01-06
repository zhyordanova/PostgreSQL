-- Solution skeleton
CREATE TABLE IF NOT EXISTS minions_info (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30),
	age INT,
	code CHAR(4),
	task TEXT,
	salary NUMERIC(8, 3)
);

-- Tests 04. Rename Column

SELECT COUNT(*) > 0
FROM information_schema.columns
WHERE lower(table_schema) = 'public'
    and lower(table_name) = 'minions_info'
    and lower(column_name) = 'banana';
	
	
SELECT lower(column_name) 
FROM information_schema.columns 
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_info';
