-- Solution skeleton
CREATE TABLE IF NOT EXISTS minions_info (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30),
	age INT
);

-- Tests 03. Alter the Table

SELECT CONCAT_WS(' - ', lower(column_name), lower(data_type))
FROM information_schema.columns 
WHERE table_schema = 'public'
  and lower(table_name) = 'minions_info';