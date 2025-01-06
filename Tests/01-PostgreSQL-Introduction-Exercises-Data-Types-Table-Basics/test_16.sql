-- Solution skeleton
CREATE TABLE minions_birthdays (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	age INT DEFAULT 0,
	present VARCHAR(100) NOT NULL,
	party TIMESTAMPTZ NOT NULL,
	UNIQUE(id)
);

-- Test 16. Drop the Table

SELECT NOT EXISTS (
    SELECT 1
    FROM information_schema.tables
    WHERE table_schema = 'public'
        AND table_name = 'minions_birthdays'
) AS drop_status;

