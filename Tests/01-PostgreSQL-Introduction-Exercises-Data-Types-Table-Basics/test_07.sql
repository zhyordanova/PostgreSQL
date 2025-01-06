-- Solution skeleton
CREATE TYPE 
	type_mood AS ENUM ('happy', 'relaxed', 'stressed', 'sad');
	
CREATE TABLE IF NOT EXISTS minions_info (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30),
	age INT,
	code CHAR(4),
	task TEXT,
	banana NUMERIC(8, 3),
	email VARCHAR(20),
	equipped BOOLEAN NOT NULL,
	mood type_mood
);


-- Test 07. Set Default

SELECT lower(column_name)
FROM information_schema.columns
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_info'
    and column_default = '0'
    and column_name NOT IN (
        SELECT ccu.column_name
        FROM information_schema.table_constraints AS tc
        JOIN information_schema.constraint_column_usage AS ccu
            ON tc.constraint_schema = ccu.constraint_schema
                and tc.constraint_name = ccu.constraint_name
        WHERE tc.table_schema = 'public'
            and lower(tc.table_name) = 'minions_info'
            and tc.constraint_type = 'PRIMARY KEY'
    )
    and column_default IS NOT NULL;
	
	
SELECT lower(column_name)
FROM information_schema.columns
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_info'
    and column_default IS NOT NULL
    and column_name NOT IN (
        SELECT ccu.column_name
        FROM information_schema.table_constraints AS tc
        JOIN information_schema.constraint_column_usage AS ccu
            ON tc.constraint_schema = ccu.constraint_schema
                and tc.constraint_name = ccu.constraint_name
        WHERE tc.table_schema = 'public'
            and lower(tc.table_name) = 'minions_info'
            and tc.constraint_type = 'PRIMARY KEY'
    )
    and column_default != '0';

