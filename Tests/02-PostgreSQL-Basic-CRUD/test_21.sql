-- Solution skeleton
CREATE TABLE IF NOT EXISTS employees (
  "id" SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  middle_name VARCHAR(100) DEFAULT NULL, 
  job_title VARCHAR(80) NOT NULL,
  hire_date DATE DEFAULT NULL,
  salary NUMERIC(15, 3),
  department_id INT NOT NULL,
  manager_id INT NOT NULL,
  address_id INT NOT NULL,
  CONSTRAINT employees_salary_check CHECK (salary >= 0),
  CONSTRAINT employees_department_id_check CHECK (department_id > 0),
  CONSTRAINT employees_manager_id_check CHECK (manager_id > 0),
  CONSTRAINT employees_address_id_check CHECK (address_id > 0)
);


CREATE TABLE IF NOT EXISTS addresses (
  "id" SERIAL PRIMARY KEY,
  "number" INT NOT NULL,
  street VARCHAR(100) NOT NULL,
  city_id INT NOT NULL,
  CONSTRAINT addresses_city_id_check CHECK (city_id > 0)
);

	
CREATE VIEW 
	view_addresses AS 
SELECT 
	e.first_name || ' ' || e.last_name AS "Full Name",
	e.department_id,
	a."number" || ' ' || a.street AS "Address"
FROM 
	employees AS e, 
	addresses AS a
WHERE 
	e.address_id = a."id"
ORDER BY 
	"Address";
	
	
SELECT EXISTS (
    SELECT 1
    FROM information_schema.views
    WHERE table_schema = 'public'
        and lower(table_name) = 'view_employee_addresses_info'
);
	
	
SELECT DISTINCT lower(table_name)
FROM information_schema.tables
WHERE table_schema = 'public'
    and lower(table_name) = 'view_employee_addresses_info';
	

SELECT CONCAT_WS(' - ', lower(column_name), lower(data_type))
FROM information_schema.columns 
WHERE table_schema = 'public'
  and lower(table_name) = 'view_employee_addresses_info';