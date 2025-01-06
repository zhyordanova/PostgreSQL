-- Solution skeleton
CREATE TYPE 
	type_mood AS ENUM ('happy', 'relaxed', 'stressed', 'sad');
	
CREATE TABLE IF NOT EXISTS minions_info (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) DEFAULT '',
	age INT DEFAULT 0,
	code CHAR(4) DEFAULT '',
	task TEXT,
	banana NUMERIC(8, 3),
	email VARCHAR(20),
	equipped BOOLEAN NOT NULL,
	mood type_mood
);

-- Test 08. Add Constraints

SELECT lower(column_name)
FROM information_schema.columns
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_info'
    and column_name IN (
        SELECT ccu.column_name
        FROM information_schema.table_constraints AS tc
        JOIN information_schema.constraint_column_usage AS ccu
            ON tc.constraint_schema = ccu.constraint_schema
                and tc.constraint_name = ccu.constraint_name
        WHERE tc.table_schema = 'public'
            and lower(tc.table_name) = 'minions_info'
            and tc.constraint_type = 'UNIQUE'
    );


SELECT lower(column_name)
FROM information_schema.columns
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_info'
    and column_name IN (
        SELECT ccu.column_name
        FROM information_schema.table_constraints AS tc
        JOIN information_schema.constraint_column_usage AS ccu
            ON tc.constraint_schema = ccu.constraint_schema
                and tc.constraint_name = ccu.constraint_name
        WHERE tc.table_schema = 'public'
            and lower(tc.table_name) = 'minions_info'
            and tc.constraint_type = 'CHECK'
    );


SELECT 
    conname AS constraint_name,
    pg_get_constraintdef(c.oid) AS check_constraint
FROM 
    pg_constraint AS c
JOIN 
    pg_class AS t ON c.conrelid = t.oid
JOIN 
    pg_namespace AS n ON t.relnamespace = n.oid
WHERE 
    n.nspname = 'public'
    AND t.relname = 'minions_info'
    AND c.contype = 'c';