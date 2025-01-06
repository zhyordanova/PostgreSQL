-- Solution skeleton
CREATE TYPE 
	type_mood AS ENUM ('happy', 'relaxed', 'stressed', 'sad');
	
CREATE TABLE IF NOT EXISTS minions_info (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) DEFAULT '',
	age INT DEFAULT 0,
	code CHAR(4) DEFAULT '',
	task TEXT,
	banana NUMERIC(8, 3) CHECK (banana >= 0),
	email VARCHAR(20) UNIQUE,
	equipped BOOLEAN NOT NULL,
	mood type_mood
);


-- Test 09. Change Column’s Data Type

SELECT EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE table_schema = 'public'
        and lower(table_name) = 'minions_info'
        and lower(column_name) = 'task'
        and data_type <> 'text'
) AS type_changed;


SELECT data_type
FROM information_schema.columns
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_info'
    and lower(column_name) = 'task';




