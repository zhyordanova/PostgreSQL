-- Solution skeleton
CREATE TYPE 
	type_mood AS ENUM ('happy', 'relaxed', 'stressed', 'sad');
	
CREATE TABLE IF NOT EXISTS minions_info (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) DEFAULT '',
	code CHAR(4) DEFAULT '',
	task VARCHAR(150),
	banana NUMERIC(8, 3) CHECK (banana >= 0),
	email VARCHAR(20) UNIQUE,
	equipped BOOLEAN,
	mood type_mood
);

-- Test 13. Insert Into *

SELECT count(id) from minions_info;


SELECT 
	id, 
	name, 
	code, 
	task, 
	banana, 
	email, 
	equipped, 
	mood::VARCHAR
FROM 
	minions_info;

