-- Solution skeleton
CREATE TYPE 
	type_mood AS ENUM ('happy', 'relaxed', 'stressed', 'sad');
	
CREATE TABLE IF NOT EXISTS minions_info (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) DEFAULT '',
	age INT DEFAULT 0,
	code CHAR(4) DEFAULT '',
	task VARCHAR(150),
	banana NUMERIC(8, 3) CHECK (banana >= 0),
	email VARCHAR(20) UNIQUE,
	equipped BOOLEAN NOT NULL,
	mood type_mood
);


-- Test 10. Drop Constraint

SELECT EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE table_schema = 'public'
        AND lower(table_name) = 'minions_info'
        AND lower(column_name) = 'equipped'
        AND is_nullable = 'YES'
) AS constraints_dropped;


