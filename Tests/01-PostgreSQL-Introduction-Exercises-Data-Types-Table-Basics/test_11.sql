-- Solution skeleton
CREATE TYPE 
	type_mood AS ENUM ('happy', 'relaxed', 'stressed', 'sad');
	
CREATE TABLE IF NOT EXISTS minions_info (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	age INT DEFAULT 0,
	code CHAR(4),
	task VARCHAR(150),
	banana NUMERIC(8, 3) CHECK (banana >= 0),
	email VARCHAR(20) UNIQUE,
	equipped BOOLEAN NOT NULL,
	mood type_mood
);


-- Test 11. Remove Column

SELECT EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE table_schema = 'public'
        and lower(table_name) = 'minions_info'
        and lower(column_name) = 'age'
) AS column_exists;


SELECT lower(column_name) 
FROM information_schema.columns 
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_info'
ORDER BY lower(column_name);