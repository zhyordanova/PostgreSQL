-- Solution skeleton
CREATE TABLE IF NOT EXISTS minions_info (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30),
	age INT,
	code CHAR(4),
	task TEXT,
	banana NUMERIC(8, 3),
	email VARCHAR(20),
	equipped BOOLEAN NOT NULL
);

-- Test 06. Create ENUM Type

SELECT lower(udt_name)
FROM information_schema.columns
WHERE table_schema = 'public'
    and lower(table_name) = 'minions_info'
    and lower(column_name) = 'mood';


SELECT lower(e.enumlabel)
FROM pg_enum AS e
JOIN pg_type AS t ON t.oid = e.enumtypid
JOIN information_schema.columns AS c ON c.udt_name = t.typname
WHERE c.table_schema = 'public'
    and lower(c.table_name) = 'minions_info'
    and lower(t.typname) = 'type_mood';

