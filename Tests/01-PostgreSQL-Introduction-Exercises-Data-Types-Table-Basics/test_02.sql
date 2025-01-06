-- Solution skeleton
CREATE TABLE IF NOT EXISTS minions (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30),
	age INT
);


-- Tests 02. Rename the Table

SELECT EXISTS (
    SELECT 1
    FROM information_schema.tables
    WHERE table_schema = 'public'
        and lower(table_name) = 'minions_info'
);


SELECT DISTINCT lower(table_name) AS t
FROM information_schema.tables
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_info';
	

SELECT lower(column_name) 
FROM information_schema.columns 
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_info'
ORDER BY lower(column_name);