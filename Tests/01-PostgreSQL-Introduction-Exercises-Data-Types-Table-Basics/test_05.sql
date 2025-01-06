-- Solution skeleton
CREATE TABLE IF NOT EXISTS minions_info (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30),
	age INT,
	code CHAR(4),
	task TEXT,
	banana NUMERIC(8, 3)
);

-- Test 05. Add New Columns

SELECT CONCAT_WS(' - ', lower(column_name), lower(data_type))
FROM information_schema.columns 
WHERE table_schema = 'public'
  and lower(table_name) = 'minions_info';
  
  
SELECT lower(column_name)
FROM information_schema.columns
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_info'
    and is_nullable = 'NO';

