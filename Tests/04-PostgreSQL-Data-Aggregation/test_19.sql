-- Solution skeleton
CREATE TABLE IF NOT EXISTS employees (
  "id" SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL, 
  job_title VARCHAR(80) NOT NULL,
  department_id INT NOT NULL,
  manager_id INT,
  hire_date DATE DEFAULT NULL,
  salary NUMERIC(15, 3),
  address_id INT NOT NULL,
  CONSTRAINT employees_department_id_check CHECK (department_id > 0),
  CONSTRAINT employees_manager_id_check CHECK (manager_id > 0),
  CONSTRAINT employees_salary_check CHECK (salary >= 0),
  CONSTRAINT employees_address_id_check CHECK (address_id > 0)
);


CREATE TABLE IF NOT EXISTS projects (
  "id" SERIAL PRIMARY KEY,
  project_name VARCHAR(70) NOT NULL,
  description  TEXT,
  start_date TIMESTAMP DEFAULT NULL,
  end_date TIMESTAMP DEFAULT NULL
);

SELECT DISTINCT lower(table_name) AS t
FROM information_schema.tables
WHERE table_schema = 'public'
    and lower(table_name) = 'employees_projects';

	
SELECT DISTINCT lower(column_name)
FROM information_schema.key_column_usage
WHERE table_schema = 'public'
    AND lower(table_name) = 'employees_projects'
    AND constraint_name = (
        SELECT constraint_name
        FROM information_schema.table_constraints
        WHERE table_schema = 'public'
            AND lower(table_name) = 'employees_projects'
            AND constraint_type = 'PRIMARY KEY'
    );


SELECT
    CONCAT_WS(' - ', 
			  lower(kcu.column_name),
			  lower(ccu.table_name),
			  lower(ccu.column_name)
			 )
FROM
    information_schema.key_column_usage AS kcu
JOIN
    information_schema.referential_constraints AS rc
    ON kcu.constraint_name = rc.constraint_name
JOIN
    information_schema.constraint_column_usage AS ccu
    ON rc.unique_constraint_name = ccu.constraint_name
WHERE
    kcu.table_schema = 'public'
    AND lower(kcu.table_name) = 'employees_projects';
